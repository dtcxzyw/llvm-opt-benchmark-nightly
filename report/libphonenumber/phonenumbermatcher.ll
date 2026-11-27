Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libphonenumber/original/phonenumbermatcher?download=true
inline.NumInlined: 1003
inline.NumDeleted: 396
begin_hunk_0_@_ZN4i18n12phonenumbers18PhoneNumberMatcher40ContainsMoreThanOneSlashInNationalNumberERKNS0_11PhoneNumberERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_15PhoneNumberUtilE:bb.a
.noexc10.i.i:                                     ; preds = %bb.d
  %i.n = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.n, ptr %3, align 8, !tbaa !34, !alias.scope !129
  %i.o = load i64, ptr %i.a, align 8, !tbaa !36, !noalias !129
  store i64 %i.o, ptr %i.k, align 8, !tbaa !37, !alias.scope !129
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc10.i.i, %bb.d
  %i.p = phi ptr [ %i.n, %.noexc10.i.i ], [ %i.k, %bb.d ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.q = load i8, ptr %i.l, align 1, !tbaa !37
  store i8 %i.q, ptr %i.p, align 1, !tbaa !37
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.l, i64 %spec.select.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.e, %bb.f
  %i.r = load i64, ptr %i.a, align 8, !tbaa !36, !noalias !129 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.r, ptr %i.s, align 8, !tbaa !35, !alias.scope !129
  %i.t = load ptr, ptr %3, align 8, !tbaa !34, !alias.scope !129
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21, !noalias !129
  invoke void @_ZNK4i18n12phonenumbers15PhoneNumberUtil19NormalizeDigitsOnlyEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull %3)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.w = load i32, ptr %i.v, align 8, !tbaa !37
  invoke void @_ZN4i18n12phonenumbers10SimpleItoaB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i32 noundef %i.w)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.x = load i64, ptr %i.s, align 8, !tbaa !35   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !35   ; 2 uses
  %i.aa = icmp eq i64 %i.x, %i.z
  br i1 %i.aa, label %bb.i, label %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge

._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge: ; preds = %bb.h
  %.pre = load ptr, ptr %4, align 8, !tbaa !34
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.i:                                             ; preds = %bb.h
  %i.ab = icmp eq i64 %i.x, 0
  %.pre28 = load ptr, ptr %4, align 8, !tbaa !34  ; 3 uses
  br i1 %i.ab, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = load ptr, ptr %3, align 8, !tbaa !34
  %bcmp.i = call i32 @bcmp(ptr %i.ac, ptr %.pre28, i64 %i.x)
  %i.ad = icmp eq i32 %bcmp.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge, %bb.i, %bb.j
  %i.ae = phi ptr [ %.pre, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge ], [ %.pre28, %bb.j ], [ %.pre28, %bb.i ] ; 2 uses
  %i.af = phi i1 [ false, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge ], [ %i.ad, %bb.j ], [ true, %bb.i ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.ae, %i.ag
  br i1 %i.ah, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.ai = icmp ult i64 %i.z, 16
  call void @llvm.assume(i1 %i.ai)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.aj = load i64, ptr %i.ag, align 8, !tbaa !37
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ak) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br i1 %i.af, label %bb.k, label %bb.n

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.al = add nuw i64 %i.e, 1
  %i.am = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 noundef signext 47, i64 noundef %i.al) #21
  %i.an = icmp ne i64 %i.am, -1
  br label %bb.n

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.m:                                             ; preds = %bb.g
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.o

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.k
  %.018 = phi i1 [ %i.an, %bb.k ], [ undef, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.aq = load ptr, ptr %3, align 8, !tbaa !34    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.k
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.n
  %i.as = load i64, ptr %i.k, align 8, !tbaa !37
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br i1 %i.af, label %bb.q, label %bb.p

bb.o:                                             ; preds = %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.m ], [ %i.ao, %bb.l ]
  %i.au = load ptr, ptr %3, align 8, !tbaa !34    ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.k
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.o
  %i.aw = load i64, ptr %i.k, align 8, !tbaa !37
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %.pn

