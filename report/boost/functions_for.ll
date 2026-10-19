Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/functions_for?download=true
inline.NumInlined: 1491
inline.NumDeleted: 594
begin_hunk_0_@_Z27test_some_comparable_structI17comparable_structEvv:bb.a
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 28
  store i32 4, ptr %i.jn, align 4, !tbaa !45
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 32
  %i.jp = load i32, ptr %i.jo, align 8, !tbaa !46
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.jm, i32 noundef %i.jp)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit unwind label %bb.dg

_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.jq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store ptr %4, ptr %2, align 8
  %i.jr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost3pfr6detaillsIcSt11char_traitsIcE17comparable_structEERSt13basic_ostreamIT_T0_ESA_ONS1_14io_fields_implIRKT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %i.jq, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.cy unwind label %bb.dg     ; 0 uses

bb.cy:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  store ptr %6, ptr %1, align 8
  %i.js = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5boost3pfr6detailrsIcSt11char_traitsIcE17comparable_structEERSt13basic_istreamIT_T0_ESA_ONS1_14io_fields_implIRT1_EE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.cz unwind label %bb.dg     ; 0 uses

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #22
  store ptr %6, ptr %0, align 8
  %i.jt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost3pfr6detaillsIcSt11char_traitsIcE17comparable_structEERSt13basic_ostreamIT_T0_ESA_ONS1_14io_fields_implIRKT1_EE(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.da unwind label %bb.dg     ; 3 uses

bb.da:                                            ; preds = %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !20
  %i.jv = getelementptr i8, ptr %i.ju, i64 -24
  %i.jw = load i64, ptr %i.jv, align 8
  %i.jx = getelementptr inbounds i8, ptr %i.jt, i64 %i.jw
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 240
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !37 ; 6 uses
  %.not.i.i.i16 = icmp eq ptr %i.jz, null
  br i1 %.not.i.i.i16, label %bb.db, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i17

bb.db:                                            ; preds = %bb.da
  invoke void @_ZSt16__throw_bad_castv() #23
          to label %.noexc unwind label %bb.dg

.noexc:                                           ; preds = %bb.db
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i17: ; preds = %bb.da
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 56
  %i.kb = load i8, ptr %i.ka, align 8, !tbaa !43
  %.not.i1.i.i18 = icmp eq i8 %i.kb, 0
  br i1 %.not.i1.i.i18, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i17
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jz, i64 67
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !44
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.dd:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i17
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.jz)
          to label %.noexc20 unwind label %bb.dg

.noexc20:                                         ; preds = %bb.dd
  %i.ke = load ptr, ptr %i.jz, align 8, !tbaa !20
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 48
  %i.kg = load ptr, ptr %i.kf, align 8
  %i.kh = invoke noundef signext i8 %i.kg(ptr noundef nonnull align 8 dereferenceable(570) %i.jz, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.dg, !inline_history !1

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc20, %bb.dc
  %.0.i.i.i19 = phi i8 [ %i.kd, %bb.dc ], [ %i.kh, %.noexc20 ]
  %i.ki = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.jt, i8 noundef signext %.0.i.i.i19)
          to label %.noexc22 unwind label %bb.dg

.noexc22:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.kj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ki)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.dg ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc22
  %i.kk = invoke noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqE17comparable_structS3_EEbT_PKcS6_S6_iS6_RKT0_RKT1_(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1, i32 noundef 58, ptr noundef nonnull @__PRETTY_FUNCTION__._Z27test_some_comparable_structI17comparable_structEvv, ptr noundef nonnull align 4 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(32) %6)
          to label %bb.de unwind label %bb.dg     ; 0 uses

