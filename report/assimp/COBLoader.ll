inline.NumInlined: 2278
inline.NumDeleted: 956
begin_hunk_0_@_ZN6Assimp6Logger13formatMessageIJRA37_KcERPS2_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcSA_SB_EEOT0_DpOT_:bb.a

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %5) #26
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJERA37_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(37) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 13 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(37) %3) #26
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef nonnull align 1 dereferenceable(37) %3, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !300)
  call void @llvm.experimental.noalias.scope.decl(metadata !303)
  call void @llvm.experimental.noalias.scope.decl(metadata !306)
  call void @llvm.experimental.noalias.scope.decl(metadata !309)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !alias.scope !312
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !alias.scope !312
  store i8 0, ptr %i.c, align 8, !alias.scope !312
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !noalias !312 ; 3 uses
  %.not.i.not.i.i.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !312 ; 2 uses
  %i.i = icmp ugt ptr %i.f, %i.h
  %.08.i.i.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.h ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i, null
  %.not.i.i.i.i = select i1 %.not.i.not.i.i.i.i, i1 true, i1 %.not5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !noalias !312 ; 2 uses
  %i.l = ptrtoint ptr %.08.i.i.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.k, i64 noundef %i.n)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !alias.scope !312 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.c, align 8, !alias.scope !312
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #28
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
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #28
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aa, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ah) #26
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ai) #26
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #26
  resume { ptr, i32 } %i.p
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #22

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJERKjEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 13 uses
  %i.a = load i32, ptr %3, align 4
  %i.b = zext i32 %i.a to i64
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(376) %2, i64 noundef %i.b) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !313)
  call void @llvm.experimental.noalias.scope.decl(metadata !316)
  call void @llvm.experimental.noalias.scope.decl(metadata !319)
  call void @llvm.experimental.noalias.scope.decl(metadata !322)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.d, ptr %0, align 8, !alias.scope !325
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.e, align 8, !alias.scope !325
  store i8 0, ptr %i.d, align 8, !alias.scope !325
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !noalias !325 ; 3 uses
  %.not.i.not.i.i.i.i = icmp eq ptr %i.g, null
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !noalias !325 ; 2 uses
  %i.j = icmp ugt ptr %i.g, %i.i
  %.08.i.i.i.i.i = select i1 %i.j, ptr %i.g, ptr %i.i ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i, null
  %.not.i.i.i.i = select i1 %.not.i.not.i.i.i.i, i1 true, i1 %.not5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !noalias !325 ; 2 uses
  %i.m = ptrtoint ptr %.08.i.i.i.i.i to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.l, i64 noundef %i.o)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %0, align 8, !alias.scope !325 ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.d
  br i1 %i.s, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.t = load i64, ptr %i.d, align 8, !alias.scope !325
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #28
  br label %.body

bb.d:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c

_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.d, %bb.b
  %i.w = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.w, ptr %4, align 8
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.y = getelementptr i8, ptr %i.w, i64 -24
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr inbounds i8, ptr %4, i64 %i.z
  store ptr %i.x, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit
  %i.ag = load i64, ptr %i.ae, align 8
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #28
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ab, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ai) #26
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.aj) #26
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #26
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6Assimp3COB8MaterialESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = load ptr, ptr %0, align 8                ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775752
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6Assimp3COB8MaterialESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.125) #27
  unreachable

_ZNKSt6vectorIN6Assimp3COB8MaterialESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %2 = sdiv exact i64 %i.f, 152                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %2, i64 1)
  %3 = add nsw i64 %.sroa.speculated.i, %2        ; 2 uses
  %4 = icmp ult i64 %3, %2
  %5 = tail call i64 @llvm.umin.i64(i64 %3, i64 60680079189834051)
  %6 = select i1 %4, i64 60680079189834051, i64 %5 ; 4 uses
  %7 = ptrtoint ptr %1 to i64
  %8 = sub i64 %7, %i.e
  %.not.i = icmp eq i64 %6, 0
  br i1 %.not.i, label %bb.c, label %9

