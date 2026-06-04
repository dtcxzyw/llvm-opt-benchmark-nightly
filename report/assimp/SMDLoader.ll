inline.NumInlined: 1538
inline.NumDeleted: 693
begin_hunk_0_@_ZN15DeadlyErrorBaseC2IJERA36_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_:bb.a
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %3, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #30
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #27
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #27
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #27
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJRA37_KcERPS2_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcSA_SB_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(37) %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
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
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #27
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef nonnull %i.a, i64 noundef %i.i) ; 0 uses
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit: ; preds = %bb.b, %bb.c
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %5, ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN6Assimp6Logger13formatMessageIJERA37_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull %5, ptr noundef nonnull align 1 dereferenceable(37) %4)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.k = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.k, ptr %5, align 8
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.m = getelementptr i8, ptr %i.k, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %5, i64 %i.n
  store ptr %i.l, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.u = load i64, ptr %i.s, align 8
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #30
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.p, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.w) #27
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.x) #27
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %5) #27
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJERA37_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(37) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 13 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(37) %3) #27
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef nonnull align 1 dereferenceable(37) %3, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !229)
  call void @llvm.experimental.noalias.scope.decl(metadata !232)
  call void @llvm.experimental.noalias.scope.decl(metadata !235)
  call void @llvm.experimental.noalias.scope.decl(metadata !238)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !alias.scope !241
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !alias.scope !241
  store i8 0, ptr %i.c, align 8, !alias.scope !241
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !noalias !241 ; 3 uses
  %.not.i.not.i.i.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !241 ; 2 uses
  %i.i = icmp ugt ptr %i.f, %i.h
  %.08.i.i.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.h ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i, null
  %.not.i.i.i.i = select i1 %.not.i.not.i.i.i.i, i1 true, i1 %.not5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !noalias !241 ; 2 uses
  %i.l = ptrtoint ptr %.08.i.i.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.k, i64 noundef %i.n)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !alias.scope !241 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.c, align 8, !alias.scope !241
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #30
  br label %.body

bb.d:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c

_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.d, %bb.b
  %i.v = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.v, ptr %4, align 8
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.x = getelementptr i8, ptr %i.v, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %4, i64 %i.y
  store ptr %i.w, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit
  %i.af = load i64, ptr %i.ad, align 8
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #30
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aa, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ah) #27
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ai) #27
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #27
  resume { ptr, i32 } %i.p
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #24

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairIjfESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(8) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPSt4pairIjfES1_EvT_S3_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 19 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 6 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %3, align 4                ; 6 uses
  %.sroa_idx105 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.j = load i32, ptr %.sroa_idx105, align 4     ; 6 uses
  %i.k = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.l = sub i64 %i.f, %i.k                       ; 3 uses
  %i.m = ashr exact i64 %i.l, 3                   ; 2 uses
  %i.n = icmp ugt i64 %i.m, %2
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.neg = mul i64 %2, -8                          ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %i.d, i64 %.neg ; 6 uses
  %.not11.i.i.i.i.i = icmp eq i64 %.neg, 0
  br i1 %.not11.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPSt4pairIjfES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d
  %i.p = add i64 %2, 2305843009213693951
  %i.q = and i64 %i.p, 2305843009213693951        ; 2 uses
  %i.r = add nuw nsw i64 %i.q, 1                  ; 2 uses
  %min.iters.check179 = icmp samesign ult i64 %i.q, 3
  br i1 %min.iters.check179, label %.lr.ph.i.i.i.i.i.preheader318, label %vector.ph180

vector.ph180:                                     ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec182 = and i64 %i.r, 4611686018427387900   ; 3 uses
  %i.s = shl i64 %n.vec182, 3                     ; 2 uses
  %i.t = getelementptr i8, ptr %i.d, i64 %i.s
  %i.u = getelementptr i8, ptr %i.o, i64 %i.s
  br label %vector.body183

vector.body183:                                   ; preds = %vector.body183, %vector.ph180
  %index184 = phi i64 [ 0, %vector.ph180 ], [ %index.next189, %vector.body183 ] ; 2 uses
  %i.v = shl i64 %index184, 3                     ; 2 uses
  %next.gep185 = getelementptr i8, ptr %i.d, i64 %i.v ; 2 uses
  %next.gep186 = getelementptr i8, ptr %i.o, i64 %i.v ; 2 uses
  %i.w = getelementptr i8, ptr %next.gep186, i64 16
  %wide.load187 = load <2 x i64>, ptr %next.gep186, align 4
  %wide.load188 = load <2 x i64>, ptr %i.w, align 4
  %i.x = getelementptr i8, ptr %next.gep185, i64 16
  store <2 x i64> %wide.load187, ptr %next.gep185, align 4
  store <2 x i64> %wide.load188, ptr %i.x, align 4
  %index.next189 = add nuw i64 %index184, 4       ; 2 uses
  %i.y = icmp eq i64 %index.next189, %n.vec182
  br i1 %i.y, label %middle.block190, label %vector.body183, !llvm.loop !242