bb.p:                                             ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %bb.b, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ %.018, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ], [ true, %bb.p ], [ false, %bb.b ]
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN4i18n12phonenumbers12_GLOBAL__N_128AllNumberGroupsRemainGroupedERKNS0_15PhoneNumberUtilERKNS0_11PhoneNumberERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorISD_SaISD_EE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = load i32, ptr %i.c, align 8, !tbaa !37
  %.not = icmp eq i32 %i.d, 20
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.f = load i32, ptr %i.e, align 8, !tbaa !37
  call void @_ZN4i18n12phonenumbers10SimpleItoaB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i32 noundef %i.f)
  %i.g = load ptr, ptr %4, align 8, !tbaa !34
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !35
  %i.j = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.g, i64 noundef 0, i64 noundef %i.i) #21
  %i.k = load i64, ptr %i.h, align 8, !tbaa !35   ; 2 uses
  %i.l = add i64 %i.k, %i.j
  %i.m = load ptr, ptr %4, align 8, !tbaa !34     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.b
  %i.p = icmp ult i64 %i.k, 16
  call void @llvm.assume(i1 %i.p)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.q = load i64, ptr %i.n, align 8, !tbaa !37
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.r) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  %.044 = phi i64 [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 0, %bb.a ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !82
  %i.u = load ptr, ptr %3, align 8, !tbaa !83     ; 3 uses
  %.not59201.not = icmp eq ptr %i.t, %i.u
  br i1 %.not59201.not, label %._crit_edge, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit.lr.ph

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit.lr.ph: ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.af = load ptr, ptr %i.u, align 8, !tbaa !34
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !35
  %i.ai = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.af, i64 noundef %.044, i64 noundef %i.ah) #21 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, -1
  br i1 %i.aj, label %.thread, label %bb.d

bb.d:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit.lr.ph
  %i.ak = load ptr, ptr %i.s, align 8, !tbaa !82  ; 2 uses
  %i.al = load ptr, ptr %3, align 8, !tbaa !83    ; 4 uses
  %.not.i.i62.peel.not = icmp eq ptr %i.ak, %i.al
  br i1 %.not.i.i62.peel.not, label %.loopexit246, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !35
  %i.ar = add i64 %i.aq, %i.ai                    ; 7 uses
  %i.as = load i64, ptr %i.v, align 8, !tbaa !35
  %i.at = icmp ult i64 %i.ar, %i.as
  br i1 %i.at, label %bb.f, label %bb.r

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store ptr %i.w, ptr %5, align 8, !tbaa !33
  store i64 0, ptr %i.x, align 8, !tbaa !35
  store i8 0, ptr %i.w, align 8, !tbaa !37
  %i.au = load i32, ptr %i.y, align 8, !tbaa !37
  invoke void @_ZNK4i18n12phonenumbers15PhoneNumberUtil27GetRegionCodeForCountryCodeEiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %i.au, ptr noundef nonnull %5)
          to label %bb.g unwind label %bb.w

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store ptr %i.z, ptr %6, align 8, !tbaa !33
  store i64 0, ptr %i.aa, align 8, !tbaa !35
  store i8 0, ptr %i.z, align 8, !tbaa !37
  invoke void @_ZNK4i18n12phonenumbers15PhoneNumberUtil21GetNddPrefixForRegionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbPS7_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %5, i1 noundef zeroext true, ptr noundef nonnull %6)
          to label %bb.h unwind label %.loopexit.split-lp

bb.h:                                             ; preds = %bb.g
  %i.av = load i64, ptr %i.aa, align 8, !tbaa !35
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.q, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = load i64, ptr %i.v, align 8, !tbaa !35  ; 2 uses
  %.not.i.peel = icmp ult i64 %i.ar, %i.ax
  br i1 %.not.i.peel, label %bb.j, label %bb.t

bb.j:                                             ; preds = %bb.i
  %i.ay = load ptr, ptr %2, align 8, !tbaa !34
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ar
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !37
  %i.bb = sext i8 %i.ba to i32
  %isdigittmp.peel = add nsw i32 %i.bb, -48
  %isdigit.peel = icmp ult i32 %isdigittmp.peel, 10
  br i1 %isdigit.peel, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  store ptr %i.ab, ptr %7, align 8, !tbaa !33
  store i64 0, ptr %i.ac, align 8, !tbaa !35
  store i8 0, ptr %i.ab, align 8, !tbaa !37
  invoke void @_ZNK4i18n12phonenumbers15PhoneNumberUtil28GetNationalSignificantNumberERKNS0_11PhoneNumberEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull %7)
          to label %bb.l unwind label %bb.x

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.bc = load ptr, ptr %i.s, align 8, !tbaa !82
  %i.bd = load ptr, ptr %3, align 8, !tbaa !83    ; 2 uses
  %.not.i.i64.not.peel = icmp eq ptr %i.bc, %i.bd
  br i1 %.not.i.i64.not.peel, label %bb.u, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit66.peel

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit66.peel: ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !35
  %i.bg = sub i64 %i.ar, %i.bf                    ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !137)
  %i.bh = load i64, ptr %i.v, align 8, !tbaa !35, !noalias !137 ; 3 uses
  %i.bi = icmp ugt i64 %i.bg, %i.bh
  br i1 %i.bi, label %bb.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.peel: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit66.peel
  store ptr %i.ad, ptr %8, align 8, !tbaa !33, !alias.scope !137
  %i.bj = load ptr, ptr %2, align 8, !tbaa !34, !noalias !137
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bg ; 2 uses
  %i.bl = sub nuw i64 %i.bh, %i.bg                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21, !noalias !137
  store i64 %i.bl, ptr %i.b, align 8, !tbaa !36, !noalias !137
  %i.bm = icmp ugt i64 %i.bl, 15
  br i1 %i.bm, label %.noexc10.i.i.peel, label %._crit_edge.i.i.i.peel