9:                                                ; preds = %_ZNKSt6vectorIN6Assimp3COB8MaterialESaIS2_EE12_M_check_lenEmPKc.exit
  %10 = mul nuw nsw i64 %6, 152
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #29
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN6Assimp3COB8MaterialESaIS2_EE12_M_check_lenEmPKc.exit, %9
  %12 = phi ptr [ %11, %9 ], [ null, %_ZNKSt6vectorIN6Assimp3COB8MaterialESaIS2_EE12_M_check_lenEmPKc.exit ] ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %12, i64 %8 ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store <4 x i32> <i32 0, i32 0, i32 0, i32 -1>, ptr %i.i, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp3COB8MaterialE, i64 16), ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  store ptr %i.k, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 0, ptr %i.l, align 8
  store i8 0, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.m, i8 0, i64 28, i1 false)
  store float 1.000000e+00, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  store i32 -1, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 92
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %i.p, i8 0, i64 60, i1 false)
  %.not14.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not14.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3COB8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %_ZSt10_ConstructIN6Assimp3COB8MaterialEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.016.i.i.i.i.i = phi ptr [ %i.r, %_ZSt10_ConstructIN6Assimp3COB8MaterialEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %12, %bb.c ] ; 4 uses
  %.01215.i.i.i.i.i = phi ptr [ %i.q, %_ZSt10_ConstructIN6Assimp3COB8MaterialEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %bb.c ] ; 2 uses
  invoke void @_ZN6Assimp3COB8MaterialC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(152) %.016.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(152) %.01215.i.i.i.i.i)
          to label %_ZSt10_ConstructIN6Assimp3COB8MaterialEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.d

_ZSt10_ConstructIN6Assimp3COB8MaterialEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i, i64 152 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i, i64 152 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.q, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3COB8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !326

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  %i.u = tail call ptr @__cxa_begin_catch(ptr %i.t) #26 ; 0 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %12, %.016.i.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6Assimp3COB8MaterialEEvT_S4_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i.i ], [ %12, %bb.d ] ; 3 uses
  %i.v = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(152) %.05.i.i.i.i.i.i.i) #26, !inline_history !327
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 152 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.x, %.016.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6Assimp3COB8MaterialEEvT_S4_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !29

_ZSt8_DestroyIPN6Assimp3COB8MaterialEEvT_S4_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.d
  invoke void @__cxa_rethrow() #27
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN6Assimp3COB8MaterialEEvT_S4_.exit.i.i.i.i.i
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN6Assimp3COB8MaterialES2_EvT_S4_RSaIT0_E.exit.thread unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #30
  unreachable

bb.g:                                             ; preds = %_ZSt8_DestroyIPN6Assimp3COB8MaterialEEvT_S4_.exit.i.i.i.i.i
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3COB8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %_ZSt10_ConstructIN6Assimp3COB8MaterialEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i.i = phi ptr [ %12, %bb.c ], [ %i.r, %_ZSt10_ConstructIN6Assimp3COB8MaterialEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i ] ; 4 uses
  %.ptr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 152 ; 3 uses
  %.not14.i.i.i.i.i27 = icmp eq ptr %1, %i.b
  br i1 %.not14.i.i.i.i.i27, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3COB8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit41, label %.lr.ph.i.i.i.i.i28