middle.block190:                                  ; preds = %vector.body183
  %cmp.n191 = icmp eq i64 %i.r, %n.vec182
  br i1 %cmp.n191, label %_ZSt22__uninitialized_move_aIPSt4pairIjfES2_SaIS1_EET0_T_S5_S4_RT1_.exit.loopexit, label %.lr.ph.i.i.i.i.i.preheader318

.lr.ph.i.i.i.i.i.preheader318:                    ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block190
  %.013.i.i.i.i.i.ph = phi ptr [ %i.d, %.lr.ph.i.i.i.i.i.preheader ], [ %i.t, %middle.block190 ]
  %.sroa.08.012.i.i.i.i.i.ph = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.preheader ], [ %i.u, %middle.block190 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader318, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader318 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader318 ] ; 2 uses
  %i.z = load i64, ptr %.sroa.08.012.i.i.i.i.i, align 4
  store i64 %i.z, ptr %.013.i.i.i.i.i, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.aa, %i.d
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPSt4pairIjfES2_SaIS1_EET0_T_S5_S4_RT1_.exit.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !243

_ZSt22__uninitialized_move_aIPSt4pairIjfES2_SaIS1_EET0_T_S5_S4_RT1_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block190
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZSt22__uninitialized_move_aIPSt4pairIjfES2_SaIS1_EET0_T_S5_S4_RT1_.exit

_ZSt22__uninitialized_move_aIPSt4pairIjfES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %_ZSt22__uninitialized_move_aIPSt4pairIjfES2_SaIS1_EET0_T_S5_S4_RT1_.exit.loopexit, %bb.d
  %i.ac = phi ptr [ %.pre, %_ZSt22__uninitialized_move_aIPSt4pairIjfES2_SaIS1_EET0_T_S5_S4_RT1_.exit.loopexit ], [ %i.d, %bb.d ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %2
  store ptr %i.ad, ptr %i.c, align 8
  %i.ae = ptrtoint ptr %i.o to i64
  %i.af = sub i64 %i.ae, %i.k
  %i.ag = ashr exact i64 %i.af, 3                 ; 5 uses
  %i.ah = icmp sgt i64 %i.ag, 0
  br i1 %i.ah, label %.lr.ph.i.i.i.i.i69.preheader, label %_ZSt13move_backwardIPSt4pairIjfES2_ET0_T_S4_S3_.exit

.lr.ph.i.i.i.i.i69.preheader:                     ; preds = %_ZSt22__uninitialized_move_aIPSt4pairIjfES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %xtraiter = and i64 %i.ag, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vector.body220.a, label %vector.memcheck194

vector.memcheck194:                               ; preds = %.lr.ph.i.i.i.i.i69.preheader, %vector.memcheck194
  %.010.i.i.i.i.i.prol = phi i64 [ %7, %vector.memcheck194 ], [ %i.ag, %.lr.ph.i.i.i.i.i69.preheader ]
  %.069.i.i.i.i.i.prol = phi ptr [ %scevgep198, %vector.memcheck194 ], [ %i.d, %.lr.ph.i.i.i.i.i69.preheader ] ; 2 uses
  %.078.i.i.i.i.i.prol = phi ptr [ %scevgep197, %vector.memcheck194 ], [ %i.o, %.lr.ph.i.i.i.i.i69.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vector.memcheck194 ], [ 0, %.lr.ph.i.i.i.i.i69.preheader ]
  %scevgep197 = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.prol, i64 -8 ; 3 uses
  %scevgep198 = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.prol, i64 -8 ; 3 uses
  %4 = load i32, ptr %scevgep197, align 4
  store i32 %4, ptr %scevgep198, align 4
  %scevgep199 = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.prol, i64 -4
  %5 = load float, ptr %scevgep199, align 4
  %6 = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.prol, i64 -4
  store float %5, ptr %6, align 4
  %7 = add nsw i64 %.010.i.i.i.i.i.prol, -1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vector.body220.a, label %vector.memcheck194, !llvm.loop !244

vector.body220.a:                                 ; preds = %vector.memcheck194, %.lr.ph.i.i.i.i.i69.preheader
  %index221.a = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i69.preheader ], [ %7, %vector.memcheck194 ]
  %.069.i.i.i.i.i.unr = phi ptr [ %i.d, %.lr.ph.i.i.i.i.i69.preheader ], [ %scevgep198, %vector.memcheck194 ]
  %.078.i.i.i.i.i.unr = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i69.preheader ], [ %scevgep197, %vector.memcheck194 ]
  %8 = icmp ult i64 %i.ag, 4
  br i1 %8, label %_ZSt13move_backwardIPSt4pairIjfES2_ET0_T_S4_S3_.exit, label %.lr.ph.i.i.i.i.i69