.noexc10.i.i.peel:                                ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.peel
  %i.bn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc68.peel unwind label %.loopexit.split-lp106 ; 2 uses

.noexc68.peel:                                    ; preds = %.noexc10.i.i.peel
  store ptr %i.bn, ptr %8, align 8, !tbaa !34, !alias.scope !137
  %i.bo = load i64, ptr %i.b, align 8, !tbaa !36, !noalias !137
  store i64 %i.bo, ptr %i.ad, align 8, !tbaa !37, !alias.scope !137
  br label %._crit_edge.i.i.i.peel

._crit_edge.i.i.i.peel:                           ; preds = %.noexc68.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.peel
  %i.bp = phi ptr [ %i.bn, %.noexc68.peel ], [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.peel ] ; 2 uses
  switch i64 %i.bl, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %bb.o
  ]

bb.m:                                             ; preds = %._crit_edge.i.i.i.peel
  %i.bq = load i8, ptr %i.bk, align 1, !tbaa !37
  store i8 %i.bq, ptr %i.bp, align 1, !tbaa !37
  br label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i.i.peel
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bp, ptr align 1 %i.bk, i64 %i.bl, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %._crit_edge.i.i.i.peel
  %i.br = load i64, ptr %i.b, align 8, !tbaa !36, !noalias !137 ; 2 uses
  store i64 %i.br, ptr %i.ae, align 8, !tbaa !35, !alias.scope !137
  %i.bs = load ptr, ptr %8, align 8, !tbaa !34, !alias.scope !137
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.br
  store i8 0, ptr %i.bt, align 1, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21, !noalias !137
  %i.bu = invoke noundef zeroext i1 @_ZN4i18n12phonenumbers15HasPrefixStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.p unwind label %bb.y

bb.p:                                             ; preds = %bb.o
  %i.bv = load ptr, ptr %8, align 8, !tbaa !34    ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.ad
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.peel: ; preds = %bb.p
  %i.bx = load i64, ptr %i.ad, align 8, !tbaa !37
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.peel: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.bz = load ptr, ptr %7, align 8, !tbaa !34    ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.ab
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.peel
  %i.cb = load i64, ptr %i.ab, align 8, !tbaa !37
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cc) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.peel, %bb.j, %bb.h
  %.148.peel = phi i1 [ %i.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.peel ], [ undef, %bb.j ], [ undef, %bb.h ]
  %cond1.peel = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.peel ], [ true, %bb.j ], [ true, %bb.h ]
  %i.cd = load ptr, ptr %6, align 8, !tbaa !34    ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.z
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.peel: ; preds = %bb.q
  %i.cf = load i64, ptr %i.z, align 8, !tbaa !37
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.peel: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.ch = load ptr, ptr %5, align 8, !tbaa !34    ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.w
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.peel
  %i.cj = load i64, ptr %i.w, align 8, !tbaa !37
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br i1 %cond1.peel, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.peel._crit_edge, label %.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.peel._crit_edge: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.peel
  %.pre = load ptr, ptr %i.s, align 8, !tbaa !82
  %.pre269 = load ptr, ptr %3, align 8, !tbaa !83 ; 2 uses
  %.pre272 = ptrtoint ptr %.pre to i64
  %.pre273 = ptrtoint ptr %.pre269 to i64
  %.pre275 = sub i64 %.pre272, %.pre273
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.peel._crit_edge, %bb.e
  %.pre-phi278.in = phi i64 [ %.pre275, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.peel._crit_edge ], [ %i.ao, %bb.e ]
  %i.cl = phi ptr [ %.pre269, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.peel._crit_edge ], [ %i.al, %bb.e ]
  %.not59.peel = icmp ugt i64 %.pre-phi278.in, 32
  br i1 %.not59.peel, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit, label %._crit_edge

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit: ; preds = %bb.r, %bb.ac
  %i.cm = phi ptr [ %i.cu, %bb.ac ], [ %i.cl, %bb.r ]
  %.043204 = phi i64 [ %i.ds, %bb.ac ], [ 1, %bb.r ] ; 5 uses
  %.145203 = phi i64 [ %i.dr, %bb.ac ], [ %i.ar, %bb.r ]
  %i.cn = getelementptr inbounds nuw [32 x i8], ptr %i.cm, i64 %.043204 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !34
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !35
  %i.cr = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.co, i64 noundef %.145203, i64 noundef %i.cq) #21 ; 2 uses
  %i.cs = icmp eq i64 %i.cr, -1
  br i1 %i.cs, label %.thread, label %bb.s