.lr.ph.i.i.i.i.i28:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3COB8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit, %_ZSt10_ConstructIN6Assimp3COB8MaterialEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i36
  %.016.i.i.i.i.i29.idx = phi i64 [ %.016.i.i.i.i.i29.add, %_ZSt10_ConstructIN6Assimp3COB8MaterialEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i36 ], [ 152, %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3COB8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 3 uses
  %.01215.i.i.i.i.i30 = phi ptr [ %i.ab, %_ZSt10_ConstructIN6Assimp3COB8MaterialEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i36 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3COB8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 2 uses
  %.016.i.i.i.i.i29.ptr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 %.016.i.i.i.i.i29.idx ; 2 uses
  invoke void @_ZN6Assimp3COB8MaterialC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(152) %.016.i.i.i.i.i29.ptr, ptr noundef nonnull align 8 dereferenceable(152) %.01215.i.i.i.i.i30)
          to label %_ZSt10_ConstructIN6Assimp3COB8MaterialEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i36 unwind label %bb.h

_ZSt10_ConstructIN6Assimp3COB8MaterialEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i36: ; preds = %.lr.ph.i.i.i.i.i28
  %i.ab = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i30, i64 152 ; 2 uses
  %.016.i.i.i.i.i29.add = add nuw nsw i64 %.016.i.i.i.i.i29.idx, 152 ; 2 uses
  %.not.i.i.i.i.i37 = icmp eq ptr %i.ab, %i.b
  br i1 %.not.i.i.i.i.i37, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3COB8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit41.loopexit, label %.lr.ph.i.i.i.i.i28, !llvm.loop !326

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i28
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  %i.ae = tail call ptr @__cxa_begin_catch(ptr %i.ad) #26 ; 0 uses
  %.not4.i.i.i.i.i.i.i31 = icmp eq i64 %.016.i.i.i.i.i29.idx, 152
  br i1 %.not4.i.i.i.i.i.i.i31, label %_ZSt8_DestroyIPN6Assimp3COB8MaterialEEvT_S4_.exit.i.i.i.i.i35, label %.lr.ph.i.i.i.i.i.i.i32

.lr.ph.i.i.i.i.i.i.i32:                           ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i.i32
  %.05.i.i.i.i.i.i.i33 = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i.i32 ], [ %.ptr, %bb.h ] ; 3 uses
  %i.af = load ptr, ptr %.05.i.i.i.i.i.i.i33, align 8
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(152) %.05.i.i.i.i.i.i.i33) #26, !inline_history !327
  %i.ah = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i33, i64 152 ; 2 uses
  %.not.i.i.i.i.i.i.i34 = icmp eq ptr %i.ah, %.016.i.i.i.i.i29.ptr
  br i1 %.not.i.i.i.i.i.i.i34, label %_ZSt8_DestroyIPN6Assimp3COB8MaterialEEvT_S4_.exit.i.i.i.i.i35, label %.lr.ph.i.i.i.i.i.i.i32, !llvm.loop !29

_ZSt8_DestroyIPN6Assimp3COB8MaterialEEvT_S4_.exit.i.i.i.i.i35: ; preds = %.lr.ph.i.i.i.i.i.i.i32, %bb.h
  invoke void @__cxa_rethrow() #27
          to label %bb.k unwind label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPN6Assimp3COB8MaterialEEvT_S4_.exit.i.i.i.i.i35
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %bb.m unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  tail call void @__clang_call_terminate(ptr %i.ak) #30
  unreachable

bb.k:                                             ; preds = %_ZSt8_DestroyIPN6Assimp3COB8MaterialEEvT_S4_.exit.i.i.i.i.i35
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3COB8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit41.loopexit: ; preds = %_ZSt10_ConstructIN6Assimp3COB8MaterialEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i36
  %.ptr58.le = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 %.016.i.i.i.i.i29.add
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3COB8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit41

_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3COB8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit41: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3COB8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit41.loopexit, %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3COB8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %.0.lcssa.i.i.i.i.i38 = phi ptr [ %.ptr, %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3COB8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit ], [ %.ptr58.le, %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3COB8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit41.loopexit ]
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6Assimp3COB8MaterialEEvT_S4_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3COB8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit41, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.an, %.lr.ph.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3COB8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit41 ] ; 3 uses
  %i.al = load ptr, ptr %.05.i.i, align 8
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(152) %.05.i.i) #26, !inline_history !328
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 152 ; 2 uses
  %.not.i.i = icmp eq ptr %i.an, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6Assimp3COB8MaterialEEvT_S4_.exit, label %.lr.ph.i.i, !llvm.loop !29

_ZSt8_DestroyIPN6Assimp3COB8MaterialEEvT_S4_.exit: ; preds = %.lr.ph.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3COB8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit41
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i42 = icmp eq ptr %i.c, null
  br i1 %.not.i42, label %_ZNSt12_Vector_baseIN6Assimp3COB8MaterialESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIPN6Assimp3COB8MaterialEEvT_S4_.exit
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ar) #28
  br label %_ZNSt12_Vector_baseIN6Assimp3COB8MaterialESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN6Assimp3COB8MaterialESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt8_DestroyIPN6Assimp3COB8MaterialEEvT_S4_.exit, %bb.l
  store ptr %12, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i.i.i38, ptr %i.a, align 8
  %i.as = getelementptr inbounds nuw [152 x i8], ptr %12, i64 %6
  store ptr %i.as, ptr %i.ao, align 8
  ret void