.lr.ph.i.i.i.i.i69:                               ; preds = %vector.body220.a, %.lr.ph.i.i.i.i.i69
  %.010.i.i.i.i.i = phi i64 [ %i.ao, %.lr.ph.i.i.i.i.i69 ], [ %index221.a, %vector.body220.a ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i69 ], [ %.069.i.i.i.i.i.unr, %vector.body220.a ] ; 8 uses
  %.078.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i69 ], [ %.078.i.i.i.i.i.unr, %vector.body220.a ] ; 8 uses
  %9 = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8
  %10 = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8
  %11 = load i32, ptr %9, align 4
  store i32 %11, ptr %10, align 4
  %12 = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -4
  %13 = load float, ptr %12, align 4
  %14 = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -4
  store float %13, ptr %14, align 4
  %15 = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -16
  %16 = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -16
  %17 = load i32, ptr %15, align 4
  store i32 %17, ptr %16, align 4
  %18 = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -12
  %19 = load float, ptr %18, align 4
  %20 = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -12
  store float %19, ptr %20, align 4
  %21 = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  %22 = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  %23 = load i32, ptr %21, align 4
  store i32 %23, ptr %22, align 4
  %24 = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -20
  %25 = load float, ptr %24, align 4
  %26 = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -20
  store float %25, ptr %26, align 4
  %i.ai = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32 ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32 ; 2 uses
  %i.ak = load i32, ptr %i.ai, align 4
  store i32 %i.ak, ptr %i.aj, align 4
  %i.al = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -28
  %i.am = load float, ptr %i.al, align 4
  %i.an = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -28
  store float %i.am, ptr %i.an, align 4
  %i.ao = add nsw i64 %.010.i.i.i.i.i, -4
  %27 = icmp sgt i64 %.010.i.i.i.i.i, 4
  br i1 %27, label %.lr.ph.i.i.i.i.i69, label %_ZSt13move_backwardIPSt4pairIjfES2_ET0_T_S4_S3_.exit, !llvm.loop !245

_ZSt13move_backwardIPSt4pairIjfES2_ET0_T_S4_S3_.exit: ; preds = %vector.body220.a, %.lr.ph.i.i.i.i.i69, %_ZSt22__uninitialized_move_aIPSt4pairIjfES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %.idx = shl nuw nsw i64 %2, 3                   ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.aq = add nsw i64 %.idx, -8                   ; 2 uses
  %i.ar = lshr exact i64 %i.aq, 3
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check236 = icmp ult i64 %i.aq, 24
  br i1 %min.iters.check236, label %.lr.ph.i.i.i.preheader, label %vector.ph237

vector.ph237:                                     ; preds = %_ZSt13move_backwardIPSt4pairIjfES2_ET0_T_S4_S3_.exit
  %n.vec239 = and i64 %i.as, 4611686018427387900  ; 3 uses
  %i.at = shl i64 %n.vec239, 3
  %i.au = getelementptr i8, ptr %1, i64 %i.at
  %broadcast.splatinsert240 = insertelement <2 x i32> poison, i32 %i.i, i64 0
  %broadcast.splatinsert242 = insertelement <2 x i32> poison, i32 %i.j, i64 0
  %interleaved.vec248 = shufflevector <2 x i32> %broadcast.splatinsert240, <2 x i32> %broadcast.splatinsert242, <4 x i32> <i32 0, i32 2, i32 0, i32 2> ; 2 uses
  br label %vector.body244