bb.s:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit
  %i.ct = load ptr, ptr %i.s, align 8, !tbaa !82
  %i.cu = load ptr, ptr %3, align 8, !tbaa !83    ; 3 uses
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = ashr exact i64 %i.cx, 5                 ; 3 uses
  %.not.i.i62 = icmp ult i64 %.043204, %i.cy
  br i1 %.not.i.i62, label %bb.ac, label %.loopexit246

.loopexit246:                                     ; preds = %bb.s, %bb.d
  %.lcssa226 = phi i64 [ 0, %bb.d ], [ %i.cy, %bb.s ]
  %.043204.lcssa216 = phi i64 [ 0, %bb.d ], [ %.043204, %bb.s ]
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.18, i64 noundef %.043204.lcssa216, i64 noundef %.lcssa226) #25
  unreachable

bb.t:                                             ; preds = %bb.i
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.3, i64 noundef %i.ar, i64 noundef %i.ax) #25
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.l
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.18, i64 noundef 0, i64 noundef 0) #25
          to label %.noexc65 unwind label %.loopexit.split-lp106

.noexc65:                                         ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit66.peel
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15, i64 noundef %i.bg, i64 noundef %i.bh) #25
          to label %.noexc67 unwind label %.loopexit.split-lp106, !noalias !138

.noexc67:                                         ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.f
  %lpad.loopexit.split-lp250 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.loopexit.split-lp:                               ; preds = %bb.g, %bb.t
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.x:                                             ; preds = %bb.k
  %lpad.loopexit.split-lp257 = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.loopexit.split-lp106:                            ; preds = %.noexc10.i.i.peel, %bb.u, %bb.v
  %lpad.loopexit.split-lp108 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

bb.y:                                             ; preds = %bb.o
  %lpad.loopexit.split-lp267 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre271 = load ptr, ptr %8, align 8, !tbaa !34 ; 2 uses
  %i.cz = icmp eq ptr %.pre271, %i.ad
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %bb.y
  %i.da = load i64, ptr %i.ad, align 8, !tbaa !37
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %.pre271, i64 noundef %i.db) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %bb.y, %.loopexit.split-lp106, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp267, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75 ], [ %lpad.loopexit.split-lp108, %.loopexit.split-lp106 ], [ %lpad.loopexit.split-lp267, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.z

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, %bb.x
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77 ], [ %lpad.loopexit.split-lp257, %bb.x ]
  %i.dc = load ptr, ptr %7, align 8, !tbaa !34    ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.ab
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78: ; preds = %bb.z
  %i.de = load i64, ptr %i.ab, align 8, !tbaa !37
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.df) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.dg = load ptr, ptr %6, align 8, !tbaa !34    ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.z
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87: ; preds = %bb.aa
  %i.di = load i64, ptr %i.z, align 8, !tbaa !37
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dj) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, %bb.w
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89 ], [ %lpad.loopexit.split-lp250, %bb.w ]
  %i.dk = load ptr, ptr %5, align 8, !tbaa !34    ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.w
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90: ; preds = %bb.ab
  %i.dm = load i64, ptr %i.w, align 8, !tbaa !37
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.dn) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  resume { ptr, i32 } %.pn.pn.pn.pn

bb.ac:                                            ; preds = %bb.s
  %i.do = getelementptr inbounds nuw [32 x i8], ptr %i.cu, i64 %.043204
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !35
  %i.dr = add i64 %i.dq, %i.cr                    ; 2 uses
  %i.ds = add nuw i64 %.043204, 1                 ; 2 uses
  %.not59 = icmp ult i64 %i.ds, %i.cy
  br i1 %.not59, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit, label %._crit_edge, !llvm.loop !134

._crit_edge:                                      ; preds = %bb.ac, %bb.r, %bb.c
  %.145.lcssa = phi i64 [ %.044, %bb.c ], [ %i.ar, %bb.r ], [ %i.dr, %bb.ac ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !139)
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !35, !noalias !139 ; 3 uses
  %i.dv = icmp ugt i64 %.145.lcssa, %i.du
  br i1 %i.dv, label %bb.ad, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i93

bb.ad:                                            ; preds = %._crit_edge
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15, i64 noundef %.145.lcssa, i64 noundef %i.du) #25, !noalias !139
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i93: ; preds = %._crit_edge
  %i.dw = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  store ptr %i.dw, ptr %9, align 8, !tbaa !33, !alias.scope !139
  %i.dx = load ptr, ptr %2, align 8, !tbaa !34, !noalias !139
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %.145.lcssa ; 2 uses
  %i.dz = sub nuw i64 %i.du, %.145.lcssa          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21, !noalias !139
  store i64 %i.dz, ptr %i.a, align 8, !tbaa !36, !noalias !139
  %i.ea = icmp ugt i64 %i.dz, 15
  br i1 %i.ea, label %.noexc10.i.i95, label %._crit_edge.i.i.i94

