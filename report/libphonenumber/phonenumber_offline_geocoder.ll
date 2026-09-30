Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libphonenumber/original/phonenumber_offline_geocoder?download=true
inline.NumInlined: 296
inline.NumDeleted: 139
begin_hunk_0_@_ZNK4i18n12phonenumbers26PhoneNumberOfflineGeocoder28GetDescriptionForValidNumberB5cxx11ERKNS0_11PhoneNumberERKN6icu_746LocaleE:bb.a
  %i.am = load ptr, ptr %5, align 8, !tbaa !51    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.e
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  %i.ao = load i64, ptr %i.e, align 8, !tbaa !50
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.aq = load i8, ptr %i.ad, align 1, !tbaa !50
  %.not.not.not = icmp eq i8 %i.aq, 0
  br i1 %.not.not.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ar, ptr %0, align 8, !tbaa !48
  %i.as = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ad) #19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.as, ptr %i.a, align 8, !tbaa !53
  %i.at = icmp ugt i64 %i.as, 15
  br i1 %i.at, label %.noexc.i43, label %._crit_edge.i.i42

.noexc.i43:                                       ; preds = %bb.h
  %i.au = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.au, ptr %0, align 8, !tbaa !51
  %i.av = load i64, ptr %i.a, align 8, !tbaa !53
  store i64 %i.av, ptr %i.ar, align 8, !tbaa !50
  br label %._crit_edge.i.i42

._crit_edge.i.i42:                                ; preds = %.noexc.i43, %bb.h
  %i.aw = phi ptr [ %i.au, %.noexc.i43 ], [ %i.ar, %bb.h ] ; 2 uses
  switch i64 %i.as, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %bb.o
  ]

bb.i:                                             ; preds = %._crit_edge.i.i42
  %i.ax = load i8, ptr %i.ad, align 1, !tbaa !50
  store i8 %i.ax, ptr %i.aw, align 1, !tbaa !50
  br label %bb.o

bb.j:                                             ; preds = %._crit_edge.i.i42
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aw, ptr nonnull align 1 %i.ad, i64 %i.as, i1 false)
  br label %bb.o

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19, !noalias !64
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.ay, ptr %4, align 8, !tbaa !48, !noalias !64
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.az, align 8, !tbaa !49, !noalias !64
  store i8 0, ptr %i.ay, align 8, !tbaa !50, !noalias !64
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !37, !noalias !64
  invoke void @_ZNK4i18n12phonenumbers15PhoneNumberUtil22GetRegionCodeForNumberERKNS0_11PhoneNumberEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %i.bb, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull %4)
          to label %bb.l unwind label %bb.n, !noalias !64

bb.l:                                             ; preds = %bb.k
  invoke void @_ZNK4i18n12phonenumbers26PhoneNumberOfflineGeocoder20GetRegionDisplayNameEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN6icu_746LocaleE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nonnull readonly align 8 poison, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(217) %3)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bc = load ptr, ptr %4, align 8, !tbaa !51, !noalias !64 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.ay
  br i1 %i.bd, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.m
  %i.be = load i64, ptr %i.ay, align 8, !tbaa !50, !noalias !64
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #18
  br label %.thread

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.bg = landingpad { ptr, i32 }
          cleanup
  %i.bh = load ptr, ptr %4, align 8, !tbaa !51, !noalias !64 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.ay
  br i1 %i.bi, label %.body.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %bb.n
  %i.bj = load i64, ptr %i.ay, align 8, !tbaa !50, !noalias !64
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #18
  br label %.body.thread

.body.thread:                                     ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19, !noalias !64
  br label %.critedge27

.thread:                                          ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19, !noalias !64
  br label %.critedge

bb.o:                                             ; preds = %._crit_edge.i.i42, %bb.i, %bb.j
  %i.bl = load i64, ptr %i.a, align 8, !tbaa !53  ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !49
  %i.bn = load ptr, ptr %0, align 8, !tbaa !51
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bl
  store i8 0, ptr %i.bo, align 1, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %.critedge

.critedge:                                        ; preds = %.thread, %bb.o
  ret void

bb.p:                                             ; preds = %.noexc.i
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

bb.q:                                             ; preds = %.noexc.i33
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

