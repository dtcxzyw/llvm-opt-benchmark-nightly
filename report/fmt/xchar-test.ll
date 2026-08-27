Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fmt/original/xchar-test?download=true
inline.NumInlined: 12086
inline.NumDeleted: 3130
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 104
loop-unroll.NumUnrolled: 143
begin_hunk_0_@_ZN7testing8internal18CmpHelperEQFailureIA5_wN3fmt3v1217basic_string_viewIwEEEENS_15AssertionResultEPKcS9_RKT_RKT0_:bb.a
  %i.g = load ptr, ptr %5, align 8, !tbaa !16     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !18
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  ret void

bb.c:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

bb.d:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIN3fmt3v1217basic_string_viewIwEEA5_wEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %6, align 8, !tbaa !16     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.d
  %i.q = load i64, ptr %i.o, align 8, !tbaa !18
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %bb.c
  %.pn = phi { ptr, i32 } [ %i.l, %bb.c ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.m, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.s = load ptr, ptr %5, align 8, !tbaa !16     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.v = load i64, ptr %i.t, align 8, !tbaa !18
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing13PrintToStringIN3fmt3v1217basic_string_viewIwEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  invoke void @_ZN7testing8internal20PrintBytesInObjectToEPKhmPSo(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef 16, ptr noundef nonnull %i.a)
          to label %_ZN7testing8internal21UniversalTersePrinterIN3fmt3v1217basic_string_viewIwEEE5PrintERKS5_PSo.exit unwind label %bb.e

_ZN7testing8internal21UniversalTersePrinterIN3fmt3v1217basic_string_viewIwEEE5PrintERKS5_PSo.exit: ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !1820)
  call void @llvm.experimental.noalias.scope.decl(metadata !1823)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !10, !alias.scope !1826
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !19, !alias.scope !1826
  store i8 0, ptr %i.b, align 8, !tbaa !18, !alias.scope !1826
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !901, !noalias !1826 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !noalias !1826 ; 2 uses
  %i.h = icmp ugt ptr %i.e, %i.g
  %.08.i.i.i = select i1 %i.h, ptr %i.e, ptr %i.g ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterIN3fmt3v1217basic_string_viewIwEEE5PrintERKS5_PSo.exit
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !903, !noalias !1826 ; 2 uses
  %i.k = ptrtoint ptr %.08.i.i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.j, i64 noundef %i.m)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !16, !alias.scope !1826 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.b
  br i1 %i.q, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.r = load i64, ptr %i.b, align 8, !tbaa !18, !alias.scope !1826
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #33
  br label %.body

bb.d:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterIN3fmt3v1217basic_string_viewIwEEE5PrintERKS5_PSo.exit
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.u = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.u, ptr %2, align 8, !tbaa !42
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.w = getelementptr i8, ptr %i.u, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %2, i64 %i.x
  store ptr %i.v, ptr %i.y, align 8, !tbaa !42
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.z, ptr %i.a, align 8, !tbaa !42
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aa, align 8, !tbaa !42
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !18
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #33
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aa, align 8, !tbaa !42
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ah) #29
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ai, ptr %2, align 8, !tbaa !42
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ak = getelementptr i8, ptr %i.ai, i64 -24
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds i8, ptr %2, i64 %i.al
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !42
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.an, align 8, !tbaa !913
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ao) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void

bb.e:                                             ; preds = %bb.a
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.ap, %bb.e ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.o, %bb.c ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %eh.lpad-body
}