bb.de:                                            ; preds = %_ZNSolsEPFRSoS_E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 1, ptr %i.a, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 2, ptr %i.b, align 4, !tbaa !12
  %i.kl = invoke noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_neEiiEEbT_PKcS5_S5_iS5_RKT0_RKT1_(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 60, ptr noundef nonnull @__PRETTY_FUNCTION__._Z27test_some_comparable_structI17comparable_structEvv, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.df unwind label %bb.dh     ; 0 uses

bb.df:                                            ; preds = %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.km = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.km, ptr %7, align 8, !tbaa !20
  %i.kn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ko = getelementptr i8, ptr %i.km, i64 -24
  %i.kp = load i64, ptr %i.ko, align 8
  %i.kq = getelementptr inbounds i8, ptr %7, i64 %i.kp
  store ptr %i.kn, ptr %i.kq, align 8, !tbaa !20
  %i.kr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.kr, ptr %i.jq, align 8, !tbaa !20
  %i.ks = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ks, align 8, !tbaa !20
  %i.kt = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !50 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %7, i64 112 ; 2 uses
  %i.kw = icmp eq ptr %i.ku, %i.kv
  br i1 %i.kw, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.df
  %i.kx = load i64, ptr %i.kv, align 8, !tbaa !44
  %i.ky = add i64 %i.kx, 1
  call void @_ZdlPvm(ptr noundef %i.ku, i64 noundef %i.ky) #24
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ks, align 8, !tbaa !20
  %i.kz = getelementptr inbounds nuw i8, ptr %7, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.kz) #22
  %i.la = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.la, ptr %7, align 8, !tbaa !20
  %i.lb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.lc = getelementptr i8, ptr %i.la, i64 -24
  %i.ld = load i64, ptr %i.lc, align 8
  %i.le = getelementptr inbounds i8, ptr %7, i64 %i.ld
  store ptr %i.lb, ptr %i.le, align 8, !tbaa !20
  %i.lf = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.lf, align 8, !tbaa !52
  %i.lg = getelementptr inbounds nuw i8, ptr %7, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.lg) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret void

bb.dg:                                            ; preds = %.noexc22, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc20, %bb.dd, %bb.db, %bb.cz, %bb.cy, %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %_ZNSolsEPFRSoS_E.exit
  %i.lh = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.dh:                                            ; preds = %bb.de
  %i.li = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %.pn = phi { ptr, i32 } [ %i.li, %bb.dh ], [ %i.lh, %bb.dg ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_Z17test_empty_structv() local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN5boost6detail14test_with_implINS0_10lw_test_eqE5emptyS3_EEbT_PKcS6_S6_iS6_RKT0_RKT1_.exit, !prof !53

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #22
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN5boost6detail14test_with_implINS0_10lw_test_eqE5emptyS3_EEbT_PKcS6_S6_iS6_RKT0_RKT1_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !55
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !56
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #22 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #22
  br label %_ZN5boost6detail14test_with_implINS0_10lw_test_eqE5emptyS3_EEbT_PKcS6_S6_iS6_RKT0_RKT1_.exit

_ZN5boost6detail14test_with_implINS0_10lw_test_eqE5emptyS3_EEbT_PKcS6_S6_iS6_RKT0_RKT1_.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define hidden void @_Z25test_implicit_conversionsv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %0 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 23 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #22
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %0)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i1 noundef zeroext true)
          to label %_ZNSolsEb.exit unwind label %4 ; 0 uses

_ZNSolsEb.exit:                                   ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !107)
  call void @llvm.experimental.noalias.scope.decl(metadata !108)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  store ptr %i.e, ptr %1, align 8, !tbaa !109, !alias.scope !110
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !57, !alias.scope !110
  store i8 0, ptr %i.e, align 8, !tbaa !44, !alias.scope !110
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !112, !noalias !110 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !noalias !110 ; 2 uses
  %i.k = icmp ugt ptr %i.h, %i.j
  %.08.i.i.i = select i1 %i.k, ptr %i.h, ptr %i.j ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZNSolsEb.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !113, !noalias !110 ; 2 uses
  %i.n = ptrtoint ptr %.08.i.i.i to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef 0, ptr noundef %i.m, i64 noundef %i.p)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !50, !alias.scope !110 ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.e
  br i1 %i.t, label %.body, label %.body.sink.split

bb.d:                                             ; preds = %_ZNSolsEb.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.v = invoke noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA2_cEEbT_PKcSC_SC_iSC_RKT0_RKT1_(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 98, ptr noundef nonnull @__PRETTY_FUNCTION__._Z25test_implicit_conversionsv, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(2) @.str.4)
          to label %bb.e unwind label %bb.o       ; 0 uses

bb.e:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.w = load ptr, ptr %1, align 8, !tbaa !50     ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.e
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.y = load i64, ptr %i.e, align 8, !tbaa !44
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.aa, ptr %2, align 8, !tbaa !109
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ab, align 8, !tbaa !57
  store i8 0, ptr %i.aa, align 8, !tbaa !44
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !57
  %i.ag = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i64 noundef 0, i64 noundef %i.af, ptr noundef nonnull %i.aa, i64 noundef 0)
          to label %.noexc11 unwind label %bb.p   ; 0 uses

