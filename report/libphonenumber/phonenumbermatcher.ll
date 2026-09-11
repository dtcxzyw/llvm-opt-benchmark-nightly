Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libphonenumber/original/phonenumbermatcher?download=true
inline.NumInlined: 1003
inline.NumDeleted: 395
begin_hunk_0_@_ZNK4i18n12phonenumbers18PhoneNumberMatcher25VerifyAccordingToLeniencyENS1_8LeniencyERKNS0_11PhoneNumberERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

bb.m:                                             ; preds = %bb.l
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !63, !nonnull !48, !align !64
  %i.ad = tail call noundef zeroext i1 @_ZN4i18n12phonenumbers18PhoneNumberMatcher40ContainsMoreThanOneSlashInNationalNumberERKNS0_11PhoneNumberERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_15PhoneNumberUtilE(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(64) %i.ac)
  br i1 %i.ad, label %bb.z, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = tail call noundef zeroext i1 @_ZNK4i18n12phonenumbers18PhoneNumberMatcher33IsNationalPrefixPresentIfRequiredERKNS0_11PhoneNumberE(ptr noundef nonnull align 8 dereferenceable(117) %0, ptr noundef nonnull align 8 dereferenceable(72) %2)
  br i1 %i.ae, label %bb.o, label %bb.z

bb.o:                                             ; preds = %bb.n
  %i.af = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #24 ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4i18n12phonenumbers20ConstMethodCallback4INS0_18PhoneNumberMatcherEbRKNS0_15PhoneNumberUtilERKNS0_11PhoneNumberERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorISE_SaISE_EEEE, i64 16), ptr %i.af, align 8, !tbaa !52
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %0, ptr %i.ag, align 8, !tbaa !70
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 ptrtoint (ptr @_ZNK4i18n12phonenumbers18PhoneNumberMatcher32AllNumberGroupsAreExactlyPresentERKNS0_15PhoneNumberUtilERKNS0_11PhoneNumberERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorISD_SaISD_EE to i64), ptr %i.ah, align 8, !tbaa !71
  %.repack8.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store i64 0, ptr %.repack8.i.i, align 8, !tbaa !71
  %i.ai = tail call noundef zeroext i1 @_ZNK4i18n12phonenumbers18PhoneNumberMatcher26CheckNumberGroupingIsValidERKNS0_11PhoneNumberERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_15ResultCallback4IbRKNS0_15PhoneNumberUtilES4_SC_RKSt6vectorISA_SaISA_EEEE(ptr noundef nonnull align 8 dereferenceable(117) %0, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull %i.af)
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !52
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(8) %i.af) #21
  br label %bb.z

bb.p:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  %i.am = load ptr, ptr @_ZN4i18n12phonenumbers6Logger5impl_E, align 8, !tbaa !73, !noalias !119 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !75, !noalias !119
  %i.ap = icmp slt i32 %i.ao, 2
  br i1 %i.ap, label %_ZN4i18n12phonenumbers3LOGEi.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aq = load ptr, ptr %i.am, align 8, !tbaa !52, !noalias !119
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !119
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(12) %i.am), !noalias !119, !inline_history !3
  br label %_ZN4i18n12phonenumbers3LOGEi.exit

_ZN4i18n12phonenumbers3LOGEi.exit:                ; preds = %bb.p, %bb.q
  %storemerge.i = phi ptr [ %i.am, %bb.q ], [ null, %bb.p ]
  store ptr %storemerge.i, ptr %6, align 8, !tbaa !77, !alias.scope !119
  %i.at = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4i18n12phonenumbers13LoggerHandlerlsIA57_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(57) @.str)
          to label %bb.r unwind label %bb.x

bb.r:                                             ; preds = %_ZN4i18n12phonenumbers3LOGEi.exit
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !77 ; 3 uses
  %.not.i = icmp eq ptr %i.au, null
  br i1 %.not.i, label %_ZN4i18n12phonenumbers13LoggerHandlerlsIiEERS1_RKT_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  invoke void @_ZN4i18n12phonenumbers15ConvertToStringIiE6DoWorkB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, i32 noundef %1)
          to label %.noexc unwind label %bb.y