vector.body244:                                   ; preds = %vector.body244, %vector.ph237
  %index245 = phi i64 [ 0, %vector.ph237 ], [ %index.next250, %vector.body244 ] ; 2 uses
  %i.av = shl i64 %index245, 3                    ; 2 uses
  %next.gep246 = getelementptr i8, ptr %1, i64 %i.av
  %i.aw = getelementptr i8, ptr %1, i64 %i.av
  %next.gep247 = getelementptr i8, ptr %i.aw, i64 16
  store <4 x i32> %interleaved.vec248, ptr %next.gep246, align 4
  store <4 x i32> %interleaved.vec248, ptr %next.gep247, align 4
  %index.next250 = add nuw i64 %index245, 4       ; 2 uses
  %i.ax = icmp eq i64 %index.next250, %n.vec239
  br i1 %i.ax, label %middle.block251, label %vector.body244, !llvm.loop !246

middle.block251:                                  ; preds = %vector.body244
  %cmp.n252 = icmp eq i64 %i.as, %n.vec239
  br i1 %cmp.n252, label %_ZSt4fillIPSt4pairIjfES1_EvT_S3_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZSt13move_backwardIPSt4pairIjfES2_ET0_T_S4_S3_.exit, %middle.block251
  %.06.i.i.i.ph = phi ptr [ %1, %_ZSt13move_backwardIPSt4pairIjfES2_ET0_T_S4_S3_.exit ], [ %i.au, %middle.block251 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  store i32 %i.i, ptr %.06.i.i.i, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 4
  store i32 %i.j, ptr %i.ay, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.az, %i.ap
  br i1 %.not.i.i.i, label %_ZSt4fillIPSt4pairIjfES1_EvT_S3_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !247

bb.e:                                             ; preds = %bb.c
  %i.ba = sub nuw i64 %2, %i.m                    ; 6 uses
  %.not7.i.i.i.i = icmp eq i64 %i.ba, 0
  br i1 %.not7.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPSt4pairIjfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %min.iters.check = icmp ult i64 %i.ba, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader321, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.ba, -4                      ; 3 uses
  %i.bb = shl i64 %n.vec, 3
  %i.bc = getelementptr i8, ptr %i.d, i64 %i.bb   ; 2 uses
  %i.bd = and i64 %i.ba, 3
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.i, i64 0
  %broadcast.splatinsert139 = insertelement <2 x i32> poison, i32 %i.j, i64 0
  %interleaved.vec = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> %broadcast.splatinsert139, <4 x i32> <i32 0, i32 2, i32 0, i32 2> ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.be = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.be
  %i.bf = getelementptr i8, ptr %i.d, i64 %i.be
  %next.gep141 = getelementptr i8, ptr %i.bf, i64 16
  store <4 x i32> %interleaved.vec, ptr %next.gep, align 4
  store <4 x i32> %interleaved.vec, ptr %next.gep141, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !248

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ba, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPSt4pairIjfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.preheader321

.lr.ph.i.i.i.i.preheader321:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.ph = phi ptr [ %i.d, %.lr.ph.i.i.i.i.preheader ], [ %i.bc, %middle.block ]
  %.068.i.i.i.i.ph = phi i64 [ %i.ba, %.lr.ph.i.i.i.i.preheader ], [ %i.bd, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader321, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.i.i ], [ %.09.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader321 ] ; 3 uses
  %.068.i.i.i.i = phi i64 [ %i.bh, %.lr.ph.i.i.i.i ], [ %.068.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader321 ]
  store i32 %i.i, ptr %.09.i.i.i.i, align 4
  %.09.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 4
  store i32 %i.j, ptr %.09.i.i.i.i.sroa_idx, align 4
  %i.bh = add i64 %.068.i.i.i.i, -1               ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPSt4pairIjfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !249

_ZSt24__uninitialized_fill_n_aIPSt4pairIjfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.bj = phi ptr [ %i.d, %bb.e ], [ %i.bc, %middle.block ], [ %i.bi, %.lr.ph.i.i.i.i ] ; 6 uses
  store ptr %i.bj, ptr %i.c, align 8
  %.not11.i.i.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not11.i.i.i.i.i70, label %_ZSt22__uninitialized_move_aIPSt4pairIjfES2_SaIS1_EET0_T_S5_S4_RT1_.exit76.thread, label %.lr.ph.i.i.i.i.i71.preheader

.lr.ph.i.i.i.i.i71.preheader:                     ; preds = %_ZSt24__uninitialized_fill_n_aIPSt4pairIjfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit
  %i.bk = ptrtoaddr ptr %i.bj to i64
  %i.bl = add i64 %i.f, -8
  %i.bm = sub i64 %i.bl, %i.k                     ; 2 uses
  %i.bn = lshr i64 %i.bm, 3
  %i.bo = add nuw nsw i64 %i.bn, 1                ; 2 uses
  %min.iters.check145 = icmp ult i64 %i.bm, 56
  %i.bp = sub i64 %i.bk, %i.k
  %diff.check = icmp ult i64 %i.bp, 32
  %or.cond = select i1 %min.iters.check145, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i71.preheader320, label %vector.ph146

vector.ph146:                                     ; preds = %.lr.ph.i.i.i.i.i71.preheader
  %n.vec148 = and i64 %i.bo, 4611686018427387900  ; 3 uses
  %i.bq = shl i64 %n.vec148, 3                    ; 2 uses
  %i.br = getelementptr i8, ptr %i.bj, i64 %i.bq
  %i.bs = getelementptr i8, ptr %1, i64 %i.bq
  br label %vector.body149

vector.body149:                                   ; preds = %vector.body149, %vector.ph146
  %index150 = phi i64 [ 0, %vector.ph146 ], [ %index.next154, %vector.body149 ] ; 2 uses
  %i.bt = shl i64 %index150, 3                    ; 2 uses
  %next.gep151 = getelementptr i8, ptr %i.bj, i64 %i.bt ; 2 uses
  %next.gep152 = getelementptr i8, ptr %1, i64 %i.bt ; 2 uses
  %i.bu = getelementptr i8, ptr %next.gep152, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep152, align 4
  %wide.load153 = load <2 x i64>, ptr %i.bu, align 4
  %i.bv = getelementptr i8, ptr %next.gep151, i64 16
  store <2 x i64> %wide.load, ptr %next.gep151, align 4
  store <2 x i64> %wide.load153, ptr %i.bv, align 4
  %index.next154 = add nuw i64 %index150, 4       ; 2 uses
  %i.bw = icmp eq i64 %index.next154, %n.vec148
  br i1 %i.bw, label %middle.block155, label %vector.body149, !llvm.loop !250

middle.block155:                                  ; preds = %vector.body149
  %cmp.n156 = icmp eq i64 %i.bo, %n.vec148
  br i1 %cmp.n156, label %.lr.ph.i.i.i78, label %.lr.ph.i.i.i.i.i71.preheader320

.lr.ph.i.i.i.i.i71.preheader320:                  ; preds = %.lr.ph.i.i.i.i.i71.preheader, %middle.block155
  %.013.i.i.i.i.i72.ph = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i71.preheader ], [ %i.br, %middle.block155 ]
  %.sroa.08.012.i.i.i.i.i73.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i71.preheader ], [ %i.bs, %middle.block155 ]
  br label %.lr.ph.i.i.i.i.i71