.noexc11:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !116
  %i.aj = and i32 %i.ai, 3
  %.not.i.i.i = icmp eq i32 %i.aj, 0
  %i.ak = load i64, ptr %i.ae, align 8
  %.0.i.i.i = select i1 %.not.i.i.i, i64 0, i64 %i.ak
  %i.al = load ptr, ptr %i.ad, align 8, !tbaa !50
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.ac, ptr noundef %i.al, i64 noundef 0, i64 noundef %.0.i.i.i)
          to label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit unwind label %bb.p

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit: ; preds = %.noexc11
  %i.am = load ptr, ptr %2, align 8, !tbaa !50    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.aa
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit
  %i.ao = load i64, ptr %i.aa, align 8, !tbaa !44
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 123, ptr %i.b, align 1, !tbaa !44
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.ar = getelementptr i8, ptr %i.aq, i64 -24
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = getelementptr inbounds i8, ptr %i.c, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !58
  %.not.i.i.i16 = icmp eq i64 %i.av, 0
  br i1 %.not.i.i.i16, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.aw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i unwind label %bb.q ; 0 uses

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i8 noundef signext 123)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i unwind label %bb.q ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 125, ptr %i.a, align 1, !tbaa !44
  %i.ay = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.az = getelementptr i8, ptr %i.ay, i64 -24
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = getelementptr inbounds i8, ptr %i.c, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !58
  %.not.i5.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i5.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i
  %i.be = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.j unwind label %bb.q       ; 0 uses

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i
  %i.bf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i8 noundef signext 125)
          to label %bb.j unwind label %bb.q       ; 0 uses

bb.j:                                             ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !117)
  call void @llvm.experimental.noalias.scope.decl(metadata !118)
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.bg, ptr %3, align 8, !tbaa !109, !alias.scope !119
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.bh, align 8, !tbaa !57, !alias.scope !119
  store i8 0, ptr %i.bg, align 8, !tbaa !44, !alias.scope !119
  %i.bi = load ptr, ptr %i.g, align 8, !tbaa !112, !noalias !119 ; 3 uses
  %.not.i.not.i.i21 = icmp eq ptr %i.bi, null
  %i.bj = load ptr, ptr %i.i, align 8, !noalias !119 ; 2 uses
  %i.bk = icmp ugt ptr %i.bi, %i.bj
  %.08.i.i.i22 = select i1 %i.bk, ptr %i.bi, ptr %i.bj ; 2 uses
  %.not5.i.i23 = icmp eq ptr %.08.i.i.i22, null
  %.not.i.i24 = select i1 %.not.i.not.i.i21, i1 true, i1 %.not5.i.i23
  br i1 %.not.i.i24, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !113, !noalias !119 ; 2 uses
  %i.bn = ptrtoint ptr %.08.i.i.i22 to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef %i.bm, i64 noundef %i.bp)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit30 unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bs = load ptr, ptr %3, align 8, !tbaa !50, !alias.scope !119 ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.bg
  br i1 %i.bt, label %.body28, label %.body28.sink.split

bb.m:                                             ; preds = %bb.j
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.ad)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit30 unwind label %bb.l

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit30: ; preds = %bb.m, %bb.k
  %i.bu = invoke noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA3_cEEbT_PKcSC_SC_iSC_RKT0_RKT1_(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 102, ptr noundef nonnull @__PRETTY_FUNCTION__._Z25test_implicit_conversionsv, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(3) @.str.7)
          to label %bb.n unwind label %bb.r       ; 0 uses

bb.n:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit30
  %i.bv = load ptr, ptr %3, align 8, !tbaa !50    ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.bg
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %bb.n
  %i.bx = load i64, ptr %i.bg, align 8, !tbaa !44
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.bz = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bz, ptr %0, align 8, !tbaa !20
  %i.ca = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.cb = getelementptr i8, ptr %i.bz, i64 -24
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = getelementptr inbounds i8, ptr %0, i64 %i.cc
  store ptr %i.ca, ptr %i.cd, align 8, !tbaa !20
  %i.ce = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.ce, ptr %i.c, align 8, !tbaa !20
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ac, align 8, !tbaa !20
  %i.cf = load ptr, ptr %i.ad, align 8, !tbaa !50 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  %i.ci = load i64, ptr %i.cg, align 8, !tbaa !44
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.cj) #24
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ac, align 8, !tbaa !20
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ck) #22
  %i.cl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.cl, ptr %0, align 8, !tbaa !20
  %i.cm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.cn = getelementptr i8, ptr %i.cl, i64 -24
  %i.co = load i64, ptr %i.cn, align 8
  %i.cp = getelementptr inbounds i8, ptr %0, i64 %i.co
  store ptr %i.cm, ptr %i.cp, align 8, !tbaa !20
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.cq, align 8, !tbaa !52
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.cr) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  ret void