.noexc:                                           ; preds = %bb.s
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !52
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(12) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %.noexc
  %i.ay = load ptr, ptr %5, align 8, !tbaa !34    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.t
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !37
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %_ZN4i18n12phonenumbers13LoggerHandlerlsIiEERS1_RKT_.exit

bb.u:                                             ; preds = %.noexc
  %i.bd = landingpad { ptr, i32 }
          cleanup
  %i.be = load ptr, ptr %5, align 8, !tbaa !34    ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.u
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !37
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %.body

_ZN4i18n12phonenumbers13LoggerHandlerlsIiEERS1_RKT_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.r
  %i.bj = load ptr, ptr %6, align 8, !tbaa !77    ; 3 uses
  %.not.i37 = icmp eq ptr %i.bj, null
  br i1 %.not.i37, label %_ZN4i18n12phonenumbers13LoggerHandlerD2Ev.exit, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZN4i18n12phonenumbers13LoggerHandlerlsIiEERS1_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.bk, ptr %4, align 8, !tbaa !33
  store i8 10, ptr %i.bk, align 8, !tbaa !37
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 1, ptr %i.bl, align 8, !tbaa !35
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 0, ptr %i.bm, align 1, !tbaa !37
  %i.bn = load ptr, ptr %i.bj, align 8, !tbaa !52
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8
  invoke void %i.bp(ptr noundef nonnull align 8 dereferenceable(12) %i.bj, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %._crit_edge.i.i.i
  %i.bq = load ptr, ptr %4, align 8, !tbaa !34    ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.bk
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i38: ; preds = %bb.v
  %i.bs = load i64, ptr %i.bk, align 8, !tbaa !37
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i39: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %_ZN4i18n12phonenumbers13LoggerHandlerD2Ev.exit

bb.w:                                             ; preds = %._crit_edge.i.i.i
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #22
  unreachable

_ZN4i18n12phonenumbers13LoggerHandlerD2Ev.exit:   ; preds = %_ZN4i18n12phonenumbers13LoggerHandlerlsIiEERS1_RKT_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.z

bb.x:                                             ; preds = %_ZN4i18n12phonenumbers3LOGEi.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.y:                                             ; preds = %bb.s
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %bb.x
  %.pn = phi { ptr, i32 } [ %i.bw, %bb.x ], [ %i.bx, %bb.y ], [ %i.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ]
  call void @_ZN4i18n12phonenumbers13LoggerHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  resume { ptr, i32 } %.pn

bb.z:                                             ; preds = %bb.o, %bb.k, %bb.l, %bb.m, %bb.n, %bb.j, %bb.f, %bb.g, %bb.h, %bb.i, %bb.c, %bb.d, %_ZN4i18n12phonenumbers13LoggerHandlerD2Ev.exit, %bb.e, %bb.b
  %.033 = phi i1 [ false, %_ZN4i18n12phonenumbers13LoggerHandlerD2Ev.exit ], [ %i.c, %bb.b ], [ %i.i, %bb.e ], [ false, %bb.k ], [ false, %bb.c ], [ false, %bb.f ], [ %i.ai, %bb.o ], [ false, %bb.d ], [ false, %bb.i ], [ false, %bb.h ], [ false, %bb.g ], [ %i.t, %bb.j ], [ false, %bb.n ], [ false, %bb.m ], [ false, %bb.l ]
  ret i1 %.033
}

declare void @_ZN4i18n12phonenumbers16PhoneNumberMatch9set_startEi(ptr noundef nonnull align 8 dereferenceable(112), i32 noundef) local_unnamed_addr #5

declare void @_ZN4i18n12phonenumbers16PhoneNumberMatch14set_raw_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

declare void @_ZN4i18n12phonenumbers16PhoneNumberMatch10set_numberERKNS0_11PhoneNumberE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN4i18n12phonenumbers11PhoneNumberD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72)) unnamed_addr #6