.noexc10.i.i95:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i93
  %i.eb = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.eb, ptr %9, align 8, !tbaa !34, !alias.scope !139
  %i.ec = load i64, ptr %i.a, align 8, !tbaa !36, !noalias !139
  store i64 %i.ec, ptr %i.dw, align 8, !tbaa !37, !alias.scope !139
  br label %._crit_edge.i.i.i94

._crit_edge.i.i.i94:                              ; preds = %.noexc10.i.i95, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i93
  %i.ed = phi ptr [ %i.eb, %.noexc10.i.i95 ], [ %i.dw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i93 ] ; 2 uses
  switch i64 %i.dz, label %bb.af [
    i64 1, label %bb.ae
    i64 0, label %bb.ag
  ]

bb.ae:                                            ; preds = %._crit_edge.i.i.i94
end_hunk_0
begin_hunk_1_@_ZNK4i18n12phonenumbers18PhoneNumberMatcher32AllNumberGroupsAreExactlyPresentERKNS0_15PhoneNumberUtilERKNS0_11PhoneNumberERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorISD_SaISD_EE:bb.a

_ZN5boost10scoped_ptrIN4i18n12phonenumbers11RegExpInputEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %bb.u
  ret i1 %.127

bb.v:                                             ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn33 = phi { ptr, i32 } [ %i.bh, %bb.k ], [ %i.cl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.ec = load ptr, ptr %6, align 8, !tbaa !34    ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.i
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.v
  %i.ee = load i64, ptr %i.i, align 8, !tbaa !37
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.ef) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.eg = icmp eq ptr %i.h, null
  br i1 %i.eg, label %_ZN5boost10scoped_ptrIN4i18n12phonenumbers11RegExpInputEED2Ev.exit57, label %bb.w

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  %i.eh = load ptr, ptr %i.h, align 8, !tbaa !52
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8
  call void %i.ej(ptr noundef nonnull align 8 dereferenceable(8) %i.h) #21, !inline_history !2
  br label %_ZN5boost10scoped_ptrIN4i18n12phonenumbers11RegExpInputEED2Ev.exit57

_ZN5boost10scoped_ptrIN4i18n12phonenumbers11RegExpInputEED2Ev.exit57: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %bb.w
  resume { ptr, i32 } %.pn33
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN4i18n12phonenumbers13LoggerHandlerlsIA57_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(57) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !77     ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !33, !alias.scope !146
  %i.d = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(57) %1) #21, !noalias !146 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21, !noalias !146
  store i64 %i.d, ptr %i.a, align 8, !tbaa !36, !noalias !146
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !34, !alias.scope !146
  %i.g = load i64, ptr %i.a, align 8, !tbaa !36, !noalias !146
  store i64 %i.g, ptr %i.c, align 8, !tbaa !37, !alias.scope !146
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.b
  %i.h = phi ptr [ %i.f, %.noexc.i.i ], [ %i.c, %bb.b ] ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZN4i18n12phonenumbers15ConvertToStringIA57_cE6DoWorkB5cxx11ERA57_Kc.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.i = load i8, ptr %1, align 1, !tbaa !37, !noalias !146
  store i8 %i.i, ptr %i.h, align 1, !tbaa !37
  br label %_ZN4i18n12phonenumbers15ConvertToStringIA57_cE6DoWorkB5cxx11ERA57_Kc.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 dereferenceable(57) %1, i64 %i.d, i1 false)
  br label %_ZN4i18n12phonenumbers15ConvertToStringIA57_cE6DoWorkB5cxx11ERA57_Kc.exit

_ZN4i18n12phonenumbers15ConvertToStringIA57_cE6DoWorkB5cxx11ERA57_Kc.exit: ; preds = %._crit_edge.i.i.i, %bb.c, %bb.d
  %i.j = load i64, ptr %i.a, align 8, !tbaa !36, !noalias !146 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !35, !alias.scope !146
  %i.l = load ptr, ptr %2, align 8, !tbaa !34, !alias.scope !146
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21, !noalias !146
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !52
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(12) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN4i18n12phonenumbers15ConvertToStringIA57_cE6DoWorkB5cxx11ERA57_Kc.exit
  %i.q = load ptr, ptr %2, align 8, !tbaa !34     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.s = load i64, ptr %i.c, align 8, !tbaa !37
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.g