_ZSt22__uninitialized_move_aIPSt4pairIjfES2_SaIS1_EET0_T_S5_S4_RT1_.exit76.thread: ; preds = %_ZSt24__uninitialized_fill_n_aIPSt4pairIjfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.l
  store ptr %i.bx, ptr %i.c, align 8
  br label %_ZSt4fillIPSt4pairIjfES1_EvT_S3_RKT0_.exit

.lr.ph.i.i.i.i.i71:                               ; preds = %.lr.ph.i.i.i.i.i71.preheader320, %.lr.ph.i.i.i.i.i71
  %.013.i.i.i.i.i72 = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i71 ], [ %.013.i.i.i.i.i72.ph, %.lr.ph.i.i.i.i.i71.preheader320 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i73 = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i71 ], [ %.sroa.08.012.i.i.i.i.i73.ph, %.lr.ph.i.i.i.i.i71.preheader320 ] ; 2 uses
  %i.by = load i64, ptr %.sroa.08.012.i.i.i.i.i73, align 4
  store i64 %i.by, ptr %.013.i.i.i.i.i72, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i73, i64 8 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i72, i64 8
  %.not.i.i.i.i.i74 = icmp eq ptr %i.bz, %i.d
  br i1 %.not.i.i.i.i.i74, label %.lr.ph.i.i.i78, label %.lr.ph.i.i.i.i.i71, !llvm.loop !251

.lr.ph.i.i.i78:                                   ; preds = %.lr.ph.i.i.i.i.i71, %middle.block155
  %i.cb = load ptr, ptr %i.c, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.l
  store ptr %i.cc, ptr %i.c, align 8
  %i.cd = add i64 %i.f, -8
  %i.ce = sub i64 %i.cd, %i.k                     ; 2 uses
  %i.cf = lshr i64 %i.ce, 3
  %i.cg = add nuw nsw i64 %i.cf, 1                ; 2 uses
  %min.iters.check160 = icmp ult i64 %i.ce, 24
  br i1 %min.iters.check160, label %scalar.ph159.preheader, label %vector.ph161