declare noundef zeroext i1 @_ZNK4i18n12phonenumbers15PhoneNumberUtil16IsPossibleNumberERKNS0_11PhoneNumberE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK4i18n12phonenumbers15PhoneNumberUtil13IsValidNumberERKNS0_11PhoneNumberE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN4i18n12phonenumbers12_GLOBAL__N_123ContainsOnlyValidXCharsERKNS0_11PhoneNumberERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_15PhoneNumberUtilE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(64) %2) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.c = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.2, i64 noundef 0, i64 noundef 2) #21 ; 2 uses
  %.not71 = icmp eq i64 %i.c, -1
  br i1 %.not71, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.p
  %.03272 = phi i64 [ %i.c, %.lr.ph ], [ %i.bq, %bb.p ] ; 7 uses
  %i.j = load i64, ptr %i.d, align 8, !tbaa !35   ; 5 uses
  %i.k = add i64 %i.j, -1
  %i.l = icmp ult i64 %.03272, %i.k
  br i1 %i.l, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.03272, 1                   ; 3 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !34     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.m ; 3 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !37
  %i.q = and i8 %i.p, -33
  %or.cond = icmp eq i8 %i.q, 88
  br i1 %or.cond, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i, label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %5 = sub nuw i64 %i.j, %i.m                     ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !125)
  store ptr %i.h, ptr %3, align 8, !tbaa !33, !alias.scope !125
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21, !noalias !125
  store i64 %5, ptr %i.b, align 8, !tbaa !36, !noalias !125
  %i.r = icmp ugt i64 %5, 15
  br i1 %i.r, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.s = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.s, ptr %3, align 8, !tbaa !34, !alias.scope !125
  %i.t = load i64, ptr %i.b, align 8, !tbaa !36, !noalias !125
  store i64 %i.t, ptr %i.h, align 8, !tbaa !37, !alias.scope !125
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc10.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.u = phi ptr [ %i.s, %.noexc10.i.i ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %5, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.v = load i8, ptr %i.o, align 1, !tbaa !37
  store i8 %i.v, ptr %i.u, align 1, !tbaa !37
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr nonnull align 1 %i.o, i64 %5, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.d, %bb.e
  %i.w = load i64, ptr %i.b, align 8, !tbaa !36, !noalias !125 ; 2 uses
  store i64 %i.w, ptr %i.i, align 8, !tbaa !35, !alias.scope !125
  %i.x = load ptr, ptr %3, align 8, !tbaa !34, !alias.scope !125
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.w
  store i8 0, ptr %i.y, align 1, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21, !noalias !125
  %i.z = invoke noundef i32 @_ZNK4i18n12phonenumbers15PhoneNumberUtil26IsNumberMatchWithOneStringERKNS0_11PhoneNumberERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  %.not38 = icmp eq i32 %i.z, 3
  %i.aa = load ptr, ptr %3, align 8, !tbaa !34    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.h
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.ac = load i64, ptr %i.h, align 8, !tbaa !37
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br i1 %.not38, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge, label %.critedge

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pre90 = add i64 %.03272, 2
  br label %bb.p

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = load ptr, ptr %3, align 8, !tbaa !34    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.h
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %bb.g
  %i.ah = load i64, ptr %i.h, align 8, !tbaa !37
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.q

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.aj = sub nuw i64 %i.j, %.03272               ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !126)
  %i.ak = icmp ugt i64 %.03272, %i.j
  br i1 %i.ak, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i44

bb.i:                                             ; preds = %bb.h
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15, i64 noundef %.03272, i64 noundef %i.j) #25, !noalias !126
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i44: ; preds = %bb.h
  store ptr %i.e, ptr %4, align 8, !tbaa !33, !alias.scope !126
  %i.al = getelementptr inbounds nuw i8, ptr %i.n, i64 %.03272 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21, !noalias !126
  store i64 %i.aj, ptr %i.a, align 8, !tbaa !36, !noalias !126
  %i.am = icmp ugt i64 %i.aj, 15
  br i1 %i.am, label %.noexc10.i.i47, label %._crit_edge.i.i.i46

.noexc10.i.i47:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i44
  %i.an = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.an, ptr %4, align 8, !tbaa !34, !alias.scope !126
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !36, !noalias !126
  store i64 %i.ao, ptr %i.e, align 8, !tbaa !37, !alias.scope !126
  br label %._crit_edge.i.i.i46