bb.f:                                             ; preds = %_ZN4i18n12phonenumbers15ConvertToStringIA57_cE6DoWorkB5cxx11ERA57_Kc.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %2, align 8, !tbaa !34     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.c
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.x = load i64, ptr %i.c, align 8, !tbaa !37
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %i.u

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4i18n12phonenumbers13LoggerHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !77     ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !33
  store i8 10, ptr %i.b, align 8, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 1, ptr %i.c, align 8, !tbaa !35
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 0, ptr %i.d, align 1, !tbaa !37
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  invoke void %i.g(ptr noundef nonnull align 8 dereferenceable(12) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %1, align 8, !tbaa !34     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.b
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.b, align 8, !tbaa !37
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  ret void

bb.e:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #22
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4i18n12phonenumbers18PhoneNumberMatcher17ExtractInnerMatchERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiPNS0_16PhoneNumberMatchE(ptr noundef nonnull align 8 dereferenceable(117) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !30     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 544
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !103  ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !151  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !151
  %.not108.not = icmp eq ptr %i.e, %i.g
  br i1 %.not108.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br label %.peel.begin

.peel.begin:                                      ; preds = %.lr.ph, %_ZN5boost10scoped_ptrIN4i18n12phonenumbers11RegExpInputEED2Ev.exit
  %i.q = phi ptr [ %i.b, %.lr.ph ], [ %i.cx, %_ZN5boost10scoped_ptrIN4i18n12phonenumbers11RegExpInputEED2Ev.exit ]
  %.sroa.072.0109 = phi ptr [ %i.e, %.lr.ph ], [ %i.cw, %_ZN5boost10scoped_ptrIN4i18n12phonenumbers11RegExpInputEED2Ev.exit ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 440
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !60   ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !52
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = call noundef ptr %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store ptr %i.h, ptr %4, align 8, !tbaa !33
  store i64 0, ptr %i.i, align 8, !tbaa !35
  store i8 0, ptr %i.h, align 8, !tbaa !37
  %i.x = load ptr, ptr %.sroa.072.0109, align 8, !tbaa !106 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !52
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = invoke noundef zeroext i1 %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef %i.w, i1 noundef zeroext false, ptr noundef nonnull %4, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %_ZNK4i18n12phonenumbers6RegExp14FindAndConsumeEPNS0_11RegExpInputEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.peel unwind label %.loopexit.split-lp.loopexit.split-lp, !inline_history !5

_ZNK4i18n12phonenumbers6RegExp14FindAndConsumeEPNS0_11RegExpInputEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.peel: ; preds = %.peel.begin
  br i1 %i.ab, label %bb.b, label %.critedge

bb.b:                                             ; preds = %_ZNK4i18n12phonenumbers6RegExp14FindAndConsumeEPNS0_11RegExpInputEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.peel
  %i.ac = load i32, ptr %i.j, align 4, !tbaa !39
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.ae = load i64, ptr %i.k, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !52
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  invoke void %i.ah(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.w)
          to label %bb.d unwind label %.loopexit.split-lp121.loopexit.split-lp

bb.d:                                             ; preds = %bb.c
  %i.ai = load i64, ptr %i.l, align 8, !tbaa !35  ; 2 uses
  %i.aj = load i64, ptr %i.i, align 8, !tbaa !35
  %i.ak = add i64 %i.ai, %i.aj
  %i.al = sub i64 %i.ae, %i.ak                    ; 2 uses
  %i.am = trunc i64 %i.al to i32
  %i.an = load ptr, ptr %5, align 8, !tbaa !34    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.m
  br i1 %i.ao, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %bb.d
  %i.ap = load i64, ptr %i.m, align 8, !tbaa !37
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #23
  br label %bb.e

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.peel: ; preds = %bb.d
  %i.ar = icmp ult i64 %i.ai, 16
  call void @llvm.assume(i1 %i.ar)
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %sext.peel = shl i64 %i.al, 32
  %i.as = ashr exact i64 %sext.peel, 32
  call void @llvm.experimental.noalias.scope.decl(metadata !152)
  %i.at = load i64, ptr %i.k, align 8, !tbaa !35, !noalias !152
  store ptr %i.n, ptr %6, align 8, !tbaa !33, !alias.scope !152
  %i.au = load ptr, ptr %1, align 8, !tbaa !34, !noalias !152 ; 2 uses
  %spec.select.i.i.i.peel = call noundef i64 @llvm.umin.i64(i64 %i.as, i64 %i.at) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21, !noalias !152
  store i64 %spec.select.i.i.i.peel, ptr %i.a, align 8, !tbaa !36, !noalias !152
  %i.av = icmp ugt i64 %spec.select.i.i.i.peel, 15
  br i1 %i.av, label %.noexc10.i.i.peel, label %._crit_edge.i.i.i.peel

.noexc10.i.i.peel:                                ; preds = %bb.e
  %i.aw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.peel unwind label %bb.r ; 2 uses

.noexc.peel:                                      ; preds = %.noexc10.i.i.peel
  store ptr %i.aw, ptr %6, align 8, !tbaa !34, !alias.scope !152
  %i.ax = load i64, ptr %i.a, align 8, !tbaa !36, !noalias !152
  store i64 %i.ax, ptr %i.n, align 8, !tbaa !37, !alias.scope !152
  br label %._crit_edge.i.i.i.peel

._crit_edge.i.i.i.peel:                           ; preds = %.noexc.peel, %bb.e
  %i.ay = phi ptr [ %i.aw, %.noexc.peel ], [ %i.n, %bb.e ] ; 2 uses
  switch i64 %spec.select.i.i.i.peel, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.peel
  %i.az = load i8, ptr %i.au, align 1, !tbaa !37
  store i8 %i.az, ptr %i.ay, align 1, !tbaa !37
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.peel
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ay, ptr align 1 %i.au, i64 %spec.select.i.i.i.peel, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i.peel
  %i.ba = load i64, ptr %i.a, align 8, !tbaa !36, !noalias !152 ; 2 uses
  store i64 %i.ba, ptr %i.o, align 8, !tbaa !35, !alias.scope !152
  %i.bb = load ptr, ptr %6, align 8, !tbaa !34, !alias.scope !152
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ba
  store i8 0, ptr %i.bc, align 1, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21, !noalias !152
  %i.bd = load ptr, ptr %i.p, align 8, !tbaa !63, !nonnull !48, !align !64
  invoke void @_ZNK4i18n12phonenumbers15PhoneNumberUtil20TrimUnwantedEndCharsEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %i.bd, ptr noundef nonnull %6)
          to label %bb.i unwind label %bb.s

bb.i:                                             ; preds = %bb.h
  %i.be = invoke noundef zeroext i1 @_ZN4i18n12phonenumbers18PhoneNumberMatcher14ParseAndVerifyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiPNS0_16PhoneNumberMatchE(ptr noundef nonnull align 8 dereferenceable(117) %0, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %2, ptr noundef %3)
          to label %bb.j unwind label %bb.s

bb.j:                                             ; preds = %bb.i
  br i1 %i.be, label %.critedge43.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = load i32, ptr %i.j, align 4, !tbaa !39
  %i.bg = add nsw i32 %i.bf, -1
  store i32 %i.bg, ptr %i.j, align 4, !tbaa !39
  %i.bh = load ptr, ptr %6, align 8, !tbaa !34    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.n
  br i1 %i.bi, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49.peel: ; preds = %bb.k
  %i.bj = load i64, ptr %i.n, align 8, !tbaa !37
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #23
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.bl = load ptr, ptr %i.p, align 8, !tbaa !63, !nonnull !48, !align !64
  invoke void @_ZNK4i18n12phonenumbers15PhoneNumberUtil20TrimUnwantedEndCharsEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %i.bl, ptr noundef nonnull %4)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %bb.l
  %i.bm = add nsw i32 %2, %i.am
  %i.bn = invoke noundef zeroext i1 @_ZN4i18n12phonenumbers18PhoneNumberMatcher14ParseAndVerifyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiPNS0_16PhoneNumberMatchE(ptr noundef nonnull align 8 dereferenceable(117) %0, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %i.bm, ptr noundef %3)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %bb.m
  br i1 %i.bn, label %.critedge43, label %.peel.next

.peel.next:                                       ; preds = %bb.n, %bb.v
  %storemerge.in = load i32, ptr %i.j, align 4, !tbaa !39
  %storemerge = add nsw i32 %storemerge.in, -1
  store i32 %storemerge, ptr %i.j, align 4, !tbaa !39
  %i.bo = load ptr, ptr %.sroa.072.0109, align 8, !tbaa !106 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !52
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = invoke noundef zeroext i1 %i.br(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef nonnull %i.w, i1 noundef zeroext false, ptr noundef nonnull %4, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %_ZNK4i18n12phonenumbers6RegExp14FindAndConsumeEPNS0_11RegExpInputEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %.loopexit.split-lp.loopexit.split-lp, !inline_history !5

_ZNK4i18n12phonenumbers6RegExp14FindAndConsumeEPNS0_11RegExpInputEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.peel.next
  br i1 %i.bs, label %bb.o, label %.critedge

bb.o:                                             ; preds = %_ZNK4i18n12phonenumbers6RegExp14FindAndConsumeEPNS0_11RegExpInputEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bt = load i32, ptr %i.j, align 4, !tbaa !39
  %i.bu = icmp sgt i32 %i.bt, 0
  br i1 %i.bu, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.bv = load i64, ptr %i.k, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.bw = load ptr, ptr %i.w, align 8, !tbaa !52
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8
  invoke void %i.by(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.w)
          to label %bb.q unwind label %.loopexit.split-lp121.loopexit.split-lp

bb.q:                                             ; preds = %bb.p
  %i.bz = load i64, ptr %i.l, align 8, !tbaa !35  ; 2 uses
  %i.ca = load i64, ptr %i.i, align 8, !tbaa !35
  %i.cb = add i64 %i.bz, %i.ca
  %i.cc = sub i64 %i.bv, %i.cb
  %i.cd = trunc i64 %i.cc to i32
  %i.ce = load ptr, ptr %5, align 8, !tbaa !34    ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.m
  br i1 %i.cf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.q
  %i.cg = icmp ult i64 %i.bz, 16
  call void @llvm.assume(i1 %i.cg)
  br label %bb.t

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %i.ch = load i64, ptr %i.m, align 8, !tbaa !37
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ci) #23
  br label %bb.t

.loopexit.split-lp121.loopexit.split-lp:          ; preds = %bb.p, %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.x

bb.r:                                             ; preds = %.noexc10.i.i.peel
  %lpad.loopexit.split-lp130 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

bb.s:                                             ; preds = %bb.i, %bb.h
  %lpad.loopexit.split-lp136 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %6, align 8, !tbaa !34    ; 2 uses
  %i.cj = icmp eq ptr %.pre, %i.n
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %bb.s
  %i.ck = load i64, ptr %i.n, align 8, !tbaa !37
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.cl) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46, %bb.r
  %.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp130, %bb.r ], [ %lpad.loopexit.split-lp136, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46 ], [ %lpad.loopexit.split-lp136, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.x

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %.pre142 = load ptr, ptr %i.p, align 8, !tbaa !63
  invoke void @_ZNK4i18n12phonenumbers15PhoneNumberUtil20TrimUnwantedEndCharsEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %.pre142, ptr noundef nonnull %4)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.t
  %i.cm = add nsw i32 %2, %i.cd
  %i.cn = invoke noundef zeroext i1 @_ZN4i18n12phonenumbers18PhoneNumberMatcher14ParseAndVerifyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiPNS0_16PhoneNumberMatchE(ptr noundef nonnull align 8 dereferenceable(117) %0, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %i.cm, ptr noundef %3)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %bb.u
  br i1 %i.cn, label %.critedge43, label %.peel.next, !llvm.loop !149

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.peel.next, %bb.t, %bb.u, %bb.m, %bb.l, %.peel.begin
  %lpad.loopexit.split-lp182 = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.critedge:                                        ; preds = %bb.o, %_ZNK4i18n12phonenumbers6RegExp14FindAndConsumeEPNS0_11RegExpInputEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %bb.b, %_ZNK4i18n12phonenumbers6RegExp14FindAndConsumeEPNS0_11RegExpInputEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.peel
  %i.co = load ptr, ptr %4, align 8, !tbaa !34    ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.h
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %.critedge
  %i.cq = load i64, ptr %i.h, align 8, !tbaa !37
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cr) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.cs = icmp eq ptr %i.w, null
  br i1 %i.cs, label %_ZN5boost10scoped_ptrIN4i18n12phonenumbers11RegExpInputEED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
  %i.ct = load ptr, ptr %i.w, align 8, !tbaa !52
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(8) %i.w) #21, !inline_history !2
  br label %_ZN5boost10scoped_ptrIN4i18n12phonenumbers11RegExpInputEED2Ev.exit