vector.ph161:                                     ; preds = %.lr.ph.i.i.i78
  %n.vec163 = and i64 %i.cg, 4611686018427387900  ; 3 uses
  %i.ch = shl i64 %n.vec163, 3
  %i.ci = getelementptr i8, ptr %1, i64 %i.ch
  %broadcast.splatinsert164 = insertelement <2 x i32> poison, i32 %i.i, i64 0
  %broadcast.splatinsert166 = insertelement <2 x i32> poison, i32 %i.j, i64 0
  %interleaved.vec172 = shufflevector <2 x i32> %broadcast.splatinsert164, <2 x i32> %broadcast.splatinsert166, <4 x i32> <i32 0, i32 2, i32 0, i32 2> ; 2 uses
  br label %vector.body168

vector.body168:                                   ; preds = %vector.body168, %vector.ph161
  %index169 = phi i64 [ 0, %vector.ph161 ], [ %index.next174, %vector.body168 ] ; 2 uses
  %i.cj = shl i64 %index169, 3                    ; 2 uses
  %next.gep170 = getelementptr i8, ptr %1, i64 %i.cj
  %i.ck = getelementptr i8, ptr %1, i64 %i.cj
  %next.gep171 = getelementptr i8, ptr %i.ck, i64 16
  store <4 x i32> %interleaved.vec172, ptr %next.gep170, align 4
  store <4 x i32> %interleaved.vec172, ptr %next.gep171, align 4
  %index.next174 = add nuw i64 %index169, 4       ; 2 uses
  %i.cl = icmp eq i64 %index.next174, %n.vec163
  br i1 %i.cl, label %middle.block175, label %vector.body168, !llvm.loop !252

middle.block175:                                  ; preds = %vector.body168
  %cmp.n176 = icmp eq i64 %i.cg, %n.vec163
  br i1 %cmp.n176, label %_ZSt4fillIPSt4pairIjfES1_EvT_S3_RKT0_.exit, label %scalar.ph159.preheader

scalar.ph159.preheader:                           ; preds = %.lr.ph.i.i.i78, %middle.block175
  %.06.i.i.i79.ph = phi ptr [ %1, %.lr.ph.i.i.i78 ], [ %i.ci, %middle.block175 ]
  br label %scalar.ph159