declare void @_ZN7testing8internal20PrintBytesInObjectToEPKhmPSo(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v1217make_wformat_argsIJNS0_6detail9named_argIRA5_KwwEENS3_IRA4_S4_wEENS3_IiwEEEEEDTclsr3fmtE16make_format_argsINS0_15generic_contextINS0_14basic_appenderIwEEwEEEspfp_EEDpRT_(ptr dead_on_unwind noalias writable sret(%"struct.fmt::v12::detail::format_arg_store.314") align 16 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat {
_ZN3fmt3v126detail14init_named_argIwNS1_9named_argIRA5_KwwEETnNSt9enable_ifIXsr12is_named_argIT0_EE5valueEiE4typeELi0EEEvPNS1_14named_arg_infoIT_EERiSG_RKS9_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.a, ptr %0, align 16, !tbaa !1193
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 3, ptr %i.b, align 8, !tbaa !1190
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1827, !nonnull !79, !align !1019
  store ptr %i.e, ptr %i.c, align 16, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1829, !nonnull !79, !align !1019
  store ptr %i.h, ptr %i.f, align 16, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1831, !nonnull !79, !align !1019
  %i.l = load i32, ptr %i.k, align 4, !tbaa !166
  store i32 %i.l, ptr %i.i, align 16, !tbaa !18
  %i.m = load ptr, ptr %1, align 8, !tbaa !1833   ; 6 uses
  store ptr %i.m, ptr %i.a, align 16, !tbaa !195
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !166
  %i.n = load ptr, ptr %2, align 8, !tbaa !1834   ; 6 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !208
  %.not5.i.i3 = icmp eq i32 %i.o, 0               ; 2 uses
  br i1 %.not5.i.i3, label %.lr.ph.preheader.i7.i10, label %.lr.ph.preheader.i.i4

.lr.ph.preheader.i.i4:                            ; preds = %_ZN3fmt3v126detail14init_named_argIwNS1_9named_argIRA5_KwwEETnNSt9enable_ifIXsr12is_named_argIT0_EE5valueEiE4typeELi0EEEvPNS1_14named_arg_infoIT_EERiSG_RKS9_.exit
  %scevgep.i.i5 = getelementptr i8, ptr %i.n, i64 4
  %wcslen.i.i6 = tail call i64 @wcslen(ptr %scevgep.i.i5)
  %i.p = add i64 %wcslen.i.i6, 1
  br label %.lr.ph.preheader.i7.i10

.lr.ph.preheader.i7.i10:                          ; preds = %_ZN3fmt3v126detail14init_named_argIwNS1_9named_argIRA5_KwwEETnNSt9enable_ifIXsr12is_named_argIT0_EE5valueEiE4typeELi0EEEvPNS1_14named_arg_infoIT_EERiSG_RKS9_.exit, %.lr.ph.preheader.i.i4
  %.0.lcssa.i.i8 = phi i64 [ 0, %_ZN3fmt3v126detail14init_named_argIwNS1_9named_argIRA5_KwwEETnNSt9enable_ifIXsr12is_named_argIT0_EE5valueEiE4typeELi0EEEvPNS1_14named_arg_infoIT_EERiSG_RKS9_.exit ], [ %i.p, %.lr.ph.preheader.i.i4 ] ; 2 uses
  %i.q = load i32, ptr %i.m, align 4, !tbaa !208
  %.not5.i.i.i14 = icmp eq i32 %i.q, 0            ; 2 uses
  br i1 %.not5.i.i.i14, label %_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit.i.i18, label %.lr.ph.preheader.i.i.i15

.lr.ph.preheader.i.i.i15:                         ; preds = %.lr.ph.preheader.i7.i10
  %scevgep.i.i.i16 = getelementptr i8, ptr %i.m, i64 4
  %wcslen.i.i.i17 = tail call i64 @wcslen(ptr %scevgep.i.i.i16)
  %i.r = add i64 %wcslen.i.i.i17, 1
  br label %_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit.i.i18

_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit.i.i18: ; preds = %.lr.ph.preheader.i.i.i15, %.lr.ph.preheader.i7.i10
  %.0.lcssa.i.i.i19 = phi i64 [ 0, %.lr.ph.preheader.i7.i10 ], [ %i.r, %.lr.ph.preheader.i.i.i15 ] ; 2 uses
  %i.s = tail call noundef i64 @llvm.umin.i64(i64 %.0.lcssa.i.i.i19, i64 %.0.lcssa.i.i8) ; 2 uses
  %.not13.i.i.i.i.i20 = icmp eq i64 %i.s, 0
  br i1 %.not13.i.i.i.i.i20, label %_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.i.i30, label %.lr.ph.i.i.i.i.i21

.lr.ph.i.i.i.i.i21:                               ; preds = %_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit.i.i18, %bb.a
  %.016.i.i.i.i.i22 = phi i64 [ %i.x, %bb.a ], [ %i.s, %_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit.i.i18 ]
  %.0815.i.i.i.i.i23 = phi ptr [ %i.w, %bb.a ], [ %i.n, %_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit.i.i18 ] ; 2 uses
  %.0914.i.i.i.i.i24 = phi ptr [ %i.v, %bb.a ], [ %i.m, %_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit.i.i18 ] ; 2 uses
  %i.t = load i32, ptr %.0914.i.i.i.i.i24, align 4, !tbaa !208
  %i.u = load i32, ptr %.0815.i.i.i.i.i23, align 4, !tbaa !208
  %or.cond.not.i.i.i25 = icmp eq i32 %i.t, %i.u
  br i1 %or.cond.not.i.i.i25, label %bb.a, label %_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.thread.i.i26

bb.a:                                             ; preds = %.lr.ph.i.i.i.i.i21
  %i.v = getelementptr inbounds nuw i8, ptr %.0914.i.i.i.i.i24, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %.0815.i.i.i.i.i23, i64 4
  %i.x = add i64 %.016.i.i.i.i.i22, -1            ; 2 uses
  %.not.i.i.i.i.i29 = icmp eq i64 %i.x, 0
  br i1 %.not.i.i.i.i.i29, label %_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.i.i30, label %.lr.ph.i.i.i.i.i21, !llvm.loop !1196

_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.i.i30: ; preds = %bb.a, %_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit.i.i18
  %i.y = icmp eq i64 %.0.lcssa.i.i.i19, %.0.lcssa.i.i8
  br i1 %i.y, label %bb.b, label %_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.thread.i.i26

bb.b:                                             ; preds = %_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.i.i30
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.418) #30
  unreachable

_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.thread.i.i26: ; preds = %.lr.ph.i.i.i.i.i21, %_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.i.i30
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.n, ptr %i.z, align 16, !tbaa !195
  %.sroa.4.0..sroa_idx.i9 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 1, ptr %.sroa.4.0..sroa_idx.i9, align 8, !tbaa !166
  %i.aa = load ptr, ptr %3, align 8, !tbaa !1835  ; 5 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !208
  %.not5.i.i31 = icmp eq i32 %i.ab, 0
  br i1 %.not5.i.i31, label %.lr.ph.preheader.i7.i38, label %.lr.ph.preheader.i.i32

.lr.ph.preheader.i.i32:                           ; preds = %_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.thread.i.i26
  %scevgep.i.i33 = getelementptr i8, ptr %i.aa, i64 4
  %wcslen.i.i34 = tail call i64 @wcslen(ptr %scevgep.i.i33)
  %i.ac = add i64 %wcslen.i.i34, 1
  br label %.lr.ph.preheader.i7.i38

.lr.ph.preheader.i7.i38:                          ; preds = %_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.thread.i.i26, %.lr.ph.preheader.i.i32
  %.0.lcssa.i.i36 = phi i64 [ 0, %_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.thread.i.i26 ], [ %i.ac, %.lr.ph.preheader.i.i32 ] ; 4 uses
  br i1 %.not5.i.i.i14, label %_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit.i.i46, label %.lr.ph.preheader.i.i.i43

.lr.ph.preheader.i.i.i43:                         ; preds = %.lr.ph.preheader.i7.i38
  %scevgep.i.i.i44 = getelementptr i8, ptr %i.m, i64 4
  %wcslen.i.i.i45 = tail call i64 @wcslen(ptr %scevgep.i.i.i44)
  %i.ad = add i64 %wcslen.i.i.i45, 1
  br label %_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit.i.i46

_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit.i.i46: ; preds = %.lr.ph.preheader.i.i.i43, %.lr.ph.preheader.i7.i38
  %.0.lcssa.i.i.i47 = phi i64 [ 0, %.lr.ph.preheader.i7.i38 ], [ %i.ad, %.lr.ph.preheader.i.i.i43 ] ; 2 uses
  %i.ae = tail call noundef i64 @llvm.umin.i64(i64 %.0.lcssa.i.i.i47, i64 %.0.lcssa.i.i36) ; 2 uses
  %.not13.i.i.i.i.i48 = icmp eq i64 %i.ae, 0
  br i1 %.not13.i.i.i.i.i48, label %_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.i.i58, label %.lr.ph.i.i.i.i.i49

.lr.ph.i.i.i.i.i49:                               ; preds = %_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit.i.i46, %bb.c
  %.016.i.i.i.i.i50 = phi i64 [ %i.aj, %bb.c ], [ %i.ae, %_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit.i.i46 ]
  %.0815.i.i.i.i.i51 = phi ptr [ %i.ai, %bb.c ], [ %i.aa, %_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit.i.i46 ] ; 2 uses
  %.0914.i.i.i.i.i52 = phi ptr [ %i.ah, %bb.c ], [ %i.m, %_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit.i.i46 ] ; 2 uses
  %i.af = load i32, ptr %.0914.i.i.i.i.i52, align 4, !tbaa !208
  %i.ag = load i32, ptr %.0815.i.i.i.i.i51, align 4, !tbaa !208
  %or.cond.not.i.i.i53 = icmp eq i32 %i.af, %i.ag
  br i1 %or.cond.not.i.i.i53, label %bb.c, label %_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.thread.i.i54

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i49
  %i.ah = getelementptr inbounds nuw i8, ptr %.0914.i.i.i.i.i52, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %.0815.i.i.i.i.i51, i64 4
  %i.aj = add i64 %.016.i.i.i.i.i50, -1           ; 2 uses
  %.not.i.i.i.i.i57 = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i.i.i.i57, label %_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.i.i58, label %.lr.ph.i.i.i.i.i49, !llvm.loop !1196

_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.i.i58: ; preds = %bb.c, %_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit.i.i46
  %i.ak = icmp eq i64 %.0.lcssa.i.i.i47, %.0.lcssa.i.i36
  br i1 %i.ak, label %bb.d, label %_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.thread.i.i54

bb.d:                                             ; preds = %_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.i.i58.1, %_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.i.i58
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.418) #30
  unreachable

_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.thread.i.i54: ; preds = %.lr.ph.i.i.i.i.i49, %_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.i.i58
  br i1 %.not5.i.i3, label %_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit.i.i46.1, label %.lr.ph.preheader.i.i.i43.1

.lr.ph.preheader.i.i.i43.1:                       ; preds = %_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.thread.i.i54
  %scevgep.i.i.i44.1 = getelementptr i8, ptr %i.n, i64 4
  %wcslen.i.i.i45.1 = tail call i64 @wcslen(ptr %scevgep.i.i.i44.1)
  %i.al = add i64 %wcslen.i.i.i45.1, 1
  br label %_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit.i.i46.1

_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit.i.i46.1: ; preds = %.lr.ph.preheader.i.i.i43.1, %_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.thread.i.i54
  %.0.lcssa.i.i.i47.1 = phi i64 [ 0, %_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.thread.i.i54 ], [ %i.al, %.lr.ph.preheader.i.i.i43.1 ] ; 2 uses
  %i.am = tail call noundef i64 @llvm.umin.i64(i64 %.0.lcssa.i.i.i47.1, i64 %.0.lcssa.i.i36) ; 2 uses
  %.not13.i.i.i.i.i48.1 = icmp eq i64 %i.am, 0
  br i1 %.not13.i.i.i.i.i48.1, label %_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.i.i58.1, label %.lr.ph.i.i.i.i.i49.1

.lr.ph.i.i.i.i.i49.1:                             ; preds = %_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit.i.i46.1, %bb.e
  %.016.i.i.i.i.i50.1 = phi i64 [ %i.ar, %bb.e ], [ %i.am, %_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit.i.i46.1 ]
  %.0815.i.i.i.i.i51.1 = phi ptr [ %i.aq, %bb.e ], [ %i.aa, %_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit.i.i46.1 ] ; 2 uses
  %.0914.i.i.i.i.i52.1 = phi ptr [ %i.ap, %bb.e ], [ %i.n, %_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit.i.i46.1 ] ; 2 uses
  %i.an = load i32, ptr %.0914.i.i.i.i.i52.1, align 4, !tbaa !208
  %i.ao = load i32, ptr %.0815.i.i.i.i.i51.1, align 4, !tbaa !208
  %or.cond.not.i.i.i53.1 = icmp eq i32 %i.an, %i.ao
  br i1 %or.cond.not.i.i.i53.1, label %bb.e, label %_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.thread.i.i54.1

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i49.1
  %i.ap = getelementptr inbounds nuw i8, ptr %.0914.i.i.i.i.i52.1, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %.0815.i.i.i.i.i51.1, i64 4
  %i.ar = add i64 %.016.i.i.i.i.i50.1, -1         ; 2 uses
  %.not.i.i.i.i.i57.1 = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i.i.i.i57.1, label %_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.i.i58.1, label %.lr.ph.i.i.i.i.i49.1, !llvm.loop !1196

_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.i.i58.1: ; preds = %bb.e, %_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit.i.i46.1
  %i.as = icmp eq i64 %.0.lcssa.i.i.i47.1, %.0.lcssa.i.i36
  br i1 %i.as, label %bb.d, label %_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.thread.i.i54.1

_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.thread.i.i54.1: ; preds = %.lr.ph.i.i.i.i.i49.1, %_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.i.i58.1
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.aa, ptr %i.at, align 16, !tbaa !195
  %.sroa.4.0..sroa_idx.i37 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 2, ptr %.sroa.4.0..sroa_idx.i37, align 8, !tbaa !166
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v1217make_wformat_argsIJNS0_6detail9named_argIA5_wwEENS3_IA4_wwEENS3_IiwEEEEEDTclsr3fmtE16make_format_argsINS0_15generic_contextINS0_14basic_appenderIwEEwEEEspfp_EEDpRT_(ptr dead_on_unwind noalias writable sret(%"struct.fmt::v12::detail::format_arg_store.314") align 16 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat {
_ZN3fmt3v126detail14init_named_argIwNS1_9named_argIA5_wwEETnNSt9enable_ifIXsr12is_named_argIT0_EE5valueEiE4typeELi0EEEvPNS1_14named_arg_infoIT_EERiSE_RKS7_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.a, ptr %0, align 16, !tbaa !1193
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 3, ptr %i.b, align 8, !tbaa !1190
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1836, !nonnull !79, !align !1019
  store ptr %i.e, ptr %i.c, align 16, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1838, !nonnull !79, !align !1019
  store ptr %i.h, ptr %i.f, align 16, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1831, !nonnull !79, !align !1019
  %i.l = load i32, ptr %i.k, align 4, !tbaa !166
  store i32 %i.l, ptr %i.i, align 16, !tbaa !18
  %i.m = load ptr, ptr %1, align 8, !tbaa !1840   ; 6 uses
  store ptr %i.m, ptr %i.a, align 16, !tbaa !195
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !166
  %i.n = load ptr, ptr %2, align 8, !tbaa !1841   ; 6 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !208
  %.not5.i.i3 = icmp eq i32 %i.o, 0               ; 2 uses
  br i1 %.not5.i.i3, label %.lr.ph.preheader.i7.i10, label %.lr.ph.preheader.i.i4

.lr.ph.preheader.i.i4:                            ; preds = %_ZN3fmt3v126detail14init_named_argIwNS1_9named_argIA5_wwEETnNSt9enable_ifIXsr12is_named_argIT0_EE5valueEiE4typeELi0EEEvPNS1_14named_arg_infoIT_EERiSE_RKS7_.exit
  %scevgep.i.i5 = getelementptr i8, ptr %i.n, i64 4
  %wcslen.i.i6 = tail call i64 @wcslen(ptr %scevgep.i.i5)
  %i.p = add i64 %wcslen.i.i6, 1
  br label %.lr.ph.preheader.i7.i10

.lr.ph.preheader.i7.i10:                          ; preds = %_ZN3fmt3v126detail14init_named_argIwNS1_9named_argIA5_wwEETnNSt9enable_ifIXsr12is_named_argIT0_EE5valueEiE4typeELi0EEEvPNS1_14named_arg_infoIT_EERiSE_RKS7_.exit, %.lr.ph.preheader.i.i4
  %.0.lcssa.i.i8 = phi i64 [ 0, %_ZN3fmt3v126detail14init_named_argIwNS1_9named_argIA5_wwEETnNSt9enable_ifIXsr12is_named_argIT0_EE5valueEiE4typeELi0EEEvPNS1_14named_arg_infoIT_EERiSE_RKS7_.exit ], [ %i.p, %.lr.ph.preheader.i.i4 ] ; 2 uses
  %i.q = load i32, ptr %i.m, align 4, !tbaa !208
  %.not5.i.i.i14 = icmp eq i32 %i.q, 0            ; 2 uses
  br i1 %.not5.i.i.i14, label %_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit.i.i18, label %.lr.ph.preheader.i.i.i15

.lr.ph.preheader.i.i.i15:                         ; preds = %.lr.ph.preheader.i7.i10
  %scevgep.i.i.i16 = getelementptr i8, ptr %i.m, i64 4
  %wcslen.i.i.i17 = tail call i64 @wcslen(ptr %scevgep.i.i.i16)
  %i.r = add i64 %wcslen.i.i.i17, 1
  br label %_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit.i.i18

_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit.i.i18: ; preds = %.lr.ph.preheader.i.i.i15, %.lr.ph.preheader.i7.i10
  %.0.lcssa.i.i.i19 = phi i64 [ 0, %.lr.ph.preheader.i7.i10 ], [ %i.r, %.lr.ph.preheader.i.i.i15 ] ; 2 uses
  %i.s = tail call noundef i64 @llvm.umin.i64(i64 %.0.lcssa.i.i.i19, i64 %.0.lcssa.i.i8) ; 2 uses
  %.not13.i.i.i.i.i20 = icmp eq i64 %i.s, 0
  br i1 %.not13.i.i.i.i.i20, label %_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.i.i30, label %.lr.ph.i.i.i.i.i21

.lr.ph.i.i.i.i.i21:                               ; preds = %_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit.i.i18, %bb.a
  %.016.i.i.i.i.i22 = phi i64 [ %i.x, %bb.a ], [ %i.s, %_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit.i.i18 ]
  %.0815.i.i.i.i.i23 = phi ptr [ %i.w, %bb.a ], [ %i.n, %_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit.i.i18 ] ; 2 uses
  %.0914.i.i.i.i.i24 = phi ptr [ %i.v, %bb.a ], [ %i.m, %_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit.i.i18 ] ; 2 uses
  %i.t = load i32, ptr %.0914.i.i.i.i.i24, align 4, !tbaa !208
  %i.u = load i32, ptr %.0815.i.i.i.i.i23, align 4, !tbaa !208
  %or.cond.not.i.i.i25 = icmp eq i32 %i.t, %i.u
  br i1 %or.cond.not.i.i.i25, label %bb.a, label %_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.thread.i.i26

bb.a:                                             ; preds = %.lr.ph.i.i.i.i.i21
  %i.v = getelementptr inbounds nuw i8, ptr %.0914.i.i.i.i.i24, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %.0815.i.i.i.i.i23, i64 4
  %i.x = add i64 %.016.i.i.i.i.i22, -1            ; 2 uses
  %.not.i.i.i.i.i29 = icmp eq i64 %i.x, 0
  br i1 %.not.i.i.i.i.i29, label %_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.i.i30, label %.lr.ph.i.i.i.i.i21, !llvm.loop !1196

_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.i.i30: ; preds = %bb.a, %_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit.i.i18
  %i.y = icmp eq i64 %.0.lcssa.i.i.i19, %.0.lcssa.i.i8
  br i1 %i.y, label %bb.b, label %_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.thread.i.i26

bb.b:                                             ; preds = %_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.i.i30
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.418) #30
  unreachable

_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.thread.i.i26: ; preds = %.lr.ph.i.i.i.i.i21, %_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.i.i30
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.n, ptr %i.z, align 16, !tbaa !195
  %.sroa.4.0..sroa_idx.i9 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 1, ptr %.sroa.4.0..sroa_idx.i9, align 8, !tbaa !166
  %i.aa = load ptr, ptr %3, align 8, !tbaa !1835  ; 5 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !208
  %.not5.i.i31 = icmp eq i32 %i.ab, 0
  br i1 %.not5.i.i31, label %.lr.ph.preheader.i7.i38, label %.lr.ph.preheader.i.i32

.lr.ph.preheader.i.i32:                           ; preds = %_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.thread.i.i26
  %scevgep.i.i33 = getelementptr i8, ptr %i.aa, i64 4
  %wcslen.i.i34 = tail call i64 @wcslen(ptr %scevgep.i.i33)
  %i.ac = add i64 %wcslen.i.i34, 1
  br label %.lr.ph.preheader.i7.i38

.lr.ph.preheader.i7.i38:                          ; preds = %_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.thread.i.i26, %.lr.ph.preheader.i.i32
  %.0.lcssa.i.i36 = phi i64 [ 0, %_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.thread.i.i26 ], [ %i.ac, %.lr.ph.preheader.i.i32 ] ; 4 uses
  br i1 %.not5.i.i.i14, label %_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit.i.i46, label %.lr.ph.preheader.i.i.i43

.lr.ph.preheader.i.i.i43:                         ; preds = %.lr.ph.preheader.i7.i38
  %scevgep.i.i.i44 = getelementptr i8, ptr %i.m, i64 4
  %wcslen.i.i.i45 = tail call i64 @wcslen(ptr %scevgep.i.i.i44)
  %i.ad = add i64 %wcslen.i.i.i45, 1
  br label %_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit.i.i46

_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit.i.i46: ; preds = %.lr.ph.preheader.i.i.i43, %.lr.ph.preheader.i7.i38
  %.0.lcssa.i.i.i47 = phi i64 [ 0, %.lr.ph.preheader.i7.i38 ], [ %i.ad, %.lr.ph.preheader.i.i.i43 ] ; 2 uses
  %i.ae = tail call noundef i64 @llvm.umin.i64(i64 %.0.lcssa.i.i.i47, i64 %.0.lcssa.i.i36) ; 2 uses
  %.not13.i.i.i.i.i48 = icmp eq i64 %i.ae, 0
  br i1 %.not13.i.i.i.i.i48, label %_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.i.i58, label %.lr.ph.i.i.i.i.i49

.lr.ph.i.i.i.i.i49:                               ; preds = %_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit.i.i46, %bb.c
  %.016.i.i.i.i.i50 = phi i64 [ %i.aj, %bb.c ], [ %i.ae, %_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit.i.i46 ]
  %.0815.i.i.i.i.i51 = phi ptr [ %i.ai, %bb.c ], [ %i.aa, %_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit.i.i46 ] ; 2 uses
  %.0914.i.i.i.i.i52 = phi ptr [ %i.ah, %bb.c ], [ %i.m, %_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit.i.i46 ] ; 2 uses
  %i.af = load i32, ptr %.0914.i.i.i.i.i52, align 4, !tbaa !208
  %i.ag = load i32, ptr %.0815.i.i.i.i.i51, align 4, !tbaa !208
  %or.cond.not.i.i.i53 = icmp eq i32 %i.af, %i.ag
  br i1 %or.cond.not.i.i.i53, label %bb.c, label %_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.thread.i.i54

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i49
  %i.ah = getelementptr inbounds nuw i8, ptr %.0914.i.i.i.i.i52, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %.0815.i.i.i.i.i51, i64 4
  %i.aj = add i64 %.016.i.i.i.i.i50, -1           ; 2 uses
  %.not.i.i.i.i.i57 = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i.i.i.i57, label %_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.i.i58, label %.lr.ph.i.i.i.i.i49, !llvm.loop !1196

_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.i.i58: ; preds = %bb.c, %_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit.i.i46
  %i.ak = icmp eq i64 %.0.lcssa.i.i.i47, %.0.lcssa.i.i36
  br i1 %i.ak, label %bb.d, label %_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.thread.i.i54

bb.d:                                             ; preds = %_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.i.i58.1, %_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.i.i58
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.418) #30
  unreachable

_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.thread.i.i54: ; preds = %.lr.ph.i.i.i.i.i49, %_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.i.i58
  br i1 %.not5.i.i3, label %_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit.i.i46.1, label %.lr.ph.preheader.i.i.i43.1

.lr.ph.preheader.i.i.i43.1:                       ; preds = %_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.thread.i.i54
  %scevgep.i.i.i44.1 = getelementptr i8, ptr %i.n, i64 4
  %wcslen.i.i.i45.1 = tail call i64 @wcslen(ptr %scevgep.i.i.i44.1)
  %i.al = add i64 %wcslen.i.i.i45.1, 1
  br label %_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit.i.i46.1

_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit.i.i46.1: ; preds = %.lr.ph.preheader.i.i.i43.1, %_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.thread.i.i54
  %.0.lcssa.i.i.i47.1 = phi i64 [ 0, %_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.thread.i.i54 ], [ %i.al, %.lr.ph.preheader.i.i.i43.1 ] ; 2 uses
  %i.am = tail call noundef i64 @llvm.umin.i64(i64 %.0.lcssa.i.i.i47.1, i64 %.0.lcssa.i.i36) ; 2 uses
  %.not13.i.i.i.i.i48.1 = icmp eq i64 %i.am, 0
  br i1 %.not13.i.i.i.i.i48.1, label %_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.i.i58.1, label %.lr.ph.i.i.i.i.i49.1

.lr.ph.i.i.i.i.i49.1:                             ; preds = %_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit.i.i46.1, %bb.e
  %.016.i.i.i.i.i50.1 = phi i64 [ %i.ar, %bb.e ], [ %i.am, %_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit.i.i46.1 ]
  %.0815.i.i.i.i.i51.1 = phi ptr [ %i.aq, %bb.e ], [ %i.aa, %_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit.i.i46.1 ] ; 2 uses
  %.0914.i.i.i.i.i52.1 = phi ptr [ %i.ap, %bb.e ], [ %i.n, %_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit.i.i46.1 ] ; 2 uses
  %i.an = load i32, ptr %.0914.i.i.i.i.i52.1, align 4, !tbaa !208
  %i.ao = load i32, ptr %.0815.i.i.i.i.i51.1, align 4, !tbaa !208
  %or.cond.not.i.i.i53.1 = icmp eq i32 %i.an, %i.ao
  br i1 %or.cond.not.i.i.i53.1, label %bb.e, label %_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.thread.i.i54.1

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i49.1
  %i.ap = getelementptr inbounds nuw i8, ptr %.0914.i.i.i.i.i52.1, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %.0815.i.i.i.i.i51.1, i64 4
  %i.ar = add i64 %.016.i.i.i.i.i50.1, -1         ; 2 uses
  %.not.i.i.i.i.i57.1 = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i.i.i.i57.1, label %_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.i.i58.1, label %.lr.ph.i.i.i.i.i49.1, !llvm.loop !1196

_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.i.i58.1: ; preds = %bb.e, %_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit.i.i46.1
  %i.as = icmp eq i64 %.0.lcssa.i.i.i47.1, %.0.lcssa.i.i36
  br i1 %i.as, label %bb.d, label %_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.thread.i.i54.1

_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.thread.i.i54.1: ; preds = %.lr.ph.i.i.i.i.i49.1, %_ZN3fmt3v12eqENS0_17basic_string_viewIwEES2_.exit.i.i58.1
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.aa, ptr %i.at, align 16, !tbaa !195
  %.sroa.4.0..sroa_idx.i37 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 2, ptr %.sroa.4.0..sroa_idx.i37, align 8, !tbaa !166
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal18CmpHelperEQFailureINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES7_EENS_15AssertionResultEPKcSA_RKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @_ZN7testing13PrintToStringINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS2_IcS3_IcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  invoke void @_ZN7testing13PrintToStringINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS2_IcS3_IcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES7_EENS3_IcS4_IcESaIcEEERKT_RKT0_.exit unwind label %bb.c

_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES7_EENS3_IcS4_IcESaIcEEERKT_RKT0_.exit: ; preds = %bb.a
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES7_EENS3_IcS4_IcESaIcEEERKT_RKT0_.exit
  %i.a = load ptr, ptr %6, align 8, !tbaa !16     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.d = load i64, ptr %i.b, align 8, !tbaa !18
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.f = load ptr, ptr %5, align 8, !tbaa !16     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.i = load i64, ptr %i.g, align 8, !tbaa !18
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  ret void

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

bb.d:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES7_EENS3_IcS4_IcESaIcEEERKT_RKT0_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = load ptr, ptr %6, align 8, !tbaa !16     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.d
  %i.p = load i64, ptr %i.n, align 8, !tbaa !18
  %i.q = add i64 %i.p, 1
end_hunk_0