4:                                                ; preds = %bb.a
  %5 = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.o:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ct = load ptr, ptr %1, align 8, !tbaa !50    ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.e
  br i1 %i.cu, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.o, %bb.c
  %.sink = phi ptr [ %i.s, %bb.c ], [ %i.ct, %bb.o ]
  %.pn.ph = phi { ptr, i32 } [ %i.r, %bb.c ], [ %i.cs, %bb.o ]
  %i.cv = load i64, ptr %i.e, align 8, !tbaa !44
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.cw) #24
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.o, %bb.c
  %.pn = phi { ptr, i32 } [ %i.r, %bb.c ], [ %i.cs, %bb.o ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %bb.s

bb.p:                                             ; preds = %.noexc11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cx = landingpad { ptr, i32 }
          cleanup
  %i.cy = load ptr, ptr %2, align 8, !tbaa !50    ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.aa
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %bb.p
  %i.da = load i64, ptr %i.aa, align 8, !tbaa !44
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.db) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.s

bb.q:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit30
  %i.dd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.de = load ptr, ptr %3, align 8, !tbaa !50    ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.bg
  br i1 %i.df, label %.body28, label %.body28.sink.split

.body28.sink.split:                               ; preds = %bb.r, %bb.l
  %.sink62 = phi ptr [ %i.bs, %bb.l ], [ %i.de, %bb.r ]
  %.pn8.ph = phi { ptr, i32 } [ %i.br, %bb.l ], [ %i.dd, %bb.r ]
  %i.dg = load i64, ptr %i.bg, align 8, !tbaa !44
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %.sink62, i64 noundef %i.dh) #24
  br label %.body28

.body28:                                          ; preds = %.body28.sink.split, %bb.r, %bb.l
  %.pn8 = phi { ptr, i32 } [ %i.br, %bb.l ], [ %i.dd, %bb.r ], [ %.pn8.ph, %.body28.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.s

bb.s:                                             ; preds = %.body28, %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, %.body, %4
  %.pn8.pn = phi { ptr, i32 } [ %.pn8, %.body28 ], [ %i.dc, %bb.q ], [ %i.cx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39 ], [ %.pn, %.body ], [ %5, %4 ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  resume { ptr, i32 } %.pn8.pn
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA2_cEEbT_PKcSC_SC_iSC_RKT0_RKT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(2) %6) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !57   ; 3 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(2) %6) #22
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNK5boost6detail10lw_test_eqclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA2_cEEbRKT_RKT0_.exit.thread19

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %_ZNK5boost6detail10lw_test_eqclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA2_cEEbRKT_RKT0_.exit.thread, label %_ZNK5boost6detail10lw_test_eqclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA2_cEEbRKT_RKT0_.exit

_ZNK5boost6detail10lw_test_eqclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA2_cEEbRKT_RKT0_.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %5, align 8, !tbaa !50
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.f, ptr nonnull align 1 dereferenceable(2) %6, i64 %i.b)
  %i.g = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.g, label %_ZNK5boost6detail10lw_test_eqclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA2_cEEbRKT_RKT0_.exit.thread, label %_ZNK5boost6detail10lw_test_eqclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA2_cEEbRKT_RKT0_.exit.thread19

_ZNK5boost6detail10lw_test_eqclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA2_cEEbRKT_RKT0_.exit.thread: ; preds = %bb.b, %_ZNK5boost6detail10lw_test_eqclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA2_cEEbRKT_RKT0_.exit
  %i.h = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.c, label %_ZN5boost6detail12test_resultsEv.exit, !prof !53

bb.c:                                             ; preds = %_ZNK5boost6detail10lw_test_eqclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA2_cEEbRKT_RKT0_.exit.thread
  %i.j = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #22
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %_ZN5boost6detail12test_resultsEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !55
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !56
  %i.k = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #22 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #22
  br label %_ZN5boost6detail12test_resultsEv.exit