._crit_edge.i.i.i46:                              ; preds = %.noexc10.i.i47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i44
  %i.ap = phi ptr [ %i.an, %.noexc10.i.i47 ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i44 ] ; 2 uses
  switch i64 %i.aj, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit48
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i46
  %i.aq = load i8, ptr %i.al, align 1, !tbaa !37
  store i8 %i.aq, ptr %i.ap, align 1, !tbaa !37
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit48

bb.k:                                             ; preds = %._crit_edge.i.i.i46
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ap, ptr align 1 %i.al, i64 %i.aj, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit48: ; preds = %._crit_edge.i.i.i46, %bb.j, %bb.k
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !36, !noalias !126 ; 2 uses
  store i64 %i.ar, ptr %i.f, align 8, !tbaa !35, !alias.scope !126
  %i.as = load ptr, ptr %4, align 8, !tbaa !34, !alias.scope !126
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ar
  store i8 0, ptr %i.at, align 1, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21, !noalias !126
  invoke void @_ZNK4i18n12phonenumbers15PhoneNumberUtil19NormalizeDigitsOnlyEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull %4)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit48
  %i.au = load ptr, ptr %i.g, align 8, !tbaa !79
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = and i64 %i.av, -4
  %i.ax = inttoptr i64 %i.aw to ptr               ; 2 uses
  %i.ay = load i64, ptr %i.f, align 8, !tbaa !35  ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !35
  %i.bb = icmp eq i64 %i.ay, %i.ba
  br i1 %i.bb, label %bb.m, label %._ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge

._ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge: ; preds = %bb.l
  %.pre = load ptr, ptr %4, align 8, !tbaa !34
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.m:                                             ; preds = %bb.l
  %i.bc = icmp eq i64 %i.ay, 0
  %.pre89 = load ptr, ptr %4, align 8, !tbaa !34  ; 3 uses
  br i1 %i.bc, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = load ptr, ptr %i.ax, align 8, !tbaa !34
  %bcmp.i.i = call i32 @bcmp(ptr %.pre89, ptr %i.bd, i64 %i.ay)
  %i.be = icmp ne i32 %bcmp.i.i, 0
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %._ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge, %bb.m, %bb.n
  %i.bf = phi ptr [ %.pre, %._ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge ], [ %.pre89, %bb.n ], [ %.pre89, %bb.m ] ; 2 uses
  %i.bg = phi i1 [ true, %._ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge ], [ %i.be, %bb.n ], [ false, %bb.m ]
  %i.bh = icmp eq ptr %i.bf, %i.e
  br i1 %i.bh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i50: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.bi = icmp ult i64 %i.ay, 16
  call void @llvm.assume(i1 %i.bi)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.bj = load i64, ptr %i.e, align 8, !tbaa !37
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bk) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i50, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br i1 %i.bg, label %.critedge, label %bb.p

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit48
  %i.bl = landingpad { ptr, i32 }
          cleanup
  %i.bm = load ptr, ptr %4, align 8, !tbaa !34    ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.e
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %bb.o
  %i.bo = load i64, ptr %i.e, align 8, !tbaa !37
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.q

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
  %.pre-phi = phi i64 [ %.pre90, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51 ]
  %i.bq = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.2, i64 noundef %.pre-phi, i64 noundef 2) #21 ; 2 uses
  %.not = icmp eq i64 %i.bq, -1
  br i1 %.not, label %.critedge, label %bb.b, !llvm.loop !124

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43
  %.pn = phi { ptr, i32 } [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43 ], [ %i.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54 ]
  resume { ptr, i32 } %.pn

.critedge:                                        ; preds = %bb.p, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, %bb.a
  %.4 = phi i1 [ true, %bb.a ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ true, %bb.b ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51 ], [ true, %bb.p ]
  ret i1 %.4
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK4i18n12phonenumbers18PhoneNumberMatcher33IsNationalPrefixPresentIfRequiredERKNS0_11PhoneNumberE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(117) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.c = load i32, ptr %i.b, align 8, !tbaa !37
  %.not = icmp eq i32 %i.c, 20
  br i1 %.not, label %bb.b, label %bb.ab

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !35
  store i8 0, ptr %i.d, align 8, !tbaa !37
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
end_hunk_0