_ZSt8_DestroyIPN6Assimp3COB8MaterialES2_EvT_S4_RSaIT0_E.exit.thread: ; preds = %bb.e
  %i.at = extractvalue { ptr, i32 } %i.y, 0
  %i.au = tail call ptr @__cxa_begin_catch(ptr %i.at) #26 ; 0 uses
  %i.av = load ptr, ptr %i.h, align 8
  %i.aw = load ptr, ptr %i.av, align 8
  tail call void %i.aw(ptr noundef nonnull align 8 dereferenceable(152) %i.h) #26, !inline_history !329
  br label %bb.o

bb.m:                                             ; preds = %bb.i
  %i.ax = extractvalue { ptr, i32 } %i.ai, 0
  %i.ay = tail call ptr @__cxa_begin_catch(ptr %i.ax) #26 ; 0 uses
  %.not4.i.i43 = icmp eq ptr %12, %.ptr
  br i1 %.not4.i.i43, label %_ZSt8_DestroyIPN6Assimp3COB8MaterialES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i44

.lr.ph.i.i44:                                     ; preds = %bb.m, %.lr.ph.i.i44
  %.05.i.i45 = phi ptr [ %i.bb, %.lr.ph.i.i44 ], [ %12, %bb.m ] ; 4 uses
  %i.az = load ptr, ptr %.05.i.i45, align 8
  %i.ba = load ptr, ptr %i.az, align 8
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(152) %.05.i.i45) #26, !inline_history !328
  %i.bb = getelementptr inbounds nuw i8, ptr %.05.i.i45, i64 152
  %.not.i.i46 = icmp eq ptr %.05.i.i45, %.0.lcssa.i.i.i.i.i
  br i1 %.not.i.i46, label %_ZSt8_DestroyIPN6Assimp3COB8MaterialES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i44, !llvm.loop !29

bb.n:                                             ; preds = %_ZNSt12_Vector_baseIN6Assimp3COB8MaterialESaIS2_EE13_M_deallocateEPS2_m.exit49
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.p unwind label %bb.q

_ZSt8_DestroyIPN6Assimp3COB8MaterialES2_EvT_S4_RSaIT0_E.exit: ; preds = %.lr.ph.i.i44, %bb.m
  %.not.i48 = icmp eq ptr %12, null
  br i1 %.not.i48, label %_ZNSt12_Vector_baseIN6Assimp3COB8MaterialESaIS2_EE13_M_deallocateEPS2_m.exit49, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPN6Assimp3COB8MaterialES2_EvT_S4_RSaIT0_E.exit.thread, %_ZSt8_DestroyIPN6Assimp3COB8MaterialES2_EvT_S4_RSaIT0_E.exit
  %13 = mul nuw nsw i64 %6, 152
  tail call void @_ZdlPvm(ptr noundef nonnull %12, i64 noundef %13) #28
  br label %_ZNSt12_Vector_baseIN6Assimp3COB8MaterialESaIS2_EE13_M_deallocateEPS2_m.exit49

_ZNSt12_Vector_baseIN6Assimp3COB8MaterialESaIS2_EE13_M_deallocateEPS2_m.exit49: ; preds = %bb.o, %_ZSt8_DestroyIPN6Assimp3COB8MaterialES2_EvT_S4_RSaIT0_E.exit
  invoke void @__cxa_rethrow() #27
          to label %bb.r unwind label %bb.n

bb.p:                                             ; preds = %bb.n
  resume { ptr, i32 } %i.bc

bb.q:                                             ; preds = %bb.n
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  tail call void @__clang_call_terminate(ptr %i.be) #30
  unreachable

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIN6Assimp3COB8MaterialESaIS2_EE13_M_deallocateEPS2_m.exit49
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp3COB8MaterialC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(152) %1) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp3COB9ChunkInfoE, i64 16), ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp3COB8MaterialE, i64 16), ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr %i.f, ptr %i.d, align 8
  %i.g = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i64, ptr %i.h, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.i, ptr %i.a, align 8
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %i.d, align 8
  %i.l = load i64, ptr %i.a, align 8
  store i64 %i.l, ptr %i.f, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.m = phi ptr [ %i.k, %.noexc.i ], [ %i.f, %bb.a ] ; 2 uses
  switch i64 %i.i, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.n = load i8, ptr %i.g, align 1
  store i8 %i.n, ptr %i.m, align 1
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.o = load i64, ptr %i.a, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.o, ptr %i.p, align 8
  %i.q = load ptr, ptr %i.d, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.u = load float, ptr %i.t, align 8
  store float %i.u, ptr %i.s, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.x = load float, ptr %i.w, align 4
  store float %i.x, ptr %i.v, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.aa = load float, ptr %i.z, align 8
  store float %i.aa, ptr %i.y, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.ab, ptr noundef nonnull align 4 dereferenceable(36) %i.ac, i64 36, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.af = load ptr, ptr %i.ae, align 8
  store ptr %i.af, ptr %i.ad, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ai = load ptr, ptr %i.ah, align 8            ; 3 uses
  store ptr %i.ai, ptr %i.ag, align 8
  %.not.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN6Assimp3COB7TextureEEC2ERKS3_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.ak = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = load i32, ptr %i.aj, align 4
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.aj, align 4
  br label %_ZNSt10shared_ptrIN6Assimp3COB7TextureEEC2ERKS3_.exit