bb.r:                                             ; preds = %bb.f
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bs = load ptr, ptr %7, align 8, !tbaa !51    ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.s
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %bb.r
  %i.bu = load i64, ptr %i.s, align 8, !tbaa !50
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46, %bb.q
  %.pn = phi { ptr, i32 } [ %i.bq, %bb.q ], [ %i.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46 ], [ %i.br, %bb.r ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.bw = load ptr, ptr %6, align 8, !tbaa !51    ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.p
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48
  %i.by = load i64, ptr %i.p, align 8, !tbaa !50
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.ca = load ptr, ptr %5, align 8, !tbaa !51    ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.e
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
  %i.cc = load i64, ptr %i.e, align 8, !tbaa !50
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52, %bb.p
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bp, %bb.p ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %.critedge27

.critedge27:                                      ; preds = %.body.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
  %.pn24 = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54 ], [ %i.bg, %.body.thread ]
  resume { ptr, i32 } %.pn24
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZNK4i18n12phonenumbers26PhoneNumberOfflineGeocoder18GetAreaDescriptionERKNS0_11PhoneNumberERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_SC_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  tail call void @_ZN4absl7debian35Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.d = invoke noundef ptr @_ZNK4i18n12phonenumbers26PhoneNumberOfflineGeocoder26GetPhonePrefixDescriptionsEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_S9_(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.b unwind label %bb.g       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = invoke noundef ptr @_ZNK4i18n12phonenumbers11AreaCodeMap6LookupERKNS0_11PhoneNumberE(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %1)
          to label %bb.d unwind label %bb.h       ; 4 uses

bb.d:                                             ; preds = %bb.c
  %.not36 = icmp eq ptr %i.e, null
  br i1 %.not36, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !50
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %.thread, label %_ZNK4i18n12phonenumbers26PhoneNumberOfflineGeocoder20MayFallBackToEnglishERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread

.thread:                                          ; preds = %bb.b, %bb.e, %bb.d
  %i.h = phi ptr [ null, %bb.d ], [ %i.e, %bb.e ], [ null, %bb.b ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !49   ; 4 uses
  %cond.i = icmp eq i64 %i.j, 0
  br i1 %cond.i, label %_ZNK4i18n12phonenumbers26PhoneNumberOfflineGeocoder20MayFallBackToEnglishERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread76, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %.thread
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 2) ; 3 uses
  %i.k = load ptr, ptr %2, align 8, !tbaa !51     ; 3 uses
  %bcmp.i = tail call i32 @bcmp(ptr %i.k, ptr nonnull @.str.3, i64 %.sroa.speculated.i.i)
  %.not.i.i = icmp eq i32 %bcmp.i, 0
  %.not.i = icmp eq i64 %i.j, 2                   ; 2 uses
  %or.cond.i = and i1 %.not.i, %.not.i.i
  br i1 %or.cond.i, label %_ZNK4i18n12phonenumbers26PhoneNumberOfflineGeocoder20MayFallBackToEnglishERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i5.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i5.i:  ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %bcmp26.i = tail call i32 @bcmp(ptr %i.k, ptr nonnull @.str.4, i64 %.sroa.speculated.i.i)
  %.not.i6.i = icmp eq i32 %bcmp26.i, 0
  %or.cond28.i = and i1 %.not.i, %.not.i6.i
  br i1 %or.cond28.i, label %_ZNK4i18n12phonenumbers26PhoneNumberOfflineGeocoder20MayFallBackToEnglishERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i14.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i14.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i5.i
  %bcmp27.i = tail call i32 @bcmp(ptr %i.k, ptr nonnull @.str.5, i64 %.sroa.speculated.i.i)
  %.not.i15.i = icmp ne i32 %bcmp27.i, 0
  %8 = icmp ne i64 %i.j, 2
  %or.cond = or i1 %8, %.not.i15.i
  br i1 %or.cond, label %_ZNK4i18n12phonenumbers26PhoneNumberOfflineGeocoder20MayFallBackToEnglishERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread76, label %_ZNK4i18n12phonenumbers26PhoneNumberOfflineGeocoder20MayFallBackToEnglishERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread

_ZNK4i18n12phonenumbers26PhoneNumberOfflineGeocoder20MayFallBackToEnglishERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread76: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i14.i, %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.l, ptr %5, align 8, !tbaa !48
  store i16 28261, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 2, ptr %i.m, align 8, !tbaa !49
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 18
  store i8 0, ptr %i.n, align 2, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.o, ptr %6, align 8, !tbaa !48
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.p, align 8, !tbaa !49
  store i8 0, ptr %i.o, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.q, ptr %7, align 8, !tbaa !48
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !49
  store i8 0, ptr %i.q, align 8, !tbaa !50
  %i.s = invoke noundef ptr @_ZNK4i18n12phonenumbers26PhoneNumberOfflineGeocoder26GetPhonePrefixDescriptionsEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_S9_(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %i.b, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.f unwind label %bb.i       ; 2 uses

bb.f:                                             ; preds = %_ZNK4i18n12phonenumbers26PhoneNumberOfflineGeocoder20MayFallBackToEnglishERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread76
  %i.t = load ptr, ptr %7, align 8, !tbaa !51     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.q
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.v = load i64, ptr %i.q, align 8, !tbaa !50
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.x = load ptr, ptr %6, align 8, !tbaa !51     ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.o
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.z = load i64, ptr %i.o, align 8, !tbaa !50
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.ab = load ptr, ptr %5, align 8, !tbaa !51    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.l
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  %i.ad = load i64, ptr %i.l, align 8, !tbaa !50
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %.not40.not = icmp eq ptr %i.s, null
  br i1 %.not40.not, label %.critedge, label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.h:                                             ; preds = %bb.c
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.i:                                             ; preds = %_ZNK4i18n12phonenumbers26PhoneNumberOfflineGeocoder20MayFallBackToEnglishERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread76
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = load ptr, ptr %7, align 8, !tbaa !51    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.q
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %bb.i
  %i.ak = load i64, ptr %i.q, align 8, !tbaa !50
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.am = load ptr, ptr %6, align 8, !tbaa !51    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.o
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62
  %i.ao = load i64, ptr %i.o, align 8, !tbaa !50
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.aq = load ptr, ptr %5, align 8, !tbaa !51    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.l
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65
  %i.as = load i64, ptr %i.l, align 8, !tbaa !50
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.m

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59
  %i.au = invoke noundef ptr @_ZNK4i18n12phonenumbers11AreaCodeMap6LookupERKNS0_11PhoneNumberE(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(72) %1)
          to label %_ZNK4i18n12phonenumbers26PhoneNumberOfflineGeocoder20MayFallBackToEnglishERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

_ZNK4i18n12phonenumbers26PhoneNumberOfflineGeocoder20MayFallBackToEnglishERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i14.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i5.i, %bb.j, %bb.e
  %.1 = phi ptr [ %i.au, %bb.j ], [ %i.h, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i14.i ], [ %i.e, %bb.e ], [ %i.h, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i5.i ], [ %i.h, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ] ; 2 uses
  %.not45 = icmp eq ptr %.1, null
  %i.aw = select i1 %.not45, ptr @.str.1, ptr %.1
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, %_ZNK4i18n12phonenumbers26PhoneNumberOfflineGeocoder20MayFallBackToEnglishERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread
  %.132 = phi ptr [ %i.aw, %_ZNK4i18n12phonenumbers26PhoneNumberOfflineGeocoder20MayFallBackToEnglishERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread ], [ @.str.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ]
  invoke void @_ZN4absl7debian35Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN4absl7debian39MutexLockD2Ev.exit unwind label %bb.l

bb.l:                                             ; preds = %.critedge
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  call void @__clang_call_terminate(ptr %i.ay) #20
  unreachable

_ZN4absl7debian39MutexLockD2Ev.exit:              ; preds = %.critedge
  ret ptr %.132

bb.m:                                             ; preds = %bb.h, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, %bb.g
  %.pn41.pn.pn = phi { ptr, i32 } [ %i.af, %bb.g ], [ %i.ag, %bb.h ], [ %i.av, %bb.k ], [ %i.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68 ]
  invoke void @_ZN4absl7debian35Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN4absl7debian39MutexLockD2Ev.exit69 unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #20
  unreachable

_ZN4absl7debian39MutexLockD2Ev.exit69:            ; preds = %bb.m
  resume { ptr, i32 } %.pn41.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4i18n12phonenumbers26PhoneNumberOfflineGeocoder28GetDescriptionForValidNumberERKNS0_11PhoneNumberERKN6icu_746LocaleERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(217) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !48
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !49
  store i8 0, ptr %i.a, align 8, !tbaa !50
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37
  invoke void @_ZNK4i18n12phonenumbers15PhoneNumberUtil22GetRegionCodeForNumberERKNS0_11PhoneNumberEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull %5)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !49   ; 3 uses
  %i.g = load i64, ptr %i.b, align 8, !tbaa !49   ; 3 uses
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %i.g, i64 %i.f) ; 2 uses
  %i.h = icmp eq i64 %.sroa.speculated.i, 0
  br i1 %i.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i:     ; preds = %bb.b
  %i.i = load ptr, ptr %5, align 8, !tbaa !51
  %i.j = load ptr, ptr %4, align 8, !tbaa !51
  %bcmp = call i32 @bcmp(ptr %i.j, ptr %i.i, i64 %.sroa.speculated.i)
  %.not.i = icmp eq i32 %bcmp, 0
  %i.k = icmp eq i64 %i.f, %i.g
  %or.cond = and i1 %i.k, %.not.i
  br i1 %or.cond, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit: ; preds = %bb.b
  %.old = icmp eq i64 %i.f, %i.g
  br i1 %.old, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread

bb.c:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit
  invoke void @_ZNK4i18n12phonenumbers26PhoneNumberOfflineGeocoder28GetDescriptionForValidNumberB5cxx11ERKNS0_11PhoneNumberERKN6icu_746LocaleE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(217) %3)
end_hunk_0