end_hunk_0
begin_hunk_1_@llvm.fmuladd.v4f32
!44 = distinct !{!44, !"_ZSt19__relocate_object_aISt4pairIjfES1_SaIS1_EEvPT_PT0_RT1_"}
!45 = !{!46}
!46 = distinct !{!46, !44, !"_ZSt19__relocate_object_aISt4pairIjfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!47 = distinct !{!47, !4, !25, !26}
!48 = distinct !{!48, !4, !25}
!49 = distinct !{!49, !4}
!50 = distinct !{!50, !4, !25}
!51 = distinct !{!51, !4}
!52 = distinct !{!52, !4}
!53 = distinct !{!53, !4}
!54 = distinct !{!54, !4}
!55 = distinct !{!55, !4}
!56 = !{!57}
!57 = distinct !{!57, !58, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE: argument 0"}
!58 = distinct !{!58, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE"}
!59 = !{!60}
!60 = distinct !{!60, !61, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!61 = distinct !{!61, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!64 = distinct !{!64, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!65 = !{!66}
!66 = distinct !{!66, !67, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!67 = distinct !{!67, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!68 = !{!66, !63, !60, !57}
!69 = !{!70}
!70 = distinct !{!70, !71, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE: argument 0"}
!71 = distinct !{!71, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE"}
!72 = !{!73}
!73 = distinct !{!73, !74, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!74 = distinct !{!74, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!75 = !{!76}
!76 = distinct !{!76, !77, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!77 = distinct !{!77, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!78 = !{!79}
!79 = distinct !{!79, !80, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!80 = distinct !{!80, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!81 = !{!79, !76, !73, !70}
!82 = distinct !{!82, !4}
!83 = !{!84}
!84 = distinct !{!84, !85, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!85 = distinct !{!85, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!86 = !{!87, !84}
!87 = distinct !{!87, !88, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!88 = distinct !{!88, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!89 = !{!90}
!90 = distinct !{!90, !91, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!91 = distinct !{!91, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!94 = distinct !{!94, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!95 = !{!96}
!96 = distinct !{!96, !97, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!97 = distinct !{!97, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!98 = !{!99, !96}
!99 = distinct !{!99, !100, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!100 = distinct !{!100, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!101 = !{!102}
!102 = distinct !{!102, !103, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!103 = distinct !{!103, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!104 = distinct !{!104, !4}
!105 = distinct !{!105, !30}
!106 = distinct !{!106, !4}
!107 = distinct !{!107, !4}
!108 = distinct !{!108, !4}
!109 = distinct !{!109, !4}
!110 = distinct !{!110, !4}
!111 = distinct !{!111, !4}
!112 = distinct !{!112, !4}
!113 = distinct !{!113, !4}
!114 = distinct !{!114, !4}
!115 = distinct !{!115, !4}
!116 = !{!117}
!117 = distinct !{!117, !118, !"_ZSt19__relocate_object_aIN6Assimp3SMD4FaceES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!118 = distinct !{!118, !"_ZSt19__relocate_object_aIN6Assimp3SMD4FaceES2_SaIS2_EEvPT_PT0_RT1_"}
!119 = !{!120}
!120 = distinct !{!120, !118, !"_ZSt19__relocate_object_aIN6Assimp3SMD4FaceES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!121 = !{!117, !120}
!122 = distinct !{!122, !4}
!123 = !{!124}
!124 = distinct !{!124, !125, !"_ZSt19__relocate_object_aIN6Assimp3SMD4BoneES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!125 = distinct !{!125, !"_ZSt19__relocate_object_aIN6Assimp3SMD4BoneES2_SaIS2_EEvPT_PT0_RT1_"}
!126 = !{!127}
!127 = distinct !{!127, !125, !"_ZSt19__relocate_object_aIN6Assimp3SMD4BoneES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!128 = !{!124, !127}
!129 = distinct !{!129, !4}
!130 = distinct !{!130, !4}
!131 = distinct !{!131, !4}
!132 = distinct !{!132, !4}
!133 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!134 = distinct !{!134, !4}
!135 = !{!136}
!136 = distinct !{!136, !137, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!137 = distinct !{!137, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!138 = !{!139}
!139 = distinct !{!139, !140, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!140 = distinct !{!140, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!141 = !{!142}
!142 = distinct !{!142, !143, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!143 = distinct !{!143, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!144 = !{!142, !139, !136}
!145 = !{!146}
!146 = distinct !{!146, !147, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE: argument 0"}
!147 = distinct !{!147, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE"}
!148 = !{!149}
!149 = distinct !{!149, !150, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!150 = distinct !{!150, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!151 = !{!152}
!152 = distinct !{!152, !153, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!153 = distinct !{!153, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!154 = !{!155}
!155 = distinct !{!155, !156, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!156 = distinct !{!156, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!157 = !{!155, !152, !149, !146}
!158 = !{!159}
!159 = distinct !{!159, !160, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!160 = distinct !{!160, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!161 = !{!162}
!162 = distinct !{!162, !160, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!163 = !{!159, !162}
!164 = !{!165}
!165 = distinct !{!165, !166, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!166 = distinct !{!166, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!167 = !{!168}
!168 = distinct !{!168, !166, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!169 = !{!165, !168}
!170 = !{!171}
!171 = distinct !{!171, !172, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!172 = distinct !{!172, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!173 = !{!174}
!174 = distinct !{!174, !172, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!175 = !{!171, !174}
!176 = !{!177}
!177 = distinct !{!177, !178, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!178 = distinct !{!178, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!179 = !{!180}
!180 = distinct !{!180, !178, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!181 = !{!177, !180}
!182 = !{!183}
!183 = distinct !{!183, !184, !"_ZSt19__relocate_object_aISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_SaIS7_EEvPT_PT0_RT1_: argument 0"}
!184 = distinct !{!184, !"_ZSt19__relocate_object_aISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_SaIS7_EEvPT_PT0_RT1_"}
!185 = !{!186}
!186 = distinct !{!186, !184, !"_ZSt19__relocate_object_aISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_SaIS7_EEvPT_PT0_RT1_: argument 1"}
!187 = !{!183, !186}
!188 = distinct !{!188, !4}
!189 = !{!190}
!190 = distinct !{!190, !191, !"_ZSt19__relocate_object_aISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_SaIS7_EEvPT_PT0_RT1_: argument 0"}
!191 = distinct !{!191, !"_ZSt19__relocate_object_aISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_SaIS7_EEvPT_PT0_RT1_"}
!192 = !{!193}
!193 = distinct !{!193, !191, !"_ZSt19__relocate_object_aISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_SaIS7_EEvPT_PT0_RT1_: argument 1"}
!194 = !{!190, !193}
!195 = !{!196}
!196 = distinct !{!196, !197, !"_ZSt19__relocate_object_aIN6Assimp3SMD4FaceES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!197 = distinct !{!197, !"_ZSt19__relocate_object_aIN6Assimp3SMD4FaceES2_SaIS2_EEvPT_PT0_RT1_"}
!198 = !{!199}
!199 = distinct !{!199, !197, !"_ZSt19__relocate_object_aIN6Assimp3SMD4FaceES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!200 = !{!196, !199}
!201 = !{!202}
!202 = distinct !{!202, !203, !"_ZSt19__relocate_object_aIN6Assimp3SMD4FaceES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!203 = distinct !{!203, !"_ZSt19__relocate_object_aIN6Assimp3SMD4FaceES2_SaIS2_EEvPT_PT0_RT1_"}
!204 = !{!205}
!205 = distinct !{!205, !203, !"_ZSt19__relocate_object_aIN6Assimp3SMD4FaceES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!206 = !{!202, !205}
!207 = distinct !{!207, !4}
!208 = !{!209}
!209 = distinct !{!209, !210, !"_ZSt19__relocate_object_aIN6Assimp3SMD4BoneES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!210 = distinct !{!210, !"_ZSt19__relocate_object_aIN6Assimp3SMD4BoneES2_SaIS2_EEvPT_PT0_RT1_"}
!211 = !{!212}
!212 = distinct !{!212, !210, !"_ZSt19__relocate_object_aIN6Assimp3SMD4BoneES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!213 = !{!209, !212}
!214 = !{!215, !217}
!215 = distinct !{!215, !216, !"_ZSt19__relocate_object_aIN6Assimp3SMD4Bone9Animation9MatrixKeyES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!216 = distinct !{!216, !"_ZSt19__relocate_object_aIN6Assimp3SMD4Bone9Animation9MatrixKeyES4_SaIS4_EEvPT_PT0_RT1_"}
!217 = distinct !{!217, !216, !"_ZSt19__relocate_object_aIN6Assimp3SMD4Bone9Animation9MatrixKeyES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!218 = distinct !{!218, !4}
!219 = !{!220, !222}
!220 = distinct !{!220, !221, !"_ZSt19__relocate_object_aIN6Assimp3SMD4Bone9Animation9MatrixKeyES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!221 = distinct !{!221, !"_ZSt19__relocate_object_aIN6Assimp3SMD4Bone9Animation9MatrixKeyES4_SaIS4_EEvPT_PT0_RT1_"}
!222 = distinct !{!222, !221, !"_ZSt19__relocate_object_aIN6Assimp3SMD4Bone9Animation9MatrixKeyES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!223 = !{!224}
!224 = distinct !{!224, !225, !"_Z18ai_str_toprintableRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc: argument 0"}
!225 = distinct !{!225, !"_Z18ai_str_toprintableRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc"}
!226 = distinct !{!226, !4}
!227 = distinct !{!227, !4}
!228 = distinct !{!228, !4}
!229 = !{!230}
!230 = distinct !{!230, !231, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE: argument 0"}
!231 = distinct !{!231, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE"}
!232 = !{!233}
!233 = distinct !{!233, !234, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!234 = distinct !{!234, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!235 = !{!236}
!236 = distinct !{!236, !237, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!237 = distinct !{!237, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!238 = !{!239}
!239 = distinct !{!239, !240, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!240 = distinct !{!240, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!241 = !{!239, !236, !233, !230}
!242 = distinct !{!242, !4, !25, !26}
!243 = distinct !{!243, !4, !26, !25}
!244 = distinct !{!244, !30}
!245 = distinct !{!245, !4}
!246 = distinct !{!246, !4, !25, !26}
!247 = distinct !{!247, !4, !26, !25}
!248 = distinct !{!248, !4, !25, !26}
!249 = distinct !{!249, !4, !26, !25}
!250 = distinct !{!250, !4, !25, !26}
!251 = distinct !{!251, !4, !25}
!252 = distinct !{!252, !4, !25, !26}
!253 = distinct !{!253, !4, !26, !25}
!254 = !{!255}
!255 = distinct !{!255, !256}
!256 = distinct !{!256, !"LVerDomain"}
!257 = !{!258}
!258 = distinct !{!258, !256}
!259 = distinct !{!259, !4, !25, !26}
!260 = distinct !{!260, !30}
!261 = distinct !{!261, !4, !25}
!262 = distinct !{!262, !4, !25, !26}
!263 = distinct !{!263, !4, !25}
!264 = distinct !{!264, !4, !25, !26}
!265 = distinct !{!265, !4, !25}
end_hunk_1