_ZNK5boost6detail10lw_test_eqclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA2_cEEbRKT_RKT0_.exit.thread19: ; preds = %bb.a, %_ZNK5boost6detail10lw_test_eqclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA2_cEEbRKT_RKT0_.exit
  %.not.i9 = icmp eq ptr %2, null
  br i1 %.not.i9, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK5boost6detail10lw_test_eqclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA2_cEEbRKT_RKT0_.exit.thread19
  %i.l = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !20
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !46
  %i.r = or i32 %i.q, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.o, i32 noundef %i.r)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.f:                                             ; preds = %_ZNK5boost6detail10lw_test_eqclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA2_cEEbRKT_RKT0_.exit.thread19
  %i.s = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #22
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %2, i64 noundef %i.s) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.e, %bb.f
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.22, i64 noundef 1) ; 0 uses
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %3) ; 12 uses
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull @.str.23, i64 noundef 9) ; 0 uses
  %.not.i10 = icmp eq ptr %0, null
  br i1 %.not.i10, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !20
  %i.y = getelementptr i8, ptr %i.x, i64 -24
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr inbounds i8, ptr %i.v, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !46
  %i.ad = or i32 %i.ac, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.aa, i32 noundef %i.ad)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ae = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #22
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull %0, i64 noundef %i.ae) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.g, %bb.h
  %i.ag = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull @.str.24, i64 noundef 1) ; 0 uses
  %i.ah = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull @.str.31, i64 noundef 2) ; 0 uses
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull @.str.24, i64 noundef 1) ; 0 uses
  %.not.i12 = icmp eq ptr %1, null
  br i1 %.not.i12, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.aj = load ptr, ptr %i.v, align 8, !tbaa !20
  %i.ak = getelementptr i8, ptr %i.aj, i64 -24
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds i8, ptr %i.v, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !46
  %i.ap = or i32 %i.ao, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.am, i32 noundef %i.ap)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.aq = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #22
  %i.ar = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull %1, i64 noundef %i.aq) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %bb.i, %bb.j
  %i.as = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull @.str.25, i64 noundef 4) ; 0 uses
  %i.at = load ptr, ptr %5, align 8, !tbaa !50
  %i.au = load i64, ptr %i.a, align 8, !tbaa !57
  %i.av = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef %i.at, i64 noundef %i.au) ; 12 uses
  %i.aw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull @.str.26, i64 noundef 2) ; 0 uses
  %i.ax = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull @.str.31, i64 noundef 2) ; 0 uses
  %i.ay = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull @.str.27, i64 noundef 2) ; 0 uses
  %i.az = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #22
  %i.ba = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull %6, i64 noundef %i.az) ; 0 uses
  %i.bb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull @.str.28, i64 noundef 23) ; 0 uses
  %.not.i15 = icmp eq ptr %4, null
  br i1 %.not.i15, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.bc = load ptr, ptr %i.av, align 8, !tbaa !20
  %i.bd = getelementptr i8, ptr %i.bc, i64 -24
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds i8, ptr %i.av, i64 %i.be ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !46
  %i.bi = or i32 %i.bh, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.bf, i32 noundef %i.bi)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.bj = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #22
  %i.bk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull %4, i64 noundef %i.bj) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16: ; preds = %bb.k, %bb.l
  %i.bl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull @.str.29, i64 noundef 1) ; 0 uses
  %i.bm = load ptr, ptr %i.av, align 8, !tbaa !20
  %i.bn = getelementptr i8, ptr %i.bm, i64 -24
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds i8, ptr %i.av, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 240
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !37 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i, label %bb.m, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
  tail call void @_ZSt16__throw_bad_castv() #23
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 56
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !43
  %.not.i1.i.i = icmp eq i8 %i.bt, 0
  br i1 %.not.i1.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 67
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !44
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.o:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.br)
  %i.bw = load ptr, ptr %i.br, align 8, !tbaa !20
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = tail call noundef signext i8 %i.by(ptr noundef nonnull align 8 dereferenceable(570) %i.br, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.n, %bb.o
  %.0.i.i.i = phi i8 [ %i.bv, %bb.n ], [ %i.bz, %bb.o ]
  %i.ca = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.av, i8 noundef signext %.0.i.i.i)
  %i.cb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ca) ; 0 uses
  %i.cc = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.cd = icmp eq i8 %i.cc, 0
  br i1 %i.cd, label %bb.p, label %_ZN5boost6detail12test_resultsEv.exit18, !prof !53

bb.p:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.ce = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #22
  %.not.i17 = icmp eq i32 %i.ce, 0
  br i1 %.not.i17, label %_ZN5boost6detail12test_resultsEv.exit18, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !55
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !56
  %i.cf = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #22 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #22
  br label %_ZN5boost6detail12test_resultsEv.exit18

_ZN5boost6detail12test_resultsEv.exit18:          ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %bb.p, %bb.q
  %i.cg = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !12
  %i.ch = add nsw i32 %i.cg, 1
  store i32 %i.ch, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !12
end_hunk_0