bb.g:                                             ; preds = %bb.e
  %i.an = atomicrmw volatile add ptr %i.aj, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN6Assimp3COB7TextureEEC2ERKS3_.exit

_ZNSt10shared_ptrIN6Assimp3COB7TextureEEC2ERKS3_.exit: ; preds = %bb.d, %bb.f, %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.aq = load ptr, ptr %i.ap, align 8
  store ptr %i.aq, ptr %i.ao, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.at = load ptr, ptr %i.as, align 8            ; 3 uses
  store ptr %i.at, ptr %i.ar, align 8
  %.not.i.i.i9 = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i9, label %_ZNSt10shared_ptrIN6Assimp3COB7TextureEEC2ERKS3_.exit11, label %bb.h

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN6Assimp3COB7TextureEEC2ERKS3_.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 3 uses
  %i.av = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i10 = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i.i10, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = load i32, ptr %i.au, align 4
  %i.ax = add nsw i32 %i.aw, 1
  store i32 %i.ax, ptr %i.au, align 4
  br label %_ZNSt10shared_ptrIN6Assimp3COB7TextureEEC2ERKS3_.exit11

bb.j:                                             ; preds = %bb.h
  %i.ay = atomicrmw volatile add ptr %i.au, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN6Assimp3COB7TextureEEC2ERKS3_.exit11

_ZNSt10shared_ptrIN6Assimp3COB7TextureEEC2ERKS3_.exit11: ; preds = %_ZNSt10shared_ptrIN6Assimp3COB7TextureEEC2ERKS3_.exit, %bb.i, %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bb = load ptr, ptr %i.ba, align 8
  store ptr %i.bb, ptr %i.az, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.be = load ptr, ptr %i.bd, align 8            ; 3 uses
  store ptr %i.be, ptr %i.bc, align 8
  %.not.i.i.i12 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i12, label %_ZNSt10shared_ptrIN6Assimp3COB7TextureEEC2ERKS3_.exit14, label %bb.k

bb.k:                                             ; preds = %_ZNSt10shared_ptrIN6Assimp3COB7TextureEEC2ERKS3_.exit11
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 3 uses
  %i.bg = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i13 = icmp eq i8 %i.bg, 0
  br i1 %.not.i.i.i.i13, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = load i32, ptr %i.bf, align 4
  %i.bi = add nsw i32 %i.bh, 1
  store i32 %i.bi, ptr %i.bf, align 4
  br label %_ZNSt10shared_ptrIN6Assimp3COB7TextureEEC2ERKS3_.exit14

bb.m:                                             ; preds = %bb.k
  %i.bj = atomicrmw volatile add ptr %i.bf, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN6Assimp3COB7TextureEEC2ERKS3_.exit14

_ZNSt10shared_ptrIN6Assimp3COB7TextureEEC2ERKS3_.exit14: ; preds = %_ZNSt10shared_ptrIN6Assimp3COB7TextureEEC2ERKS3_.exit11, %bb.l, %bb.m
  ret void
}

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJRKjERA61_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcSA_SB_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(61) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(61) %3) #26
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef nonnull align 1 dereferenceable(61) %3, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %5, ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN6Assimp6Logger13formatMessageIJERKjEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull %5, ptr noundef nonnull align 4 dereferenceable(4) %4)
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
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #28
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #26
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #26
  ret void

end_hunk_0