_ZN5boost10scoped_ptrIN4i18n12phonenumbers11RegExpInputEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %bb.w
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.072.0109, i64 8 ; 2 uses
  %i.cx = load ptr, ptr %0, align 8, !tbaa !30    ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 544
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !103
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !151
  %.not.not = icmp eq ptr %i.cw, %i.db
  br i1 %.not.not, label %.loopexit, label %.peel.begin, !llvm.loop !150

bb.x:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp121.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48
  %.pn40.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp121.loopexit.split-lp ], [ %lpad.loopexit.split-lp182, %.loopexit.split-lp.loopexit.split-lp ]
  %i.dc = load ptr, ptr %4, align 8, !tbaa !34    ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.h
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %bb.x
  %i.de = load i64, ptr %i.h, align 8, !tbaa !37
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.df) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.dg = icmp eq ptr %i.w, null
  br i1 %i.dg, label %_ZN5boost10scoped_ptrIN4i18n12phonenumbers11RegExpInputEED2Ev.exit58, label %bb.y

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  %i.dh = load ptr, ptr %i.w, align 8, !tbaa !52
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dereferenceable(8) %i.w) #21, !inline_history !2
  br label %_ZN5boost10scoped_ptrIN4i18n12phonenumbers11RegExpInputEED2Ev.exit58

_ZN5boost10scoped_ptrIN4i18n12phonenumbers11RegExpInputEED2Ev.exit58: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, %bb.y
  resume { ptr, i32 } %.pn40.pn

.critedge43.critedge:                             ; preds = %bb.j
  %.pre143 = load ptr, ptr %6, align 8, !tbaa !34 ; 2 uses
  %i.dk = icmp eq ptr %.pre143, %i.n
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %.critedge43.critedge
  %i.dl = load i64, ptr %i.n, align 8, !tbaa !37
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %.pre143, i64 noundef %i.dm) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %.critedge43.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %.critedge43

.critedge43:                                      ; preds = %bb.n, %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %i.dn = load ptr, ptr %4, align 8, !tbaa !34    ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.h
  br i1 %i.do, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %.critedge43
  %i.dp = load i64, ptr %i.h, align 8, !tbaa !37
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dq) #23
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i63: ; preds = %.critedge43, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.dr = load ptr, ptr %i.w, align 8, !tbaa !52
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
end_hunk_1
