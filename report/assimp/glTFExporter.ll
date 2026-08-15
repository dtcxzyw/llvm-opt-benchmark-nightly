inline.NumInlined: 6973
inline.NumDeleted: 2254
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 68
begin_hunk_0_@_ZN6Assimp6Logger13formatMessageIJRA16_KcRPS2_ES6_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcSA_SB_EEOT0_DpOT_:bb.a

bb.d:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.k = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.k, ptr %6, align 8
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.m = getelementptr i8, ptr %i.k, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %6, i64 %i.n
  store ptr %i.l, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.u = load i64, ptr %i.s, align 8
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #31
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.p, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.w) #30
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.x) #30
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %6) #30
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJRPKcERA16_S2_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcSA_SB_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(16) %3) #30
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef nonnull align 1 dereferenceable(16) %3, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %5, ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN6Assimp6Logger13formatMessageIJERPKcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %5, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %5, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #31
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #30
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #30
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %5) #30
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJERPKcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 13 uses
  %i.a = load ptr, ptr %3, align 8                ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %2, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8
  %i.h = or i32 %i.g, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.e, i32 noundef %i.h)
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #30
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef nonnull %i.a, i64 noundef %i.i) ; 0 uses
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit: ; preds = %bb.b, %bb.c
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !462)
  call void @llvm.experimental.noalias.scope.decl(metadata !465)
  call void @llvm.experimental.noalias.scope.decl(metadata !468)
  call void @llvm.experimental.noalias.scope.decl(metadata !471)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.k, ptr %0, align 8, !alias.scope !474
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.l, align 8, !alias.scope !474
  store i8 0, ptr %i.k, align 8, !alias.scope !474
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !noalias !474 ; 3 uses
  %.not.i.not.i.i.i.i = icmp eq ptr %i.n, null
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !noalias !474 ; 2 uses
  %i.q = icmp ugt ptr %i.n, %i.p
  %.08.i.i.i.i.i = select i1 %i.q, ptr %i.n, ptr %i.p ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i, null
  %.not.i.i.i.i = select i1 %.not.i.not.i.i.i.i, i1 true, i1 %.not5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !noalias !474 ; 2 uses
  %i.t = ptrtoint ptr %.08.i.i.i.i.i to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.s, i64 noundef %i.v)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %0, align 8, !alias.scope !474 ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.k
  br i1 %i.z, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.e
  %i.aa = load i64, ptr %i.k, align 8, !alias.scope !474
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #31
  br label %.body

bb.f:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.e

_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.f, %bb.d
  %i.ad = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ad, ptr %4, align 8
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.af = getelementptr i8, ptr %i.ad, i64 -24
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = getelementptr inbounds i8, ptr %4, i64 %i.ag
  store ptr %i.ae, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #31
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ai, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ap) #30
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.aq) #30
  ret void

.body:                                            ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #30
  resume { ptr, i32 } %i.x
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4glTF11AssetWriter12WriteObjectsINS_8AccessorEEEvRNS_8LazyDictIT_EE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(120) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %3 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %4 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %5 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %6 = alloca %"class.rapidjson::GenericValue", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef ptr @_ZN10glTFCommon19FindObjectInContextERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKcSA_SA_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.209, ptr noundef null) ; 2 uses
  %.not42 = icmp eq ptr %i.h, null
  br i1 %.not42, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load i32, ptr %0, align 8                ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4              ; 6 uses
  %.not.i.i.i = icmp ult i32 %i.k, %i.m
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not14.i.i.i = icmp eq i32 %i.m, 0
  %i.n = add i32 %i.m, 1
  %i.o = lshr i32 %i.n, 1
  %i.p = add i32 %i.o, %i.m
  %i.q = select i1 %.not14.i.i.i, i32 16, i32 %i.p ; 3 uses
  %i.r = icmp ugt i32 %i.q, %i.m
  br i1 %i.r, label %.noexc.i, label %bb.f

.noexc.i:                                         ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = and i64 %i.u, 281474976710655
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = zext i32 %i.m to i64
  %i.y = zext i32 %i.q to i64
  %i.z = shl nuw nsw i64 %i.x, 5
  %i.aa = shl nuw nsw i64 %i.y, 5
  %i.ab = tail call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef %i.w, i64 noundef %i.z, i64 noundef %i.aa)
  %i.ac = load ptr, ptr %i.s, align 8
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = and i64 %i.ad, -281474976710656
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = or i64 %i.ae, %i.af
  %i.ah = inttoptr i64 %i.ag to ptr
  store ptr %i.ah, ptr %i.s, align 8
  store i32 %i.q, ptr %i.l, align 4
  %.pre.i.i.i = load i32, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %.noexc.i, %bb.e, %bb.d
  %i.ai = phi i32 [ %.pre.i.i.i, %.noexc.i ], [ %i.k, %bb.e ], [ %i.k, %bb.d ]
  %i.aj = or i64 ptrtoint (ptr @.str.93 to i64), 289637751035265024
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = and i64 %i.an, 281474976710655
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = zext i32 %i.ai to i64
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %i.ap, i64 %i.aq ; 5 uses
  store i32 10, ptr %i.ar, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i, align 4
  %.sroa.65.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.ak, ptr %.sroa.65.0..sroa_idx.i, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.as, i8 0, i64 14, i1 false)
  %.sroa.6136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 30
  store i16 3, ptr %.sroa.6136.0..sroa_idx, align 2
  %i.at = load i32, ptr %0, align 8
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr %0, align 8
  %i.av = tail call noundef ptr @_ZN10glTFCommon19FindObjectInContextERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKcSA_SA_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.209, ptr noundef null)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.036 = phi ptr [ %i.h, %bb.c ], [ %i.av, %bb.f ] ; 6 uses
  %i.aw = load ptr, ptr %i.f, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.ax = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aw) #36, !noalias !475
  %i.ay = trunc i64 %i.ax to i32                  ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 14
  store i16 1029, ptr %i.az, align 2
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = and i64 %i.bc, -281474976710656
  %i.be = ptrtoint ptr %i.aw to i64               ; 4 uses
  %i.bf = or i64 %i.bd, %i.be                     ; 2 uses
  %i.bg = inttoptr i64 %i.bf to ptr
  store ptr %i.bg, ptr %i.ba, align 8
  store i32 %i.ay, ptr %5, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.036, i64 8 ; 4 uses
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = and i64 %i.bj, 281474976710655
  %i.bl = inttoptr i64 %i.bk to ptr               ; 7 uses
  %i.bm = load i32, ptr %.036, align 8            ; 3 uses
  %i.bn = zext i32 %i.bm to i64                   ; 4 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.bn, 5
  %i.bo = getelementptr i8, ptr %i.bl, i64 %.idx.i.i.i.i ; 2 uses
  %.not9.i.i.i.i = icmp eq i32 %i.bm, 0
  br i1 %.not9.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g
  %i.bp = lshr i64 %i.be, 40
  %i.bq = trunc i64 %i.bp to i8
  %i.br = and i64 %i.bf, 1152921504606846976
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.br, 0      ; 2 uses
  %i.bs = sext i8 %i.bq to i32
  %i.bt = sub nsw i32 13, %i.bs
  %i.bu = select i1 %.not.i.i.i.i.i.i.i, i32 %i.ay, i32 %i.bt ; 2 uses
  %i.bv = and i64 %i.be, 281474976710655
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = select i1 %.not.i.i.i.i.i.i.i, ptr %i.bw, ptr %5 ; 2 uses
  %i.by = zext i32 %i.bu to i64
  br label %bb.h

bb.h:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %.lr.ph.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i ], [ %i.cq, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 8 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 14
  %i.ca = load i16, ptr %i.bz, align 2
  %i.cb = and i16 %i.ca, 4096
  %.not.i.i13.i.i.i.i.i = icmp eq i16 %i.cb, 0    ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 13
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = sext i8 %i.cd to i32
  %i.cf = sub nsw i32 13, %i.ce
  %i.cg = load i32, ptr %.010.i.i.i.i, align 8
  %i.ch = select i1 %.not.i.i13.i.i.i.i.i, i32 %i.cg, i32 %i.cf
  %.not.i.i.i.i.i = icmp eq i32 %i.bu, %i.ch
  br i1 %.not.i.i.i.i.i, label %bb.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.ci = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = and i64 %i.ck, 281474976710655
  %i.cm = inttoptr i64 %i.cl to ptr
  %i.cn = select i1 %.not.i.i13.i.i.i.i.i, ptr %i.cm, ptr %.010.i.i.i.i ; 2 uses
  %i.co = icmp eq ptr %i.bx, %i.cn
  br i1 %i.co, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i: ; preds = %bb.i
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %i.bx, ptr %i.cn, i64 %i.by)
  %i.cp = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.cp, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.h
  %i.cq = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cq, %i.bo
  br i1 %.not.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %bb.h, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.i, %bb.g
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bl, %bb.g ], [ %.010.i.i.i.i, %bb.i ], [ %.010.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i ], [ %i.bo, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.cr = getelementptr inbounds nuw [32 x i8], ptr %i.bl, i64 %i.bn
  %.not.i = icmp eq ptr %.0.lcssa.i.i.i.i, %i.cr
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 30
  %i.cu = load i16, ptr %i.ct, align 2
  %i.cv = icmp eq i16 %i.cu, 3
  br i1 %i.cv, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit, label %bb.k

bb.k:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, %bb.j
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %.036, i64 4 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4            ; 6 uses
  %.not.i.i.i49 = icmp ult i32 %i.bm, %i.cz
  br i1 %.not.i.i.i49, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not14.i.i.i50 = icmp eq i32 %i.cz, 0
  %i.da = add i32 %i.cz, 1
  %i.db = lshr i32 %i.da, 1
  %i.dc = add i32 %i.db, %i.cz
  %i.dd = select i1 %.not14.i.i.i50, i32 16, i32 %i.dc ; 3 uses
  %i.de = icmp ugt i32 %i.dd, %i.cz
  br i1 %i.de, label %.noexc.i53, label %bb.m

.noexc.i53:                                       ; preds = %bb.l
  %i.df = zext i32 %i.cz to i64
  %i.dg = zext i32 %i.dd to i64
  %i.dh = shl nuw nsw i64 %i.df, 5
  %i.di = shl nuw nsw i64 %i.dg, 5
end_hunk_0
begin_hunk_1_@_ZN4glTF11AssetWriter12WriteObjectsINS_8AccessorEEEvRNS_8LazyDictIT_EE:bb.a
  %.pre-phi157 = phi i64 [ %.pre156, %.noexc.i53 ], [ %i.bn, %bb.l ], [ %i.bn, %bb.k ]
  %.pre-phi155 = phi ptr [ %.pre154, %.noexc.i53 ], [ %i.bl, %bb.l ], [ %i.bl, %bb.k ]
  %i.dq = or i64 %i.be, 289637751035265024
  %i.dr = inttoptr i64 %i.dq to ptr
  %i.ds = getelementptr inbounds nuw [32 x i8], ptr %.pre-phi155, i64 %.pre-phi157 ; 5 uses
  store i32 %i.ay, ptr %i.ds, align 8
  %.sroa.6.0..sroa_idx.i51 = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i51, align 4
  %.sroa.65.0..sroa_idx.i52 = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store ptr %i.dr, ptr %.sroa.65.0..sroa_idx.i52, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.dt, i8 0, i64 14, i1 false)
  %.sroa.6132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 30
  store i16 3, ptr %.sroa.6132.0..sroa_idx, align 2
  %i.du = load i32, ptr %.036, align 8
  %i.dv = add i32 %i.du, 1                        ; 3 uses
  store i32 %i.dv, ptr %.036, align 8
  %i.dw = load ptr, ptr %i.f, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.dx = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dw) #36, !noalias !478
  %i.dy = trunc i64 %i.dx to i32                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 14
  store i16 1029, ptr %i.dz, align 2
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = and i64 %i.ec, -281474976710656
  %i.ee = ptrtoint ptr %i.dw to i64               ; 3 uses
  %i.ef = or i64 %i.ed, %i.ee                     ; 2 uses
  %i.eg = inttoptr i64 %i.ef to ptr
  store ptr %i.eg, ptr %i.ea, align 8
  store i32 %i.dy, ptr %4, align 8
  %i.eh = load ptr, ptr %i.bh, align 8
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = and i64 %i.ei, 281474976710655
  %i.ek = inttoptr i64 %i.ej to ptr               ; 4 uses
  %i.el = zext i32 %i.dv to i64                   ; 2 uses
  %.idx.i.i.i.i57 = shl nuw nsw i64 %i.el, 5
  %i.em = getelementptr i8, ptr %i.ek, i64 %.idx.i.i.i.i57 ; 2 uses
  %.not9.i.i.i.i58 = icmp eq i32 %i.dv, 0
  br i1 %.not9.i.i.i.i58, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, label %.lr.ph.i.i.i.i59

.lr.ph.i.i.i.i59:                                 ; preds = %bb.m
  %i.en = lshr i64 %i.ee, 40
  %i.eo = trunc i64 %i.en to i8
  %i.ep = and i64 %i.ef, 1152921504606846976
  %.not.i.i.i.i.i.i.i60 = icmp eq i64 %i.ep, 0    ; 2 uses
  %i.eq = sext i8 %i.eo to i32
  %i.er = sub nsw i32 13, %i.eq
  %i.es = select i1 %.not.i.i.i.i.i.i.i60, i32 %i.dy, i32 %i.er ; 2 uses
  %i.et = and i64 %i.ee, 281474976710655
  %i.eu = inttoptr i64 %i.et to ptr
  %i.ev = select i1 %.not.i.i.i.i.i.i.i60, ptr %i.eu, ptr %4 ; 2 uses
  %i.ew = zext i32 %i.es to i64
  br label %bb.n

bb.n:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64, %.lr.ph.i.i.i.i59
  %.010.i.i.i.i61 = phi ptr [ %i.ek, %.lr.ph.i.i.i.i59 ], [ %i.fo, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64 ] ; 8 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i61, i64 14
  %i.ey = load i16, ptr %i.ex, align 2
  %i.ez = and i16 %i.ey, 4096
  %.not.i.i13.i.i.i.i.i62 = icmp eq i16 %i.ez, 0  ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i61, i64 13
  %i.fb = load i8, ptr %i.fa, align 1
  %i.fc = sext i8 %i.fb to i32
  %i.fd = sub nsw i32 13, %i.fc
  %i.fe = load i32, ptr %.010.i.i.i.i61, align 8
  %i.ff = select i1 %.not.i.i13.i.i.i.i.i62, i32 %i.fe, i32 %i.fd
  %.not.i.i.i.i.i63 = icmp eq i32 %i.es, %i.ff
  br i1 %.not.i.i.i.i.i63, label %bb.o, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64

bb.o:                                             ; preds = %bb.n
  %i.fg = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i61, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = and i64 %i.fi, 281474976710655
  %i.fk = inttoptr i64 %i.fj to ptr
  %i.fl = select i1 %.not.i.i13.i.i.i.i.i62, ptr %i.fk, ptr %.010.i.i.i.i61 ; 2 uses
  %i.fm = icmp eq ptr %i.ev, %i.fl
  br i1 %i.fm, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70: ; preds = %bb.o
  %bcmp.i.i.i.i.i71 = call i32 @bcmp(ptr %i.ev, ptr %i.fl, i64 %i.ew)
  %i.fn = icmp eq i32 %bcmp.i.i.i.i.i71, 0
  br i1 %i.fn, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70, %bb.n
  %i.fo = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i61, i64 32 ; 2 uses
  %.not.i.i.i.i65 = icmp eq ptr %i.fo, %i.em
  br i1 %.not.i.i.i.i65, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, label %bb.n, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70, %bb.o, %bb.m
  %.0.lcssa.i.i.i.i67 = phi ptr [ %i.ek, %bb.m ], [ %.010.i.i.i.i61, %bb.o ], [ %.010.i.i.i.i61, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70 ], [ %i.em, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.fp = getelementptr inbounds nuw [32 x i8], ptr %i.ek, i64 %i.el
  %.not.i68 = icmp ne ptr %.0.lcssa.i.i.i.i67, %i.fp
  call void @llvm.assume(i1 %.not.i68)
  %i.fq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i67, i64 16
  %i.fr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i67, i64 30
  %i.fs = load i16, ptr %i.fr, align 2
  %i.ft = icmp eq i16 %i.fs, 3
  %spec.select.i69 = select i1 %i.ft, ptr %i.fq, ptr null
  br label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit

_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, %bb.j, %bb.b
  %.138 = phi ptr [ %0, %bb.b ], [ %i.cs, %bb.j ], [ %spec.select.i69, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66 ] ; 8 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.fw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fv) #36, !noalias !481
  %i.fx = trunc i64 %i.fw to i32                  ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.fy = getelementptr inbounds nuw i8, ptr %3, i64 14
  store i16 1029, ptr %i.fy, align 2
  %i.fz = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ga = load ptr, ptr %i.fz, align 8
  %i.gb = ptrtoint ptr %i.ga to i64
  %i.gc = and i64 %i.gb, -281474976710656
  %i.gd = ptrtoint ptr %i.fv to i64               ; 4 uses
  %i.ge = or i64 %i.gc, %i.gd                     ; 2 uses
  %i.gf = inttoptr i64 %i.ge to ptr
  store ptr %i.gf, ptr %i.fz, align 8
  store i32 %i.fx, ptr %3, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %.138, i64 8 ; 6 uses
  %i.gh = load ptr, ptr %i.gg, align 8
  %i.gi = ptrtoint ptr %i.gh to i64
  %i.gj = and i64 %i.gi, 281474976710655
  %i.gk = inttoptr i64 %i.gj to ptr               ; 4 uses
  %i.gl = load i32, ptr %.138, align 8            ; 2 uses
  %i.gm = zext i32 %i.gl to i64                   ; 2 uses
  %.idx.i.i.i.i73 = shl nuw nsw i64 %i.gm, 5
  %i.gn = getelementptr i8, ptr %i.gk, i64 %.idx.i.i.i.i73 ; 2 uses
  %.not9.i.i.i.i74 = icmp eq i32 %i.gl, 0
  br i1 %.not9.i.i.i.i74, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, label %.lr.ph.i.i.i.i75

.lr.ph.i.i.i.i75:                                 ; preds = %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit
  %i.go = lshr i64 %i.gd, 40
  %i.gp = trunc i64 %i.go to i8
  %i.gq = and i64 %i.ge, 1152921504606846976
  %.not.i.i.i.i.i.i.i76 = icmp eq i64 %i.gq, 0    ; 2 uses
  %i.gr = sext i8 %i.gp to i32
  %i.gs = sub nsw i32 13, %i.gr
  %i.gt = select i1 %.not.i.i.i.i.i.i.i76, i32 %i.fx, i32 %i.gs ; 2 uses
  %i.gu = and i64 %i.gd, 281474976710655
  %i.gv = inttoptr i64 %i.gu to ptr
  %i.gw = select i1 %.not.i.i.i.i.i.i.i76, ptr %i.gv, ptr %3 ; 2 uses
  %i.gx = zext i32 %i.gt to i64
  br label %bb.p

bb.p:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80, %.lr.ph.i.i.i.i75
  %.010.i.i.i.i77 = phi ptr [ %i.gk, %.lr.ph.i.i.i.i75 ], [ %i.hp, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80 ] ; 8 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i77, i64 14
  %i.gz = load i16, ptr %i.gy, align 2
  %i.ha = and i16 %i.gz, 4096
  %.not.i.i13.i.i.i.i.i78 = icmp eq i16 %i.ha, 0  ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i77, i64 13
  %i.hc = load i8, ptr %i.hb, align 1
  %i.hd = sext i8 %i.hc to i32
  %i.he = sub nsw i32 13, %i.hd
  %i.hf = load i32, ptr %.010.i.i.i.i77, align 8
  %i.hg = select i1 %.not.i.i13.i.i.i.i.i78, i32 %i.hf, i32 %i.he
  %.not.i.i.i.i.i79 = icmp eq i32 %i.gt, %i.hg
  br i1 %.not.i.i.i.i.i79, label %bb.q, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80

bb.q:                                             ; preds = %bb.p
  %i.hh = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i77, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8
  %i.hj = ptrtoint ptr %i.hi to i64
  %i.hk = and i64 %i.hj, 281474976710655
  %i.hl = inttoptr i64 %i.hk to ptr
  %i.hm = select i1 %.not.i.i13.i.i.i.i.i78, ptr %i.hl, ptr %.010.i.i.i.i77 ; 2 uses
  %i.hn = icmp eq ptr %i.gw, %i.hm
  br i1 %i.hn, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86: ; preds = %bb.q
  %bcmp.i.i.i.i.i87 = call i32 @bcmp(ptr %i.gw, ptr %i.hm, i64 %i.gx)
  %i.ho = icmp eq i32 %bcmp.i.i.i.i.i87, 0
  br i1 %i.ho, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86, %bb.p
  %i.hp = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i77, i64 32 ; 2 uses
  %.not.i.i.i.i81 = icmp eq ptr %i.hp, %i.gn
  br i1 %.not.i.i.i.i81, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, label %bb.p, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86, %bb.q, %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit
  %.0.lcssa.i.i.i.i83 = phi ptr [ %i.gk, %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit ], [ %.010.i.i.i.i77, %bb.q ], [ %.010.i.i.i.i77, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86 ], [ %i.gn, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.hq = getelementptr inbounds nuw [32 x i8], ptr %i.gk, i64 %i.gm
  %.not.i84 = icmp eq ptr %.0.lcssa.i.i.i.i83, %i.hq
  br i1 %.not.i84, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82
  %i.hr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i83, i64 16
  %i.hs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i83, i64 30
  %i.ht = load i16, ptr %i.hs, align 2
  %i.hu = icmp eq i16 %i.ht, 3
  br i1 %i.hu, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88, label %bb.s

bb.s:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, %bb.r
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hw = load ptr, ptr %i.hv, align 8
  %i.hx = load i32, ptr %.138, align 8            ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.138, i64 4 ; 2 uses
  %i.hz = load i32, ptr %i.hy, align 4            ; 6 uses
  %.not.i.i.i89 = icmp ult i32 %i.hx, %i.hz
  br i1 %.not.i.i.i89, label %._crit_edge, label %bb.t

._crit_edge:                                      ; preds = %bb.s
  %.pre = load ptr, ptr %i.gg, align 8
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  %.not14.i.i.i90 = icmp eq i32 %i.hz, 0
  %i.ia = add i32 %i.hz, 1
  %i.ib = lshr i32 %i.ia, 1
  %i.ic = add i32 %i.ib, %i.hz
  %i.id = select i1 %.not14.i.i.i90, i32 16, i32 %i.ic ; 3 uses
  %i.ie = icmp ugt i32 %i.id, %i.hz
  %.pre144 = load ptr, ptr %i.gg, align 8         ; 2 uses
  br i1 %i.ie, label %.noexc.i93, label %bb.u

.noexc.i93:                                       ; preds = %bb.t
  %i.if = ptrtoint ptr %.pre144 to i64
  %i.ig = and i64 %i.if, 281474976710655
  %i.ih = inttoptr i64 %i.ig to ptr
  %i.ii = zext i32 %i.hz to i64
  %i.ij = zext i32 %i.id to i64
  %i.ik = shl nuw nsw i64 %i.ii, 5
  %i.il = shl nuw nsw i64 %i.ij, 5
  %i.im = call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.hw, ptr noundef %i.ih, i64 noundef %i.ik, i64 noundef %i.il)
  %i.in = load ptr, ptr %i.gg, align 8
  %i.io = ptrtoint ptr %i.in to i64
  %i.ip = and i64 %i.io, -281474976710656
  %i.iq = ptrtoint ptr %i.im to i64
  %i.ir = or i64 %i.ip, %i.iq
  %i.is = inttoptr i64 %i.ir to ptr               ; 2 uses
  store ptr %i.is, ptr %i.gg, align 8
  store i32 %i.id, ptr %i.hy, align 4
  %.pre.i.i.i94 = load i32, ptr %.138, align 8
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge, %.noexc.i93, %bb.t
  %i.it = phi ptr [ %i.is, %.noexc.i93 ], [ %.pre144, %bb.t ], [ %.pre, %._crit_edge ]
  %i.iu = phi i32 [ %.pre.i.i.i94, %.noexc.i93 ], [ %i.hx, %bb.t ], [ %i.hx, %._crit_edge ]
  %i.iv = or i64 %i.gd, 289637751035265024
  %i.iw = inttoptr i64 %i.iv to ptr
  %i.ix = ptrtoint ptr %i.it to i64
  %i.iy = and i64 %i.ix, 281474976710655
  %i.iz = inttoptr i64 %i.iy to ptr
  %i.ja = zext i32 %i.iu to i64
  %i.jb = getelementptr inbounds nuw [32 x i8], ptr %i.iz, i64 %i.ja ; 5 uses
  store i32 %i.fx, ptr %i.jb, align 8
  %.sroa.6.0..sroa_idx.i91 = getelementptr inbounds nuw i8, ptr %i.jb, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i91, align 4
  %.sroa.65.0..sroa_idx.i92 = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  store ptr %i.iw, ptr %.sroa.65.0..sroa_idx.i92, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  store <14 x i8> zeroinitializer, ptr %i.jc, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jb, i64 30
  store i16 3, ptr %.sroa.6.0..sroa_idx, align 2
  %i.jd = load i32, ptr %.138, align 8
  %i.je = add i32 %i.jd, 1
  store i32 %i.je, ptr %.138, align 8
  %i.jf = load ptr, ptr %i.fu, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.jg = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.jf) #36, !noalias !484
  %i.jh = trunc i64 %i.jg to i32                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.ji = getelementptr inbounds nuw i8, ptr %2, i64 14
  store i16 1029, ptr %i.ji, align 2
  %i.jj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.jk = load ptr, ptr %i.jj, align 8
  %i.jl = ptrtoint ptr %i.jk to i64
  %i.jm = and i64 %i.jl, -281474976710656
  %i.jn = ptrtoint ptr %i.jf to i64               ; 3 uses
  %i.jo = or i64 %i.jm, %i.jn                     ; 2 uses
  %i.jp = inttoptr i64 %i.jo to ptr
  store ptr %i.jp, ptr %i.jj, align 8
  store i32 %i.jh, ptr %2, align 8
  %i.jq = load ptr, ptr %i.gg, align 8
  %i.jr = ptrtoint ptr %i.jq to i64
  %i.js = and i64 %i.jr, 281474976710655
  %i.jt = inttoptr i64 %i.js to ptr               ; 4 uses
  %i.ju = load i32, ptr %.138, align 8            ; 2 uses
  %i.jv = zext i32 %i.ju to i64                   ; 2 uses
  %.idx.i.i.i.i97 = shl nuw nsw i64 %i.jv, 5
  %i.jw = getelementptr i8, ptr %i.jt, i64 %.idx.i.i.i.i97 ; 2 uses
  %.not9.i.i.i.i98 = icmp eq i32 %i.ju, 0
  br i1 %.not9.i.i.i.i98, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, label %.lr.ph.i.i.i.i99

.lr.ph.i.i.i.i99:                                 ; preds = %bb.u
  %i.jx = lshr i64 %i.jn, 40
  %i.jy = trunc i64 %i.jx to i8
  %i.jz = and i64 %i.jo, 1152921504606846976
  %.not.i.i.i.i.i.i.i100 = icmp eq i64 %i.jz, 0   ; 2 uses
  %i.ka = sext i8 %i.jy to i32
  %i.kb = sub nsw i32 13, %i.ka
  %i.kc = select i1 %.not.i.i.i.i.i.i.i100, i32 %i.jh, i32 %i.kb ; 2 uses
  %i.kd = and i64 %i.jn, 281474976710655
  %i.ke = inttoptr i64 %i.kd to ptr
  %i.kf = select i1 %.not.i.i.i.i.i.i.i100, ptr %i.ke, ptr %2 ; 2 uses
  %i.kg = zext i32 %i.kc to i64
  br label %bb.v

bb.v:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104, %.lr.ph.i.i.i.i99
  %.010.i.i.i.i101 = phi ptr [ %i.jt, %.lr.ph.i.i.i.i99 ], [ %i.ky, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104 ] ; 8 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i101, i64 14
  %i.ki = load i16, ptr %i.kh, align 2
  %i.kj = and i16 %i.ki, 4096
  %.not.i.i13.i.i.i.i.i102 = icmp eq i16 %i.kj, 0 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i101, i64 13
  %i.kl = load i8, ptr %i.kk, align 1
  %i.km = sext i8 %i.kl to i32
  %i.kn = sub nsw i32 13, %i.km
  %i.ko = load i32, ptr %.010.i.i.i.i101, align 8
  %i.kp = select i1 %.not.i.i13.i.i.i.i.i102, i32 %i.ko, i32 %i.kn
  %.not.i.i.i.i.i103 = icmp eq i32 %i.kc, %i.kp
  br i1 %.not.i.i.i.i.i103, label %bb.w, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104

bb.w:                                             ; preds = %bb.v
  %i.kq = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i101, i64 8
  %i.kr = load ptr, ptr %i.kq, align 8
  %i.ks = ptrtoint ptr %i.kr to i64
  %i.kt = and i64 %i.ks, 281474976710655
  %i.ku = inttoptr i64 %i.kt to ptr
  %i.kv = select i1 %.not.i.i13.i.i.i.i.i102, ptr %i.ku, ptr %.010.i.i.i.i101 ; 2 uses
  %i.kw = icmp eq ptr %i.kf, %i.kv
  br i1 %i.kw, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110: ; preds = %bb.w
  %bcmp.i.i.i.i.i111 = call i32 @bcmp(ptr %i.kf, ptr %i.kv, i64 %i.kg)
  %i.kx = icmp eq i32 %bcmp.i.i.i.i.i111, 0
  br i1 %i.kx, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110, %bb.v
  %i.ky = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i101, i64 32 ; 2 uses
  %.not.i.i.i.i105 = icmp eq ptr %i.ky, %i.jw
  br i1 %.not.i.i.i.i105, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, label %bb.v, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110, %bb.w, %bb.u
  %.0.lcssa.i.i.i.i107 = phi ptr [ %i.jt, %bb.u ], [ %.010.i.i.i.i101, %bb.w ], [ %.010.i.i.i.i101, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110 ], [ %i.jw, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.kz = getelementptr inbounds nuw [32 x i8], ptr %i.jt, i64 %i.jv
  %.not.i108 = icmp eq ptr %.0.lcssa.i.i.i.i107, %i.kz
  br i1 %.not.i108, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88, label %bb.x

bb.x:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106
  %i.la = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i107, i64 16
  %i.lb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i107, i64 30
  %i.lc = load i16, ptr %i.lb, align 2
  %i.ld = icmp eq i16 %i.lc, 3
  %spec.select.i109 = select i1 %i.ld, ptr %i.la, ptr null
  br label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88

_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88: ; preds = %bb.x, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, %bb.r
  %.031 = phi ptr [ %i.hr, %bb.r ], [ null, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106 ], [ %spec.select.i109, %bb.x ] ; 6 uses
  %i.le = load ptr, ptr %i.c, align 8
  %i.lf = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not143 = icmp eq ptr %i.le, %i.lf
  br i1 %.not143, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88
  %i.lg = getelementptr inbounds nuw i8, ptr %6, i64 14
  %i.lh = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.lk = or i64 ptrtoint (ptr @.str.88 to i64), 289637751035265024
  %i.ll = inttoptr i64 %i.lk to ptr
  %i.lm = getelementptr inbounds nuw i8, ptr %.031, i64 4 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.031, i64 8 ; 4 uses
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph, %bb.ad
  %i.lo = phi ptr [ %i.lf, %.lr.ph ], [ %i.ov, %bb.ad ]
  %.0142 = phi i64 [ 0, %.lr.ph ], [ %i.ot, %bb.ad ] ; 5 uses
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.lo, i64 %.0142
  %i.lq = load ptr, ptr %i.lp, align 8            ; 2 uses
  %i.lr = load ptr, ptr %i.lq, align 8
  %i.ls = load ptr, ptr %i.lr, align 8
  %i.lt = call noundef zeroext i1 %i.ls(ptr noundef nonnull align 8 dereferenceable(72) %i.lq)
  br i1 %i.lt, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  store i16 3, ptr %i.lg, align 2
  %i.lu = load ptr, ptr %i.a, align 8
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.lu, i64 %.0142
  %i.lw = load ptr, ptr %i.lv, align 8            ; 3 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 48
  %i.ly = load i64, ptr %i.lx, align 8
  %i.lz = icmp eq i64 %i.ly, 0
  br i1 %i.lz, label %bb.aa, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit: ; preds = %bb.z
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lw, i64 40
  %i.mb = load ptr, ptr %i.ma, align 8            ; 2 uses
  %i.mc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.mb) #36, !noalias !487
  %i.md = trunc i64 %i.mc to i32
  %i.me = load ptr, ptr %i.li, align 8, !nonnull !16, !align !112
  %i.mf = load ptr, ptr %i.lj, align 8
  %i.mg = ptrtoint ptr %i.mf to i64
  %i.mh = and i64 %i.mg, 281474976710655
  %i.mi = inttoptr i64 %i.mh to ptr
  %i.mj = call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.me, ptr noundef %i.mi, i64 noundef 0, i64 noundef 512)
  %i.mk = load ptr, ptr %i.lj, align 8
  %i.ml = ptrtoint ptr %i.mk to i64
  %i.mm = and i64 %i.ml, -281474976710656
  %i.mn = ptrtoint ptr %i.mj to i64               ; 2 uses
  %i.mo = or i64 %i.mm, %i.mn
  %i.mp = inttoptr i64 %i.mo to ptr
  store ptr %i.mp, ptr %i.lj, align 8
  store i32 16, ptr %i.lh, align 4
  %.pre.i.i.i.i = load i32, ptr %6, align 8
  %i.mq = zext i32 %.pre.i.i.i.i to i64
  %i.mr = ptrtoint ptr %i.mb to i64
  %i.ms = or i64 %i.mr, 289637751035265024
  %i.mt = inttoptr i64 %i.ms to ptr
  %i.mu = and i64 %i.mn, 281474976710655
  %i.mv = inttoptr i64 %i.mu to ptr
  %i.mw = getelementptr inbounds nuw [32 x i8], ptr %i.mv, i64 %i.mq ; 6 uses
  store i32 4, ptr %i.mw, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mw, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i.i, align 4
  %.sroa.65.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  store ptr %i.ll, ptr %.sroa.65.0..sroa_idx.i.i, align 8
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 16
  store i32 %i.md, ptr %i.mx, align 8
  %.sroa.6.0..sroa_idx.i114 = getelementptr inbounds nuw i8, ptr %i.mw, i64 20
  store i32 0, ptr %.sroa.6.0..sroa_idx.i114, align 4
  %.sroa.66.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mw, i64 24
  store ptr %i.mt, ptr %.sroa.66.0..sroa_idx.i, align 8
  %i.my = load i32, ptr %6, align 8
  %i.mz = add i32 %i.my, 1
  store i32 %i.mz, ptr %6, align 8
  %.pre146 = load ptr, ptr %i.a, align 8
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre146, i64 %.0142
  %.pre147 = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit, %bb.z
  %i.na = phi ptr [ %.pre147, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit ], [ %i.lw, %bb.z ]
  call void @_ZN4glTF5WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_8AccessorERNS_11AssetWriterE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(160) %i.na, ptr noundef nonnull align 8 dereferenceable(112) %0)
  %i.nb = load ptr, ptr %i.a, align 8
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.nb, i64 %.0142
  %i.nd = load ptr, ptr %i.nc, align 8            ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  %i.nf = load ptr, ptr %i.ne, align 8, !noalias !490 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nd, i64 16
  %i.nh = load i64, ptr %i.ng, align 8, !noalias !490
  %i.ni = trunc i64 %i.nh to i32
  %.not.i.i = icmp eq ptr %i.nf, null
  %i.nj = select i1 %.not.i.i, ptr @_ZN9rapidjson16GenericStringRefIcE11emptyStringE, ptr %i.nf, !prof !6
  %i.nk = load ptr, ptr %i.li, align 8, !nonnull !16, !align !112
  %i.nl = load i32, ptr %.031, align 8            ; 3 uses
  %i.nm = load i32, ptr %i.lm, align 4            ; 6 uses
  %.not.i.i.i116 = icmp ult i32 %i.nl, %i.nm
  br i1 %.not.i.i.i116, label %._crit_edge148, label %bb.ab

._crit_edge148:                                   ; preds = %bb.aa
  %.pre149 = load ptr, ptr %i.ln, align 8
  br label %bb.ac

end_hunk_1
begin_hunk_2_@_ZN4glTF8LazyDictINS_9AnimationEE16AttachToDocumentERN9rapidjson15GenericDocumentINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEES8_EE:bb.a
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = and i64 %i.q, 281474976710655
  %i.s = inttoptr i64 %i.r to ptr                 ; 4 uses
  %i.t = load i32, ptr %i.c, align 8              ; 2 uses
  %i.u = zext i32 %i.t to i64                     ; 2 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.u, 5
  %i.v = getelementptr i8, ptr %i.s, i64 %.idx.i.i.i.i ; 2 uses
  %.not9.i.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not9.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c
  %i.w = lshr i64 %i.l, 40
  %i.x = trunc i64 %i.w to i8
  %i.y = and i64 %i.m, 1152921504606846976
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.y, 0       ; 2 uses
  %i.z = sext i8 %i.x to i32
  %i.aa = sub nsw i32 13, %i.z
  %i.ab = select i1 %.not.i.i.i.i.i.i.i, i32 %i.f, i32 %i.aa ; 2 uses
  %i.ac = and i64 %i.l, 281474976710655
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = select i1 %.not.i.i.i.i.i.i.i, ptr %i.ad, ptr %3 ; 2 uses
  %i.af = zext i32 %i.ab to i64
  br label %bb.d

bb.d:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %.lr.ph.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i ], [ %i.ax, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 14
  %i.ah = load i16, ptr %i.ag, align 2
  %i.ai = and i16 %i.ah, 4096
  %.not.i.i13.i.i.i.i.i = icmp eq i16 %i.ai, 0    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 13
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = sext i8 %i.ak to i32
  %i.am = sub nsw i32 13, %i.al
  %i.an = load i32, ptr %.010.i.i.i.i, align 8
  %i.ao = select i1 %.not.i.i13.i.i.i.i.i, i32 %i.an, i32 %i.am
  %.not.i.i.i.i.i = icmp eq i32 %i.ab, %i.ao
  br i1 %.not.i.i.i.i.i, label %bb.e, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = and i64 %i.ar, 281474976710655
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = select i1 %.not.i.i13.i.i.i.i.i, ptr %i.at, ptr %.010.i.i.i.i ; 2 uses
  %i.av = icmp eq ptr %i.ae, %i.au
  br i1 %i.av, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i: ; preds = %bb.e
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %i.ae, ptr %i.au, i64 %i.af)
  %i.aw = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.aw, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ax, %i.v
  br i1 %.not.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %bb.d, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.e, %bb.c
  %.0.lcssa.i.i.i.i = phi ptr [ %i.s, %bb.c ], [ %.010.i.i.i.i, %bb.e ], [ %.010.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i ], [ %i.v, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.ay = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %i.u
  %.not.i = icmp eq ptr %.0.lcssa.i.i.i.i, %i.ay
  br i1 %.not.i, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 30
  %i.bb = load i16, ptr %i.ba, align 2
  %i.bc = icmp eq i16 %i.bb, 3
  br i1 %i.bc, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread

_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit: ; preds = %bb.f, %bb.a
  %.1 = phi ptr [ %1, %bb.a ], [ %i.az, %bb.f ]   ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.bf = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.be) #36, !noalias !505
  %i.bg = trunc i64 %i.bf to i32                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 14
  store i16 1029, ptr %i.bh, align 2
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = and i64 %i.bk, -281474976710656
  %i.bm = ptrtoint ptr %i.be to i64               ; 3 uses
  %i.bn = or i64 %i.bl, %i.bm                     ; 2 uses
  %i.bo = inttoptr i64 %i.bn to ptr
  store ptr %i.bo, ptr %i.bi, align 8
  store i32 %i.bg, ptr %2, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = and i64 %i.br, 281474976710655
  %i.bt = inttoptr i64 %i.bs to ptr               ; 4 uses
  %i.bu = load i32, ptr %.1, align 8              ; 2 uses
  %i.bv = zext i32 %i.bu to i64                   ; 2 uses
  %.idx.i.i.i.i10 = shl nuw nsw i64 %i.bv, 5
  %i.bw = getelementptr i8, ptr %i.bt, i64 %.idx.i.i.i.i10 ; 2 uses
  %.not9.i.i.i.i11 = icmp eq i32 %i.bu, 0
  br i1 %.not9.i.i.i.i11, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19, label %.lr.ph.i.i.i.i12

.lr.ph.i.i.i.i12:                                 ; preds = %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit
  %i.bx = lshr i64 %i.bm, 40
  %i.by = trunc i64 %i.bx to i8
  %i.bz = and i64 %i.bn, 1152921504606846976
  %.not.i.i.i.i.i.i.i13 = icmp eq i64 %i.bz, 0    ; 2 uses
  %i.ca = sext i8 %i.by to i32
  %i.cb = sub nsw i32 13, %i.ca
  %i.cc = select i1 %.not.i.i.i.i.i.i.i13, i32 %i.bg, i32 %i.cb ; 2 uses
  %i.cd = and i64 %i.bm, 281474976710655
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = select i1 %.not.i.i.i.i.i.i.i13, ptr %i.ce, ptr %2 ; 2 uses
  %i.cg = zext i32 %i.cc to i64
  br label %bb.g

bb.g:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17, %.lr.ph.i.i.i.i12
  %.010.i.i.i.i14 = phi ptr [ %i.bt, %.lr.ph.i.i.i.i12 ], [ %i.cy, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17 ] ; 8 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i14, i64 14
  %i.ci = load i16, ptr %i.ch, align 2
  %i.cj = and i16 %i.ci, 4096
  %.not.i.i13.i.i.i.i.i15 = icmp eq i16 %i.cj, 0  ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i14, i64 13
  %i.cl = load i8, ptr %i.ck, align 1
  %i.cm = sext i8 %i.cl to i32
  %i.cn = sub nsw i32 13, %i.cm
  %i.co = load i32, ptr %.010.i.i.i.i14, align 8
  %i.cp = select i1 %.not.i.i13.i.i.i.i.i15, i32 %i.co, i32 %i.cn
  %.not.i.i.i.i.i16 = icmp eq i32 %i.cc, %i.cp
  br i1 %.not.i.i.i.i.i16, label %bb.h, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17

bb.h:                                             ; preds = %bb.g
  %i.cq = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i14, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = and i64 %i.cs, 281474976710655
  %i.cu = inttoptr i64 %i.ct to ptr
  %i.cv = select i1 %.not.i.i13.i.i.i.i.i15, ptr %i.cu, ptr %.010.i.i.i.i14 ; 2 uses
  %i.cw = icmp eq ptr %i.cf, %i.cv
  br i1 %i.cw, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i23

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i23: ; preds = %bb.h
  %bcmp.i.i.i.i.i24 = call i32 @bcmp(ptr %i.cf, ptr %i.cv, i64 %i.cg)
  %i.cx = icmp eq i32 %bcmp.i.i.i.i.i24, 0
  br i1 %i.cx, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i23, %bb.g
  %i.cy = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i14, i64 32 ; 2 uses
  %.not.i.i.i.i18 = icmp eq ptr %i.cy, %i.bw
  br i1 %.not.i.i.i.i18, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19, label %bb.g, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i23, %bb.h, %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit
  %.0.lcssa.i.i.i.i20 = phi ptr [ %i.bt, %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit ], [ %.010.i.i.i.i14, %bb.h ], [ %.010.i.i.i.i14, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i23 ], [ %i.bw, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.cz = getelementptr inbounds nuw [32 x i8], ptr %i.bt, i64 %i.bv
  %.not.i21 = icmp eq ptr %.0.lcssa.i.i.i.i20, %i.cz
  br i1 %.not.i21, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit25, label %bb.i

bb.i:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19
  %i.da = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i20, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i20, i64 30
  %i.dc = load i16, ptr %i.db, align 2
  %i.dd = icmp eq i16 %i.dc, 3
  %spec.select.i22 = select i1 %i.dd, ptr %i.da, ptr null
  br label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit25

_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit25: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19, %bb.i
  %i.de = phi ptr [ null, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19 ], [ %spec.select.i22, %bb.i ]
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.de, ptr %i.df, align 8
  br label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread

_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread: ; preds = %bb.f, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, %bb.b, %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit25
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4glTF8LazyDictINS_9AnimationEE18DetachFromDocumentEv(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr null, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4glTF8LazyDictINS_9AnimationEE12WriteObjectsERNS_11AssetWriterE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN4glTF11AssetWriter12WriteObjectsINS_9AnimationEEEvRNS_8LazyDictIT_EE(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(120) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4glTF11AssetWriter12WriteObjectsINS_9AnimationEEEvRNS_8LazyDictIT_EE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(120) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %3 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %4 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %5 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %6 = alloca %"class.rapidjson::GenericValue", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef ptr @_ZN10glTFCommon19FindObjectInContextERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKcSA_SA_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.209, ptr noundef null) ; 2 uses
  %.not42 = icmp eq ptr %i.h, null
  br i1 %.not42, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load i32, ptr %0, align 8                ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4              ; 6 uses
  %.not.i.i.i = icmp ult i32 %i.k, %i.m
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not14.i.i.i = icmp eq i32 %i.m, 0
  %i.n = add i32 %i.m, 1
  %i.o = lshr i32 %i.n, 1
  %i.p = add i32 %i.o, %i.m
  %i.q = select i1 %.not14.i.i.i, i32 16, i32 %i.p ; 3 uses
  %i.r = icmp ugt i32 %i.q, %i.m
  br i1 %i.r, label %.noexc.i, label %bb.f

.noexc.i:                                         ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = and i64 %i.u, 281474976710655
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = zext i32 %i.m to i64
  %i.y = zext i32 %i.q to i64
  %i.z = shl nuw nsw i64 %i.x, 5
  %i.aa = shl nuw nsw i64 %i.y, 5
  %i.ab = tail call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef %i.w, i64 noundef %i.z, i64 noundef %i.aa)
  %i.ac = load ptr, ptr %i.s, align 8
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = and i64 %i.ad, -281474976710656
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = or i64 %i.ae, %i.af
  %i.ah = inttoptr i64 %i.ag to ptr
  store ptr %i.ah, ptr %i.s, align 8
  store i32 %i.q, ptr %i.l, align 4
  %.pre.i.i.i = load i32, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %.noexc.i, %bb.e, %bb.d
  %i.ai = phi i32 [ %.pre.i.i.i, %.noexc.i ], [ %i.k, %bb.e ], [ %i.k, %bb.d ]
  %i.aj = or i64 ptrtoint (ptr @.str.93 to i64), 289637751035265024
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = and i64 %i.an, 281474976710655
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = zext i32 %i.ai to i64
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %i.ap, i64 %i.aq ; 5 uses
  store i32 10, ptr %i.ar, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i, align 4
  %.sroa.65.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.ak, ptr %.sroa.65.0..sroa_idx.i, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.as, i8 0, i64 14, i1 false)
  %.sroa.6136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 30
  store i16 3, ptr %.sroa.6136.0..sroa_idx, align 2
  %i.at = load i32, ptr %0, align 8
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr %0, align 8
  %i.av = tail call noundef ptr @_ZN10glTFCommon19FindObjectInContextERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKcSA_SA_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.209, ptr noundef null)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.036 = phi ptr [ %i.h, %bb.c ], [ %i.av, %bb.f ] ; 6 uses
  %i.aw = load ptr, ptr %i.f, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.ax = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aw) #36, !noalias !508
  %i.ay = trunc i64 %i.ax to i32                  ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 14
  store i16 1029, ptr %i.az, align 2
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = and i64 %i.bc, -281474976710656
  %i.be = ptrtoint ptr %i.aw to i64               ; 4 uses
  %i.bf = or i64 %i.bd, %i.be                     ; 2 uses
  %i.bg = inttoptr i64 %i.bf to ptr
  store ptr %i.bg, ptr %i.ba, align 8
  store i32 %i.ay, ptr %5, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.036, i64 8 ; 4 uses
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = and i64 %i.bj, 281474976710655
  %i.bl = inttoptr i64 %i.bk to ptr               ; 7 uses
  %i.bm = load i32, ptr %.036, align 8            ; 3 uses
  %i.bn = zext i32 %i.bm to i64                   ; 4 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.bn, 5
  %i.bo = getelementptr i8, ptr %i.bl, i64 %.idx.i.i.i.i ; 2 uses
  %.not9.i.i.i.i = icmp eq i32 %i.bm, 0
  br i1 %.not9.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g
  %i.bp = lshr i64 %i.be, 40
  %i.bq = trunc i64 %i.bp to i8
  %i.br = and i64 %i.bf, 1152921504606846976
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.br, 0      ; 2 uses
  %i.bs = sext i8 %i.bq to i32
  %i.bt = sub nsw i32 13, %i.bs
  %i.bu = select i1 %.not.i.i.i.i.i.i.i, i32 %i.ay, i32 %i.bt ; 2 uses
  %i.bv = and i64 %i.be, 281474976710655
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = select i1 %.not.i.i.i.i.i.i.i, ptr %i.bw, ptr %5 ; 2 uses
  %i.by = zext i32 %i.bu to i64
  br label %bb.h

bb.h:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %.lr.ph.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i ], [ %i.cq, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 8 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 14
  %i.ca = load i16, ptr %i.bz, align 2
  %i.cb = and i16 %i.ca, 4096
  %.not.i.i13.i.i.i.i.i = icmp eq i16 %i.cb, 0    ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 13
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = sext i8 %i.cd to i32
  %i.cf = sub nsw i32 13, %i.ce
  %i.cg = load i32, ptr %.010.i.i.i.i, align 8
  %i.ch = select i1 %.not.i.i13.i.i.i.i.i, i32 %i.cg, i32 %i.cf
  %.not.i.i.i.i.i = icmp eq i32 %i.bu, %i.ch
  br i1 %.not.i.i.i.i.i, label %bb.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.ci = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = and i64 %i.ck, 281474976710655
  %i.cm = inttoptr i64 %i.cl to ptr
  %i.cn = select i1 %.not.i.i13.i.i.i.i.i, ptr %i.cm, ptr %.010.i.i.i.i ; 2 uses
  %i.co = icmp eq ptr %i.bx, %i.cn
  br i1 %i.co, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i: ; preds = %bb.i
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %i.bx, ptr %i.cn, i64 %i.by)
  %i.cp = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.cp, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.h
  %i.cq = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cq, %i.bo
  br i1 %.not.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %bb.h, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.i, %bb.g
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bl, %bb.g ], [ %.010.i.i.i.i, %bb.i ], [ %.010.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i ], [ %i.bo, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.cr = getelementptr inbounds nuw [32 x i8], ptr %i.bl, i64 %i.bn
  %.not.i = icmp eq ptr %.0.lcssa.i.i.i.i, %i.cr
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 30
  %i.cu = load i16, ptr %i.ct, align 2
  %i.cv = icmp eq i16 %i.cu, 3
  br i1 %i.cv, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit, label %bb.k

bb.k:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, %bb.j
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %.036, i64 4 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4            ; 6 uses
  %.not.i.i.i49 = icmp ult i32 %i.bm, %i.cz
  br i1 %.not.i.i.i49, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not14.i.i.i50 = icmp eq i32 %i.cz, 0
  %i.da = add i32 %i.cz, 1
  %i.db = lshr i32 %i.da, 1
  %i.dc = add i32 %i.db, %i.cz
  %i.dd = select i1 %.not14.i.i.i50, i32 16, i32 %i.dc ; 3 uses
  %i.de = icmp ugt i32 %i.dd, %i.cz
  br i1 %i.de, label %.noexc.i53, label %bb.m

.noexc.i53:                                       ; preds = %bb.l
  %i.df = zext i32 %i.cz to i64
  %i.dg = zext i32 %i.dd to i64
  %i.dh = shl nuw nsw i64 %i.df, 5
  %i.di = shl nuw nsw i64 %i.dg, 5
end_hunk_2
begin_hunk_3_@_ZN4glTF11AssetWriter12WriteObjectsINS_9AnimationEEEvRNS_8LazyDictIT_EE:bb.a
  %.pre-phi157 = phi i64 [ %.pre156, %.noexc.i53 ], [ %i.bn, %bb.l ], [ %i.bn, %bb.k ]
  %.pre-phi155 = phi ptr [ %.pre154, %.noexc.i53 ], [ %i.bl, %bb.l ], [ %i.bl, %bb.k ]
  %i.dq = or i64 %i.be, 289637751035265024
  %i.dr = inttoptr i64 %i.dq to ptr
  %i.ds = getelementptr inbounds nuw [32 x i8], ptr %.pre-phi155, i64 %.pre-phi157 ; 5 uses
  store i32 %i.ay, ptr %i.ds, align 8
  %.sroa.6.0..sroa_idx.i51 = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i51, align 4
  %.sroa.65.0..sroa_idx.i52 = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store ptr %i.dr, ptr %.sroa.65.0..sroa_idx.i52, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.dt, i8 0, i64 14, i1 false)
  %.sroa.6132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 30
  store i16 3, ptr %.sroa.6132.0..sroa_idx, align 2
  %i.du = load i32, ptr %.036, align 8
  %i.dv = add i32 %i.du, 1                        ; 3 uses
  store i32 %i.dv, ptr %.036, align 8
  %i.dw = load ptr, ptr %i.f, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.dx = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dw) #36, !noalias !511
  %i.dy = trunc i64 %i.dx to i32                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 14
  store i16 1029, ptr %i.dz, align 2
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = and i64 %i.ec, -281474976710656
  %i.ee = ptrtoint ptr %i.dw to i64               ; 3 uses
  %i.ef = or i64 %i.ed, %i.ee                     ; 2 uses
  %i.eg = inttoptr i64 %i.ef to ptr
  store ptr %i.eg, ptr %i.ea, align 8
  store i32 %i.dy, ptr %4, align 8
  %i.eh = load ptr, ptr %i.bh, align 8
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = and i64 %i.ei, 281474976710655
  %i.ek = inttoptr i64 %i.ej to ptr               ; 4 uses
  %i.el = zext i32 %i.dv to i64                   ; 2 uses
  %.idx.i.i.i.i57 = shl nuw nsw i64 %i.el, 5
  %i.em = getelementptr i8, ptr %i.ek, i64 %.idx.i.i.i.i57 ; 2 uses
  %.not9.i.i.i.i58 = icmp eq i32 %i.dv, 0
  br i1 %.not9.i.i.i.i58, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, label %.lr.ph.i.i.i.i59

.lr.ph.i.i.i.i59:                                 ; preds = %bb.m
  %i.en = lshr i64 %i.ee, 40
  %i.eo = trunc i64 %i.en to i8
  %i.ep = and i64 %i.ef, 1152921504606846976
  %.not.i.i.i.i.i.i.i60 = icmp eq i64 %i.ep, 0    ; 2 uses
  %i.eq = sext i8 %i.eo to i32
  %i.er = sub nsw i32 13, %i.eq
  %i.es = select i1 %.not.i.i.i.i.i.i.i60, i32 %i.dy, i32 %i.er ; 2 uses
  %i.et = and i64 %i.ee, 281474976710655
  %i.eu = inttoptr i64 %i.et to ptr
  %i.ev = select i1 %.not.i.i.i.i.i.i.i60, ptr %i.eu, ptr %4 ; 2 uses
  %i.ew = zext i32 %i.es to i64
  br label %bb.n

bb.n:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64, %.lr.ph.i.i.i.i59
  %.010.i.i.i.i61 = phi ptr [ %i.ek, %.lr.ph.i.i.i.i59 ], [ %i.fo, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64 ] ; 8 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i61, i64 14
  %i.ey = load i16, ptr %i.ex, align 2
  %i.ez = and i16 %i.ey, 4096
  %.not.i.i13.i.i.i.i.i62 = icmp eq i16 %i.ez, 0  ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i61, i64 13
  %i.fb = load i8, ptr %i.fa, align 1
  %i.fc = sext i8 %i.fb to i32
  %i.fd = sub nsw i32 13, %i.fc
  %i.fe = load i32, ptr %.010.i.i.i.i61, align 8
  %i.ff = select i1 %.not.i.i13.i.i.i.i.i62, i32 %i.fe, i32 %i.fd
  %.not.i.i.i.i.i63 = icmp eq i32 %i.es, %i.ff
  br i1 %.not.i.i.i.i.i63, label %bb.o, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64

bb.o:                                             ; preds = %bb.n
  %i.fg = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i61, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = and i64 %i.fi, 281474976710655
  %i.fk = inttoptr i64 %i.fj to ptr
  %i.fl = select i1 %.not.i.i13.i.i.i.i.i62, ptr %i.fk, ptr %.010.i.i.i.i61 ; 2 uses
  %i.fm = icmp eq ptr %i.ev, %i.fl
  br i1 %i.fm, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70: ; preds = %bb.o
  %bcmp.i.i.i.i.i71 = call i32 @bcmp(ptr %i.ev, ptr %i.fl, i64 %i.ew)
  %i.fn = icmp eq i32 %bcmp.i.i.i.i.i71, 0
  br i1 %i.fn, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70, %bb.n
  %i.fo = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i61, i64 32 ; 2 uses
  %.not.i.i.i.i65 = icmp eq ptr %i.fo, %i.em
  br i1 %.not.i.i.i.i65, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, label %bb.n, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70, %bb.o, %bb.m
  %.0.lcssa.i.i.i.i67 = phi ptr [ %i.ek, %bb.m ], [ %.010.i.i.i.i61, %bb.o ], [ %.010.i.i.i.i61, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70 ], [ %i.em, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.fp = getelementptr inbounds nuw [32 x i8], ptr %i.ek, i64 %i.el
  %.not.i68 = icmp ne ptr %.0.lcssa.i.i.i.i67, %i.fp
  call void @llvm.assume(i1 %.not.i68)
  %i.fq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i67, i64 16
  %i.fr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i67, i64 30
  %i.fs = load i16, ptr %i.fr, align 2
  %i.ft = icmp eq i16 %i.fs, 3
  %spec.select.i69 = select i1 %i.ft, ptr %i.fq, ptr null
  br label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit

_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, %bb.j, %bb.b
  %.138 = phi ptr [ %0, %bb.b ], [ %i.cs, %bb.j ], [ %spec.select.i69, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66 ] ; 8 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.fw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fv) #36, !noalias !514
  %i.fx = trunc i64 %i.fw to i32                  ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.fy = getelementptr inbounds nuw i8, ptr %3, i64 14
  store i16 1029, ptr %i.fy, align 2
  %i.fz = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ga = load ptr, ptr %i.fz, align 8
  %i.gb = ptrtoint ptr %i.ga to i64
  %i.gc = and i64 %i.gb, -281474976710656
  %i.gd = ptrtoint ptr %i.fv to i64               ; 4 uses
  %i.ge = or i64 %i.gc, %i.gd                     ; 2 uses
  %i.gf = inttoptr i64 %i.ge to ptr
  store ptr %i.gf, ptr %i.fz, align 8
  store i32 %i.fx, ptr %3, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %.138, i64 8 ; 6 uses
  %i.gh = load ptr, ptr %i.gg, align 8
  %i.gi = ptrtoint ptr %i.gh to i64
  %i.gj = and i64 %i.gi, 281474976710655
  %i.gk = inttoptr i64 %i.gj to ptr               ; 4 uses
  %i.gl = load i32, ptr %.138, align 8            ; 2 uses
  %i.gm = zext i32 %i.gl to i64                   ; 2 uses
  %.idx.i.i.i.i73 = shl nuw nsw i64 %i.gm, 5
  %i.gn = getelementptr i8, ptr %i.gk, i64 %.idx.i.i.i.i73 ; 2 uses
  %.not9.i.i.i.i74 = icmp eq i32 %i.gl, 0
  br i1 %.not9.i.i.i.i74, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, label %.lr.ph.i.i.i.i75

.lr.ph.i.i.i.i75:                                 ; preds = %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit
  %i.go = lshr i64 %i.gd, 40
  %i.gp = trunc i64 %i.go to i8
  %i.gq = and i64 %i.ge, 1152921504606846976
  %.not.i.i.i.i.i.i.i76 = icmp eq i64 %i.gq, 0    ; 2 uses
  %i.gr = sext i8 %i.gp to i32
  %i.gs = sub nsw i32 13, %i.gr
  %i.gt = select i1 %.not.i.i.i.i.i.i.i76, i32 %i.fx, i32 %i.gs ; 2 uses
  %i.gu = and i64 %i.gd, 281474976710655
  %i.gv = inttoptr i64 %i.gu to ptr
  %i.gw = select i1 %.not.i.i.i.i.i.i.i76, ptr %i.gv, ptr %3 ; 2 uses
  %i.gx = zext i32 %i.gt to i64
  br label %bb.p

bb.p:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80, %.lr.ph.i.i.i.i75
  %.010.i.i.i.i77 = phi ptr [ %i.gk, %.lr.ph.i.i.i.i75 ], [ %i.hp, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80 ] ; 8 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i77, i64 14
  %i.gz = load i16, ptr %i.gy, align 2
  %i.ha = and i16 %i.gz, 4096
  %.not.i.i13.i.i.i.i.i78 = icmp eq i16 %i.ha, 0  ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i77, i64 13
  %i.hc = load i8, ptr %i.hb, align 1
  %i.hd = sext i8 %i.hc to i32
  %i.he = sub nsw i32 13, %i.hd
  %i.hf = load i32, ptr %.010.i.i.i.i77, align 8
  %i.hg = select i1 %.not.i.i13.i.i.i.i.i78, i32 %i.hf, i32 %i.he
  %.not.i.i.i.i.i79 = icmp eq i32 %i.gt, %i.hg
  br i1 %.not.i.i.i.i.i79, label %bb.q, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80

bb.q:                                             ; preds = %bb.p
  %i.hh = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i77, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8
  %i.hj = ptrtoint ptr %i.hi to i64
  %i.hk = and i64 %i.hj, 281474976710655
  %i.hl = inttoptr i64 %i.hk to ptr
  %i.hm = select i1 %.not.i.i13.i.i.i.i.i78, ptr %i.hl, ptr %.010.i.i.i.i77 ; 2 uses
  %i.hn = icmp eq ptr %i.gw, %i.hm
  br i1 %i.hn, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86: ; preds = %bb.q
  %bcmp.i.i.i.i.i87 = call i32 @bcmp(ptr %i.gw, ptr %i.hm, i64 %i.gx)
  %i.ho = icmp eq i32 %bcmp.i.i.i.i.i87, 0
  br i1 %i.ho, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86, %bb.p
  %i.hp = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i77, i64 32 ; 2 uses
  %.not.i.i.i.i81 = icmp eq ptr %i.hp, %i.gn
  br i1 %.not.i.i.i.i81, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, label %bb.p, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86, %bb.q, %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit
  %.0.lcssa.i.i.i.i83 = phi ptr [ %i.gk, %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit ], [ %.010.i.i.i.i77, %bb.q ], [ %.010.i.i.i.i77, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86 ], [ %i.gn, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.hq = getelementptr inbounds nuw [32 x i8], ptr %i.gk, i64 %i.gm
  %.not.i84 = icmp eq ptr %.0.lcssa.i.i.i.i83, %i.hq
  br i1 %.not.i84, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82
  %i.hr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i83, i64 16
  %i.hs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i83, i64 30
  %i.ht = load i16, ptr %i.hs, align 2
  %i.hu = icmp eq i16 %i.ht, 3
  br i1 %i.hu, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88, label %bb.s

bb.s:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, %bb.r
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hw = load ptr, ptr %i.hv, align 8
  %i.hx = load i32, ptr %.138, align 8            ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.138, i64 4 ; 2 uses
  %i.hz = load i32, ptr %i.hy, align 4            ; 6 uses
  %.not.i.i.i89 = icmp ult i32 %i.hx, %i.hz
  br i1 %.not.i.i.i89, label %._crit_edge, label %bb.t

._crit_edge:                                      ; preds = %bb.s
  %.pre = load ptr, ptr %i.gg, align 8
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  %.not14.i.i.i90 = icmp eq i32 %i.hz, 0
  %i.ia = add i32 %i.hz, 1
  %i.ib = lshr i32 %i.ia, 1
  %i.ic = add i32 %i.ib, %i.hz
  %i.id = select i1 %.not14.i.i.i90, i32 16, i32 %i.ic ; 3 uses
  %i.ie = icmp ugt i32 %i.id, %i.hz
  %.pre144 = load ptr, ptr %i.gg, align 8         ; 2 uses
  br i1 %i.ie, label %.noexc.i93, label %bb.u

.noexc.i93:                                       ; preds = %bb.t
  %i.if = ptrtoint ptr %.pre144 to i64
  %i.ig = and i64 %i.if, 281474976710655
  %i.ih = inttoptr i64 %i.ig to ptr
  %i.ii = zext i32 %i.hz to i64
  %i.ij = zext i32 %i.id to i64
  %i.ik = shl nuw nsw i64 %i.ii, 5
  %i.il = shl nuw nsw i64 %i.ij, 5
  %i.im = call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.hw, ptr noundef %i.ih, i64 noundef %i.ik, i64 noundef %i.il)
  %i.in = load ptr, ptr %i.gg, align 8
  %i.io = ptrtoint ptr %i.in to i64
  %i.ip = and i64 %i.io, -281474976710656
  %i.iq = ptrtoint ptr %i.im to i64
  %i.ir = or i64 %i.ip, %i.iq
  %i.is = inttoptr i64 %i.ir to ptr               ; 2 uses
  store ptr %i.is, ptr %i.gg, align 8
  store i32 %i.id, ptr %i.hy, align 4
  %.pre.i.i.i94 = load i32, ptr %.138, align 8
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge, %.noexc.i93, %bb.t
  %i.it = phi ptr [ %i.is, %.noexc.i93 ], [ %.pre144, %bb.t ], [ %.pre, %._crit_edge ]
  %i.iu = phi i32 [ %.pre.i.i.i94, %.noexc.i93 ], [ %i.hx, %bb.t ], [ %i.hx, %._crit_edge ]
  %i.iv = or i64 %i.gd, 289637751035265024
  %i.iw = inttoptr i64 %i.iv to ptr
  %i.ix = ptrtoint ptr %i.it to i64
  %i.iy = and i64 %i.ix, 281474976710655
  %i.iz = inttoptr i64 %i.iy to ptr
  %i.ja = zext i32 %i.iu to i64
  %i.jb = getelementptr inbounds nuw [32 x i8], ptr %i.iz, i64 %i.ja ; 5 uses
  store i32 %i.fx, ptr %i.jb, align 8
  %.sroa.6.0..sroa_idx.i91 = getelementptr inbounds nuw i8, ptr %i.jb, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i91, align 4
  %.sroa.65.0..sroa_idx.i92 = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  store ptr %i.iw, ptr %.sroa.65.0..sroa_idx.i92, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  store <14 x i8> zeroinitializer, ptr %i.jc, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jb, i64 30
  store i16 3, ptr %.sroa.6.0..sroa_idx, align 2
  %i.jd = load i32, ptr %.138, align 8
  %i.je = add i32 %i.jd, 1
  store i32 %i.je, ptr %.138, align 8
  %i.jf = load ptr, ptr %i.fu, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.jg = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.jf) #36, !noalias !517
  %i.jh = trunc i64 %i.jg to i32                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.ji = getelementptr inbounds nuw i8, ptr %2, i64 14
  store i16 1029, ptr %i.ji, align 2
  %i.jj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.jk = load ptr, ptr %i.jj, align 8
  %i.jl = ptrtoint ptr %i.jk to i64
  %i.jm = and i64 %i.jl, -281474976710656
  %i.jn = ptrtoint ptr %i.jf to i64               ; 3 uses
  %i.jo = or i64 %i.jm, %i.jn                     ; 2 uses
  %i.jp = inttoptr i64 %i.jo to ptr
  store ptr %i.jp, ptr %i.jj, align 8
  store i32 %i.jh, ptr %2, align 8
  %i.jq = load ptr, ptr %i.gg, align 8
  %i.jr = ptrtoint ptr %i.jq to i64
  %i.js = and i64 %i.jr, 281474976710655
  %i.jt = inttoptr i64 %i.js to ptr               ; 4 uses
  %i.ju = load i32, ptr %.138, align 8            ; 2 uses
  %i.jv = zext i32 %i.ju to i64                   ; 2 uses
  %.idx.i.i.i.i97 = shl nuw nsw i64 %i.jv, 5
  %i.jw = getelementptr i8, ptr %i.jt, i64 %.idx.i.i.i.i97 ; 2 uses
  %.not9.i.i.i.i98 = icmp eq i32 %i.ju, 0
  br i1 %.not9.i.i.i.i98, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, label %.lr.ph.i.i.i.i99

.lr.ph.i.i.i.i99:                                 ; preds = %bb.u
  %i.jx = lshr i64 %i.jn, 40
  %i.jy = trunc i64 %i.jx to i8
  %i.jz = and i64 %i.jo, 1152921504606846976
  %.not.i.i.i.i.i.i.i100 = icmp eq i64 %i.jz, 0   ; 2 uses
  %i.ka = sext i8 %i.jy to i32
  %i.kb = sub nsw i32 13, %i.ka
  %i.kc = select i1 %.not.i.i.i.i.i.i.i100, i32 %i.jh, i32 %i.kb ; 2 uses
  %i.kd = and i64 %i.jn, 281474976710655
  %i.ke = inttoptr i64 %i.kd to ptr
  %i.kf = select i1 %.not.i.i.i.i.i.i.i100, ptr %i.ke, ptr %2 ; 2 uses
  %i.kg = zext i32 %i.kc to i64
  br label %bb.v

bb.v:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104, %.lr.ph.i.i.i.i99
  %.010.i.i.i.i101 = phi ptr [ %i.jt, %.lr.ph.i.i.i.i99 ], [ %i.ky, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104 ] ; 8 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i101, i64 14
  %i.ki = load i16, ptr %i.kh, align 2
  %i.kj = and i16 %i.ki, 4096
  %.not.i.i13.i.i.i.i.i102 = icmp eq i16 %i.kj, 0 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i101, i64 13
  %i.kl = load i8, ptr %i.kk, align 1
  %i.km = sext i8 %i.kl to i32
  %i.kn = sub nsw i32 13, %i.km
  %i.ko = load i32, ptr %.010.i.i.i.i101, align 8
  %i.kp = select i1 %.not.i.i13.i.i.i.i.i102, i32 %i.ko, i32 %i.kn
  %.not.i.i.i.i.i103 = icmp eq i32 %i.kc, %i.kp
  br i1 %.not.i.i.i.i.i103, label %bb.w, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104

bb.w:                                             ; preds = %bb.v
  %i.kq = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i101, i64 8
  %i.kr = load ptr, ptr %i.kq, align 8
  %i.ks = ptrtoint ptr %i.kr to i64
  %i.kt = and i64 %i.ks, 281474976710655
  %i.ku = inttoptr i64 %i.kt to ptr
  %i.kv = select i1 %.not.i.i13.i.i.i.i.i102, ptr %i.ku, ptr %.010.i.i.i.i101 ; 2 uses
  %i.kw = icmp eq ptr %i.kf, %i.kv
  br i1 %i.kw, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110: ; preds = %bb.w
  %bcmp.i.i.i.i.i111 = call i32 @bcmp(ptr %i.kf, ptr %i.kv, i64 %i.kg)
  %i.kx = icmp eq i32 %bcmp.i.i.i.i.i111, 0
  br i1 %i.kx, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110, %bb.v
  %i.ky = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i101, i64 32 ; 2 uses
  %.not.i.i.i.i105 = icmp eq ptr %i.ky, %i.jw
  br i1 %.not.i.i.i.i105, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, label %bb.v, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110, %bb.w, %bb.u
  %.0.lcssa.i.i.i.i107 = phi ptr [ %i.jt, %bb.u ], [ %.010.i.i.i.i101, %bb.w ], [ %.010.i.i.i.i101, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110 ], [ %i.jw, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.kz = getelementptr inbounds nuw [32 x i8], ptr %i.jt, i64 %i.jv
  %.not.i108 = icmp eq ptr %.0.lcssa.i.i.i.i107, %i.kz
  br i1 %.not.i108, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88, label %bb.x

bb.x:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106
  %i.la = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i107, i64 16
  %i.lb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i107, i64 30
  %i.lc = load i16, ptr %i.lb, align 2
  %i.ld = icmp eq i16 %i.lc, 3
  %spec.select.i109 = select i1 %i.ld, ptr %i.la, ptr null
  br label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88

_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88: ; preds = %bb.x, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, %bb.r
  %.031 = phi ptr [ %i.hr, %bb.r ], [ null, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106 ], [ %spec.select.i109, %bb.x ] ; 6 uses
  %i.le = load ptr, ptr %i.c, align 8
  %i.lf = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not143 = icmp eq ptr %i.le, %i.lf
  br i1 %.not143, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88
  %i.lg = getelementptr inbounds nuw i8, ptr %6, i64 14
  %i.lh = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.lk = or i64 ptrtoint (ptr @.str.88 to i64), 289637751035265024
  %i.ll = inttoptr i64 %i.lk to ptr
  %i.lm = getelementptr inbounds nuw i8, ptr %.031, i64 4 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.031, i64 8 ; 4 uses
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph, %bb.ad
  %i.lo = phi ptr [ %i.lf, %.lr.ph ], [ %i.ov, %bb.ad ]
  %.0142 = phi i64 [ 0, %.lr.ph ], [ %i.ot, %bb.ad ] ; 5 uses
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.lo, i64 %.0142
  %i.lq = load ptr, ptr %i.lp, align 8            ; 2 uses
  %i.lr = load ptr, ptr %i.lq, align 8
  %i.ls = load ptr, ptr %i.lr, align 8
  %i.lt = call noundef zeroext i1 %i.ls(ptr noundef nonnull align 8 dereferenceable(72) %i.lq)
  br i1 %i.lt, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  store i16 3, ptr %i.lg, align 2
  %i.lu = load ptr, ptr %i.a, align 8
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.lu, i64 %.0142
  %i.lw = load ptr, ptr %i.lv, align 8            ; 3 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 48
  %i.ly = load i64, ptr %i.lx, align 8
  %i.lz = icmp eq i64 %i.ly, 0
  br i1 %i.lz, label %bb.aa, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit: ; preds = %bb.z
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lw, i64 40
  %i.mb = load ptr, ptr %i.ma, align 8            ; 2 uses
  %i.mc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.mb) #36, !noalias !520
  %i.md = trunc i64 %i.mc to i32
  %i.me = load ptr, ptr %i.li, align 8, !nonnull !16, !align !112
  %i.mf = load ptr, ptr %i.lj, align 8
  %i.mg = ptrtoint ptr %i.mf to i64
  %i.mh = and i64 %i.mg, 281474976710655
  %i.mi = inttoptr i64 %i.mh to ptr
  %i.mj = call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.me, ptr noundef %i.mi, i64 noundef 0, i64 noundef 512)
  %i.mk = load ptr, ptr %i.lj, align 8
  %i.ml = ptrtoint ptr %i.mk to i64
  %i.mm = and i64 %i.ml, -281474976710656
  %i.mn = ptrtoint ptr %i.mj to i64               ; 2 uses
  %i.mo = or i64 %i.mm, %i.mn
  %i.mp = inttoptr i64 %i.mo to ptr
  store ptr %i.mp, ptr %i.lj, align 8
  store i32 16, ptr %i.lh, align 4
  %.pre.i.i.i.i = load i32, ptr %6, align 8
  %i.mq = zext i32 %.pre.i.i.i.i to i64
  %i.mr = ptrtoint ptr %i.mb to i64
  %i.ms = or i64 %i.mr, 289637751035265024
  %i.mt = inttoptr i64 %i.ms to ptr
  %i.mu = and i64 %i.mn, 281474976710655
  %i.mv = inttoptr i64 %i.mu to ptr
  %i.mw = getelementptr inbounds nuw [32 x i8], ptr %i.mv, i64 %i.mq ; 6 uses
  store i32 4, ptr %i.mw, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mw, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i.i, align 4
  %.sroa.65.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  store ptr %i.ll, ptr %.sroa.65.0..sroa_idx.i.i, align 8
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 16
  store i32 %i.md, ptr %i.mx, align 8
  %.sroa.6.0..sroa_idx.i114 = getelementptr inbounds nuw i8, ptr %i.mw, i64 20
  store i32 0, ptr %.sroa.6.0..sroa_idx.i114, align 4
  %.sroa.66.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mw, i64 24
  store ptr %i.mt, ptr %.sroa.66.0..sroa_idx.i, align 8
  %i.my = load i32, ptr %6, align 8
  %i.mz = add i32 %i.my, 1
  store i32 %i.mz, ptr %6, align 8
  %.pre146 = load ptr, ptr %i.a, align 8
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre146, i64 %.0142
  %.pre147 = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit, %bb.z
  %i.na = phi ptr [ %.pre147, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit ], [ %i.lw, %bb.z ]
  call void @_ZN4glTF5WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_9AnimationERNS_11AssetWriterE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(184) %i.na, ptr noundef nonnull align 8 dereferenceable(112) %0)
  %i.nb = load ptr, ptr %i.a, align 8
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.nb, i64 %.0142
  %i.nd = load ptr, ptr %i.nc, align 8            ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  %i.nf = load ptr, ptr %i.ne, align 8, !noalias !523 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nd, i64 16
  %i.nh = load i64, ptr %i.ng, align 8, !noalias !523
  %i.ni = trunc i64 %i.nh to i32
  %.not.i.i = icmp eq ptr %i.nf, null
  %i.nj = select i1 %.not.i.i, ptr @_ZN9rapidjson16GenericStringRefIcE11emptyStringE, ptr %i.nf, !prof !6
  %i.nk = load ptr, ptr %i.li, align 8, !nonnull !16, !align !112
  %i.nl = load i32, ptr %.031, align 8            ; 3 uses
  %i.nm = load i32, ptr %i.lm, align 4            ; 6 uses
  %.not.i.i.i116 = icmp ult i32 %i.nl, %i.nm
  br i1 %.not.i.i.i116, label %._crit_edge148, label %bb.ab

._crit_edge148:                                   ; preds = %bb.aa
  %.pre149 = load ptr, ptr %i.ln, align 8
  br label %bb.ac

end_hunk_3
begin_hunk_4_@_ZN4glTF8LazyDictINS_6BufferEE16AttachToDocumentERN9rapidjson15GenericDocumentINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEES8_EE:bb.a
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = and i64 %i.q, 281474976710655
  %i.s = inttoptr i64 %i.r to ptr                 ; 4 uses
  %i.t = load i32, ptr %i.c, align 8              ; 2 uses
  %i.u = zext i32 %i.t to i64                     ; 2 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.u, 5
  %i.v = getelementptr i8, ptr %i.s, i64 %.idx.i.i.i.i ; 2 uses
  %.not9.i.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not9.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c
  %i.w = lshr i64 %i.l, 40
  %i.x = trunc i64 %i.w to i8
  %i.y = and i64 %i.m, 1152921504606846976
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.y, 0       ; 2 uses
  %i.z = sext i8 %i.x to i32
  %i.aa = sub nsw i32 13, %i.z
  %i.ab = select i1 %.not.i.i.i.i.i.i.i, i32 %i.f, i32 %i.aa ; 2 uses
  %i.ac = and i64 %i.l, 281474976710655
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = select i1 %.not.i.i.i.i.i.i.i, ptr %i.ad, ptr %3 ; 2 uses
  %i.af = zext i32 %i.ab to i64
  br label %bb.d

bb.d:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %.lr.ph.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i ], [ %i.ax, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 14
  %i.ah = load i16, ptr %i.ag, align 2
  %i.ai = and i16 %i.ah, 4096
  %.not.i.i13.i.i.i.i.i = icmp eq i16 %i.ai, 0    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 13
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = sext i8 %i.ak to i32
  %i.am = sub nsw i32 13, %i.al
  %i.an = load i32, ptr %.010.i.i.i.i, align 8
  %i.ao = select i1 %.not.i.i13.i.i.i.i.i, i32 %i.an, i32 %i.am
  %.not.i.i.i.i.i = icmp eq i32 %i.ab, %i.ao
  br i1 %.not.i.i.i.i.i, label %bb.e, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = and i64 %i.ar, 281474976710655
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = select i1 %.not.i.i13.i.i.i.i.i, ptr %i.at, ptr %.010.i.i.i.i ; 2 uses
  %i.av = icmp eq ptr %i.ae, %i.au
  br i1 %i.av, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i: ; preds = %bb.e
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %i.ae, ptr %i.au, i64 %i.af)
  %i.aw = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.aw, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ax, %i.v
  br i1 %.not.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %bb.d, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.e, %bb.c
  %.0.lcssa.i.i.i.i = phi ptr [ %i.s, %bb.c ], [ %.010.i.i.i.i, %bb.e ], [ %.010.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i ], [ %i.v, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.ay = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %i.u
  %.not.i = icmp eq ptr %.0.lcssa.i.i.i.i, %i.ay
  br i1 %.not.i, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 30
  %i.bb = load i16, ptr %i.ba, align 2
  %i.bc = icmp eq i16 %i.bb, 3
  br i1 %i.bc, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread

_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit: ; preds = %bb.f, %bb.a
  %.1 = phi ptr [ %1, %bb.a ], [ %i.az, %bb.f ]   ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.bf = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.be) #36, !noalias !553
  %i.bg = trunc i64 %i.bf to i32                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 14
  store i16 1029, ptr %i.bh, align 2
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = and i64 %i.bk, -281474976710656
  %i.bm = ptrtoint ptr %i.be to i64               ; 3 uses
  %i.bn = or i64 %i.bl, %i.bm                     ; 2 uses
  %i.bo = inttoptr i64 %i.bn to ptr
  store ptr %i.bo, ptr %i.bi, align 8
  store i32 %i.bg, ptr %2, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = and i64 %i.br, 281474976710655
  %i.bt = inttoptr i64 %i.bs to ptr               ; 4 uses
  %i.bu = load i32, ptr %.1, align 8              ; 2 uses
  %i.bv = zext i32 %i.bu to i64                   ; 2 uses
  %.idx.i.i.i.i10 = shl nuw nsw i64 %i.bv, 5
  %i.bw = getelementptr i8, ptr %i.bt, i64 %.idx.i.i.i.i10 ; 2 uses
  %.not9.i.i.i.i11 = icmp eq i32 %i.bu, 0
  br i1 %.not9.i.i.i.i11, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19, label %.lr.ph.i.i.i.i12

.lr.ph.i.i.i.i12:                                 ; preds = %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit
  %i.bx = lshr i64 %i.bm, 40
  %i.by = trunc i64 %i.bx to i8
  %i.bz = and i64 %i.bn, 1152921504606846976
  %.not.i.i.i.i.i.i.i13 = icmp eq i64 %i.bz, 0    ; 2 uses
  %i.ca = sext i8 %i.by to i32
  %i.cb = sub nsw i32 13, %i.ca
  %i.cc = select i1 %.not.i.i.i.i.i.i.i13, i32 %i.bg, i32 %i.cb ; 2 uses
  %i.cd = and i64 %i.bm, 281474976710655
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = select i1 %.not.i.i.i.i.i.i.i13, ptr %i.ce, ptr %2 ; 2 uses
  %i.cg = zext i32 %i.cc to i64
  br label %bb.g

bb.g:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17, %.lr.ph.i.i.i.i12
  %.010.i.i.i.i14 = phi ptr [ %i.bt, %.lr.ph.i.i.i.i12 ], [ %i.cy, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17 ] ; 8 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i14, i64 14
  %i.ci = load i16, ptr %i.ch, align 2
  %i.cj = and i16 %i.ci, 4096
  %.not.i.i13.i.i.i.i.i15 = icmp eq i16 %i.cj, 0  ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i14, i64 13
  %i.cl = load i8, ptr %i.ck, align 1
  %i.cm = sext i8 %i.cl to i32
  %i.cn = sub nsw i32 13, %i.cm
  %i.co = load i32, ptr %.010.i.i.i.i14, align 8
  %i.cp = select i1 %.not.i.i13.i.i.i.i.i15, i32 %i.co, i32 %i.cn
  %.not.i.i.i.i.i16 = icmp eq i32 %i.cc, %i.cp
  br i1 %.not.i.i.i.i.i16, label %bb.h, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17

bb.h:                                             ; preds = %bb.g
  %i.cq = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i14, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = and i64 %i.cs, 281474976710655
  %i.cu = inttoptr i64 %i.ct to ptr
  %i.cv = select i1 %.not.i.i13.i.i.i.i.i15, ptr %i.cu, ptr %.010.i.i.i.i14 ; 2 uses
  %i.cw = icmp eq ptr %i.cf, %i.cv
  br i1 %i.cw, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i23

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i23: ; preds = %bb.h
  %bcmp.i.i.i.i.i24 = call i32 @bcmp(ptr %i.cf, ptr %i.cv, i64 %i.cg)
  %i.cx = icmp eq i32 %bcmp.i.i.i.i.i24, 0
  br i1 %i.cx, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i23, %bb.g
  %i.cy = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i14, i64 32 ; 2 uses
  %.not.i.i.i.i18 = icmp eq ptr %i.cy, %i.bw
  br i1 %.not.i.i.i.i18, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19, label %bb.g, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i23, %bb.h, %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit
  %.0.lcssa.i.i.i.i20 = phi ptr [ %i.bt, %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit ], [ %.010.i.i.i.i14, %bb.h ], [ %.010.i.i.i.i14, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i23 ], [ %i.bw, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.cz = getelementptr inbounds nuw [32 x i8], ptr %i.bt, i64 %i.bv
  %.not.i21 = icmp eq ptr %.0.lcssa.i.i.i.i20, %i.cz
  br i1 %.not.i21, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit25, label %bb.i

bb.i:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19
  %i.da = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i20, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i20, i64 30
  %i.dc = load i16, ptr %i.db, align 2
  %i.dd = icmp eq i16 %i.dc, 3
  %spec.select.i22 = select i1 %i.dd, ptr %i.da, ptr null
  br label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit25

_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit25: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19, %bb.i
  %i.de = phi ptr [ null, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19 ], [ %spec.select.i22, %bb.i ]
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.de, ptr %i.df, align 8
  br label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread

_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread: ; preds = %bb.f, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, %bb.b, %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit25
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4glTF8LazyDictINS_6BufferEE18DetachFromDocumentEv(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr null, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4glTF8LazyDictINS_6BufferEE12WriteObjectsERNS_11AssetWriterE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN4glTF11AssetWriter12WriteObjectsINS_6BufferEEEvRNS_8LazyDictIT_EE(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(120) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4glTF11AssetWriter12WriteObjectsINS_6BufferEEEvRNS_8LazyDictIT_EE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(120) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %3 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %4 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %5 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %6 = alloca %"class.rapidjson::GenericValue", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef ptr @_ZN10glTFCommon19FindObjectInContextERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKcSA_SA_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.209, ptr noundef null) ; 2 uses
  %.not42 = icmp eq ptr %i.h, null
  br i1 %.not42, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load i32, ptr %0, align 8                ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4              ; 6 uses
  %.not.i.i.i = icmp ult i32 %i.k, %i.m
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not14.i.i.i = icmp eq i32 %i.m, 0
  %i.n = add i32 %i.m, 1
  %i.o = lshr i32 %i.n, 1
  %i.p = add i32 %i.o, %i.m
  %i.q = select i1 %.not14.i.i.i, i32 16, i32 %i.p ; 3 uses
  %i.r = icmp ugt i32 %i.q, %i.m
  br i1 %i.r, label %.noexc.i, label %bb.f

.noexc.i:                                         ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = and i64 %i.u, 281474976710655
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = zext i32 %i.m to i64
  %i.y = zext i32 %i.q to i64
  %i.z = shl nuw nsw i64 %i.x, 5
  %i.aa = shl nuw nsw i64 %i.y, 5
  %i.ab = tail call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef %i.w, i64 noundef %i.z, i64 noundef %i.aa)
  %i.ac = load ptr, ptr %i.s, align 8
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = and i64 %i.ad, -281474976710656
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = or i64 %i.ae, %i.af
  %i.ah = inttoptr i64 %i.ag to ptr
  store ptr %i.ah, ptr %i.s, align 8
  store i32 %i.q, ptr %i.l, align 4
  %.pre.i.i.i = load i32, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %.noexc.i, %bb.e, %bb.d
  %i.ai = phi i32 [ %.pre.i.i.i, %.noexc.i ], [ %i.k, %bb.e ], [ %i.k, %bb.d ]
  %i.aj = or i64 ptrtoint (ptr @.str.93 to i64), 289637751035265024
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = and i64 %i.an, 281474976710655
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = zext i32 %i.ai to i64
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %i.ap, i64 %i.aq ; 5 uses
  store i32 10, ptr %i.ar, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i, align 4
  %.sroa.65.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.ak, ptr %.sroa.65.0..sroa_idx.i, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.as, i8 0, i64 14, i1 false)
  %.sroa.6136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 30
  store i16 3, ptr %.sroa.6136.0..sroa_idx, align 2
  %i.at = load i32, ptr %0, align 8
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr %0, align 8
  %i.av = tail call noundef ptr @_ZN10glTFCommon19FindObjectInContextERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKcSA_SA_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.209, ptr noundef null)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.036 = phi ptr [ %i.h, %bb.c ], [ %i.av, %bb.f ] ; 6 uses
  %i.aw = load ptr, ptr %i.f, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.ax = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aw) #36, !noalias !556
  %i.ay = trunc i64 %i.ax to i32                  ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 14
  store i16 1029, ptr %i.az, align 2
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = and i64 %i.bc, -281474976710656
  %i.be = ptrtoint ptr %i.aw to i64               ; 4 uses
  %i.bf = or i64 %i.bd, %i.be                     ; 2 uses
  %i.bg = inttoptr i64 %i.bf to ptr
  store ptr %i.bg, ptr %i.ba, align 8
  store i32 %i.ay, ptr %5, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.036, i64 8 ; 4 uses
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = and i64 %i.bj, 281474976710655
  %i.bl = inttoptr i64 %i.bk to ptr               ; 7 uses
  %i.bm = load i32, ptr %.036, align 8            ; 3 uses
  %i.bn = zext i32 %i.bm to i64                   ; 4 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.bn, 5
  %i.bo = getelementptr i8, ptr %i.bl, i64 %.idx.i.i.i.i ; 2 uses
  %.not9.i.i.i.i = icmp eq i32 %i.bm, 0
  br i1 %.not9.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g
  %i.bp = lshr i64 %i.be, 40
  %i.bq = trunc i64 %i.bp to i8
  %i.br = and i64 %i.bf, 1152921504606846976
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.br, 0      ; 2 uses
  %i.bs = sext i8 %i.bq to i32
  %i.bt = sub nsw i32 13, %i.bs
  %i.bu = select i1 %.not.i.i.i.i.i.i.i, i32 %i.ay, i32 %i.bt ; 2 uses
  %i.bv = and i64 %i.be, 281474976710655
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = select i1 %.not.i.i.i.i.i.i.i, ptr %i.bw, ptr %5 ; 2 uses
  %i.by = zext i32 %i.bu to i64
  br label %bb.h

bb.h:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %.lr.ph.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i ], [ %i.cq, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 8 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 14
  %i.ca = load i16, ptr %i.bz, align 2
  %i.cb = and i16 %i.ca, 4096
  %.not.i.i13.i.i.i.i.i = icmp eq i16 %i.cb, 0    ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 13
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = sext i8 %i.cd to i32
  %i.cf = sub nsw i32 13, %i.ce
  %i.cg = load i32, ptr %.010.i.i.i.i, align 8
  %i.ch = select i1 %.not.i.i13.i.i.i.i.i, i32 %i.cg, i32 %i.cf
  %.not.i.i.i.i.i = icmp eq i32 %i.bu, %i.ch
  br i1 %.not.i.i.i.i.i, label %bb.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.ci = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = and i64 %i.ck, 281474976710655
  %i.cm = inttoptr i64 %i.cl to ptr
  %i.cn = select i1 %.not.i.i13.i.i.i.i.i, ptr %i.cm, ptr %.010.i.i.i.i ; 2 uses
  %i.co = icmp eq ptr %i.bx, %i.cn
  br i1 %i.co, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i: ; preds = %bb.i
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %i.bx, ptr %i.cn, i64 %i.by)
  %i.cp = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.cp, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.h
  %i.cq = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cq, %i.bo
  br i1 %.not.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %bb.h, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.i, %bb.g
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bl, %bb.g ], [ %.010.i.i.i.i, %bb.i ], [ %.010.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i ], [ %i.bo, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.cr = getelementptr inbounds nuw [32 x i8], ptr %i.bl, i64 %i.bn
  %.not.i = icmp eq ptr %.0.lcssa.i.i.i.i, %i.cr
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 30
  %i.cu = load i16, ptr %i.ct, align 2
  %i.cv = icmp eq i16 %i.cu, 3
  br i1 %i.cv, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit, label %bb.k

bb.k:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, %bb.j
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %.036, i64 4 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4            ; 6 uses
  %.not.i.i.i49 = icmp ult i32 %i.bm, %i.cz
  br i1 %.not.i.i.i49, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not14.i.i.i50 = icmp eq i32 %i.cz, 0
  %i.da = add i32 %i.cz, 1
  %i.db = lshr i32 %i.da, 1
  %i.dc = add i32 %i.db, %i.cz
  %i.dd = select i1 %.not14.i.i.i50, i32 16, i32 %i.dc ; 3 uses
  %i.de = icmp ugt i32 %i.dd, %i.cz
  br i1 %i.de, label %.noexc.i53, label %bb.m

.noexc.i53:                                       ; preds = %bb.l
  %i.df = zext i32 %i.cz to i64
  %i.dg = zext i32 %i.dd to i64
  %i.dh = shl nuw nsw i64 %i.df, 5
  %i.di = shl nuw nsw i64 %i.dg, 5
end_hunk_4
begin_hunk_5_@_ZN4glTF11AssetWriter12WriteObjectsINS_6BufferEEEvRNS_8LazyDictIT_EE:bb.a
  %.pre-phi157 = phi i64 [ %.pre156, %.noexc.i53 ], [ %i.bn, %bb.l ], [ %i.bn, %bb.k ]
  %.pre-phi155 = phi ptr [ %.pre154, %.noexc.i53 ], [ %i.bl, %bb.l ], [ %i.bl, %bb.k ]
  %i.dq = or i64 %i.be, 289637751035265024
  %i.dr = inttoptr i64 %i.dq to ptr
  %i.ds = getelementptr inbounds nuw [32 x i8], ptr %.pre-phi155, i64 %.pre-phi157 ; 5 uses
  store i32 %i.ay, ptr %i.ds, align 8
  %.sroa.6.0..sroa_idx.i51 = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i51, align 4
  %.sroa.65.0..sroa_idx.i52 = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store ptr %i.dr, ptr %.sroa.65.0..sroa_idx.i52, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.dt, i8 0, i64 14, i1 false)
  %.sroa.6132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 30
  store i16 3, ptr %.sroa.6132.0..sroa_idx, align 2
  %i.du = load i32, ptr %.036, align 8
  %i.dv = add i32 %i.du, 1                        ; 3 uses
  store i32 %i.dv, ptr %.036, align 8
  %i.dw = load ptr, ptr %i.f, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.dx = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dw) #36, !noalias !559
  %i.dy = trunc i64 %i.dx to i32                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 14
  store i16 1029, ptr %i.dz, align 2
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = and i64 %i.ec, -281474976710656
  %i.ee = ptrtoint ptr %i.dw to i64               ; 3 uses
  %i.ef = or i64 %i.ed, %i.ee                     ; 2 uses
  %i.eg = inttoptr i64 %i.ef to ptr
  store ptr %i.eg, ptr %i.ea, align 8
  store i32 %i.dy, ptr %4, align 8
  %i.eh = load ptr, ptr %i.bh, align 8
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = and i64 %i.ei, 281474976710655
  %i.ek = inttoptr i64 %i.ej to ptr               ; 4 uses
  %i.el = zext i32 %i.dv to i64                   ; 2 uses
  %.idx.i.i.i.i57 = shl nuw nsw i64 %i.el, 5
  %i.em = getelementptr i8, ptr %i.ek, i64 %.idx.i.i.i.i57 ; 2 uses
  %.not9.i.i.i.i58 = icmp eq i32 %i.dv, 0
  br i1 %.not9.i.i.i.i58, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, label %.lr.ph.i.i.i.i59

.lr.ph.i.i.i.i59:                                 ; preds = %bb.m
  %i.en = lshr i64 %i.ee, 40
  %i.eo = trunc i64 %i.en to i8
  %i.ep = and i64 %i.ef, 1152921504606846976
  %.not.i.i.i.i.i.i.i60 = icmp eq i64 %i.ep, 0    ; 2 uses
  %i.eq = sext i8 %i.eo to i32
  %i.er = sub nsw i32 13, %i.eq
  %i.es = select i1 %.not.i.i.i.i.i.i.i60, i32 %i.dy, i32 %i.er ; 2 uses
  %i.et = and i64 %i.ee, 281474976710655
  %i.eu = inttoptr i64 %i.et to ptr
  %i.ev = select i1 %.not.i.i.i.i.i.i.i60, ptr %i.eu, ptr %4 ; 2 uses
  %i.ew = zext i32 %i.es to i64
  br label %bb.n

bb.n:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64, %.lr.ph.i.i.i.i59
  %.010.i.i.i.i61 = phi ptr [ %i.ek, %.lr.ph.i.i.i.i59 ], [ %i.fo, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64 ] ; 8 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i61, i64 14
  %i.ey = load i16, ptr %i.ex, align 2
  %i.ez = and i16 %i.ey, 4096
  %.not.i.i13.i.i.i.i.i62 = icmp eq i16 %i.ez, 0  ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i61, i64 13
  %i.fb = load i8, ptr %i.fa, align 1
  %i.fc = sext i8 %i.fb to i32
  %i.fd = sub nsw i32 13, %i.fc
  %i.fe = load i32, ptr %.010.i.i.i.i61, align 8
  %i.ff = select i1 %.not.i.i13.i.i.i.i.i62, i32 %i.fe, i32 %i.fd
  %.not.i.i.i.i.i63 = icmp eq i32 %i.es, %i.ff
  br i1 %.not.i.i.i.i.i63, label %bb.o, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64

bb.o:                                             ; preds = %bb.n
  %i.fg = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i61, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = and i64 %i.fi, 281474976710655
  %i.fk = inttoptr i64 %i.fj to ptr
  %i.fl = select i1 %.not.i.i13.i.i.i.i.i62, ptr %i.fk, ptr %.010.i.i.i.i61 ; 2 uses
  %i.fm = icmp eq ptr %i.ev, %i.fl
  br i1 %i.fm, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70: ; preds = %bb.o
  %bcmp.i.i.i.i.i71 = call i32 @bcmp(ptr %i.ev, ptr %i.fl, i64 %i.ew)
  %i.fn = icmp eq i32 %bcmp.i.i.i.i.i71, 0
  br i1 %i.fn, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70, %bb.n
  %i.fo = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i61, i64 32 ; 2 uses
  %.not.i.i.i.i65 = icmp eq ptr %i.fo, %i.em
  br i1 %.not.i.i.i.i65, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, label %bb.n, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70, %bb.o, %bb.m
  %.0.lcssa.i.i.i.i67 = phi ptr [ %i.ek, %bb.m ], [ %.010.i.i.i.i61, %bb.o ], [ %.010.i.i.i.i61, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70 ], [ %i.em, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.fp = getelementptr inbounds nuw [32 x i8], ptr %i.ek, i64 %i.el
  %.not.i68 = icmp ne ptr %.0.lcssa.i.i.i.i67, %i.fp
  call void @llvm.assume(i1 %.not.i68)
  %i.fq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i67, i64 16
  %i.fr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i67, i64 30
  %i.fs = load i16, ptr %i.fr, align 2
  %i.ft = icmp eq i16 %i.fs, 3
  %spec.select.i69 = select i1 %i.ft, ptr %i.fq, ptr null
  br label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit

_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, %bb.j, %bb.b
  %.138 = phi ptr [ %0, %bb.b ], [ %i.cs, %bb.j ], [ %spec.select.i69, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66 ] ; 8 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.fw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fv) #36, !noalias !562
  %i.fx = trunc i64 %i.fw to i32                  ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.fy = getelementptr inbounds nuw i8, ptr %3, i64 14
  store i16 1029, ptr %i.fy, align 2
  %i.fz = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ga = load ptr, ptr %i.fz, align 8
  %i.gb = ptrtoint ptr %i.ga to i64
  %i.gc = and i64 %i.gb, -281474976710656
  %i.gd = ptrtoint ptr %i.fv to i64               ; 4 uses
  %i.ge = or i64 %i.gc, %i.gd                     ; 2 uses
  %i.gf = inttoptr i64 %i.ge to ptr
  store ptr %i.gf, ptr %i.fz, align 8
  store i32 %i.fx, ptr %3, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %.138, i64 8 ; 6 uses
  %i.gh = load ptr, ptr %i.gg, align 8
  %i.gi = ptrtoint ptr %i.gh to i64
  %i.gj = and i64 %i.gi, 281474976710655
  %i.gk = inttoptr i64 %i.gj to ptr               ; 4 uses
  %i.gl = load i32, ptr %.138, align 8            ; 2 uses
  %i.gm = zext i32 %i.gl to i64                   ; 2 uses
  %.idx.i.i.i.i73 = shl nuw nsw i64 %i.gm, 5
  %i.gn = getelementptr i8, ptr %i.gk, i64 %.idx.i.i.i.i73 ; 2 uses
  %.not9.i.i.i.i74 = icmp eq i32 %i.gl, 0
  br i1 %.not9.i.i.i.i74, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, label %.lr.ph.i.i.i.i75

.lr.ph.i.i.i.i75:                                 ; preds = %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit
  %i.go = lshr i64 %i.gd, 40
  %i.gp = trunc i64 %i.go to i8
  %i.gq = and i64 %i.ge, 1152921504606846976
  %.not.i.i.i.i.i.i.i76 = icmp eq i64 %i.gq, 0    ; 2 uses
  %i.gr = sext i8 %i.gp to i32
  %i.gs = sub nsw i32 13, %i.gr
  %i.gt = select i1 %.not.i.i.i.i.i.i.i76, i32 %i.fx, i32 %i.gs ; 2 uses
  %i.gu = and i64 %i.gd, 281474976710655
  %i.gv = inttoptr i64 %i.gu to ptr
  %i.gw = select i1 %.not.i.i.i.i.i.i.i76, ptr %i.gv, ptr %3 ; 2 uses
  %i.gx = zext i32 %i.gt to i64
  br label %bb.p

bb.p:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80, %.lr.ph.i.i.i.i75
  %.010.i.i.i.i77 = phi ptr [ %i.gk, %.lr.ph.i.i.i.i75 ], [ %i.hp, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80 ] ; 8 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i77, i64 14
  %i.gz = load i16, ptr %i.gy, align 2
  %i.ha = and i16 %i.gz, 4096
  %.not.i.i13.i.i.i.i.i78 = icmp eq i16 %i.ha, 0  ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i77, i64 13
  %i.hc = load i8, ptr %i.hb, align 1
  %i.hd = sext i8 %i.hc to i32
  %i.he = sub nsw i32 13, %i.hd
  %i.hf = load i32, ptr %.010.i.i.i.i77, align 8
  %i.hg = select i1 %.not.i.i13.i.i.i.i.i78, i32 %i.hf, i32 %i.he
  %.not.i.i.i.i.i79 = icmp eq i32 %i.gt, %i.hg
  br i1 %.not.i.i.i.i.i79, label %bb.q, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80

bb.q:                                             ; preds = %bb.p
  %i.hh = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i77, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8
  %i.hj = ptrtoint ptr %i.hi to i64
  %i.hk = and i64 %i.hj, 281474976710655
  %i.hl = inttoptr i64 %i.hk to ptr
  %i.hm = select i1 %.not.i.i13.i.i.i.i.i78, ptr %i.hl, ptr %.010.i.i.i.i77 ; 2 uses
  %i.hn = icmp eq ptr %i.gw, %i.hm
  br i1 %i.hn, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86: ; preds = %bb.q
  %bcmp.i.i.i.i.i87 = call i32 @bcmp(ptr %i.gw, ptr %i.hm, i64 %i.gx)
  %i.ho = icmp eq i32 %bcmp.i.i.i.i.i87, 0
  br i1 %i.ho, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86, %bb.p
  %i.hp = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i77, i64 32 ; 2 uses
  %.not.i.i.i.i81 = icmp eq ptr %i.hp, %i.gn
  br i1 %.not.i.i.i.i81, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, label %bb.p, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86, %bb.q, %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit
  %.0.lcssa.i.i.i.i83 = phi ptr [ %i.gk, %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit ], [ %.010.i.i.i.i77, %bb.q ], [ %.010.i.i.i.i77, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86 ], [ %i.gn, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.hq = getelementptr inbounds nuw [32 x i8], ptr %i.gk, i64 %i.gm
  %.not.i84 = icmp eq ptr %.0.lcssa.i.i.i.i83, %i.hq
  br i1 %.not.i84, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82
  %i.hr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i83, i64 16
  %i.hs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i83, i64 30
  %i.ht = load i16, ptr %i.hs, align 2
  %i.hu = icmp eq i16 %i.ht, 3
  br i1 %i.hu, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88, label %bb.s

bb.s:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, %bb.r
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hw = load ptr, ptr %i.hv, align 8
  %i.hx = load i32, ptr %.138, align 8            ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.138, i64 4 ; 2 uses
  %i.hz = load i32, ptr %i.hy, align 4            ; 6 uses
  %.not.i.i.i89 = icmp ult i32 %i.hx, %i.hz
  br i1 %.not.i.i.i89, label %._crit_edge, label %bb.t

._crit_edge:                                      ; preds = %bb.s
  %.pre = load ptr, ptr %i.gg, align 8
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  %.not14.i.i.i90 = icmp eq i32 %i.hz, 0
  %i.ia = add i32 %i.hz, 1
  %i.ib = lshr i32 %i.ia, 1
  %i.ic = add i32 %i.ib, %i.hz
  %i.id = select i1 %.not14.i.i.i90, i32 16, i32 %i.ic ; 3 uses
  %i.ie = icmp ugt i32 %i.id, %i.hz
  %.pre144 = load ptr, ptr %i.gg, align 8         ; 2 uses
  br i1 %i.ie, label %.noexc.i93, label %bb.u

.noexc.i93:                                       ; preds = %bb.t
  %i.if = ptrtoint ptr %.pre144 to i64
  %i.ig = and i64 %i.if, 281474976710655
  %i.ih = inttoptr i64 %i.ig to ptr
  %i.ii = zext i32 %i.hz to i64
  %i.ij = zext i32 %i.id to i64
  %i.ik = shl nuw nsw i64 %i.ii, 5
  %i.il = shl nuw nsw i64 %i.ij, 5
  %i.im = call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.hw, ptr noundef %i.ih, i64 noundef %i.ik, i64 noundef %i.il)
  %i.in = load ptr, ptr %i.gg, align 8
  %i.io = ptrtoint ptr %i.in to i64
  %i.ip = and i64 %i.io, -281474976710656
  %i.iq = ptrtoint ptr %i.im to i64
  %i.ir = or i64 %i.ip, %i.iq
  %i.is = inttoptr i64 %i.ir to ptr               ; 2 uses
  store ptr %i.is, ptr %i.gg, align 8
  store i32 %i.id, ptr %i.hy, align 4
  %.pre.i.i.i94 = load i32, ptr %.138, align 8
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge, %.noexc.i93, %bb.t
  %i.it = phi ptr [ %i.is, %.noexc.i93 ], [ %.pre144, %bb.t ], [ %.pre, %._crit_edge ]
  %i.iu = phi i32 [ %.pre.i.i.i94, %.noexc.i93 ], [ %i.hx, %bb.t ], [ %i.hx, %._crit_edge ]
  %i.iv = or i64 %i.gd, 289637751035265024
  %i.iw = inttoptr i64 %i.iv to ptr
  %i.ix = ptrtoint ptr %i.it to i64
  %i.iy = and i64 %i.ix, 281474976710655
  %i.iz = inttoptr i64 %i.iy to ptr
  %i.ja = zext i32 %i.iu to i64
  %i.jb = getelementptr inbounds nuw [32 x i8], ptr %i.iz, i64 %i.ja ; 5 uses
  store i32 %i.fx, ptr %i.jb, align 8
  %.sroa.6.0..sroa_idx.i91 = getelementptr inbounds nuw i8, ptr %i.jb, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i91, align 4
  %.sroa.65.0..sroa_idx.i92 = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  store ptr %i.iw, ptr %.sroa.65.0..sroa_idx.i92, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  store <14 x i8> zeroinitializer, ptr %i.jc, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jb, i64 30
  store i16 3, ptr %.sroa.6.0..sroa_idx, align 2
  %i.jd = load i32, ptr %.138, align 8
  %i.je = add i32 %i.jd, 1
  store i32 %i.je, ptr %.138, align 8
  %i.jf = load ptr, ptr %i.fu, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.jg = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.jf) #36, !noalias !565
  %i.jh = trunc i64 %i.jg to i32                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.ji = getelementptr inbounds nuw i8, ptr %2, i64 14
  store i16 1029, ptr %i.ji, align 2
  %i.jj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.jk = load ptr, ptr %i.jj, align 8
  %i.jl = ptrtoint ptr %i.jk to i64
  %i.jm = and i64 %i.jl, -281474976710656
  %i.jn = ptrtoint ptr %i.jf to i64               ; 3 uses
  %i.jo = or i64 %i.jm, %i.jn                     ; 2 uses
  %i.jp = inttoptr i64 %i.jo to ptr
  store ptr %i.jp, ptr %i.jj, align 8
  store i32 %i.jh, ptr %2, align 8
  %i.jq = load ptr, ptr %i.gg, align 8
  %i.jr = ptrtoint ptr %i.jq to i64
  %i.js = and i64 %i.jr, 281474976710655
  %i.jt = inttoptr i64 %i.js to ptr               ; 4 uses
  %i.ju = load i32, ptr %.138, align 8            ; 2 uses
  %i.jv = zext i32 %i.ju to i64                   ; 2 uses
  %.idx.i.i.i.i97 = shl nuw nsw i64 %i.jv, 5
  %i.jw = getelementptr i8, ptr %i.jt, i64 %.idx.i.i.i.i97 ; 2 uses
  %.not9.i.i.i.i98 = icmp eq i32 %i.ju, 0
  br i1 %.not9.i.i.i.i98, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, label %.lr.ph.i.i.i.i99

.lr.ph.i.i.i.i99:                                 ; preds = %bb.u
  %i.jx = lshr i64 %i.jn, 40
  %i.jy = trunc i64 %i.jx to i8
  %i.jz = and i64 %i.jo, 1152921504606846976
  %.not.i.i.i.i.i.i.i100 = icmp eq i64 %i.jz, 0   ; 2 uses
  %i.ka = sext i8 %i.jy to i32
  %i.kb = sub nsw i32 13, %i.ka
  %i.kc = select i1 %.not.i.i.i.i.i.i.i100, i32 %i.jh, i32 %i.kb ; 2 uses
  %i.kd = and i64 %i.jn, 281474976710655
  %i.ke = inttoptr i64 %i.kd to ptr
  %i.kf = select i1 %.not.i.i.i.i.i.i.i100, ptr %i.ke, ptr %2 ; 2 uses
  %i.kg = zext i32 %i.kc to i64
  br label %bb.v

bb.v:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104, %.lr.ph.i.i.i.i99
  %.010.i.i.i.i101 = phi ptr [ %i.jt, %.lr.ph.i.i.i.i99 ], [ %i.ky, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104 ] ; 8 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i101, i64 14
  %i.ki = load i16, ptr %i.kh, align 2
  %i.kj = and i16 %i.ki, 4096
  %.not.i.i13.i.i.i.i.i102 = icmp eq i16 %i.kj, 0 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i101, i64 13
  %i.kl = load i8, ptr %i.kk, align 1
  %i.km = sext i8 %i.kl to i32
  %i.kn = sub nsw i32 13, %i.km
  %i.ko = load i32, ptr %.010.i.i.i.i101, align 8
  %i.kp = select i1 %.not.i.i13.i.i.i.i.i102, i32 %i.ko, i32 %i.kn
  %.not.i.i.i.i.i103 = icmp eq i32 %i.kc, %i.kp
  br i1 %.not.i.i.i.i.i103, label %bb.w, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104

bb.w:                                             ; preds = %bb.v
  %i.kq = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i101, i64 8
  %i.kr = load ptr, ptr %i.kq, align 8
  %i.ks = ptrtoint ptr %i.kr to i64
  %i.kt = and i64 %i.ks, 281474976710655
  %i.ku = inttoptr i64 %i.kt to ptr
  %i.kv = select i1 %.not.i.i13.i.i.i.i.i102, ptr %i.ku, ptr %.010.i.i.i.i101 ; 2 uses
  %i.kw = icmp eq ptr %i.kf, %i.kv
  br i1 %i.kw, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110: ; preds = %bb.w
  %bcmp.i.i.i.i.i111 = call i32 @bcmp(ptr %i.kf, ptr %i.kv, i64 %i.kg)
  %i.kx = icmp eq i32 %bcmp.i.i.i.i.i111, 0
  br i1 %i.kx, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110, %bb.v
  %i.ky = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i101, i64 32 ; 2 uses
  %.not.i.i.i.i105 = icmp eq ptr %i.ky, %i.jw
  br i1 %.not.i.i.i.i105, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, label %bb.v, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110, %bb.w, %bb.u
  %.0.lcssa.i.i.i.i107 = phi ptr [ %i.jt, %bb.u ], [ %.010.i.i.i.i101, %bb.w ], [ %.010.i.i.i.i101, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110 ], [ %i.jw, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.kz = getelementptr inbounds nuw [32 x i8], ptr %i.jt, i64 %i.jv
  %.not.i108 = icmp eq ptr %.0.lcssa.i.i.i.i107, %i.kz
  br i1 %.not.i108, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88, label %bb.x

bb.x:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106
  %i.la = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i107, i64 16
  %i.lb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i107, i64 30
  %i.lc = load i16, ptr %i.lb, align 2
  %i.ld = icmp eq i16 %i.lc, 3
  %spec.select.i109 = select i1 %i.ld, ptr %i.la, ptr null
  br label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88

_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88: ; preds = %bb.x, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, %bb.r
  %.031 = phi ptr [ %i.hr, %bb.r ], [ null, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106 ], [ %spec.select.i109, %bb.x ] ; 6 uses
  %i.le = load ptr, ptr %i.c, align 8
  %i.lf = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not143 = icmp eq ptr %i.le, %i.lf
  br i1 %.not143, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88
  %i.lg = getelementptr inbounds nuw i8, ptr %6, i64 14
  %i.lh = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.lk = or i64 ptrtoint (ptr @.str.88 to i64), 289637751035265024
  %i.ll = inttoptr i64 %i.lk to ptr
  %i.lm = getelementptr inbounds nuw i8, ptr %.031, i64 4 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.031, i64 8 ; 4 uses
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph, %bb.ad
  %i.lo = phi ptr [ %i.lf, %.lr.ph ], [ %i.ov, %bb.ad ]
  %.0142 = phi i64 [ 0, %.lr.ph ], [ %i.ot, %bb.ad ] ; 5 uses
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.lo, i64 %.0142
  %i.lq = load ptr, ptr %i.lp, align 8            ; 2 uses
  %i.lr = load ptr, ptr %i.lq, align 8
  %i.ls = load ptr, ptr %i.lr, align 8
  %i.lt = call noundef zeroext i1 %i.ls(ptr noundef nonnull align 8 dereferenceable(152) %i.lq)
  br i1 %i.lt, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  store i16 3, ptr %i.lg, align 2
  %i.lu = load ptr, ptr %i.a, align 8
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.lu, i64 %.0142
  %i.lw = load ptr, ptr %i.lv, align 8            ; 3 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 48
  %i.ly = load i64, ptr %i.lx, align 8
  %i.lz = icmp eq i64 %i.ly, 0
  br i1 %i.lz, label %bb.aa, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit: ; preds = %bb.z
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lw, i64 40
  %i.mb = load ptr, ptr %i.ma, align 8            ; 2 uses
  %i.mc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.mb) #36, !noalias !568
  %i.md = trunc i64 %i.mc to i32
  %i.me = load ptr, ptr %i.li, align 8, !nonnull !16, !align !112
  %i.mf = load ptr, ptr %i.lj, align 8
  %i.mg = ptrtoint ptr %i.mf to i64
  %i.mh = and i64 %i.mg, 281474976710655
  %i.mi = inttoptr i64 %i.mh to ptr
  %i.mj = call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.me, ptr noundef %i.mi, i64 noundef 0, i64 noundef 512)
  %i.mk = load ptr, ptr %i.lj, align 8
  %i.ml = ptrtoint ptr %i.mk to i64
  %i.mm = and i64 %i.ml, -281474976710656
  %i.mn = ptrtoint ptr %i.mj to i64               ; 2 uses
  %i.mo = or i64 %i.mm, %i.mn
  %i.mp = inttoptr i64 %i.mo to ptr
  store ptr %i.mp, ptr %i.lj, align 8
  store i32 16, ptr %i.lh, align 4
  %.pre.i.i.i.i = load i32, ptr %6, align 8
  %i.mq = zext i32 %.pre.i.i.i.i to i64
  %i.mr = ptrtoint ptr %i.mb to i64
  %i.ms = or i64 %i.mr, 289637751035265024
  %i.mt = inttoptr i64 %i.ms to ptr
  %i.mu = and i64 %i.mn, 281474976710655
  %i.mv = inttoptr i64 %i.mu to ptr
  %i.mw = getelementptr inbounds nuw [32 x i8], ptr %i.mv, i64 %i.mq ; 6 uses
  store i32 4, ptr %i.mw, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mw, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i.i, align 4
  %.sroa.65.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  store ptr %i.ll, ptr %.sroa.65.0..sroa_idx.i.i, align 8
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 16
  store i32 %i.md, ptr %i.mx, align 8
  %.sroa.6.0..sroa_idx.i114 = getelementptr inbounds nuw i8, ptr %i.mw, i64 20
  store i32 0, ptr %.sroa.6.0..sroa_idx.i114, align 4
  %.sroa.66.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mw, i64 24
  store ptr %i.mt, ptr %.sroa.66.0..sroa_idx.i, align 8
  %i.my = load i32, ptr %6, align 8
  %i.mz = add i32 %i.my, 1
  store i32 %i.mz, ptr %6, align 8
  %.pre146 = load ptr, ptr %i.a, align 8
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre146, i64 %.0142
  %.pre147 = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit, %bb.z
  %i.na = phi ptr [ %.pre147, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit ], [ %i.lw, %bb.z ]
  call void @_ZN4glTF5WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_6BufferERNS_11AssetWriterE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(152) %i.na, ptr noundef nonnull align 8 dereferenceable(112) %0)
  %i.nb = load ptr, ptr %i.a, align 8
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.nb, i64 %.0142
  %i.nd = load ptr, ptr %i.nc, align 8            ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  %i.nf = load ptr, ptr %i.ne, align 8, !noalias !571 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nd, i64 16
  %i.nh = load i64, ptr %i.ng, align 8, !noalias !571
  %i.ni = trunc i64 %i.nh to i32
  %.not.i.i = icmp eq ptr %i.nf, null
  %i.nj = select i1 %.not.i.i, ptr @_ZN9rapidjson16GenericStringRefIcE11emptyStringE, ptr %i.nf, !prof !6
  %i.nk = load ptr, ptr %i.li, align 8, !nonnull !16, !align !112
  %i.nl = load i32, ptr %.031, align 8            ; 3 uses
  %i.nm = load i32, ptr %i.lm, align 4            ; 6 uses
  %.not.i.i.i116 = icmp ult i32 %i.nl, %i.nm
  br i1 %.not.i.i.i116, label %._crit_edge148, label %bb.ab

._crit_edge148:                                   ; preds = %bb.aa
  %.pre149 = load ptr, ptr %i.ln, align 8
  br label %bb.ac

end_hunk_5
begin_hunk_6_@_ZN4glTF8LazyDictINS_10BufferViewEE16AttachToDocumentERN9rapidjson15GenericDocumentINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEES8_EE:bb.a
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = and i64 %i.q, 281474976710655
  %i.s = inttoptr i64 %i.r to ptr                 ; 4 uses
  %i.t = load i32, ptr %i.c, align 8              ; 2 uses
  %i.u = zext i32 %i.t to i64                     ; 2 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.u, 5
  %i.v = getelementptr i8, ptr %i.s, i64 %.idx.i.i.i.i ; 2 uses
  %.not9.i.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not9.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c
  %i.w = lshr i64 %i.l, 40
  %i.x = trunc i64 %i.w to i8
  %i.y = and i64 %i.m, 1152921504606846976
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.y, 0       ; 2 uses
  %i.z = sext i8 %i.x to i32
  %i.aa = sub nsw i32 13, %i.z
  %i.ab = select i1 %.not.i.i.i.i.i.i.i, i32 %i.f, i32 %i.aa ; 2 uses
  %i.ac = and i64 %i.l, 281474976710655
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = select i1 %.not.i.i.i.i.i.i.i, ptr %i.ad, ptr %3 ; 2 uses
  %i.af = zext i32 %i.ab to i64
  br label %bb.d

bb.d:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %.lr.ph.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i ], [ %i.ax, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 14
  %i.ah = load i16, ptr %i.ag, align 2
  %i.ai = and i16 %i.ah, 4096
  %.not.i.i13.i.i.i.i.i = icmp eq i16 %i.ai, 0    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 13
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = sext i8 %i.ak to i32
  %i.am = sub nsw i32 13, %i.al
  %i.an = load i32, ptr %.010.i.i.i.i, align 8
  %i.ao = select i1 %.not.i.i13.i.i.i.i.i, i32 %i.an, i32 %i.am
  %.not.i.i.i.i.i = icmp eq i32 %i.ab, %i.ao
  br i1 %.not.i.i.i.i.i, label %bb.e, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = and i64 %i.ar, 281474976710655
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = select i1 %.not.i.i13.i.i.i.i.i, ptr %i.at, ptr %.010.i.i.i.i ; 2 uses
  %i.av = icmp eq ptr %i.ae, %i.au
  br i1 %i.av, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i: ; preds = %bb.e
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %i.ae, ptr %i.au, i64 %i.af)
  %i.aw = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.aw, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ax, %i.v
  br i1 %.not.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %bb.d, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.e, %bb.c
  %.0.lcssa.i.i.i.i = phi ptr [ %i.s, %bb.c ], [ %.010.i.i.i.i, %bb.e ], [ %.010.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i ], [ %i.v, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.ay = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %i.u
  %.not.i = icmp eq ptr %.0.lcssa.i.i.i.i, %i.ay
  br i1 %.not.i, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 30
  %i.bb = load i16, ptr %i.ba, align 2
  %i.bc = icmp eq i16 %i.bb, 3
  br i1 %i.bc, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread

_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit: ; preds = %bb.f, %bb.a
  %.1 = phi ptr [ %1, %bb.a ], [ %i.az, %bb.f ]   ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.bf = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.be) #36, !noalias !581
  %i.bg = trunc i64 %i.bf to i32                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 14
  store i16 1029, ptr %i.bh, align 2
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = and i64 %i.bk, -281474976710656
  %i.bm = ptrtoint ptr %i.be to i64               ; 3 uses
  %i.bn = or i64 %i.bl, %i.bm                     ; 2 uses
  %i.bo = inttoptr i64 %i.bn to ptr
  store ptr %i.bo, ptr %i.bi, align 8
  store i32 %i.bg, ptr %2, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = and i64 %i.br, 281474976710655
  %i.bt = inttoptr i64 %i.bs to ptr               ; 4 uses
  %i.bu = load i32, ptr %.1, align 8              ; 2 uses
  %i.bv = zext i32 %i.bu to i64                   ; 2 uses
  %.idx.i.i.i.i10 = shl nuw nsw i64 %i.bv, 5
  %i.bw = getelementptr i8, ptr %i.bt, i64 %.idx.i.i.i.i10 ; 2 uses
  %.not9.i.i.i.i11 = icmp eq i32 %i.bu, 0
  br i1 %.not9.i.i.i.i11, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19, label %.lr.ph.i.i.i.i12

.lr.ph.i.i.i.i12:                                 ; preds = %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit
  %i.bx = lshr i64 %i.bm, 40
  %i.by = trunc i64 %i.bx to i8
  %i.bz = and i64 %i.bn, 1152921504606846976
  %.not.i.i.i.i.i.i.i13 = icmp eq i64 %i.bz, 0    ; 2 uses
  %i.ca = sext i8 %i.by to i32
  %i.cb = sub nsw i32 13, %i.ca
  %i.cc = select i1 %.not.i.i.i.i.i.i.i13, i32 %i.bg, i32 %i.cb ; 2 uses
  %i.cd = and i64 %i.bm, 281474976710655
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = select i1 %.not.i.i.i.i.i.i.i13, ptr %i.ce, ptr %2 ; 2 uses
  %i.cg = zext i32 %i.cc to i64
  br label %bb.g

bb.g:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17, %.lr.ph.i.i.i.i12
  %.010.i.i.i.i14 = phi ptr [ %i.bt, %.lr.ph.i.i.i.i12 ], [ %i.cy, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17 ] ; 8 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i14, i64 14
  %i.ci = load i16, ptr %i.ch, align 2
  %i.cj = and i16 %i.ci, 4096
  %.not.i.i13.i.i.i.i.i15 = icmp eq i16 %i.cj, 0  ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i14, i64 13
  %i.cl = load i8, ptr %i.ck, align 1
  %i.cm = sext i8 %i.cl to i32
  %i.cn = sub nsw i32 13, %i.cm
  %i.co = load i32, ptr %.010.i.i.i.i14, align 8
  %i.cp = select i1 %.not.i.i13.i.i.i.i.i15, i32 %i.co, i32 %i.cn
  %.not.i.i.i.i.i16 = icmp eq i32 %i.cc, %i.cp
  br i1 %.not.i.i.i.i.i16, label %bb.h, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17

bb.h:                                             ; preds = %bb.g
  %i.cq = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i14, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = and i64 %i.cs, 281474976710655
  %i.cu = inttoptr i64 %i.ct to ptr
  %i.cv = select i1 %.not.i.i13.i.i.i.i.i15, ptr %i.cu, ptr %.010.i.i.i.i14 ; 2 uses
  %i.cw = icmp eq ptr %i.cf, %i.cv
  br i1 %i.cw, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i23

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i23: ; preds = %bb.h
  %bcmp.i.i.i.i.i24 = call i32 @bcmp(ptr %i.cf, ptr %i.cv, i64 %i.cg)
  %i.cx = icmp eq i32 %bcmp.i.i.i.i.i24, 0
  br i1 %i.cx, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i23, %bb.g
  %i.cy = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i14, i64 32 ; 2 uses
  %.not.i.i.i.i18 = icmp eq ptr %i.cy, %i.bw
  br i1 %.not.i.i.i.i18, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19, label %bb.g, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i23, %bb.h, %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit
  %.0.lcssa.i.i.i.i20 = phi ptr [ %i.bt, %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit ], [ %.010.i.i.i.i14, %bb.h ], [ %.010.i.i.i.i14, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i23 ], [ %i.bw, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.cz = getelementptr inbounds nuw [32 x i8], ptr %i.bt, i64 %i.bv
  %.not.i21 = icmp eq ptr %.0.lcssa.i.i.i.i20, %i.cz
  br i1 %.not.i21, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit25, label %bb.i

bb.i:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19
  %i.da = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i20, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i20, i64 30
  %i.dc = load i16, ptr %i.db, align 2
  %i.dd = icmp eq i16 %i.dc, 3
  %spec.select.i22 = select i1 %i.dd, ptr %i.da, ptr null
  br label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit25

_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit25: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19, %bb.i
  %i.de = phi ptr [ null, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19 ], [ %spec.select.i22, %bb.i ]
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.de, ptr %i.df, align 8
  br label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread

_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread: ; preds = %bb.f, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, %bb.b, %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit25
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4glTF8LazyDictINS_10BufferViewEE18DetachFromDocumentEv(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr null, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4glTF8LazyDictINS_10BufferViewEE12WriteObjectsERNS_11AssetWriterE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN4glTF11AssetWriter12WriteObjectsINS_10BufferViewEEEvRNS_8LazyDictIT_EE(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(120) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4glTF11AssetWriter12WriteObjectsINS_10BufferViewEEEvRNS_8LazyDictIT_EE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(120) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %3 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %4 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %5 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %6 = alloca %"class.rapidjson::GenericValue", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef ptr @_ZN10glTFCommon19FindObjectInContextERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKcSA_SA_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.209, ptr noundef null) ; 2 uses
  %.not42 = icmp eq ptr %i.h, null
  br i1 %.not42, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load i32, ptr %0, align 8                ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4              ; 6 uses
  %.not.i.i.i = icmp ult i32 %i.k, %i.m
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not14.i.i.i = icmp eq i32 %i.m, 0
  %i.n = add i32 %i.m, 1
  %i.o = lshr i32 %i.n, 1
  %i.p = add i32 %i.o, %i.m
  %i.q = select i1 %.not14.i.i.i, i32 16, i32 %i.p ; 3 uses
  %i.r = icmp ugt i32 %i.q, %i.m
  br i1 %i.r, label %.noexc.i, label %bb.f

.noexc.i:                                         ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = and i64 %i.u, 281474976710655
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = zext i32 %i.m to i64
  %i.y = zext i32 %i.q to i64
  %i.z = shl nuw nsw i64 %i.x, 5
  %i.aa = shl nuw nsw i64 %i.y, 5
  %i.ab = tail call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef %i.w, i64 noundef %i.z, i64 noundef %i.aa)
  %i.ac = load ptr, ptr %i.s, align 8
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = and i64 %i.ad, -281474976710656
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = or i64 %i.ae, %i.af
  %i.ah = inttoptr i64 %i.ag to ptr
  store ptr %i.ah, ptr %i.s, align 8
  store i32 %i.q, ptr %i.l, align 4
  %.pre.i.i.i = load i32, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %.noexc.i, %bb.e, %bb.d
  %i.ai = phi i32 [ %.pre.i.i.i, %.noexc.i ], [ %i.k, %bb.e ], [ %i.k, %bb.d ]
  %i.aj = or i64 ptrtoint (ptr @.str.93 to i64), 289637751035265024
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = and i64 %i.an, 281474976710655
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = zext i32 %i.ai to i64
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %i.ap, i64 %i.aq ; 5 uses
  store i32 10, ptr %i.ar, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i, align 4
  %.sroa.65.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.ak, ptr %.sroa.65.0..sroa_idx.i, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.as, i8 0, i64 14, i1 false)
  %.sroa.6136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 30
  store i16 3, ptr %.sroa.6136.0..sroa_idx, align 2
  %i.at = load i32, ptr %0, align 8
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr %0, align 8
  %i.av = tail call noundef ptr @_ZN10glTFCommon19FindObjectInContextERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKcSA_SA_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.209, ptr noundef null)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.036 = phi ptr [ %i.h, %bb.c ], [ %i.av, %bb.f ] ; 6 uses
  %i.aw = load ptr, ptr %i.f, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.ax = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aw) #36, !noalias !584
  %i.ay = trunc i64 %i.ax to i32                  ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 14
  store i16 1029, ptr %i.az, align 2
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = and i64 %i.bc, -281474976710656
  %i.be = ptrtoint ptr %i.aw to i64               ; 4 uses
  %i.bf = or i64 %i.bd, %i.be                     ; 2 uses
  %i.bg = inttoptr i64 %i.bf to ptr
  store ptr %i.bg, ptr %i.ba, align 8
  store i32 %i.ay, ptr %5, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.036, i64 8 ; 4 uses
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = and i64 %i.bj, 281474976710655
  %i.bl = inttoptr i64 %i.bk to ptr               ; 7 uses
  %i.bm = load i32, ptr %.036, align 8            ; 3 uses
  %i.bn = zext i32 %i.bm to i64                   ; 4 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.bn, 5
  %i.bo = getelementptr i8, ptr %i.bl, i64 %.idx.i.i.i.i ; 2 uses
  %.not9.i.i.i.i = icmp eq i32 %i.bm, 0
  br i1 %.not9.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g
  %i.bp = lshr i64 %i.be, 40
  %i.bq = trunc i64 %i.bp to i8
  %i.br = and i64 %i.bf, 1152921504606846976
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.br, 0      ; 2 uses
  %i.bs = sext i8 %i.bq to i32
  %i.bt = sub nsw i32 13, %i.bs
  %i.bu = select i1 %.not.i.i.i.i.i.i.i, i32 %i.ay, i32 %i.bt ; 2 uses
  %i.bv = and i64 %i.be, 281474976710655
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = select i1 %.not.i.i.i.i.i.i.i, ptr %i.bw, ptr %5 ; 2 uses
  %i.by = zext i32 %i.bu to i64
  br label %bb.h

bb.h:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %.lr.ph.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i ], [ %i.cq, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 8 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 14
  %i.ca = load i16, ptr %i.bz, align 2
  %i.cb = and i16 %i.ca, 4096
  %.not.i.i13.i.i.i.i.i = icmp eq i16 %i.cb, 0    ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 13
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = sext i8 %i.cd to i32
  %i.cf = sub nsw i32 13, %i.ce
  %i.cg = load i32, ptr %.010.i.i.i.i, align 8
  %i.ch = select i1 %.not.i.i13.i.i.i.i.i, i32 %i.cg, i32 %i.cf
  %.not.i.i.i.i.i = icmp eq i32 %i.bu, %i.ch
  br i1 %.not.i.i.i.i.i, label %bb.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.ci = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = and i64 %i.ck, 281474976710655
  %i.cm = inttoptr i64 %i.cl to ptr
  %i.cn = select i1 %.not.i.i13.i.i.i.i.i, ptr %i.cm, ptr %.010.i.i.i.i ; 2 uses
  %i.co = icmp eq ptr %i.bx, %i.cn
  br i1 %i.co, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i: ; preds = %bb.i
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %i.bx, ptr %i.cn, i64 %i.by)
  %i.cp = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.cp, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.h
  %i.cq = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cq, %i.bo
  br i1 %.not.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %bb.h, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.i, %bb.g
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bl, %bb.g ], [ %.010.i.i.i.i, %bb.i ], [ %.010.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i ], [ %i.bo, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.cr = getelementptr inbounds nuw [32 x i8], ptr %i.bl, i64 %i.bn
  %.not.i = icmp eq ptr %.0.lcssa.i.i.i.i, %i.cr
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 30
  %i.cu = load i16, ptr %i.ct, align 2
  %i.cv = icmp eq i16 %i.cu, 3
  br i1 %i.cv, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit, label %bb.k

bb.k:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, %bb.j
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %.036, i64 4 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4            ; 6 uses
  %.not.i.i.i49 = icmp ult i32 %i.bm, %i.cz
  br i1 %.not.i.i.i49, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not14.i.i.i50 = icmp eq i32 %i.cz, 0
  %i.da = add i32 %i.cz, 1
  %i.db = lshr i32 %i.da, 1
  %i.dc = add i32 %i.db, %i.cz
  %i.dd = select i1 %.not14.i.i.i50, i32 16, i32 %i.dc ; 3 uses
  %i.de = icmp ugt i32 %i.dd, %i.cz
  br i1 %i.de, label %.noexc.i53, label %bb.m

.noexc.i53:                                       ; preds = %bb.l
  %i.df = zext i32 %i.cz to i64
  %i.dg = zext i32 %i.dd to i64
  %i.dh = shl nuw nsw i64 %i.df, 5
  %i.di = shl nuw nsw i64 %i.dg, 5
end_hunk_6
begin_hunk_7_@_ZN4glTF11AssetWriter12WriteObjectsINS_10BufferViewEEEvRNS_8LazyDictIT_EE:bb.a
  %.pre-phi157 = phi i64 [ %.pre156, %.noexc.i53 ], [ %i.bn, %bb.l ], [ %i.bn, %bb.k ]
  %.pre-phi155 = phi ptr [ %.pre154, %.noexc.i53 ], [ %i.bl, %bb.l ], [ %i.bl, %bb.k ]
  %i.dq = or i64 %i.be, 289637751035265024
  %i.dr = inttoptr i64 %i.dq to ptr
  %i.ds = getelementptr inbounds nuw [32 x i8], ptr %.pre-phi155, i64 %.pre-phi157 ; 5 uses
  store i32 %i.ay, ptr %i.ds, align 8
  %.sroa.6.0..sroa_idx.i51 = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i51, align 4
  %.sroa.65.0..sroa_idx.i52 = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store ptr %i.dr, ptr %.sroa.65.0..sroa_idx.i52, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.dt, i8 0, i64 14, i1 false)
  %.sroa.6132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 30
  store i16 3, ptr %.sroa.6132.0..sroa_idx, align 2
  %i.du = load i32, ptr %.036, align 8
  %i.dv = add i32 %i.du, 1                        ; 3 uses
  store i32 %i.dv, ptr %.036, align 8
  %i.dw = load ptr, ptr %i.f, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.dx = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dw) #36, !noalias !587
  %i.dy = trunc i64 %i.dx to i32                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 14
  store i16 1029, ptr %i.dz, align 2
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = and i64 %i.ec, -281474976710656
  %i.ee = ptrtoint ptr %i.dw to i64               ; 3 uses
  %i.ef = or i64 %i.ed, %i.ee                     ; 2 uses
  %i.eg = inttoptr i64 %i.ef to ptr
  store ptr %i.eg, ptr %i.ea, align 8
  store i32 %i.dy, ptr %4, align 8
  %i.eh = load ptr, ptr %i.bh, align 8
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = and i64 %i.ei, 281474976710655
  %i.ek = inttoptr i64 %i.ej to ptr               ; 4 uses
  %i.el = zext i32 %i.dv to i64                   ; 2 uses
  %.idx.i.i.i.i57 = shl nuw nsw i64 %i.el, 5
  %i.em = getelementptr i8, ptr %i.ek, i64 %.idx.i.i.i.i57 ; 2 uses
  %.not9.i.i.i.i58 = icmp eq i32 %i.dv, 0
  br i1 %.not9.i.i.i.i58, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, label %.lr.ph.i.i.i.i59

.lr.ph.i.i.i.i59:                                 ; preds = %bb.m
  %i.en = lshr i64 %i.ee, 40
  %i.eo = trunc i64 %i.en to i8
  %i.ep = and i64 %i.ef, 1152921504606846976
  %.not.i.i.i.i.i.i.i60 = icmp eq i64 %i.ep, 0    ; 2 uses
  %i.eq = sext i8 %i.eo to i32
  %i.er = sub nsw i32 13, %i.eq
  %i.es = select i1 %.not.i.i.i.i.i.i.i60, i32 %i.dy, i32 %i.er ; 2 uses
  %i.et = and i64 %i.ee, 281474976710655
  %i.eu = inttoptr i64 %i.et to ptr
  %i.ev = select i1 %.not.i.i.i.i.i.i.i60, ptr %i.eu, ptr %4 ; 2 uses
  %i.ew = zext i32 %i.es to i64
  br label %bb.n

bb.n:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64, %.lr.ph.i.i.i.i59
  %.010.i.i.i.i61 = phi ptr [ %i.ek, %.lr.ph.i.i.i.i59 ], [ %i.fo, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64 ] ; 8 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i61, i64 14
  %i.ey = load i16, ptr %i.ex, align 2
  %i.ez = and i16 %i.ey, 4096
  %.not.i.i13.i.i.i.i.i62 = icmp eq i16 %i.ez, 0  ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i61, i64 13
  %i.fb = load i8, ptr %i.fa, align 1
  %i.fc = sext i8 %i.fb to i32
  %i.fd = sub nsw i32 13, %i.fc
  %i.fe = load i32, ptr %.010.i.i.i.i61, align 8
  %i.ff = select i1 %.not.i.i13.i.i.i.i.i62, i32 %i.fe, i32 %i.fd
  %.not.i.i.i.i.i63 = icmp eq i32 %i.es, %i.ff
  br i1 %.not.i.i.i.i.i63, label %bb.o, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64

bb.o:                                             ; preds = %bb.n
  %i.fg = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i61, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = and i64 %i.fi, 281474976710655
  %i.fk = inttoptr i64 %i.fj to ptr
  %i.fl = select i1 %.not.i.i13.i.i.i.i.i62, ptr %i.fk, ptr %.010.i.i.i.i61 ; 2 uses
  %i.fm = icmp eq ptr %i.ev, %i.fl
  br i1 %i.fm, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70: ; preds = %bb.o
  %bcmp.i.i.i.i.i71 = call i32 @bcmp(ptr %i.ev, ptr %i.fl, i64 %i.ew)
  %i.fn = icmp eq i32 %bcmp.i.i.i.i.i71, 0
  br i1 %i.fn, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70, %bb.n
  %i.fo = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i61, i64 32 ; 2 uses
  %.not.i.i.i.i65 = icmp eq ptr %i.fo, %i.em
  br i1 %.not.i.i.i.i65, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, label %bb.n, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70, %bb.o, %bb.m
  %.0.lcssa.i.i.i.i67 = phi ptr [ %i.ek, %bb.m ], [ %.010.i.i.i.i61, %bb.o ], [ %.010.i.i.i.i61, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70 ], [ %i.em, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.fp = getelementptr inbounds nuw [32 x i8], ptr %i.ek, i64 %i.el
  %.not.i68 = icmp ne ptr %.0.lcssa.i.i.i.i67, %i.fp
  call void @llvm.assume(i1 %.not.i68)
  %i.fq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i67, i64 16
  %i.fr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i67, i64 30
  %i.fs = load i16, ptr %i.fr, align 2
  %i.ft = icmp eq i16 %i.fs, 3
  %spec.select.i69 = select i1 %i.ft, ptr %i.fq, ptr null
  br label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit

_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, %bb.j, %bb.b
  %.138 = phi ptr [ %0, %bb.b ], [ %i.cs, %bb.j ], [ %spec.select.i69, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66 ] ; 8 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.fw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fv) #36, !noalias !590
  %i.fx = trunc i64 %i.fw to i32                  ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.fy = getelementptr inbounds nuw i8, ptr %3, i64 14
  store i16 1029, ptr %i.fy, align 2
  %i.fz = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ga = load ptr, ptr %i.fz, align 8
  %i.gb = ptrtoint ptr %i.ga to i64
  %i.gc = and i64 %i.gb, -281474976710656
  %i.gd = ptrtoint ptr %i.fv to i64               ; 4 uses
  %i.ge = or i64 %i.gc, %i.gd                     ; 2 uses
  %i.gf = inttoptr i64 %i.ge to ptr
  store ptr %i.gf, ptr %i.fz, align 8
  store i32 %i.fx, ptr %3, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %.138, i64 8 ; 6 uses
  %i.gh = load ptr, ptr %i.gg, align 8
  %i.gi = ptrtoint ptr %i.gh to i64
  %i.gj = and i64 %i.gi, 281474976710655
  %i.gk = inttoptr i64 %i.gj to ptr               ; 4 uses
  %i.gl = load i32, ptr %.138, align 8            ; 2 uses
  %i.gm = zext i32 %i.gl to i64                   ; 2 uses
  %.idx.i.i.i.i73 = shl nuw nsw i64 %i.gm, 5
  %i.gn = getelementptr i8, ptr %i.gk, i64 %.idx.i.i.i.i73 ; 2 uses
  %.not9.i.i.i.i74 = icmp eq i32 %i.gl, 0
  br i1 %.not9.i.i.i.i74, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, label %.lr.ph.i.i.i.i75

.lr.ph.i.i.i.i75:                                 ; preds = %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit
  %i.go = lshr i64 %i.gd, 40
  %i.gp = trunc i64 %i.go to i8
  %i.gq = and i64 %i.ge, 1152921504606846976
  %.not.i.i.i.i.i.i.i76 = icmp eq i64 %i.gq, 0    ; 2 uses
  %i.gr = sext i8 %i.gp to i32
  %i.gs = sub nsw i32 13, %i.gr
  %i.gt = select i1 %.not.i.i.i.i.i.i.i76, i32 %i.fx, i32 %i.gs ; 2 uses
  %i.gu = and i64 %i.gd, 281474976710655
  %i.gv = inttoptr i64 %i.gu to ptr
  %i.gw = select i1 %.not.i.i.i.i.i.i.i76, ptr %i.gv, ptr %3 ; 2 uses
  %i.gx = zext i32 %i.gt to i64
  br label %bb.p

bb.p:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80, %.lr.ph.i.i.i.i75
  %.010.i.i.i.i77 = phi ptr [ %i.gk, %.lr.ph.i.i.i.i75 ], [ %i.hp, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80 ] ; 8 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i77, i64 14
  %i.gz = load i16, ptr %i.gy, align 2
  %i.ha = and i16 %i.gz, 4096
  %.not.i.i13.i.i.i.i.i78 = icmp eq i16 %i.ha, 0  ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i77, i64 13
  %i.hc = load i8, ptr %i.hb, align 1
  %i.hd = sext i8 %i.hc to i32
  %i.he = sub nsw i32 13, %i.hd
  %i.hf = load i32, ptr %.010.i.i.i.i77, align 8
  %i.hg = select i1 %.not.i.i13.i.i.i.i.i78, i32 %i.hf, i32 %i.he
  %.not.i.i.i.i.i79 = icmp eq i32 %i.gt, %i.hg
  br i1 %.not.i.i.i.i.i79, label %bb.q, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80

bb.q:                                             ; preds = %bb.p
  %i.hh = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i77, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8
  %i.hj = ptrtoint ptr %i.hi to i64
  %i.hk = and i64 %i.hj, 281474976710655
  %i.hl = inttoptr i64 %i.hk to ptr
  %i.hm = select i1 %.not.i.i13.i.i.i.i.i78, ptr %i.hl, ptr %.010.i.i.i.i77 ; 2 uses
  %i.hn = icmp eq ptr %i.gw, %i.hm
  br i1 %i.hn, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86: ; preds = %bb.q
  %bcmp.i.i.i.i.i87 = call i32 @bcmp(ptr %i.gw, ptr %i.hm, i64 %i.gx)
  %i.ho = icmp eq i32 %bcmp.i.i.i.i.i87, 0
  br i1 %i.ho, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86, %bb.p
  %i.hp = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i77, i64 32 ; 2 uses
  %.not.i.i.i.i81 = icmp eq ptr %i.hp, %i.gn
  br i1 %.not.i.i.i.i81, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, label %bb.p, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86, %bb.q, %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit
  %.0.lcssa.i.i.i.i83 = phi ptr [ %i.gk, %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit ], [ %.010.i.i.i.i77, %bb.q ], [ %.010.i.i.i.i77, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86 ], [ %i.gn, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.hq = getelementptr inbounds nuw [32 x i8], ptr %i.gk, i64 %i.gm
  %.not.i84 = icmp eq ptr %.0.lcssa.i.i.i.i83, %i.hq
  br i1 %.not.i84, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82
  %i.hr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i83, i64 16
  %i.hs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i83, i64 30
  %i.ht = load i16, ptr %i.hs, align 2
  %i.hu = icmp eq i16 %i.ht, 3
  br i1 %i.hu, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88, label %bb.s

bb.s:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, %bb.r
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hw = load ptr, ptr %i.hv, align 8
  %i.hx = load i32, ptr %.138, align 8            ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.138, i64 4 ; 2 uses
  %i.hz = load i32, ptr %i.hy, align 4            ; 6 uses
  %.not.i.i.i89 = icmp ult i32 %i.hx, %i.hz
  br i1 %.not.i.i.i89, label %._crit_edge, label %bb.t

._crit_edge:                                      ; preds = %bb.s
  %.pre = load ptr, ptr %i.gg, align 8
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  %.not14.i.i.i90 = icmp eq i32 %i.hz, 0
  %i.ia = add i32 %i.hz, 1
  %i.ib = lshr i32 %i.ia, 1
  %i.ic = add i32 %i.ib, %i.hz
  %i.id = select i1 %.not14.i.i.i90, i32 16, i32 %i.ic ; 3 uses
  %i.ie = icmp ugt i32 %i.id, %i.hz
  %.pre144 = load ptr, ptr %i.gg, align 8         ; 2 uses
  br i1 %i.ie, label %.noexc.i93, label %bb.u

.noexc.i93:                                       ; preds = %bb.t
  %i.if = ptrtoint ptr %.pre144 to i64
  %i.ig = and i64 %i.if, 281474976710655
  %i.ih = inttoptr i64 %i.ig to ptr
  %i.ii = zext i32 %i.hz to i64
  %i.ij = zext i32 %i.id to i64
  %i.ik = shl nuw nsw i64 %i.ii, 5
  %i.il = shl nuw nsw i64 %i.ij, 5
  %i.im = call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.hw, ptr noundef %i.ih, i64 noundef %i.ik, i64 noundef %i.il)
  %i.in = load ptr, ptr %i.gg, align 8
  %i.io = ptrtoint ptr %i.in to i64
  %i.ip = and i64 %i.io, -281474976710656
  %i.iq = ptrtoint ptr %i.im to i64
  %i.ir = or i64 %i.ip, %i.iq
  %i.is = inttoptr i64 %i.ir to ptr               ; 2 uses
  store ptr %i.is, ptr %i.gg, align 8
  store i32 %i.id, ptr %i.hy, align 4
  %.pre.i.i.i94 = load i32, ptr %.138, align 8
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge, %.noexc.i93, %bb.t
  %i.it = phi ptr [ %i.is, %.noexc.i93 ], [ %.pre144, %bb.t ], [ %.pre, %._crit_edge ]
  %i.iu = phi i32 [ %.pre.i.i.i94, %.noexc.i93 ], [ %i.hx, %bb.t ], [ %i.hx, %._crit_edge ]
  %i.iv = or i64 %i.gd, 289637751035265024
  %i.iw = inttoptr i64 %i.iv to ptr
  %i.ix = ptrtoint ptr %i.it to i64
  %i.iy = and i64 %i.ix, 281474976710655
  %i.iz = inttoptr i64 %i.iy to ptr
  %i.ja = zext i32 %i.iu to i64
  %i.jb = getelementptr inbounds nuw [32 x i8], ptr %i.iz, i64 %i.ja ; 5 uses
  store i32 %i.fx, ptr %i.jb, align 8
  %.sroa.6.0..sroa_idx.i91 = getelementptr inbounds nuw i8, ptr %i.jb, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i91, align 4
  %.sroa.65.0..sroa_idx.i92 = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  store ptr %i.iw, ptr %.sroa.65.0..sroa_idx.i92, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  store <14 x i8> zeroinitializer, ptr %i.jc, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jb, i64 30
  store i16 3, ptr %.sroa.6.0..sroa_idx, align 2
  %i.jd = load i32, ptr %.138, align 8
  %i.je = add i32 %i.jd, 1
  store i32 %i.je, ptr %.138, align 8
  %i.jf = load ptr, ptr %i.fu, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.jg = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.jf) #36, !noalias !593
  %i.jh = trunc i64 %i.jg to i32                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.ji = getelementptr inbounds nuw i8, ptr %2, i64 14
  store i16 1029, ptr %i.ji, align 2
  %i.jj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.jk = load ptr, ptr %i.jj, align 8
  %i.jl = ptrtoint ptr %i.jk to i64
  %i.jm = and i64 %i.jl, -281474976710656
  %i.jn = ptrtoint ptr %i.jf to i64               ; 3 uses
  %i.jo = or i64 %i.jm, %i.jn                     ; 2 uses
  %i.jp = inttoptr i64 %i.jo to ptr
  store ptr %i.jp, ptr %i.jj, align 8
  store i32 %i.jh, ptr %2, align 8
  %i.jq = load ptr, ptr %i.gg, align 8
  %i.jr = ptrtoint ptr %i.jq to i64
  %i.js = and i64 %i.jr, 281474976710655
  %i.jt = inttoptr i64 %i.js to ptr               ; 4 uses
  %i.ju = load i32, ptr %.138, align 8            ; 2 uses
  %i.jv = zext i32 %i.ju to i64                   ; 2 uses
  %.idx.i.i.i.i97 = shl nuw nsw i64 %i.jv, 5
  %i.jw = getelementptr i8, ptr %i.jt, i64 %.idx.i.i.i.i97 ; 2 uses
  %.not9.i.i.i.i98 = icmp eq i32 %i.ju, 0
  br i1 %.not9.i.i.i.i98, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, label %.lr.ph.i.i.i.i99

.lr.ph.i.i.i.i99:                                 ; preds = %bb.u
  %i.jx = lshr i64 %i.jn, 40
  %i.jy = trunc i64 %i.jx to i8
  %i.jz = and i64 %i.jo, 1152921504606846976
  %.not.i.i.i.i.i.i.i100 = icmp eq i64 %i.jz, 0   ; 2 uses
  %i.ka = sext i8 %i.jy to i32
  %i.kb = sub nsw i32 13, %i.ka
  %i.kc = select i1 %.not.i.i.i.i.i.i.i100, i32 %i.jh, i32 %i.kb ; 2 uses
  %i.kd = and i64 %i.jn, 281474976710655
  %i.ke = inttoptr i64 %i.kd to ptr
  %i.kf = select i1 %.not.i.i.i.i.i.i.i100, ptr %i.ke, ptr %2 ; 2 uses
  %i.kg = zext i32 %i.kc to i64
  br label %bb.v

bb.v:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104, %.lr.ph.i.i.i.i99
  %.010.i.i.i.i101 = phi ptr [ %i.jt, %.lr.ph.i.i.i.i99 ], [ %i.ky, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104 ] ; 8 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i101, i64 14
  %i.ki = load i16, ptr %i.kh, align 2
  %i.kj = and i16 %i.ki, 4096
  %.not.i.i13.i.i.i.i.i102 = icmp eq i16 %i.kj, 0 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i101, i64 13
  %i.kl = load i8, ptr %i.kk, align 1
  %i.km = sext i8 %i.kl to i32
  %i.kn = sub nsw i32 13, %i.km
  %i.ko = load i32, ptr %.010.i.i.i.i101, align 8
  %i.kp = select i1 %.not.i.i13.i.i.i.i.i102, i32 %i.ko, i32 %i.kn
  %.not.i.i.i.i.i103 = icmp eq i32 %i.kc, %i.kp
  br i1 %.not.i.i.i.i.i103, label %bb.w, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104

bb.w:                                             ; preds = %bb.v
  %i.kq = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i101, i64 8
  %i.kr = load ptr, ptr %i.kq, align 8
  %i.ks = ptrtoint ptr %i.kr to i64
  %i.kt = and i64 %i.ks, 281474976710655
  %i.ku = inttoptr i64 %i.kt to ptr
  %i.kv = select i1 %.not.i.i13.i.i.i.i.i102, ptr %i.ku, ptr %.010.i.i.i.i101 ; 2 uses
  %i.kw = icmp eq ptr %i.kf, %i.kv
  br i1 %i.kw, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110: ; preds = %bb.w
  %bcmp.i.i.i.i.i111 = call i32 @bcmp(ptr %i.kf, ptr %i.kv, i64 %i.kg)
  %i.kx = icmp eq i32 %bcmp.i.i.i.i.i111, 0
  br i1 %i.kx, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110, %bb.v
  %i.ky = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i101, i64 32 ; 2 uses
  %.not.i.i.i.i105 = icmp eq ptr %i.ky, %i.jw
  br i1 %.not.i.i.i.i105, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, label %bb.v, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110, %bb.w, %bb.u
  %.0.lcssa.i.i.i.i107 = phi ptr [ %i.jt, %bb.u ], [ %.010.i.i.i.i101, %bb.w ], [ %.010.i.i.i.i101, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110 ], [ %i.jw, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.kz = getelementptr inbounds nuw [32 x i8], ptr %i.jt, i64 %i.jv
  %.not.i108 = icmp eq ptr %.0.lcssa.i.i.i.i107, %i.kz
  br i1 %.not.i108, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88, label %bb.x

bb.x:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106
  %i.la = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i107, i64 16
  %i.lb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i107, i64 30
  %i.lc = load i16, ptr %i.lb, align 2
  %i.ld = icmp eq i16 %i.lc, 3
  %spec.select.i109 = select i1 %i.ld, ptr %i.la, ptr null
  br label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88

_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88: ; preds = %bb.x, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, %bb.r
  %.031 = phi ptr [ %i.hr, %bb.r ], [ null, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106 ], [ %spec.select.i109, %bb.x ] ; 6 uses
  %i.le = load ptr, ptr %i.c, align 8
  %i.lf = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not143 = icmp eq ptr %i.le, %i.lf
  br i1 %.not143, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88
  %i.lg = getelementptr inbounds nuw i8, ptr %6, i64 14
  %i.lh = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.lk = or i64 ptrtoint (ptr @.str.88 to i64), 289637751035265024
  %i.ll = inttoptr i64 %i.lk to ptr
  %i.lm = getelementptr inbounds nuw i8, ptr %.031, i64 4 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.031, i64 8 ; 4 uses
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph, %bb.ad
  %i.lo = phi ptr [ %i.lf, %.lr.ph ], [ %i.ov, %bb.ad ]
  %.0142 = phi i64 [ 0, %.lr.ph ], [ %i.ot, %bb.ad ] ; 5 uses
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.lo, i64 %.0142
  %i.lq = load ptr, ptr %i.lp, align 8            ; 2 uses
  %i.lr = load ptr, ptr %i.lq, align 8
  %i.ls = load ptr, ptr %i.lr, align 8
  %i.lt = call noundef zeroext i1 %i.ls(ptr noundef nonnull align 8 dereferenceable(72) %i.lq)
  br i1 %i.lt, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  store i16 3, ptr %i.lg, align 2
  %i.lu = load ptr, ptr %i.a, align 8
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.lu, i64 %.0142
  %i.lw = load ptr, ptr %i.lv, align 8            ; 3 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 48
  %i.ly = load i64, ptr %i.lx, align 8
  %i.lz = icmp eq i64 %i.ly, 0
  br i1 %i.lz, label %bb.aa, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit: ; preds = %bb.z
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lw, i64 40
  %i.mb = load ptr, ptr %i.ma, align 8            ; 2 uses
  %i.mc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.mb) #36, !noalias !596
  %i.md = trunc i64 %i.mc to i32
  %i.me = load ptr, ptr %i.li, align 8, !nonnull !16, !align !112
  %i.mf = load ptr, ptr %i.lj, align 8
  %i.mg = ptrtoint ptr %i.mf to i64
  %i.mh = and i64 %i.mg, 281474976710655
  %i.mi = inttoptr i64 %i.mh to ptr
  %i.mj = call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.me, ptr noundef %i.mi, i64 noundef 0, i64 noundef 512)
  %i.mk = load ptr, ptr %i.lj, align 8
  %i.ml = ptrtoint ptr %i.mk to i64
  %i.mm = and i64 %i.ml, -281474976710656
  %i.mn = ptrtoint ptr %i.mj to i64               ; 2 uses
  %i.mo = or i64 %i.mm, %i.mn
  %i.mp = inttoptr i64 %i.mo to ptr
  store ptr %i.mp, ptr %i.lj, align 8
  store i32 16, ptr %i.lh, align 4
  %.pre.i.i.i.i = load i32, ptr %6, align 8
  %i.mq = zext i32 %.pre.i.i.i.i to i64
  %i.mr = ptrtoint ptr %i.mb to i64
  %i.ms = or i64 %i.mr, 289637751035265024
  %i.mt = inttoptr i64 %i.ms to ptr
  %i.mu = and i64 %i.mn, 281474976710655
  %i.mv = inttoptr i64 %i.mu to ptr
  %i.mw = getelementptr inbounds nuw [32 x i8], ptr %i.mv, i64 %i.mq ; 6 uses
  store i32 4, ptr %i.mw, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mw, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i.i, align 4
  %.sroa.65.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  store ptr %i.ll, ptr %.sroa.65.0..sroa_idx.i.i, align 8
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 16
  store i32 %i.md, ptr %i.mx, align 8
  %.sroa.6.0..sroa_idx.i114 = getelementptr inbounds nuw i8, ptr %i.mw, i64 20
  store i32 0, ptr %.sroa.6.0..sroa_idx.i114, align 4
  %.sroa.66.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mw, i64 24
  store ptr %i.mt, ptr %.sroa.66.0..sroa_idx.i, align 8
  %i.my = load i32, ptr %6, align 8
  %i.mz = add i32 %i.my, 1
  store i32 %i.mz, ptr %6, align 8
  %.pre146 = load ptr, ptr %i.a, align 8
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre146, i64 %.0142
  %.pre147 = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit, %bb.z
  %i.na = phi ptr [ %.pre147, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit ], [ %i.lw, %bb.z ]
  call void @_ZN4glTF5WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_10BufferViewERNS_11AssetWriterE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(108) %i.na, ptr noundef nonnull align 8 dereferenceable(112) %0)
  %i.nb = load ptr, ptr %i.a, align 8
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.nb, i64 %.0142
  %i.nd = load ptr, ptr %i.nc, align 8            ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  %i.nf = load ptr, ptr %i.ne, align 8, !noalias !599 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nd, i64 16
  %i.nh = load i64, ptr %i.ng, align 8, !noalias !599
  %i.ni = trunc i64 %i.nh to i32
  %.not.i.i = icmp eq ptr %i.nf, null
  %i.nj = select i1 %.not.i.i, ptr @_ZN9rapidjson16GenericStringRefIcE11emptyStringE, ptr %i.nf, !prof !6
  %i.nk = load ptr, ptr %i.li, align 8, !nonnull !16, !align !112
  %i.nl = load i32, ptr %.031, align 8            ; 3 uses
  %i.nm = load i32, ptr %i.lm, align 4            ; 6 uses
  %.not.i.i.i116 = icmp ult i32 %i.nl, %i.nm
  br i1 %.not.i.i.i116, label %._crit_edge148, label %bb.ab

._crit_edge148:                                   ; preds = %bb.aa
  %.pre149 = load ptr, ptr %i.ln, align 8
  br label %bb.ac

end_hunk_7
begin_hunk_8_@_ZN4glTF8LazyDictINS_6CameraEE16AttachToDocumentERN9rapidjson15GenericDocumentINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEES8_EE:bb.a
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = and i64 %i.q, 281474976710655
  %i.s = inttoptr i64 %i.r to ptr                 ; 4 uses
  %i.t = load i32, ptr %i.c, align 8              ; 2 uses
  %i.u = zext i32 %i.t to i64                     ; 2 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.u, 5
  %i.v = getelementptr i8, ptr %i.s, i64 %.idx.i.i.i.i ; 2 uses
  %.not9.i.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not9.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c
  %i.w = lshr i64 %i.l, 40
  %i.x = trunc i64 %i.w to i8
  %i.y = and i64 %i.m, 1152921504606846976
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.y, 0       ; 2 uses
  %i.z = sext i8 %i.x to i32
  %i.aa = sub nsw i32 13, %i.z
  %i.ab = select i1 %.not.i.i.i.i.i.i.i, i32 %i.f, i32 %i.aa ; 2 uses
  %i.ac = and i64 %i.l, 281474976710655
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = select i1 %.not.i.i.i.i.i.i.i, ptr %i.ad, ptr %3 ; 2 uses
  %i.af = zext i32 %i.ab to i64
  br label %bb.d

bb.d:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %.lr.ph.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i ], [ %i.ax, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 14
  %i.ah = load i16, ptr %i.ag, align 2
  %i.ai = and i16 %i.ah, 4096
  %.not.i.i13.i.i.i.i.i = icmp eq i16 %i.ai, 0    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 13
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = sext i8 %i.ak to i32
  %i.am = sub nsw i32 13, %i.al
  %i.an = load i32, ptr %.010.i.i.i.i, align 8
  %i.ao = select i1 %.not.i.i13.i.i.i.i.i, i32 %i.an, i32 %i.am
  %.not.i.i.i.i.i = icmp eq i32 %i.ab, %i.ao
  br i1 %.not.i.i.i.i.i, label %bb.e, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = and i64 %i.ar, 281474976710655
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = select i1 %.not.i.i13.i.i.i.i.i, ptr %i.at, ptr %.010.i.i.i.i ; 2 uses
  %i.av = icmp eq ptr %i.ae, %i.au
  br i1 %i.av, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i: ; preds = %bb.e
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %i.ae, ptr %i.au, i64 %i.af)
  %i.aw = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.aw, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ax, %i.v
  br i1 %.not.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %bb.d, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.e, %bb.c
  %.0.lcssa.i.i.i.i = phi ptr [ %i.s, %bb.c ], [ %.010.i.i.i.i, %bb.e ], [ %.010.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i ], [ %i.v, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.ay = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %i.u
  %.not.i = icmp eq ptr %.0.lcssa.i.i.i.i, %i.ay
  br i1 %.not.i, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 30
  %i.bb = load i16, ptr %i.ba, align 2
  %i.bc = icmp eq i16 %i.bb, 3
  br i1 %i.bc, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread

_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit: ; preds = %bb.f, %bb.a
  %.1 = phi ptr [ %1, %bb.a ], [ %i.az, %bb.f ]   ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.bf = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.be) #36, !noalias !609
  %i.bg = trunc i64 %i.bf to i32                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 14
  store i16 1029, ptr %i.bh, align 2
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = and i64 %i.bk, -281474976710656
  %i.bm = ptrtoint ptr %i.be to i64               ; 3 uses
  %i.bn = or i64 %i.bl, %i.bm                     ; 2 uses
  %i.bo = inttoptr i64 %i.bn to ptr
  store ptr %i.bo, ptr %i.bi, align 8
  store i32 %i.bg, ptr %2, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = and i64 %i.br, 281474976710655
  %i.bt = inttoptr i64 %i.bs to ptr               ; 4 uses
  %i.bu = load i32, ptr %.1, align 8              ; 2 uses
  %i.bv = zext i32 %i.bu to i64                   ; 2 uses
  %.idx.i.i.i.i10 = shl nuw nsw i64 %i.bv, 5
  %i.bw = getelementptr i8, ptr %i.bt, i64 %.idx.i.i.i.i10 ; 2 uses
  %.not9.i.i.i.i11 = icmp eq i32 %i.bu, 0
  br i1 %.not9.i.i.i.i11, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19, label %.lr.ph.i.i.i.i12

.lr.ph.i.i.i.i12:                                 ; preds = %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit
  %i.bx = lshr i64 %i.bm, 40
  %i.by = trunc i64 %i.bx to i8
  %i.bz = and i64 %i.bn, 1152921504606846976
  %.not.i.i.i.i.i.i.i13 = icmp eq i64 %i.bz, 0    ; 2 uses
  %i.ca = sext i8 %i.by to i32
  %i.cb = sub nsw i32 13, %i.ca
  %i.cc = select i1 %.not.i.i.i.i.i.i.i13, i32 %i.bg, i32 %i.cb ; 2 uses
  %i.cd = and i64 %i.bm, 281474976710655
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = select i1 %.not.i.i.i.i.i.i.i13, ptr %i.ce, ptr %2 ; 2 uses
  %i.cg = zext i32 %i.cc to i64
  br label %bb.g

bb.g:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17, %.lr.ph.i.i.i.i12
  %.010.i.i.i.i14 = phi ptr [ %i.bt, %.lr.ph.i.i.i.i12 ], [ %i.cy, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17 ] ; 8 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i14, i64 14
  %i.ci = load i16, ptr %i.ch, align 2
  %i.cj = and i16 %i.ci, 4096
  %.not.i.i13.i.i.i.i.i15 = icmp eq i16 %i.cj, 0  ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i14, i64 13
  %i.cl = load i8, ptr %i.ck, align 1
  %i.cm = sext i8 %i.cl to i32
  %i.cn = sub nsw i32 13, %i.cm
  %i.co = load i32, ptr %.010.i.i.i.i14, align 8
  %i.cp = select i1 %.not.i.i13.i.i.i.i.i15, i32 %i.co, i32 %i.cn
  %.not.i.i.i.i.i16 = icmp eq i32 %i.cc, %i.cp
  br i1 %.not.i.i.i.i.i16, label %bb.h, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17

bb.h:                                             ; preds = %bb.g
  %i.cq = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i14, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = and i64 %i.cs, 281474976710655
  %i.cu = inttoptr i64 %i.ct to ptr
  %i.cv = select i1 %.not.i.i13.i.i.i.i.i15, ptr %i.cu, ptr %.010.i.i.i.i14 ; 2 uses
  %i.cw = icmp eq ptr %i.cf, %i.cv
  br i1 %i.cw, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i23

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i23: ; preds = %bb.h
  %bcmp.i.i.i.i.i24 = call i32 @bcmp(ptr %i.cf, ptr %i.cv, i64 %i.cg)
  %i.cx = icmp eq i32 %bcmp.i.i.i.i.i24, 0
  br i1 %i.cx, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i23, %bb.g
  %i.cy = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i14, i64 32 ; 2 uses
  %.not.i.i.i.i18 = icmp eq ptr %i.cy, %i.bw
  br i1 %.not.i.i.i.i18, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19, label %bb.g, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i23, %bb.h, %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit
  %.0.lcssa.i.i.i.i20 = phi ptr [ %i.bt, %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit ], [ %.010.i.i.i.i14, %bb.h ], [ %.010.i.i.i.i14, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i23 ], [ %i.bw, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.cz = getelementptr inbounds nuw [32 x i8], ptr %i.bt, i64 %i.bv
  %.not.i21 = icmp eq ptr %.0.lcssa.i.i.i.i20, %i.cz
  br i1 %.not.i21, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit25, label %bb.i

bb.i:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19
  %i.da = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i20, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i20, i64 30
  %i.dc = load i16, ptr %i.db, align 2
  %i.dd = icmp eq i16 %i.dc, 3
  %spec.select.i22 = select i1 %i.dd, ptr %i.da, ptr null
  br label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit25

_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit25: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19, %bb.i
  %i.de = phi ptr [ null, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19 ], [ %spec.select.i22, %bb.i ]
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.de, ptr %i.df, align 8
  br label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread

_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread: ; preds = %bb.f, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, %bb.b, %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit25
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4glTF8LazyDictINS_6CameraEE18DetachFromDocumentEv(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr null, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4glTF8LazyDictINS_6CameraEE12WriteObjectsERNS_11AssetWriterE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN4glTF11AssetWriter12WriteObjectsINS_6CameraEEEvRNS_8LazyDictIT_EE(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(120) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4glTF11AssetWriter12WriteObjectsINS_6CameraEEEvRNS_8LazyDictIT_EE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(120) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %3 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %4 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %5 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef ptr @_ZN10glTFCommon19FindObjectInContextERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKcSA_SA_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.209, ptr noundef null) ; 2 uses
  %.not42 = icmp eq ptr %i.h, null
  br i1 %.not42, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load i32, ptr %0, align 8                ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4              ; 6 uses
  %.not.i.i.i = icmp ult i32 %i.k, %i.m
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not14.i.i.i = icmp eq i32 %i.m, 0
  %i.n = add i32 %i.m, 1
  %i.o = lshr i32 %i.n, 1
  %i.p = add i32 %i.o, %i.m
  %i.q = select i1 %.not14.i.i.i, i32 16, i32 %i.p ; 3 uses
  %i.r = icmp ugt i32 %i.q, %i.m
  br i1 %i.r, label %.noexc.i, label %bb.f

.noexc.i:                                         ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = and i64 %i.u, 281474976710655
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = zext i32 %i.m to i64
  %i.y = zext i32 %i.q to i64
  %i.z = shl nuw nsw i64 %i.x, 5
  %i.aa = shl nuw nsw i64 %i.y, 5
  %i.ab = tail call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef %i.w, i64 noundef %i.z, i64 noundef %i.aa)
  %i.ac = load ptr, ptr %i.s, align 8
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = and i64 %i.ad, -281474976710656
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = or i64 %i.ae, %i.af
  %i.ah = inttoptr i64 %i.ag to ptr
  store ptr %i.ah, ptr %i.s, align 8
  store i32 %i.q, ptr %i.l, align 4
  %.pre.i.i.i = load i32, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %.noexc.i, %bb.e, %bb.d
  %i.ai = phi i32 [ %.pre.i.i.i, %.noexc.i ], [ %i.k, %bb.e ], [ %i.k, %bb.d ]
  %i.aj = or i64 ptrtoint (ptr @.str.93 to i64), 289637751035265024
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = and i64 %i.an, 281474976710655
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = zext i32 %i.ai to i64
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %i.ap, i64 %i.aq ; 5 uses
  store i32 10, ptr %i.ar, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i, align 4
  %.sroa.65.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.ak, ptr %.sroa.65.0..sroa_idx.i, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.as, i8 0, i64 14, i1 false)
  %.sroa.6147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 30
  store i16 3, ptr %.sroa.6147.0..sroa_idx, align 2
  %i.at = load i32, ptr %0, align 8
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr %0, align 8
  %i.av = tail call noundef ptr @_ZN10glTFCommon19FindObjectInContextERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKcSA_SA_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.209, ptr noundef null)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.036 = phi ptr [ %i.h, %bb.c ], [ %i.av, %bb.f ] ; 6 uses
  %i.aw = load ptr, ptr %i.f, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.ax = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aw) #36, !noalias !612
  %i.ay = trunc i64 %i.ax to i32                  ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 14
  store i16 1029, ptr %i.az, align 2
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = and i64 %i.bc, -281474976710656
  %i.be = ptrtoint ptr %i.aw to i64               ; 4 uses
  %i.bf = or i64 %i.bd, %i.be                     ; 2 uses
  %i.bg = inttoptr i64 %i.bf to ptr
  store ptr %i.bg, ptr %i.ba, align 8
  store i32 %i.ay, ptr %5, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.036, i64 8 ; 4 uses
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = and i64 %i.bj, 281474976710655
  %i.bl = inttoptr i64 %i.bk to ptr               ; 7 uses
  %i.bm = load i32, ptr %.036, align 8            ; 3 uses
  %i.bn = zext i32 %i.bm to i64                   ; 4 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.bn, 5
  %i.bo = getelementptr i8, ptr %i.bl, i64 %.idx.i.i.i.i ; 2 uses
  %.not9.i.i.i.i = icmp eq i32 %i.bm, 0
  br i1 %.not9.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g
  %i.bp = lshr i64 %i.be, 40
  %i.bq = trunc i64 %i.bp to i8
  %i.br = and i64 %i.bf, 1152921504606846976
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.br, 0      ; 2 uses
  %i.bs = sext i8 %i.bq to i32
  %i.bt = sub nsw i32 13, %i.bs
  %i.bu = select i1 %.not.i.i.i.i.i.i.i, i32 %i.ay, i32 %i.bt ; 2 uses
  %i.bv = and i64 %i.be, 281474976710655
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = select i1 %.not.i.i.i.i.i.i.i, ptr %i.bw, ptr %5 ; 2 uses
  %i.by = zext i32 %i.bu to i64
  br label %bb.h

bb.h:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %.lr.ph.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i ], [ %i.cq, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 8 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 14
  %i.ca = load i16, ptr %i.bz, align 2
  %i.cb = and i16 %i.ca, 4096
  %.not.i.i13.i.i.i.i.i = icmp eq i16 %i.cb, 0    ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 13
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = sext i8 %i.cd to i32
  %i.cf = sub nsw i32 13, %i.ce
  %i.cg = load i32, ptr %.010.i.i.i.i, align 8
  %i.ch = select i1 %.not.i.i13.i.i.i.i.i, i32 %i.cg, i32 %i.cf
  %.not.i.i.i.i.i = icmp eq i32 %i.bu, %i.ch
  br i1 %.not.i.i.i.i.i, label %bb.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.ci = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = and i64 %i.ck, 281474976710655
  %i.cm = inttoptr i64 %i.cl to ptr
  %i.cn = select i1 %.not.i.i13.i.i.i.i.i, ptr %i.cm, ptr %.010.i.i.i.i ; 2 uses
  %i.co = icmp eq ptr %i.bx, %i.cn
  br i1 %i.co, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i: ; preds = %bb.i
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %i.bx, ptr %i.cn, i64 %i.by)
  %i.cp = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.cp, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.h
  %i.cq = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cq, %i.bo
  br i1 %.not.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %bb.h, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.i, %bb.g
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bl, %bb.g ], [ %.010.i.i.i.i, %bb.i ], [ %.010.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i ], [ %i.bo, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.cr = getelementptr inbounds nuw [32 x i8], ptr %i.bl, i64 %i.bn
  %.not.i = icmp eq ptr %.0.lcssa.i.i.i.i, %i.cr
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 30
  %i.cu = load i16, ptr %i.ct, align 2
  %i.cv = icmp eq i16 %i.cu, 3
  br i1 %i.cv, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit, label %bb.k

bb.k:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, %bb.j
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %.036, i64 4 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4            ; 6 uses
  %.not.i.i.i49 = icmp ult i32 %i.bm, %i.cz
  br i1 %.not.i.i.i49, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not14.i.i.i50 = icmp eq i32 %i.cz, 0
  %i.da = add i32 %i.cz, 1
  %i.db = lshr i32 %i.da, 1
  %i.dc = add i32 %i.db, %i.cz
  %i.dd = select i1 %.not14.i.i.i50, i32 16, i32 %i.dc ; 3 uses
  %i.de = icmp ugt i32 %i.dd, %i.cz
  br i1 %i.de, label %.noexc.i53, label %bb.m

.noexc.i53:                                       ; preds = %bb.l
  %i.df = zext i32 %i.cz to i64
  %i.dg = zext i32 %i.dd to i64
  %i.dh = shl nuw nsw i64 %i.df, 5
  %i.di = shl nuw nsw i64 %i.dg, 5
  %i.dj = call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.cx, ptr noundef %i.bl, i64 noundef %i.dh, i64 noundef %i.di)
end_hunk_8
begin_hunk_9_@_ZN4glTF11AssetWriter12WriteObjectsINS_6CameraEEEvRNS_8LazyDictIT_EE:bb.a
  %.pre-phi167 = phi i64 [ %.pre166, %.noexc.i53 ], [ %i.bn, %bb.l ], [ %i.bn, %bb.k ]
  %.pre-phi165 = phi ptr [ %.pre164, %.noexc.i53 ], [ %i.bl, %bb.l ], [ %i.bl, %bb.k ]
  %i.dq = or i64 %i.be, 289637751035265024
  %i.dr = inttoptr i64 %i.dq to ptr
  %i.ds = getelementptr inbounds nuw [32 x i8], ptr %.pre-phi165, i64 %.pre-phi167 ; 5 uses
  store i32 %i.ay, ptr %i.ds, align 8
  %.sroa.6.0..sroa_idx.i51 = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i51, align 4
  %.sroa.65.0..sroa_idx.i52 = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store ptr %i.dr, ptr %.sroa.65.0..sroa_idx.i52, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.dt, i8 0, i64 14, i1 false)
  %.sroa.6143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 30
  store i16 3, ptr %.sroa.6143.0..sroa_idx, align 2
  %i.du = load i32, ptr %.036, align 8
  %i.dv = add i32 %i.du, 1                        ; 3 uses
  store i32 %i.dv, ptr %.036, align 8
  %i.dw = load ptr, ptr %i.f, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.dx = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dw) #36, !noalias !615
  %i.dy = trunc i64 %i.dx to i32                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 14
  store i16 1029, ptr %i.dz, align 2
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = and i64 %i.ec, -281474976710656
  %i.ee = ptrtoint ptr %i.dw to i64               ; 3 uses
  %i.ef = or i64 %i.ed, %i.ee                     ; 2 uses
  %i.eg = inttoptr i64 %i.ef to ptr
  store ptr %i.eg, ptr %i.ea, align 8
  store i32 %i.dy, ptr %4, align 8
  %i.eh = load ptr, ptr %i.bh, align 8
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = and i64 %i.ei, 281474976710655
  %i.ek = inttoptr i64 %i.ej to ptr               ; 4 uses
  %i.el = zext i32 %i.dv to i64                   ; 2 uses
  %.idx.i.i.i.i57 = shl nuw nsw i64 %i.el, 5
  %i.em = getelementptr i8, ptr %i.ek, i64 %.idx.i.i.i.i57 ; 2 uses
  %.not9.i.i.i.i58 = icmp eq i32 %i.dv, 0
  br i1 %.not9.i.i.i.i58, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, label %.lr.ph.i.i.i.i59

.lr.ph.i.i.i.i59:                                 ; preds = %bb.m
  %i.en = lshr i64 %i.ee, 40
  %i.eo = trunc i64 %i.en to i8
  %i.ep = and i64 %i.ef, 1152921504606846976
  %.not.i.i.i.i.i.i.i60 = icmp eq i64 %i.ep, 0    ; 2 uses
  %i.eq = sext i8 %i.eo to i32
  %i.er = sub nsw i32 13, %i.eq
  %i.es = select i1 %.not.i.i.i.i.i.i.i60, i32 %i.dy, i32 %i.er ; 2 uses
  %i.et = and i64 %i.ee, 281474976710655
  %i.eu = inttoptr i64 %i.et to ptr
  %i.ev = select i1 %.not.i.i.i.i.i.i.i60, ptr %i.eu, ptr %4 ; 2 uses
  %i.ew = zext i32 %i.es to i64
  br label %bb.n

bb.n:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64, %.lr.ph.i.i.i.i59
  %.010.i.i.i.i61 = phi ptr [ %i.ek, %.lr.ph.i.i.i.i59 ], [ %i.fo, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64 ] ; 8 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i61, i64 14
  %i.ey = load i16, ptr %i.ex, align 2
  %i.ez = and i16 %i.ey, 4096
  %.not.i.i13.i.i.i.i.i62 = icmp eq i16 %i.ez, 0  ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i61, i64 13
  %i.fb = load i8, ptr %i.fa, align 1
  %i.fc = sext i8 %i.fb to i32
  %i.fd = sub nsw i32 13, %i.fc
  %i.fe = load i32, ptr %.010.i.i.i.i61, align 8
  %i.ff = select i1 %.not.i.i13.i.i.i.i.i62, i32 %i.fe, i32 %i.fd
  %.not.i.i.i.i.i63 = icmp eq i32 %i.es, %i.ff
  br i1 %.not.i.i.i.i.i63, label %bb.o, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64

bb.o:                                             ; preds = %bb.n
  %i.fg = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i61, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = and i64 %i.fi, 281474976710655
  %i.fk = inttoptr i64 %i.fj to ptr
  %i.fl = select i1 %.not.i.i13.i.i.i.i.i62, ptr %i.fk, ptr %.010.i.i.i.i61 ; 2 uses
  %i.fm = icmp eq ptr %i.ev, %i.fl
  br i1 %i.fm, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70: ; preds = %bb.o
  %bcmp.i.i.i.i.i71 = call i32 @bcmp(ptr %i.ev, ptr %i.fl, i64 %i.ew)
  %i.fn = icmp eq i32 %bcmp.i.i.i.i.i71, 0
  br i1 %i.fn, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70, %bb.n
  %i.fo = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i61, i64 32 ; 2 uses
  %.not.i.i.i.i65 = icmp eq ptr %i.fo, %i.em
  br i1 %.not.i.i.i.i65, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, label %bb.n, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70, %bb.o, %bb.m
  %.0.lcssa.i.i.i.i67 = phi ptr [ %i.ek, %bb.m ], [ %.010.i.i.i.i61, %bb.o ], [ %.010.i.i.i.i61, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70 ], [ %i.em, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.fp = getelementptr inbounds nuw [32 x i8], ptr %i.ek, i64 %i.el
  %.not.i68 = icmp ne ptr %.0.lcssa.i.i.i.i67, %i.fp
  call void @llvm.assume(i1 %.not.i68)
  %i.fq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i67, i64 16
  %i.fr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i67, i64 30
  %i.fs = load i16, ptr %i.fr, align 2
  %i.ft = icmp eq i16 %i.fs, 3
  %spec.select.i69 = select i1 %i.ft, ptr %i.fq, ptr null
  br label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit

_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, %bb.j, %bb.b
  %.138 = phi ptr [ %0, %bb.b ], [ %i.cs, %bb.j ], [ %spec.select.i69, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66 ] ; 8 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.fw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fv) #36, !noalias !618
  %i.fx = trunc i64 %i.fw to i32                  ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.fy = getelementptr inbounds nuw i8, ptr %3, i64 14
  store i16 1029, ptr %i.fy, align 2
  %i.fz = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ga = load ptr, ptr %i.fz, align 8
  %i.gb = ptrtoint ptr %i.ga to i64
  %i.gc = and i64 %i.gb, -281474976710656
  %i.gd = ptrtoint ptr %i.fv to i64               ; 4 uses
  %i.ge = or i64 %i.gc, %i.gd                     ; 2 uses
  %i.gf = inttoptr i64 %i.ge to ptr
  store ptr %i.gf, ptr %i.fz, align 8
  store i32 %i.fx, ptr %3, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %.138, i64 8 ; 6 uses
  %i.gh = load ptr, ptr %i.gg, align 8
  %i.gi = ptrtoint ptr %i.gh to i64
  %i.gj = and i64 %i.gi, 281474976710655
  %i.gk = inttoptr i64 %i.gj to ptr               ; 4 uses
  %i.gl = load i32, ptr %.138, align 8            ; 2 uses
  %i.gm = zext i32 %i.gl to i64                   ; 2 uses
  %.idx.i.i.i.i73 = shl nuw nsw i64 %i.gm, 5
  %i.gn = getelementptr i8, ptr %i.gk, i64 %.idx.i.i.i.i73 ; 2 uses
  %.not9.i.i.i.i74 = icmp eq i32 %i.gl, 0
  br i1 %.not9.i.i.i.i74, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, label %.lr.ph.i.i.i.i75

.lr.ph.i.i.i.i75:                                 ; preds = %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit
  %i.go = lshr i64 %i.gd, 40
  %i.gp = trunc i64 %i.go to i8
  %i.gq = and i64 %i.ge, 1152921504606846976
  %.not.i.i.i.i.i.i.i76 = icmp eq i64 %i.gq, 0    ; 2 uses
  %i.gr = sext i8 %i.gp to i32
  %i.gs = sub nsw i32 13, %i.gr
  %i.gt = select i1 %.not.i.i.i.i.i.i.i76, i32 %i.fx, i32 %i.gs ; 2 uses
  %i.gu = and i64 %i.gd, 281474976710655
  %i.gv = inttoptr i64 %i.gu to ptr
  %i.gw = select i1 %.not.i.i.i.i.i.i.i76, ptr %i.gv, ptr %3 ; 2 uses
  %i.gx = zext i32 %i.gt to i64
  br label %bb.p

bb.p:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80, %.lr.ph.i.i.i.i75
  %.010.i.i.i.i77 = phi ptr [ %i.gk, %.lr.ph.i.i.i.i75 ], [ %i.hp, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80 ] ; 8 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i77, i64 14
  %i.gz = load i16, ptr %i.gy, align 2
  %i.ha = and i16 %i.gz, 4096
  %.not.i.i13.i.i.i.i.i78 = icmp eq i16 %i.ha, 0  ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i77, i64 13
  %i.hc = load i8, ptr %i.hb, align 1
  %i.hd = sext i8 %i.hc to i32
  %i.he = sub nsw i32 13, %i.hd
  %i.hf = load i32, ptr %.010.i.i.i.i77, align 8
  %i.hg = select i1 %.not.i.i13.i.i.i.i.i78, i32 %i.hf, i32 %i.he
  %.not.i.i.i.i.i79 = icmp eq i32 %i.gt, %i.hg
  br i1 %.not.i.i.i.i.i79, label %bb.q, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80

bb.q:                                             ; preds = %bb.p
  %i.hh = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i77, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8
  %i.hj = ptrtoint ptr %i.hi to i64
  %i.hk = and i64 %i.hj, 281474976710655
  %i.hl = inttoptr i64 %i.hk to ptr
  %i.hm = select i1 %.not.i.i13.i.i.i.i.i78, ptr %i.hl, ptr %.010.i.i.i.i77 ; 2 uses
  %i.hn = icmp eq ptr %i.gw, %i.hm
  br i1 %i.hn, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86: ; preds = %bb.q
  %bcmp.i.i.i.i.i87 = call i32 @bcmp(ptr %i.gw, ptr %i.hm, i64 %i.gx)
  %i.ho = icmp eq i32 %bcmp.i.i.i.i.i87, 0
  br i1 %i.ho, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86, %bb.p
  %i.hp = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i77, i64 32 ; 2 uses
  %.not.i.i.i.i81 = icmp eq ptr %i.hp, %i.gn
  br i1 %.not.i.i.i.i81, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, label %bb.p, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86, %bb.q, %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit
  %.0.lcssa.i.i.i.i83 = phi ptr [ %i.gk, %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit ], [ %.010.i.i.i.i77, %bb.q ], [ %.010.i.i.i.i77, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86 ], [ %i.gn, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.hq = getelementptr inbounds nuw [32 x i8], ptr %i.gk, i64 %i.gm
  %.not.i84 = icmp eq ptr %.0.lcssa.i.i.i.i83, %i.hq
  br i1 %.not.i84, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82
  %i.hr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i83, i64 16
  %i.hs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i83, i64 30
  %i.ht = load i16, ptr %i.hs, align 2
  %i.hu = icmp eq i16 %i.ht, 3
  br i1 %i.hu, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88, label %bb.s

bb.s:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, %bb.r
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hw = load ptr, ptr %i.hv, align 8
  %i.hx = load i32, ptr %.138, align 8            ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.138, i64 4 ; 2 uses
  %i.hz = load i32, ptr %i.hy, align 4            ; 6 uses
  %.not.i.i.i89 = icmp ult i32 %i.hx, %i.hz
  br i1 %.not.i.i.i89, label %._crit_edge, label %bb.t

._crit_edge:                                      ; preds = %bb.s
  %.pre = load ptr, ptr %i.gg, align 8
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  %.not14.i.i.i90 = icmp eq i32 %i.hz, 0
  %i.ia = add i32 %i.hz, 1
  %i.ib = lshr i32 %i.ia, 1
  %i.ic = add i32 %i.ib, %i.hz
  %i.id = select i1 %.not14.i.i.i90, i32 16, i32 %i.ic ; 3 uses
  %i.ie = icmp ugt i32 %i.id, %i.hz
  %.pre155 = load ptr, ptr %i.gg, align 8         ; 2 uses
  br i1 %i.ie, label %.noexc.i93, label %bb.u

.noexc.i93:                                       ; preds = %bb.t
  %i.if = ptrtoint ptr %.pre155 to i64
  %i.ig = and i64 %i.if, 281474976710655
  %i.ih = inttoptr i64 %i.ig to ptr
  %i.ii = zext i32 %i.hz to i64
  %i.ij = zext i32 %i.id to i64
  %i.ik = shl nuw nsw i64 %i.ii, 5
  %i.il = shl nuw nsw i64 %i.ij, 5
  %i.im = call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.hw, ptr noundef %i.ih, i64 noundef %i.ik, i64 noundef %i.il)
  %i.in = load ptr, ptr %i.gg, align 8
  %i.io = ptrtoint ptr %i.in to i64
  %i.ip = and i64 %i.io, -281474976710656
  %i.iq = ptrtoint ptr %i.im to i64
  %i.ir = or i64 %i.ip, %i.iq
  %i.is = inttoptr i64 %i.ir to ptr               ; 2 uses
  store ptr %i.is, ptr %i.gg, align 8
  store i32 %i.id, ptr %i.hy, align 4
  %.pre.i.i.i94 = load i32, ptr %.138, align 8
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge, %.noexc.i93, %bb.t
  %i.it = phi ptr [ %i.is, %.noexc.i93 ], [ %.pre155, %bb.t ], [ %.pre, %._crit_edge ]
  %i.iu = phi i32 [ %.pre.i.i.i94, %.noexc.i93 ], [ %i.hx, %bb.t ], [ %i.hx, %._crit_edge ]
  %i.iv = or i64 %i.gd, 289637751035265024
  %i.iw = inttoptr i64 %i.iv to ptr
  %i.ix = ptrtoint ptr %i.it to i64
  %i.iy = and i64 %i.ix, 281474976710655
  %i.iz = inttoptr i64 %i.iy to ptr
  %i.ja = zext i32 %i.iu to i64
  %i.jb = getelementptr inbounds nuw [32 x i8], ptr %i.iz, i64 %i.ja ; 5 uses
  store i32 %i.fx, ptr %i.jb, align 8
  %.sroa.6.0..sroa_idx.i91 = getelementptr inbounds nuw i8, ptr %i.jb, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i91, align 4
  %.sroa.65.0..sroa_idx.i92 = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  store ptr %i.iw, ptr %.sroa.65.0..sroa_idx.i92, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  store <14 x i8> zeroinitializer, ptr %i.jc, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jb, i64 30
  store i16 3, ptr %.sroa.6.0..sroa_idx, align 2
  %i.jd = load i32, ptr %.138, align 8
  %i.je = add i32 %i.jd, 1
  store i32 %i.je, ptr %.138, align 8
  %i.jf = load ptr, ptr %i.fu, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.jg = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.jf) #36, !noalias !621
  %i.jh = trunc i64 %i.jg to i32                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.ji = getelementptr inbounds nuw i8, ptr %2, i64 14
  store i16 1029, ptr %i.ji, align 2
  %i.jj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.jk = load ptr, ptr %i.jj, align 8
  %i.jl = ptrtoint ptr %i.jk to i64
  %i.jm = and i64 %i.jl, -281474976710656
  %i.jn = ptrtoint ptr %i.jf to i64               ; 3 uses
  %i.jo = or i64 %i.jm, %i.jn                     ; 2 uses
  %i.jp = inttoptr i64 %i.jo to ptr
  store ptr %i.jp, ptr %i.jj, align 8
  store i32 %i.jh, ptr %2, align 8
  %i.jq = load ptr, ptr %i.gg, align 8
  %i.jr = ptrtoint ptr %i.jq to i64
  %i.js = and i64 %i.jr, 281474976710655
  %i.jt = inttoptr i64 %i.js to ptr               ; 4 uses
  %i.ju = load i32, ptr %.138, align 8            ; 2 uses
  %i.jv = zext i32 %i.ju to i64                   ; 2 uses
  %.idx.i.i.i.i97 = shl nuw nsw i64 %i.jv, 5
  %i.jw = getelementptr i8, ptr %i.jt, i64 %.idx.i.i.i.i97 ; 2 uses
  %.not9.i.i.i.i98 = icmp eq i32 %i.ju, 0
  br i1 %.not9.i.i.i.i98, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, label %.lr.ph.i.i.i.i99

.lr.ph.i.i.i.i99:                                 ; preds = %bb.u
  %i.jx = lshr i64 %i.jn, 40
  %i.jy = trunc i64 %i.jx to i8
  %i.jz = and i64 %i.jo, 1152921504606846976
  %.not.i.i.i.i.i.i.i100 = icmp eq i64 %i.jz, 0   ; 2 uses
  %i.ka = sext i8 %i.jy to i32
  %i.kb = sub nsw i32 13, %i.ka
  %i.kc = select i1 %.not.i.i.i.i.i.i.i100, i32 %i.jh, i32 %i.kb ; 2 uses
  %i.kd = and i64 %i.jn, 281474976710655
  %i.ke = inttoptr i64 %i.kd to ptr
  %i.kf = select i1 %.not.i.i.i.i.i.i.i100, ptr %i.ke, ptr %2 ; 2 uses
  %i.kg = zext i32 %i.kc to i64
  br label %bb.v

bb.v:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104, %.lr.ph.i.i.i.i99
  %.010.i.i.i.i101 = phi ptr [ %i.jt, %.lr.ph.i.i.i.i99 ], [ %i.ky, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104 ] ; 8 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i101, i64 14
  %i.ki = load i16, ptr %i.kh, align 2
  %i.kj = and i16 %i.ki, 4096
  %.not.i.i13.i.i.i.i.i102 = icmp eq i16 %i.kj, 0 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i101, i64 13
  %i.kl = load i8, ptr %i.kk, align 1
  %i.km = sext i8 %i.kl to i32
  %i.kn = sub nsw i32 13, %i.km
  %i.ko = load i32, ptr %.010.i.i.i.i101, align 8
  %i.kp = select i1 %.not.i.i13.i.i.i.i.i102, i32 %i.ko, i32 %i.kn
  %.not.i.i.i.i.i103 = icmp eq i32 %i.kc, %i.kp
  br i1 %.not.i.i.i.i.i103, label %bb.w, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104

bb.w:                                             ; preds = %bb.v
  %i.kq = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i101, i64 8
  %i.kr = load ptr, ptr %i.kq, align 8
  %i.ks = ptrtoint ptr %i.kr to i64
  %i.kt = and i64 %i.ks, 281474976710655
  %i.ku = inttoptr i64 %i.kt to ptr
  %i.kv = select i1 %.not.i.i13.i.i.i.i.i102, ptr %i.ku, ptr %.010.i.i.i.i101 ; 2 uses
  %i.kw = icmp eq ptr %i.kf, %i.kv
  br i1 %i.kw, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110: ; preds = %bb.w
  %bcmp.i.i.i.i.i111 = call i32 @bcmp(ptr %i.kf, ptr %i.kv, i64 %i.kg)
  %i.kx = icmp eq i32 %bcmp.i.i.i.i.i111, 0
  br i1 %i.kx, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110, %bb.v
  %i.ky = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i101, i64 32 ; 2 uses
  %.not.i.i.i.i105 = icmp eq ptr %i.ky, %i.jw
  br i1 %.not.i.i.i.i105, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, label %bb.v, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110, %bb.w, %bb.u
  %.0.lcssa.i.i.i.i107 = phi ptr [ %i.jt, %bb.u ], [ %.010.i.i.i.i101, %bb.w ], [ %.010.i.i.i.i101, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110 ], [ %i.jw, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.kz = getelementptr inbounds nuw [32 x i8], ptr %i.jt, i64 %i.jv
  %.not.i108 = icmp eq ptr %.0.lcssa.i.i.i.i107, %i.kz
  br i1 %.not.i108, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88, label %bb.x

bb.x:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106
  %i.la = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i107, i64 16
  %i.lb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i107, i64 30
  %i.lc = load i16, ptr %i.lb, align 2
  %i.ld = icmp eq i16 %i.lc, 3
  %spec.select.i109 = select i1 %i.ld, ptr %i.la, ptr null
  br label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88

_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88: ; preds = %bb.x, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, %bb.r
  %.031 = phi ptr [ %i.hr, %bb.r ], [ null, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106 ], [ %spec.select.i109, %bb.x ] ; 6 uses
  %i.le = load ptr, ptr %i.c, align 8
  %i.lf = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not154 = icmp eq ptr %i.le, %i.lf
  br i1 %.not154, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.lh = or i64 ptrtoint (ptr @.str.88 to i64), 289637751035265024
  %i.li = inttoptr i64 %i.lh to ptr
  %i.lj = getelementptr inbounds nuw i8, ptr %.031, i64 4 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %.031, i64 8 ; 4 uses
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph, %bb.ad
  %i.ll = phi ptr [ %i.lf, %.lr.ph ], [ %i.of, %bb.ad ]
  %.0153 = phi i64 [ 0, %.lr.ph ], [ %i.od, %bb.ad ] ; 4 uses
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.ll, i64 %.0153
  %i.ln = load ptr, ptr %i.lm, align 8            ; 2 uses
  %i.lo = load ptr, ptr %i.ln, align 8
  %i.lp = load ptr, ptr %i.lo, align 8
  %i.lq = call noundef zeroext i1 %i.lp(ptr noundef nonnull align 8 dereferenceable(72) %i.ln)
  br i1 %i.lq, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.lr = load ptr, ptr %i.a, align 8
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.lr, i64 %.0153
  %i.lt = load ptr, ptr %i.ls, align 8            ; 3 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 48
  %i.lv = load i64, ptr %i.lu, align 8
  %i.lw = icmp eq i64 %i.lv, 0
  br i1 %i.lw, label %bb.aa, label %.noexc.i.i

.noexc.i.i:                                       ; preds = %bb.z
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lt, i64 40
  %i.ly = load ptr, ptr %i.lx, align 8            ; 2 uses
  %i.lz = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ly) #36, !noalias !624
  %i.ma = trunc i64 %i.lz to i32
  %i.mb = load ptr, ptr %i.lg, align 8, !nonnull !16, !align !112
  %i.mc = call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.mb, ptr noundef null, i64 noundef 0, i64 noundef 512)
  %i.md = ptrtoint ptr %i.mc to i64               ; 2 uses
  %i.me = or i64 %i.md, 844424930131968
  %i.mf = inttoptr i64 %i.me to ptr
  %i.mg = ptrtoint ptr %i.ly to i64
  %i.mh = or i64 %i.mg, 289637751035265024
  %i.mi = inttoptr i64 %i.mh to ptr
  %i.mj = and i64 %i.md, 281474976710655
  %i.mk = inttoptr i64 %i.mj to ptr               ; 6 uses
  store i32 4, ptr %i.mk, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mk, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i.i, align 4
  %.sroa.65.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  store ptr %i.li, ptr %.sroa.65.0..sroa_idx.i.i, align 8
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 16
  store i32 %i.ma, ptr %i.ml, align 8
  %.sroa.6.0..sroa_idx.i114 = getelementptr inbounds nuw i8, ptr %i.mk, i64 20
  store i32 0, ptr %.sroa.6.0..sroa_idx.i114, align 4
  %.sroa.66.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mk, i64 24
  store ptr %i.mi, ptr %.sroa.66.0..sroa_idx.i, align 8
  %.pre156 = load ptr, ptr %i.a, align 8
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre156, i64 %.0153
  %.pre157 = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.noexc.i.i
  %i.mm = phi ptr [ %i.lt, %bb.z ], [ %.pre157, %.noexc.i.i ] ; 2 uses
  %.sroa.12.0 = phi ptr [ inttoptr (i64 844424930131968 to ptr), %bb.z ], [ %i.mf, %.noexc.i.i ]
  %i.mn = phi <2 x i32> [ zeroinitializer, %bb.z ], [ <i32 1, i32 16>, %.noexc.i.i ]
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  %i.mp = load ptr, ptr %i.mo, align 8, !noalias !627 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mm, i64 16
  %i.mr = load i64, ptr %i.mq, align 8, !noalias !627
  %i.ms = trunc i64 %i.mr to i32
  %.not.i.i = icmp eq ptr %i.mp, null
  %i.mt = select i1 %.not.i.i, ptr @_ZN9rapidjson16GenericStringRefIcE11emptyStringE, ptr %i.mp, !prof !6
  %i.mu = load ptr, ptr %i.lg, align 8, !nonnull !16, !align !112
  %i.mv = load i32, ptr %.031, align 8            ; 3 uses
  %i.mw = load i32, ptr %i.lj, align 4            ; 6 uses
  %.not.i.i.i116 = icmp ult i32 %i.mv, %i.mw
  br i1 %.not.i.i.i116, label %._crit_edge158, label %bb.ab

._crit_edge158:                                   ; preds = %bb.aa
  %.pre159 = load ptr, ptr %i.lk, align 8
  br label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %.not14.i.i.i117 = icmp eq i32 %i.mw, 0
  %i.mx = add i32 %i.mw, 1
  %i.my = lshr i32 %i.mx, 1
  %i.mz = add i32 %i.my, %i.mw
  %i.na = select i1 %.not14.i.i.i117, i32 16, i32 %i.mz ; 3 uses
  %i.nb = icmp ugt i32 %i.na, %i.mw
  %.pre160 = load ptr, ptr %i.lk, align 8         ; 2 uses
  br i1 %i.nb, label %.noexc.i120, label %bb.ac

.noexc.i120:                                      ; preds = %bb.ab
  %i.nc = ptrtoint ptr %.pre160 to i64
  %i.nd = and i64 %i.nc, 281474976710655
  %i.ne = inttoptr i64 %i.nd to ptr
  %i.nf = zext i32 %i.mw to i64
  %i.ng = zext i32 %i.na to i64
  %i.nh = shl nuw nsw i64 %i.nf, 5
  %i.ni = shl nuw nsw i64 %i.ng, 5
  %i.nj = call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.mu, ptr noundef %i.ne, i64 noundef %i.nh, i64 noundef %i.ni)
  %i.nk = load ptr, ptr %i.lk, align 8
  %i.nl = ptrtoint ptr %i.nk to i64
  %i.nm = and i64 %i.nl, -281474976710656
  %i.nn = ptrtoint ptr %i.nj to i64
end_hunk_9
begin_hunk_10_@_ZN4glTF8LazyDictINS_5ImageEE16AttachToDocumentERN9rapidjson15GenericDocumentINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEES8_EE:bb.a
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = and i64 %i.q, 281474976710655
  %i.s = inttoptr i64 %i.r to ptr                 ; 4 uses
  %i.t = load i32, ptr %i.c, align 8              ; 2 uses
  %i.u = zext i32 %i.t to i64                     ; 2 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.u, 5
  %i.v = getelementptr i8, ptr %i.s, i64 %.idx.i.i.i.i ; 2 uses
  %.not9.i.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not9.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c
  %i.w = lshr i64 %i.l, 40
  %i.x = trunc i64 %i.w to i8
  %i.y = and i64 %i.m, 1152921504606846976
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.y, 0       ; 2 uses
  %i.z = sext i8 %i.x to i32
  %i.aa = sub nsw i32 13, %i.z
  %i.ab = select i1 %.not.i.i.i.i.i.i.i, i32 %i.f, i32 %i.aa ; 2 uses
  %i.ac = and i64 %i.l, 281474976710655
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = select i1 %.not.i.i.i.i.i.i.i, ptr %i.ad, ptr %3 ; 2 uses
  %i.af = zext i32 %i.ab to i64
  br label %bb.d

bb.d:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %.lr.ph.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i ], [ %i.ax, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 14
  %i.ah = load i16, ptr %i.ag, align 2
  %i.ai = and i16 %i.ah, 4096
  %.not.i.i13.i.i.i.i.i = icmp eq i16 %i.ai, 0    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 13
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = sext i8 %i.ak to i32
  %i.am = sub nsw i32 13, %i.al
  %i.an = load i32, ptr %.010.i.i.i.i, align 8
  %i.ao = select i1 %.not.i.i13.i.i.i.i.i, i32 %i.an, i32 %i.am
  %.not.i.i.i.i.i = icmp eq i32 %i.ab, %i.ao
  br i1 %.not.i.i.i.i.i, label %bb.e, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = and i64 %i.ar, 281474976710655
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = select i1 %.not.i.i13.i.i.i.i.i, ptr %i.at, ptr %.010.i.i.i.i ; 2 uses
  %i.av = icmp eq ptr %i.ae, %i.au
  br i1 %i.av, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i: ; preds = %bb.e
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %i.ae, ptr %i.au, i64 %i.af)
  %i.aw = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.aw, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ax, %i.v
  br i1 %.not.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %bb.d, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.e, %bb.c
  %.0.lcssa.i.i.i.i = phi ptr [ %i.s, %bb.c ], [ %.010.i.i.i.i, %bb.e ], [ %.010.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i ], [ %i.v, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.ay = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %i.u
  %.not.i = icmp eq ptr %.0.lcssa.i.i.i.i, %i.ay
  br i1 %.not.i, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 30
  %i.bb = load i16, ptr %i.ba, align 2
  %i.bc = icmp eq i16 %i.bb, 3
  br i1 %i.bc, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread

_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit: ; preds = %bb.f, %bb.a
  %.1 = phi ptr [ %1, %bb.a ], [ %i.az, %bb.f ]   ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.bf = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.be) #36, !noalias !634
  %i.bg = trunc i64 %i.bf to i32                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 14
  store i16 1029, ptr %i.bh, align 2
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = and i64 %i.bk, -281474976710656
  %i.bm = ptrtoint ptr %i.be to i64               ; 3 uses
  %i.bn = or i64 %i.bl, %i.bm                     ; 2 uses
  %i.bo = inttoptr i64 %i.bn to ptr
  store ptr %i.bo, ptr %i.bi, align 8
  store i32 %i.bg, ptr %2, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = and i64 %i.br, 281474976710655
  %i.bt = inttoptr i64 %i.bs to ptr               ; 4 uses
  %i.bu = load i32, ptr %.1, align 8              ; 2 uses
  %i.bv = zext i32 %i.bu to i64                   ; 2 uses
  %.idx.i.i.i.i10 = shl nuw nsw i64 %i.bv, 5
  %i.bw = getelementptr i8, ptr %i.bt, i64 %.idx.i.i.i.i10 ; 2 uses
  %.not9.i.i.i.i11 = icmp eq i32 %i.bu, 0
  br i1 %.not9.i.i.i.i11, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19, label %.lr.ph.i.i.i.i12

.lr.ph.i.i.i.i12:                                 ; preds = %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit
  %i.bx = lshr i64 %i.bm, 40
  %i.by = trunc i64 %i.bx to i8
  %i.bz = and i64 %i.bn, 1152921504606846976
  %.not.i.i.i.i.i.i.i13 = icmp eq i64 %i.bz, 0    ; 2 uses
  %i.ca = sext i8 %i.by to i32
  %i.cb = sub nsw i32 13, %i.ca
  %i.cc = select i1 %.not.i.i.i.i.i.i.i13, i32 %i.bg, i32 %i.cb ; 2 uses
  %i.cd = and i64 %i.bm, 281474976710655
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = select i1 %.not.i.i.i.i.i.i.i13, ptr %i.ce, ptr %2 ; 2 uses
  %i.cg = zext i32 %i.cc to i64
  br label %bb.g

bb.g:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17, %.lr.ph.i.i.i.i12
  %.010.i.i.i.i14 = phi ptr [ %i.bt, %.lr.ph.i.i.i.i12 ], [ %i.cy, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17 ] ; 8 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i14, i64 14
  %i.ci = load i16, ptr %i.ch, align 2
  %i.cj = and i16 %i.ci, 4096
  %.not.i.i13.i.i.i.i.i15 = icmp eq i16 %i.cj, 0  ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i14, i64 13
  %i.cl = load i8, ptr %i.ck, align 1
  %i.cm = sext i8 %i.cl to i32
  %i.cn = sub nsw i32 13, %i.cm
  %i.co = load i32, ptr %.010.i.i.i.i14, align 8
  %i.cp = select i1 %.not.i.i13.i.i.i.i.i15, i32 %i.co, i32 %i.cn
  %.not.i.i.i.i.i16 = icmp eq i32 %i.cc, %i.cp
  br i1 %.not.i.i.i.i.i16, label %bb.h, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17

bb.h:                                             ; preds = %bb.g
  %i.cq = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i14, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = and i64 %i.cs, 281474976710655
  %i.cu = inttoptr i64 %i.ct to ptr
  %i.cv = select i1 %.not.i.i13.i.i.i.i.i15, ptr %i.cu, ptr %.010.i.i.i.i14 ; 2 uses
  %i.cw = icmp eq ptr %i.cf, %i.cv
  br i1 %i.cw, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i23

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i23: ; preds = %bb.h
  %bcmp.i.i.i.i.i24 = call i32 @bcmp(ptr %i.cf, ptr %i.cv, i64 %i.cg)
  %i.cx = icmp eq i32 %bcmp.i.i.i.i.i24, 0
  br i1 %i.cx, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i23, %bb.g
  %i.cy = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i14, i64 32 ; 2 uses
  %.not.i.i.i.i18 = icmp eq ptr %i.cy, %i.bw
  br i1 %.not.i.i.i.i18, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19, label %bb.g, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i23, %bb.h, %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit
  %.0.lcssa.i.i.i.i20 = phi ptr [ %i.bt, %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit ], [ %.010.i.i.i.i14, %bb.h ], [ %.010.i.i.i.i14, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i23 ], [ %i.bw, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.cz = getelementptr inbounds nuw [32 x i8], ptr %i.bt, i64 %i.bv
  %.not.i21 = icmp eq ptr %.0.lcssa.i.i.i.i20, %i.cz
  br i1 %.not.i21, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit25, label %bb.i

bb.i:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19
  %i.da = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i20, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i20, i64 30
  %i.dc = load i16, ptr %i.db, align 2
  %i.dd = icmp eq i16 %i.dc, 3
  %spec.select.i22 = select i1 %i.dd, ptr %i.da, ptr null
  br label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit25

_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit25: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19, %bb.i
  %i.de = phi ptr [ null, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19 ], [ %spec.select.i22, %bb.i ]
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.de, ptr %i.df, align 8
  br label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread

_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread: ; preds = %bb.f, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, %bb.b, %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit25
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4glTF8LazyDictINS_5ImageEE18DetachFromDocumentEv(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr null, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4glTF8LazyDictINS_5ImageEE12WriteObjectsERNS_11AssetWriterE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN4glTF11AssetWriter12WriteObjectsINS_5ImageEEEvRNS_8LazyDictIT_EE(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(120) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4glTF11AssetWriter12WriteObjectsINS_5ImageEEEvRNS_8LazyDictIT_EE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(120) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %3 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %4 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %5 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %6 = alloca %"class.rapidjson::GenericValue", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef ptr @_ZN10glTFCommon19FindObjectInContextERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKcSA_SA_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.209, ptr noundef null) ; 2 uses
  %.not42 = icmp eq ptr %i.h, null
  br i1 %.not42, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load i32, ptr %0, align 8                ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4              ; 6 uses
  %.not.i.i.i = icmp ult i32 %i.k, %i.m
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not14.i.i.i = icmp eq i32 %i.m, 0
  %i.n = add i32 %i.m, 1
  %i.o = lshr i32 %i.n, 1
  %i.p = add i32 %i.o, %i.m
  %i.q = select i1 %.not14.i.i.i, i32 16, i32 %i.p ; 3 uses
  %i.r = icmp ugt i32 %i.q, %i.m
  br i1 %i.r, label %.noexc.i, label %bb.f

.noexc.i:                                         ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = and i64 %i.u, 281474976710655
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = zext i32 %i.m to i64
  %i.y = zext i32 %i.q to i64
  %i.z = shl nuw nsw i64 %i.x, 5
  %i.aa = shl nuw nsw i64 %i.y, 5
  %i.ab = tail call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef %i.w, i64 noundef %i.z, i64 noundef %i.aa)
  %i.ac = load ptr, ptr %i.s, align 8
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = and i64 %i.ad, -281474976710656
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = or i64 %i.ae, %i.af
  %i.ah = inttoptr i64 %i.ag to ptr
  store ptr %i.ah, ptr %i.s, align 8
  store i32 %i.q, ptr %i.l, align 4
  %.pre.i.i.i = load i32, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %.noexc.i, %bb.e, %bb.d
  %i.ai = phi i32 [ %.pre.i.i.i, %.noexc.i ], [ %i.k, %bb.e ], [ %i.k, %bb.d ]
  %i.aj = or i64 ptrtoint (ptr @.str.93 to i64), 289637751035265024
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = and i64 %i.an, 281474976710655
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = zext i32 %i.ai to i64
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %i.ap, i64 %i.aq ; 5 uses
  store i32 10, ptr %i.ar, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i, align 4
  %.sroa.65.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.ak, ptr %.sroa.65.0..sroa_idx.i, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.as, i8 0, i64 14, i1 false)
  %.sroa.6136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 30
  store i16 3, ptr %.sroa.6136.0..sroa_idx, align 2
  %i.at = load i32, ptr %0, align 8
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr %0, align 8
  %i.av = tail call noundef ptr @_ZN10glTFCommon19FindObjectInContextERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKcSA_SA_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.209, ptr noundef null)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.036 = phi ptr [ %i.h, %bb.c ], [ %i.av, %bb.f ] ; 6 uses
  %i.aw = load ptr, ptr %i.f, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.ax = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aw) #36, !noalias !637
  %i.ay = trunc i64 %i.ax to i32                  ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 14
  store i16 1029, ptr %i.az, align 2
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = and i64 %i.bc, -281474976710656
  %i.be = ptrtoint ptr %i.aw to i64               ; 4 uses
  %i.bf = or i64 %i.bd, %i.be                     ; 2 uses
  %i.bg = inttoptr i64 %i.bf to ptr
  store ptr %i.bg, ptr %i.ba, align 8
  store i32 %i.ay, ptr %5, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.036, i64 8 ; 4 uses
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = and i64 %i.bj, 281474976710655
  %i.bl = inttoptr i64 %i.bk to ptr               ; 7 uses
  %i.bm = load i32, ptr %.036, align 8            ; 3 uses
  %i.bn = zext i32 %i.bm to i64                   ; 4 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.bn, 5
  %i.bo = getelementptr i8, ptr %i.bl, i64 %.idx.i.i.i.i ; 2 uses
  %.not9.i.i.i.i = icmp eq i32 %i.bm, 0
  br i1 %.not9.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g
  %i.bp = lshr i64 %i.be, 40
  %i.bq = trunc i64 %i.bp to i8
  %i.br = and i64 %i.bf, 1152921504606846976
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.br, 0      ; 2 uses
  %i.bs = sext i8 %i.bq to i32
  %i.bt = sub nsw i32 13, %i.bs
  %i.bu = select i1 %.not.i.i.i.i.i.i.i, i32 %i.ay, i32 %i.bt ; 2 uses
  %i.bv = and i64 %i.be, 281474976710655
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = select i1 %.not.i.i.i.i.i.i.i, ptr %i.bw, ptr %5 ; 2 uses
  %i.by = zext i32 %i.bu to i64
  br label %bb.h

bb.h:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %.lr.ph.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i ], [ %i.cq, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 8 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 14
  %i.ca = load i16, ptr %i.bz, align 2
  %i.cb = and i16 %i.ca, 4096
  %.not.i.i13.i.i.i.i.i = icmp eq i16 %i.cb, 0    ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 13
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = sext i8 %i.cd to i32
  %i.cf = sub nsw i32 13, %i.ce
  %i.cg = load i32, ptr %.010.i.i.i.i, align 8
  %i.ch = select i1 %.not.i.i13.i.i.i.i.i, i32 %i.cg, i32 %i.cf
  %.not.i.i.i.i.i = icmp eq i32 %i.bu, %i.ch
  br i1 %.not.i.i.i.i.i, label %bb.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.ci = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = and i64 %i.ck, 281474976710655
  %i.cm = inttoptr i64 %i.cl to ptr
  %i.cn = select i1 %.not.i.i13.i.i.i.i.i, ptr %i.cm, ptr %.010.i.i.i.i ; 2 uses
  %i.co = icmp eq ptr %i.bx, %i.cn
  br i1 %i.co, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i: ; preds = %bb.i
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %i.bx, ptr %i.cn, i64 %i.by)
  %i.cp = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.cp, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.h
  %i.cq = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cq, %i.bo
  br i1 %.not.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %bb.h, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.i, %bb.g
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bl, %bb.g ], [ %.010.i.i.i.i, %bb.i ], [ %.010.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i ], [ %i.bo, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.cr = getelementptr inbounds nuw [32 x i8], ptr %i.bl, i64 %i.bn
  %.not.i = icmp eq ptr %.0.lcssa.i.i.i.i, %i.cr
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 30
  %i.cu = load i16, ptr %i.ct, align 2
  %i.cv = icmp eq i16 %i.cu, 3
  br i1 %i.cv, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit, label %bb.k

bb.k:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, %bb.j
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %.036, i64 4 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4            ; 6 uses
  %.not.i.i.i49 = icmp ult i32 %i.bm, %i.cz
  br i1 %.not.i.i.i49, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not14.i.i.i50 = icmp eq i32 %i.cz, 0
  %i.da = add i32 %i.cz, 1
  %i.db = lshr i32 %i.da, 1
  %i.dc = add i32 %i.db, %i.cz
  %i.dd = select i1 %.not14.i.i.i50, i32 16, i32 %i.dc ; 3 uses
  %i.de = icmp ugt i32 %i.dd, %i.cz
  br i1 %i.de, label %.noexc.i53, label %bb.m

.noexc.i53:                                       ; preds = %bb.l
  %i.df = zext i32 %i.cz to i64
  %i.dg = zext i32 %i.dd to i64
  %i.dh = shl nuw nsw i64 %i.df, 5
  %i.di = shl nuw nsw i64 %i.dg, 5
end_hunk_10
begin_hunk_11_@_ZN4glTF11AssetWriter12WriteObjectsINS_5ImageEEEvRNS_8LazyDictIT_EE:bb.a
  %.pre-phi157 = phi i64 [ %.pre156, %.noexc.i53 ], [ %i.bn, %bb.l ], [ %i.bn, %bb.k ]
  %.pre-phi155 = phi ptr [ %.pre154, %.noexc.i53 ], [ %i.bl, %bb.l ], [ %i.bl, %bb.k ]
  %i.dq = or i64 %i.be, 289637751035265024
  %i.dr = inttoptr i64 %i.dq to ptr
  %i.ds = getelementptr inbounds nuw [32 x i8], ptr %.pre-phi155, i64 %.pre-phi157 ; 5 uses
  store i32 %i.ay, ptr %i.ds, align 8
  %.sroa.6.0..sroa_idx.i51 = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i51, align 4
  %.sroa.65.0..sroa_idx.i52 = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store ptr %i.dr, ptr %.sroa.65.0..sroa_idx.i52, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.dt, i8 0, i64 14, i1 false)
  %.sroa.6132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 30
  store i16 3, ptr %.sroa.6132.0..sroa_idx, align 2
  %i.du = load i32, ptr %.036, align 8
  %i.dv = add i32 %i.du, 1                        ; 3 uses
  store i32 %i.dv, ptr %.036, align 8
  %i.dw = load ptr, ptr %i.f, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.dx = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dw) #36, !noalias !640
  %i.dy = trunc i64 %i.dx to i32                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 14
  store i16 1029, ptr %i.dz, align 2
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = and i64 %i.ec, -281474976710656
  %i.ee = ptrtoint ptr %i.dw to i64               ; 3 uses
  %i.ef = or i64 %i.ed, %i.ee                     ; 2 uses
  %i.eg = inttoptr i64 %i.ef to ptr
  store ptr %i.eg, ptr %i.ea, align 8
  store i32 %i.dy, ptr %4, align 8
  %i.eh = load ptr, ptr %i.bh, align 8
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = and i64 %i.ei, 281474976710655
  %i.ek = inttoptr i64 %i.ej to ptr               ; 4 uses
  %i.el = zext i32 %i.dv to i64                   ; 2 uses
  %.idx.i.i.i.i57 = shl nuw nsw i64 %i.el, 5
  %i.em = getelementptr i8, ptr %i.ek, i64 %.idx.i.i.i.i57 ; 2 uses
  %.not9.i.i.i.i58 = icmp eq i32 %i.dv, 0
  br i1 %.not9.i.i.i.i58, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, label %.lr.ph.i.i.i.i59

.lr.ph.i.i.i.i59:                                 ; preds = %bb.m
  %i.en = lshr i64 %i.ee, 40
  %i.eo = trunc i64 %i.en to i8
  %i.ep = and i64 %i.ef, 1152921504606846976
  %.not.i.i.i.i.i.i.i60 = icmp eq i64 %i.ep, 0    ; 2 uses
  %i.eq = sext i8 %i.eo to i32
  %i.er = sub nsw i32 13, %i.eq
  %i.es = select i1 %.not.i.i.i.i.i.i.i60, i32 %i.dy, i32 %i.er ; 2 uses
  %i.et = and i64 %i.ee, 281474976710655
  %i.eu = inttoptr i64 %i.et to ptr
  %i.ev = select i1 %.not.i.i.i.i.i.i.i60, ptr %i.eu, ptr %4 ; 2 uses
  %i.ew = zext i32 %i.es to i64
  br label %bb.n

bb.n:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64, %.lr.ph.i.i.i.i59
  %.010.i.i.i.i61 = phi ptr [ %i.ek, %.lr.ph.i.i.i.i59 ], [ %i.fo, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64 ] ; 8 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i61, i64 14
  %i.ey = load i16, ptr %i.ex, align 2
  %i.ez = and i16 %i.ey, 4096
  %.not.i.i13.i.i.i.i.i62 = icmp eq i16 %i.ez, 0  ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i61, i64 13
  %i.fb = load i8, ptr %i.fa, align 1
  %i.fc = sext i8 %i.fb to i32
  %i.fd = sub nsw i32 13, %i.fc
  %i.fe = load i32, ptr %.010.i.i.i.i61, align 8
  %i.ff = select i1 %.not.i.i13.i.i.i.i.i62, i32 %i.fe, i32 %i.fd
  %.not.i.i.i.i.i63 = icmp eq i32 %i.es, %i.ff
  br i1 %.not.i.i.i.i.i63, label %bb.o, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64

bb.o:                                             ; preds = %bb.n
  %i.fg = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i61, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = and i64 %i.fi, 281474976710655
  %i.fk = inttoptr i64 %i.fj to ptr
  %i.fl = select i1 %.not.i.i13.i.i.i.i.i62, ptr %i.fk, ptr %.010.i.i.i.i61 ; 2 uses
  %i.fm = icmp eq ptr %i.ev, %i.fl
  br i1 %i.fm, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70: ; preds = %bb.o
  %bcmp.i.i.i.i.i71 = call i32 @bcmp(ptr %i.ev, ptr %i.fl, i64 %i.ew)
  %i.fn = icmp eq i32 %bcmp.i.i.i.i.i71, 0
  br i1 %i.fn, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70, %bb.n
  %i.fo = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i61, i64 32 ; 2 uses
  %.not.i.i.i.i65 = icmp eq ptr %i.fo, %i.em
  br i1 %.not.i.i.i.i65, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, label %bb.n, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70, %bb.o, %bb.m
  %.0.lcssa.i.i.i.i67 = phi ptr [ %i.ek, %bb.m ], [ %.010.i.i.i.i61, %bb.o ], [ %.010.i.i.i.i61, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70 ], [ %i.em, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.fp = getelementptr inbounds nuw [32 x i8], ptr %i.ek, i64 %i.el
  %.not.i68 = icmp ne ptr %.0.lcssa.i.i.i.i67, %i.fp
  call void @llvm.assume(i1 %.not.i68)
  %i.fq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i67, i64 16
  %i.fr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i67, i64 30
  %i.fs = load i16, ptr %i.fr, align 2
  %i.ft = icmp eq i16 %i.fs, 3
  %spec.select.i69 = select i1 %i.ft, ptr %i.fq, ptr null
  br label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit

_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, %bb.j, %bb.b
  %.138 = phi ptr [ %0, %bb.b ], [ %i.cs, %bb.j ], [ %spec.select.i69, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66 ] ; 8 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.fw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fv) #36, !noalias !643
  %i.fx = trunc i64 %i.fw to i32                  ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.fy = getelementptr inbounds nuw i8, ptr %3, i64 14
  store i16 1029, ptr %i.fy, align 2
  %i.fz = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ga = load ptr, ptr %i.fz, align 8
  %i.gb = ptrtoint ptr %i.ga to i64
  %i.gc = and i64 %i.gb, -281474976710656
  %i.gd = ptrtoint ptr %i.fv to i64               ; 4 uses
  %i.ge = or i64 %i.gc, %i.gd                     ; 2 uses
  %i.gf = inttoptr i64 %i.ge to ptr
  store ptr %i.gf, ptr %i.fz, align 8
  store i32 %i.fx, ptr %3, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %.138, i64 8 ; 6 uses
  %i.gh = load ptr, ptr %i.gg, align 8
  %i.gi = ptrtoint ptr %i.gh to i64
  %i.gj = and i64 %i.gi, 281474976710655
  %i.gk = inttoptr i64 %i.gj to ptr               ; 4 uses
  %i.gl = load i32, ptr %.138, align 8            ; 2 uses
  %i.gm = zext i32 %i.gl to i64                   ; 2 uses
  %.idx.i.i.i.i73 = shl nuw nsw i64 %i.gm, 5
  %i.gn = getelementptr i8, ptr %i.gk, i64 %.idx.i.i.i.i73 ; 2 uses
  %.not9.i.i.i.i74 = icmp eq i32 %i.gl, 0
  br i1 %.not9.i.i.i.i74, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, label %.lr.ph.i.i.i.i75

.lr.ph.i.i.i.i75:                                 ; preds = %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit
  %i.go = lshr i64 %i.gd, 40
  %i.gp = trunc i64 %i.go to i8
  %i.gq = and i64 %i.ge, 1152921504606846976
  %.not.i.i.i.i.i.i.i76 = icmp eq i64 %i.gq, 0    ; 2 uses
  %i.gr = sext i8 %i.gp to i32
  %i.gs = sub nsw i32 13, %i.gr
  %i.gt = select i1 %.not.i.i.i.i.i.i.i76, i32 %i.fx, i32 %i.gs ; 2 uses
  %i.gu = and i64 %i.gd, 281474976710655
  %i.gv = inttoptr i64 %i.gu to ptr
  %i.gw = select i1 %.not.i.i.i.i.i.i.i76, ptr %i.gv, ptr %3 ; 2 uses
  %i.gx = zext i32 %i.gt to i64
  br label %bb.p

bb.p:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80, %.lr.ph.i.i.i.i75
  %.010.i.i.i.i77 = phi ptr [ %i.gk, %.lr.ph.i.i.i.i75 ], [ %i.hp, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80 ] ; 8 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i77, i64 14
  %i.gz = load i16, ptr %i.gy, align 2
  %i.ha = and i16 %i.gz, 4096
  %.not.i.i13.i.i.i.i.i78 = icmp eq i16 %i.ha, 0  ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i77, i64 13
  %i.hc = load i8, ptr %i.hb, align 1
  %i.hd = sext i8 %i.hc to i32
  %i.he = sub nsw i32 13, %i.hd
  %i.hf = load i32, ptr %.010.i.i.i.i77, align 8
  %i.hg = select i1 %.not.i.i13.i.i.i.i.i78, i32 %i.hf, i32 %i.he
  %.not.i.i.i.i.i79 = icmp eq i32 %i.gt, %i.hg
  br i1 %.not.i.i.i.i.i79, label %bb.q, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80

bb.q:                                             ; preds = %bb.p
  %i.hh = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i77, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8
  %i.hj = ptrtoint ptr %i.hi to i64
  %i.hk = and i64 %i.hj, 281474976710655
  %i.hl = inttoptr i64 %i.hk to ptr
  %i.hm = select i1 %.not.i.i13.i.i.i.i.i78, ptr %i.hl, ptr %.010.i.i.i.i77 ; 2 uses
  %i.hn = icmp eq ptr %i.gw, %i.hm
  br i1 %i.hn, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86: ; preds = %bb.q
  %bcmp.i.i.i.i.i87 = call i32 @bcmp(ptr %i.gw, ptr %i.hm, i64 %i.gx)
  %i.ho = icmp eq i32 %bcmp.i.i.i.i.i87, 0
  br i1 %i.ho, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86, %bb.p
  %i.hp = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i77, i64 32 ; 2 uses
  %.not.i.i.i.i81 = icmp eq ptr %i.hp, %i.gn
  br i1 %.not.i.i.i.i81, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, label %bb.p, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86, %bb.q, %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit
  %.0.lcssa.i.i.i.i83 = phi ptr [ %i.gk, %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit ], [ %.010.i.i.i.i77, %bb.q ], [ %.010.i.i.i.i77, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86 ], [ %i.gn, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.hq = getelementptr inbounds nuw [32 x i8], ptr %i.gk, i64 %i.gm
  %.not.i84 = icmp eq ptr %.0.lcssa.i.i.i.i83, %i.hq
  br i1 %.not.i84, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82
  %i.hr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i83, i64 16
  %i.hs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i83, i64 30
  %i.ht = load i16, ptr %i.hs, align 2
  %i.hu = icmp eq i16 %i.ht, 3
  br i1 %i.hu, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88, label %bb.s

bb.s:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, %bb.r
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hw = load ptr, ptr %i.hv, align 8
  %i.hx = load i32, ptr %.138, align 8            ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.138, i64 4 ; 2 uses
  %i.hz = load i32, ptr %i.hy, align 4            ; 6 uses
  %.not.i.i.i89 = icmp ult i32 %i.hx, %i.hz
  br i1 %.not.i.i.i89, label %._crit_edge, label %bb.t

._crit_edge:                                      ; preds = %bb.s
  %.pre = load ptr, ptr %i.gg, align 8
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  %.not14.i.i.i90 = icmp eq i32 %i.hz, 0
  %i.ia = add i32 %i.hz, 1
  %i.ib = lshr i32 %i.ia, 1
  %i.ic = add i32 %i.ib, %i.hz
  %i.id = select i1 %.not14.i.i.i90, i32 16, i32 %i.ic ; 3 uses
  %i.ie = icmp ugt i32 %i.id, %i.hz
  %.pre144 = load ptr, ptr %i.gg, align 8         ; 2 uses
  br i1 %i.ie, label %.noexc.i93, label %bb.u

.noexc.i93:                                       ; preds = %bb.t
  %i.if = ptrtoint ptr %.pre144 to i64
  %i.ig = and i64 %i.if, 281474976710655
  %i.ih = inttoptr i64 %i.ig to ptr
  %i.ii = zext i32 %i.hz to i64
  %i.ij = zext i32 %i.id to i64
  %i.ik = shl nuw nsw i64 %i.ii, 5
  %i.il = shl nuw nsw i64 %i.ij, 5
  %i.im = call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.hw, ptr noundef %i.ih, i64 noundef %i.ik, i64 noundef %i.il)
  %i.in = load ptr, ptr %i.gg, align 8
  %i.io = ptrtoint ptr %i.in to i64
  %i.ip = and i64 %i.io, -281474976710656
  %i.iq = ptrtoint ptr %i.im to i64
  %i.ir = or i64 %i.ip, %i.iq
  %i.is = inttoptr i64 %i.ir to ptr               ; 2 uses
  store ptr %i.is, ptr %i.gg, align 8
  store i32 %i.id, ptr %i.hy, align 4
  %.pre.i.i.i94 = load i32, ptr %.138, align 8
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge, %.noexc.i93, %bb.t
  %i.it = phi ptr [ %i.is, %.noexc.i93 ], [ %.pre144, %bb.t ], [ %.pre, %._crit_edge ]
  %i.iu = phi i32 [ %.pre.i.i.i94, %.noexc.i93 ], [ %i.hx, %bb.t ], [ %i.hx, %._crit_edge ]
  %i.iv = or i64 %i.gd, 289637751035265024
  %i.iw = inttoptr i64 %i.iv to ptr
  %i.ix = ptrtoint ptr %i.it to i64
  %i.iy = and i64 %i.ix, 281474976710655
  %i.iz = inttoptr i64 %i.iy to ptr
  %i.ja = zext i32 %i.iu to i64
  %i.jb = getelementptr inbounds nuw [32 x i8], ptr %i.iz, i64 %i.ja ; 5 uses
  store i32 %i.fx, ptr %i.jb, align 8
  %.sroa.6.0..sroa_idx.i91 = getelementptr inbounds nuw i8, ptr %i.jb, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i91, align 4
  %.sroa.65.0..sroa_idx.i92 = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  store ptr %i.iw, ptr %.sroa.65.0..sroa_idx.i92, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  store <14 x i8> zeroinitializer, ptr %i.jc, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jb, i64 30
  store i16 3, ptr %.sroa.6.0..sroa_idx, align 2
  %i.jd = load i32, ptr %.138, align 8
  %i.je = add i32 %i.jd, 1
  store i32 %i.je, ptr %.138, align 8
  %i.jf = load ptr, ptr %i.fu, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.jg = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.jf) #36, !noalias !646
  %i.jh = trunc i64 %i.jg to i32                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.ji = getelementptr inbounds nuw i8, ptr %2, i64 14
  store i16 1029, ptr %i.ji, align 2
  %i.jj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.jk = load ptr, ptr %i.jj, align 8
  %i.jl = ptrtoint ptr %i.jk to i64
  %i.jm = and i64 %i.jl, -281474976710656
  %i.jn = ptrtoint ptr %i.jf to i64               ; 3 uses
  %i.jo = or i64 %i.jm, %i.jn                     ; 2 uses
  %i.jp = inttoptr i64 %i.jo to ptr
  store ptr %i.jp, ptr %i.jj, align 8
  store i32 %i.jh, ptr %2, align 8
  %i.jq = load ptr, ptr %i.gg, align 8
  %i.jr = ptrtoint ptr %i.jq to i64
  %i.js = and i64 %i.jr, 281474976710655
  %i.jt = inttoptr i64 %i.js to ptr               ; 4 uses
  %i.ju = load i32, ptr %.138, align 8            ; 2 uses
  %i.jv = zext i32 %i.ju to i64                   ; 2 uses
  %.idx.i.i.i.i97 = shl nuw nsw i64 %i.jv, 5
  %i.jw = getelementptr i8, ptr %i.jt, i64 %.idx.i.i.i.i97 ; 2 uses
  %.not9.i.i.i.i98 = icmp eq i32 %i.ju, 0
  br i1 %.not9.i.i.i.i98, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, label %.lr.ph.i.i.i.i99

.lr.ph.i.i.i.i99:                                 ; preds = %bb.u
  %i.jx = lshr i64 %i.jn, 40
  %i.jy = trunc i64 %i.jx to i8
  %i.jz = and i64 %i.jo, 1152921504606846976
  %.not.i.i.i.i.i.i.i100 = icmp eq i64 %i.jz, 0   ; 2 uses
  %i.ka = sext i8 %i.jy to i32
  %i.kb = sub nsw i32 13, %i.ka
  %i.kc = select i1 %.not.i.i.i.i.i.i.i100, i32 %i.jh, i32 %i.kb ; 2 uses
  %i.kd = and i64 %i.jn, 281474976710655
  %i.ke = inttoptr i64 %i.kd to ptr
  %i.kf = select i1 %.not.i.i.i.i.i.i.i100, ptr %i.ke, ptr %2 ; 2 uses
  %i.kg = zext i32 %i.kc to i64
  br label %bb.v

bb.v:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104, %.lr.ph.i.i.i.i99
  %.010.i.i.i.i101 = phi ptr [ %i.jt, %.lr.ph.i.i.i.i99 ], [ %i.ky, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104 ] ; 8 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i101, i64 14
  %i.ki = load i16, ptr %i.kh, align 2
  %i.kj = and i16 %i.ki, 4096
  %.not.i.i13.i.i.i.i.i102 = icmp eq i16 %i.kj, 0 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i101, i64 13
  %i.kl = load i8, ptr %i.kk, align 1
  %i.km = sext i8 %i.kl to i32
  %i.kn = sub nsw i32 13, %i.km
  %i.ko = load i32, ptr %.010.i.i.i.i101, align 8
  %i.kp = select i1 %.not.i.i13.i.i.i.i.i102, i32 %i.ko, i32 %i.kn
  %.not.i.i.i.i.i103 = icmp eq i32 %i.kc, %i.kp
  br i1 %.not.i.i.i.i.i103, label %bb.w, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104

bb.w:                                             ; preds = %bb.v
  %i.kq = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i101, i64 8
  %i.kr = load ptr, ptr %i.kq, align 8
  %i.ks = ptrtoint ptr %i.kr to i64
  %i.kt = and i64 %i.ks, 281474976710655
  %i.ku = inttoptr i64 %i.kt to ptr
  %i.kv = select i1 %.not.i.i13.i.i.i.i.i102, ptr %i.ku, ptr %.010.i.i.i.i101 ; 2 uses
  %i.kw = icmp eq ptr %i.kf, %i.kv
  br i1 %i.kw, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110: ; preds = %bb.w
  %bcmp.i.i.i.i.i111 = call i32 @bcmp(ptr %i.kf, ptr %i.kv, i64 %i.kg)
  %i.kx = icmp eq i32 %bcmp.i.i.i.i.i111, 0
  br i1 %i.kx, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110, %bb.v
  %i.ky = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i101, i64 32 ; 2 uses
  %.not.i.i.i.i105 = icmp eq ptr %i.ky, %i.jw
  br i1 %.not.i.i.i.i105, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, label %bb.v, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110, %bb.w, %bb.u
  %.0.lcssa.i.i.i.i107 = phi ptr [ %i.jt, %bb.u ], [ %.010.i.i.i.i101, %bb.w ], [ %.010.i.i.i.i101, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110 ], [ %i.jw, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.kz = getelementptr inbounds nuw [32 x i8], ptr %i.jt, i64 %i.jv
  %.not.i108 = icmp eq ptr %.0.lcssa.i.i.i.i107, %i.kz
  br i1 %.not.i108, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88, label %bb.x

bb.x:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106
  %i.la = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i107, i64 16
  %i.lb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i107, i64 30
  %i.lc = load i16, ptr %i.lb, align 2
  %i.ld = icmp eq i16 %i.lc, 3
  %spec.select.i109 = select i1 %i.ld, ptr %i.la, ptr null
  br label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88

_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88: ; preds = %bb.x, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, %bb.r
  %.031 = phi ptr [ %i.hr, %bb.r ], [ null, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106 ], [ %spec.select.i109, %bb.x ] ; 6 uses
  %i.le = load ptr, ptr %i.c, align 8
  %i.lf = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not143 = icmp eq ptr %i.le, %i.lf
  br i1 %.not143, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88
  %i.lg = getelementptr inbounds nuw i8, ptr %6, i64 14
  %i.lh = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.lk = or i64 ptrtoint (ptr @.str.88 to i64), 289637751035265024
  %i.ll = inttoptr i64 %i.lk to ptr
  %i.lm = getelementptr inbounds nuw i8, ptr %.031, i64 4 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.031, i64 8 ; 4 uses
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph, %bb.ad
  %i.lo = phi ptr [ %i.lf, %.lr.ph ], [ %i.ov, %bb.ad ]
  %.0142 = phi i64 [ 0, %.lr.ph ], [ %i.ot, %bb.ad ] ; 5 uses
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.lo, i64 %.0142
  %i.lq = load ptr, ptr %i.lp, align 8            ; 2 uses
  %i.lr = load ptr, ptr %i.lq, align 8
  %i.ls = load ptr, ptr %i.lr, align 8
  %i.lt = call noundef zeroext i1 %i.ls(ptr noundef nonnull align 8 dereferenceable(72) %i.lq)
  br i1 %i.lt, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  store i16 3, ptr %i.lg, align 2
  %i.lu = load ptr, ptr %i.a, align 8
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.lu, i64 %.0142
  %i.lw = load ptr, ptr %i.lv, align 8            ; 3 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 48
  %i.ly = load i64, ptr %i.lx, align 8
  %i.lz = icmp eq i64 %i.ly, 0
  br i1 %i.lz, label %bb.aa, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit: ; preds = %bb.z
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lw, i64 40
  %i.mb = load ptr, ptr %i.ma, align 8            ; 2 uses
  %i.mc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.mb) #36, !noalias !649
  %i.md = trunc i64 %i.mc to i32
  %i.me = load ptr, ptr %i.li, align 8, !nonnull !16, !align !112
  %i.mf = load ptr, ptr %i.lj, align 8
  %i.mg = ptrtoint ptr %i.mf to i64
  %i.mh = and i64 %i.mg, 281474976710655
  %i.mi = inttoptr i64 %i.mh to ptr
  %i.mj = call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.me, ptr noundef %i.mi, i64 noundef 0, i64 noundef 512)
  %i.mk = load ptr, ptr %i.lj, align 8
  %i.ml = ptrtoint ptr %i.mk to i64
  %i.mm = and i64 %i.ml, -281474976710656
  %i.mn = ptrtoint ptr %i.mj to i64               ; 2 uses
  %i.mo = or i64 %i.mm, %i.mn
  %i.mp = inttoptr i64 %i.mo to ptr
  store ptr %i.mp, ptr %i.lj, align 8
  store i32 16, ptr %i.lh, align 4
  %.pre.i.i.i.i = load i32, ptr %6, align 8
  %i.mq = zext i32 %.pre.i.i.i.i to i64
  %i.mr = ptrtoint ptr %i.mb to i64
  %i.ms = or i64 %i.mr, 289637751035265024
  %i.mt = inttoptr i64 %i.ms to ptr
  %i.mu = and i64 %i.mn, 281474976710655
  %i.mv = inttoptr i64 %i.mu to ptr
  %i.mw = getelementptr inbounds nuw [32 x i8], ptr %i.mv, i64 %i.mq ; 6 uses
  store i32 4, ptr %i.mw, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mw, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i.i, align 4
  %.sroa.65.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  store ptr %i.ll, ptr %.sroa.65.0..sroa_idx.i.i, align 8
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 16
  store i32 %i.md, ptr %i.mx, align 8
  %.sroa.6.0..sroa_idx.i114 = getelementptr inbounds nuw i8, ptr %i.mw, i64 20
  store i32 0, ptr %.sroa.6.0..sroa_idx.i114, align 4
  %.sroa.66.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mw, i64 24
  store ptr %i.mt, ptr %.sroa.66.0..sroa_idx.i, align 8
  %i.my = load i32, ptr %6, align 8
  %i.mz = add i32 %i.my, 1
  store i32 %i.mz, ptr %6, align 8
  %.pre146 = load ptr, ptr %i.a, align 8
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre146, i64 %.0142
  %.pre147 = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit, %bb.z
  %i.na = phi ptr [ %.pre147, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit ], [ %i.lw, %bb.z ]
  call void @_ZN4glTF5WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_5ImageERNS_11AssetWriterE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(176) %i.na, ptr noundef nonnull align 8 dereferenceable(112) %0)
  %i.nb = load ptr, ptr %i.a, align 8
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.nb, i64 %.0142
  %i.nd = load ptr, ptr %i.nc, align 8            ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  %i.nf = load ptr, ptr %i.ne, align 8, !noalias !652 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nd, i64 16
  %i.nh = load i64, ptr %i.ng, align 8, !noalias !652
  %i.ni = trunc i64 %i.nh to i32
  %.not.i.i = icmp eq ptr %i.nf, null
  %i.nj = select i1 %.not.i.i, ptr @_ZN9rapidjson16GenericStringRefIcE11emptyStringE, ptr %i.nf, !prof !6
  %i.nk = load ptr, ptr %i.li, align 8, !nonnull !16, !align !112
  %i.nl = load i32, ptr %.031, align 8            ; 3 uses
  %i.nm = load i32, ptr %i.lm, align 4            ; 6 uses
  %.not.i.i.i116 = icmp ult i32 %i.nl, %i.nm
  br i1 %.not.i.i.i116, label %._crit_edge148, label %bb.ab

._crit_edge148:                                   ; preds = %bb.aa
  %.pre149 = load ptr, ptr %i.ln, align 8
  br label %bb.ac

end_hunk_11
begin_hunk_12_@_ZN4glTF8LazyDictINS_8MaterialEE16AttachToDocumentERN9rapidjson15GenericDocumentINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEES8_EE:bb.a
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = and i64 %i.q, 281474976710655
  %i.s = inttoptr i64 %i.r to ptr                 ; 4 uses
  %i.t = load i32, ptr %i.c, align 8              ; 2 uses
  %i.u = zext i32 %i.t to i64                     ; 2 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.u, 5
  %i.v = getelementptr i8, ptr %i.s, i64 %.idx.i.i.i.i ; 2 uses
  %.not9.i.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not9.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c
  %i.w = lshr i64 %i.l, 40
  %i.x = trunc i64 %i.w to i8
  %i.y = and i64 %i.m, 1152921504606846976
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.y, 0       ; 2 uses
  %i.z = sext i8 %i.x to i32
  %i.aa = sub nsw i32 13, %i.z
  %i.ab = select i1 %.not.i.i.i.i.i.i.i, i32 %i.f, i32 %i.aa ; 2 uses
  %i.ac = and i64 %i.l, 281474976710655
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = select i1 %.not.i.i.i.i.i.i.i, ptr %i.ad, ptr %3 ; 2 uses
  %i.af = zext i32 %i.ab to i64
  br label %bb.d

bb.d:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %.lr.ph.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i ], [ %i.ax, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 14
  %i.ah = load i16, ptr %i.ag, align 2
  %i.ai = and i16 %i.ah, 4096
  %.not.i.i13.i.i.i.i.i = icmp eq i16 %i.ai, 0    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 13
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = sext i8 %i.ak to i32
  %i.am = sub nsw i32 13, %i.al
  %i.an = load i32, ptr %.010.i.i.i.i, align 8
  %i.ao = select i1 %.not.i.i13.i.i.i.i.i, i32 %i.an, i32 %i.am
  %.not.i.i.i.i.i = icmp eq i32 %i.ab, %i.ao
  br i1 %.not.i.i.i.i.i, label %bb.e, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = and i64 %i.ar, 281474976710655
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = select i1 %.not.i.i13.i.i.i.i.i, ptr %i.at, ptr %.010.i.i.i.i ; 2 uses
  %i.av = icmp eq ptr %i.ae, %i.au
  br i1 %i.av, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i: ; preds = %bb.e
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %i.ae, ptr %i.au, i64 %i.af)
  %i.aw = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.aw, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ax, %i.v
  br i1 %.not.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %bb.d, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.e, %bb.c
  %.0.lcssa.i.i.i.i = phi ptr [ %i.s, %bb.c ], [ %.010.i.i.i.i, %bb.e ], [ %.010.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i ], [ %i.v, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.ay = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %i.u
  %.not.i = icmp eq ptr %.0.lcssa.i.i.i.i, %i.ay
  br i1 %.not.i, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 30
  %i.bb = load i16, ptr %i.ba, align 2
  %i.bc = icmp eq i16 %i.bb, 3
  br i1 %i.bc, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread

_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit: ; preds = %bb.f, %bb.a
  %.1 = phi ptr [ %1, %bb.a ], [ %i.az, %bb.f ]   ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.bf = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.be) #36, !noalias !671
  %i.bg = trunc i64 %i.bf to i32                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 14
  store i16 1029, ptr %i.bh, align 2
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = and i64 %i.bk, -281474976710656
  %i.bm = ptrtoint ptr %i.be to i64               ; 3 uses
  %i.bn = or i64 %i.bl, %i.bm                     ; 2 uses
  %i.bo = inttoptr i64 %i.bn to ptr
  store ptr %i.bo, ptr %i.bi, align 8
  store i32 %i.bg, ptr %2, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = and i64 %i.br, 281474976710655
  %i.bt = inttoptr i64 %i.bs to ptr               ; 4 uses
  %i.bu = load i32, ptr %.1, align 8              ; 2 uses
  %i.bv = zext i32 %i.bu to i64                   ; 2 uses
  %.idx.i.i.i.i10 = shl nuw nsw i64 %i.bv, 5
  %i.bw = getelementptr i8, ptr %i.bt, i64 %.idx.i.i.i.i10 ; 2 uses
  %.not9.i.i.i.i11 = icmp eq i32 %i.bu, 0
  br i1 %.not9.i.i.i.i11, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19, label %.lr.ph.i.i.i.i12

.lr.ph.i.i.i.i12:                                 ; preds = %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit
  %i.bx = lshr i64 %i.bm, 40
  %i.by = trunc i64 %i.bx to i8
  %i.bz = and i64 %i.bn, 1152921504606846976
  %.not.i.i.i.i.i.i.i13 = icmp eq i64 %i.bz, 0    ; 2 uses
  %i.ca = sext i8 %i.by to i32
  %i.cb = sub nsw i32 13, %i.ca
  %i.cc = select i1 %.not.i.i.i.i.i.i.i13, i32 %i.bg, i32 %i.cb ; 2 uses
  %i.cd = and i64 %i.bm, 281474976710655
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = select i1 %.not.i.i.i.i.i.i.i13, ptr %i.ce, ptr %2 ; 2 uses
  %i.cg = zext i32 %i.cc to i64
  br label %bb.g

bb.g:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17, %.lr.ph.i.i.i.i12
  %.010.i.i.i.i14 = phi ptr [ %i.bt, %.lr.ph.i.i.i.i12 ], [ %i.cy, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17 ] ; 8 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i14, i64 14
  %i.ci = load i16, ptr %i.ch, align 2
  %i.cj = and i16 %i.ci, 4096
  %.not.i.i13.i.i.i.i.i15 = icmp eq i16 %i.cj, 0  ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i14, i64 13
  %i.cl = load i8, ptr %i.ck, align 1
  %i.cm = sext i8 %i.cl to i32
  %i.cn = sub nsw i32 13, %i.cm
  %i.co = load i32, ptr %.010.i.i.i.i14, align 8
  %i.cp = select i1 %.not.i.i13.i.i.i.i.i15, i32 %i.co, i32 %i.cn
  %.not.i.i.i.i.i16 = icmp eq i32 %i.cc, %i.cp
  br i1 %.not.i.i.i.i.i16, label %bb.h, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17

bb.h:                                             ; preds = %bb.g
  %i.cq = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i14, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = and i64 %i.cs, 281474976710655
  %i.cu = inttoptr i64 %i.ct to ptr
  %i.cv = select i1 %.not.i.i13.i.i.i.i.i15, ptr %i.cu, ptr %.010.i.i.i.i14 ; 2 uses
  %i.cw = icmp eq ptr %i.cf, %i.cv
  br i1 %i.cw, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i23

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i23: ; preds = %bb.h
  %bcmp.i.i.i.i.i24 = call i32 @bcmp(ptr %i.cf, ptr %i.cv, i64 %i.cg)
  %i.cx = icmp eq i32 %bcmp.i.i.i.i.i24, 0
  br i1 %i.cx, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i23, %bb.g
  %i.cy = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i14, i64 32 ; 2 uses
  %.not.i.i.i.i18 = icmp eq ptr %i.cy, %i.bw
  br i1 %.not.i.i.i.i18, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19, label %bb.g, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i23, %bb.h, %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit
  %.0.lcssa.i.i.i.i20 = phi ptr [ %i.bt, %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit ], [ %.010.i.i.i.i14, %bb.h ], [ %.010.i.i.i.i14, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i23 ], [ %i.bw, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.cz = getelementptr inbounds nuw [32 x i8], ptr %i.bt, i64 %i.bv
  %.not.i21 = icmp eq ptr %.0.lcssa.i.i.i.i20, %i.cz
  br i1 %.not.i21, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit25, label %bb.i

bb.i:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19
  %i.da = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i20, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i20, i64 30
  %i.dc = load i16, ptr %i.db, align 2
  %i.dd = icmp eq i16 %i.dc, 3
  %spec.select.i22 = select i1 %i.dd, ptr %i.da, ptr null
  br label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit25

_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit25: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19, %bb.i
  %i.de = phi ptr [ null, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19 ], [ %spec.select.i22, %bb.i ]
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.de, ptr %i.df, align 8
  br label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread

_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread: ; preds = %bb.f, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, %bb.b, %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit25
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4glTF8LazyDictINS_8MaterialEE18DetachFromDocumentEv(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr null, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4glTF8LazyDictINS_8MaterialEE12WriteObjectsERNS_11AssetWriterE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN4glTF11AssetWriter12WriteObjectsINS_8MaterialEEEvRNS_8LazyDictIT_EE(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(120) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4glTF11AssetWriter12WriteObjectsINS_8MaterialEEEvRNS_8LazyDictIT_EE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(120) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %3 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %4 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %5 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %6 = alloca %"class.rapidjson::GenericValue", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef ptr @_ZN10glTFCommon19FindObjectInContextERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKcSA_SA_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.209, ptr noundef null) ; 2 uses
  %.not42 = icmp eq ptr %i.h, null
  br i1 %.not42, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load i32, ptr %0, align 8                ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4              ; 6 uses
  %.not.i.i.i = icmp ult i32 %i.k, %i.m
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not14.i.i.i = icmp eq i32 %i.m, 0
  %i.n = add i32 %i.m, 1
  %i.o = lshr i32 %i.n, 1
  %i.p = add i32 %i.o, %i.m
  %i.q = select i1 %.not14.i.i.i, i32 16, i32 %i.p ; 3 uses
  %i.r = icmp ugt i32 %i.q, %i.m
  br i1 %i.r, label %.noexc.i, label %bb.f

.noexc.i:                                         ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = and i64 %i.u, 281474976710655
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = zext i32 %i.m to i64
  %i.y = zext i32 %i.q to i64
  %i.z = shl nuw nsw i64 %i.x, 5
  %i.aa = shl nuw nsw i64 %i.y, 5
  %i.ab = tail call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef %i.w, i64 noundef %i.z, i64 noundef %i.aa)
  %i.ac = load ptr, ptr %i.s, align 8
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = and i64 %i.ad, -281474976710656
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = or i64 %i.ae, %i.af
  %i.ah = inttoptr i64 %i.ag to ptr
  store ptr %i.ah, ptr %i.s, align 8
  store i32 %i.q, ptr %i.l, align 4
  %.pre.i.i.i = load i32, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %.noexc.i, %bb.e, %bb.d
  %i.ai = phi i32 [ %.pre.i.i.i, %.noexc.i ], [ %i.k, %bb.e ], [ %i.k, %bb.d ]
  %i.aj = or i64 ptrtoint (ptr @.str.93 to i64), 289637751035265024
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = and i64 %i.an, 281474976710655
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = zext i32 %i.ai to i64
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %i.ap, i64 %i.aq ; 5 uses
  store i32 10, ptr %i.ar, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i, align 4
  %.sroa.65.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.ak, ptr %.sroa.65.0..sroa_idx.i, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.as, i8 0, i64 14, i1 false)
  %.sroa.6136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 30
  store i16 3, ptr %.sroa.6136.0..sroa_idx, align 2
  %i.at = load i32, ptr %0, align 8
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr %0, align 8
  %i.av = tail call noundef ptr @_ZN10glTFCommon19FindObjectInContextERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKcSA_SA_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.209, ptr noundef null)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.036 = phi ptr [ %i.h, %bb.c ], [ %i.av, %bb.f ] ; 6 uses
  %i.aw = load ptr, ptr %i.f, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.ax = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aw) #36, !noalias !674
  %i.ay = trunc i64 %i.ax to i32                  ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 14
  store i16 1029, ptr %i.az, align 2
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = and i64 %i.bc, -281474976710656
  %i.be = ptrtoint ptr %i.aw to i64               ; 4 uses
  %i.bf = or i64 %i.bd, %i.be                     ; 2 uses
  %i.bg = inttoptr i64 %i.bf to ptr
  store ptr %i.bg, ptr %i.ba, align 8
  store i32 %i.ay, ptr %5, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.036, i64 8 ; 4 uses
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = and i64 %i.bj, 281474976710655
  %i.bl = inttoptr i64 %i.bk to ptr               ; 7 uses
  %i.bm = load i32, ptr %.036, align 8            ; 3 uses
  %i.bn = zext i32 %i.bm to i64                   ; 4 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.bn, 5
  %i.bo = getelementptr i8, ptr %i.bl, i64 %.idx.i.i.i.i ; 2 uses
  %.not9.i.i.i.i = icmp eq i32 %i.bm, 0
  br i1 %.not9.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g
  %i.bp = lshr i64 %i.be, 40
  %i.bq = trunc i64 %i.bp to i8
  %i.br = and i64 %i.bf, 1152921504606846976
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.br, 0      ; 2 uses
  %i.bs = sext i8 %i.bq to i32
  %i.bt = sub nsw i32 13, %i.bs
  %i.bu = select i1 %.not.i.i.i.i.i.i.i, i32 %i.ay, i32 %i.bt ; 2 uses
  %i.bv = and i64 %i.be, 281474976710655
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = select i1 %.not.i.i.i.i.i.i.i, ptr %i.bw, ptr %5 ; 2 uses
  %i.by = zext i32 %i.bu to i64
  br label %bb.h

bb.h:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %.lr.ph.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i ], [ %i.cq, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 8 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 14
  %i.ca = load i16, ptr %i.bz, align 2
  %i.cb = and i16 %i.ca, 4096
  %.not.i.i13.i.i.i.i.i = icmp eq i16 %i.cb, 0    ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 13
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = sext i8 %i.cd to i32
  %i.cf = sub nsw i32 13, %i.ce
  %i.cg = load i32, ptr %.010.i.i.i.i, align 8
  %i.ch = select i1 %.not.i.i13.i.i.i.i.i, i32 %i.cg, i32 %i.cf
  %.not.i.i.i.i.i = icmp eq i32 %i.bu, %i.ch
  br i1 %.not.i.i.i.i.i, label %bb.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.ci = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = and i64 %i.ck, 281474976710655
  %i.cm = inttoptr i64 %i.cl to ptr
  %i.cn = select i1 %.not.i.i13.i.i.i.i.i, ptr %i.cm, ptr %.010.i.i.i.i ; 2 uses
  %i.co = icmp eq ptr %i.bx, %i.cn
  br i1 %i.co, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i: ; preds = %bb.i
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %i.bx, ptr %i.cn, i64 %i.by)
  %i.cp = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.cp, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.h
  %i.cq = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cq, %i.bo
  br i1 %.not.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %bb.h, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.i, %bb.g
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bl, %bb.g ], [ %.010.i.i.i.i, %bb.i ], [ %.010.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i ], [ %i.bo, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.cr = getelementptr inbounds nuw [32 x i8], ptr %i.bl, i64 %i.bn
  %.not.i = icmp eq ptr %.0.lcssa.i.i.i.i, %i.cr
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 30
  %i.cu = load i16, ptr %i.ct, align 2
  %i.cv = icmp eq i16 %i.cu, 3
  br i1 %i.cv, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit, label %bb.k

bb.k:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, %bb.j
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %.036, i64 4 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4            ; 6 uses
  %.not.i.i.i49 = icmp ult i32 %i.bm, %i.cz
  br i1 %.not.i.i.i49, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not14.i.i.i50 = icmp eq i32 %i.cz, 0
  %i.da = add i32 %i.cz, 1
  %i.db = lshr i32 %i.da, 1
  %i.dc = add i32 %i.db, %i.cz
  %i.dd = select i1 %.not14.i.i.i50, i32 16, i32 %i.dc ; 3 uses
  %i.de = icmp ugt i32 %i.dd, %i.cz
  br i1 %i.de, label %.noexc.i53, label %bb.m

.noexc.i53:                                       ; preds = %bb.l
  %i.df = zext i32 %i.cz to i64
  %i.dg = zext i32 %i.dd to i64
  %i.dh = shl nuw nsw i64 %i.df, 5
  %i.di = shl nuw nsw i64 %i.dg, 5
end_hunk_12
begin_hunk_13_@_ZN4glTF11AssetWriter12WriteObjectsINS_8MaterialEEEvRNS_8LazyDictIT_EE:bb.a
  %.pre-phi157 = phi i64 [ %.pre156, %.noexc.i53 ], [ %i.bn, %bb.l ], [ %i.bn, %bb.k ]
  %.pre-phi155 = phi ptr [ %.pre154, %.noexc.i53 ], [ %i.bl, %bb.l ], [ %i.bl, %bb.k ]
  %i.dq = or i64 %i.be, 289637751035265024
  %i.dr = inttoptr i64 %i.dq to ptr
  %i.ds = getelementptr inbounds nuw [32 x i8], ptr %.pre-phi155, i64 %.pre-phi157 ; 5 uses
  store i32 %i.ay, ptr %i.ds, align 8
  %.sroa.6.0..sroa_idx.i51 = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i51, align 4
  %.sroa.65.0..sroa_idx.i52 = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store ptr %i.dr, ptr %.sroa.65.0..sroa_idx.i52, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.dt, i8 0, i64 14, i1 false)
  %.sroa.6132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 30
  store i16 3, ptr %.sroa.6132.0..sroa_idx, align 2
  %i.du = load i32, ptr %.036, align 8
  %i.dv = add i32 %i.du, 1                        ; 3 uses
  store i32 %i.dv, ptr %.036, align 8
  %i.dw = load ptr, ptr %i.f, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.dx = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dw) #36, !noalias !677
  %i.dy = trunc i64 %i.dx to i32                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 14
  store i16 1029, ptr %i.dz, align 2
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = and i64 %i.ec, -281474976710656
  %i.ee = ptrtoint ptr %i.dw to i64               ; 3 uses
  %i.ef = or i64 %i.ed, %i.ee                     ; 2 uses
  %i.eg = inttoptr i64 %i.ef to ptr
  store ptr %i.eg, ptr %i.ea, align 8
  store i32 %i.dy, ptr %4, align 8
  %i.eh = load ptr, ptr %i.bh, align 8
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = and i64 %i.ei, 281474976710655
  %i.ek = inttoptr i64 %i.ej to ptr               ; 4 uses
  %i.el = zext i32 %i.dv to i64                   ; 2 uses
  %.idx.i.i.i.i57 = shl nuw nsw i64 %i.el, 5
  %i.em = getelementptr i8, ptr %i.ek, i64 %.idx.i.i.i.i57 ; 2 uses
  %.not9.i.i.i.i58 = icmp eq i32 %i.dv, 0
  br i1 %.not9.i.i.i.i58, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, label %.lr.ph.i.i.i.i59

.lr.ph.i.i.i.i59:                                 ; preds = %bb.m
  %i.en = lshr i64 %i.ee, 40
  %i.eo = trunc i64 %i.en to i8
  %i.ep = and i64 %i.ef, 1152921504606846976
  %.not.i.i.i.i.i.i.i60 = icmp eq i64 %i.ep, 0    ; 2 uses
  %i.eq = sext i8 %i.eo to i32
  %i.er = sub nsw i32 13, %i.eq
  %i.es = select i1 %.not.i.i.i.i.i.i.i60, i32 %i.dy, i32 %i.er ; 2 uses
  %i.et = and i64 %i.ee, 281474976710655
  %i.eu = inttoptr i64 %i.et to ptr
  %i.ev = select i1 %.not.i.i.i.i.i.i.i60, ptr %i.eu, ptr %4 ; 2 uses
  %i.ew = zext i32 %i.es to i64
  br label %bb.n

bb.n:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64, %.lr.ph.i.i.i.i59
  %.010.i.i.i.i61 = phi ptr [ %i.ek, %.lr.ph.i.i.i.i59 ], [ %i.fo, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64 ] ; 8 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i61, i64 14
  %i.ey = load i16, ptr %i.ex, align 2
  %i.ez = and i16 %i.ey, 4096
  %.not.i.i13.i.i.i.i.i62 = icmp eq i16 %i.ez, 0  ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i61, i64 13
  %i.fb = load i8, ptr %i.fa, align 1
  %i.fc = sext i8 %i.fb to i32
  %i.fd = sub nsw i32 13, %i.fc
  %i.fe = load i32, ptr %.010.i.i.i.i61, align 8
  %i.ff = select i1 %.not.i.i13.i.i.i.i.i62, i32 %i.fe, i32 %i.fd
  %.not.i.i.i.i.i63 = icmp eq i32 %i.es, %i.ff
  br i1 %.not.i.i.i.i.i63, label %bb.o, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64

bb.o:                                             ; preds = %bb.n
  %i.fg = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i61, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = and i64 %i.fi, 281474976710655
  %i.fk = inttoptr i64 %i.fj to ptr
  %i.fl = select i1 %.not.i.i13.i.i.i.i.i62, ptr %i.fk, ptr %.010.i.i.i.i61 ; 2 uses
  %i.fm = icmp eq ptr %i.ev, %i.fl
  br i1 %i.fm, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70: ; preds = %bb.o
  %bcmp.i.i.i.i.i71 = call i32 @bcmp(ptr %i.ev, ptr %i.fl, i64 %i.ew)
  %i.fn = icmp eq i32 %bcmp.i.i.i.i.i71, 0
  br i1 %i.fn, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70, %bb.n
  %i.fo = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i61, i64 32 ; 2 uses
  %.not.i.i.i.i65 = icmp eq ptr %i.fo, %i.em
  br i1 %.not.i.i.i.i65, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, label %bb.n, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70, %bb.o, %bb.m
  %.0.lcssa.i.i.i.i67 = phi ptr [ %i.ek, %bb.m ], [ %.010.i.i.i.i61, %bb.o ], [ %.010.i.i.i.i61, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70 ], [ %i.em, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.fp = getelementptr inbounds nuw [32 x i8], ptr %i.ek, i64 %i.el
  %.not.i68 = icmp ne ptr %.0.lcssa.i.i.i.i67, %i.fp
  call void @llvm.assume(i1 %.not.i68)
  %i.fq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i67, i64 16
  %i.fr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i67, i64 30
  %i.fs = load i16, ptr %i.fr, align 2
  %i.ft = icmp eq i16 %i.fs, 3
  %spec.select.i69 = select i1 %i.ft, ptr %i.fq, ptr null
  br label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit

_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, %bb.j, %bb.b
  %.138 = phi ptr [ %0, %bb.b ], [ %i.cs, %bb.j ], [ %spec.select.i69, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66 ] ; 8 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.fw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fv) #36, !noalias !680
  %i.fx = trunc i64 %i.fw to i32                  ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.fy = getelementptr inbounds nuw i8, ptr %3, i64 14
  store i16 1029, ptr %i.fy, align 2
  %i.fz = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ga = load ptr, ptr %i.fz, align 8
  %i.gb = ptrtoint ptr %i.ga to i64
  %i.gc = and i64 %i.gb, -281474976710656
  %i.gd = ptrtoint ptr %i.fv to i64               ; 4 uses
  %i.ge = or i64 %i.gc, %i.gd                     ; 2 uses
  %i.gf = inttoptr i64 %i.ge to ptr
  store ptr %i.gf, ptr %i.fz, align 8
  store i32 %i.fx, ptr %3, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %.138, i64 8 ; 6 uses
  %i.gh = load ptr, ptr %i.gg, align 8
  %i.gi = ptrtoint ptr %i.gh to i64
  %i.gj = and i64 %i.gi, 281474976710655
  %i.gk = inttoptr i64 %i.gj to ptr               ; 4 uses
  %i.gl = load i32, ptr %.138, align 8            ; 2 uses
  %i.gm = zext i32 %i.gl to i64                   ; 2 uses
  %.idx.i.i.i.i73 = shl nuw nsw i64 %i.gm, 5
  %i.gn = getelementptr i8, ptr %i.gk, i64 %.idx.i.i.i.i73 ; 2 uses
  %.not9.i.i.i.i74 = icmp eq i32 %i.gl, 0
  br i1 %.not9.i.i.i.i74, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, label %.lr.ph.i.i.i.i75

.lr.ph.i.i.i.i75:                                 ; preds = %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit
  %i.go = lshr i64 %i.gd, 40
  %i.gp = trunc i64 %i.go to i8
  %i.gq = and i64 %i.ge, 1152921504606846976
  %.not.i.i.i.i.i.i.i76 = icmp eq i64 %i.gq, 0    ; 2 uses
  %i.gr = sext i8 %i.gp to i32
  %i.gs = sub nsw i32 13, %i.gr
  %i.gt = select i1 %.not.i.i.i.i.i.i.i76, i32 %i.fx, i32 %i.gs ; 2 uses
  %i.gu = and i64 %i.gd, 281474976710655
  %i.gv = inttoptr i64 %i.gu to ptr
  %i.gw = select i1 %.not.i.i.i.i.i.i.i76, ptr %i.gv, ptr %3 ; 2 uses
  %i.gx = zext i32 %i.gt to i64
  br label %bb.p

bb.p:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80, %.lr.ph.i.i.i.i75
  %.010.i.i.i.i77 = phi ptr [ %i.gk, %.lr.ph.i.i.i.i75 ], [ %i.hp, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80 ] ; 8 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i77, i64 14
  %i.gz = load i16, ptr %i.gy, align 2
  %i.ha = and i16 %i.gz, 4096
  %.not.i.i13.i.i.i.i.i78 = icmp eq i16 %i.ha, 0  ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i77, i64 13
  %i.hc = load i8, ptr %i.hb, align 1
  %i.hd = sext i8 %i.hc to i32
  %i.he = sub nsw i32 13, %i.hd
  %i.hf = load i32, ptr %.010.i.i.i.i77, align 8
  %i.hg = select i1 %.not.i.i13.i.i.i.i.i78, i32 %i.hf, i32 %i.he
  %.not.i.i.i.i.i79 = icmp eq i32 %i.gt, %i.hg
  br i1 %.not.i.i.i.i.i79, label %bb.q, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80

bb.q:                                             ; preds = %bb.p
  %i.hh = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i77, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8
  %i.hj = ptrtoint ptr %i.hi to i64
  %i.hk = and i64 %i.hj, 281474976710655
  %i.hl = inttoptr i64 %i.hk to ptr
  %i.hm = select i1 %.not.i.i13.i.i.i.i.i78, ptr %i.hl, ptr %.010.i.i.i.i77 ; 2 uses
  %i.hn = icmp eq ptr %i.gw, %i.hm
  br i1 %i.hn, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86: ; preds = %bb.q
  %bcmp.i.i.i.i.i87 = call i32 @bcmp(ptr %i.gw, ptr %i.hm, i64 %i.gx)
  %i.ho = icmp eq i32 %bcmp.i.i.i.i.i87, 0
  br i1 %i.ho, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86, %bb.p
  %i.hp = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i77, i64 32 ; 2 uses
  %.not.i.i.i.i81 = icmp eq ptr %i.hp, %i.gn
  br i1 %.not.i.i.i.i81, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, label %bb.p, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86, %bb.q, %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit
  %.0.lcssa.i.i.i.i83 = phi ptr [ %i.gk, %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit ], [ %.010.i.i.i.i77, %bb.q ], [ %.010.i.i.i.i77, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86 ], [ %i.gn, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.hq = getelementptr inbounds nuw [32 x i8], ptr %i.gk, i64 %i.gm
  %.not.i84 = icmp eq ptr %.0.lcssa.i.i.i.i83, %i.hq
  br i1 %.not.i84, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82
  %i.hr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i83, i64 16
  %i.hs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i83, i64 30
  %i.ht = load i16, ptr %i.hs, align 2
  %i.hu = icmp eq i16 %i.ht, 3
  br i1 %i.hu, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88, label %bb.s

bb.s:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, %bb.r
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hw = load ptr, ptr %i.hv, align 8
  %i.hx = load i32, ptr %.138, align 8            ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.138, i64 4 ; 2 uses
  %i.hz = load i32, ptr %i.hy, align 4            ; 6 uses
  %.not.i.i.i89 = icmp ult i32 %i.hx, %i.hz
  br i1 %.not.i.i.i89, label %._crit_edge, label %bb.t

._crit_edge:                                      ; preds = %bb.s
  %.pre = load ptr, ptr %i.gg, align 8
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  %.not14.i.i.i90 = icmp eq i32 %i.hz, 0
  %i.ia = add i32 %i.hz, 1
  %i.ib = lshr i32 %i.ia, 1
  %i.ic = add i32 %i.ib, %i.hz
  %i.id = select i1 %.not14.i.i.i90, i32 16, i32 %i.ic ; 3 uses
  %i.ie = icmp ugt i32 %i.id, %i.hz
  %.pre144 = load ptr, ptr %i.gg, align 8         ; 2 uses
  br i1 %i.ie, label %.noexc.i93, label %bb.u

.noexc.i93:                                       ; preds = %bb.t
  %i.if = ptrtoint ptr %.pre144 to i64
  %i.ig = and i64 %i.if, 281474976710655
  %i.ih = inttoptr i64 %i.ig to ptr
  %i.ii = zext i32 %i.hz to i64
  %i.ij = zext i32 %i.id to i64
  %i.ik = shl nuw nsw i64 %i.ii, 5
  %i.il = shl nuw nsw i64 %i.ij, 5
  %i.im = call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.hw, ptr noundef %i.ih, i64 noundef %i.ik, i64 noundef %i.il)
  %i.in = load ptr, ptr %i.gg, align 8
  %i.io = ptrtoint ptr %i.in to i64
  %i.ip = and i64 %i.io, -281474976710656
  %i.iq = ptrtoint ptr %i.im to i64
  %i.ir = or i64 %i.ip, %i.iq
  %i.is = inttoptr i64 %i.ir to ptr               ; 2 uses
  store ptr %i.is, ptr %i.gg, align 8
  store i32 %i.id, ptr %i.hy, align 4
  %.pre.i.i.i94 = load i32, ptr %.138, align 8
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge, %.noexc.i93, %bb.t
  %i.it = phi ptr [ %i.is, %.noexc.i93 ], [ %.pre144, %bb.t ], [ %.pre, %._crit_edge ]
  %i.iu = phi i32 [ %.pre.i.i.i94, %.noexc.i93 ], [ %i.hx, %bb.t ], [ %i.hx, %._crit_edge ]
  %i.iv = or i64 %i.gd, 289637751035265024
  %i.iw = inttoptr i64 %i.iv to ptr
  %i.ix = ptrtoint ptr %i.it to i64
  %i.iy = and i64 %i.ix, 281474976710655
  %i.iz = inttoptr i64 %i.iy to ptr
  %i.ja = zext i32 %i.iu to i64
  %i.jb = getelementptr inbounds nuw [32 x i8], ptr %i.iz, i64 %i.ja ; 5 uses
  store i32 %i.fx, ptr %i.jb, align 8
  %.sroa.6.0..sroa_idx.i91 = getelementptr inbounds nuw i8, ptr %i.jb, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i91, align 4
  %.sroa.65.0..sroa_idx.i92 = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  store ptr %i.iw, ptr %.sroa.65.0..sroa_idx.i92, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  store <14 x i8> zeroinitializer, ptr %i.jc, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jb, i64 30
  store i16 3, ptr %.sroa.6.0..sroa_idx, align 2
  %i.jd = load i32, ptr %.138, align 8
  %i.je = add i32 %i.jd, 1
  store i32 %i.je, ptr %.138, align 8
  %i.jf = load ptr, ptr %i.fu, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.jg = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.jf) #36, !noalias !683
  %i.jh = trunc i64 %i.jg to i32                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.ji = getelementptr inbounds nuw i8, ptr %2, i64 14
  store i16 1029, ptr %i.ji, align 2
  %i.jj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.jk = load ptr, ptr %i.jj, align 8
  %i.jl = ptrtoint ptr %i.jk to i64
  %i.jm = and i64 %i.jl, -281474976710656
  %i.jn = ptrtoint ptr %i.jf to i64               ; 3 uses
  %i.jo = or i64 %i.jm, %i.jn                     ; 2 uses
  %i.jp = inttoptr i64 %i.jo to ptr
  store ptr %i.jp, ptr %i.jj, align 8
  store i32 %i.jh, ptr %2, align 8
  %i.jq = load ptr, ptr %i.gg, align 8
  %i.jr = ptrtoint ptr %i.jq to i64
  %i.js = and i64 %i.jr, 281474976710655
  %i.jt = inttoptr i64 %i.js to ptr               ; 4 uses
  %i.ju = load i32, ptr %.138, align 8            ; 2 uses
  %i.jv = zext i32 %i.ju to i64                   ; 2 uses
  %.idx.i.i.i.i97 = shl nuw nsw i64 %i.jv, 5
  %i.jw = getelementptr i8, ptr %i.jt, i64 %.idx.i.i.i.i97 ; 2 uses
  %.not9.i.i.i.i98 = icmp eq i32 %i.ju, 0
  br i1 %.not9.i.i.i.i98, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, label %.lr.ph.i.i.i.i99

.lr.ph.i.i.i.i99:                                 ; preds = %bb.u
  %i.jx = lshr i64 %i.jn, 40
  %i.jy = trunc i64 %i.jx to i8
  %i.jz = and i64 %i.jo, 1152921504606846976
  %.not.i.i.i.i.i.i.i100 = icmp eq i64 %i.jz, 0   ; 2 uses
  %i.ka = sext i8 %i.jy to i32
  %i.kb = sub nsw i32 13, %i.ka
  %i.kc = select i1 %.not.i.i.i.i.i.i.i100, i32 %i.jh, i32 %i.kb ; 2 uses
  %i.kd = and i64 %i.jn, 281474976710655
  %i.ke = inttoptr i64 %i.kd to ptr
  %i.kf = select i1 %.not.i.i.i.i.i.i.i100, ptr %i.ke, ptr %2 ; 2 uses
  %i.kg = zext i32 %i.kc to i64
  br label %bb.v

bb.v:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104, %.lr.ph.i.i.i.i99
  %.010.i.i.i.i101 = phi ptr [ %i.jt, %.lr.ph.i.i.i.i99 ], [ %i.ky, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104 ] ; 8 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i101, i64 14
  %i.ki = load i16, ptr %i.kh, align 2
  %i.kj = and i16 %i.ki, 4096
  %.not.i.i13.i.i.i.i.i102 = icmp eq i16 %i.kj, 0 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i101, i64 13
  %i.kl = load i8, ptr %i.kk, align 1
  %i.km = sext i8 %i.kl to i32
  %i.kn = sub nsw i32 13, %i.km
  %i.ko = load i32, ptr %.010.i.i.i.i101, align 8
  %i.kp = select i1 %.not.i.i13.i.i.i.i.i102, i32 %i.ko, i32 %i.kn
  %.not.i.i.i.i.i103 = icmp eq i32 %i.kc, %i.kp
  br i1 %.not.i.i.i.i.i103, label %bb.w, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104

bb.w:                                             ; preds = %bb.v
  %i.kq = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i101, i64 8
  %i.kr = load ptr, ptr %i.kq, align 8
  %i.ks = ptrtoint ptr %i.kr to i64
  %i.kt = and i64 %i.ks, 281474976710655
  %i.ku = inttoptr i64 %i.kt to ptr
  %i.kv = select i1 %.not.i.i13.i.i.i.i.i102, ptr %i.ku, ptr %.010.i.i.i.i101 ; 2 uses
  %i.kw = icmp eq ptr %i.kf, %i.kv
  br i1 %i.kw, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110: ; preds = %bb.w
  %bcmp.i.i.i.i.i111 = call i32 @bcmp(ptr %i.kf, ptr %i.kv, i64 %i.kg)
  %i.kx = icmp eq i32 %bcmp.i.i.i.i.i111, 0
  br i1 %i.kx, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110, %bb.v
  %i.ky = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i101, i64 32 ; 2 uses
  %.not.i.i.i.i105 = icmp eq ptr %i.ky, %i.jw
  br i1 %.not.i.i.i.i105, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, label %bb.v, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110, %bb.w, %bb.u
  %.0.lcssa.i.i.i.i107 = phi ptr [ %i.jt, %bb.u ], [ %.010.i.i.i.i101, %bb.w ], [ %.010.i.i.i.i101, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110 ], [ %i.jw, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.kz = getelementptr inbounds nuw [32 x i8], ptr %i.jt, i64 %i.jv
  %.not.i108 = icmp eq ptr %.0.lcssa.i.i.i.i107, %i.kz
  br i1 %.not.i108, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88, label %bb.x

bb.x:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106
  %i.la = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i107, i64 16
  %i.lb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i107, i64 30
  %i.lc = load i16, ptr %i.lb, align 2
  %i.ld = icmp eq i16 %i.lc, 3
  %spec.select.i109 = select i1 %i.ld, ptr %i.la, ptr null
  br label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88

_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88: ; preds = %bb.x, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, %bb.r
  %.031 = phi ptr [ %i.hr, %bb.r ], [ null, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106 ], [ %spec.select.i109, %bb.x ] ; 6 uses
  %i.le = load ptr, ptr %i.c, align 8
  %i.lf = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not143 = icmp eq ptr %i.le, %i.lf
  br i1 %.not143, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88
  %i.lg = getelementptr inbounds nuw i8, ptr %6, i64 14
  %i.lh = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.lk = or i64 ptrtoint (ptr @.str.88 to i64), 289637751035265024
  %i.ll = inttoptr i64 %i.lk to ptr
  %i.lm = getelementptr inbounds nuw i8, ptr %.031, i64 4 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.031, i64 8 ; 4 uses
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph, %bb.ad
  %i.lo = phi ptr [ %i.lf, %.lr.ph ], [ %i.ov, %bb.ad ]
  %.0142 = phi i64 [ 0, %.lr.ph ], [ %i.ot, %bb.ad ] ; 5 uses
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.lo, i64 %.0142
  %i.lq = load ptr, ptr %i.lp, align 8            ; 2 uses
  %i.lr = load ptr, ptr %i.lq, align 8
  %i.ls = load ptr, ptr %i.lr, align 8
  %i.lt = call noundef zeroext i1 %i.ls(ptr noundef nonnull align 8 dereferenceable(72) %i.lq)
  br i1 %i.lt, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  store i16 3, ptr %i.lg, align 2
  %i.lu = load ptr, ptr %i.a, align 8
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.lu, i64 %.0142
  %i.lw = load ptr, ptr %i.lv, align 8            ; 3 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 48
  %i.ly = load i64, ptr %i.lx, align 8
  %i.lz = icmp eq i64 %i.ly, 0
  br i1 %i.lz, label %bb.aa, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit: ; preds = %bb.z
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lw, i64 40
  %i.mb = load ptr, ptr %i.ma, align 8            ; 2 uses
  %i.mc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.mb) #36, !noalias !686
  %i.md = trunc i64 %i.mc to i32
  %i.me = load ptr, ptr %i.li, align 8, !nonnull !16, !align !112
  %i.mf = load ptr, ptr %i.lj, align 8
  %i.mg = ptrtoint ptr %i.mf to i64
  %i.mh = and i64 %i.mg, 281474976710655
  %i.mi = inttoptr i64 %i.mh to ptr
  %i.mj = call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.me, ptr noundef %i.mi, i64 noundef 0, i64 noundef 512)
  %i.mk = load ptr, ptr %i.lj, align 8
  %i.ml = ptrtoint ptr %i.mk to i64
  %i.mm = and i64 %i.ml, -281474976710656
  %i.mn = ptrtoint ptr %i.mj to i64               ; 2 uses
  %i.mo = or i64 %i.mm, %i.mn
  %i.mp = inttoptr i64 %i.mo to ptr
  store ptr %i.mp, ptr %i.lj, align 8
  store i32 16, ptr %i.lh, align 4
  %.pre.i.i.i.i = load i32, ptr %6, align 8
  %i.mq = zext i32 %.pre.i.i.i.i to i64
  %i.mr = ptrtoint ptr %i.mb to i64
  %i.ms = or i64 %i.mr, 289637751035265024
  %i.mt = inttoptr i64 %i.ms to ptr
  %i.mu = and i64 %i.mn, 281474976710655
  %i.mv = inttoptr i64 %i.mu to ptr
  %i.mw = getelementptr inbounds nuw [32 x i8], ptr %i.mv, i64 %i.mq ; 6 uses
  store i32 4, ptr %i.mw, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mw, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i.i, align 4
  %.sroa.65.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  store ptr %i.ll, ptr %.sroa.65.0..sroa_idx.i.i, align 8
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 16
  store i32 %i.md, ptr %i.mx, align 8
  %.sroa.6.0..sroa_idx.i114 = getelementptr inbounds nuw i8, ptr %i.mw, i64 20
  store i32 0, ptr %.sroa.6.0..sroa_idx.i114, align 4
  %.sroa.66.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mw, i64 24
  store ptr %i.mt, ptr %.sroa.66.0..sroa_idx.i, align 8
  %i.my = load i32, ptr %6, align 8
  %i.mz = add i32 %i.my, 1
  store i32 %i.mz, ptr %6, align 8
  %.pre146 = load ptr, ptr %i.a, align 8
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre146, i64 %.0142
  %.pre147 = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit, %bb.z
  %i.na = phi ptr [ %.pre147, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit ], [ %i.lw, %bb.z ]
  call void @_ZN4glTF5WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_8MaterialERNS_11AssetWriterE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(216) %i.na, ptr noundef nonnull align 8 dereferenceable(112) %0)
  %i.nb = load ptr, ptr %i.a, align 8
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.nb, i64 %.0142
  %i.nd = load ptr, ptr %i.nc, align 8            ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  %i.nf = load ptr, ptr %i.ne, align 8, !noalias !689 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nd, i64 16
  %i.nh = load i64, ptr %i.ng, align 8, !noalias !689
  %i.ni = trunc i64 %i.nh to i32
  %.not.i.i = icmp eq ptr %i.nf, null
  %i.nj = select i1 %.not.i.i, ptr @_ZN9rapidjson16GenericStringRefIcE11emptyStringE, ptr %i.nf, !prof !6
  %i.nk = load ptr, ptr %i.li, align 8, !nonnull !16, !align !112
  %i.nl = load i32, ptr %.031, align 8            ; 3 uses
  %i.nm = load i32, ptr %i.lm, align 4            ; 6 uses
  %.not.i.i.i116 = icmp ult i32 %i.nl, %i.nm
  br i1 %.not.i.i.i116, label %._crit_edge148, label %bb.ab

._crit_edge148:                                   ; preds = %bb.aa
  %.pre149 = load ptr, ptr %i.ln, align 8
  br label %bb.ac

end_hunk_13
begin_hunk_14_@_ZN4glTF8LazyDictINS_4MeshEE16AttachToDocumentERN9rapidjson15GenericDocumentINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEES8_EE:bb.a
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = and i64 %i.q, 281474976710655
  %i.s = inttoptr i64 %i.r to ptr                 ; 4 uses
  %i.t = load i32, ptr %i.c, align 8              ; 2 uses
  %i.u = zext i32 %i.t to i64                     ; 2 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.u, 5
  %i.v = getelementptr i8, ptr %i.s, i64 %.idx.i.i.i.i ; 2 uses
  %.not9.i.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not9.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c
  %i.w = lshr i64 %i.l, 40
  %i.x = trunc i64 %i.w to i8
  %i.y = and i64 %i.m, 1152921504606846976
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.y, 0       ; 2 uses
  %i.z = sext i8 %i.x to i32
  %i.aa = sub nsw i32 13, %i.z
  %i.ab = select i1 %.not.i.i.i.i.i.i.i, i32 %i.f, i32 %i.aa ; 2 uses
  %i.ac = and i64 %i.l, 281474976710655
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = select i1 %.not.i.i.i.i.i.i.i, ptr %i.ad, ptr %3 ; 2 uses
  %i.af = zext i32 %i.ab to i64
  br label %bb.d

bb.d:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %.lr.ph.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i ], [ %i.ax, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 14
  %i.ah = load i16, ptr %i.ag, align 2
  %i.ai = and i16 %i.ah, 4096
  %.not.i.i13.i.i.i.i.i = icmp eq i16 %i.ai, 0    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 13
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = sext i8 %i.ak to i32
  %i.am = sub nsw i32 13, %i.al
  %i.an = load i32, ptr %.010.i.i.i.i, align 8
  %i.ao = select i1 %.not.i.i13.i.i.i.i.i, i32 %i.an, i32 %i.am
  %.not.i.i.i.i.i = icmp eq i32 %i.ab, %i.ao
  br i1 %.not.i.i.i.i.i, label %bb.e, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = and i64 %i.ar, 281474976710655
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = select i1 %.not.i.i13.i.i.i.i.i, ptr %i.at, ptr %.010.i.i.i.i ; 2 uses
  %i.av = icmp eq ptr %i.ae, %i.au
  br i1 %i.av, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i: ; preds = %bb.e
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %i.ae, ptr %i.au, i64 %i.af)
  %i.aw = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.aw, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ax, %i.v
  br i1 %.not.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %bb.d, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.e, %bb.c
  %.0.lcssa.i.i.i.i = phi ptr [ %i.s, %bb.c ], [ %.010.i.i.i.i, %bb.e ], [ %.010.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i ], [ %i.v, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.ay = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %i.u
  %.not.i = icmp eq ptr %.0.lcssa.i.i.i.i, %i.ay
  br i1 %.not.i, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 30
  %i.bb = load i16, ptr %i.ba, align 2
  %i.bc = icmp eq i16 %i.bb, 3
  br i1 %i.bc, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread

_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit: ; preds = %bb.f, %bb.a
  %.1 = phi ptr [ %1, %bb.a ], [ %i.az, %bb.f ]   ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.bf = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.be) #36, !noalias !705
  %i.bg = trunc i64 %i.bf to i32                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 14
  store i16 1029, ptr %i.bh, align 2
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = and i64 %i.bk, -281474976710656
  %i.bm = ptrtoint ptr %i.be to i64               ; 3 uses
  %i.bn = or i64 %i.bl, %i.bm                     ; 2 uses
  %i.bo = inttoptr i64 %i.bn to ptr
  store ptr %i.bo, ptr %i.bi, align 8
  store i32 %i.bg, ptr %2, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = and i64 %i.br, 281474976710655
  %i.bt = inttoptr i64 %i.bs to ptr               ; 4 uses
  %i.bu = load i32, ptr %.1, align 8              ; 2 uses
  %i.bv = zext i32 %i.bu to i64                   ; 2 uses
  %.idx.i.i.i.i10 = shl nuw nsw i64 %i.bv, 5
  %i.bw = getelementptr i8, ptr %i.bt, i64 %.idx.i.i.i.i10 ; 2 uses
  %.not9.i.i.i.i11 = icmp eq i32 %i.bu, 0
  br i1 %.not9.i.i.i.i11, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19, label %.lr.ph.i.i.i.i12

.lr.ph.i.i.i.i12:                                 ; preds = %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit
  %i.bx = lshr i64 %i.bm, 40
  %i.by = trunc i64 %i.bx to i8
  %i.bz = and i64 %i.bn, 1152921504606846976
  %.not.i.i.i.i.i.i.i13 = icmp eq i64 %i.bz, 0    ; 2 uses
  %i.ca = sext i8 %i.by to i32
  %i.cb = sub nsw i32 13, %i.ca
  %i.cc = select i1 %.not.i.i.i.i.i.i.i13, i32 %i.bg, i32 %i.cb ; 2 uses
  %i.cd = and i64 %i.bm, 281474976710655
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = select i1 %.not.i.i.i.i.i.i.i13, ptr %i.ce, ptr %2 ; 2 uses
  %i.cg = zext i32 %i.cc to i64
  br label %bb.g

bb.g:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17, %.lr.ph.i.i.i.i12
  %.010.i.i.i.i14 = phi ptr [ %i.bt, %.lr.ph.i.i.i.i12 ], [ %i.cy, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17 ] ; 8 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i14, i64 14
  %i.ci = load i16, ptr %i.ch, align 2
  %i.cj = and i16 %i.ci, 4096
  %.not.i.i13.i.i.i.i.i15 = icmp eq i16 %i.cj, 0  ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i14, i64 13
  %i.cl = load i8, ptr %i.ck, align 1
  %i.cm = sext i8 %i.cl to i32
  %i.cn = sub nsw i32 13, %i.cm
  %i.co = load i32, ptr %.010.i.i.i.i14, align 8
  %i.cp = select i1 %.not.i.i13.i.i.i.i.i15, i32 %i.co, i32 %i.cn
  %.not.i.i.i.i.i16 = icmp eq i32 %i.cc, %i.cp
  br i1 %.not.i.i.i.i.i16, label %bb.h, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17

bb.h:                                             ; preds = %bb.g
  %i.cq = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i14, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = and i64 %i.cs, 281474976710655
  %i.cu = inttoptr i64 %i.ct to ptr
  %i.cv = select i1 %.not.i.i13.i.i.i.i.i15, ptr %i.cu, ptr %.010.i.i.i.i14 ; 2 uses
  %i.cw = icmp eq ptr %i.cf, %i.cv
  br i1 %i.cw, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i23

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i23: ; preds = %bb.h
  %bcmp.i.i.i.i.i24 = call i32 @bcmp(ptr %i.cf, ptr %i.cv, i64 %i.cg)
  %i.cx = icmp eq i32 %bcmp.i.i.i.i.i24, 0
  br i1 %i.cx, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i23, %bb.g
  %i.cy = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i14, i64 32 ; 2 uses
  %.not.i.i.i.i18 = icmp eq ptr %i.cy, %i.bw
  br i1 %.not.i.i.i.i18, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19, label %bb.g, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i23, %bb.h, %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit
  %.0.lcssa.i.i.i.i20 = phi ptr [ %i.bt, %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit ], [ %.010.i.i.i.i14, %bb.h ], [ %.010.i.i.i.i14, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i23 ], [ %i.bw, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.cz = getelementptr inbounds nuw [32 x i8], ptr %i.bt, i64 %i.bv
  %.not.i21 = icmp eq ptr %.0.lcssa.i.i.i.i20, %i.cz
  br i1 %.not.i21, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit25, label %bb.i

bb.i:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19
  %i.da = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i20, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i20, i64 30
  %i.dc = load i16, ptr %i.db, align 2
  %i.dd = icmp eq i16 %i.dc, 3
  %spec.select.i22 = select i1 %i.dd, ptr %i.da, ptr null
  br label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit25

_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit25: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19, %bb.i
  %i.de = phi ptr [ null, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19 ], [ %spec.select.i22, %bb.i ]
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.de, ptr %i.df, align 8
  br label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread

_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread: ; preds = %bb.f, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, %bb.b, %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit25
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4glTF8LazyDictINS_4MeshEE18DetachFromDocumentEv(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr null, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4glTF8LazyDictINS_4MeshEE12WriteObjectsERNS_11AssetWriterE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN4glTF11AssetWriter12WriteObjectsINS_4MeshEEEvRNS_8LazyDictIT_EE(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(120) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4glTF11AssetWriter12WriteObjectsINS_4MeshEEEvRNS_8LazyDictIT_EE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(120) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %3 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %4 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %5 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %6 = alloca %"class.rapidjson::GenericValue", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef ptr @_ZN10glTFCommon19FindObjectInContextERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKcSA_SA_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.209, ptr noundef null) ; 2 uses
  %.not42 = icmp eq ptr %i.h, null
  br i1 %.not42, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load i32, ptr %0, align 8                ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4              ; 6 uses
  %.not.i.i.i = icmp ult i32 %i.k, %i.m
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not14.i.i.i = icmp eq i32 %i.m, 0
  %i.n = add i32 %i.m, 1
  %i.o = lshr i32 %i.n, 1
  %i.p = add i32 %i.o, %i.m
  %i.q = select i1 %.not14.i.i.i, i32 16, i32 %i.p ; 3 uses
  %i.r = icmp ugt i32 %i.q, %i.m
  br i1 %i.r, label %.noexc.i, label %bb.f

.noexc.i:                                         ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = and i64 %i.u, 281474976710655
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = zext i32 %i.m to i64
  %i.y = zext i32 %i.q to i64
  %i.z = shl nuw nsw i64 %i.x, 5
  %i.aa = shl nuw nsw i64 %i.y, 5
  %i.ab = tail call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef %i.w, i64 noundef %i.z, i64 noundef %i.aa)
  %i.ac = load ptr, ptr %i.s, align 8
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = and i64 %i.ad, -281474976710656
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = or i64 %i.ae, %i.af
  %i.ah = inttoptr i64 %i.ag to ptr
  store ptr %i.ah, ptr %i.s, align 8
  store i32 %i.q, ptr %i.l, align 4
  %.pre.i.i.i = load i32, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %.noexc.i, %bb.e, %bb.d
  %i.ai = phi i32 [ %.pre.i.i.i, %.noexc.i ], [ %i.k, %bb.e ], [ %i.k, %bb.d ]
  %i.aj = or i64 ptrtoint (ptr @.str.93 to i64), 289637751035265024
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = and i64 %i.an, 281474976710655
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = zext i32 %i.ai to i64
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %i.ap, i64 %i.aq ; 5 uses
  store i32 10, ptr %i.ar, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i, align 4
  %.sroa.65.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.ak, ptr %.sroa.65.0..sroa_idx.i, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.as, i8 0, i64 14, i1 false)
  %.sroa.6136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 30
  store i16 3, ptr %.sroa.6136.0..sroa_idx, align 2
  %i.at = load i32, ptr %0, align 8
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr %0, align 8
  %i.av = tail call noundef ptr @_ZN10glTFCommon19FindObjectInContextERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKcSA_SA_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.209, ptr noundef null)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.036 = phi ptr [ %i.h, %bb.c ], [ %i.av, %bb.f ] ; 6 uses
  %i.aw = load ptr, ptr %i.f, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.ax = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aw) #36, !noalias !708
  %i.ay = trunc i64 %i.ax to i32                  ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 14
  store i16 1029, ptr %i.az, align 2
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = and i64 %i.bc, -281474976710656
  %i.be = ptrtoint ptr %i.aw to i64               ; 4 uses
  %i.bf = or i64 %i.bd, %i.be                     ; 2 uses
  %i.bg = inttoptr i64 %i.bf to ptr
  store ptr %i.bg, ptr %i.ba, align 8
  store i32 %i.ay, ptr %5, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.036, i64 8 ; 4 uses
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = and i64 %i.bj, 281474976710655
  %i.bl = inttoptr i64 %i.bk to ptr               ; 7 uses
  %i.bm = load i32, ptr %.036, align 8            ; 3 uses
  %i.bn = zext i32 %i.bm to i64                   ; 4 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.bn, 5
  %i.bo = getelementptr i8, ptr %i.bl, i64 %.idx.i.i.i.i ; 2 uses
  %.not9.i.i.i.i = icmp eq i32 %i.bm, 0
  br i1 %.not9.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g
  %i.bp = lshr i64 %i.be, 40
  %i.bq = trunc i64 %i.bp to i8
  %i.br = and i64 %i.bf, 1152921504606846976
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.br, 0      ; 2 uses
  %i.bs = sext i8 %i.bq to i32
  %i.bt = sub nsw i32 13, %i.bs
  %i.bu = select i1 %.not.i.i.i.i.i.i.i, i32 %i.ay, i32 %i.bt ; 2 uses
  %i.bv = and i64 %i.be, 281474976710655
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = select i1 %.not.i.i.i.i.i.i.i, ptr %i.bw, ptr %5 ; 2 uses
  %i.by = zext i32 %i.bu to i64
  br label %bb.h

bb.h:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %.lr.ph.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i ], [ %i.cq, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 8 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 14
  %i.ca = load i16, ptr %i.bz, align 2
  %i.cb = and i16 %i.ca, 4096
  %.not.i.i13.i.i.i.i.i = icmp eq i16 %i.cb, 0    ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 13
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = sext i8 %i.cd to i32
  %i.cf = sub nsw i32 13, %i.ce
  %i.cg = load i32, ptr %.010.i.i.i.i, align 8
  %i.ch = select i1 %.not.i.i13.i.i.i.i.i, i32 %i.cg, i32 %i.cf
  %.not.i.i.i.i.i = icmp eq i32 %i.bu, %i.ch
  br i1 %.not.i.i.i.i.i, label %bb.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.ci = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = and i64 %i.ck, 281474976710655
  %i.cm = inttoptr i64 %i.cl to ptr
  %i.cn = select i1 %.not.i.i13.i.i.i.i.i, ptr %i.cm, ptr %.010.i.i.i.i ; 2 uses
  %i.co = icmp eq ptr %i.bx, %i.cn
  br i1 %i.co, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i: ; preds = %bb.i
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %i.bx, ptr %i.cn, i64 %i.by)
  %i.cp = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.cp, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.h
  %i.cq = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cq, %i.bo
  br i1 %.not.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %bb.h, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.i, %bb.g
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bl, %bb.g ], [ %.010.i.i.i.i, %bb.i ], [ %.010.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i ], [ %i.bo, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.cr = getelementptr inbounds nuw [32 x i8], ptr %i.bl, i64 %i.bn
  %.not.i = icmp eq ptr %.0.lcssa.i.i.i.i, %i.cr
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 30
  %i.cu = load i16, ptr %i.ct, align 2
  %i.cv = icmp eq i16 %i.cu, 3
  br i1 %i.cv, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit, label %bb.k

bb.k:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, %bb.j
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %.036, i64 4 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4            ; 6 uses
  %.not.i.i.i49 = icmp ult i32 %i.bm, %i.cz
  br i1 %.not.i.i.i49, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not14.i.i.i50 = icmp eq i32 %i.cz, 0
  %i.da = add i32 %i.cz, 1
  %i.db = lshr i32 %i.da, 1
  %i.dc = add i32 %i.db, %i.cz
  %i.dd = select i1 %.not14.i.i.i50, i32 16, i32 %i.dc ; 3 uses
  %i.de = icmp ugt i32 %i.dd, %i.cz
  br i1 %i.de, label %.noexc.i53, label %bb.m

.noexc.i53:                                       ; preds = %bb.l
  %i.df = zext i32 %i.cz to i64
  %i.dg = zext i32 %i.dd to i64
  %i.dh = shl nuw nsw i64 %i.df, 5
  %i.di = shl nuw nsw i64 %i.dg, 5
end_hunk_14
begin_hunk_15_@_ZN4glTF11AssetWriter12WriteObjectsINS_4MeshEEEvRNS_8LazyDictIT_EE:bb.a
  %.pre-phi157 = phi i64 [ %.pre156, %.noexc.i53 ], [ %i.bn, %bb.l ], [ %i.bn, %bb.k ]
  %.pre-phi155 = phi ptr [ %.pre154, %.noexc.i53 ], [ %i.bl, %bb.l ], [ %i.bl, %bb.k ]
  %i.dq = or i64 %i.be, 289637751035265024
  %i.dr = inttoptr i64 %i.dq to ptr
  %i.ds = getelementptr inbounds nuw [32 x i8], ptr %.pre-phi155, i64 %.pre-phi157 ; 5 uses
  store i32 %i.ay, ptr %i.ds, align 8
  %.sroa.6.0..sroa_idx.i51 = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i51, align 4
  %.sroa.65.0..sroa_idx.i52 = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store ptr %i.dr, ptr %.sroa.65.0..sroa_idx.i52, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.dt, i8 0, i64 14, i1 false)
  %.sroa.6132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 30
  store i16 3, ptr %.sroa.6132.0..sroa_idx, align 2
  %i.du = load i32, ptr %.036, align 8
  %i.dv = add i32 %i.du, 1                        ; 3 uses
  store i32 %i.dv, ptr %.036, align 8
  %i.dw = load ptr, ptr %i.f, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.dx = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dw) #36, !noalias !711
  %i.dy = trunc i64 %i.dx to i32                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 14
  store i16 1029, ptr %i.dz, align 2
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = and i64 %i.ec, -281474976710656
  %i.ee = ptrtoint ptr %i.dw to i64               ; 3 uses
  %i.ef = or i64 %i.ed, %i.ee                     ; 2 uses
  %i.eg = inttoptr i64 %i.ef to ptr
  store ptr %i.eg, ptr %i.ea, align 8
  store i32 %i.dy, ptr %4, align 8
  %i.eh = load ptr, ptr %i.bh, align 8
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = and i64 %i.ei, 281474976710655
  %i.ek = inttoptr i64 %i.ej to ptr               ; 4 uses
  %i.el = zext i32 %i.dv to i64                   ; 2 uses
  %.idx.i.i.i.i57 = shl nuw nsw i64 %i.el, 5
  %i.em = getelementptr i8, ptr %i.ek, i64 %.idx.i.i.i.i57 ; 2 uses
  %.not9.i.i.i.i58 = icmp eq i32 %i.dv, 0
  br i1 %.not9.i.i.i.i58, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, label %.lr.ph.i.i.i.i59

.lr.ph.i.i.i.i59:                                 ; preds = %bb.m
  %i.en = lshr i64 %i.ee, 40
  %i.eo = trunc i64 %i.en to i8
  %i.ep = and i64 %i.ef, 1152921504606846976
  %.not.i.i.i.i.i.i.i60 = icmp eq i64 %i.ep, 0    ; 2 uses
  %i.eq = sext i8 %i.eo to i32
  %i.er = sub nsw i32 13, %i.eq
  %i.es = select i1 %.not.i.i.i.i.i.i.i60, i32 %i.dy, i32 %i.er ; 2 uses
  %i.et = and i64 %i.ee, 281474976710655
  %i.eu = inttoptr i64 %i.et to ptr
  %i.ev = select i1 %.not.i.i.i.i.i.i.i60, ptr %i.eu, ptr %4 ; 2 uses
  %i.ew = zext i32 %i.es to i64
  br label %bb.n

bb.n:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64, %.lr.ph.i.i.i.i59
  %.010.i.i.i.i61 = phi ptr [ %i.ek, %.lr.ph.i.i.i.i59 ], [ %i.fo, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64 ] ; 8 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i61, i64 14
  %i.ey = load i16, ptr %i.ex, align 2
  %i.ez = and i16 %i.ey, 4096
  %.not.i.i13.i.i.i.i.i62 = icmp eq i16 %i.ez, 0  ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i61, i64 13
  %i.fb = load i8, ptr %i.fa, align 1
  %i.fc = sext i8 %i.fb to i32
  %i.fd = sub nsw i32 13, %i.fc
  %i.fe = load i32, ptr %.010.i.i.i.i61, align 8
  %i.ff = select i1 %.not.i.i13.i.i.i.i.i62, i32 %i.fe, i32 %i.fd
  %.not.i.i.i.i.i63 = icmp eq i32 %i.es, %i.ff
  br i1 %.not.i.i.i.i.i63, label %bb.o, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64

bb.o:                                             ; preds = %bb.n
  %i.fg = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i61, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = and i64 %i.fi, 281474976710655
  %i.fk = inttoptr i64 %i.fj to ptr
  %i.fl = select i1 %.not.i.i13.i.i.i.i.i62, ptr %i.fk, ptr %.010.i.i.i.i61 ; 2 uses
  %i.fm = icmp eq ptr %i.ev, %i.fl
  br i1 %i.fm, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70: ; preds = %bb.o
  %bcmp.i.i.i.i.i71 = call i32 @bcmp(ptr %i.ev, ptr %i.fl, i64 %i.ew)
  %i.fn = icmp eq i32 %bcmp.i.i.i.i.i71, 0
  br i1 %i.fn, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70, %bb.n
  %i.fo = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i61, i64 32 ; 2 uses
  %.not.i.i.i.i65 = icmp eq ptr %i.fo, %i.em
  br i1 %.not.i.i.i.i65, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, label %bb.n, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70, %bb.o, %bb.m
  %.0.lcssa.i.i.i.i67 = phi ptr [ %i.ek, %bb.m ], [ %.010.i.i.i.i61, %bb.o ], [ %.010.i.i.i.i61, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70 ], [ %i.em, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.fp = getelementptr inbounds nuw [32 x i8], ptr %i.ek, i64 %i.el
  %.not.i68 = icmp ne ptr %.0.lcssa.i.i.i.i67, %i.fp
  call void @llvm.assume(i1 %.not.i68)
  %i.fq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i67, i64 16
  %i.fr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i67, i64 30
  %i.fs = load i16, ptr %i.fr, align 2
  %i.ft = icmp eq i16 %i.fs, 3
  %spec.select.i69 = select i1 %i.ft, ptr %i.fq, ptr null
  br label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit

_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, %bb.j, %bb.b
  %.138 = phi ptr [ %0, %bb.b ], [ %i.cs, %bb.j ], [ %spec.select.i69, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66 ] ; 8 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.fw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fv) #36, !noalias !714
  %i.fx = trunc i64 %i.fw to i32                  ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.fy = getelementptr inbounds nuw i8, ptr %3, i64 14
  store i16 1029, ptr %i.fy, align 2
  %i.fz = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ga = load ptr, ptr %i.fz, align 8
  %i.gb = ptrtoint ptr %i.ga to i64
  %i.gc = and i64 %i.gb, -281474976710656
  %i.gd = ptrtoint ptr %i.fv to i64               ; 4 uses
  %i.ge = or i64 %i.gc, %i.gd                     ; 2 uses
  %i.gf = inttoptr i64 %i.ge to ptr
  store ptr %i.gf, ptr %i.fz, align 8
  store i32 %i.fx, ptr %3, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %.138, i64 8 ; 6 uses
  %i.gh = load ptr, ptr %i.gg, align 8
  %i.gi = ptrtoint ptr %i.gh to i64
  %i.gj = and i64 %i.gi, 281474976710655
  %i.gk = inttoptr i64 %i.gj to ptr               ; 4 uses
  %i.gl = load i32, ptr %.138, align 8            ; 2 uses
  %i.gm = zext i32 %i.gl to i64                   ; 2 uses
  %.idx.i.i.i.i73 = shl nuw nsw i64 %i.gm, 5
  %i.gn = getelementptr i8, ptr %i.gk, i64 %.idx.i.i.i.i73 ; 2 uses
  %.not9.i.i.i.i74 = icmp eq i32 %i.gl, 0
  br i1 %.not9.i.i.i.i74, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, label %.lr.ph.i.i.i.i75

.lr.ph.i.i.i.i75:                                 ; preds = %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit
  %i.go = lshr i64 %i.gd, 40
  %i.gp = trunc i64 %i.go to i8
  %i.gq = and i64 %i.ge, 1152921504606846976
  %.not.i.i.i.i.i.i.i76 = icmp eq i64 %i.gq, 0    ; 2 uses
  %i.gr = sext i8 %i.gp to i32
  %i.gs = sub nsw i32 13, %i.gr
  %i.gt = select i1 %.not.i.i.i.i.i.i.i76, i32 %i.fx, i32 %i.gs ; 2 uses
  %i.gu = and i64 %i.gd, 281474976710655
  %i.gv = inttoptr i64 %i.gu to ptr
  %i.gw = select i1 %.not.i.i.i.i.i.i.i76, ptr %i.gv, ptr %3 ; 2 uses
  %i.gx = zext i32 %i.gt to i64
  br label %bb.p

bb.p:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80, %.lr.ph.i.i.i.i75
  %.010.i.i.i.i77 = phi ptr [ %i.gk, %.lr.ph.i.i.i.i75 ], [ %i.hp, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80 ] ; 8 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i77, i64 14
  %i.gz = load i16, ptr %i.gy, align 2
  %i.ha = and i16 %i.gz, 4096
  %.not.i.i13.i.i.i.i.i78 = icmp eq i16 %i.ha, 0  ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i77, i64 13
  %i.hc = load i8, ptr %i.hb, align 1
  %i.hd = sext i8 %i.hc to i32
  %i.he = sub nsw i32 13, %i.hd
  %i.hf = load i32, ptr %.010.i.i.i.i77, align 8
  %i.hg = select i1 %.not.i.i13.i.i.i.i.i78, i32 %i.hf, i32 %i.he
  %.not.i.i.i.i.i79 = icmp eq i32 %i.gt, %i.hg
  br i1 %.not.i.i.i.i.i79, label %bb.q, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80

bb.q:                                             ; preds = %bb.p
  %i.hh = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i77, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8
  %i.hj = ptrtoint ptr %i.hi to i64
  %i.hk = and i64 %i.hj, 281474976710655
  %i.hl = inttoptr i64 %i.hk to ptr
  %i.hm = select i1 %.not.i.i13.i.i.i.i.i78, ptr %i.hl, ptr %.010.i.i.i.i77 ; 2 uses
  %i.hn = icmp eq ptr %i.gw, %i.hm
  br i1 %i.hn, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86: ; preds = %bb.q
  %bcmp.i.i.i.i.i87 = call i32 @bcmp(ptr %i.gw, ptr %i.hm, i64 %i.gx)
  %i.ho = icmp eq i32 %bcmp.i.i.i.i.i87, 0
  br i1 %i.ho, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86, %bb.p
  %i.hp = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i77, i64 32 ; 2 uses
  %.not.i.i.i.i81 = icmp eq ptr %i.hp, %i.gn
  br i1 %.not.i.i.i.i81, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, label %bb.p, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86, %bb.q, %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit
  %.0.lcssa.i.i.i.i83 = phi ptr [ %i.gk, %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit ], [ %.010.i.i.i.i77, %bb.q ], [ %.010.i.i.i.i77, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86 ], [ %i.gn, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.hq = getelementptr inbounds nuw [32 x i8], ptr %i.gk, i64 %i.gm
  %.not.i84 = icmp eq ptr %.0.lcssa.i.i.i.i83, %i.hq
  br i1 %.not.i84, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82
  %i.hr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i83, i64 16
  %i.hs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i83, i64 30
  %i.ht = load i16, ptr %i.hs, align 2
  %i.hu = icmp eq i16 %i.ht, 3
  br i1 %i.hu, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88, label %bb.s

bb.s:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, %bb.r
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hw = load ptr, ptr %i.hv, align 8
  %i.hx = load i32, ptr %.138, align 8            ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.138, i64 4 ; 2 uses
  %i.hz = load i32, ptr %i.hy, align 4            ; 6 uses
  %.not.i.i.i89 = icmp ult i32 %i.hx, %i.hz
  br i1 %.not.i.i.i89, label %._crit_edge, label %bb.t

._crit_edge:                                      ; preds = %bb.s
  %.pre = load ptr, ptr %i.gg, align 8
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  %.not14.i.i.i90 = icmp eq i32 %i.hz, 0
  %i.ia = add i32 %i.hz, 1
  %i.ib = lshr i32 %i.ia, 1
  %i.ic = add i32 %i.ib, %i.hz
  %i.id = select i1 %.not14.i.i.i90, i32 16, i32 %i.ic ; 3 uses
  %i.ie = icmp ugt i32 %i.id, %i.hz
  %.pre144 = load ptr, ptr %i.gg, align 8         ; 2 uses
  br i1 %i.ie, label %.noexc.i93, label %bb.u

.noexc.i93:                                       ; preds = %bb.t
  %i.if = ptrtoint ptr %.pre144 to i64
  %i.ig = and i64 %i.if, 281474976710655
  %i.ih = inttoptr i64 %i.ig to ptr
  %i.ii = zext i32 %i.hz to i64
  %i.ij = zext i32 %i.id to i64
  %i.ik = shl nuw nsw i64 %i.ii, 5
  %i.il = shl nuw nsw i64 %i.ij, 5
  %i.im = call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.hw, ptr noundef %i.ih, i64 noundef %i.ik, i64 noundef %i.il)
  %i.in = load ptr, ptr %i.gg, align 8
  %i.io = ptrtoint ptr %i.in to i64
  %i.ip = and i64 %i.io, -281474976710656
  %i.iq = ptrtoint ptr %i.im to i64
  %i.ir = or i64 %i.ip, %i.iq
  %i.is = inttoptr i64 %i.ir to ptr               ; 2 uses
  store ptr %i.is, ptr %i.gg, align 8
  store i32 %i.id, ptr %i.hy, align 4
  %.pre.i.i.i94 = load i32, ptr %.138, align 8
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge, %.noexc.i93, %bb.t
  %i.it = phi ptr [ %i.is, %.noexc.i93 ], [ %.pre144, %bb.t ], [ %.pre, %._crit_edge ]
  %i.iu = phi i32 [ %.pre.i.i.i94, %.noexc.i93 ], [ %i.hx, %bb.t ], [ %i.hx, %._crit_edge ]
  %i.iv = or i64 %i.gd, 289637751035265024
  %i.iw = inttoptr i64 %i.iv to ptr
  %i.ix = ptrtoint ptr %i.it to i64
  %i.iy = and i64 %i.ix, 281474976710655
  %i.iz = inttoptr i64 %i.iy to ptr
  %i.ja = zext i32 %i.iu to i64
  %i.jb = getelementptr inbounds nuw [32 x i8], ptr %i.iz, i64 %i.ja ; 5 uses
  store i32 %i.fx, ptr %i.jb, align 8
  %.sroa.6.0..sroa_idx.i91 = getelementptr inbounds nuw i8, ptr %i.jb, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i91, align 4
  %.sroa.65.0..sroa_idx.i92 = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  store ptr %i.iw, ptr %.sroa.65.0..sroa_idx.i92, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  store <14 x i8> zeroinitializer, ptr %i.jc, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jb, i64 30
  store i16 3, ptr %.sroa.6.0..sroa_idx, align 2
  %i.jd = load i32, ptr %.138, align 8
  %i.je = add i32 %i.jd, 1
  store i32 %i.je, ptr %.138, align 8
  %i.jf = load ptr, ptr %i.fu, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.jg = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.jf) #36, !noalias !717
  %i.jh = trunc i64 %i.jg to i32                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.ji = getelementptr inbounds nuw i8, ptr %2, i64 14
  store i16 1029, ptr %i.ji, align 2
  %i.jj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.jk = load ptr, ptr %i.jj, align 8
  %i.jl = ptrtoint ptr %i.jk to i64
  %i.jm = and i64 %i.jl, -281474976710656
  %i.jn = ptrtoint ptr %i.jf to i64               ; 3 uses
  %i.jo = or i64 %i.jm, %i.jn                     ; 2 uses
  %i.jp = inttoptr i64 %i.jo to ptr
  store ptr %i.jp, ptr %i.jj, align 8
  store i32 %i.jh, ptr %2, align 8
  %i.jq = load ptr, ptr %i.gg, align 8
  %i.jr = ptrtoint ptr %i.jq to i64
  %i.js = and i64 %i.jr, 281474976710655
  %i.jt = inttoptr i64 %i.js to ptr               ; 4 uses
  %i.ju = load i32, ptr %.138, align 8            ; 2 uses
  %i.jv = zext i32 %i.ju to i64                   ; 2 uses
  %.idx.i.i.i.i97 = shl nuw nsw i64 %i.jv, 5
  %i.jw = getelementptr i8, ptr %i.jt, i64 %.idx.i.i.i.i97 ; 2 uses
  %.not9.i.i.i.i98 = icmp eq i32 %i.ju, 0
  br i1 %.not9.i.i.i.i98, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, label %.lr.ph.i.i.i.i99

.lr.ph.i.i.i.i99:                                 ; preds = %bb.u
  %i.jx = lshr i64 %i.jn, 40
  %i.jy = trunc i64 %i.jx to i8
  %i.jz = and i64 %i.jo, 1152921504606846976
  %.not.i.i.i.i.i.i.i100 = icmp eq i64 %i.jz, 0   ; 2 uses
  %i.ka = sext i8 %i.jy to i32
  %i.kb = sub nsw i32 13, %i.ka
  %i.kc = select i1 %.not.i.i.i.i.i.i.i100, i32 %i.jh, i32 %i.kb ; 2 uses
  %i.kd = and i64 %i.jn, 281474976710655
  %i.ke = inttoptr i64 %i.kd to ptr
  %i.kf = select i1 %.not.i.i.i.i.i.i.i100, ptr %i.ke, ptr %2 ; 2 uses
  %i.kg = zext i32 %i.kc to i64
  br label %bb.v

bb.v:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104, %.lr.ph.i.i.i.i99
  %.010.i.i.i.i101 = phi ptr [ %i.jt, %.lr.ph.i.i.i.i99 ], [ %i.ky, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104 ] ; 8 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i101, i64 14
  %i.ki = load i16, ptr %i.kh, align 2
  %i.kj = and i16 %i.ki, 4096
  %.not.i.i13.i.i.i.i.i102 = icmp eq i16 %i.kj, 0 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i101, i64 13
  %i.kl = load i8, ptr %i.kk, align 1
  %i.km = sext i8 %i.kl to i32
  %i.kn = sub nsw i32 13, %i.km
  %i.ko = load i32, ptr %.010.i.i.i.i101, align 8
  %i.kp = select i1 %.not.i.i13.i.i.i.i.i102, i32 %i.ko, i32 %i.kn
  %.not.i.i.i.i.i103 = icmp eq i32 %i.kc, %i.kp
  br i1 %.not.i.i.i.i.i103, label %bb.w, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104

bb.w:                                             ; preds = %bb.v
  %i.kq = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i101, i64 8
  %i.kr = load ptr, ptr %i.kq, align 8
  %i.ks = ptrtoint ptr %i.kr to i64
  %i.kt = and i64 %i.ks, 281474976710655
  %i.ku = inttoptr i64 %i.kt to ptr
  %i.kv = select i1 %.not.i.i13.i.i.i.i.i102, ptr %i.ku, ptr %.010.i.i.i.i101 ; 2 uses
  %i.kw = icmp eq ptr %i.kf, %i.kv
  br i1 %i.kw, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110: ; preds = %bb.w
  %bcmp.i.i.i.i.i111 = call i32 @bcmp(ptr %i.kf, ptr %i.kv, i64 %i.kg)
  %i.kx = icmp eq i32 %bcmp.i.i.i.i.i111, 0
  br i1 %i.kx, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110, %bb.v
  %i.ky = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i101, i64 32 ; 2 uses
  %.not.i.i.i.i105 = icmp eq ptr %i.ky, %i.jw
  br i1 %.not.i.i.i.i105, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, label %bb.v, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110, %bb.w, %bb.u
  %.0.lcssa.i.i.i.i107 = phi ptr [ %i.jt, %bb.u ], [ %.010.i.i.i.i101, %bb.w ], [ %.010.i.i.i.i101, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110 ], [ %i.jw, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.kz = getelementptr inbounds nuw [32 x i8], ptr %i.jt, i64 %i.jv
  %.not.i108 = icmp eq ptr %.0.lcssa.i.i.i.i107, %i.kz
  br i1 %.not.i108, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88, label %bb.x

bb.x:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106
  %i.la = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i107, i64 16
  %i.lb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i107, i64 30
  %i.lc = load i16, ptr %i.lb, align 2
  %i.ld = icmp eq i16 %i.lc, 3
  %spec.select.i109 = select i1 %i.ld, ptr %i.la, ptr null
  br label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88

_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88: ; preds = %bb.x, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, %bb.r
  %.031 = phi ptr [ %i.hr, %bb.r ], [ null, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106 ], [ %spec.select.i109, %bb.x ] ; 6 uses
  %i.le = load ptr, ptr %i.c, align 8
  %i.lf = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not143 = icmp eq ptr %i.le, %i.lf
  br i1 %.not143, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88
  %i.lg = getelementptr inbounds nuw i8, ptr %6, i64 14
  %i.lh = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.lk = or i64 ptrtoint (ptr @.str.88 to i64), 289637751035265024
  %i.ll = inttoptr i64 %i.lk to ptr
  %i.lm = getelementptr inbounds nuw i8, ptr %.031, i64 4 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.031, i64 8 ; 4 uses
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph, %bb.ad
  %i.lo = phi ptr [ %i.lf, %.lr.ph ], [ %i.ov, %bb.ad ]
  %.0142 = phi i64 [ 0, %.lr.ph ], [ %i.ot, %bb.ad ] ; 5 uses
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.lo, i64 %.0142
  %i.lq = load ptr, ptr %i.lp, align 8            ; 2 uses
  %i.lr = load ptr, ptr %i.lq, align 8
  %i.ls = load ptr, ptr %i.lr, align 8
  %i.lt = call noundef zeroext i1 %i.ls(ptr noundef nonnull align 8 dereferenceable(72) %i.lq)
  br i1 %i.lt, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  store i16 3, ptr %i.lg, align 2
  %i.lu = load ptr, ptr %i.a, align 8
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.lu, i64 %.0142
  %i.lw = load ptr, ptr %i.lv, align 8            ; 3 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 48
  %i.ly = load i64, ptr %i.lx, align 8
  %i.lz = icmp eq i64 %i.ly, 0
  br i1 %i.lz, label %bb.aa, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit: ; preds = %bb.z
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lw, i64 40
  %i.mb = load ptr, ptr %i.ma, align 8            ; 2 uses
  %i.mc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.mb) #36, !noalias !720
  %i.md = trunc i64 %i.mc to i32
  %i.me = load ptr, ptr %i.li, align 8, !nonnull !16, !align !112
  %i.mf = load ptr, ptr %i.lj, align 8
  %i.mg = ptrtoint ptr %i.mf to i64
  %i.mh = and i64 %i.mg, 281474976710655
  %i.mi = inttoptr i64 %i.mh to ptr
  %i.mj = call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.me, ptr noundef %i.mi, i64 noundef 0, i64 noundef 512)
  %i.mk = load ptr, ptr %i.lj, align 8
  %i.ml = ptrtoint ptr %i.mk to i64
  %i.mm = and i64 %i.ml, -281474976710656
  %i.mn = ptrtoint ptr %i.mj to i64               ; 2 uses
  %i.mo = or i64 %i.mm, %i.mn
  %i.mp = inttoptr i64 %i.mo to ptr
  store ptr %i.mp, ptr %i.lj, align 8
  store i32 16, ptr %i.lh, align 4
  %.pre.i.i.i.i = load i32, ptr %6, align 8
  %i.mq = zext i32 %.pre.i.i.i.i to i64
  %i.mr = ptrtoint ptr %i.mb to i64
  %i.ms = or i64 %i.mr, 289637751035265024
  %i.mt = inttoptr i64 %i.ms to ptr
  %i.mu = and i64 %i.mn, 281474976710655
  %i.mv = inttoptr i64 %i.mu to ptr
  %i.mw = getelementptr inbounds nuw [32 x i8], ptr %i.mv, i64 %i.mq ; 6 uses
  store i32 4, ptr %i.mw, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mw, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i.i, align 4
  %.sroa.65.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  store ptr %i.ll, ptr %.sroa.65.0..sroa_idx.i.i, align 8
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 16
  store i32 %i.md, ptr %i.mx, align 8
  %.sroa.6.0..sroa_idx.i114 = getelementptr inbounds nuw i8, ptr %i.mw, i64 20
  store i32 0, ptr %.sroa.6.0..sroa_idx.i114, align 4
  %.sroa.66.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mw, i64 24
  store ptr %i.mt, ptr %.sroa.66.0..sroa_idx.i, align 8
  %i.my = load i32, ptr %6, align 8
  %i.mz = add i32 %i.my, 1
  store i32 %i.mz, ptr %6, align 8
  %.pre146 = load ptr, ptr %i.a, align 8
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre146, i64 %.0142
  %.pre147 = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit, %bb.z
  %i.na = phi ptr [ %.pre147, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit ], [ %i.lw, %bb.z ]
  call void @_ZN4glTF5WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_4MeshERNS_11AssetWriterE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(120) %i.na, ptr noundef nonnull align 8 dereferenceable(112) %0)
  %i.nb = load ptr, ptr %i.a, align 8
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.nb, i64 %.0142
  %i.nd = load ptr, ptr %i.nc, align 8            ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  %i.nf = load ptr, ptr %i.ne, align 8, !noalias !723 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nd, i64 16
  %i.nh = load i64, ptr %i.ng, align 8, !noalias !723
  %i.ni = trunc i64 %i.nh to i32
  %.not.i.i = icmp eq ptr %i.nf, null
  %i.nj = select i1 %.not.i.i, ptr @_ZN9rapidjson16GenericStringRefIcE11emptyStringE, ptr %i.nf, !prof !6
  %i.nk = load ptr, ptr %i.li, align 8, !nonnull !16, !align !112
  %i.nl = load i32, ptr %.031, align 8            ; 3 uses
  %i.nm = load i32, ptr %i.lm, align 4            ; 6 uses
  %.not.i.i.i116 = icmp ult i32 %i.nl, %i.nm
  br i1 %.not.i.i.i116, label %._crit_edge148, label %bb.ab

._crit_edge148:                                   ; preds = %bb.aa
  %.pre149 = load ptr, ptr %i.ln, align 8
  br label %bb.ac

end_hunk_15
begin_hunk_16_@_ZN4glTF8LazyDictINS_4NodeEE16AttachToDocumentERN9rapidjson15GenericDocumentINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEES8_EE:bb.a
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = and i64 %i.q, 281474976710655
  %i.s = inttoptr i64 %i.r to ptr                 ; 4 uses
  %i.t = load i32, ptr %i.c, align 8              ; 2 uses
  %i.u = zext i32 %i.t to i64                     ; 2 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.u, 5
  %i.v = getelementptr i8, ptr %i.s, i64 %.idx.i.i.i.i ; 2 uses
  %.not9.i.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not9.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c
  %i.w = lshr i64 %i.l, 40
  %i.x = trunc i64 %i.w to i8
  %i.y = and i64 %i.m, 1152921504606846976
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.y, 0       ; 2 uses
  %i.z = sext i8 %i.x to i32
  %i.aa = sub nsw i32 13, %i.z
  %i.ab = select i1 %.not.i.i.i.i.i.i.i, i32 %i.f, i32 %i.aa ; 2 uses
  %i.ac = and i64 %i.l, 281474976710655
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = select i1 %.not.i.i.i.i.i.i.i, ptr %i.ad, ptr %3 ; 2 uses
  %i.af = zext i32 %i.ab to i64
  br label %bb.d

bb.d:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %.lr.ph.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i ], [ %i.ax, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 14
  %i.ah = load i16, ptr %i.ag, align 2
  %i.ai = and i16 %i.ah, 4096
  %.not.i.i13.i.i.i.i.i = icmp eq i16 %i.ai, 0    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 13
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = sext i8 %i.ak to i32
  %i.am = sub nsw i32 13, %i.al
  %i.an = load i32, ptr %.010.i.i.i.i, align 8
  %i.ao = select i1 %.not.i.i13.i.i.i.i.i, i32 %i.an, i32 %i.am
  %.not.i.i.i.i.i = icmp eq i32 %i.ab, %i.ao
  br i1 %.not.i.i.i.i.i, label %bb.e, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = and i64 %i.ar, 281474976710655
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = select i1 %.not.i.i13.i.i.i.i.i, ptr %i.at, ptr %.010.i.i.i.i ; 2 uses
  %i.av = icmp eq ptr %i.ae, %i.au
  br i1 %i.av, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i: ; preds = %bb.e
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %i.ae, ptr %i.au, i64 %i.af)
  %i.aw = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.aw, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ax, %i.v
  br i1 %.not.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %bb.d, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.e, %bb.c
  %.0.lcssa.i.i.i.i = phi ptr [ %i.s, %bb.c ], [ %.010.i.i.i.i, %bb.e ], [ %.010.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i ], [ %i.v, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.ay = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %i.u
  %.not.i = icmp eq ptr %.0.lcssa.i.i.i.i, %i.ay
  br i1 %.not.i, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 30
  %i.bb = load i16, ptr %i.ba, align 2
  %i.bc = icmp eq i16 %i.bb, 3
  br i1 %i.bc, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread

_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit: ; preds = %bb.f, %bb.a
  %.1 = phi ptr [ %1, %bb.a ], [ %i.az, %bb.f ]   ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.bf = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.be) #36, !noalias !747
  %i.bg = trunc i64 %i.bf to i32                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 14
  store i16 1029, ptr %i.bh, align 2
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = and i64 %i.bk, -281474976710656
  %i.bm = ptrtoint ptr %i.be to i64               ; 3 uses
  %i.bn = or i64 %i.bl, %i.bm                     ; 2 uses
  %i.bo = inttoptr i64 %i.bn to ptr
  store ptr %i.bo, ptr %i.bi, align 8
  store i32 %i.bg, ptr %2, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = and i64 %i.br, 281474976710655
  %i.bt = inttoptr i64 %i.bs to ptr               ; 4 uses
  %i.bu = load i32, ptr %.1, align 8              ; 2 uses
  %i.bv = zext i32 %i.bu to i64                   ; 2 uses
  %.idx.i.i.i.i10 = shl nuw nsw i64 %i.bv, 5
  %i.bw = getelementptr i8, ptr %i.bt, i64 %.idx.i.i.i.i10 ; 2 uses
  %.not9.i.i.i.i11 = icmp eq i32 %i.bu, 0
  br i1 %.not9.i.i.i.i11, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19, label %.lr.ph.i.i.i.i12

.lr.ph.i.i.i.i12:                                 ; preds = %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit
  %i.bx = lshr i64 %i.bm, 40
  %i.by = trunc i64 %i.bx to i8
  %i.bz = and i64 %i.bn, 1152921504606846976
  %.not.i.i.i.i.i.i.i13 = icmp eq i64 %i.bz, 0    ; 2 uses
  %i.ca = sext i8 %i.by to i32
  %i.cb = sub nsw i32 13, %i.ca
  %i.cc = select i1 %.not.i.i.i.i.i.i.i13, i32 %i.bg, i32 %i.cb ; 2 uses
  %i.cd = and i64 %i.bm, 281474976710655
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = select i1 %.not.i.i.i.i.i.i.i13, ptr %i.ce, ptr %2 ; 2 uses
  %i.cg = zext i32 %i.cc to i64
  br label %bb.g

bb.g:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17, %.lr.ph.i.i.i.i12
  %.010.i.i.i.i14 = phi ptr [ %i.bt, %.lr.ph.i.i.i.i12 ], [ %i.cy, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17 ] ; 8 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i14, i64 14
  %i.ci = load i16, ptr %i.ch, align 2
  %i.cj = and i16 %i.ci, 4096
  %.not.i.i13.i.i.i.i.i15 = icmp eq i16 %i.cj, 0  ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i14, i64 13
  %i.cl = load i8, ptr %i.ck, align 1
  %i.cm = sext i8 %i.cl to i32
  %i.cn = sub nsw i32 13, %i.cm
  %i.co = load i32, ptr %.010.i.i.i.i14, align 8
  %i.cp = select i1 %.not.i.i13.i.i.i.i.i15, i32 %i.co, i32 %i.cn
  %.not.i.i.i.i.i16 = icmp eq i32 %i.cc, %i.cp
  br i1 %.not.i.i.i.i.i16, label %bb.h, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17

bb.h:                                             ; preds = %bb.g
  %i.cq = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i14, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = and i64 %i.cs, 281474976710655
  %i.cu = inttoptr i64 %i.ct to ptr
  %i.cv = select i1 %.not.i.i13.i.i.i.i.i15, ptr %i.cu, ptr %.010.i.i.i.i14 ; 2 uses
  %i.cw = icmp eq ptr %i.cf, %i.cv
  br i1 %i.cw, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i23

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i23: ; preds = %bb.h
  %bcmp.i.i.i.i.i24 = call i32 @bcmp(ptr %i.cf, ptr %i.cv, i64 %i.cg)
  %i.cx = icmp eq i32 %bcmp.i.i.i.i.i24, 0
  br i1 %i.cx, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i23, %bb.g
  %i.cy = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i14, i64 32 ; 2 uses
  %.not.i.i.i.i18 = icmp eq ptr %i.cy, %i.bw
  br i1 %.not.i.i.i.i18, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19, label %bb.g, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i23, %bb.h, %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit
  %.0.lcssa.i.i.i.i20 = phi ptr [ %i.bt, %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit ], [ %.010.i.i.i.i14, %bb.h ], [ %.010.i.i.i.i14, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i23 ], [ %i.bw, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.cz = getelementptr inbounds nuw [32 x i8], ptr %i.bt, i64 %i.bv
  %.not.i21 = icmp eq ptr %.0.lcssa.i.i.i.i20, %i.cz
  br i1 %.not.i21, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit25, label %bb.i

bb.i:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19
  %i.da = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i20, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i20, i64 30
  %i.dc = load i16, ptr %i.db, align 2
  %i.dd = icmp eq i16 %i.dc, 3
  %spec.select.i22 = select i1 %i.dd, ptr %i.da, ptr null
  br label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit25

_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit25: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19, %bb.i
  %i.de = phi ptr [ null, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19 ], [ %spec.select.i22, %bb.i ]
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.de, ptr %i.df, align 8
  br label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread

_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread: ; preds = %bb.f, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, %bb.b, %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit25
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4glTF8LazyDictINS_4NodeEE18DetachFromDocumentEv(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr null, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4glTF8LazyDictINS_4NodeEE12WriteObjectsERNS_11AssetWriterE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN4glTF11AssetWriter12WriteObjectsINS_4NodeEEEvRNS_8LazyDictIT_EE(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(120) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4glTF11AssetWriter12WriteObjectsINS_4NodeEEEvRNS_8LazyDictIT_EE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(120) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %3 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %4 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %5 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %6 = alloca %"class.rapidjson::GenericValue", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef ptr @_ZN10glTFCommon19FindObjectInContextERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKcSA_SA_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.209, ptr noundef null) ; 2 uses
  %.not42 = icmp eq ptr %i.h, null
  br i1 %.not42, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load i32, ptr %0, align 8                ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4              ; 6 uses
  %.not.i.i.i = icmp ult i32 %i.k, %i.m
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not14.i.i.i = icmp eq i32 %i.m, 0
  %i.n = add i32 %i.m, 1
  %i.o = lshr i32 %i.n, 1
  %i.p = add i32 %i.o, %i.m
  %i.q = select i1 %.not14.i.i.i, i32 16, i32 %i.p ; 3 uses
  %i.r = icmp ugt i32 %i.q, %i.m
  br i1 %i.r, label %.noexc.i, label %bb.f

.noexc.i:                                         ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = and i64 %i.u, 281474976710655
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = zext i32 %i.m to i64
  %i.y = zext i32 %i.q to i64
  %i.z = shl nuw nsw i64 %i.x, 5
  %i.aa = shl nuw nsw i64 %i.y, 5
  %i.ab = tail call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef %i.w, i64 noundef %i.z, i64 noundef %i.aa)
  %i.ac = load ptr, ptr %i.s, align 8
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = and i64 %i.ad, -281474976710656
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = or i64 %i.ae, %i.af
  %i.ah = inttoptr i64 %i.ag to ptr
  store ptr %i.ah, ptr %i.s, align 8
  store i32 %i.q, ptr %i.l, align 4
  %.pre.i.i.i = load i32, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %.noexc.i, %bb.e, %bb.d
  %i.ai = phi i32 [ %.pre.i.i.i, %.noexc.i ], [ %i.k, %bb.e ], [ %i.k, %bb.d ]
  %i.aj = or i64 ptrtoint (ptr @.str.93 to i64), 289637751035265024
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = and i64 %i.an, 281474976710655
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = zext i32 %i.ai to i64
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %i.ap, i64 %i.aq ; 5 uses
  store i32 10, ptr %i.ar, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i, align 4
  %.sroa.65.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.ak, ptr %.sroa.65.0..sroa_idx.i, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.as, i8 0, i64 14, i1 false)
  %.sroa.6136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 30
  store i16 3, ptr %.sroa.6136.0..sroa_idx, align 2
  %i.at = load i32, ptr %0, align 8
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr %0, align 8
  %i.av = tail call noundef ptr @_ZN10glTFCommon19FindObjectInContextERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKcSA_SA_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.209, ptr noundef null)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.036 = phi ptr [ %i.h, %bb.c ], [ %i.av, %bb.f ] ; 6 uses
  %i.aw = load ptr, ptr %i.f, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.ax = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aw) #36, !noalias !750
  %i.ay = trunc i64 %i.ax to i32                  ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 14
  store i16 1029, ptr %i.az, align 2
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = and i64 %i.bc, -281474976710656
  %i.be = ptrtoint ptr %i.aw to i64               ; 4 uses
  %i.bf = or i64 %i.bd, %i.be                     ; 2 uses
  %i.bg = inttoptr i64 %i.bf to ptr
  store ptr %i.bg, ptr %i.ba, align 8
  store i32 %i.ay, ptr %5, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.036, i64 8 ; 4 uses
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = and i64 %i.bj, 281474976710655
  %i.bl = inttoptr i64 %i.bk to ptr               ; 7 uses
  %i.bm = load i32, ptr %.036, align 8            ; 3 uses
  %i.bn = zext i32 %i.bm to i64                   ; 4 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.bn, 5
  %i.bo = getelementptr i8, ptr %i.bl, i64 %.idx.i.i.i.i ; 2 uses
  %.not9.i.i.i.i = icmp eq i32 %i.bm, 0
  br i1 %.not9.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g
  %i.bp = lshr i64 %i.be, 40
  %i.bq = trunc i64 %i.bp to i8
  %i.br = and i64 %i.bf, 1152921504606846976
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.br, 0      ; 2 uses
  %i.bs = sext i8 %i.bq to i32
  %i.bt = sub nsw i32 13, %i.bs
  %i.bu = select i1 %.not.i.i.i.i.i.i.i, i32 %i.ay, i32 %i.bt ; 2 uses
  %i.bv = and i64 %i.be, 281474976710655
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = select i1 %.not.i.i.i.i.i.i.i, ptr %i.bw, ptr %5 ; 2 uses
  %i.by = zext i32 %i.bu to i64
  br label %bb.h

bb.h:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %.lr.ph.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i ], [ %i.cq, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 8 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 14
  %i.ca = load i16, ptr %i.bz, align 2
  %i.cb = and i16 %i.ca, 4096
  %.not.i.i13.i.i.i.i.i = icmp eq i16 %i.cb, 0    ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 13
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = sext i8 %i.cd to i32
  %i.cf = sub nsw i32 13, %i.ce
  %i.cg = load i32, ptr %.010.i.i.i.i, align 8
  %i.ch = select i1 %.not.i.i13.i.i.i.i.i, i32 %i.cg, i32 %i.cf
  %.not.i.i.i.i.i = icmp eq i32 %i.bu, %i.ch
  br i1 %.not.i.i.i.i.i, label %bb.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.ci = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = and i64 %i.ck, 281474976710655
  %i.cm = inttoptr i64 %i.cl to ptr
  %i.cn = select i1 %.not.i.i13.i.i.i.i.i, ptr %i.cm, ptr %.010.i.i.i.i ; 2 uses
  %i.co = icmp eq ptr %i.bx, %i.cn
  br i1 %i.co, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i: ; preds = %bb.i
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %i.bx, ptr %i.cn, i64 %i.by)
  %i.cp = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.cp, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.h
  %i.cq = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cq, %i.bo
  br i1 %.not.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %bb.h, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.i, %bb.g
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bl, %bb.g ], [ %.010.i.i.i.i, %bb.i ], [ %.010.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i ], [ %i.bo, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.cr = getelementptr inbounds nuw [32 x i8], ptr %i.bl, i64 %i.bn
  %.not.i = icmp eq ptr %.0.lcssa.i.i.i.i, %i.cr
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 30
  %i.cu = load i16, ptr %i.ct, align 2
  %i.cv = icmp eq i16 %i.cu, 3
  br i1 %i.cv, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit, label %bb.k

bb.k:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, %bb.j
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %.036, i64 4 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4            ; 6 uses
  %.not.i.i.i49 = icmp ult i32 %i.bm, %i.cz
  br i1 %.not.i.i.i49, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not14.i.i.i50 = icmp eq i32 %i.cz, 0
  %i.da = add i32 %i.cz, 1
  %i.db = lshr i32 %i.da, 1
  %i.dc = add i32 %i.db, %i.cz
  %i.dd = select i1 %.not14.i.i.i50, i32 16, i32 %i.dc ; 3 uses
  %i.de = icmp ugt i32 %i.dd, %i.cz
  br i1 %i.de, label %.noexc.i53, label %bb.m

.noexc.i53:                                       ; preds = %bb.l
  %i.df = zext i32 %i.cz to i64
  %i.dg = zext i32 %i.dd to i64
  %i.dh = shl nuw nsw i64 %i.df, 5
  %i.di = shl nuw nsw i64 %i.dg, 5
end_hunk_16
begin_hunk_17_@_ZN4glTF11AssetWriter12WriteObjectsINS_4NodeEEEvRNS_8LazyDictIT_EE:bb.a
  %.pre-phi157 = phi i64 [ %.pre156, %.noexc.i53 ], [ %i.bn, %bb.l ], [ %i.bn, %bb.k ]
  %.pre-phi155 = phi ptr [ %.pre154, %.noexc.i53 ], [ %i.bl, %bb.l ], [ %i.bl, %bb.k ]
  %i.dq = or i64 %i.be, 289637751035265024
  %i.dr = inttoptr i64 %i.dq to ptr
  %i.ds = getelementptr inbounds nuw [32 x i8], ptr %.pre-phi155, i64 %.pre-phi157 ; 5 uses
  store i32 %i.ay, ptr %i.ds, align 8
  %.sroa.6.0..sroa_idx.i51 = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i51, align 4
  %.sroa.65.0..sroa_idx.i52 = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store ptr %i.dr, ptr %.sroa.65.0..sroa_idx.i52, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.dt, i8 0, i64 14, i1 false)
  %.sroa.6132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 30
  store i16 3, ptr %.sroa.6132.0..sroa_idx, align 2
  %i.du = load i32, ptr %.036, align 8
  %i.dv = add i32 %i.du, 1                        ; 3 uses
  store i32 %i.dv, ptr %.036, align 8
  %i.dw = load ptr, ptr %i.f, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.dx = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dw) #36, !noalias !753
  %i.dy = trunc i64 %i.dx to i32                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 14
  store i16 1029, ptr %i.dz, align 2
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = and i64 %i.ec, -281474976710656
  %i.ee = ptrtoint ptr %i.dw to i64               ; 3 uses
  %i.ef = or i64 %i.ed, %i.ee                     ; 2 uses
  %i.eg = inttoptr i64 %i.ef to ptr
  store ptr %i.eg, ptr %i.ea, align 8
  store i32 %i.dy, ptr %4, align 8
  %i.eh = load ptr, ptr %i.bh, align 8
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = and i64 %i.ei, 281474976710655
  %i.ek = inttoptr i64 %i.ej to ptr               ; 4 uses
  %i.el = zext i32 %i.dv to i64                   ; 2 uses
  %.idx.i.i.i.i57 = shl nuw nsw i64 %i.el, 5
  %i.em = getelementptr i8, ptr %i.ek, i64 %.idx.i.i.i.i57 ; 2 uses
  %.not9.i.i.i.i58 = icmp eq i32 %i.dv, 0
  br i1 %.not9.i.i.i.i58, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, label %.lr.ph.i.i.i.i59

.lr.ph.i.i.i.i59:                                 ; preds = %bb.m
  %i.en = lshr i64 %i.ee, 40
  %i.eo = trunc i64 %i.en to i8
  %i.ep = and i64 %i.ef, 1152921504606846976
  %.not.i.i.i.i.i.i.i60 = icmp eq i64 %i.ep, 0    ; 2 uses
  %i.eq = sext i8 %i.eo to i32
  %i.er = sub nsw i32 13, %i.eq
  %i.es = select i1 %.not.i.i.i.i.i.i.i60, i32 %i.dy, i32 %i.er ; 2 uses
  %i.et = and i64 %i.ee, 281474976710655
  %i.eu = inttoptr i64 %i.et to ptr
  %i.ev = select i1 %.not.i.i.i.i.i.i.i60, ptr %i.eu, ptr %4 ; 2 uses
  %i.ew = zext i32 %i.es to i64
  br label %bb.n

bb.n:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64, %.lr.ph.i.i.i.i59
  %.010.i.i.i.i61 = phi ptr [ %i.ek, %.lr.ph.i.i.i.i59 ], [ %i.fo, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64 ] ; 8 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i61, i64 14
  %i.ey = load i16, ptr %i.ex, align 2
  %i.ez = and i16 %i.ey, 4096
  %.not.i.i13.i.i.i.i.i62 = icmp eq i16 %i.ez, 0  ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i61, i64 13
  %i.fb = load i8, ptr %i.fa, align 1
  %i.fc = sext i8 %i.fb to i32
  %i.fd = sub nsw i32 13, %i.fc
  %i.fe = load i32, ptr %.010.i.i.i.i61, align 8
  %i.ff = select i1 %.not.i.i13.i.i.i.i.i62, i32 %i.fe, i32 %i.fd
  %.not.i.i.i.i.i63 = icmp eq i32 %i.es, %i.ff
  br i1 %.not.i.i.i.i.i63, label %bb.o, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64

bb.o:                                             ; preds = %bb.n
  %i.fg = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i61, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = and i64 %i.fi, 281474976710655
  %i.fk = inttoptr i64 %i.fj to ptr
  %i.fl = select i1 %.not.i.i13.i.i.i.i.i62, ptr %i.fk, ptr %.010.i.i.i.i61 ; 2 uses
  %i.fm = icmp eq ptr %i.ev, %i.fl
  br i1 %i.fm, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70: ; preds = %bb.o
  %bcmp.i.i.i.i.i71 = call i32 @bcmp(ptr %i.ev, ptr %i.fl, i64 %i.ew)
  %i.fn = icmp eq i32 %bcmp.i.i.i.i.i71, 0
  br i1 %i.fn, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70, %bb.n
  %i.fo = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i61, i64 32 ; 2 uses
  %.not.i.i.i.i65 = icmp eq ptr %i.fo, %i.em
  br i1 %.not.i.i.i.i65, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, label %bb.n, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70, %bb.o, %bb.m
  %.0.lcssa.i.i.i.i67 = phi ptr [ %i.ek, %bb.m ], [ %.010.i.i.i.i61, %bb.o ], [ %.010.i.i.i.i61, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70 ], [ %i.em, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.fp = getelementptr inbounds nuw [32 x i8], ptr %i.ek, i64 %i.el
  %.not.i68 = icmp ne ptr %.0.lcssa.i.i.i.i67, %i.fp
  call void @llvm.assume(i1 %.not.i68)
  %i.fq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i67, i64 16
  %i.fr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i67, i64 30
  %i.fs = load i16, ptr %i.fr, align 2
  %i.ft = icmp eq i16 %i.fs, 3
  %spec.select.i69 = select i1 %i.ft, ptr %i.fq, ptr null
  br label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit

_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, %bb.j, %bb.b
  %.138 = phi ptr [ %0, %bb.b ], [ %i.cs, %bb.j ], [ %spec.select.i69, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66 ] ; 8 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.fw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fv) #36, !noalias !756
  %i.fx = trunc i64 %i.fw to i32                  ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.fy = getelementptr inbounds nuw i8, ptr %3, i64 14
  store i16 1029, ptr %i.fy, align 2
  %i.fz = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ga = load ptr, ptr %i.fz, align 8
  %i.gb = ptrtoint ptr %i.ga to i64
  %i.gc = and i64 %i.gb, -281474976710656
  %i.gd = ptrtoint ptr %i.fv to i64               ; 4 uses
  %i.ge = or i64 %i.gc, %i.gd                     ; 2 uses
  %i.gf = inttoptr i64 %i.ge to ptr
  store ptr %i.gf, ptr %i.fz, align 8
  store i32 %i.fx, ptr %3, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %.138, i64 8 ; 6 uses
  %i.gh = load ptr, ptr %i.gg, align 8
  %i.gi = ptrtoint ptr %i.gh to i64
  %i.gj = and i64 %i.gi, 281474976710655
  %i.gk = inttoptr i64 %i.gj to ptr               ; 4 uses
  %i.gl = load i32, ptr %.138, align 8            ; 2 uses
  %i.gm = zext i32 %i.gl to i64                   ; 2 uses
  %.idx.i.i.i.i73 = shl nuw nsw i64 %i.gm, 5
  %i.gn = getelementptr i8, ptr %i.gk, i64 %.idx.i.i.i.i73 ; 2 uses
  %.not9.i.i.i.i74 = icmp eq i32 %i.gl, 0
  br i1 %.not9.i.i.i.i74, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, label %.lr.ph.i.i.i.i75

.lr.ph.i.i.i.i75:                                 ; preds = %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit
  %i.go = lshr i64 %i.gd, 40
  %i.gp = trunc i64 %i.go to i8
  %i.gq = and i64 %i.ge, 1152921504606846976
  %.not.i.i.i.i.i.i.i76 = icmp eq i64 %i.gq, 0    ; 2 uses
  %i.gr = sext i8 %i.gp to i32
  %i.gs = sub nsw i32 13, %i.gr
  %i.gt = select i1 %.not.i.i.i.i.i.i.i76, i32 %i.fx, i32 %i.gs ; 2 uses
  %i.gu = and i64 %i.gd, 281474976710655
  %i.gv = inttoptr i64 %i.gu to ptr
  %i.gw = select i1 %.not.i.i.i.i.i.i.i76, ptr %i.gv, ptr %3 ; 2 uses
  %i.gx = zext i32 %i.gt to i64
  br label %bb.p

bb.p:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80, %.lr.ph.i.i.i.i75
  %.010.i.i.i.i77 = phi ptr [ %i.gk, %.lr.ph.i.i.i.i75 ], [ %i.hp, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80 ] ; 8 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i77, i64 14
  %i.gz = load i16, ptr %i.gy, align 2
  %i.ha = and i16 %i.gz, 4096
  %.not.i.i13.i.i.i.i.i78 = icmp eq i16 %i.ha, 0  ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i77, i64 13
  %i.hc = load i8, ptr %i.hb, align 1
  %i.hd = sext i8 %i.hc to i32
  %i.he = sub nsw i32 13, %i.hd
  %i.hf = load i32, ptr %.010.i.i.i.i77, align 8
  %i.hg = select i1 %.not.i.i13.i.i.i.i.i78, i32 %i.hf, i32 %i.he
  %.not.i.i.i.i.i79 = icmp eq i32 %i.gt, %i.hg
  br i1 %.not.i.i.i.i.i79, label %bb.q, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80

bb.q:                                             ; preds = %bb.p
  %i.hh = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i77, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8
  %i.hj = ptrtoint ptr %i.hi to i64
  %i.hk = and i64 %i.hj, 281474976710655
  %i.hl = inttoptr i64 %i.hk to ptr
  %i.hm = select i1 %.not.i.i13.i.i.i.i.i78, ptr %i.hl, ptr %.010.i.i.i.i77 ; 2 uses
  %i.hn = icmp eq ptr %i.gw, %i.hm
  br i1 %i.hn, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86: ; preds = %bb.q
  %bcmp.i.i.i.i.i87 = call i32 @bcmp(ptr %i.gw, ptr %i.hm, i64 %i.gx)
  %i.ho = icmp eq i32 %bcmp.i.i.i.i.i87, 0
  br i1 %i.ho, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86, %bb.p
  %i.hp = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i77, i64 32 ; 2 uses
  %.not.i.i.i.i81 = icmp eq ptr %i.hp, %i.gn
  br i1 %.not.i.i.i.i81, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, label %bb.p, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86, %bb.q, %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit
  %.0.lcssa.i.i.i.i83 = phi ptr [ %i.gk, %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit ], [ %.010.i.i.i.i77, %bb.q ], [ %.010.i.i.i.i77, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86 ], [ %i.gn, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.hq = getelementptr inbounds nuw [32 x i8], ptr %i.gk, i64 %i.gm
  %.not.i84 = icmp eq ptr %.0.lcssa.i.i.i.i83, %i.hq
  br i1 %.not.i84, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82
  %i.hr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i83, i64 16
  %i.hs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i83, i64 30
  %i.ht = load i16, ptr %i.hs, align 2
  %i.hu = icmp eq i16 %i.ht, 3
  br i1 %i.hu, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88, label %bb.s

bb.s:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, %bb.r
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hw = load ptr, ptr %i.hv, align 8
  %i.hx = load i32, ptr %.138, align 8            ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.138, i64 4 ; 2 uses
  %i.hz = load i32, ptr %i.hy, align 4            ; 6 uses
  %.not.i.i.i89 = icmp ult i32 %i.hx, %i.hz
  br i1 %.not.i.i.i89, label %._crit_edge, label %bb.t

._crit_edge:                                      ; preds = %bb.s
  %.pre = load ptr, ptr %i.gg, align 8
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  %.not14.i.i.i90 = icmp eq i32 %i.hz, 0
  %i.ia = add i32 %i.hz, 1
  %i.ib = lshr i32 %i.ia, 1
  %i.ic = add i32 %i.ib, %i.hz
  %i.id = select i1 %.not14.i.i.i90, i32 16, i32 %i.ic ; 3 uses
  %i.ie = icmp ugt i32 %i.id, %i.hz
  %.pre144 = load ptr, ptr %i.gg, align 8         ; 2 uses
  br i1 %i.ie, label %.noexc.i93, label %bb.u

.noexc.i93:                                       ; preds = %bb.t
  %i.if = ptrtoint ptr %.pre144 to i64
  %i.ig = and i64 %i.if, 281474976710655
  %i.ih = inttoptr i64 %i.ig to ptr
  %i.ii = zext i32 %i.hz to i64
  %i.ij = zext i32 %i.id to i64
  %i.ik = shl nuw nsw i64 %i.ii, 5
  %i.il = shl nuw nsw i64 %i.ij, 5
  %i.im = call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.hw, ptr noundef %i.ih, i64 noundef %i.ik, i64 noundef %i.il)
  %i.in = load ptr, ptr %i.gg, align 8
  %i.io = ptrtoint ptr %i.in to i64
  %i.ip = and i64 %i.io, -281474976710656
  %i.iq = ptrtoint ptr %i.im to i64
  %i.ir = or i64 %i.ip, %i.iq
  %i.is = inttoptr i64 %i.ir to ptr               ; 2 uses
  store ptr %i.is, ptr %i.gg, align 8
  store i32 %i.id, ptr %i.hy, align 4
  %.pre.i.i.i94 = load i32, ptr %.138, align 8
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge, %.noexc.i93, %bb.t
  %i.it = phi ptr [ %i.is, %.noexc.i93 ], [ %.pre144, %bb.t ], [ %.pre, %._crit_edge ]
  %i.iu = phi i32 [ %.pre.i.i.i94, %.noexc.i93 ], [ %i.hx, %bb.t ], [ %i.hx, %._crit_edge ]
  %i.iv = or i64 %i.gd, 289637751035265024
  %i.iw = inttoptr i64 %i.iv to ptr
  %i.ix = ptrtoint ptr %i.it to i64
  %i.iy = and i64 %i.ix, 281474976710655
  %i.iz = inttoptr i64 %i.iy to ptr
  %i.ja = zext i32 %i.iu to i64
  %i.jb = getelementptr inbounds nuw [32 x i8], ptr %i.iz, i64 %i.ja ; 5 uses
  store i32 %i.fx, ptr %i.jb, align 8
  %.sroa.6.0..sroa_idx.i91 = getelementptr inbounds nuw i8, ptr %i.jb, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i91, align 4
  %.sroa.65.0..sroa_idx.i92 = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  store ptr %i.iw, ptr %.sroa.65.0..sroa_idx.i92, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  store <14 x i8> zeroinitializer, ptr %i.jc, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jb, i64 30
  store i16 3, ptr %.sroa.6.0..sroa_idx, align 2
  %i.jd = load i32, ptr %.138, align 8
  %i.je = add i32 %i.jd, 1
  store i32 %i.je, ptr %.138, align 8
  %i.jf = load ptr, ptr %i.fu, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.jg = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.jf) #36, !noalias !759
  %i.jh = trunc i64 %i.jg to i32                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.ji = getelementptr inbounds nuw i8, ptr %2, i64 14
  store i16 1029, ptr %i.ji, align 2
  %i.jj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.jk = load ptr, ptr %i.jj, align 8
  %i.jl = ptrtoint ptr %i.jk to i64
  %i.jm = and i64 %i.jl, -281474976710656
  %i.jn = ptrtoint ptr %i.jf to i64               ; 3 uses
  %i.jo = or i64 %i.jm, %i.jn                     ; 2 uses
  %i.jp = inttoptr i64 %i.jo to ptr
  store ptr %i.jp, ptr %i.jj, align 8
  store i32 %i.jh, ptr %2, align 8
  %i.jq = load ptr, ptr %i.gg, align 8
  %i.jr = ptrtoint ptr %i.jq to i64
  %i.js = and i64 %i.jr, 281474976710655
  %i.jt = inttoptr i64 %i.js to ptr               ; 4 uses
  %i.ju = load i32, ptr %.138, align 8            ; 2 uses
  %i.jv = zext i32 %i.ju to i64                   ; 2 uses
  %.idx.i.i.i.i97 = shl nuw nsw i64 %i.jv, 5
  %i.jw = getelementptr i8, ptr %i.jt, i64 %.idx.i.i.i.i97 ; 2 uses
  %.not9.i.i.i.i98 = icmp eq i32 %i.ju, 0
  br i1 %.not9.i.i.i.i98, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, label %.lr.ph.i.i.i.i99

.lr.ph.i.i.i.i99:                                 ; preds = %bb.u
  %i.jx = lshr i64 %i.jn, 40
  %i.jy = trunc i64 %i.jx to i8
  %i.jz = and i64 %i.jo, 1152921504606846976
  %.not.i.i.i.i.i.i.i100 = icmp eq i64 %i.jz, 0   ; 2 uses
  %i.ka = sext i8 %i.jy to i32
  %i.kb = sub nsw i32 13, %i.ka
  %i.kc = select i1 %.not.i.i.i.i.i.i.i100, i32 %i.jh, i32 %i.kb ; 2 uses
  %i.kd = and i64 %i.jn, 281474976710655
  %i.ke = inttoptr i64 %i.kd to ptr
  %i.kf = select i1 %.not.i.i.i.i.i.i.i100, ptr %i.ke, ptr %2 ; 2 uses
  %i.kg = zext i32 %i.kc to i64
  br label %bb.v

bb.v:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104, %.lr.ph.i.i.i.i99
  %.010.i.i.i.i101 = phi ptr [ %i.jt, %.lr.ph.i.i.i.i99 ], [ %i.ky, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104 ] ; 8 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i101, i64 14
  %i.ki = load i16, ptr %i.kh, align 2
  %i.kj = and i16 %i.ki, 4096
  %.not.i.i13.i.i.i.i.i102 = icmp eq i16 %i.kj, 0 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i101, i64 13
  %i.kl = load i8, ptr %i.kk, align 1
  %i.km = sext i8 %i.kl to i32
  %i.kn = sub nsw i32 13, %i.km
  %i.ko = load i32, ptr %.010.i.i.i.i101, align 8
  %i.kp = select i1 %.not.i.i13.i.i.i.i.i102, i32 %i.ko, i32 %i.kn
  %.not.i.i.i.i.i103 = icmp eq i32 %i.kc, %i.kp
  br i1 %.not.i.i.i.i.i103, label %bb.w, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104

bb.w:                                             ; preds = %bb.v
  %i.kq = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i101, i64 8
  %i.kr = load ptr, ptr %i.kq, align 8
  %i.ks = ptrtoint ptr %i.kr to i64
  %i.kt = and i64 %i.ks, 281474976710655
  %i.ku = inttoptr i64 %i.kt to ptr
  %i.kv = select i1 %.not.i.i13.i.i.i.i.i102, ptr %i.ku, ptr %.010.i.i.i.i101 ; 2 uses
  %i.kw = icmp eq ptr %i.kf, %i.kv
  br i1 %i.kw, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110: ; preds = %bb.w
  %bcmp.i.i.i.i.i111 = call i32 @bcmp(ptr %i.kf, ptr %i.kv, i64 %i.kg)
  %i.kx = icmp eq i32 %bcmp.i.i.i.i.i111, 0
  br i1 %i.kx, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110, %bb.v
  %i.ky = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i101, i64 32 ; 2 uses
  %.not.i.i.i.i105 = icmp eq ptr %i.ky, %i.jw
  br i1 %.not.i.i.i.i105, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, label %bb.v, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110, %bb.w, %bb.u
  %.0.lcssa.i.i.i.i107 = phi ptr [ %i.jt, %bb.u ], [ %.010.i.i.i.i101, %bb.w ], [ %.010.i.i.i.i101, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110 ], [ %i.jw, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.kz = getelementptr inbounds nuw [32 x i8], ptr %i.jt, i64 %i.jv
  %.not.i108 = icmp eq ptr %.0.lcssa.i.i.i.i107, %i.kz
  br i1 %.not.i108, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88, label %bb.x

bb.x:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106
  %i.la = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i107, i64 16
  %i.lb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i107, i64 30
  %i.lc = load i16, ptr %i.lb, align 2
  %i.ld = icmp eq i16 %i.lc, 3
  %spec.select.i109 = select i1 %i.ld, ptr %i.la, ptr null
  br label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88

_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88: ; preds = %bb.x, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, %bb.r
  %.031 = phi ptr [ %i.hr, %bb.r ], [ null, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106 ], [ %spec.select.i109, %bb.x ] ; 6 uses
  %i.le = load ptr, ptr %i.c, align 8
  %i.lf = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not143 = icmp eq ptr %i.le, %i.lf
  br i1 %.not143, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88
  %i.lg = getelementptr inbounds nuw i8, ptr %6, i64 14
  %i.lh = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.lk = or i64 ptrtoint (ptr @.str.88 to i64), 289637751035265024
  %i.ll = inttoptr i64 %i.lk to ptr
  %i.lm = getelementptr inbounds nuw i8, ptr %.031, i64 4 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.031, i64 8 ; 4 uses
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph, %bb.ad
  %i.lo = phi ptr [ %i.lf, %.lr.ph ], [ %i.ov, %bb.ad ]
  %.0142 = phi i64 [ 0, %.lr.ph ], [ %i.ot, %bb.ad ] ; 5 uses
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.lo, i64 %.0142
  %i.lq = load ptr, ptr %i.lp, align 8            ; 2 uses
  %i.lr = load ptr, ptr %i.lq, align 8
  %i.ls = load ptr, ptr %i.lr, align 8
  %i.lt = call noundef zeroext i1 %i.ls(ptr noundef nonnull align 8 dereferenceable(72) %i.lq)
  br i1 %i.lt, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  store i16 3, ptr %i.lg, align 2
  %i.lu = load ptr, ptr %i.a, align 8
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.lu, i64 %.0142
  %i.lw = load ptr, ptr %i.lv, align 8            ; 3 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 48
  %i.ly = load i64, ptr %i.lx, align 8
  %i.lz = icmp eq i64 %i.ly, 0
  br i1 %i.lz, label %bb.aa, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit: ; preds = %bb.z
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lw, i64 40
  %i.mb = load ptr, ptr %i.ma, align 8            ; 2 uses
  %i.mc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.mb) #36, !noalias !762
  %i.md = trunc i64 %i.mc to i32
  %i.me = load ptr, ptr %i.li, align 8, !nonnull !16, !align !112
  %i.mf = load ptr, ptr %i.lj, align 8
  %i.mg = ptrtoint ptr %i.mf to i64
  %i.mh = and i64 %i.mg, 281474976710655
  %i.mi = inttoptr i64 %i.mh to ptr
  %i.mj = call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.me, ptr noundef %i.mi, i64 noundef 0, i64 noundef 512)
  %i.mk = load ptr, ptr %i.lj, align 8
  %i.ml = ptrtoint ptr %i.mk to i64
  %i.mm = and i64 %i.ml, -281474976710656
  %i.mn = ptrtoint ptr %i.mj to i64               ; 2 uses
  %i.mo = or i64 %i.mm, %i.mn
  %i.mp = inttoptr i64 %i.mo to ptr
  store ptr %i.mp, ptr %i.lj, align 8
  store i32 16, ptr %i.lh, align 4
  %.pre.i.i.i.i = load i32, ptr %6, align 8
  %i.mq = zext i32 %.pre.i.i.i.i to i64
  %i.mr = ptrtoint ptr %i.mb to i64
  %i.ms = or i64 %i.mr, 289637751035265024
  %i.mt = inttoptr i64 %i.ms to ptr
  %i.mu = and i64 %i.mn, 281474976710655
  %i.mv = inttoptr i64 %i.mu to ptr
  %i.mw = getelementptr inbounds nuw [32 x i8], ptr %i.mv, i64 %i.mq ; 6 uses
  store i32 4, ptr %i.mw, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mw, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i.i, align 4
  %.sroa.65.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  store ptr %i.ll, ptr %.sroa.65.0..sroa_idx.i.i, align 8
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 16
  store i32 %i.md, ptr %i.mx, align 8
  %.sroa.6.0..sroa_idx.i114 = getelementptr inbounds nuw i8, ptr %i.mw, i64 20
  store i32 0, ptr %.sroa.6.0..sroa_idx.i114, align 4
  %.sroa.66.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mw, i64 24
  store ptr %i.mt, ptr %.sroa.66.0..sroa_idx.i, align 8
  %i.my = load i32, ptr %6, align 8
  %i.mz = add i32 %i.my, 1
  store i32 %i.mz, ptr %6, align 8
  %.pre146 = load ptr, ptr %i.a, align 8
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre146, i64 %.0142
  %.pre147 = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit, %bb.z
  %i.na = phi ptr [ %.pre147, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit ], [ %i.lw, %bb.z ]
  call void @_ZN4glTF5WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_4NodeERNS_11AssetWriterE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(360) %i.na, ptr noundef nonnull align 8 dereferenceable(112) %0)
  %i.nb = load ptr, ptr %i.a, align 8
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.nb, i64 %.0142
  %i.nd = load ptr, ptr %i.nc, align 8            ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  %i.nf = load ptr, ptr %i.ne, align 8, !noalias !765 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nd, i64 16
  %i.nh = load i64, ptr %i.ng, align 8, !noalias !765
  %i.ni = trunc i64 %i.nh to i32
  %.not.i.i = icmp eq ptr %i.nf, null
  %i.nj = select i1 %.not.i.i, ptr @_ZN9rapidjson16GenericStringRefIcE11emptyStringE, ptr %i.nf, !prof !6
  %i.nk = load ptr, ptr %i.li, align 8, !nonnull !16, !align !112
  %i.nl = load i32, ptr %.031, align 8            ; 3 uses
  %i.nm = load i32, ptr %i.lm, align 4            ; 6 uses
  %.not.i.i.i116 = icmp ult i32 %i.nl, %i.nm
  br i1 %.not.i.i.i116, label %._crit_edge148, label %bb.ab

._crit_edge148:                                   ; preds = %bb.aa
  %.pre149 = load ptr, ptr %i.ln, align 8
  br label %bb.ac

end_hunk_17
begin_hunk_18_@_ZN4glTF8LazyDictINS_7SamplerEE16AttachToDocumentERN9rapidjson15GenericDocumentINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEES8_EE:bb.a
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = and i64 %i.q, 281474976710655
  %i.s = inttoptr i64 %i.r to ptr                 ; 4 uses
  %i.t = load i32, ptr %i.c, align 8              ; 2 uses
  %i.u = zext i32 %i.t to i64                     ; 2 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.u, 5
  %i.v = getelementptr i8, ptr %i.s, i64 %.idx.i.i.i.i ; 2 uses
  %.not9.i.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not9.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c
  %i.w = lshr i64 %i.l, 40
  %i.x = trunc i64 %i.w to i8
  %i.y = and i64 %i.m, 1152921504606846976
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.y, 0       ; 2 uses
  %i.z = sext i8 %i.x to i32
  %i.aa = sub nsw i32 13, %i.z
  %i.ab = select i1 %.not.i.i.i.i.i.i.i, i32 %i.f, i32 %i.aa ; 2 uses
  %i.ac = and i64 %i.l, 281474976710655
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = select i1 %.not.i.i.i.i.i.i.i, ptr %i.ad, ptr %3 ; 2 uses
  %i.af = zext i32 %i.ab to i64
  br label %bb.d

bb.d:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %.lr.ph.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i ], [ %i.ax, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 14
  %i.ah = load i16, ptr %i.ag, align 2
  %i.ai = and i16 %i.ah, 4096
  %.not.i.i13.i.i.i.i.i = icmp eq i16 %i.ai, 0    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 13
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = sext i8 %i.ak to i32
  %i.am = sub nsw i32 13, %i.al
  %i.an = load i32, ptr %.010.i.i.i.i, align 8
  %i.ao = select i1 %.not.i.i13.i.i.i.i.i, i32 %i.an, i32 %i.am
  %.not.i.i.i.i.i = icmp eq i32 %i.ab, %i.ao
  br i1 %.not.i.i.i.i.i, label %bb.e, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = and i64 %i.ar, 281474976710655
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = select i1 %.not.i.i13.i.i.i.i.i, ptr %i.at, ptr %.010.i.i.i.i ; 2 uses
  %i.av = icmp eq ptr %i.ae, %i.au
  br i1 %i.av, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i: ; preds = %bb.e
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %i.ae, ptr %i.au, i64 %i.af)
  %i.aw = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.aw, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ax, %i.v
  br i1 %.not.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %bb.d, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.e, %bb.c
  %.0.lcssa.i.i.i.i = phi ptr [ %i.s, %bb.c ], [ %.010.i.i.i.i, %bb.e ], [ %.010.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i ], [ %i.v, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.ay = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %i.u
  %.not.i = icmp eq ptr %.0.lcssa.i.i.i.i, %i.ay
  br i1 %.not.i, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 30
  %i.bb = load i16, ptr %i.ba, align 2
  %i.bc = icmp eq i16 %i.bb, 3
  br i1 %i.bc, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread

_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit: ; preds = %bb.f, %bb.a
  %.1 = phi ptr [ %1, %bb.a ], [ %i.az, %bb.f ]   ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.bf = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.be) #36, !noalias !787
  %i.bg = trunc i64 %i.bf to i32                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 14
  store i16 1029, ptr %i.bh, align 2
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = and i64 %i.bk, -281474976710656
  %i.bm = ptrtoint ptr %i.be to i64               ; 3 uses
  %i.bn = or i64 %i.bl, %i.bm                     ; 2 uses
  %i.bo = inttoptr i64 %i.bn to ptr
  store ptr %i.bo, ptr %i.bi, align 8
  store i32 %i.bg, ptr %2, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = and i64 %i.br, 281474976710655
  %i.bt = inttoptr i64 %i.bs to ptr               ; 4 uses
  %i.bu = load i32, ptr %.1, align 8              ; 2 uses
  %i.bv = zext i32 %i.bu to i64                   ; 2 uses
  %.idx.i.i.i.i10 = shl nuw nsw i64 %i.bv, 5
  %i.bw = getelementptr i8, ptr %i.bt, i64 %.idx.i.i.i.i10 ; 2 uses
  %.not9.i.i.i.i11 = icmp eq i32 %i.bu, 0
  br i1 %.not9.i.i.i.i11, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19, label %.lr.ph.i.i.i.i12

.lr.ph.i.i.i.i12:                                 ; preds = %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit
  %i.bx = lshr i64 %i.bm, 40
  %i.by = trunc i64 %i.bx to i8
  %i.bz = and i64 %i.bn, 1152921504606846976
  %.not.i.i.i.i.i.i.i13 = icmp eq i64 %i.bz, 0    ; 2 uses
  %i.ca = sext i8 %i.by to i32
  %i.cb = sub nsw i32 13, %i.ca
  %i.cc = select i1 %.not.i.i.i.i.i.i.i13, i32 %i.bg, i32 %i.cb ; 2 uses
  %i.cd = and i64 %i.bm, 281474976710655
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = select i1 %.not.i.i.i.i.i.i.i13, ptr %i.ce, ptr %2 ; 2 uses
  %i.cg = zext i32 %i.cc to i64
  br label %bb.g

bb.g:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17, %.lr.ph.i.i.i.i12
  %.010.i.i.i.i14 = phi ptr [ %i.bt, %.lr.ph.i.i.i.i12 ], [ %i.cy, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17 ] ; 8 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i14, i64 14
  %i.ci = load i16, ptr %i.ch, align 2
  %i.cj = and i16 %i.ci, 4096
  %.not.i.i13.i.i.i.i.i15 = icmp eq i16 %i.cj, 0  ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i14, i64 13
  %i.cl = load i8, ptr %i.ck, align 1
  %i.cm = sext i8 %i.cl to i32
  %i.cn = sub nsw i32 13, %i.cm
  %i.co = load i32, ptr %.010.i.i.i.i14, align 8
  %i.cp = select i1 %.not.i.i13.i.i.i.i.i15, i32 %i.co, i32 %i.cn
  %.not.i.i.i.i.i16 = icmp eq i32 %i.cc, %i.cp
  br i1 %.not.i.i.i.i.i16, label %bb.h, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17

bb.h:                                             ; preds = %bb.g
  %i.cq = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i14, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = and i64 %i.cs, 281474976710655
  %i.cu = inttoptr i64 %i.ct to ptr
  %i.cv = select i1 %.not.i.i13.i.i.i.i.i15, ptr %i.cu, ptr %.010.i.i.i.i14 ; 2 uses
  %i.cw = icmp eq ptr %i.cf, %i.cv
  br i1 %i.cw, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i23

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i23: ; preds = %bb.h
  %bcmp.i.i.i.i.i24 = call i32 @bcmp(ptr %i.cf, ptr %i.cv, i64 %i.cg)
  %i.cx = icmp eq i32 %bcmp.i.i.i.i.i24, 0
  br i1 %i.cx, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i23, %bb.g
  %i.cy = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i14, i64 32 ; 2 uses
  %.not.i.i.i.i18 = icmp eq ptr %i.cy, %i.bw
  br i1 %.not.i.i.i.i18, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19, label %bb.g, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i23, %bb.h, %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit
  %.0.lcssa.i.i.i.i20 = phi ptr [ %i.bt, %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit ], [ %.010.i.i.i.i14, %bb.h ], [ %.010.i.i.i.i14, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i23 ], [ %i.bw, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.cz = getelementptr inbounds nuw [32 x i8], ptr %i.bt, i64 %i.bv
  %.not.i21 = icmp eq ptr %.0.lcssa.i.i.i.i20, %i.cz
  br i1 %.not.i21, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit25, label %bb.i

bb.i:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19
  %i.da = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i20, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i20, i64 30
  %i.dc = load i16, ptr %i.db, align 2
  %i.dd = icmp eq i16 %i.dc, 3
  %spec.select.i22 = select i1 %i.dd, ptr %i.da, ptr null
  br label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit25

_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit25: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19, %bb.i
  %i.de = phi ptr [ null, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19 ], [ %spec.select.i22, %bb.i ]
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.de, ptr %i.df, align 8
  br label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread

_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread: ; preds = %bb.f, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, %bb.b, %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit25
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4glTF8LazyDictINS_7SamplerEE18DetachFromDocumentEv(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr null, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4glTF8LazyDictINS_7SamplerEE12WriteObjectsERNS_11AssetWriterE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN4glTF11AssetWriter12WriteObjectsINS_7SamplerEEEvRNS_8LazyDictIT_EE(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(120) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4glTF11AssetWriter12WriteObjectsINS_7SamplerEEEvRNS_8LazyDictIT_EE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(120) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %3 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %4 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %5 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %6 = alloca %"class.rapidjson::GenericValue", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef ptr @_ZN10glTFCommon19FindObjectInContextERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKcSA_SA_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.209, ptr noundef null) ; 2 uses
  %.not42 = icmp eq ptr %i.h, null
  br i1 %.not42, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load i32, ptr %0, align 8                ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4              ; 6 uses
  %.not.i.i.i = icmp ult i32 %i.k, %i.m
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not14.i.i.i = icmp eq i32 %i.m, 0
  %i.n = add i32 %i.m, 1
  %i.o = lshr i32 %i.n, 1
  %i.p = add i32 %i.o, %i.m
  %i.q = select i1 %.not14.i.i.i, i32 16, i32 %i.p ; 3 uses
  %i.r = icmp ugt i32 %i.q, %i.m
  br i1 %i.r, label %.noexc.i, label %bb.f

.noexc.i:                                         ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = and i64 %i.u, 281474976710655
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = zext i32 %i.m to i64
  %i.y = zext i32 %i.q to i64
  %i.z = shl nuw nsw i64 %i.x, 5
  %i.aa = shl nuw nsw i64 %i.y, 5
  %i.ab = tail call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef %i.w, i64 noundef %i.z, i64 noundef %i.aa)
  %i.ac = load ptr, ptr %i.s, align 8
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = and i64 %i.ad, -281474976710656
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = or i64 %i.ae, %i.af
  %i.ah = inttoptr i64 %i.ag to ptr
  store ptr %i.ah, ptr %i.s, align 8
  store i32 %i.q, ptr %i.l, align 4
  %.pre.i.i.i = load i32, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %.noexc.i, %bb.e, %bb.d
  %i.ai = phi i32 [ %.pre.i.i.i, %.noexc.i ], [ %i.k, %bb.e ], [ %i.k, %bb.d ]
  %i.aj = or i64 ptrtoint (ptr @.str.93 to i64), 289637751035265024
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = and i64 %i.an, 281474976710655
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = zext i32 %i.ai to i64
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %i.ap, i64 %i.aq ; 5 uses
  store i32 10, ptr %i.ar, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i, align 4
  %.sroa.65.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.ak, ptr %.sroa.65.0..sroa_idx.i, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.as, i8 0, i64 14, i1 false)
  %.sroa.6136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 30
  store i16 3, ptr %.sroa.6136.0..sroa_idx, align 2
  %i.at = load i32, ptr %0, align 8
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr %0, align 8
  %i.av = tail call noundef ptr @_ZN10glTFCommon19FindObjectInContextERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKcSA_SA_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.209, ptr noundef null)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.036 = phi ptr [ %i.h, %bb.c ], [ %i.av, %bb.f ] ; 6 uses
  %i.aw = load ptr, ptr %i.f, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.ax = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aw) #36, !noalias !790
  %i.ay = trunc i64 %i.ax to i32                  ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 14
  store i16 1029, ptr %i.az, align 2
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = and i64 %i.bc, -281474976710656
  %i.be = ptrtoint ptr %i.aw to i64               ; 4 uses
  %i.bf = or i64 %i.bd, %i.be                     ; 2 uses
  %i.bg = inttoptr i64 %i.bf to ptr
  store ptr %i.bg, ptr %i.ba, align 8
  store i32 %i.ay, ptr %5, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.036, i64 8 ; 4 uses
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = and i64 %i.bj, 281474976710655
  %i.bl = inttoptr i64 %i.bk to ptr               ; 7 uses
  %i.bm = load i32, ptr %.036, align 8            ; 3 uses
  %i.bn = zext i32 %i.bm to i64                   ; 4 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.bn, 5
  %i.bo = getelementptr i8, ptr %i.bl, i64 %.idx.i.i.i.i ; 2 uses
  %.not9.i.i.i.i = icmp eq i32 %i.bm, 0
  br i1 %.not9.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g
  %i.bp = lshr i64 %i.be, 40
  %i.bq = trunc i64 %i.bp to i8
  %i.br = and i64 %i.bf, 1152921504606846976
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.br, 0      ; 2 uses
  %i.bs = sext i8 %i.bq to i32
  %i.bt = sub nsw i32 13, %i.bs
  %i.bu = select i1 %.not.i.i.i.i.i.i.i, i32 %i.ay, i32 %i.bt ; 2 uses
  %i.bv = and i64 %i.be, 281474976710655
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = select i1 %.not.i.i.i.i.i.i.i, ptr %i.bw, ptr %5 ; 2 uses
  %i.by = zext i32 %i.bu to i64
  br label %bb.h

bb.h:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %.lr.ph.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i ], [ %i.cq, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 8 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 14
  %i.ca = load i16, ptr %i.bz, align 2
  %i.cb = and i16 %i.ca, 4096
  %.not.i.i13.i.i.i.i.i = icmp eq i16 %i.cb, 0    ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 13
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = sext i8 %i.cd to i32
  %i.cf = sub nsw i32 13, %i.ce
  %i.cg = load i32, ptr %.010.i.i.i.i, align 8
  %i.ch = select i1 %.not.i.i13.i.i.i.i.i, i32 %i.cg, i32 %i.cf
  %.not.i.i.i.i.i = icmp eq i32 %i.bu, %i.ch
  br i1 %.not.i.i.i.i.i, label %bb.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.ci = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = and i64 %i.ck, 281474976710655
  %i.cm = inttoptr i64 %i.cl to ptr
  %i.cn = select i1 %.not.i.i13.i.i.i.i.i, ptr %i.cm, ptr %.010.i.i.i.i ; 2 uses
  %i.co = icmp eq ptr %i.bx, %i.cn
  br i1 %i.co, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i: ; preds = %bb.i
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %i.bx, ptr %i.cn, i64 %i.by)
  %i.cp = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.cp, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.h
  %i.cq = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cq, %i.bo
  br i1 %.not.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %bb.h, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.i, %bb.g
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bl, %bb.g ], [ %.010.i.i.i.i, %bb.i ], [ %.010.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i ], [ %i.bo, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.cr = getelementptr inbounds nuw [32 x i8], ptr %i.bl, i64 %i.bn
  %.not.i = icmp eq ptr %.0.lcssa.i.i.i.i, %i.cr
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 30
  %i.cu = load i16, ptr %i.ct, align 2
  %i.cv = icmp eq i16 %i.cu, 3
  br i1 %i.cv, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit, label %bb.k

bb.k:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, %bb.j
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %.036, i64 4 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4            ; 6 uses
  %.not.i.i.i49 = icmp ult i32 %i.bm, %i.cz
  br i1 %.not.i.i.i49, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not14.i.i.i50 = icmp eq i32 %i.cz, 0
  %i.da = add i32 %i.cz, 1
  %i.db = lshr i32 %i.da, 1
  %i.dc = add i32 %i.db, %i.cz
  %i.dd = select i1 %.not14.i.i.i50, i32 16, i32 %i.dc ; 3 uses
  %i.de = icmp ugt i32 %i.dd, %i.cz
  br i1 %i.de, label %.noexc.i53, label %bb.m

.noexc.i53:                                       ; preds = %bb.l
  %i.df = zext i32 %i.cz to i64
  %i.dg = zext i32 %i.dd to i64
  %i.dh = shl nuw nsw i64 %i.df, 5
  %i.di = shl nuw nsw i64 %i.dg, 5
end_hunk_18
begin_hunk_19_@_ZN4glTF11AssetWriter12WriteObjectsINS_7SamplerEEEvRNS_8LazyDictIT_EE:bb.a
  %.pre-phi157 = phi i64 [ %.pre156, %.noexc.i53 ], [ %i.bn, %bb.l ], [ %i.bn, %bb.k ]
  %.pre-phi155 = phi ptr [ %.pre154, %.noexc.i53 ], [ %i.bl, %bb.l ], [ %i.bl, %bb.k ]
  %i.dq = or i64 %i.be, 289637751035265024
  %i.dr = inttoptr i64 %i.dq to ptr
  %i.ds = getelementptr inbounds nuw [32 x i8], ptr %.pre-phi155, i64 %.pre-phi157 ; 5 uses
  store i32 %i.ay, ptr %i.ds, align 8
  %.sroa.6.0..sroa_idx.i51 = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i51, align 4
  %.sroa.65.0..sroa_idx.i52 = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store ptr %i.dr, ptr %.sroa.65.0..sroa_idx.i52, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.dt, i8 0, i64 14, i1 false)
  %.sroa.6132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 30
  store i16 3, ptr %.sroa.6132.0..sroa_idx, align 2
  %i.du = load i32, ptr %.036, align 8
  %i.dv = add i32 %i.du, 1                        ; 3 uses
  store i32 %i.dv, ptr %.036, align 8
  %i.dw = load ptr, ptr %i.f, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.dx = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dw) #36, !noalias !793
  %i.dy = trunc i64 %i.dx to i32                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 14
  store i16 1029, ptr %i.dz, align 2
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = and i64 %i.ec, -281474976710656
  %i.ee = ptrtoint ptr %i.dw to i64               ; 3 uses
  %i.ef = or i64 %i.ed, %i.ee                     ; 2 uses
  %i.eg = inttoptr i64 %i.ef to ptr
  store ptr %i.eg, ptr %i.ea, align 8
  store i32 %i.dy, ptr %4, align 8
  %i.eh = load ptr, ptr %i.bh, align 8
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = and i64 %i.ei, 281474976710655
  %i.ek = inttoptr i64 %i.ej to ptr               ; 4 uses
  %i.el = zext i32 %i.dv to i64                   ; 2 uses
  %.idx.i.i.i.i57 = shl nuw nsw i64 %i.el, 5
  %i.em = getelementptr i8, ptr %i.ek, i64 %.idx.i.i.i.i57 ; 2 uses
  %.not9.i.i.i.i58 = icmp eq i32 %i.dv, 0
  br i1 %.not9.i.i.i.i58, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, label %.lr.ph.i.i.i.i59

.lr.ph.i.i.i.i59:                                 ; preds = %bb.m
  %i.en = lshr i64 %i.ee, 40
  %i.eo = trunc i64 %i.en to i8
  %i.ep = and i64 %i.ef, 1152921504606846976
  %.not.i.i.i.i.i.i.i60 = icmp eq i64 %i.ep, 0    ; 2 uses
  %i.eq = sext i8 %i.eo to i32
  %i.er = sub nsw i32 13, %i.eq
  %i.es = select i1 %.not.i.i.i.i.i.i.i60, i32 %i.dy, i32 %i.er ; 2 uses
  %i.et = and i64 %i.ee, 281474976710655
  %i.eu = inttoptr i64 %i.et to ptr
  %i.ev = select i1 %.not.i.i.i.i.i.i.i60, ptr %i.eu, ptr %4 ; 2 uses
  %i.ew = zext i32 %i.es to i64
  br label %bb.n

bb.n:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64, %.lr.ph.i.i.i.i59
  %.010.i.i.i.i61 = phi ptr [ %i.ek, %.lr.ph.i.i.i.i59 ], [ %i.fo, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64 ] ; 8 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i61, i64 14
  %i.ey = load i16, ptr %i.ex, align 2
  %i.ez = and i16 %i.ey, 4096
  %.not.i.i13.i.i.i.i.i62 = icmp eq i16 %i.ez, 0  ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i61, i64 13
  %i.fb = load i8, ptr %i.fa, align 1
  %i.fc = sext i8 %i.fb to i32
  %i.fd = sub nsw i32 13, %i.fc
  %i.fe = load i32, ptr %.010.i.i.i.i61, align 8
  %i.ff = select i1 %.not.i.i13.i.i.i.i.i62, i32 %i.fe, i32 %i.fd
  %.not.i.i.i.i.i63 = icmp eq i32 %i.es, %i.ff
  br i1 %.not.i.i.i.i.i63, label %bb.o, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64

bb.o:                                             ; preds = %bb.n
  %i.fg = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i61, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = and i64 %i.fi, 281474976710655
  %i.fk = inttoptr i64 %i.fj to ptr
  %i.fl = select i1 %.not.i.i13.i.i.i.i.i62, ptr %i.fk, ptr %.010.i.i.i.i61 ; 2 uses
  %i.fm = icmp eq ptr %i.ev, %i.fl
  br i1 %i.fm, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70: ; preds = %bb.o
  %bcmp.i.i.i.i.i71 = call i32 @bcmp(ptr %i.ev, ptr %i.fl, i64 %i.ew)
  %i.fn = icmp eq i32 %bcmp.i.i.i.i.i71, 0
  br i1 %i.fn, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70, %bb.n
  %i.fo = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i61, i64 32 ; 2 uses
  %.not.i.i.i.i65 = icmp eq ptr %i.fo, %i.em
  br i1 %.not.i.i.i.i65, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, label %bb.n, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70, %bb.o, %bb.m
  %.0.lcssa.i.i.i.i67 = phi ptr [ %i.ek, %bb.m ], [ %.010.i.i.i.i61, %bb.o ], [ %.010.i.i.i.i61, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70 ], [ %i.em, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.fp = getelementptr inbounds nuw [32 x i8], ptr %i.ek, i64 %i.el
  %.not.i68 = icmp ne ptr %.0.lcssa.i.i.i.i67, %i.fp
  call void @llvm.assume(i1 %.not.i68)
  %i.fq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i67, i64 16
  %i.fr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i67, i64 30
  %i.fs = load i16, ptr %i.fr, align 2
  %i.ft = icmp eq i16 %i.fs, 3
  %spec.select.i69 = select i1 %i.ft, ptr %i.fq, ptr null
  br label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit

_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, %bb.j, %bb.b
  %.138 = phi ptr [ %0, %bb.b ], [ %i.cs, %bb.j ], [ %spec.select.i69, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66 ] ; 8 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.fw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fv) #36, !noalias !796
  %i.fx = trunc i64 %i.fw to i32                  ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.fy = getelementptr inbounds nuw i8, ptr %3, i64 14
  store i16 1029, ptr %i.fy, align 2
  %i.fz = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ga = load ptr, ptr %i.fz, align 8
  %i.gb = ptrtoint ptr %i.ga to i64
  %i.gc = and i64 %i.gb, -281474976710656
  %i.gd = ptrtoint ptr %i.fv to i64               ; 4 uses
  %i.ge = or i64 %i.gc, %i.gd                     ; 2 uses
  %i.gf = inttoptr i64 %i.ge to ptr
  store ptr %i.gf, ptr %i.fz, align 8
  store i32 %i.fx, ptr %3, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %.138, i64 8 ; 6 uses
  %i.gh = load ptr, ptr %i.gg, align 8
  %i.gi = ptrtoint ptr %i.gh to i64
  %i.gj = and i64 %i.gi, 281474976710655
  %i.gk = inttoptr i64 %i.gj to ptr               ; 4 uses
  %i.gl = load i32, ptr %.138, align 8            ; 2 uses
  %i.gm = zext i32 %i.gl to i64                   ; 2 uses
  %.idx.i.i.i.i73 = shl nuw nsw i64 %i.gm, 5
  %i.gn = getelementptr i8, ptr %i.gk, i64 %.idx.i.i.i.i73 ; 2 uses
  %.not9.i.i.i.i74 = icmp eq i32 %i.gl, 0
  br i1 %.not9.i.i.i.i74, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, label %.lr.ph.i.i.i.i75

.lr.ph.i.i.i.i75:                                 ; preds = %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit
  %i.go = lshr i64 %i.gd, 40
  %i.gp = trunc i64 %i.go to i8
  %i.gq = and i64 %i.ge, 1152921504606846976
  %.not.i.i.i.i.i.i.i76 = icmp eq i64 %i.gq, 0    ; 2 uses
  %i.gr = sext i8 %i.gp to i32
  %i.gs = sub nsw i32 13, %i.gr
  %i.gt = select i1 %.not.i.i.i.i.i.i.i76, i32 %i.fx, i32 %i.gs ; 2 uses
  %i.gu = and i64 %i.gd, 281474976710655
  %i.gv = inttoptr i64 %i.gu to ptr
  %i.gw = select i1 %.not.i.i.i.i.i.i.i76, ptr %i.gv, ptr %3 ; 2 uses
  %i.gx = zext i32 %i.gt to i64
  br label %bb.p

bb.p:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80, %.lr.ph.i.i.i.i75
  %.010.i.i.i.i77 = phi ptr [ %i.gk, %.lr.ph.i.i.i.i75 ], [ %i.hp, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80 ] ; 8 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i77, i64 14
  %i.gz = load i16, ptr %i.gy, align 2
  %i.ha = and i16 %i.gz, 4096
  %.not.i.i13.i.i.i.i.i78 = icmp eq i16 %i.ha, 0  ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i77, i64 13
  %i.hc = load i8, ptr %i.hb, align 1
  %i.hd = sext i8 %i.hc to i32
  %i.he = sub nsw i32 13, %i.hd
  %i.hf = load i32, ptr %.010.i.i.i.i77, align 8
  %i.hg = select i1 %.not.i.i13.i.i.i.i.i78, i32 %i.hf, i32 %i.he
  %.not.i.i.i.i.i79 = icmp eq i32 %i.gt, %i.hg
  br i1 %.not.i.i.i.i.i79, label %bb.q, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80

bb.q:                                             ; preds = %bb.p
  %i.hh = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i77, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8
  %i.hj = ptrtoint ptr %i.hi to i64
  %i.hk = and i64 %i.hj, 281474976710655
  %i.hl = inttoptr i64 %i.hk to ptr
  %i.hm = select i1 %.not.i.i13.i.i.i.i.i78, ptr %i.hl, ptr %.010.i.i.i.i77 ; 2 uses
  %i.hn = icmp eq ptr %i.gw, %i.hm
  br i1 %i.hn, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86: ; preds = %bb.q
  %bcmp.i.i.i.i.i87 = call i32 @bcmp(ptr %i.gw, ptr %i.hm, i64 %i.gx)
  %i.ho = icmp eq i32 %bcmp.i.i.i.i.i87, 0
  br i1 %i.ho, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86, %bb.p
  %i.hp = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i77, i64 32 ; 2 uses
  %.not.i.i.i.i81 = icmp eq ptr %i.hp, %i.gn
  br i1 %.not.i.i.i.i81, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, label %bb.p, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86, %bb.q, %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit
  %.0.lcssa.i.i.i.i83 = phi ptr [ %i.gk, %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit ], [ %.010.i.i.i.i77, %bb.q ], [ %.010.i.i.i.i77, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86 ], [ %i.gn, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.hq = getelementptr inbounds nuw [32 x i8], ptr %i.gk, i64 %i.gm
  %.not.i84 = icmp eq ptr %.0.lcssa.i.i.i.i83, %i.hq
  br i1 %.not.i84, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82
  %i.hr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i83, i64 16
  %i.hs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i83, i64 30
  %i.ht = load i16, ptr %i.hs, align 2
  %i.hu = icmp eq i16 %i.ht, 3
  br i1 %i.hu, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88, label %bb.s

bb.s:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, %bb.r
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hw = load ptr, ptr %i.hv, align 8
  %i.hx = load i32, ptr %.138, align 8            ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.138, i64 4 ; 2 uses
  %i.hz = load i32, ptr %i.hy, align 4            ; 6 uses
  %.not.i.i.i89 = icmp ult i32 %i.hx, %i.hz
  br i1 %.not.i.i.i89, label %._crit_edge, label %bb.t

._crit_edge:                                      ; preds = %bb.s
  %.pre = load ptr, ptr %i.gg, align 8
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  %.not14.i.i.i90 = icmp eq i32 %i.hz, 0
  %i.ia = add i32 %i.hz, 1
  %i.ib = lshr i32 %i.ia, 1
  %i.ic = add i32 %i.ib, %i.hz
  %i.id = select i1 %.not14.i.i.i90, i32 16, i32 %i.ic ; 3 uses
  %i.ie = icmp ugt i32 %i.id, %i.hz
  %.pre144 = load ptr, ptr %i.gg, align 8         ; 2 uses
  br i1 %i.ie, label %.noexc.i93, label %bb.u

.noexc.i93:                                       ; preds = %bb.t
  %i.if = ptrtoint ptr %.pre144 to i64
  %i.ig = and i64 %i.if, 281474976710655
  %i.ih = inttoptr i64 %i.ig to ptr
  %i.ii = zext i32 %i.hz to i64
  %i.ij = zext i32 %i.id to i64
  %i.ik = shl nuw nsw i64 %i.ii, 5
  %i.il = shl nuw nsw i64 %i.ij, 5
  %i.im = call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.hw, ptr noundef %i.ih, i64 noundef %i.ik, i64 noundef %i.il)
  %i.in = load ptr, ptr %i.gg, align 8
  %i.io = ptrtoint ptr %i.in to i64
  %i.ip = and i64 %i.io, -281474976710656
  %i.iq = ptrtoint ptr %i.im to i64
  %i.ir = or i64 %i.ip, %i.iq
  %i.is = inttoptr i64 %i.ir to ptr               ; 2 uses
  store ptr %i.is, ptr %i.gg, align 8
  store i32 %i.id, ptr %i.hy, align 4
  %.pre.i.i.i94 = load i32, ptr %.138, align 8
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge, %.noexc.i93, %bb.t
  %i.it = phi ptr [ %i.is, %.noexc.i93 ], [ %.pre144, %bb.t ], [ %.pre, %._crit_edge ]
  %i.iu = phi i32 [ %.pre.i.i.i94, %.noexc.i93 ], [ %i.hx, %bb.t ], [ %i.hx, %._crit_edge ]
  %i.iv = or i64 %i.gd, 289637751035265024
  %i.iw = inttoptr i64 %i.iv to ptr
  %i.ix = ptrtoint ptr %i.it to i64
  %i.iy = and i64 %i.ix, 281474976710655
  %i.iz = inttoptr i64 %i.iy to ptr
  %i.ja = zext i32 %i.iu to i64
  %i.jb = getelementptr inbounds nuw [32 x i8], ptr %i.iz, i64 %i.ja ; 5 uses
  store i32 %i.fx, ptr %i.jb, align 8
  %.sroa.6.0..sroa_idx.i91 = getelementptr inbounds nuw i8, ptr %i.jb, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i91, align 4
  %.sroa.65.0..sroa_idx.i92 = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  store ptr %i.iw, ptr %.sroa.65.0..sroa_idx.i92, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  store <14 x i8> zeroinitializer, ptr %i.jc, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jb, i64 30
  store i16 3, ptr %.sroa.6.0..sroa_idx, align 2
  %i.jd = load i32, ptr %.138, align 8
  %i.je = add i32 %i.jd, 1
  store i32 %i.je, ptr %.138, align 8
  %i.jf = load ptr, ptr %i.fu, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.jg = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.jf) #36, !noalias !799
  %i.jh = trunc i64 %i.jg to i32                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.ji = getelementptr inbounds nuw i8, ptr %2, i64 14
  store i16 1029, ptr %i.ji, align 2
  %i.jj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.jk = load ptr, ptr %i.jj, align 8
  %i.jl = ptrtoint ptr %i.jk to i64
  %i.jm = and i64 %i.jl, -281474976710656
  %i.jn = ptrtoint ptr %i.jf to i64               ; 3 uses
  %i.jo = or i64 %i.jm, %i.jn                     ; 2 uses
  %i.jp = inttoptr i64 %i.jo to ptr
  store ptr %i.jp, ptr %i.jj, align 8
  store i32 %i.jh, ptr %2, align 8
  %i.jq = load ptr, ptr %i.gg, align 8
  %i.jr = ptrtoint ptr %i.jq to i64
  %i.js = and i64 %i.jr, 281474976710655
  %i.jt = inttoptr i64 %i.js to ptr               ; 4 uses
  %i.ju = load i32, ptr %.138, align 8            ; 2 uses
  %i.jv = zext i32 %i.ju to i64                   ; 2 uses
  %.idx.i.i.i.i97 = shl nuw nsw i64 %i.jv, 5
  %i.jw = getelementptr i8, ptr %i.jt, i64 %.idx.i.i.i.i97 ; 2 uses
  %.not9.i.i.i.i98 = icmp eq i32 %i.ju, 0
  br i1 %.not9.i.i.i.i98, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, label %.lr.ph.i.i.i.i99

.lr.ph.i.i.i.i99:                                 ; preds = %bb.u
  %i.jx = lshr i64 %i.jn, 40
  %i.jy = trunc i64 %i.jx to i8
  %i.jz = and i64 %i.jo, 1152921504606846976
  %.not.i.i.i.i.i.i.i100 = icmp eq i64 %i.jz, 0   ; 2 uses
  %i.ka = sext i8 %i.jy to i32
  %i.kb = sub nsw i32 13, %i.ka
  %i.kc = select i1 %.not.i.i.i.i.i.i.i100, i32 %i.jh, i32 %i.kb ; 2 uses
  %i.kd = and i64 %i.jn, 281474976710655
  %i.ke = inttoptr i64 %i.kd to ptr
  %i.kf = select i1 %.not.i.i.i.i.i.i.i100, ptr %i.ke, ptr %2 ; 2 uses
  %i.kg = zext i32 %i.kc to i64
  br label %bb.v

bb.v:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104, %.lr.ph.i.i.i.i99
  %.010.i.i.i.i101 = phi ptr [ %i.jt, %.lr.ph.i.i.i.i99 ], [ %i.ky, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104 ] ; 8 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i101, i64 14
  %i.ki = load i16, ptr %i.kh, align 2
  %i.kj = and i16 %i.ki, 4096
  %.not.i.i13.i.i.i.i.i102 = icmp eq i16 %i.kj, 0 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i101, i64 13
  %i.kl = load i8, ptr %i.kk, align 1
  %i.km = sext i8 %i.kl to i32
  %i.kn = sub nsw i32 13, %i.km
  %i.ko = load i32, ptr %.010.i.i.i.i101, align 8
  %i.kp = select i1 %.not.i.i13.i.i.i.i.i102, i32 %i.ko, i32 %i.kn
  %.not.i.i.i.i.i103 = icmp eq i32 %i.kc, %i.kp
  br i1 %.not.i.i.i.i.i103, label %bb.w, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104

bb.w:                                             ; preds = %bb.v
  %i.kq = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i101, i64 8
  %i.kr = load ptr, ptr %i.kq, align 8
  %i.ks = ptrtoint ptr %i.kr to i64
  %i.kt = and i64 %i.ks, 281474976710655
  %i.ku = inttoptr i64 %i.kt to ptr
  %i.kv = select i1 %.not.i.i13.i.i.i.i.i102, ptr %i.ku, ptr %.010.i.i.i.i101 ; 2 uses
  %i.kw = icmp eq ptr %i.kf, %i.kv
  br i1 %i.kw, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110: ; preds = %bb.w
  %bcmp.i.i.i.i.i111 = call i32 @bcmp(ptr %i.kf, ptr %i.kv, i64 %i.kg)
  %i.kx = icmp eq i32 %bcmp.i.i.i.i.i111, 0
  br i1 %i.kx, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110, %bb.v
  %i.ky = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i101, i64 32 ; 2 uses
  %.not.i.i.i.i105 = icmp eq ptr %i.ky, %i.jw
  br i1 %.not.i.i.i.i105, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, label %bb.v, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110, %bb.w, %bb.u
  %.0.lcssa.i.i.i.i107 = phi ptr [ %i.jt, %bb.u ], [ %.010.i.i.i.i101, %bb.w ], [ %.010.i.i.i.i101, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110 ], [ %i.jw, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.kz = getelementptr inbounds nuw [32 x i8], ptr %i.jt, i64 %i.jv
  %.not.i108 = icmp eq ptr %.0.lcssa.i.i.i.i107, %i.kz
  br i1 %.not.i108, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88, label %bb.x

bb.x:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106
  %i.la = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i107, i64 16
  %i.lb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i107, i64 30
  %i.lc = load i16, ptr %i.lb, align 2
  %i.ld = icmp eq i16 %i.lc, 3
  %spec.select.i109 = select i1 %i.ld, ptr %i.la, ptr null
  br label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88

_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88: ; preds = %bb.x, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, %bb.r
  %.031 = phi ptr [ %i.hr, %bb.r ], [ null, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106 ], [ %spec.select.i109, %bb.x ] ; 6 uses
  %i.le = load ptr, ptr %i.c, align 8
  %i.lf = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not143 = icmp eq ptr %i.le, %i.lf
  br i1 %.not143, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88
  %i.lg = getelementptr inbounds nuw i8, ptr %6, i64 14
  %i.lh = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.lk = or i64 ptrtoint (ptr @.str.88 to i64), 289637751035265024
  %i.ll = inttoptr i64 %i.lk to ptr
  %i.lm = getelementptr inbounds nuw i8, ptr %.031, i64 4 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.031, i64 8 ; 4 uses
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph, %bb.ad
  %i.lo = phi ptr [ %i.lf, %.lr.ph ], [ %i.ov, %bb.ad ]
  %.0142 = phi i64 [ 0, %.lr.ph ], [ %i.ot, %bb.ad ] ; 5 uses
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.lo, i64 %.0142
  %i.lq = load ptr, ptr %i.lp, align 8            ; 2 uses
  %i.lr = load ptr, ptr %i.lq, align 8
  %i.ls = load ptr, ptr %i.lr, align 8
  %i.lt = call noundef zeroext i1 %i.ls(ptr noundef nonnull align 8 dereferenceable(72) %i.lq)
  br i1 %i.lt, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  store i16 3, ptr %i.lg, align 2
  %i.lu = load ptr, ptr %i.a, align 8
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.lu, i64 %.0142
  %i.lw = load ptr, ptr %i.lv, align 8            ; 3 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 48
  %i.ly = load i64, ptr %i.lx, align 8
  %i.lz = icmp eq i64 %i.ly, 0
  br i1 %i.lz, label %bb.aa, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit: ; preds = %bb.z
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lw, i64 40
  %i.mb = load ptr, ptr %i.ma, align 8            ; 2 uses
  %i.mc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.mb) #36, !noalias !802
  %i.md = trunc i64 %i.mc to i32
  %i.me = load ptr, ptr %i.li, align 8, !nonnull !16, !align !112
  %i.mf = load ptr, ptr %i.lj, align 8
  %i.mg = ptrtoint ptr %i.mf to i64
  %i.mh = and i64 %i.mg, 281474976710655
  %i.mi = inttoptr i64 %i.mh to ptr
  %i.mj = call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.me, ptr noundef %i.mi, i64 noundef 0, i64 noundef 512)
  %i.mk = load ptr, ptr %i.lj, align 8
  %i.ml = ptrtoint ptr %i.mk to i64
  %i.mm = and i64 %i.ml, -281474976710656
  %i.mn = ptrtoint ptr %i.mj to i64               ; 2 uses
  %i.mo = or i64 %i.mm, %i.mn
  %i.mp = inttoptr i64 %i.mo to ptr
  store ptr %i.mp, ptr %i.lj, align 8
  store i32 16, ptr %i.lh, align 4
  %.pre.i.i.i.i = load i32, ptr %6, align 8
  %i.mq = zext i32 %.pre.i.i.i.i to i64
  %i.mr = ptrtoint ptr %i.mb to i64
  %i.ms = or i64 %i.mr, 289637751035265024
  %i.mt = inttoptr i64 %i.ms to ptr
  %i.mu = and i64 %i.mn, 281474976710655
  %i.mv = inttoptr i64 %i.mu to ptr
  %i.mw = getelementptr inbounds nuw [32 x i8], ptr %i.mv, i64 %i.mq ; 6 uses
  store i32 4, ptr %i.mw, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mw, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i.i, align 4
  %.sroa.65.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  store ptr %i.ll, ptr %.sroa.65.0..sroa_idx.i.i, align 8
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 16
  store i32 %i.md, ptr %i.mx, align 8
  %.sroa.6.0..sroa_idx.i114 = getelementptr inbounds nuw i8, ptr %i.mw, i64 20
  store i32 0, ptr %.sroa.6.0..sroa_idx.i114, align 4
  %.sroa.66.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mw, i64 24
  store ptr %i.mt, ptr %.sroa.66.0..sroa_idx.i, align 8
  %i.my = load i32, ptr %6, align 8
  %i.mz = add i32 %i.my, 1
  store i32 %i.mz, ptr %6, align 8
  %.pre146 = load ptr, ptr %i.a, align 8
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre146, i64 %.0142
  %.pre147 = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit, %bb.z
  %i.na = phi ptr [ %.pre147, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit ], [ %i.lw, %bb.z ]
  call void @_ZN4glTF5WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_7SamplerERNS_11AssetWriterE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(88) %i.na, ptr noundef nonnull align 8 dereferenceable(112) %0)
  %i.nb = load ptr, ptr %i.a, align 8
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.nb, i64 %.0142
  %i.nd = load ptr, ptr %i.nc, align 8            ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  %i.nf = load ptr, ptr %i.ne, align 8, !noalias !805 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nd, i64 16
  %i.nh = load i64, ptr %i.ng, align 8, !noalias !805
  %i.ni = trunc i64 %i.nh to i32
  %.not.i.i = icmp eq ptr %i.nf, null
  %i.nj = select i1 %.not.i.i, ptr @_ZN9rapidjson16GenericStringRefIcE11emptyStringE, ptr %i.nf, !prof !6
  %i.nk = load ptr, ptr %i.li, align 8, !nonnull !16, !align !112
  %i.nl = load i32, ptr %.031, align 8            ; 3 uses
  %i.nm = load i32, ptr %i.lm, align 4            ; 6 uses
  %.not.i.i.i116 = icmp ult i32 %i.nl, %i.nm
  br i1 %.not.i.i.i116, label %._crit_edge148, label %bb.ab

._crit_edge148:                                   ; preds = %bb.aa
  %.pre149 = load ptr, ptr %i.ln, align 8
  br label %bb.ac

end_hunk_19
begin_hunk_20_@_ZN4glTF8LazyDictINS_5SceneEE16AttachToDocumentERN9rapidjson15GenericDocumentINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEES8_EE:bb.a
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = and i64 %i.q, 281474976710655
  %i.s = inttoptr i64 %i.r to ptr                 ; 4 uses
  %i.t = load i32, ptr %i.c, align 8              ; 2 uses
  %i.u = zext i32 %i.t to i64                     ; 2 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.u, 5
  %i.v = getelementptr i8, ptr %i.s, i64 %.idx.i.i.i.i ; 2 uses
  %.not9.i.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not9.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c
  %i.w = lshr i64 %i.l, 40
  %i.x = trunc i64 %i.w to i8
  %i.y = and i64 %i.m, 1152921504606846976
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.y, 0       ; 2 uses
  %i.z = sext i8 %i.x to i32
  %i.aa = sub nsw i32 13, %i.z
  %i.ab = select i1 %.not.i.i.i.i.i.i.i, i32 %i.f, i32 %i.aa ; 2 uses
  %i.ac = and i64 %i.l, 281474976710655
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = select i1 %.not.i.i.i.i.i.i.i, ptr %i.ad, ptr %3 ; 2 uses
  %i.af = zext i32 %i.ab to i64
  br label %bb.d

bb.d:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %.lr.ph.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i ], [ %i.ax, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 14
  %i.ah = load i16, ptr %i.ag, align 2
  %i.ai = and i16 %i.ah, 4096
  %.not.i.i13.i.i.i.i.i = icmp eq i16 %i.ai, 0    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 13
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = sext i8 %i.ak to i32
  %i.am = sub nsw i32 13, %i.al
  %i.an = load i32, ptr %.010.i.i.i.i, align 8
  %i.ao = select i1 %.not.i.i13.i.i.i.i.i, i32 %i.an, i32 %i.am
  %.not.i.i.i.i.i = icmp eq i32 %i.ab, %i.ao
  br i1 %.not.i.i.i.i.i, label %bb.e, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = and i64 %i.ar, 281474976710655
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = select i1 %.not.i.i13.i.i.i.i.i, ptr %i.at, ptr %.010.i.i.i.i ; 2 uses
  %i.av = icmp eq ptr %i.ae, %i.au
  br i1 %i.av, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i: ; preds = %bb.e
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %i.ae, ptr %i.au, i64 %i.af)
  %i.aw = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.aw, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ax, %i.v
  br i1 %.not.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %bb.d, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.e, %bb.c
  %.0.lcssa.i.i.i.i = phi ptr [ %i.s, %bb.c ], [ %.010.i.i.i.i, %bb.e ], [ %.010.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i ], [ %i.v, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.ay = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %i.u
  %.not.i = icmp eq ptr %.0.lcssa.i.i.i.i, %i.ay
  br i1 %.not.i, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 30
  %i.bb = load i16, ptr %i.ba, align 2
  %i.bc = icmp eq i16 %i.bb, 3
  br i1 %i.bc, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread

_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit: ; preds = %bb.f, %bb.a
  %.1 = phi ptr [ %1, %bb.a ], [ %i.az, %bb.f ]   ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.bf = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.be) #36, !noalias !812
  %i.bg = trunc i64 %i.bf to i32                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 14
  store i16 1029, ptr %i.bh, align 2
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = and i64 %i.bk, -281474976710656
  %i.bm = ptrtoint ptr %i.be to i64               ; 3 uses
  %i.bn = or i64 %i.bl, %i.bm                     ; 2 uses
  %i.bo = inttoptr i64 %i.bn to ptr
  store ptr %i.bo, ptr %i.bi, align 8
  store i32 %i.bg, ptr %2, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = and i64 %i.br, 281474976710655
  %i.bt = inttoptr i64 %i.bs to ptr               ; 4 uses
  %i.bu = load i32, ptr %.1, align 8              ; 2 uses
  %i.bv = zext i32 %i.bu to i64                   ; 2 uses
  %.idx.i.i.i.i10 = shl nuw nsw i64 %i.bv, 5
  %i.bw = getelementptr i8, ptr %i.bt, i64 %.idx.i.i.i.i10 ; 2 uses
  %.not9.i.i.i.i11 = icmp eq i32 %i.bu, 0
  br i1 %.not9.i.i.i.i11, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19, label %.lr.ph.i.i.i.i12

.lr.ph.i.i.i.i12:                                 ; preds = %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit
  %i.bx = lshr i64 %i.bm, 40
  %i.by = trunc i64 %i.bx to i8
  %i.bz = and i64 %i.bn, 1152921504606846976
  %.not.i.i.i.i.i.i.i13 = icmp eq i64 %i.bz, 0    ; 2 uses
  %i.ca = sext i8 %i.by to i32
  %i.cb = sub nsw i32 13, %i.ca
  %i.cc = select i1 %.not.i.i.i.i.i.i.i13, i32 %i.bg, i32 %i.cb ; 2 uses
  %i.cd = and i64 %i.bm, 281474976710655
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = select i1 %.not.i.i.i.i.i.i.i13, ptr %i.ce, ptr %2 ; 2 uses
  %i.cg = zext i32 %i.cc to i64
  br label %bb.g

bb.g:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17, %.lr.ph.i.i.i.i12
  %.010.i.i.i.i14 = phi ptr [ %i.bt, %.lr.ph.i.i.i.i12 ], [ %i.cy, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17 ] ; 8 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i14, i64 14
  %i.ci = load i16, ptr %i.ch, align 2
  %i.cj = and i16 %i.ci, 4096
  %.not.i.i13.i.i.i.i.i15 = icmp eq i16 %i.cj, 0  ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i14, i64 13
  %i.cl = load i8, ptr %i.ck, align 1
  %i.cm = sext i8 %i.cl to i32
  %i.cn = sub nsw i32 13, %i.cm
  %i.co = load i32, ptr %.010.i.i.i.i14, align 8
  %i.cp = select i1 %.not.i.i13.i.i.i.i.i15, i32 %i.co, i32 %i.cn
  %.not.i.i.i.i.i16 = icmp eq i32 %i.cc, %i.cp
  br i1 %.not.i.i.i.i.i16, label %bb.h, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17

bb.h:                                             ; preds = %bb.g
  %i.cq = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i14, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = and i64 %i.cs, 281474976710655
  %i.cu = inttoptr i64 %i.ct to ptr
  %i.cv = select i1 %.not.i.i13.i.i.i.i.i15, ptr %i.cu, ptr %.010.i.i.i.i14 ; 2 uses
  %i.cw = icmp eq ptr %i.cf, %i.cv
  br i1 %i.cw, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i23

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i23: ; preds = %bb.h
  %bcmp.i.i.i.i.i24 = call i32 @bcmp(ptr %i.cf, ptr %i.cv, i64 %i.cg)
  %i.cx = icmp eq i32 %bcmp.i.i.i.i.i24, 0
  br i1 %i.cx, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i23, %bb.g
  %i.cy = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i14, i64 32 ; 2 uses
  %.not.i.i.i.i18 = icmp eq ptr %i.cy, %i.bw
  br i1 %.not.i.i.i.i18, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19, label %bb.g, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i23, %bb.h, %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit
  %.0.lcssa.i.i.i.i20 = phi ptr [ %i.bt, %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit ], [ %.010.i.i.i.i14, %bb.h ], [ %.010.i.i.i.i14, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i23 ], [ %i.bw, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.cz = getelementptr inbounds nuw [32 x i8], ptr %i.bt, i64 %i.bv
  %.not.i21 = icmp eq ptr %.0.lcssa.i.i.i.i20, %i.cz
  br i1 %.not.i21, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit25, label %bb.i

bb.i:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19
  %i.da = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i20, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i20, i64 30
  %i.dc = load i16, ptr %i.db, align 2
  %i.dd = icmp eq i16 %i.dc, 3
  %spec.select.i22 = select i1 %i.dd, ptr %i.da, ptr null
  br label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit25

_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit25: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19, %bb.i
  %i.de = phi ptr [ null, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19 ], [ %spec.select.i22, %bb.i ]
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.de, ptr %i.df, align 8
  br label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread

_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread: ; preds = %bb.f, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, %bb.b, %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit25
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4glTF8LazyDictINS_5SceneEE18DetachFromDocumentEv(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr null, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4glTF8LazyDictINS_5SceneEE12WriteObjectsERNS_11AssetWriterE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN4glTF11AssetWriter12WriteObjectsINS_5SceneEEEvRNS_8LazyDictIT_EE(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(120) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4glTF11AssetWriter12WriteObjectsINS_5SceneEEEvRNS_8LazyDictIT_EE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(120) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %3 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %4 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %5 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %6 = alloca %"class.rapidjson::GenericValue", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef ptr @_ZN10glTFCommon19FindObjectInContextERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKcSA_SA_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.209, ptr noundef null) ; 2 uses
  %.not42 = icmp eq ptr %i.h, null
  br i1 %.not42, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load i32, ptr %0, align 8                ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4              ; 6 uses
  %.not.i.i.i = icmp ult i32 %i.k, %i.m
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not14.i.i.i = icmp eq i32 %i.m, 0
  %i.n = add i32 %i.m, 1
  %i.o = lshr i32 %i.n, 1
  %i.p = add i32 %i.o, %i.m
  %i.q = select i1 %.not14.i.i.i, i32 16, i32 %i.p ; 3 uses
  %i.r = icmp ugt i32 %i.q, %i.m
  br i1 %i.r, label %.noexc.i, label %bb.f

.noexc.i:                                         ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = and i64 %i.u, 281474976710655
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = zext i32 %i.m to i64
  %i.y = zext i32 %i.q to i64
  %i.z = shl nuw nsw i64 %i.x, 5
  %i.aa = shl nuw nsw i64 %i.y, 5
  %i.ab = tail call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef %i.w, i64 noundef %i.z, i64 noundef %i.aa)
  %i.ac = load ptr, ptr %i.s, align 8
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = and i64 %i.ad, -281474976710656
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = or i64 %i.ae, %i.af
  %i.ah = inttoptr i64 %i.ag to ptr
  store ptr %i.ah, ptr %i.s, align 8
  store i32 %i.q, ptr %i.l, align 4
  %.pre.i.i.i = load i32, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %.noexc.i, %bb.e, %bb.d
  %i.ai = phi i32 [ %.pre.i.i.i, %.noexc.i ], [ %i.k, %bb.e ], [ %i.k, %bb.d ]
  %i.aj = or i64 ptrtoint (ptr @.str.93 to i64), 289637751035265024
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = and i64 %i.an, 281474976710655
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = zext i32 %i.ai to i64
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %i.ap, i64 %i.aq ; 5 uses
  store i32 10, ptr %i.ar, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i, align 4
  %.sroa.65.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.ak, ptr %.sroa.65.0..sroa_idx.i, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.as, i8 0, i64 14, i1 false)
  %.sroa.6137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 30
  store i16 3, ptr %.sroa.6137.0..sroa_idx, align 2
  %i.at = load i32, ptr %0, align 8
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr %0, align 8
  %i.av = tail call noundef ptr @_ZN10glTFCommon19FindObjectInContextERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKcSA_SA_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.209, ptr noundef null)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.036 = phi ptr [ %i.h, %bb.c ], [ %i.av, %bb.f ] ; 6 uses
  %i.aw = load ptr, ptr %i.f, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.ax = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aw) #36, !noalias !815
  %i.ay = trunc i64 %i.ax to i32                  ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 14
  store i16 1029, ptr %i.az, align 2
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = and i64 %i.bc, -281474976710656
  %i.be = ptrtoint ptr %i.aw to i64               ; 4 uses
  %i.bf = or i64 %i.bd, %i.be                     ; 2 uses
  %i.bg = inttoptr i64 %i.bf to ptr
  store ptr %i.bg, ptr %i.ba, align 8
  store i32 %i.ay, ptr %5, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.036, i64 8 ; 4 uses
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = and i64 %i.bj, 281474976710655
  %i.bl = inttoptr i64 %i.bk to ptr               ; 7 uses
  %i.bm = load i32, ptr %.036, align 8            ; 3 uses
  %i.bn = zext i32 %i.bm to i64                   ; 4 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.bn, 5
  %i.bo = getelementptr i8, ptr %i.bl, i64 %.idx.i.i.i.i ; 2 uses
  %.not9.i.i.i.i = icmp eq i32 %i.bm, 0
  br i1 %.not9.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g
  %i.bp = lshr i64 %i.be, 40
  %i.bq = trunc i64 %i.bp to i8
  %i.br = and i64 %i.bf, 1152921504606846976
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.br, 0      ; 2 uses
  %i.bs = sext i8 %i.bq to i32
  %i.bt = sub nsw i32 13, %i.bs
  %i.bu = select i1 %.not.i.i.i.i.i.i.i, i32 %i.ay, i32 %i.bt ; 2 uses
  %i.bv = and i64 %i.be, 281474976710655
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = select i1 %.not.i.i.i.i.i.i.i, ptr %i.bw, ptr %5 ; 2 uses
  %i.by = zext i32 %i.bu to i64
  br label %bb.h

bb.h:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %.lr.ph.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i ], [ %i.cq, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 8 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 14
  %i.ca = load i16, ptr %i.bz, align 2
  %i.cb = and i16 %i.ca, 4096
  %.not.i.i13.i.i.i.i.i = icmp eq i16 %i.cb, 0    ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 13
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = sext i8 %i.cd to i32
  %i.cf = sub nsw i32 13, %i.ce
  %i.cg = load i32, ptr %.010.i.i.i.i, align 8
  %i.ch = select i1 %.not.i.i13.i.i.i.i.i, i32 %i.cg, i32 %i.cf
  %.not.i.i.i.i.i = icmp eq i32 %i.bu, %i.ch
  br i1 %.not.i.i.i.i.i, label %bb.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.ci = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = and i64 %i.ck, 281474976710655
  %i.cm = inttoptr i64 %i.cl to ptr
  %i.cn = select i1 %.not.i.i13.i.i.i.i.i, ptr %i.cm, ptr %.010.i.i.i.i ; 2 uses
  %i.co = icmp eq ptr %i.bx, %i.cn
  br i1 %i.co, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i: ; preds = %bb.i
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %i.bx, ptr %i.cn, i64 %i.by)
  %i.cp = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.cp, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.h
  %i.cq = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cq, %i.bo
  br i1 %.not.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %bb.h, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.i, %bb.g
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bl, %bb.g ], [ %.010.i.i.i.i, %bb.i ], [ %.010.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i ], [ %i.bo, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.cr = getelementptr inbounds nuw [32 x i8], ptr %i.bl, i64 %i.bn
  %.not.i = icmp eq ptr %.0.lcssa.i.i.i.i, %i.cr
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 30
  %i.cu = load i16, ptr %i.ct, align 2
  %i.cv = icmp eq i16 %i.cu, 3
  br i1 %i.cv, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit, label %bb.k

bb.k:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, %bb.j
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %.036, i64 4 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4            ; 6 uses
  %.not.i.i.i49 = icmp ult i32 %i.bm, %i.cz
  br i1 %.not.i.i.i49, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not14.i.i.i50 = icmp eq i32 %i.cz, 0
  %i.da = add i32 %i.cz, 1
  %i.db = lshr i32 %i.da, 1
  %i.dc = add i32 %i.db, %i.cz
  %i.dd = select i1 %.not14.i.i.i50, i32 16, i32 %i.dc ; 3 uses
  %i.de = icmp ugt i32 %i.dd, %i.cz
  br i1 %i.de, label %.noexc.i53, label %bb.m

.noexc.i53:                                       ; preds = %bb.l
  %i.df = zext i32 %i.cz to i64
  %i.dg = zext i32 %i.dd to i64
  %i.dh = shl nuw nsw i64 %i.df, 5
  %i.di = shl nuw nsw i64 %i.dg, 5
end_hunk_20
begin_hunk_21_@_ZN4glTF11AssetWriter12WriteObjectsINS_5SceneEEEvRNS_8LazyDictIT_EE:bb.a
  %.pre-phi158 = phi i64 [ %.pre157, %.noexc.i53 ], [ %i.bn, %bb.l ], [ %i.bn, %bb.k ]
  %.pre-phi156 = phi ptr [ %.pre155, %.noexc.i53 ], [ %i.bl, %bb.l ], [ %i.bl, %bb.k ]
  %i.dq = or i64 %i.be, 289637751035265024
  %i.dr = inttoptr i64 %i.dq to ptr
  %i.ds = getelementptr inbounds nuw [32 x i8], ptr %.pre-phi156, i64 %.pre-phi158 ; 5 uses
  store i32 %i.ay, ptr %i.ds, align 8
  %.sroa.6.0..sroa_idx.i51 = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i51, align 4
  %.sroa.65.0..sroa_idx.i52 = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store ptr %i.dr, ptr %.sroa.65.0..sroa_idx.i52, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.dt, i8 0, i64 14, i1 false)
  %.sroa.6133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 30
  store i16 3, ptr %.sroa.6133.0..sroa_idx, align 2
  %i.du = load i32, ptr %.036, align 8
  %i.dv = add i32 %i.du, 1                        ; 3 uses
  store i32 %i.dv, ptr %.036, align 8
  %i.dw = load ptr, ptr %i.f, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.dx = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dw) #36, !noalias !818
  %i.dy = trunc i64 %i.dx to i32                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 14
  store i16 1029, ptr %i.dz, align 2
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = and i64 %i.ec, -281474976710656
  %i.ee = ptrtoint ptr %i.dw to i64               ; 3 uses
  %i.ef = or i64 %i.ed, %i.ee                     ; 2 uses
  %i.eg = inttoptr i64 %i.ef to ptr
  store ptr %i.eg, ptr %i.ea, align 8
  store i32 %i.dy, ptr %4, align 8
  %i.eh = load ptr, ptr %i.bh, align 8
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = and i64 %i.ei, 281474976710655
  %i.ek = inttoptr i64 %i.ej to ptr               ; 4 uses
  %i.el = zext i32 %i.dv to i64                   ; 2 uses
  %.idx.i.i.i.i57 = shl nuw nsw i64 %i.el, 5
  %i.em = getelementptr i8, ptr %i.ek, i64 %.idx.i.i.i.i57 ; 2 uses
  %.not9.i.i.i.i58 = icmp eq i32 %i.dv, 0
  br i1 %.not9.i.i.i.i58, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, label %.lr.ph.i.i.i.i59

.lr.ph.i.i.i.i59:                                 ; preds = %bb.m
  %i.en = lshr i64 %i.ee, 40
  %i.eo = trunc i64 %i.en to i8
  %i.ep = and i64 %i.ef, 1152921504606846976
  %.not.i.i.i.i.i.i.i60 = icmp eq i64 %i.ep, 0    ; 2 uses
  %i.eq = sext i8 %i.eo to i32
  %i.er = sub nsw i32 13, %i.eq
  %i.es = select i1 %.not.i.i.i.i.i.i.i60, i32 %i.dy, i32 %i.er ; 2 uses
  %i.et = and i64 %i.ee, 281474976710655
  %i.eu = inttoptr i64 %i.et to ptr
  %i.ev = select i1 %.not.i.i.i.i.i.i.i60, ptr %i.eu, ptr %4 ; 2 uses
  %i.ew = zext i32 %i.es to i64
  br label %bb.n

bb.n:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64, %.lr.ph.i.i.i.i59
  %.010.i.i.i.i61 = phi ptr [ %i.ek, %.lr.ph.i.i.i.i59 ], [ %i.fo, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64 ] ; 8 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i61, i64 14
  %i.ey = load i16, ptr %i.ex, align 2
  %i.ez = and i16 %i.ey, 4096
  %.not.i.i13.i.i.i.i.i62 = icmp eq i16 %i.ez, 0  ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i61, i64 13
  %i.fb = load i8, ptr %i.fa, align 1
  %i.fc = sext i8 %i.fb to i32
  %i.fd = sub nsw i32 13, %i.fc
  %i.fe = load i32, ptr %.010.i.i.i.i61, align 8
  %i.ff = select i1 %.not.i.i13.i.i.i.i.i62, i32 %i.fe, i32 %i.fd
  %.not.i.i.i.i.i63 = icmp eq i32 %i.es, %i.ff
  br i1 %.not.i.i.i.i.i63, label %bb.o, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64

bb.o:                                             ; preds = %bb.n
  %i.fg = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i61, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = and i64 %i.fi, 281474976710655
  %i.fk = inttoptr i64 %i.fj to ptr
  %i.fl = select i1 %.not.i.i13.i.i.i.i.i62, ptr %i.fk, ptr %.010.i.i.i.i61 ; 2 uses
  %i.fm = icmp eq ptr %i.ev, %i.fl
  br i1 %i.fm, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70: ; preds = %bb.o
  %bcmp.i.i.i.i.i71 = call i32 @bcmp(ptr %i.ev, ptr %i.fl, i64 %i.ew)
  %i.fn = icmp eq i32 %bcmp.i.i.i.i.i71, 0
  br i1 %i.fn, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70, %bb.n
  %i.fo = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i61, i64 32 ; 2 uses
  %.not.i.i.i.i65 = icmp eq ptr %i.fo, %i.em
  br i1 %.not.i.i.i.i65, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, label %bb.n, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70, %bb.o, %bb.m
  %.0.lcssa.i.i.i.i67 = phi ptr [ %i.ek, %bb.m ], [ %.010.i.i.i.i61, %bb.o ], [ %.010.i.i.i.i61, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70 ], [ %i.em, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.fp = getelementptr inbounds nuw [32 x i8], ptr %i.ek, i64 %i.el
  %.not.i68 = icmp ne ptr %.0.lcssa.i.i.i.i67, %i.fp
  call void @llvm.assume(i1 %.not.i68)
  %i.fq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i67, i64 16
  %i.fr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i67, i64 30
  %i.fs = load i16, ptr %i.fr, align 2
  %i.ft = icmp eq i16 %i.fs, 3
  %spec.select.i69 = select i1 %i.ft, ptr %i.fq, ptr null
  br label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit

_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, %bb.j, %bb.b
  %.138 = phi ptr [ %0, %bb.b ], [ %i.cs, %bb.j ], [ %spec.select.i69, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66 ] ; 8 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.fw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fv) #36, !noalias !821
  %i.fx = trunc i64 %i.fw to i32                  ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.fy = getelementptr inbounds nuw i8, ptr %3, i64 14
  store i16 1029, ptr %i.fy, align 2
  %i.fz = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ga = load ptr, ptr %i.fz, align 8
  %i.gb = ptrtoint ptr %i.ga to i64
  %i.gc = and i64 %i.gb, -281474976710656
  %i.gd = ptrtoint ptr %i.fv to i64               ; 4 uses
  %i.ge = or i64 %i.gc, %i.gd                     ; 2 uses
  %i.gf = inttoptr i64 %i.ge to ptr
  store ptr %i.gf, ptr %i.fz, align 8
  store i32 %i.fx, ptr %3, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %.138, i64 8 ; 6 uses
  %i.gh = load ptr, ptr %i.gg, align 8
  %i.gi = ptrtoint ptr %i.gh to i64
  %i.gj = and i64 %i.gi, 281474976710655
  %i.gk = inttoptr i64 %i.gj to ptr               ; 4 uses
  %i.gl = load i32, ptr %.138, align 8            ; 2 uses
  %i.gm = zext i32 %i.gl to i64                   ; 2 uses
  %.idx.i.i.i.i73 = shl nuw nsw i64 %i.gm, 5
  %i.gn = getelementptr i8, ptr %i.gk, i64 %.idx.i.i.i.i73 ; 2 uses
  %.not9.i.i.i.i74 = icmp eq i32 %i.gl, 0
  br i1 %.not9.i.i.i.i74, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, label %.lr.ph.i.i.i.i75

.lr.ph.i.i.i.i75:                                 ; preds = %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit
  %i.go = lshr i64 %i.gd, 40
  %i.gp = trunc i64 %i.go to i8
  %i.gq = and i64 %i.ge, 1152921504606846976
  %.not.i.i.i.i.i.i.i76 = icmp eq i64 %i.gq, 0    ; 2 uses
  %i.gr = sext i8 %i.gp to i32
  %i.gs = sub nsw i32 13, %i.gr
  %i.gt = select i1 %.not.i.i.i.i.i.i.i76, i32 %i.fx, i32 %i.gs ; 2 uses
  %i.gu = and i64 %i.gd, 281474976710655
  %i.gv = inttoptr i64 %i.gu to ptr
  %i.gw = select i1 %.not.i.i.i.i.i.i.i76, ptr %i.gv, ptr %3 ; 2 uses
  %i.gx = zext i32 %i.gt to i64
  br label %bb.p

bb.p:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80, %.lr.ph.i.i.i.i75
  %.010.i.i.i.i77 = phi ptr [ %i.gk, %.lr.ph.i.i.i.i75 ], [ %i.hp, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80 ] ; 8 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i77, i64 14
  %i.gz = load i16, ptr %i.gy, align 2
  %i.ha = and i16 %i.gz, 4096
  %.not.i.i13.i.i.i.i.i78 = icmp eq i16 %i.ha, 0  ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i77, i64 13
  %i.hc = load i8, ptr %i.hb, align 1
  %i.hd = sext i8 %i.hc to i32
  %i.he = sub nsw i32 13, %i.hd
  %i.hf = load i32, ptr %.010.i.i.i.i77, align 8
  %i.hg = select i1 %.not.i.i13.i.i.i.i.i78, i32 %i.hf, i32 %i.he
  %.not.i.i.i.i.i79 = icmp eq i32 %i.gt, %i.hg
  br i1 %.not.i.i.i.i.i79, label %bb.q, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80

bb.q:                                             ; preds = %bb.p
  %i.hh = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i77, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8
  %i.hj = ptrtoint ptr %i.hi to i64
  %i.hk = and i64 %i.hj, 281474976710655
  %i.hl = inttoptr i64 %i.hk to ptr
  %i.hm = select i1 %.not.i.i13.i.i.i.i.i78, ptr %i.hl, ptr %.010.i.i.i.i77 ; 2 uses
  %i.hn = icmp eq ptr %i.gw, %i.hm
  br i1 %i.hn, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86: ; preds = %bb.q
  %bcmp.i.i.i.i.i87 = call i32 @bcmp(ptr %i.gw, ptr %i.hm, i64 %i.gx)
  %i.ho = icmp eq i32 %bcmp.i.i.i.i.i87, 0
  br i1 %i.ho, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86, %bb.p
  %i.hp = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i77, i64 32 ; 2 uses
  %.not.i.i.i.i81 = icmp eq ptr %i.hp, %i.gn
  br i1 %.not.i.i.i.i81, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, label %bb.p, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86, %bb.q, %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit
  %.0.lcssa.i.i.i.i83 = phi ptr [ %i.gk, %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit ], [ %.010.i.i.i.i77, %bb.q ], [ %.010.i.i.i.i77, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86 ], [ %i.gn, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.hq = getelementptr inbounds nuw [32 x i8], ptr %i.gk, i64 %i.gm
  %.not.i84 = icmp eq ptr %.0.lcssa.i.i.i.i83, %i.hq
  br i1 %.not.i84, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82
  %i.hr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i83, i64 16
  %i.hs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i83, i64 30
  %i.ht = load i16, ptr %i.hs, align 2
  %i.hu = icmp eq i16 %i.ht, 3
  br i1 %i.hu, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88, label %bb.s

bb.s:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, %bb.r
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hw = load ptr, ptr %i.hv, align 8
  %i.hx = load i32, ptr %.138, align 8            ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.138, i64 4 ; 2 uses
  %i.hz = load i32, ptr %i.hy, align 4            ; 6 uses
  %.not.i.i.i89 = icmp ult i32 %i.hx, %i.hz
  br i1 %.not.i.i.i89, label %._crit_edge, label %bb.t

._crit_edge:                                      ; preds = %bb.s
  %.pre = load ptr, ptr %i.gg, align 8
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  %.not14.i.i.i90 = icmp eq i32 %i.hz, 0
  %i.ia = add i32 %i.hz, 1
  %i.ib = lshr i32 %i.ia, 1
  %i.ic = add i32 %i.ib, %i.hz
  %i.id = select i1 %.not14.i.i.i90, i32 16, i32 %i.ic ; 3 uses
  %i.ie = icmp ugt i32 %i.id, %i.hz
  %.pre145 = load ptr, ptr %i.gg, align 8         ; 2 uses
  br i1 %i.ie, label %.noexc.i93, label %bb.u

.noexc.i93:                                       ; preds = %bb.t
  %i.if = ptrtoint ptr %.pre145 to i64
  %i.ig = and i64 %i.if, 281474976710655
  %i.ih = inttoptr i64 %i.ig to ptr
  %i.ii = zext i32 %i.hz to i64
  %i.ij = zext i32 %i.id to i64
  %i.ik = shl nuw nsw i64 %i.ii, 5
  %i.il = shl nuw nsw i64 %i.ij, 5
  %i.im = call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.hw, ptr noundef %i.ih, i64 noundef %i.ik, i64 noundef %i.il)
  %i.in = load ptr, ptr %i.gg, align 8
  %i.io = ptrtoint ptr %i.in to i64
  %i.ip = and i64 %i.io, -281474976710656
  %i.iq = ptrtoint ptr %i.im to i64
  %i.ir = or i64 %i.ip, %i.iq
  %i.is = inttoptr i64 %i.ir to ptr               ; 2 uses
  store ptr %i.is, ptr %i.gg, align 8
  store i32 %i.id, ptr %i.hy, align 4
  %.pre.i.i.i94 = load i32, ptr %.138, align 8
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge, %.noexc.i93, %bb.t
  %i.it = phi ptr [ %i.is, %.noexc.i93 ], [ %.pre145, %bb.t ], [ %.pre, %._crit_edge ]
  %i.iu = phi i32 [ %.pre.i.i.i94, %.noexc.i93 ], [ %i.hx, %bb.t ], [ %i.hx, %._crit_edge ]
  %i.iv = or i64 %i.gd, 289637751035265024
  %i.iw = inttoptr i64 %i.iv to ptr
  %i.ix = ptrtoint ptr %i.it to i64
  %i.iy = and i64 %i.ix, 281474976710655
  %i.iz = inttoptr i64 %i.iy to ptr
  %i.ja = zext i32 %i.iu to i64
  %i.jb = getelementptr inbounds nuw [32 x i8], ptr %i.iz, i64 %i.ja ; 5 uses
  store i32 %i.fx, ptr %i.jb, align 8
  %.sroa.6.0..sroa_idx.i91 = getelementptr inbounds nuw i8, ptr %i.jb, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i91, align 4
  %.sroa.65.0..sroa_idx.i92 = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  store ptr %i.iw, ptr %.sroa.65.0..sroa_idx.i92, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  store <14 x i8> zeroinitializer, ptr %i.jc, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jb, i64 30
  store i16 3, ptr %.sroa.6.0..sroa_idx, align 2
  %i.jd = load i32, ptr %.138, align 8
  %i.je = add i32 %i.jd, 1
  store i32 %i.je, ptr %.138, align 8
  %i.jf = load ptr, ptr %i.fu, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.jg = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.jf) #36, !noalias !824
  %i.jh = trunc i64 %i.jg to i32                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.ji = getelementptr inbounds nuw i8, ptr %2, i64 14
  store i16 1029, ptr %i.ji, align 2
  %i.jj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.jk = load ptr, ptr %i.jj, align 8
  %i.jl = ptrtoint ptr %i.jk to i64
  %i.jm = and i64 %i.jl, -281474976710656
  %i.jn = ptrtoint ptr %i.jf to i64               ; 3 uses
  %i.jo = or i64 %i.jm, %i.jn                     ; 2 uses
  %i.jp = inttoptr i64 %i.jo to ptr
  store ptr %i.jp, ptr %i.jj, align 8
  store i32 %i.jh, ptr %2, align 8
  %i.jq = load ptr, ptr %i.gg, align 8
  %i.jr = ptrtoint ptr %i.jq to i64
  %i.js = and i64 %i.jr, 281474976710655
  %i.jt = inttoptr i64 %i.js to ptr               ; 4 uses
  %i.ju = load i32, ptr %.138, align 8            ; 2 uses
  %i.jv = zext i32 %i.ju to i64                   ; 2 uses
  %.idx.i.i.i.i97 = shl nuw nsw i64 %i.jv, 5
  %i.jw = getelementptr i8, ptr %i.jt, i64 %.idx.i.i.i.i97 ; 2 uses
  %.not9.i.i.i.i98 = icmp eq i32 %i.ju, 0
  br i1 %.not9.i.i.i.i98, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, label %.lr.ph.i.i.i.i99

.lr.ph.i.i.i.i99:                                 ; preds = %bb.u
  %i.jx = lshr i64 %i.jn, 40
  %i.jy = trunc i64 %i.jx to i8
  %i.jz = and i64 %i.jo, 1152921504606846976
  %.not.i.i.i.i.i.i.i100 = icmp eq i64 %i.jz, 0   ; 2 uses
  %i.ka = sext i8 %i.jy to i32
  %i.kb = sub nsw i32 13, %i.ka
  %i.kc = select i1 %.not.i.i.i.i.i.i.i100, i32 %i.jh, i32 %i.kb ; 2 uses
  %i.kd = and i64 %i.jn, 281474976710655
  %i.ke = inttoptr i64 %i.kd to ptr
  %i.kf = select i1 %.not.i.i.i.i.i.i.i100, ptr %i.ke, ptr %2 ; 2 uses
  %i.kg = zext i32 %i.kc to i64
  br label %bb.v

bb.v:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104, %.lr.ph.i.i.i.i99
  %.010.i.i.i.i101 = phi ptr [ %i.jt, %.lr.ph.i.i.i.i99 ], [ %i.ky, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104 ] ; 8 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i101, i64 14
  %i.ki = load i16, ptr %i.kh, align 2
  %i.kj = and i16 %i.ki, 4096
  %.not.i.i13.i.i.i.i.i102 = icmp eq i16 %i.kj, 0 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i101, i64 13
  %i.kl = load i8, ptr %i.kk, align 1
  %i.km = sext i8 %i.kl to i32
  %i.kn = sub nsw i32 13, %i.km
  %i.ko = load i32, ptr %.010.i.i.i.i101, align 8
  %i.kp = select i1 %.not.i.i13.i.i.i.i.i102, i32 %i.ko, i32 %i.kn
  %.not.i.i.i.i.i103 = icmp eq i32 %i.kc, %i.kp
  br i1 %.not.i.i.i.i.i103, label %bb.w, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104

bb.w:                                             ; preds = %bb.v
  %i.kq = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i101, i64 8
  %i.kr = load ptr, ptr %i.kq, align 8
  %i.ks = ptrtoint ptr %i.kr to i64
  %i.kt = and i64 %i.ks, 281474976710655
  %i.ku = inttoptr i64 %i.kt to ptr
  %i.kv = select i1 %.not.i.i13.i.i.i.i.i102, ptr %i.ku, ptr %.010.i.i.i.i101 ; 2 uses
  %i.kw = icmp eq ptr %i.kf, %i.kv
  br i1 %i.kw, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110: ; preds = %bb.w
  %bcmp.i.i.i.i.i111 = call i32 @bcmp(ptr %i.kf, ptr %i.kv, i64 %i.kg)
  %i.kx = icmp eq i32 %bcmp.i.i.i.i.i111, 0
  br i1 %i.kx, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110, %bb.v
  %i.ky = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i101, i64 32 ; 2 uses
  %.not.i.i.i.i105 = icmp eq ptr %i.ky, %i.jw
  br i1 %.not.i.i.i.i105, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, label %bb.v, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110, %bb.w, %bb.u
  %.0.lcssa.i.i.i.i107 = phi ptr [ %i.jt, %bb.u ], [ %.010.i.i.i.i101, %bb.w ], [ %.010.i.i.i.i101, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110 ], [ %i.jw, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.kz = getelementptr inbounds nuw [32 x i8], ptr %i.jt, i64 %i.jv
  %.not.i108 = icmp eq ptr %.0.lcssa.i.i.i.i107, %i.kz
  br i1 %.not.i108, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88, label %bb.x

bb.x:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106
  %i.la = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i107, i64 16
  %i.lb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i107, i64 30
  %i.lc = load i16, ptr %i.lb, align 2
  %i.ld = icmp eq i16 %i.lc, 3
  %spec.select.i109 = select i1 %i.ld, ptr %i.la, ptr null
  br label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88

_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88: ; preds = %bb.x, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, %bb.r
  %.031 = phi ptr [ %i.hr, %bb.r ], [ null, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106 ], [ %spec.select.i109, %bb.x ] ; 6 uses
  %i.le = load ptr, ptr %i.c, align 8
  %i.lf = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not144 = icmp eq ptr %i.le, %i.lf
  br i1 %.not144, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88
  %i.lg = getelementptr inbounds nuw i8, ptr %6, i64 14
  %i.lh = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.lk = or i64 ptrtoint (ptr @.str.88 to i64), 289637751035265024
  %i.ll = inttoptr i64 %i.lk to ptr
  %i.lm = getelementptr inbounds nuw i8, ptr %.031, i64 4 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.031, i64 8 ; 4 uses
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph, %bb.ad
  %i.lo = phi ptr [ %i.lf, %.lr.ph ], [ %i.or, %bb.ad ]
  %.0143 = phi i64 [ 0, %.lr.ph ], [ %i.op, %bb.ad ] ; 5 uses
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.lo, i64 %.0143
  %i.lq = load ptr, ptr %i.lp, align 8            ; 2 uses
  %i.lr = load ptr, ptr %i.lq, align 8
  %i.ls = load ptr, ptr %i.lr, align 8
  %i.lt = call noundef zeroext i1 %i.ls(ptr noundef nonnull align 8 dereferenceable(72) %i.lq)
  br i1 %i.lt, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  store i16 3, ptr %i.lg, align 2
  %i.lu = load ptr, ptr %i.a, align 8
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.lu, i64 %.0143
  %i.lw = load ptr, ptr %i.lv, align 8            ; 3 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 48
  %i.ly = load i64, ptr %i.lx, align 8
  %i.lz = icmp eq i64 %i.ly, 0
  br i1 %i.lz, label %bb.aa, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit: ; preds = %bb.z
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lw, i64 40
  %i.mb = load ptr, ptr %i.ma, align 8            ; 2 uses
  %i.mc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.mb) #36, !noalias !827
  %i.md = trunc i64 %i.mc to i32
  %i.me = load ptr, ptr %i.li, align 8, !nonnull !16, !align !112
  %i.mf = load ptr, ptr %i.lj, align 8
  %i.mg = ptrtoint ptr %i.mf to i64               ; 2 uses
  %i.mh = and i64 %i.mg, 281474976710655
  %i.mi = inttoptr i64 %i.mh to ptr
  %i.mj = call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.me, ptr noundef %i.mi, i64 noundef 0, i64 noundef 512)
  %i.mk = and i64 %i.mg, -281474976710656
  %i.ml = ptrtoint ptr %i.mj to i64               ; 2 uses
  %i.mm = or i64 %i.mk, %i.ml
  %i.mn = inttoptr i64 %i.mm to ptr
  store ptr %i.mn, ptr %i.lj, align 8
  store i32 16, ptr %i.lh, align 4
  %i.mo = ptrtoint ptr %i.mb to i64
  %i.mp = or i64 %i.mo, 289637751035265024
  %i.mq = inttoptr i64 %i.mp to ptr
  %i.mr = and i64 %i.ml, 281474976710655
  %i.ms = inttoptr i64 %i.mr to ptr               ; 6 uses
  store i32 4, ptr %i.ms, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ms, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i.i, align 4
  %.sroa.65.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  store ptr %i.ll, ptr %.sroa.65.0..sroa_idx.i.i, align 8
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 16
  store i32 %i.md, ptr %i.mt, align 8
  %.sroa.6.0..sroa_idx.i114 = getelementptr inbounds nuw i8, ptr %i.ms, i64 20
  store i32 0, ptr %.sroa.6.0..sroa_idx.i114, align 4
  %.sroa.66.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ms, i64 24
  store ptr %i.mq, ptr %.sroa.66.0..sroa_idx.i, align 8
  store i32 1, ptr %6, align 8
  %.pre147 = load ptr, ptr %i.a, align 8
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre147, i64 %.0143
  %.pre148 = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit, %bb.z
  %i.mu = phi ptr [ %.pre148, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit ], [ %i.lw, %bb.z ]
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 72
  %i.mw = load ptr, ptr %i.li, align 8, !nonnull !16, !align !112
  call fastcc void @_ZN4glTF12_GLOBAL__N_113AddRefsVectorINS_4NodeEEEvRN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRSt6vectorIN10glTFCommon3RefIT_EESaISI_EERS9_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull @.str.203, ptr noundef nonnull align 8 dereferenceable(24) %i.mv, ptr noundef nonnull align 8 dereferenceable(24) %i.mw)
  %i.mx = load ptr, ptr %i.a, align 8
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %i.mx, i64 %.0143
  %i.mz = load ptr, ptr %i.my, align 8            ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 8
  %i.nb = load ptr, ptr %i.na, align 8, !noalias !830 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mz, i64 16
  %i.nd = load i64, ptr %i.nc, align 8, !noalias !830
  %i.ne = trunc i64 %i.nd to i32
  %.not.i.i = icmp eq ptr %i.nb, null
  %i.nf = select i1 %.not.i.i, ptr @_ZN9rapidjson16GenericStringRefIcE11emptyStringE, ptr %i.nb, !prof !6
  %i.ng = load ptr, ptr %i.li, align 8, !nonnull !16, !align !112
  %i.nh = load i32, ptr %.031, align 8            ; 3 uses
  %i.ni = load i32, ptr %i.lm, align 4            ; 6 uses
  %.not.i.i.i117 = icmp ult i32 %i.nh, %i.ni
  br i1 %.not.i.i.i117, label %._crit_edge149, label %bb.ab

._crit_edge149:                                   ; preds = %bb.aa
  %.pre150 = load ptr, ptr %i.ln, align 8
  br label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %.not14.i.i.i118 = icmp eq i32 %i.ni, 0
  %i.nj = add i32 %i.ni, 1
  %i.nk = lshr i32 %i.nj, 1
  %i.nl = add i32 %i.nk, %i.ni
end_hunk_21
begin_hunk_22_@_ZN4glTF8LazyDictINS_4SkinEE16AttachToDocumentERN9rapidjson15GenericDocumentINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEES8_EE:bb.a
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = and i64 %i.q, 281474976710655
  %i.s = inttoptr i64 %i.r to ptr                 ; 4 uses
  %i.t = load i32, ptr %i.c, align 8              ; 2 uses
  %i.u = zext i32 %i.t to i64                     ; 2 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.u, 5
  %i.v = getelementptr i8, ptr %i.s, i64 %.idx.i.i.i.i ; 2 uses
  %.not9.i.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not9.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c
  %i.w = lshr i64 %i.l, 40
  %i.x = trunc i64 %i.w to i8
  %i.y = and i64 %i.m, 1152921504606846976
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.y, 0       ; 2 uses
  %i.z = sext i8 %i.x to i32
  %i.aa = sub nsw i32 13, %i.z
  %i.ab = select i1 %.not.i.i.i.i.i.i.i, i32 %i.f, i32 %i.aa ; 2 uses
  %i.ac = and i64 %i.l, 281474976710655
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = select i1 %.not.i.i.i.i.i.i.i, ptr %i.ad, ptr %3 ; 2 uses
  %i.af = zext i32 %i.ab to i64
  br label %bb.d

bb.d:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %.lr.ph.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i ], [ %i.ax, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 14
  %i.ah = load i16, ptr %i.ag, align 2
  %i.ai = and i16 %i.ah, 4096
  %.not.i.i13.i.i.i.i.i = icmp eq i16 %i.ai, 0    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 13
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = sext i8 %i.ak to i32
  %i.am = sub nsw i32 13, %i.al
  %i.an = load i32, ptr %.010.i.i.i.i, align 8
  %i.ao = select i1 %.not.i.i13.i.i.i.i.i, i32 %i.an, i32 %i.am
  %.not.i.i.i.i.i = icmp eq i32 %i.ab, %i.ao
  br i1 %.not.i.i.i.i.i, label %bb.e, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = and i64 %i.ar, 281474976710655
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = select i1 %.not.i.i13.i.i.i.i.i, ptr %i.at, ptr %.010.i.i.i.i ; 2 uses
  %i.av = icmp eq ptr %i.ae, %i.au
  br i1 %i.av, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i: ; preds = %bb.e
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %i.ae, ptr %i.au, i64 %i.af)
  %i.aw = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.aw, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ax, %i.v
  br i1 %.not.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %bb.d, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.e, %bb.c
  %.0.lcssa.i.i.i.i = phi ptr [ %i.s, %bb.c ], [ %.010.i.i.i.i, %bb.e ], [ %.010.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i ], [ %i.v, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.ay = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %i.u
  %.not.i = icmp eq ptr %.0.lcssa.i.i.i.i, %i.ay
  br i1 %.not.i, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 30
  %i.bb = load i16, ptr %i.ba, align 2
  %i.bc = icmp eq i16 %i.bb, 3
  br i1 %i.bc, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread

_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit: ; preds = %bb.f, %bb.a
  %.1 = phi ptr [ %1, %bb.a ], [ %i.az, %bb.f ]   ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.bf = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.be) #36, !noalias !837
  %i.bg = trunc i64 %i.bf to i32                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 14
  store i16 1029, ptr %i.bh, align 2
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = and i64 %i.bk, -281474976710656
  %i.bm = ptrtoint ptr %i.be to i64               ; 3 uses
  %i.bn = or i64 %i.bl, %i.bm                     ; 2 uses
  %i.bo = inttoptr i64 %i.bn to ptr
  store ptr %i.bo, ptr %i.bi, align 8
  store i32 %i.bg, ptr %2, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = and i64 %i.br, 281474976710655
  %i.bt = inttoptr i64 %i.bs to ptr               ; 4 uses
  %i.bu = load i32, ptr %.1, align 8              ; 2 uses
  %i.bv = zext i32 %i.bu to i64                   ; 2 uses
  %.idx.i.i.i.i10 = shl nuw nsw i64 %i.bv, 5
  %i.bw = getelementptr i8, ptr %i.bt, i64 %.idx.i.i.i.i10 ; 2 uses
  %.not9.i.i.i.i11 = icmp eq i32 %i.bu, 0
  br i1 %.not9.i.i.i.i11, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19, label %.lr.ph.i.i.i.i12

.lr.ph.i.i.i.i12:                                 ; preds = %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit
  %i.bx = lshr i64 %i.bm, 40
  %i.by = trunc i64 %i.bx to i8
  %i.bz = and i64 %i.bn, 1152921504606846976
  %.not.i.i.i.i.i.i.i13 = icmp eq i64 %i.bz, 0    ; 2 uses
  %i.ca = sext i8 %i.by to i32
  %i.cb = sub nsw i32 13, %i.ca
  %i.cc = select i1 %.not.i.i.i.i.i.i.i13, i32 %i.bg, i32 %i.cb ; 2 uses
  %i.cd = and i64 %i.bm, 281474976710655
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = select i1 %.not.i.i.i.i.i.i.i13, ptr %i.ce, ptr %2 ; 2 uses
  %i.cg = zext i32 %i.cc to i64
  br label %bb.g

bb.g:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17, %.lr.ph.i.i.i.i12
  %.010.i.i.i.i14 = phi ptr [ %i.bt, %.lr.ph.i.i.i.i12 ], [ %i.cy, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17 ] ; 8 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i14, i64 14
  %i.ci = load i16, ptr %i.ch, align 2
  %i.cj = and i16 %i.ci, 4096
  %.not.i.i13.i.i.i.i.i15 = icmp eq i16 %i.cj, 0  ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i14, i64 13
  %i.cl = load i8, ptr %i.ck, align 1
  %i.cm = sext i8 %i.cl to i32
  %i.cn = sub nsw i32 13, %i.cm
  %i.co = load i32, ptr %.010.i.i.i.i14, align 8
  %i.cp = select i1 %.not.i.i13.i.i.i.i.i15, i32 %i.co, i32 %i.cn
  %.not.i.i.i.i.i16 = icmp eq i32 %i.cc, %i.cp
  br i1 %.not.i.i.i.i.i16, label %bb.h, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17

bb.h:                                             ; preds = %bb.g
  %i.cq = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i14, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = and i64 %i.cs, 281474976710655
  %i.cu = inttoptr i64 %i.ct to ptr
  %i.cv = select i1 %.not.i.i13.i.i.i.i.i15, ptr %i.cu, ptr %.010.i.i.i.i14 ; 2 uses
  %i.cw = icmp eq ptr %i.cf, %i.cv
  br i1 %i.cw, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i23

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i23: ; preds = %bb.h
  %bcmp.i.i.i.i.i24 = call i32 @bcmp(ptr %i.cf, ptr %i.cv, i64 %i.cg)
  %i.cx = icmp eq i32 %bcmp.i.i.i.i.i24, 0
  br i1 %i.cx, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i23, %bb.g
  %i.cy = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i14, i64 32 ; 2 uses
  %.not.i.i.i.i18 = icmp eq ptr %i.cy, %i.bw
  br i1 %.not.i.i.i.i18, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19, label %bb.g, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i23, %bb.h, %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit
  %.0.lcssa.i.i.i.i20 = phi ptr [ %i.bt, %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit ], [ %.010.i.i.i.i14, %bb.h ], [ %.010.i.i.i.i14, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i23 ], [ %i.bw, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.cz = getelementptr inbounds nuw [32 x i8], ptr %i.bt, i64 %i.bv
  %.not.i21 = icmp eq ptr %.0.lcssa.i.i.i.i20, %i.cz
  br i1 %.not.i21, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit25, label %bb.i

bb.i:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19
  %i.da = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i20, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i20, i64 30
  %i.dc = load i16, ptr %i.db, align 2
  %i.dd = icmp eq i16 %i.dc, 3
  %spec.select.i22 = select i1 %i.dd, ptr %i.da, ptr null
  br label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit25

_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit25: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19, %bb.i
  %i.de = phi ptr [ null, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19 ], [ %spec.select.i22, %bb.i ]
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.de, ptr %i.df, align 8
  br label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread

_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread: ; preds = %bb.f, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, %bb.b, %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit25
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4glTF8LazyDictINS_4SkinEE18DetachFromDocumentEv(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr null, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4glTF8LazyDictINS_4SkinEE12WriteObjectsERNS_11AssetWriterE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN4glTF11AssetWriter12WriteObjectsINS_4SkinEEEvRNS_8LazyDictIT_EE(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(120) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4glTF11AssetWriter12WriteObjectsINS_4SkinEEEvRNS_8LazyDictIT_EE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(120) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %3 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %4 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %5 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %6 = alloca %"class.rapidjson::GenericValue", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef ptr @_ZN10glTFCommon19FindObjectInContextERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKcSA_SA_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.209, ptr noundef null) ; 2 uses
  %.not42 = icmp eq ptr %i.h, null
  br i1 %.not42, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load i32, ptr %0, align 8                ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4              ; 6 uses
  %.not.i.i.i = icmp ult i32 %i.k, %i.m
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not14.i.i.i = icmp eq i32 %i.m, 0
  %i.n = add i32 %i.m, 1
  %i.o = lshr i32 %i.n, 1
  %i.p = add i32 %i.o, %i.m
  %i.q = select i1 %.not14.i.i.i, i32 16, i32 %i.p ; 3 uses
  %i.r = icmp ugt i32 %i.q, %i.m
  br i1 %i.r, label %.noexc.i, label %bb.f

.noexc.i:                                         ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = and i64 %i.u, 281474976710655
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = zext i32 %i.m to i64
  %i.y = zext i32 %i.q to i64
  %i.z = shl nuw nsw i64 %i.x, 5
  %i.aa = shl nuw nsw i64 %i.y, 5
  %i.ab = tail call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef %i.w, i64 noundef %i.z, i64 noundef %i.aa)
  %i.ac = load ptr, ptr %i.s, align 8
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = and i64 %i.ad, -281474976710656
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = or i64 %i.ae, %i.af
  %i.ah = inttoptr i64 %i.ag to ptr
  store ptr %i.ah, ptr %i.s, align 8
  store i32 %i.q, ptr %i.l, align 4
  %.pre.i.i.i = load i32, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %.noexc.i, %bb.e, %bb.d
  %i.ai = phi i32 [ %.pre.i.i.i, %.noexc.i ], [ %i.k, %bb.e ], [ %i.k, %bb.d ]
  %i.aj = or i64 ptrtoint (ptr @.str.93 to i64), 289637751035265024
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = and i64 %i.an, 281474976710655
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = zext i32 %i.ai to i64
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %i.ap, i64 %i.aq ; 5 uses
  store i32 10, ptr %i.ar, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i, align 4
  %.sroa.65.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.ak, ptr %.sroa.65.0..sroa_idx.i, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.as, i8 0, i64 14, i1 false)
  %.sroa.6136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 30
  store i16 3, ptr %.sroa.6136.0..sroa_idx, align 2
  %i.at = load i32, ptr %0, align 8
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr %0, align 8
  %i.av = tail call noundef ptr @_ZN10glTFCommon19FindObjectInContextERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKcSA_SA_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.209, ptr noundef null)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.036 = phi ptr [ %i.h, %bb.c ], [ %i.av, %bb.f ] ; 6 uses
  %i.aw = load ptr, ptr %i.f, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.ax = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aw) #36, !noalias !840
  %i.ay = trunc i64 %i.ax to i32                  ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 14
  store i16 1029, ptr %i.az, align 2
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = and i64 %i.bc, -281474976710656
  %i.be = ptrtoint ptr %i.aw to i64               ; 4 uses
  %i.bf = or i64 %i.bd, %i.be                     ; 2 uses
  %i.bg = inttoptr i64 %i.bf to ptr
  store ptr %i.bg, ptr %i.ba, align 8
  store i32 %i.ay, ptr %5, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.036, i64 8 ; 4 uses
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = and i64 %i.bj, 281474976710655
  %i.bl = inttoptr i64 %i.bk to ptr               ; 7 uses
  %i.bm = load i32, ptr %.036, align 8            ; 3 uses
  %i.bn = zext i32 %i.bm to i64                   ; 4 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.bn, 5
  %i.bo = getelementptr i8, ptr %i.bl, i64 %.idx.i.i.i.i ; 2 uses
  %.not9.i.i.i.i = icmp eq i32 %i.bm, 0
  br i1 %.not9.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g
  %i.bp = lshr i64 %i.be, 40
  %i.bq = trunc i64 %i.bp to i8
  %i.br = and i64 %i.bf, 1152921504606846976
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.br, 0      ; 2 uses
  %i.bs = sext i8 %i.bq to i32
  %i.bt = sub nsw i32 13, %i.bs
  %i.bu = select i1 %.not.i.i.i.i.i.i.i, i32 %i.ay, i32 %i.bt ; 2 uses
  %i.bv = and i64 %i.be, 281474976710655
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = select i1 %.not.i.i.i.i.i.i.i, ptr %i.bw, ptr %5 ; 2 uses
  %i.by = zext i32 %i.bu to i64
  br label %bb.h

bb.h:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %.lr.ph.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i ], [ %i.cq, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 8 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 14
  %i.ca = load i16, ptr %i.bz, align 2
  %i.cb = and i16 %i.ca, 4096
  %.not.i.i13.i.i.i.i.i = icmp eq i16 %i.cb, 0    ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 13
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = sext i8 %i.cd to i32
  %i.cf = sub nsw i32 13, %i.ce
  %i.cg = load i32, ptr %.010.i.i.i.i, align 8
  %i.ch = select i1 %.not.i.i13.i.i.i.i.i, i32 %i.cg, i32 %i.cf
  %.not.i.i.i.i.i = icmp eq i32 %i.bu, %i.ch
  br i1 %.not.i.i.i.i.i, label %bb.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.ci = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = and i64 %i.ck, 281474976710655
  %i.cm = inttoptr i64 %i.cl to ptr
  %i.cn = select i1 %.not.i.i13.i.i.i.i.i, ptr %i.cm, ptr %.010.i.i.i.i ; 2 uses
  %i.co = icmp eq ptr %i.bx, %i.cn
  br i1 %i.co, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i: ; preds = %bb.i
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %i.bx, ptr %i.cn, i64 %i.by)
  %i.cp = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.cp, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.h
  %i.cq = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cq, %i.bo
  br i1 %.not.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %bb.h, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.i, %bb.g
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bl, %bb.g ], [ %.010.i.i.i.i, %bb.i ], [ %.010.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i ], [ %i.bo, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.cr = getelementptr inbounds nuw [32 x i8], ptr %i.bl, i64 %i.bn
  %.not.i = icmp eq ptr %.0.lcssa.i.i.i.i, %i.cr
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 30
  %i.cu = load i16, ptr %i.ct, align 2
  %i.cv = icmp eq i16 %i.cu, 3
  br i1 %i.cv, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit, label %bb.k

bb.k:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, %bb.j
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %.036, i64 4 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4            ; 6 uses
  %.not.i.i.i49 = icmp ult i32 %i.bm, %i.cz
  br i1 %.not.i.i.i49, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not14.i.i.i50 = icmp eq i32 %i.cz, 0
  %i.da = add i32 %i.cz, 1
  %i.db = lshr i32 %i.da, 1
  %i.dc = add i32 %i.db, %i.cz
  %i.dd = select i1 %.not14.i.i.i50, i32 16, i32 %i.dc ; 3 uses
  %i.de = icmp ugt i32 %i.dd, %i.cz
  br i1 %i.de, label %.noexc.i53, label %bb.m

.noexc.i53:                                       ; preds = %bb.l
  %i.df = zext i32 %i.cz to i64
  %i.dg = zext i32 %i.dd to i64
  %i.dh = shl nuw nsw i64 %i.df, 5
  %i.di = shl nuw nsw i64 %i.dg, 5
end_hunk_22
begin_hunk_23_@_ZN4glTF11AssetWriter12WriteObjectsINS_4SkinEEEvRNS_8LazyDictIT_EE:bb.a
  %.pre-phi157 = phi i64 [ %.pre156, %.noexc.i53 ], [ %i.bn, %bb.l ], [ %i.bn, %bb.k ]
  %.pre-phi155 = phi ptr [ %.pre154, %.noexc.i53 ], [ %i.bl, %bb.l ], [ %i.bl, %bb.k ]
  %i.dq = or i64 %i.be, 289637751035265024
  %i.dr = inttoptr i64 %i.dq to ptr
  %i.ds = getelementptr inbounds nuw [32 x i8], ptr %.pre-phi155, i64 %.pre-phi157 ; 5 uses
  store i32 %i.ay, ptr %i.ds, align 8
  %.sroa.6.0..sroa_idx.i51 = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i51, align 4
  %.sroa.65.0..sroa_idx.i52 = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store ptr %i.dr, ptr %.sroa.65.0..sroa_idx.i52, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.dt, i8 0, i64 14, i1 false)
  %.sroa.6132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 30
  store i16 3, ptr %.sroa.6132.0..sroa_idx, align 2
  %i.du = load i32, ptr %.036, align 8
  %i.dv = add i32 %i.du, 1                        ; 3 uses
  store i32 %i.dv, ptr %.036, align 8
  %i.dw = load ptr, ptr %i.f, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.dx = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dw) #36, !noalias !843
  %i.dy = trunc i64 %i.dx to i32                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 14
  store i16 1029, ptr %i.dz, align 2
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = and i64 %i.ec, -281474976710656
  %i.ee = ptrtoint ptr %i.dw to i64               ; 3 uses
  %i.ef = or i64 %i.ed, %i.ee                     ; 2 uses
  %i.eg = inttoptr i64 %i.ef to ptr
  store ptr %i.eg, ptr %i.ea, align 8
  store i32 %i.dy, ptr %4, align 8
  %i.eh = load ptr, ptr %i.bh, align 8
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = and i64 %i.ei, 281474976710655
  %i.ek = inttoptr i64 %i.ej to ptr               ; 4 uses
  %i.el = zext i32 %i.dv to i64                   ; 2 uses
  %.idx.i.i.i.i57 = shl nuw nsw i64 %i.el, 5
  %i.em = getelementptr i8, ptr %i.ek, i64 %.idx.i.i.i.i57 ; 2 uses
  %.not9.i.i.i.i58 = icmp eq i32 %i.dv, 0
  br i1 %.not9.i.i.i.i58, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, label %.lr.ph.i.i.i.i59

.lr.ph.i.i.i.i59:                                 ; preds = %bb.m
  %i.en = lshr i64 %i.ee, 40
  %i.eo = trunc i64 %i.en to i8
  %i.ep = and i64 %i.ef, 1152921504606846976
  %.not.i.i.i.i.i.i.i60 = icmp eq i64 %i.ep, 0    ; 2 uses
  %i.eq = sext i8 %i.eo to i32
  %i.er = sub nsw i32 13, %i.eq
  %i.es = select i1 %.not.i.i.i.i.i.i.i60, i32 %i.dy, i32 %i.er ; 2 uses
  %i.et = and i64 %i.ee, 281474976710655
  %i.eu = inttoptr i64 %i.et to ptr
  %i.ev = select i1 %.not.i.i.i.i.i.i.i60, ptr %i.eu, ptr %4 ; 2 uses
  %i.ew = zext i32 %i.es to i64
  br label %bb.n

bb.n:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64, %.lr.ph.i.i.i.i59
  %.010.i.i.i.i61 = phi ptr [ %i.ek, %.lr.ph.i.i.i.i59 ], [ %i.fo, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64 ] ; 8 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i61, i64 14
  %i.ey = load i16, ptr %i.ex, align 2
  %i.ez = and i16 %i.ey, 4096
  %.not.i.i13.i.i.i.i.i62 = icmp eq i16 %i.ez, 0  ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i61, i64 13
  %i.fb = load i8, ptr %i.fa, align 1
  %i.fc = sext i8 %i.fb to i32
  %i.fd = sub nsw i32 13, %i.fc
  %i.fe = load i32, ptr %.010.i.i.i.i61, align 8
  %i.ff = select i1 %.not.i.i13.i.i.i.i.i62, i32 %i.fe, i32 %i.fd
  %.not.i.i.i.i.i63 = icmp eq i32 %i.es, %i.ff
  br i1 %.not.i.i.i.i.i63, label %bb.o, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64

bb.o:                                             ; preds = %bb.n
  %i.fg = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i61, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = and i64 %i.fi, 281474976710655
  %i.fk = inttoptr i64 %i.fj to ptr
  %i.fl = select i1 %.not.i.i13.i.i.i.i.i62, ptr %i.fk, ptr %.010.i.i.i.i61 ; 2 uses
  %i.fm = icmp eq ptr %i.ev, %i.fl
  br i1 %i.fm, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70: ; preds = %bb.o
  %bcmp.i.i.i.i.i71 = call i32 @bcmp(ptr %i.ev, ptr %i.fl, i64 %i.ew)
  %i.fn = icmp eq i32 %bcmp.i.i.i.i.i71, 0
  br i1 %i.fn, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70, %bb.n
  %i.fo = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i61, i64 32 ; 2 uses
  %.not.i.i.i.i65 = icmp eq ptr %i.fo, %i.em
  br i1 %.not.i.i.i.i65, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, label %bb.n, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70, %bb.o, %bb.m
  %.0.lcssa.i.i.i.i67 = phi ptr [ %i.ek, %bb.m ], [ %.010.i.i.i.i61, %bb.o ], [ %.010.i.i.i.i61, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70 ], [ %i.em, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.fp = getelementptr inbounds nuw [32 x i8], ptr %i.ek, i64 %i.el
  %.not.i68 = icmp ne ptr %.0.lcssa.i.i.i.i67, %i.fp
  call void @llvm.assume(i1 %.not.i68)
  %i.fq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i67, i64 16
  %i.fr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i67, i64 30
  %i.fs = load i16, ptr %i.fr, align 2
  %i.ft = icmp eq i16 %i.fs, 3
  %spec.select.i69 = select i1 %i.ft, ptr %i.fq, ptr null
  br label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit

_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, %bb.j, %bb.b
  %.138 = phi ptr [ %0, %bb.b ], [ %i.cs, %bb.j ], [ %spec.select.i69, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66 ] ; 8 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.fw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fv) #36, !noalias !846
  %i.fx = trunc i64 %i.fw to i32                  ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.fy = getelementptr inbounds nuw i8, ptr %3, i64 14
  store i16 1029, ptr %i.fy, align 2
  %i.fz = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ga = load ptr, ptr %i.fz, align 8
  %i.gb = ptrtoint ptr %i.ga to i64
  %i.gc = and i64 %i.gb, -281474976710656
  %i.gd = ptrtoint ptr %i.fv to i64               ; 4 uses
  %i.ge = or i64 %i.gc, %i.gd                     ; 2 uses
  %i.gf = inttoptr i64 %i.ge to ptr
  store ptr %i.gf, ptr %i.fz, align 8
  store i32 %i.fx, ptr %3, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %.138, i64 8 ; 6 uses
  %i.gh = load ptr, ptr %i.gg, align 8
  %i.gi = ptrtoint ptr %i.gh to i64
  %i.gj = and i64 %i.gi, 281474976710655
  %i.gk = inttoptr i64 %i.gj to ptr               ; 4 uses
  %i.gl = load i32, ptr %.138, align 8            ; 2 uses
  %i.gm = zext i32 %i.gl to i64                   ; 2 uses
  %.idx.i.i.i.i73 = shl nuw nsw i64 %i.gm, 5
  %i.gn = getelementptr i8, ptr %i.gk, i64 %.idx.i.i.i.i73 ; 2 uses
  %.not9.i.i.i.i74 = icmp eq i32 %i.gl, 0
  br i1 %.not9.i.i.i.i74, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, label %.lr.ph.i.i.i.i75

.lr.ph.i.i.i.i75:                                 ; preds = %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit
  %i.go = lshr i64 %i.gd, 40
  %i.gp = trunc i64 %i.go to i8
  %i.gq = and i64 %i.ge, 1152921504606846976
  %.not.i.i.i.i.i.i.i76 = icmp eq i64 %i.gq, 0    ; 2 uses
  %i.gr = sext i8 %i.gp to i32
  %i.gs = sub nsw i32 13, %i.gr
  %i.gt = select i1 %.not.i.i.i.i.i.i.i76, i32 %i.fx, i32 %i.gs ; 2 uses
  %i.gu = and i64 %i.gd, 281474976710655
  %i.gv = inttoptr i64 %i.gu to ptr
  %i.gw = select i1 %.not.i.i.i.i.i.i.i76, ptr %i.gv, ptr %3 ; 2 uses
  %i.gx = zext i32 %i.gt to i64
  br label %bb.p

bb.p:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80, %.lr.ph.i.i.i.i75
  %.010.i.i.i.i77 = phi ptr [ %i.gk, %.lr.ph.i.i.i.i75 ], [ %i.hp, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80 ] ; 8 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i77, i64 14
  %i.gz = load i16, ptr %i.gy, align 2
  %i.ha = and i16 %i.gz, 4096
  %.not.i.i13.i.i.i.i.i78 = icmp eq i16 %i.ha, 0  ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i77, i64 13
  %i.hc = load i8, ptr %i.hb, align 1
  %i.hd = sext i8 %i.hc to i32
  %i.he = sub nsw i32 13, %i.hd
  %i.hf = load i32, ptr %.010.i.i.i.i77, align 8
  %i.hg = select i1 %.not.i.i13.i.i.i.i.i78, i32 %i.hf, i32 %i.he
  %.not.i.i.i.i.i79 = icmp eq i32 %i.gt, %i.hg
  br i1 %.not.i.i.i.i.i79, label %bb.q, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80

bb.q:                                             ; preds = %bb.p
  %i.hh = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i77, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8
  %i.hj = ptrtoint ptr %i.hi to i64
  %i.hk = and i64 %i.hj, 281474976710655
  %i.hl = inttoptr i64 %i.hk to ptr
  %i.hm = select i1 %.not.i.i13.i.i.i.i.i78, ptr %i.hl, ptr %.010.i.i.i.i77 ; 2 uses
  %i.hn = icmp eq ptr %i.gw, %i.hm
  br i1 %i.hn, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86: ; preds = %bb.q
  %bcmp.i.i.i.i.i87 = call i32 @bcmp(ptr %i.gw, ptr %i.hm, i64 %i.gx)
  %i.ho = icmp eq i32 %bcmp.i.i.i.i.i87, 0
  br i1 %i.ho, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86, %bb.p
  %i.hp = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i77, i64 32 ; 2 uses
  %.not.i.i.i.i81 = icmp eq ptr %i.hp, %i.gn
  br i1 %.not.i.i.i.i81, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, label %bb.p, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86, %bb.q, %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit
  %.0.lcssa.i.i.i.i83 = phi ptr [ %i.gk, %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit ], [ %.010.i.i.i.i77, %bb.q ], [ %.010.i.i.i.i77, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86 ], [ %i.gn, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.hq = getelementptr inbounds nuw [32 x i8], ptr %i.gk, i64 %i.gm
  %.not.i84 = icmp eq ptr %.0.lcssa.i.i.i.i83, %i.hq
  br i1 %.not.i84, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82
  %i.hr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i83, i64 16
  %i.hs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i83, i64 30
  %i.ht = load i16, ptr %i.hs, align 2
  %i.hu = icmp eq i16 %i.ht, 3
  br i1 %i.hu, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88, label %bb.s

bb.s:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, %bb.r
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hw = load ptr, ptr %i.hv, align 8
  %i.hx = load i32, ptr %.138, align 8            ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.138, i64 4 ; 2 uses
  %i.hz = load i32, ptr %i.hy, align 4            ; 6 uses
  %.not.i.i.i89 = icmp ult i32 %i.hx, %i.hz
  br i1 %.not.i.i.i89, label %._crit_edge, label %bb.t

._crit_edge:                                      ; preds = %bb.s
  %.pre = load ptr, ptr %i.gg, align 8
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  %.not14.i.i.i90 = icmp eq i32 %i.hz, 0
  %i.ia = add i32 %i.hz, 1
  %i.ib = lshr i32 %i.ia, 1
  %i.ic = add i32 %i.ib, %i.hz
  %i.id = select i1 %.not14.i.i.i90, i32 16, i32 %i.ic ; 3 uses
  %i.ie = icmp ugt i32 %i.id, %i.hz
  %.pre144 = load ptr, ptr %i.gg, align 8         ; 2 uses
  br i1 %i.ie, label %.noexc.i93, label %bb.u

.noexc.i93:                                       ; preds = %bb.t
  %i.if = ptrtoint ptr %.pre144 to i64
  %i.ig = and i64 %i.if, 281474976710655
  %i.ih = inttoptr i64 %i.ig to ptr
  %i.ii = zext i32 %i.hz to i64
  %i.ij = zext i32 %i.id to i64
  %i.ik = shl nuw nsw i64 %i.ii, 5
  %i.il = shl nuw nsw i64 %i.ij, 5
  %i.im = call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.hw, ptr noundef %i.ih, i64 noundef %i.ik, i64 noundef %i.il)
  %i.in = load ptr, ptr %i.gg, align 8
  %i.io = ptrtoint ptr %i.in to i64
  %i.ip = and i64 %i.io, -281474976710656
  %i.iq = ptrtoint ptr %i.im to i64
  %i.ir = or i64 %i.ip, %i.iq
  %i.is = inttoptr i64 %i.ir to ptr               ; 2 uses
  store ptr %i.is, ptr %i.gg, align 8
  store i32 %i.id, ptr %i.hy, align 4
  %.pre.i.i.i94 = load i32, ptr %.138, align 8
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge, %.noexc.i93, %bb.t
  %i.it = phi ptr [ %i.is, %.noexc.i93 ], [ %.pre144, %bb.t ], [ %.pre, %._crit_edge ]
  %i.iu = phi i32 [ %.pre.i.i.i94, %.noexc.i93 ], [ %i.hx, %bb.t ], [ %i.hx, %._crit_edge ]
  %i.iv = or i64 %i.gd, 289637751035265024
  %i.iw = inttoptr i64 %i.iv to ptr
  %i.ix = ptrtoint ptr %i.it to i64
  %i.iy = and i64 %i.ix, 281474976710655
  %i.iz = inttoptr i64 %i.iy to ptr
  %i.ja = zext i32 %i.iu to i64
  %i.jb = getelementptr inbounds nuw [32 x i8], ptr %i.iz, i64 %i.ja ; 5 uses
  store i32 %i.fx, ptr %i.jb, align 8
  %.sroa.6.0..sroa_idx.i91 = getelementptr inbounds nuw i8, ptr %i.jb, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i91, align 4
  %.sroa.65.0..sroa_idx.i92 = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  store ptr %i.iw, ptr %.sroa.65.0..sroa_idx.i92, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  store <14 x i8> zeroinitializer, ptr %i.jc, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jb, i64 30
  store i16 3, ptr %.sroa.6.0..sroa_idx, align 2
  %i.jd = load i32, ptr %.138, align 8
  %i.je = add i32 %i.jd, 1
  store i32 %i.je, ptr %.138, align 8
  %i.jf = load ptr, ptr %i.fu, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.jg = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.jf) #36, !noalias !849
  %i.jh = trunc i64 %i.jg to i32                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.ji = getelementptr inbounds nuw i8, ptr %2, i64 14
  store i16 1029, ptr %i.ji, align 2
  %i.jj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.jk = load ptr, ptr %i.jj, align 8
  %i.jl = ptrtoint ptr %i.jk to i64
  %i.jm = and i64 %i.jl, -281474976710656
  %i.jn = ptrtoint ptr %i.jf to i64               ; 3 uses
  %i.jo = or i64 %i.jm, %i.jn                     ; 2 uses
  %i.jp = inttoptr i64 %i.jo to ptr
  store ptr %i.jp, ptr %i.jj, align 8
  store i32 %i.jh, ptr %2, align 8
  %i.jq = load ptr, ptr %i.gg, align 8
  %i.jr = ptrtoint ptr %i.jq to i64
  %i.js = and i64 %i.jr, 281474976710655
  %i.jt = inttoptr i64 %i.js to ptr               ; 4 uses
  %i.ju = load i32, ptr %.138, align 8            ; 2 uses
  %i.jv = zext i32 %i.ju to i64                   ; 2 uses
  %.idx.i.i.i.i97 = shl nuw nsw i64 %i.jv, 5
  %i.jw = getelementptr i8, ptr %i.jt, i64 %.idx.i.i.i.i97 ; 2 uses
  %.not9.i.i.i.i98 = icmp eq i32 %i.ju, 0
  br i1 %.not9.i.i.i.i98, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, label %.lr.ph.i.i.i.i99

.lr.ph.i.i.i.i99:                                 ; preds = %bb.u
  %i.jx = lshr i64 %i.jn, 40
  %i.jy = trunc i64 %i.jx to i8
  %i.jz = and i64 %i.jo, 1152921504606846976
  %.not.i.i.i.i.i.i.i100 = icmp eq i64 %i.jz, 0   ; 2 uses
  %i.ka = sext i8 %i.jy to i32
  %i.kb = sub nsw i32 13, %i.ka
  %i.kc = select i1 %.not.i.i.i.i.i.i.i100, i32 %i.jh, i32 %i.kb ; 2 uses
  %i.kd = and i64 %i.jn, 281474976710655
  %i.ke = inttoptr i64 %i.kd to ptr
  %i.kf = select i1 %.not.i.i.i.i.i.i.i100, ptr %i.ke, ptr %2 ; 2 uses
  %i.kg = zext i32 %i.kc to i64
  br label %bb.v

bb.v:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104, %.lr.ph.i.i.i.i99
  %.010.i.i.i.i101 = phi ptr [ %i.jt, %.lr.ph.i.i.i.i99 ], [ %i.ky, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104 ] ; 8 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i101, i64 14
  %i.ki = load i16, ptr %i.kh, align 2
  %i.kj = and i16 %i.ki, 4096
  %.not.i.i13.i.i.i.i.i102 = icmp eq i16 %i.kj, 0 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i101, i64 13
  %i.kl = load i8, ptr %i.kk, align 1
  %i.km = sext i8 %i.kl to i32
  %i.kn = sub nsw i32 13, %i.km
  %i.ko = load i32, ptr %.010.i.i.i.i101, align 8
  %i.kp = select i1 %.not.i.i13.i.i.i.i.i102, i32 %i.ko, i32 %i.kn
  %.not.i.i.i.i.i103 = icmp eq i32 %i.kc, %i.kp
  br i1 %.not.i.i.i.i.i103, label %bb.w, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104

bb.w:                                             ; preds = %bb.v
  %i.kq = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i101, i64 8
  %i.kr = load ptr, ptr %i.kq, align 8
  %i.ks = ptrtoint ptr %i.kr to i64
  %i.kt = and i64 %i.ks, 281474976710655
  %i.ku = inttoptr i64 %i.kt to ptr
  %i.kv = select i1 %.not.i.i13.i.i.i.i.i102, ptr %i.ku, ptr %.010.i.i.i.i101 ; 2 uses
  %i.kw = icmp eq ptr %i.kf, %i.kv
  br i1 %i.kw, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110: ; preds = %bb.w
  %bcmp.i.i.i.i.i111 = call i32 @bcmp(ptr %i.kf, ptr %i.kv, i64 %i.kg)
  %i.kx = icmp eq i32 %bcmp.i.i.i.i.i111, 0
  br i1 %i.kx, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110, %bb.v
  %i.ky = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i101, i64 32 ; 2 uses
  %.not.i.i.i.i105 = icmp eq ptr %i.ky, %i.jw
  br i1 %.not.i.i.i.i105, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, label %bb.v, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110, %bb.w, %bb.u
  %.0.lcssa.i.i.i.i107 = phi ptr [ %i.jt, %bb.u ], [ %.010.i.i.i.i101, %bb.w ], [ %.010.i.i.i.i101, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110 ], [ %i.jw, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.kz = getelementptr inbounds nuw [32 x i8], ptr %i.jt, i64 %i.jv
  %.not.i108 = icmp eq ptr %.0.lcssa.i.i.i.i107, %i.kz
  br i1 %.not.i108, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88, label %bb.x

bb.x:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106
  %i.la = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i107, i64 16
  %i.lb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i107, i64 30
  %i.lc = load i16, ptr %i.lb, align 2
  %i.ld = icmp eq i16 %i.lc, 3
  %spec.select.i109 = select i1 %i.ld, ptr %i.la, ptr null
  br label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88

_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88: ; preds = %bb.x, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, %bb.r
  %.031 = phi ptr [ %i.hr, %bb.r ], [ null, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106 ], [ %spec.select.i109, %bb.x ] ; 6 uses
  %i.le = load ptr, ptr %i.c, align 8
  %i.lf = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not143 = icmp eq ptr %i.le, %i.lf
  br i1 %.not143, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88
  %i.lg = getelementptr inbounds nuw i8, ptr %6, i64 14
  %i.lh = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.lk = or i64 ptrtoint (ptr @.str.88 to i64), 289637751035265024
  %i.ll = inttoptr i64 %i.lk to ptr
  %i.lm = getelementptr inbounds nuw i8, ptr %.031, i64 4 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.031, i64 8 ; 4 uses
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph, %bb.ad
  %i.lo = phi ptr [ %i.lf, %.lr.ph ], [ %i.ov, %bb.ad ]
  %.0142 = phi i64 [ 0, %.lr.ph ], [ %i.ot, %bb.ad ] ; 5 uses
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.lo, i64 %.0142
  %i.lq = load ptr, ptr %i.lp, align 8            ; 2 uses
  %i.lr = load ptr, ptr %i.lq, align 8
  %i.ls = load ptr, ptr %i.lr, align 8
  %i.lt = call noundef zeroext i1 %i.ls(ptr noundef nonnull align 8 dereferenceable(72) %i.lq)
  br i1 %i.lt, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  store i16 3, ptr %i.lg, align 2
  %i.lu = load ptr, ptr %i.a, align 8
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.lu, i64 %.0142
  %i.lw = load ptr, ptr %i.lv, align 8            ; 3 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 192
  %i.ly = load i64, ptr %i.lx, align 8
  %i.lz = icmp eq i64 %i.ly, 0
  br i1 %i.lz, label %bb.aa, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit: ; preds = %bb.z
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lw, i64 184
  %i.mb = load ptr, ptr %i.ma, align 8            ; 2 uses
  %i.mc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.mb) #36, !noalias !852
  %i.md = trunc i64 %i.mc to i32
  %i.me = load ptr, ptr %i.li, align 8, !nonnull !16, !align !112
  %i.mf = load ptr, ptr %i.lj, align 8
  %i.mg = ptrtoint ptr %i.mf to i64
  %i.mh = and i64 %i.mg, 281474976710655
  %i.mi = inttoptr i64 %i.mh to ptr
  %i.mj = call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.me, ptr noundef %i.mi, i64 noundef 0, i64 noundef 512)
  %i.mk = load ptr, ptr %i.lj, align 8
  %i.ml = ptrtoint ptr %i.mk to i64
  %i.mm = and i64 %i.ml, -281474976710656
  %i.mn = ptrtoint ptr %i.mj to i64               ; 2 uses
  %i.mo = or i64 %i.mm, %i.mn
  %i.mp = inttoptr i64 %i.mo to ptr
  store ptr %i.mp, ptr %i.lj, align 8
  store i32 16, ptr %i.lh, align 4
  %.pre.i.i.i.i = load i32, ptr %6, align 8
  %i.mq = zext i32 %.pre.i.i.i.i to i64
  %i.mr = ptrtoint ptr %i.mb to i64
  %i.ms = or i64 %i.mr, 289637751035265024
  %i.mt = inttoptr i64 %i.ms to ptr
  %i.mu = and i64 %i.mn, 281474976710655
  %i.mv = inttoptr i64 %i.mu to ptr
  %i.mw = getelementptr inbounds nuw [32 x i8], ptr %i.mv, i64 %i.mq ; 6 uses
  store i32 4, ptr %i.mw, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mw, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i.i, align 4
  %.sroa.65.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  store ptr %i.ll, ptr %.sroa.65.0..sroa_idx.i.i, align 8
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 16
  store i32 %i.md, ptr %i.mx, align 8
  %.sroa.6.0..sroa_idx.i114 = getelementptr inbounds nuw i8, ptr %i.mw, i64 20
  store i32 0, ptr %.sroa.6.0..sroa_idx.i114, align 4
  %.sroa.66.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mw, i64 24
  store ptr %i.mt, ptr %.sroa.66.0..sroa_idx.i, align 8
  %i.my = load i32, ptr %6, align 8
  %i.mz = add i32 %i.my, 1
  store i32 %i.mz, ptr %6, align 8
  %.pre146 = load ptr, ptr %i.a, align 8
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre146, i64 %.0142
  %.pre147 = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit, %bb.z
  %i.na = phi ptr [ %.pre147, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit ], [ %i.lw, %bb.z ]
  call void @_ZN4glTF5WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_4SkinERNS_11AssetWriterE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(216) %i.na, ptr noundef nonnull align 8 dereferenceable(112) %0)
  %i.nb = load ptr, ptr %i.a, align 8
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.nb, i64 %.0142
  %i.nd = load ptr, ptr %i.nc, align 8            ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  %i.nf = load ptr, ptr %i.ne, align 8, !noalias !855 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nd, i64 16
  %i.nh = load i64, ptr %i.ng, align 8, !noalias !855
  %i.ni = trunc i64 %i.nh to i32
  %.not.i.i = icmp eq ptr %i.nf, null
  %i.nj = select i1 %.not.i.i, ptr @_ZN9rapidjson16GenericStringRefIcE11emptyStringE, ptr %i.nf, !prof !6
  %i.nk = load ptr, ptr %i.li, align 8, !nonnull !16, !align !112
  %i.nl = load i32, ptr %.031, align 8            ; 3 uses
  %i.nm = load i32, ptr %i.lm, align 4            ; 6 uses
  %.not.i.i.i116 = icmp ult i32 %i.nl, %i.nm
  br i1 %.not.i.i.i116, label %._crit_edge148, label %bb.ab

._crit_edge148:                                   ; preds = %bb.aa
  %.pre149 = load ptr, ptr %i.ln, align 8
  br label %bb.ac

end_hunk_23
begin_hunk_24_@_ZN4glTF8LazyDictINS_7TextureEE16AttachToDocumentERN9rapidjson15GenericDocumentINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEES8_EE:bb.a
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = and i64 %i.q, 281474976710655
  %i.s = inttoptr i64 %i.r to ptr                 ; 4 uses
  %i.t = load i32, ptr %i.c, align 8              ; 2 uses
  %i.u = zext i32 %i.t to i64                     ; 2 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.u, 5
  %i.v = getelementptr i8, ptr %i.s, i64 %.idx.i.i.i.i ; 2 uses
  %.not9.i.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not9.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c
  %i.w = lshr i64 %i.l, 40
  %i.x = trunc i64 %i.w to i8
  %i.y = and i64 %i.m, 1152921504606846976
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.y, 0       ; 2 uses
  %i.z = sext i8 %i.x to i32
  %i.aa = sub nsw i32 13, %i.z
  %i.ab = select i1 %.not.i.i.i.i.i.i.i, i32 %i.f, i32 %i.aa ; 2 uses
  %i.ac = and i64 %i.l, 281474976710655
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = select i1 %.not.i.i.i.i.i.i.i, ptr %i.ad, ptr %3 ; 2 uses
  %i.af = zext i32 %i.ab to i64
  br label %bb.d

bb.d:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %.lr.ph.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i ], [ %i.ax, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 14
  %i.ah = load i16, ptr %i.ag, align 2
  %i.ai = and i16 %i.ah, 4096
  %.not.i.i13.i.i.i.i.i = icmp eq i16 %i.ai, 0    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 13
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = sext i8 %i.ak to i32
  %i.am = sub nsw i32 13, %i.al
  %i.an = load i32, ptr %.010.i.i.i.i, align 8
  %i.ao = select i1 %.not.i.i13.i.i.i.i.i, i32 %i.an, i32 %i.am
  %.not.i.i.i.i.i = icmp eq i32 %i.ab, %i.ao
  br i1 %.not.i.i.i.i.i, label %bb.e, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = and i64 %i.ar, 281474976710655
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = select i1 %.not.i.i13.i.i.i.i.i, ptr %i.at, ptr %.010.i.i.i.i ; 2 uses
  %i.av = icmp eq ptr %i.ae, %i.au
  br i1 %i.av, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i: ; preds = %bb.e
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %i.ae, ptr %i.au, i64 %i.af)
  %i.aw = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.aw, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ax, %i.v
  br i1 %.not.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %bb.d, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.e, %bb.c
  %.0.lcssa.i.i.i.i = phi ptr [ %i.s, %bb.c ], [ %.010.i.i.i.i, %bb.e ], [ %.010.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i ], [ %i.v, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.ay = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %i.u
  %.not.i = icmp eq ptr %.0.lcssa.i.i.i.i, %i.ay
  br i1 %.not.i, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 30
  %i.bb = load i16, ptr %i.ba, align 2
  %i.bc = icmp eq i16 %i.bb, 3
  br i1 %i.bc, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread

_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit: ; preds = %bb.f, %bb.a
  %.1 = phi ptr [ %1, %bb.a ], [ %i.az, %bb.f ]   ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.bf = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.be) #36, !noalias !869
  %i.bg = trunc i64 %i.bf to i32                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 14
  store i16 1029, ptr %i.bh, align 2
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = and i64 %i.bk, -281474976710656
  %i.bm = ptrtoint ptr %i.be to i64               ; 3 uses
  %i.bn = or i64 %i.bl, %i.bm                     ; 2 uses
  %i.bo = inttoptr i64 %i.bn to ptr
  store ptr %i.bo, ptr %i.bi, align 8
  store i32 %i.bg, ptr %2, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = and i64 %i.br, 281474976710655
  %i.bt = inttoptr i64 %i.bs to ptr               ; 4 uses
  %i.bu = load i32, ptr %.1, align 8              ; 2 uses
  %i.bv = zext i32 %i.bu to i64                   ; 2 uses
  %.idx.i.i.i.i10 = shl nuw nsw i64 %i.bv, 5
  %i.bw = getelementptr i8, ptr %i.bt, i64 %.idx.i.i.i.i10 ; 2 uses
  %.not9.i.i.i.i11 = icmp eq i32 %i.bu, 0
  br i1 %.not9.i.i.i.i11, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19, label %.lr.ph.i.i.i.i12

.lr.ph.i.i.i.i12:                                 ; preds = %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit
  %i.bx = lshr i64 %i.bm, 40
  %i.by = trunc i64 %i.bx to i8
  %i.bz = and i64 %i.bn, 1152921504606846976
  %.not.i.i.i.i.i.i.i13 = icmp eq i64 %i.bz, 0    ; 2 uses
  %i.ca = sext i8 %i.by to i32
  %i.cb = sub nsw i32 13, %i.ca
  %i.cc = select i1 %.not.i.i.i.i.i.i.i13, i32 %i.bg, i32 %i.cb ; 2 uses
  %i.cd = and i64 %i.bm, 281474976710655
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = select i1 %.not.i.i.i.i.i.i.i13, ptr %i.ce, ptr %2 ; 2 uses
  %i.cg = zext i32 %i.cc to i64
  br label %bb.g

bb.g:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17, %.lr.ph.i.i.i.i12
  %.010.i.i.i.i14 = phi ptr [ %i.bt, %.lr.ph.i.i.i.i12 ], [ %i.cy, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17 ] ; 8 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i14, i64 14
  %i.ci = load i16, ptr %i.ch, align 2
  %i.cj = and i16 %i.ci, 4096
  %.not.i.i13.i.i.i.i.i15 = icmp eq i16 %i.cj, 0  ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i14, i64 13
  %i.cl = load i8, ptr %i.ck, align 1
  %i.cm = sext i8 %i.cl to i32
  %i.cn = sub nsw i32 13, %i.cm
  %i.co = load i32, ptr %.010.i.i.i.i14, align 8
  %i.cp = select i1 %.not.i.i13.i.i.i.i.i15, i32 %i.co, i32 %i.cn
  %.not.i.i.i.i.i16 = icmp eq i32 %i.cc, %i.cp
  br i1 %.not.i.i.i.i.i16, label %bb.h, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17

bb.h:                                             ; preds = %bb.g
  %i.cq = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i14, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = and i64 %i.cs, 281474976710655
  %i.cu = inttoptr i64 %i.ct to ptr
  %i.cv = select i1 %.not.i.i13.i.i.i.i.i15, ptr %i.cu, ptr %.010.i.i.i.i14 ; 2 uses
  %i.cw = icmp eq ptr %i.cf, %i.cv
  br i1 %i.cw, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i23

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i23: ; preds = %bb.h
  %bcmp.i.i.i.i.i24 = call i32 @bcmp(ptr %i.cf, ptr %i.cv, i64 %i.cg)
  %i.cx = icmp eq i32 %bcmp.i.i.i.i.i24, 0
  br i1 %i.cx, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i23, %bb.g
  %i.cy = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i14, i64 32 ; 2 uses
  %.not.i.i.i.i18 = icmp eq ptr %i.cy, %i.bw
  br i1 %.not.i.i.i.i18, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19, label %bb.g, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i23, %bb.h, %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit
  %.0.lcssa.i.i.i.i20 = phi ptr [ %i.bt, %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit ], [ %.010.i.i.i.i14, %bb.h ], [ %.010.i.i.i.i14, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i23 ], [ %i.bw, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.cz = getelementptr inbounds nuw [32 x i8], ptr %i.bt, i64 %i.bv
  %.not.i21 = icmp eq ptr %.0.lcssa.i.i.i.i20, %i.cz
  br i1 %.not.i21, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit25, label %bb.i

bb.i:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19
  %i.da = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i20, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i20, i64 30
  %i.dc = load i16, ptr %i.db, align 2
  %i.dd = icmp eq i16 %i.dc, 3
  %spec.select.i22 = select i1 %i.dd, ptr %i.da, ptr null
  br label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit25

_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit25: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19, %bb.i
  %i.de = phi ptr [ null, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19 ], [ %spec.select.i22, %bb.i ]
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.de, ptr %i.df, align 8
  br label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread

_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread: ; preds = %bb.f, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, %bb.b, %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit25
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4glTF8LazyDictINS_7TextureEE18DetachFromDocumentEv(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr null, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4glTF8LazyDictINS_7TextureEE12WriteObjectsERNS_11AssetWriterE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN4glTF11AssetWriter12WriteObjectsINS_7TextureEEEvRNS_8LazyDictIT_EE(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(120) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4glTF11AssetWriter12WriteObjectsINS_7TextureEEEvRNS_8LazyDictIT_EE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(120) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %3 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %4 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %5 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %6 = alloca %"class.rapidjson::GenericValue", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef ptr @_ZN10glTFCommon19FindObjectInContextERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKcSA_SA_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.209, ptr noundef null) ; 2 uses
  %.not42 = icmp eq ptr %i.h, null
  br i1 %.not42, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load i32, ptr %0, align 8                ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4              ; 6 uses
  %.not.i.i.i = icmp ult i32 %i.k, %i.m
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not14.i.i.i = icmp eq i32 %i.m, 0
  %i.n = add i32 %i.m, 1
  %i.o = lshr i32 %i.n, 1
  %i.p = add i32 %i.o, %i.m
  %i.q = select i1 %.not14.i.i.i, i32 16, i32 %i.p ; 3 uses
  %i.r = icmp ugt i32 %i.q, %i.m
  br i1 %i.r, label %.noexc.i, label %bb.f

.noexc.i:                                         ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = and i64 %i.u, 281474976710655
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = zext i32 %i.m to i64
  %i.y = zext i32 %i.q to i64
  %i.z = shl nuw nsw i64 %i.x, 5
  %i.aa = shl nuw nsw i64 %i.y, 5
  %i.ab = tail call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef %i.w, i64 noundef %i.z, i64 noundef %i.aa)
  %i.ac = load ptr, ptr %i.s, align 8
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = and i64 %i.ad, -281474976710656
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = or i64 %i.ae, %i.af
  %i.ah = inttoptr i64 %i.ag to ptr
  store ptr %i.ah, ptr %i.s, align 8
  store i32 %i.q, ptr %i.l, align 4
  %.pre.i.i.i = load i32, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %.noexc.i, %bb.e, %bb.d
  %i.ai = phi i32 [ %.pre.i.i.i, %.noexc.i ], [ %i.k, %bb.e ], [ %i.k, %bb.d ]
  %i.aj = or i64 ptrtoint (ptr @.str.93 to i64), 289637751035265024
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = and i64 %i.an, 281474976710655
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = zext i32 %i.ai to i64
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %i.ap, i64 %i.aq ; 5 uses
  store i32 10, ptr %i.ar, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i, align 4
  %.sroa.65.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.ak, ptr %.sroa.65.0..sroa_idx.i, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.as, i8 0, i64 14, i1 false)
  %.sroa.6136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 30
  store i16 3, ptr %.sroa.6136.0..sroa_idx, align 2
  %i.at = load i32, ptr %0, align 8
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr %0, align 8
  %i.av = tail call noundef ptr @_ZN10glTFCommon19FindObjectInContextERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKcSA_SA_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.209, ptr noundef null)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.036 = phi ptr [ %i.h, %bb.c ], [ %i.av, %bb.f ] ; 6 uses
  %i.aw = load ptr, ptr %i.f, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.ax = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aw) #36, !noalias !872
  %i.ay = trunc i64 %i.ax to i32                  ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 14
  store i16 1029, ptr %i.az, align 2
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = and i64 %i.bc, -281474976710656
  %i.be = ptrtoint ptr %i.aw to i64               ; 4 uses
  %i.bf = or i64 %i.bd, %i.be                     ; 2 uses
  %i.bg = inttoptr i64 %i.bf to ptr
  store ptr %i.bg, ptr %i.ba, align 8
  store i32 %i.ay, ptr %5, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.036, i64 8 ; 4 uses
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = and i64 %i.bj, 281474976710655
  %i.bl = inttoptr i64 %i.bk to ptr               ; 7 uses
  %i.bm = load i32, ptr %.036, align 8            ; 3 uses
  %i.bn = zext i32 %i.bm to i64                   ; 4 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.bn, 5
  %i.bo = getelementptr i8, ptr %i.bl, i64 %.idx.i.i.i.i ; 2 uses
  %.not9.i.i.i.i = icmp eq i32 %i.bm, 0
  br i1 %.not9.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g
  %i.bp = lshr i64 %i.be, 40
  %i.bq = trunc i64 %i.bp to i8
  %i.br = and i64 %i.bf, 1152921504606846976
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.br, 0      ; 2 uses
  %i.bs = sext i8 %i.bq to i32
  %i.bt = sub nsw i32 13, %i.bs
  %i.bu = select i1 %.not.i.i.i.i.i.i.i, i32 %i.ay, i32 %i.bt ; 2 uses
  %i.bv = and i64 %i.be, 281474976710655
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = select i1 %.not.i.i.i.i.i.i.i, ptr %i.bw, ptr %5 ; 2 uses
  %i.by = zext i32 %i.bu to i64
  br label %bb.h

bb.h:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %.lr.ph.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i ], [ %i.cq, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 8 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 14
  %i.ca = load i16, ptr %i.bz, align 2
  %i.cb = and i16 %i.ca, 4096
  %.not.i.i13.i.i.i.i.i = icmp eq i16 %i.cb, 0    ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 13
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = sext i8 %i.cd to i32
  %i.cf = sub nsw i32 13, %i.ce
  %i.cg = load i32, ptr %.010.i.i.i.i, align 8
  %i.ch = select i1 %.not.i.i13.i.i.i.i.i, i32 %i.cg, i32 %i.cf
  %.not.i.i.i.i.i = icmp eq i32 %i.bu, %i.ch
  br i1 %.not.i.i.i.i.i, label %bb.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.ci = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = and i64 %i.ck, 281474976710655
  %i.cm = inttoptr i64 %i.cl to ptr
  %i.cn = select i1 %.not.i.i13.i.i.i.i.i, ptr %i.cm, ptr %.010.i.i.i.i ; 2 uses
  %i.co = icmp eq ptr %i.bx, %i.cn
  br i1 %i.co, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i: ; preds = %bb.i
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %i.bx, ptr %i.cn, i64 %i.by)
  %i.cp = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.cp, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.h
  %i.cq = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cq, %i.bo
  br i1 %.not.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %bb.h, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.i, %bb.g
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bl, %bb.g ], [ %.010.i.i.i.i, %bb.i ], [ %.010.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i ], [ %i.bo, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.cr = getelementptr inbounds nuw [32 x i8], ptr %i.bl, i64 %i.bn
  %.not.i = icmp eq ptr %.0.lcssa.i.i.i.i, %i.cr
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 30
  %i.cu = load i16, ptr %i.ct, align 2
  %i.cv = icmp eq i16 %i.cu, 3
  br i1 %i.cv, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit, label %bb.k

bb.k:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, %bb.j
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %.036, i64 4 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4            ; 6 uses
  %.not.i.i.i49 = icmp ult i32 %i.bm, %i.cz
  br i1 %.not.i.i.i49, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not14.i.i.i50 = icmp eq i32 %i.cz, 0
  %i.da = add i32 %i.cz, 1
  %i.db = lshr i32 %i.da, 1
  %i.dc = add i32 %i.db, %i.cz
  %i.dd = select i1 %.not14.i.i.i50, i32 16, i32 %i.dc ; 3 uses
  %i.de = icmp ugt i32 %i.dd, %i.cz
  br i1 %i.de, label %.noexc.i53, label %bb.m

.noexc.i53:                                       ; preds = %bb.l
  %i.df = zext i32 %i.cz to i64
  %i.dg = zext i32 %i.dd to i64
  %i.dh = shl nuw nsw i64 %i.df, 5
  %i.di = shl nuw nsw i64 %i.dg, 5
end_hunk_24
begin_hunk_25_@_ZN4glTF11AssetWriter12WriteObjectsINS_7TextureEEEvRNS_8LazyDictIT_EE:bb.a
  %.pre-phi157 = phi i64 [ %.pre156, %.noexc.i53 ], [ %i.bn, %bb.l ], [ %i.bn, %bb.k ]
  %.pre-phi155 = phi ptr [ %.pre154, %.noexc.i53 ], [ %i.bl, %bb.l ], [ %i.bl, %bb.k ]
  %i.dq = or i64 %i.be, 289637751035265024
  %i.dr = inttoptr i64 %i.dq to ptr
  %i.ds = getelementptr inbounds nuw [32 x i8], ptr %.pre-phi155, i64 %.pre-phi157 ; 5 uses
  store i32 %i.ay, ptr %i.ds, align 8
  %.sroa.6.0..sroa_idx.i51 = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i51, align 4
  %.sroa.65.0..sroa_idx.i52 = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store ptr %i.dr, ptr %.sroa.65.0..sroa_idx.i52, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.dt, i8 0, i64 14, i1 false)
  %.sroa.6132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 30
  store i16 3, ptr %.sroa.6132.0..sroa_idx, align 2
  %i.du = load i32, ptr %.036, align 8
  %i.dv = add i32 %i.du, 1                        ; 3 uses
  store i32 %i.dv, ptr %.036, align 8
  %i.dw = load ptr, ptr %i.f, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.dx = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dw) #36, !noalias !875
  %i.dy = trunc i64 %i.dx to i32                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 14
  store i16 1029, ptr %i.dz, align 2
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = and i64 %i.ec, -281474976710656
  %i.ee = ptrtoint ptr %i.dw to i64               ; 3 uses
  %i.ef = or i64 %i.ed, %i.ee                     ; 2 uses
  %i.eg = inttoptr i64 %i.ef to ptr
  store ptr %i.eg, ptr %i.ea, align 8
  store i32 %i.dy, ptr %4, align 8
  %i.eh = load ptr, ptr %i.bh, align 8
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = and i64 %i.ei, 281474976710655
  %i.ek = inttoptr i64 %i.ej to ptr               ; 4 uses
  %i.el = zext i32 %i.dv to i64                   ; 2 uses
  %.idx.i.i.i.i57 = shl nuw nsw i64 %i.el, 5
  %i.em = getelementptr i8, ptr %i.ek, i64 %.idx.i.i.i.i57 ; 2 uses
  %.not9.i.i.i.i58 = icmp eq i32 %i.dv, 0
  br i1 %.not9.i.i.i.i58, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, label %.lr.ph.i.i.i.i59

.lr.ph.i.i.i.i59:                                 ; preds = %bb.m
  %i.en = lshr i64 %i.ee, 40
  %i.eo = trunc i64 %i.en to i8
  %i.ep = and i64 %i.ef, 1152921504606846976
  %.not.i.i.i.i.i.i.i60 = icmp eq i64 %i.ep, 0    ; 2 uses
  %i.eq = sext i8 %i.eo to i32
  %i.er = sub nsw i32 13, %i.eq
  %i.es = select i1 %.not.i.i.i.i.i.i.i60, i32 %i.dy, i32 %i.er ; 2 uses
  %i.et = and i64 %i.ee, 281474976710655
  %i.eu = inttoptr i64 %i.et to ptr
  %i.ev = select i1 %.not.i.i.i.i.i.i.i60, ptr %i.eu, ptr %4 ; 2 uses
  %i.ew = zext i32 %i.es to i64
  br label %bb.n

bb.n:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64, %.lr.ph.i.i.i.i59
  %.010.i.i.i.i61 = phi ptr [ %i.ek, %.lr.ph.i.i.i.i59 ], [ %i.fo, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64 ] ; 8 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i61, i64 14
  %i.ey = load i16, ptr %i.ex, align 2
  %i.ez = and i16 %i.ey, 4096
  %.not.i.i13.i.i.i.i.i62 = icmp eq i16 %i.ez, 0  ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i61, i64 13
  %i.fb = load i8, ptr %i.fa, align 1
  %i.fc = sext i8 %i.fb to i32
  %i.fd = sub nsw i32 13, %i.fc
  %i.fe = load i32, ptr %.010.i.i.i.i61, align 8
  %i.ff = select i1 %.not.i.i13.i.i.i.i.i62, i32 %i.fe, i32 %i.fd
  %.not.i.i.i.i.i63 = icmp eq i32 %i.es, %i.ff
  br i1 %.not.i.i.i.i.i63, label %bb.o, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64

bb.o:                                             ; preds = %bb.n
  %i.fg = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i61, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = and i64 %i.fi, 281474976710655
  %i.fk = inttoptr i64 %i.fj to ptr
  %i.fl = select i1 %.not.i.i13.i.i.i.i.i62, ptr %i.fk, ptr %.010.i.i.i.i61 ; 2 uses
  %i.fm = icmp eq ptr %i.ev, %i.fl
  br i1 %i.fm, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70: ; preds = %bb.o
  %bcmp.i.i.i.i.i71 = call i32 @bcmp(ptr %i.ev, ptr %i.fl, i64 %i.ew)
  %i.fn = icmp eq i32 %bcmp.i.i.i.i.i71, 0
  br i1 %i.fn, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70, %bb.n
  %i.fo = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i61, i64 32 ; 2 uses
  %.not.i.i.i.i65 = icmp eq ptr %i.fo, %i.em
  br i1 %.not.i.i.i.i65, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, label %bb.n, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70, %bb.o, %bb.m
  %.0.lcssa.i.i.i.i67 = phi ptr [ %i.ek, %bb.m ], [ %.010.i.i.i.i61, %bb.o ], [ %.010.i.i.i.i61, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70 ], [ %i.em, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.fp = getelementptr inbounds nuw [32 x i8], ptr %i.ek, i64 %i.el
  %.not.i68 = icmp ne ptr %.0.lcssa.i.i.i.i67, %i.fp
  call void @llvm.assume(i1 %.not.i68)
  %i.fq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i67, i64 16
  %i.fr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i67, i64 30
  %i.fs = load i16, ptr %i.fr, align 2
  %i.ft = icmp eq i16 %i.fs, 3
  %spec.select.i69 = select i1 %i.ft, ptr %i.fq, ptr null
  br label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit

_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, %bb.j, %bb.b
  %.138 = phi ptr [ %0, %bb.b ], [ %i.cs, %bb.j ], [ %spec.select.i69, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66 ] ; 8 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.fw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fv) #36, !noalias !878
  %i.fx = trunc i64 %i.fw to i32                  ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.fy = getelementptr inbounds nuw i8, ptr %3, i64 14
  store i16 1029, ptr %i.fy, align 2
  %i.fz = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ga = load ptr, ptr %i.fz, align 8
  %i.gb = ptrtoint ptr %i.ga to i64
  %i.gc = and i64 %i.gb, -281474976710656
  %i.gd = ptrtoint ptr %i.fv to i64               ; 4 uses
  %i.ge = or i64 %i.gc, %i.gd                     ; 2 uses
  %i.gf = inttoptr i64 %i.ge to ptr
  store ptr %i.gf, ptr %i.fz, align 8
  store i32 %i.fx, ptr %3, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %.138, i64 8 ; 6 uses
  %i.gh = load ptr, ptr %i.gg, align 8
  %i.gi = ptrtoint ptr %i.gh to i64
  %i.gj = and i64 %i.gi, 281474976710655
  %i.gk = inttoptr i64 %i.gj to ptr               ; 4 uses
  %i.gl = load i32, ptr %.138, align 8            ; 2 uses
  %i.gm = zext i32 %i.gl to i64                   ; 2 uses
  %.idx.i.i.i.i73 = shl nuw nsw i64 %i.gm, 5
  %i.gn = getelementptr i8, ptr %i.gk, i64 %.idx.i.i.i.i73 ; 2 uses
  %.not9.i.i.i.i74 = icmp eq i32 %i.gl, 0
  br i1 %.not9.i.i.i.i74, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, label %.lr.ph.i.i.i.i75

.lr.ph.i.i.i.i75:                                 ; preds = %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit
  %i.go = lshr i64 %i.gd, 40
  %i.gp = trunc i64 %i.go to i8
  %i.gq = and i64 %i.ge, 1152921504606846976
  %.not.i.i.i.i.i.i.i76 = icmp eq i64 %i.gq, 0    ; 2 uses
  %i.gr = sext i8 %i.gp to i32
  %i.gs = sub nsw i32 13, %i.gr
  %i.gt = select i1 %.not.i.i.i.i.i.i.i76, i32 %i.fx, i32 %i.gs ; 2 uses
  %i.gu = and i64 %i.gd, 281474976710655
  %i.gv = inttoptr i64 %i.gu to ptr
  %i.gw = select i1 %.not.i.i.i.i.i.i.i76, ptr %i.gv, ptr %3 ; 2 uses
  %i.gx = zext i32 %i.gt to i64
  br label %bb.p

bb.p:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80, %.lr.ph.i.i.i.i75
  %.010.i.i.i.i77 = phi ptr [ %i.gk, %.lr.ph.i.i.i.i75 ], [ %i.hp, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80 ] ; 8 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i77, i64 14
  %i.gz = load i16, ptr %i.gy, align 2
  %i.ha = and i16 %i.gz, 4096
  %.not.i.i13.i.i.i.i.i78 = icmp eq i16 %i.ha, 0  ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i77, i64 13
  %i.hc = load i8, ptr %i.hb, align 1
  %i.hd = sext i8 %i.hc to i32
  %i.he = sub nsw i32 13, %i.hd
  %i.hf = load i32, ptr %.010.i.i.i.i77, align 8
  %i.hg = select i1 %.not.i.i13.i.i.i.i.i78, i32 %i.hf, i32 %i.he
  %.not.i.i.i.i.i79 = icmp eq i32 %i.gt, %i.hg
  br i1 %.not.i.i.i.i.i79, label %bb.q, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80

bb.q:                                             ; preds = %bb.p
  %i.hh = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i77, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8
  %i.hj = ptrtoint ptr %i.hi to i64
  %i.hk = and i64 %i.hj, 281474976710655
  %i.hl = inttoptr i64 %i.hk to ptr
  %i.hm = select i1 %.not.i.i13.i.i.i.i.i78, ptr %i.hl, ptr %.010.i.i.i.i77 ; 2 uses
  %i.hn = icmp eq ptr %i.gw, %i.hm
  br i1 %i.hn, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86: ; preds = %bb.q
  %bcmp.i.i.i.i.i87 = call i32 @bcmp(ptr %i.gw, ptr %i.hm, i64 %i.gx)
  %i.ho = icmp eq i32 %bcmp.i.i.i.i.i87, 0
  br i1 %i.ho, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86, %bb.p
  %i.hp = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i77, i64 32 ; 2 uses
  %.not.i.i.i.i81 = icmp eq ptr %i.hp, %i.gn
  br i1 %.not.i.i.i.i81, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, label %bb.p, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86, %bb.q, %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit
  %.0.lcssa.i.i.i.i83 = phi ptr [ %i.gk, %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit ], [ %.010.i.i.i.i77, %bb.q ], [ %.010.i.i.i.i77, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86 ], [ %i.gn, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.hq = getelementptr inbounds nuw [32 x i8], ptr %i.gk, i64 %i.gm
  %.not.i84 = icmp eq ptr %.0.lcssa.i.i.i.i83, %i.hq
  br i1 %.not.i84, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82
  %i.hr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i83, i64 16
  %i.hs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i83, i64 30
  %i.ht = load i16, ptr %i.hs, align 2
  %i.hu = icmp eq i16 %i.ht, 3
  br i1 %i.hu, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88, label %bb.s

bb.s:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, %bb.r
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hw = load ptr, ptr %i.hv, align 8
  %i.hx = load i32, ptr %.138, align 8            ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.138, i64 4 ; 2 uses
  %i.hz = load i32, ptr %i.hy, align 4            ; 6 uses
  %.not.i.i.i89 = icmp ult i32 %i.hx, %i.hz
  br i1 %.not.i.i.i89, label %._crit_edge, label %bb.t

._crit_edge:                                      ; preds = %bb.s
  %.pre = load ptr, ptr %i.gg, align 8
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  %.not14.i.i.i90 = icmp eq i32 %i.hz, 0
  %i.ia = add i32 %i.hz, 1
  %i.ib = lshr i32 %i.ia, 1
  %i.ic = add i32 %i.ib, %i.hz
  %i.id = select i1 %.not14.i.i.i90, i32 16, i32 %i.ic ; 3 uses
  %i.ie = icmp ugt i32 %i.id, %i.hz
  %.pre144 = load ptr, ptr %i.gg, align 8         ; 2 uses
  br i1 %i.ie, label %.noexc.i93, label %bb.u

.noexc.i93:                                       ; preds = %bb.t
  %i.if = ptrtoint ptr %.pre144 to i64
  %i.ig = and i64 %i.if, 281474976710655
  %i.ih = inttoptr i64 %i.ig to ptr
  %i.ii = zext i32 %i.hz to i64
  %i.ij = zext i32 %i.id to i64
  %i.ik = shl nuw nsw i64 %i.ii, 5
  %i.il = shl nuw nsw i64 %i.ij, 5
  %i.im = call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.hw, ptr noundef %i.ih, i64 noundef %i.ik, i64 noundef %i.il)
  %i.in = load ptr, ptr %i.gg, align 8
  %i.io = ptrtoint ptr %i.in to i64
  %i.ip = and i64 %i.io, -281474976710656
  %i.iq = ptrtoint ptr %i.im to i64
  %i.ir = or i64 %i.ip, %i.iq
  %i.is = inttoptr i64 %i.ir to ptr               ; 2 uses
  store ptr %i.is, ptr %i.gg, align 8
  store i32 %i.id, ptr %i.hy, align 4
  %.pre.i.i.i94 = load i32, ptr %.138, align 8
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge, %.noexc.i93, %bb.t
  %i.it = phi ptr [ %i.is, %.noexc.i93 ], [ %.pre144, %bb.t ], [ %.pre, %._crit_edge ]
  %i.iu = phi i32 [ %.pre.i.i.i94, %.noexc.i93 ], [ %i.hx, %bb.t ], [ %i.hx, %._crit_edge ]
  %i.iv = or i64 %i.gd, 289637751035265024
  %i.iw = inttoptr i64 %i.iv to ptr
  %i.ix = ptrtoint ptr %i.it to i64
  %i.iy = and i64 %i.ix, 281474976710655
  %i.iz = inttoptr i64 %i.iy to ptr
  %i.ja = zext i32 %i.iu to i64
  %i.jb = getelementptr inbounds nuw [32 x i8], ptr %i.iz, i64 %i.ja ; 5 uses
  store i32 %i.fx, ptr %i.jb, align 8
  %.sroa.6.0..sroa_idx.i91 = getelementptr inbounds nuw i8, ptr %i.jb, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i91, align 4
  %.sroa.65.0..sroa_idx.i92 = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  store ptr %i.iw, ptr %.sroa.65.0..sroa_idx.i92, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  store <14 x i8> zeroinitializer, ptr %i.jc, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jb, i64 30
  store i16 3, ptr %.sroa.6.0..sroa_idx, align 2
  %i.jd = load i32, ptr %.138, align 8
  %i.je = add i32 %i.jd, 1
  store i32 %i.je, ptr %.138, align 8
  %i.jf = load ptr, ptr %i.fu, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.jg = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.jf) #36, !noalias !881
  %i.jh = trunc i64 %i.jg to i32                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.ji = getelementptr inbounds nuw i8, ptr %2, i64 14
  store i16 1029, ptr %i.ji, align 2
  %i.jj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.jk = load ptr, ptr %i.jj, align 8
  %i.jl = ptrtoint ptr %i.jk to i64
  %i.jm = and i64 %i.jl, -281474976710656
  %i.jn = ptrtoint ptr %i.jf to i64               ; 3 uses
  %i.jo = or i64 %i.jm, %i.jn                     ; 2 uses
  %i.jp = inttoptr i64 %i.jo to ptr
  store ptr %i.jp, ptr %i.jj, align 8
  store i32 %i.jh, ptr %2, align 8
  %i.jq = load ptr, ptr %i.gg, align 8
  %i.jr = ptrtoint ptr %i.jq to i64
  %i.js = and i64 %i.jr, 281474976710655
  %i.jt = inttoptr i64 %i.js to ptr               ; 4 uses
  %i.ju = load i32, ptr %.138, align 8            ; 2 uses
  %i.jv = zext i32 %i.ju to i64                   ; 2 uses
  %.idx.i.i.i.i97 = shl nuw nsw i64 %i.jv, 5
  %i.jw = getelementptr i8, ptr %i.jt, i64 %.idx.i.i.i.i97 ; 2 uses
  %.not9.i.i.i.i98 = icmp eq i32 %i.ju, 0
  br i1 %.not9.i.i.i.i98, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, label %.lr.ph.i.i.i.i99

.lr.ph.i.i.i.i99:                                 ; preds = %bb.u
  %i.jx = lshr i64 %i.jn, 40
  %i.jy = trunc i64 %i.jx to i8
  %i.jz = and i64 %i.jo, 1152921504606846976
  %.not.i.i.i.i.i.i.i100 = icmp eq i64 %i.jz, 0   ; 2 uses
  %i.ka = sext i8 %i.jy to i32
  %i.kb = sub nsw i32 13, %i.ka
  %i.kc = select i1 %.not.i.i.i.i.i.i.i100, i32 %i.jh, i32 %i.kb ; 2 uses
  %i.kd = and i64 %i.jn, 281474976710655
  %i.ke = inttoptr i64 %i.kd to ptr
  %i.kf = select i1 %.not.i.i.i.i.i.i.i100, ptr %i.ke, ptr %2 ; 2 uses
  %i.kg = zext i32 %i.kc to i64
  br label %bb.v

bb.v:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104, %.lr.ph.i.i.i.i99
  %.010.i.i.i.i101 = phi ptr [ %i.jt, %.lr.ph.i.i.i.i99 ], [ %i.ky, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104 ] ; 8 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i101, i64 14
  %i.ki = load i16, ptr %i.kh, align 2
  %i.kj = and i16 %i.ki, 4096
  %.not.i.i13.i.i.i.i.i102 = icmp eq i16 %i.kj, 0 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i101, i64 13
  %i.kl = load i8, ptr %i.kk, align 1
  %i.km = sext i8 %i.kl to i32
  %i.kn = sub nsw i32 13, %i.km
  %i.ko = load i32, ptr %.010.i.i.i.i101, align 8
  %i.kp = select i1 %.not.i.i13.i.i.i.i.i102, i32 %i.ko, i32 %i.kn
  %.not.i.i.i.i.i103 = icmp eq i32 %i.kc, %i.kp
  br i1 %.not.i.i.i.i.i103, label %bb.w, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104

bb.w:                                             ; preds = %bb.v
  %i.kq = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i101, i64 8
  %i.kr = load ptr, ptr %i.kq, align 8
  %i.ks = ptrtoint ptr %i.kr to i64
  %i.kt = and i64 %i.ks, 281474976710655
  %i.ku = inttoptr i64 %i.kt to ptr
  %i.kv = select i1 %.not.i.i13.i.i.i.i.i102, ptr %i.ku, ptr %.010.i.i.i.i101 ; 2 uses
  %i.kw = icmp eq ptr %i.kf, %i.kv
  br i1 %i.kw, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110: ; preds = %bb.w
  %bcmp.i.i.i.i.i111 = call i32 @bcmp(ptr %i.kf, ptr %i.kv, i64 %i.kg)
  %i.kx = icmp eq i32 %bcmp.i.i.i.i.i111, 0
  br i1 %i.kx, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110, %bb.v
  %i.ky = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i101, i64 32 ; 2 uses
  %.not.i.i.i.i105 = icmp eq ptr %i.ky, %i.jw
  br i1 %.not.i.i.i.i105, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, label %bb.v, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110, %bb.w, %bb.u
  %.0.lcssa.i.i.i.i107 = phi ptr [ %i.jt, %bb.u ], [ %.010.i.i.i.i101, %bb.w ], [ %.010.i.i.i.i101, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110 ], [ %i.jw, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.kz = getelementptr inbounds nuw [32 x i8], ptr %i.jt, i64 %i.jv
  %.not.i108 = icmp eq ptr %.0.lcssa.i.i.i.i107, %i.kz
  br i1 %.not.i108, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88, label %bb.x

bb.x:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106
  %i.la = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i107, i64 16
  %i.lb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i107, i64 30
  %i.lc = load i16, ptr %i.lb, align 2
  %i.ld = icmp eq i16 %i.lc, 3
  %spec.select.i109 = select i1 %i.ld, ptr %i.la, ptr null
  br label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88

_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88: ; preds = %bb.x, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, %bb.r
  %.031 = phi ptr [ %i.hr, %bb.r ], [ null, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106 ], [ %spec.select.i109, %bb.x ] ; 6 uses
  %i.le = load ptr, ptr %i.c, align 8
  %i.lf = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not143 = icmp eq ptr %i.le, %i.lf
  br i1 %.not143, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88
  %i.lg = getelementptr inbounds nuw i8, ptr %6, i64 14
  %i.lh = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.lk = or i64 ptrtoint (ptr @.str.88 to i64), 289637751035265024
  %i.ll = inttoptr i64 %i.lk to ptr
  %i.lm = getelementptr inbounds nuw i8, ptr %.031, i64 4 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.031, i64 8 ; 4 uses
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph, %bb.ad
  %i.lo = phi ptr [ %i.lf, %.lr.ph ], [ %i.ov, %bb.ad ]
  %.0142 = phi i64 [ 0, %.lr.ph ], [ %i.ot, %bb.ad ] ; 5 uses
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.lo, i64 %.0142
  %i.lq = load ptr, ptr %i.lp, align 8            ; 2 uses
  %i.lr = load ptr, ptr %i.lq, align 8
  %i.ls = load ptr, ptr %i.lr, align 8
  %i.lt = call noundef zeroext i1 %i.ls(ptr noundef nonnull align 8 dereferenceable(72) %i.lq)
  br i1 %i.lt, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  store i16 3, ptr %i.lg, align 2
  %i.lu = load ptr, ptr %i.a, align 8
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.lu, i64 %.0142
  %i.lw = load ptr, ptr %i.lv, align 8            ; 3 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 48
  %i.ly = load i64, ptr %i.lx, align 8
  %i.lz = icmp eq i64 %i.ly, 0
  br i1 %i.lz, label %bb.aa, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit: ; preds = %bb.z
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lw, i64 40
  %i.mb = load ptr, ptr %i.ma, align 8            ; 2 uses
  %i.mc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.mb) #36, !noalias !884
  %i.md = trunc i64 %i.mc to i32
  %i.me = load ptr, ptr %i.li, align 8, !nonnull !16, !align !112
  %i.mf = load ptr, ptr %i.lj, align 8
  %i.mg = ptrtoint ptr %i.mf to i64
  %i.mh = and i64 %i.mg, 281474976710655
  %i.mi = inttoptr i64 %i.mh to ptr
  %i.mj = call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.me, ptr noundef %i.mi, i64 noundef 0, i64 noundef 512)
  %i.mk = load ptr, ptr %i.lj, align 8
  %i.ml = ptrtoint ptr %i.mk to i64
  %i.mm = and i64 %i.ml, -281474976710656
  %i.mn = ptrtoint ptr %i.mj to i64               ; 2 uses
  %i.mo = or i64 %i.mm, %i.mn
  %i.mp = inttoptr i64 %i.mo to ptr
  store ptr %i.mp, ptr %i.lj, align 8
  store i32 16, ptr %i.lh, align 4
  %.pre.i.i.i.i = load i32, ptr %6, align 8
  %i.mq = zext i32 %.pre.i.i.i.i to i64
  %i.mr = ptrtoint ptr %i.mb to i64
  %i.ms = or i64 %i.mr, 289637751035265024
  %i.mt = inttoptr i64 %i.ms to ptr
  %i.mu = and i64 %i.mn, 281474976710655
  %i.mv = inttoptr i64 %i.mu to ptr
  %i.mw = getelementptr inbounds nuw [32 x i8], ptr %i.mv, i64 %i.mq ; 6 uses
  store i32 4, ptr %i.mw, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mw, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i.i, align 4
  %.sroa.65.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  store ptr %i.ll, ptr %.sroa.65.0..sroa_idx.i.i, align 8
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 16
  store i32 %i.md, ptr %i.mx, align 8
  %.sroa.6.0..sroa_idx.i114 = getelementptr inbounds nuw i8, ptr %i.mw, i64 20
  store i32 0, ptr %.sroa.6.0..sroa_idx.i114, align 4
  %.sroa.66.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mw, i64 24
  store ptr %i.mt, ptr %.sroa.66.0..sroa_idx.i, align 8
  %i.my = load i32, ptr %6, align 8
  %i.mz = add i32 %i.my, 1
  store i32 %i.mz, ptr %6, align 8
  %.pre146 = load ptr, ptr %i.a, align 8
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre146, i64 %.0142
  %.pre147 = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit, %bb.z
  %i.na = phi ptr [ %.pre147, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit ], [ %i.lw, %bb.z ]
  call void @_ZN4glTF5WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_7TextureERNS_11AssetWriterE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(104) %i.na, ptr noundef nonnull align 8 dereferenceable(112) %0)
  %i.nb = load ptr, ptr %i.a, align 8
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.nb, i64 %.0142
  %i.nd = load ptr, ptr %i.nc, align 8            ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  %i.nf = load ptr, ptr %i.ne, align 8, !noalias !887 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nd, i64 16
  %i.nh = load i64, ptr %i.ng, align 8, !noalias !887
  %i.ni = trunc i64 %i.nh to i32
  %.not.i.i = icmp eq ptr %i.nf, null
  %i.nj = select i1 %.not.i.i, ptr @_ZN9rapidjson16GenericStringRefIcE11emptyStringE, ptr %i.nf, !prof !6
  %i.nk = load ptr, ptr %i.li, align 8, !nonnull !16, !align !112
  %i.nl = load i32, ptr %.031, align 8            ; 3 uses
  %i.nm = load i32, ptr %i.lm, align 4            ; 6 uses
  %.not.i.i.i116 = icmp ult i32 %i.nl, %i.nm
  br i1 %.not.i.i.i116, label %._crit_edge148, label %bb.ab

._crit_edge148:                                   ; preds = %bb.aa
  %.pre149 = load ptr, ptr %i.ln, align 8
  br label %bb.ac

end_hunk_25
begin_hunk_26_@_ZN4glTF8LazyDictINS_5LightEE16AttachToDocumentERN9rapidjson15GenericDocumentINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEES8_EE:bb.a
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = and i64 %i.q, 281474976710655
  %i.s = inttoptr i64 %i.r to ptr                 ; 4 uses
  %i.t = load i32, ptr %i.c, align 8              ; 2 uses
  %i.u = zext i32 %i.t to i64                     ; 2 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.u, 5
  %i.v = getelementptr i8, ptr %i.s, i64 %.idx.i.i.i.i ; 2 uses
  %.not9.i.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not9.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c
  %i.w = lshr i64 %i.l, 40
  %i.x = trunc i64 %i.w to i8
  %i.y = and i64 %i.m, 1152921504606846976
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.y, 0       ; 2 uses
  %i.z = sext i8 %i.x to i32
  %i.aa = sub nsw i32 13, %i.z
  %i.ab = select i1 %.not.i.i.i.i.i.i.i, i32 %i.f, i32 %i.aa ; 2 uses
  %i.ac = and i64 %i.l, 281474976710655
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = select i1 %.not.i.i.i.i.i.i.i, ptr %i.ad, ptr %3 ; 2 uses
  %i.af = zext i32 %i.ab to i64
  br label %bb.d

bb.d:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %.lr.ph.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i ], [ %i.ax, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 14
  %i.ah = load i16, ptr %i.ag, align 2
  %i.ai = and i16 %i.ah, 4096
  %.not.i.i13.i.i.i.i.i = icmp eq i16 %i.ai, 0    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 13
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = sext i8 %i.ak to i32
  %i.am = sub nsw i32 13, %i.al
  %i.an = load i32, ptr %.010.i.i.i.i, align 8
  %i.ao = select i1 %.not.i.i13.i.i.i.i.i, i32 %i.an, i32 %i.am
  %.not.i.i.i.i.i = icmp eq i32 %i.ab, %i.ao
  br i1 %.not.i.i.i.i.i, label %bb.e, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = and i64 %i.ar, 281474976710655
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = select i1 %.not.i.i13.i.i.i.i.i, ptr %i.at, ptr %.010.i.i.i.i ; 2 uses
  %i.av = icmp eq ptr %i.ae, %i.au
  br i1 %i.av, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i: ; preds = %bb.e
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %i.ae, ptr %i.au, i64 %i.af)
  %i.aw = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.aw, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ax, %i.v
  br i1 %.not.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %bb.d, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.e, %bb.c
  %.0.lcssa.i.i.i.i = phi ptr [ %i.s, %bb.c ], [ %.010.i.i.i.i, %bb.e ], [ %.010.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i ], [ %i.v, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.ay = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %i.u
  %.not.i = icmp eq ptr %.0.lcssa.i.i.i.i, %i.ay
  br i1 %.not.i, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 30
  %i.bb = load i16, ptr %i.ba, align 2
  %i.bc = icmp eq i16 %i.bb, 3
  br i1 %i.bc, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread

_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit: ; preds = %bb.f, %bb.a
  %.1 = phi ptr [ %1, %bb.a ], [ %i.az, %bb.f ]   ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.bf = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.be) #36, !noalias !900
  %i.bg = trunc i64 %i.bf to i32                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 14
  store i16 1029, ptr %i.bh, align 2
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = and i64 %i.bk, -281474976710656
  %i.bm = ptrtoint ptr %i.be to i64               ; 3 uses
  %i.bn = or i64 %i.bl, %i.bm                     ; 2 uses
  %i.bo = inttoptr i64 %i.bn to ptr
  store ptr %i.bo, ptr %i.bi, align 8
  store i32 %i.bg, ptr %2, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = and i64 %i.br, 281474976710655
  %i.bt = inttoptr i64 %i.bs to ptr               ; 4 uses
  %i.bu = load i32, ptr %.1, align 8              ; 2 uses
  %i.bv = zext i32 %i.bu to i64                   ; 2 uses
  %.idx.i.i.i.i10 = shl nuw nsw i64 %i.bv, 5
  %i.bw = getelementptr i8, ptr %i.bt, i64 %.idx.i.i.i.i10 ; 2 uses
  %.not9.i.i.i.i11 = icmp eq i32 %i.bu, 0
  br i1 %.not9.i.i.i.i11, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19, label %.lr.ph.i.i.i.i12

.lr.ph.i.i.i.i12:                                 ; preds = %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit
  %i.bx = lshr i64 %i.bm, 40
  %i.by = trunc i64 %i.bx to i8
  %i.bz = and i64 %i.bn, 1152921504606846976
  %.not.i.i.i.i.i.i.i13 = icmp eq i64 %i.bz, 0    ; 2 uses
  %i.ca = sext i8 %i.by to i32
  %i.cb = sub nsw i32 13, %i.ca
  %i.cc = select i1 %.not.i.i.i.i.i.i.i13, i32 %i.bg, i32 %i.cb ; 2 uses
  %i.cd = and i64 %i.bm, 281474976710655
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = select i1 %.not.i.i.i.i.i.i.i13, ptr %i.ce, ptr %2 ; 2 uses
  %i.cg = zext i32 %i.cc to i64
  br label %bb.g

bb.g:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17, %.lr.ph.i.i.i.i12
  %.010.i.i.i.i14 = phi ptr [ %i.bt, %.lr.ph.i.i.i.i12 ], [ %i.cy, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17 ] ; 8 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i14, i64 14
  %i.ci = load i16, ptr %i.ch, align 2
  %i.cj = and i16 %i.ci, 4096
  %.not.i.i13.i.i.i.i.i15 = icmp eq i16 %i.cj, 0  ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i14, i64 13
  %i.cl = load i8, ptr %i.ck, align 1
  %i.cm = sext i8 %i.cl to i32
  %i.cn = sub nsw i32 13, %i.cm
  %i.co = load i32, ptr %.010.i.i.i.i14, align 8
  %i.cp = select i1 %.not.i.i13.i.i.i.i.i15, i32 %i.co, i32 %i.cn
  %.not.i.i.i.i.i16 = icmp eq i32 %i.cc, %i.cp
  br i1 %.not.i.i.i.i.i16, label %bb.h, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17

bb.h:                                             ; preds = %bb.g
  %i.cq = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i14, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = and i64 %i.cs, 281474976710655
  %i.cu = inttoptr i64 %i.ct to ptr
  %i.cv = select i1 %.not.i.i13.i.i.i.i.i15, ptr %i.cu, ptr %.010.i.i.i.i14 ; 2 uses
  %i.cw = icmp eq ptr %i.cf, %i.cv
  br i1 %i.cw, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i23

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i23: ; preds = %bb.h
  %bcmp.i.i.i.i.i24 = call i32 @bcmp(ptr %i.cf, ptr %i.cv, i64 %i.cg)
  %i.cx = icmp eq i32 %bcmp.i.i.i.i.i24, 0
  br i1 %i.cx, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i23, %bb.g
  %i.cy = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i14, i64 32 ; 2 uses
  %.not.i.i.i.i18 = icmp eq ptr %i.cy, %i.bw
  br i1 %.not.i.i.i.i18, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19, label %bb.g, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i23, %bb.h, %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit
  %.0.lcssa.i.i.i.i20 = phi ptr [ %i.bt, %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit ], [ %.010.i.i.i.i14, %bb.h ], [ %.010.i.i.i.i14, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i23 ], [ %i.bw, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i17 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.cz = getelementptr inbounds nuw [32 x i8], ptr %i.bt, i64 %i.bv
  %.not.i21 = icmp eq ptr %.0.lcssa.i.i.i.i20, %i.cz
  br i1 %.not.i21, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit25, label %bb.i

bb.i:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19
  %i.da = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i20, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i20, i64 30
  %i.dc = load i16, ptr %i.db, align 2
  %i.dd = icmp eq i16 %i.dc, 3
  %spec.select.i22 = select i1 %i.dd, ptr %i.da, ptr null
  br label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit25

_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit25: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19, %bb.i
  %i.de = phi ptr [ null, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i19 ], [ %spec.select.i22, %bb.i ]
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.de, ptr %i.df, align 8
  br label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread

_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread: ; preds = %bb.f, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, %bb.b, %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit25
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4glTF8LazyDictINS_5LightEE18DetachFromDocumentEv(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr null, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4glTF8LazyDictINS_5LightEE12WriteObjectsERNS_11AssetWriterE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN4glTF11AssetWriter12WriteObjectsINS_5LightEEEvRNS_8LazyDictIT_EE(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(120) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4glTF11AssetWriter12WriteObjectsINS_5LightEEEvRNS_8LazyDictIT_EE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(120) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %3 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %4 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %5 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef ptr @_ZN10glTFCommon19FindObjectInContextERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKcSA_SA_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.209, ptr noundef null) ; 2 uses
  %.not42 = icmp eq ptr %i.h, null
  br i1 %.not42, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load i32, ptr %0, align 8                ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4              ; 6 uses
  %.not.i.i.i = icmp ult i32 %i.k, %i.m
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not14.i.i.i = icmp eq i32 %i.m, 0
  %i.n = add i32 %i.m, 1
  %i.o = lshr i32 %i.n, 1
  %i.p = add i32 %i.o, %i.m
  %i.q = select i1 %.not14.i.i.i, i32 16, i32 %i.p ; 3 uses
  %i.r = icmp ugt i32 %i.q, %i.m
  br i1 %i.r, label %.noexc.i, label %bb.f

.noexc.i:                                         ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = and i64 %i.u, 281474976710655
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = zext i32 %i.m to i64
  %i.y = zext i32 %i.q to i64
  %i.z = shl nuw nsw i64 %i.x, 5
  %i.aa = shl nuw nsw i64 %i.y, 5
  %i.ab = tail call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef %i.w, i64 noundef %i.z, i64 noundef %i.aa)
  %i.ac = load ptr, ptr %i.s, align 8
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = and i64 %i.ad, -281474976710656
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = or i64 %i.ae, %i.af
  %i.ah = inttoptr i64 %i.ag to ptr
  store ptr %i.ah, ptr %i.s, align 8
  store i32 %i.q, ptr %i.l, align 4
  %.pre.i.i.i = load i32, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %.noexc.i, %bb.e, %bb.d
  %i.ai = phi i32 [ %.pre.i.i.i, %.noexc.i ], [ %i.k, %bb.e ], [ %i.k, %bb.d ]
  %i.aj = or i64 ptrtoint (ptr @.str.93 to i64), 289637751035265024
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = and i64 %i.an, 281474976710655
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = zext i32 %i.ai to i64
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %i.ap, i64 %i.aq ; 5 uses
  store i32 10, ptr %i.ar, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i, align 4
  %.sroa.65.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.ak, ptr %.sroa.65.0..sroa_idx.i, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.as, i8 0, i64 14, i1 false)
  %.sroa.6147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 30
  store i16 3, ptr %.sroa.6147.0..sroa_idx, align 2
  %i.at = load i32, ptr %0, align 8
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr %0, align 8
  %i.av = tail call noundef ptr @_ZN10glTFCommon19FindObjectInContextERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKcSA_SA_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.209, ptr noundef null)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.036 = phi ptr [ %i.h, %bb.c ], [ %i.av, %bb.f ] ; 6 uses
  %i.aw = load ptr, ptr %i.f, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.ax = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aw) #36, !noalias !903
  %i.ay = trunc i64 %i.ax to i32                  ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 14
  store i16 1029, ptr %i.az, align 2
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = and i64 %i.bc, -281474976710656
  %i.be = ptrtoint ptr %i.aw to i64               ; 4 uses
  %i.bf = or i64 %i.bd, %i.be                     ; 2 uses
  %i.bg = inttoptr i64 %i.bf to ptr
  store ptr %i.bg, ptr %i.ba, align 8
  store i32 %i.ay, ptr %5, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.036, i64 8 ; 4 uses
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = and i64 %i.bj, 281474976710655
  %i.bl = inttoptr i64 %i.bk to ptr               ; 7 uses
  %i.bm = load i32, ptr %.036, align 8            ; 3 uses
  %i.bn = zext i32 %i.bm to i64                   ; 4 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.bn, 5
  %i.bo = getelementptr i8, ptr %i.bl, i64 %.idx.i.i.i.i ; 2 uses
  %.not9.i.i.i.i = icmp eq i32 %i.bm, 0
  br i1 %.not9.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g
  %i.bp = lshr i64 %i.be, 40
  %i.bq = trunc i64 %i.bp to i8
  %i.br = and i64 %i.bf, 1152921504606846976
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.br, 0      ; 2 uses
  %i.bs = sext i8 %i.bq to i32
  %i.bt = sub nsw i32 13, %i.bs
  %i.bu = select i1 %.not.i.i.i.i.i.i.i, i32 %i.ay, i32 %i.bt ; 2 uses
  %i.bv = and i64 %i.be, 281474976710655
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = select i1 %.not.i.i.i.i.i.i.i, ptr %i.bw, ptr %5 ; 2 uses
  %i.by = zext i32 %i.bu to i64
  br label %bb.h

bb.h:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %.lr.ph.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i ], [ %i.cq, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 8 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 14
  %i.ca = load i16, ptr %i.bz, align 2
  %i.cb = and i16 %i.ca, 4096
  %.not.i.i13.i.i.i.i.i = icmp eq i16 %i.cb, 0    ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 13
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = sext i8 %i.cd to i32
  %i.cf = sub nsw i32 13, %i.ce
  %i.cg = load i32, ptr %.010.i.i.i.i, align 8
  %i.ch = select i1 %.not.i.i13.i.i.i.i.i, i32 %i.cg, i32 %i.cf
  %.not.i.i.i.i.i = icmp eq i32 %i.bu, %i.ch
  br i1 %.not.i.i.i.i.i, label %bb.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.ci = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = and i64 %i.ck, 281474976710655
  %i.cm = inttoptr i64 %i.cl to ptr
  %i.cn = select i1 %.not.i.i13.i.i.i.i.i, ptr %i.cm, ptr %.010.i.i.i.i ; 2 uses
  %i.co = icmp eq ptr %i.bx, %i.cn
  br i1 %i.co, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i: ; preds = %bb.i
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %i.bx, ptr %i.cn, i64 %i.by)
  %i.cp = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.cp, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.h
  %i.cq = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cq, %i.bo
  br i1 %.not.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %bb.h, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.i, %bb.g
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bl, %bb.g ], [ %.010.i.i.i.i, %bb.i ], [ %.010.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i ], [ %i.bo, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.cr = getelementptr inbounds nuw [32 x i8], ptr %i.bl, i64 %i.bn
  %.not.i = icmp eq ptr %.0.lcssa.i.i.i.i, %i.cr
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 30
  %i.cu = load i16, ptr %i.ct, align 2
  %i.cv = icmp eq i16 %i.cu, 3
  br i1 %i.cv, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit, label %bb.k

bb.k:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, %bb.j
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %.036, i64 4 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4            ; 6 uses
  %.not.i.i.i49 = icmp ult i32 %i.bm, %i.cz
  br i1 %.not.i.i.i49, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not14.i.i.i50 = icmp eq i32 %i.cz, 0
  %i.da = add i32 %i.cz, 1
  %i.db = lshr i32 %i.da, 1
  %i.dc = add i32 %i.db, %i.cz
  %i.dd = select i1 %.not14.i.i.i50, i32 16, i32 %i.dc ; 3 uses
  %i.de = icmp ugt i32 %i.dd, %i.cz
  br i1 %i.de, label %.noexc.i53, label %bb.m

.noexc.i53:                                       ; preds = %bb.l
  %i.df = zext i32 %i.cz to i64
  %i.dg = zext i32 %i.dd to i64
  %i.dh = shl nuw nsw i64 %i.df, 5
  %i.di = shl nuw nsw i64 %i.dg, 5
  %i.dj = call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.cx, ptr noundef %i.bl, i64 noundef %i.dh, i64 noundef %i.di)
end_hunk_26
begin_hunk_27_@_ZN4glTF11AssetWriter12WriteObjectsINS_5LightEEEvRNS_8LazyDictIT_EE:bb.a
  %.pre-phi167 = phi i64 [ %.pre166, %.noexc.i53 ], [ %i.bn, %bb.l ], [ %i.bn, %bb.k ]
  %.pre-phi165 = phi ptr [ %.pre164, %.noexc.i53 ], [ %i.bl, %bb.l ], [ %i.bl, %bb.k ]
  %i.dq = or i64 %i.be, 289637751035265024
  %i.dr = inttoptr i64 %i.dq to ptr
  %i.ds = getelementptr inbounds nuw [32 x i8], ptr %.pre-phi165, i64 %.pre-phi167 ; 5 uses
  store i32 %i.ay, ptr %i.ds, align 8
  %.sroa.6.0..sroa_idx.i51 = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i51, align 4
  %.sroa.65.0..sroa_idx.i52 = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store ptr %i.dr, ptr %.sroa.65.0..sroa_idx.i52, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.dt, i8 0, i64 14, i1 false)
  %.sroa.6143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 30
  store i16 3, ptr %.sroa.6143.0..sroa_idx, align 2
  %i.du = load i32, ptr %.036, align 8
  %i.dv = add i32 %i.du, 1                        ; 3 uses
  store i32 %i.dv, ptr %.036, align 8
  %i.dw = load ptr, ptr %i.f, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.dx = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dw) #36, !noalias !906
  %i.dy = trunc i64 %i.dx to i32                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 14
  store i16 1029, ptr %i.dz, align 2
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = and i64 %i.ec, -281474976710656
  %i.ee = ptrtoint ptr %i.dw to i64               ; 3 uses
  %i.ef = or i64 %i.ed, %i.ee                     ; 2 uses
  %i.eg = inttoptr i64 %i.ef to ptr
  store ptr %i.eg, ptr %i.ea, align 8
  store i32 %i.dy, ptr %4, align 8
  %i.eh = load ptr, ptr %i.bh, align 8
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = and i64 %i.ei, 281474976710655
  %i.ek = inttoptr i64 %i.ej to ptr               ; 4 uses
  %i.el = zext i32 %i.dv to i64                   ; 2 uses
  %.idx.i.i.i.i57 = shl nuw nsw i64 %i.el, 5
  %i.em = getelementptr i8, ptr %i.ek, i64 %.idx.i.i.i.i57 ; 2 uses
  %.not9.i.i.i.i58 = icmp eq i32 %i.dv, 0
  br i1 %.not9.i.i.i.i58, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, label %.lr.ph.i.i.i.i59

.lr.ph.i.i.i.i59:                                 ; preds = %bb.m
  %i.en = lshr i64 %i.ee, 40
  %i.eo = trunc i64 %i.en to i8
  %i.ep = and i64 %i.ef, 1152921504606846976
  %.not.i.i.i.i.i.i.i60 = icmp eq i64 %i.ep, 0    ; 2 uses
  %i.eq = sext i8 %i.eo to i32
  %i.er = sub nsw i32 13, %i.eq
  %i.es = select i1 %.not.i.i.i.i.i.i.i60, i32 %i.dy, i32 %i.er ; 2 uses
  %i.et = and i64 %i.ee, 281474976710655
  %i.eu = inttoptr i64 %i.et to ptr
  %i.ev = select i1 %.not.i.i.i.i.i.i.i60, ptr %i.eu, ptr %4 ; 2 uses
  %i.ew = zext i32 %i.es to i64
  br label %bb.n

bb.n:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64, %.lr.ph.i.i.i.i59
  %.010.i.i.i.i61 = phi ptr [ %i.ek, %.lr.ph.i.i.i.i59 ], [ %i.fo, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64 ] ; 8 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i61, i64 14
  %i.ey = load i16, ptr %i.ex, align 2
  %i.ez = and i16 %i.ey, 4096
  %.not.i.i13.i.i.i.i.i62 = icmp eq i16 %i.ez, 0  ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i61, i64 13
  %i.fb = load i8, ptr %i.fa, align 1
  %i.fc = sext i8 %i.fb to i32
  %i.fd = sub nsw i32 13, %i.fc
  %i.fe = load i32, ptr %.010.i.i.i.i61, align 8
  %i.ff = select i1 %.not.i.i13.i.i.i.i.i62, i32 %i.fe, i32 %i.fd
  %.not.i.i.i.i.i63 = icmp eq i32 %i.es, %i.ff
  br i1 %.not.i.i.i.i.i63, label %bb.o, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64

bb.o:                                             ; preds = %bb.n
  %i.fg = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i61, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = and i64 %i.fi, 281474976710655
  %i.fk = inttoptr i64 %i.fj to ptr
  %i.fl = select i1 %.not.i.i13.i.i.i.i.i62, ptr %i.fk, ptr %.010.i.i.i.i61 ; 2 uses
  %i.fm = icmp eq ptr %i.ev, %i.fl
  br i1 %i.fm, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70: ; preds = %bb.o
  %bcmp.i.i.i.i.i71 = call i32 @bcmp(ptr %i.ev, ptr %i.fl, i64 %i.ew)
  %i.fn = icmp eq i32 %bcmp.i.i.i.i.i71, 0
  br i1 %i.fn, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70, %bb.n
  %i.fo = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i61, i64 32 ; 2 uses
  %.not.i.i.i.i65 = icmp eq ptr %i.fo, %i.em
  br i1 %.not.i.i.i.i65, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, label %bb.n, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70, %bb.o, %bb.m
  %.0.lcssa.i.i.i.i67 = phi ptr [ %i.ek, %bb.m ], [ %.010.i.i.i.i61, %bb.o ], [ %.010.i.i.i.i61, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i70 ], [ %i.em, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i64 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.fp = getelementptr inbounds nuw [32 x i8], ptr %i.ek, i64 %i.el
  %.not.i68 = icmp ne ptr %.0.lcssa.i.i.i.i67, %i.fp
  call void @llvm.assume(i1 %.not.i68)
  %i.fq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i67, i64 16
  %i.fr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i67, i64 30
  %i.fs = load i16, ptr %i.fr, align 2
  %i.ft = icmp eq i16 %i.fs, 3
  %spec.select.i69 = select i1 %i.ft, ptr %i.fq, ptr null
  br label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit

_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66, %bb.j, %bb.b
  %.138 = phi ptr [ %0, %bb.b ], [ %i.cs, %bb.j ], [ %spec.select.i69, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i66 ] ; 8 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.fw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fv) #36, !noalias !909
  %i.fx = trunc i64 %i.fw to i32                  ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.fy = getelementptr inbounds nuw i8, ptr %3, i64 14
  store i16 1029, ptr %i.fy, align 2
  %i.fz = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ga = load ptr, ptr %i.fz, align 8
  %i.gb = ptrtoint ptr %i.ga to i64
  %i.gc = and i64 %i.gb, -281474976710656
  %i.gd = ptrtoint ptr %i.fv to i64               ; 4 uses
  %i.ge = or i64 %i.gc, %i.gd                     ; 2 uses
  %i.gf = inttoptr i64 %i.ge to ptr
  store ptr %i.gf, ptr %i.fz, align 8
  store i32 %i.fx, ptr %3, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %.138, i64 8 ; 6 uses
  %i.gh = load ptr, ptr %i.gg, align 8
  %i.gi = ptrtoint ptr %i.gh to i64
  %i.gj = and i64 %i.gi, 281474976710655
  %i.gk = inttoptr i64 %i.gj to ptr               ; 4 uses
  %i.gl = load i32, ptr %.138, align 8            ; 2 uses
  %i.gm = zext i32 %i.gl to i64                   ; 2 uses
  %.idx.i.i.i.i73 = shl nuw nsw i64 %i.gm, 5
  %i.gn = getelementptr i8, ptr %i.gk, i64 %.idx.i.i.i.i73 ; 2 uses
  %.not9.i.i.i.i74 = icmp eq i32 %i.gl, 0
  br i1 %.not9.i.i.i.i74, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, label %.lr.ph.i.i.i.i75

.lr.ph.i.i.i.i75:                                 ; preds = %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit
  %i.go = lshr i64 %i.gd, 40
  %i.gp = trunc i64 %i.go to i8
  %i.gq = and i64 %i.ge, 1152921504606846976
  %.not.i.i.i.i.i.i.i76 = icmp eq i64 %i.gq, 0    ; 2 uses
  %i.gr = sext i8 %i.gp to i32
  %i.gs = sub nsw i32 13, %i.gr
  %i.gt = select i1 %.not.i.i.i.i.i.i.i76, i32 %i.fx, i32 %i.gs ; 2 uses
  %i.gu = and i64 %i.gd, 281474976710655
  %i.gv = inttoptr i64 %i.gu to ptr
  %i.gw = select i1 %.not.i.i.i.i.i.i.i76, ptr %i.gv, ptr %3 ; 2 uses
  %i.gx = zext i32 %i.gt to i64
  br label %bb.p

bb.p:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80, %.lr.ph.i.i.i.i75
  %.010.i.i.i.i77 = phi ptr [ %i.gk, %.lr.ph.i.i.i.i75 ], [ %i.hp, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80 ] ; 8 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i77, i64 14
  %i.gz = load i16, ptr %i.gy, align 2
  %i.ha = and i16 %i.gz, 4096
  %.not.i.i13.i.i.i.i.i78 = icmp eq i16 %i.ha, 0  ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i77, i64 13
  %i.hc = load i8, ptr %i.hb, align 1
  %i.hd = sext i8 %i.hc to i32
  %i.he = sub nsw i32 13, %i.hd
  %i.hf = load i32, ptr %.010.i.i.i.i77, align 8
  %i.hg = select i1 %.not.i.i13.i.i.i.i.i78, i32 %i.hf, i32 %i.he
  %.not.i.i.i.i.i79 = icmp eq i32 %i.gt, %i.hg
  br i1 %.not.i.i.i.i.i79, label %bb.q, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80

bb.q:                                             ; preds = %bb.p
  %i.hh = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i77, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8
  %i.hj = ptrtoint ptr %i.hi to i64
  %i.hk = and i64 %i.hj, 281474976710655
  %i.hl = inttoptr i64 %i.hk to ptr
  %i.hm = select i1 %.not.i.i13.i.i.i.i.i78, ptr %i.hl, ptr %.010.i.i.i.i77 ; 2 uses
  %i.hn = icmp eq ptr %i.gw, %i.hm
  br i1 %i.hn, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86: ; preds = %bb.q
  %bcmp.i.i.i.i.i87 = call i32 @bcmp(ptr %i.gw, ptr %i.hm, i64 %i.gx)
  %i.ho = icmp eq i32 %bcmp.i.i.i.i.i87, 0
  br i1 %i.ho, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86, %bb.p
  %i.hp = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i77, i64 32 ; 2 uses
  %.not.i.i.i.i81 = icmp eq ptr %i.hp, %i.gn
  br i1 %.not.i.i.i.i81, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, label %bb.p, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86, %bb.q, %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit
  %.0.lcssa.i.i.i.i83 = phi ptr [ %i.gk, %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit ], [ %.010.i.i.i.i77, %bb.q ], [ %.010.i.i.i.i77, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i86 ], [ %i.gn, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i80 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.hq = getelementptr inbounds nuw [32 x i8], ptr %i.gk, i64 %i.gm
  %.not.i84 = icmp eq ptr %.0.lcssa.i.i.i.i83, %i.hq
  br i1 %.not.i84, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82
  %i.hr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i83, i64 16
  %i.hs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i83, i64 30
  %i.ht = load i16, ptr %i.hs, align 2
  %i.hu = icmp eq i16 %i.ht, 3
  br i1 %i.hu, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88, label %bb.s

bb.s:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i82, %bb.r
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hw = load ptr, ptr %i.hv, align 8
  %i.hx = load i32, ptr %.138, align 8            ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.138, i64 4 ; 2 uses
  %i.hz = load i32, ptr %i.hy, align 4            ; 6 uses
  %.not.i.i.i89 = icmp ult i32 %i.hx, %i.hz
  br i1 %.not.i.i.i89, label %._crit_edge, label %bb.t

._crit_edge:                                      ; preds = %bb.s
  %.pre = load ptr, ptr %i.gg, align 8
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  %.not14.i.i.i90 = icmp eq i32 %i.hz, 0
  %i.ia = add i32 %i.hz, 1
  %i.ib = lshr i32 %i.ia, 1
  %i.ic = add i32 %i.ib, %i.hz
  %i.id = select i1 %.not14.i.i.i90, i32 16, i32 %i.ic ; 3 uses
  %i.ie = icmp ugt i32 %i.id, %i.hz
  %.pre155 = load ptr, ptr %i.gg, align 8         ; 2 uses
  br i1 %i.ie, label %.noexc.i93, label %bb.u

.noexc.i93:                                       ; preds = %bb.t
  %i.if = ptrtoint ptr %.pre155 to i64
  %i.ig = and i64 %i.if, 281474976710655
  %i.ih = inttoptr i64 %i.ig to ptr
  %i.ii = zext i32 %i.hz to i64
  %i.ij = zext i32 %i.id to i64
  %i.ik = shl nuw nsw i64 %i.ii, 5
  %i.il = shl nuw nsw i64 %i.ij, 5
  %i.im = call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.hw, ptr noundef %i.ih, i64 noundef %i.ik, i64 noundef %i.il)
  %i.in = load ptr, ptr %i.gg, align 8
  %i.io = ptrtoint ptr %i.in to i64
  %i.ip = and i64 %i.io, -281474976710656
  %i.iq = ptrtoint ptr %i.im to i64
  %i.ir = or i64 %i.ip, %i.iq
  %i.is = inttoptr i64 %i.ir to ptr               ; 2 uses
  store ptr %i.is, ptr %i.gg, align 8
  store i32 %i.id, ptr %i.hy, align 4
  %.pre.i.i.i94 = load i32, ptr %.138, align 8
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge, %.noexc.i93, %bb.t
  %i.it = phi ptr [ %i.is, %.noexc.i93 ], [ %.pre155, %bb.t ], [ %.pre, %._crit_edge ]
  %i.iu = phi i32 [ %.pre.i.i.i94, %.noexc.i93 ], [ %i.hx, %bb.t ], [ %i.hx, %._crit_edge ]
  %i.iv = or i64 %i.gd, 289637751035265024
  %i.iw = inttoptr i64 %i.iv to ptr
  %i.ix = ptrtoint ptr %i.it to i64
  %i.iy = and i64 %i.ix, 281474976710655
  %i.iz = inttoptr i64 %i.iy to ptr
  %i.ja = zext i32 %i.iu to i64
  %i.jb = getelementptr inbounds nuw [32 x i8], ptr %i.iz, i64 %i.ja ; 5 uses
  store i32 %i.fx, ptr %i.jb, align 8
  %.sroa.6.0..sroa_idx.i91 = getelementptr inbounds nuw i8, ptr %i.jb, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i91, align 4
  %.sroa.65.0..sroa_idx.i92 = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  store ptr %i.iw, ptr %.sroa.65.0..sroa_idx.i92, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  store <14 x i8> zeroinitializer, ptr %i.jc, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jb, i64 30
  store i16 3, ptr %.sroa.6.0..sroa_idx, align 2
  %i.jd = load i32, ptr %.138, align 8
  %i.je = add i32 %i.jd, 1
  store i32 %i.je, ptr %.138, align 8
  %i.jf = load ptr, ptr %i.fu, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.jg = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.jf) #36, !noalias !912
  %i.jh = trunc i64 %i.jg to i32                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.ji = getelementptr inbounds nuw i8, ptr %2, i64 14
  store i16 1029, ptr %i.ji, align 2
  %i.jj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.jk = load ptr, ptr %i.jj, align 8
  %i.jl = ptrtoint ptr %i.jk to i64
  %i.jm = and i64 %i.jl, -281474976710656
  %i.jn = ptrtoint ptr %i.jf to i64               ; 3 uses
  %i.jo = or i64 %i.jm, %i.jn                     ; 2 uses
  %i.jp = inttoptr i64 %i.jo to ptr
  store ptr %i.jp, ptr %i.jj, align 8
  store i32 %i.jh, ptr %2, align 8
  %i.jq = load ptr, ptr %i.gg, align 8
  %i.jr = ptrtoint ptr %i.jq to i64
  %i.js = and i64 %i.jr, 281474976710655
  %i.jt = inttoptr i64 %i.js to ptr               ; 4 uses
  %i.ju = load i32, ptr %.138, align 8            ; 2 uses
  %i.jv = zext i32 %i.ju to i64                   ; 2 uses
  %.idx.i.i.i.i97 = shl nuw nsw i64 %i.jv, 5
  %i.jw = getelementptr i8, ptr %i.jt, i64 %.idx.i.i.i.i97 ; 2 uses
  %.not9.i.i.i.i98 = icmp eq i32 %i.ju, 0
  br i1 %.not9.i.i.i.i98, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, label %.lr.ph.i.i.i.i99

.lr.ph.i.i.i.i99:                                 ; preds = %bb.u
  %i.jx = lshr i64 %i.jn, 40
  %i.jy = trunc i64 %i.jx to i8
  %i.jz = and i64 %i.jo, 1152921504606846976
  %.not.i.i.i.i.i.i.i100 = icmp eq i64 %i.jz, 0   ; 2 uses
  %i.ka = sext i8 %i.jy to i32
  %i.kb = sub nsw i32 13, %i.ka
  %i.kc = select i1 %.not.i.i.i.i.i.i.i100, i32 %i.jh, i32 %i.kb ; 2 uses
  %i.kd = and i64 %i.jn, 281474976710655
  %i.ke = inttoptr i64 %i.kd to ptr
  %i.kf = select i1 %.not.i.i.i.i.i.i.i100, ptr %i.ke, ptr %2 ; 2 uses
  %i.kg = zext i32 %i.kc to i64
  br label %bb.v

bb.v:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104, %.lr.ph.i.i.i.i99
  %.010.i.i.i.i101 = phi ptr [ %i.jt, %.lr.ph.i.i.i.i99 ], [ %i.ky, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104 ] ; 8 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i101, i64 14
  %i.ki = load i16, ptr %i.kh, align 2
  %i.kj = and i16 %i.ki, 4096
  %.not.i.i13.i.i.i.i.i102 = icmp eq i16 %i.kj, 0 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i101, i64 13
  %i.kl = load i8, ptr %i.kk, align 1
  %i.km = sext i8 %i.kl to i32
  %i.kn = sub nsw i32 13, %i.km
  %i.ko = load i32, ptr %.010.i.i.i.i101, align 8
  %i.kp = select i1 %.not.i.i13.i.i.i.i.i102, i32 %i.ko, i32 %i.kn
  %.not.i.i.i.i.i103 = icmp eq i32 %i.kc, %i.kp
  br i1 %.not.i.i.i.i.i103, label %bb.w, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104

bb.w:                                             ; preds = %bb.v
  %i.kq = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i101, i64 8
  %i.kr = load ptr, ptr %i.kq, align 8
  %i.ks = ptrtoint ptr %i.kr to i64
  %i.kt = and i64 %i.ks, 281474976710655
  %i.ku = inttoptr i64 %i.kt to ptr
  %i.kv = select i1 %.not.i.i13.i.i.i.i.i102, ptr %i.ku, ptr %.010.i.i.i.i101 ; 2 uses
  %i.kw = icmp eq ptr %i.kf, %i.kv
  br i1 %i.kw, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110: ; preds = %bb.w
  %bcmp.i.i.i.i.i111 = call i32 @bcmp(ptr %i.kf, ptr %i.kv, i64 %i.kg)
  %i.kx = icmp eq i32 %bcmp.i.i.i.i.i111, 0
  br i1 %i.kx, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110, %bb.v
  %i.ky = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i101, i64 32 ; 2 uses
  %.not.i.i.i.i105 = icmp eq ptr %i.ky, %i.jw
  br i1 %.not.i.i.i.i105, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, label %bb.v, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110, %bb.w, %bb.u
  %.0.lcssa.i.i.i.i107 = phi ptr [ %i.jt, %bb.u ], [ %.010.i.i.i.i101, %bb.w ], [ %.010.i.i.i.i101, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110 ], [ %i.jw, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.kz = getelementptr inbounds nuw [32 x i8], ptr %i.jt, i64 %i.jv
  %.not.i108 = icmp eq ptr %.0.lcssa.i.i.i.i107, %i.kz
  br i1 %.not.i108, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88, label %bb.x

bb.x:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106
  %i.la = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i107, i64 16
  %i.lb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i107, i64 30
  %i.lc = load i16, ptr %i.lb, align 2
  %i.ld = icmp eq i16 %i.lc, 3
  %spec.select.i109 = select i1 %i.ld, ptr %i.la, ptr null
  br label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88

_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88: ; preds = %bb.x, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, %bb.r
  %.031 = phi ptr [ %i.hr, %bb.r ], [ null, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106 ], [ %spec.select.i109, %bb.x ] ; 6 uses
  %i.le = load ptr, ptr %i.c, align 8
  %i.lf = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not154 = icmp eq ptr %i.le, %i.lf
  br i1 %.not154, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.lh = or i64 ptrtoint (ptr @.str.88 to i64), 289637751035265024
  %i.li = inttoptr i64 %i.lh to ptr
  %i.lj = getelementptr inbounds nuw i8, ptr %.031, i64 4 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %.031, i64 8 ; 4 uses
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph, %bb.ad
  %i.ll = phi ptr [ %i.lf, %.lr.ph ], [ %i.of, %bb.ad ]
  %.0153 = phi i64 [ 0, %.lr.ph ], [ %i.od, %bb.ad ] ; 4 uses
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.ll, i64 %.0153
  %i.ln = load ptr, ptr %i.lm, align 8            ; 2 uses
  %i.lo = load ptr, ptr %i.ln, align 8
  %i.lp = load ptr, ptr %i.lo, align 8
  %i.lq = call noundef zeroext i1 %i.lp(ptr noundef nonnull align 8 dereferenceable(72) %i.ln)
  br i1 %i.lq, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.lr = load ptr, ptr %i.a, align 8
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.lr, i64 %.0153
  %i.lt = load ptr, ptr %i.ls, align 8            ; 3 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 48
  %i.lv = load i64, ptr %i.lu, align 8
  %i.lw = icmp eq i64 %i.lv, 0
  br i1 %i.lw, label %bb.aa, label %.noexc.i.i

.noexc.i.i:                                       ; preds = %bb.z
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lt, i64 40
  %i.ly = load ptr, ptr %i.lx, align 8            ; 2 uses
  %i.lz = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ly) #36, !noalias !915
  %i.ma = trunc i64 %i.lz to i32
  %i.mb = load ptr, ptr %i.lg, align 8, !nonnull !16, !align !112
  %i.mc = call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.mb, ptr noundef null, i64 noundef 0, i64 noundef 512)
  %i.md = ptrtoint ptr %i.mc to i64               ; 2 uses
  %i.me = or i64 %i.md, 844424930131968
  %i.mf = inttoptr i64 %i.me to ptr
  %i.mg = ptrtoint ptr %i.ly to i64
  %i.mh = or i64 %i.mg, 289637751035265024
  %i.mi = inttoptr i64 %i.mh to ptr
  %i.mj = and i64 %i.md, 281474976710655
  %i.mk = inttoptr i64 %i.mj to ptr               ; 6 uses
  store i32 4, ptr %i.mk, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mk, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i.i, align 4
  %.sroa.65.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  store ptr %i.li, ptr %.sroa.65.0..sroa_idx.i.i, align 8
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 16
  store i32 %i.ma, ptr %i.ml, align 8
  %.sroa.6.0..sroa_idx.i114 = getelementptr inbounds nuw i8, ptr %i.mk, i64 20
  store i32 0, ptr %.sroa.6.0..sroa_idx.i114, align 4
  %.sroa.66.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mk, i64 24
  store ptr %i.mi, ptr %.sroa.66.0..sroa_idx.i, align 8
  %.pre156 = load ptr, ptr %i.a, align 8
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre156, i64 %.0153
  %.pre157 = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.noexc.i.i
  %i.mm = phi ptr [ %i.lt, %bb.z ], [ %.pre157, %.noexc.i.i ] ; 2 uses
  %.sroa.12.0 = phi ptr [ inttoptr (i64 844424930131968 to ptr), %bb.z ], [ %i.mf, %.noexc.i.i ]
  %i.mn = phi <2 x i32> [ zeroinitializer, %bb.z ], [ <i32 1, i32 16>, %.noexc.i.i ]
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  %i.mp = load ptr, ptr %i.mo, align 8, !noalias !918 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mm, i64 16
  %i.mr = load i64, ptr %i.mq, align 8, !noalias !918
  %i.ms = trunc i64 %i.mr to i32
  %.not.i.i = icmp eq ptr %i.mp, null
  %i.mt = select i1 %.not.i.i, ptr @_ZN9rapidjson16GenericStringRefIcE11emptyStringE, ptr %i.mp, !prof !6
  %i.mu = load ptr, ptr %i.lg, align 8, !nonnull !16, !align !112
  %i.mv = load i32, ptr %.031, align 8            ; 3 uses
  %i.mw = load i32, ptr %i.lj, align 4            ; 6 uses
  %.not.i.i.i116 = icmp ult i32 %i.mv, %i.mw
  br i1 %.not.i.i.i116, label %._crit_edge158, label %bb.ab

._crit_edge158:                                   ; preds = %bb.aa
  %.pre159 = load ptr, ptr %i.lk, align 8
  br label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %.not14.i.i.i117 = icmp eq i32 %i.mw, 0
  %i.mx = add i32 %i.mw, 1
  %i.my = lshr i32 %i.mx, 1
  %i.mz = add i32 %i.my, %i.mw
  %i.na = select i1 %.not14.i.i.i117, i32 16, i32 %i.mz ; 3 uses
  %i.nb = icmp ugt i32 %i.na, %i.mw
  %.pre160 = load ptr, ptr %i.lk, align 8         ; 2 uses
  br i1 %i.nb, label %.noexc.i120, label %bb.ac

.noexc.i120:                                      ; preds = %bb.ab
  %i.nc = ptrtoint ptr %.pre160 to i64
  %i.nd = and i64 %i.nc, 281474976710655
  %i.ne = inttoptr i64 %i.nd to ptr
  %i.nf = zext i32 %i.mw to i64
  %i.ng = zext i32 %i.na to i64
  %i.nh = shl nuw nsw i64 %i.nf, 5
  %i.ni = shl nuw nsw i64 %i.ng, 5
  %i.nj = call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.mu, ptr noundef %i.ne, i64 noundef %i.nh, i64 noundef %i.ni)
  %i.nk = load ptr, ptr %i.lk, align 8
  %i.nl = ptrtoint ptr %i.nk to i64
  %i.nm = and i64 %i.nl, -281474976710656
  %i.nn = ptrtoint ptr %i.nj to i64
end_hunk_27
