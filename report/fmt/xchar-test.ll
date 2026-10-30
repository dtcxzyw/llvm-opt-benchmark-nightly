Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fmt/original/xchar-test?download=true
inline.NumInlined: 12086
inline.NumDeleted: 3130
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 104
loop-unroll.NumUnrolled: 143
begin_hunk_0_@_ZN28std_test_xchar_optional_Test8TestBodyEv:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !171  ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !133
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.e, %bb.d
  %i.ab = phi ptr [ %i.aa, %bb.e ], [ @.str, %bb.d ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 451, ptr noundef %i.ab)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.ac = load ptr, ptr %6, align 8, !tbaa !173   ; 3 uses
  %.not.i.i25 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i25, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.g
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !143
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(128) %i.ac) #29, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.g, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit28

bb.i:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #29
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ai, %bb.j ], [ %i.ah, %bb.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.aj = load ptr, ptr %6, align 8, !tbaa !173   ; 3 uses
  %.not.i.i26 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i26, label %_ZN7testing7MessageD2Ev.exit28, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i27

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i27: ; preds = %bb.k
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !143
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(128) %i.aj) #29, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit28

_ZN7testing7MessageD2Ev.exit28:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i27, %bb.k, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %i.ag, %bb.h ], [ %.pn, %bb.k ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i27 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #29
  br label %bb.q

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, %_ZN7testing7MessageD2Ev.exit
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !171 ; 4 uses
  %.not.i.i29 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i29, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !133 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.m
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !134
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #33
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef 32) #33
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.l, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 11 uses
  store ptr %i.au, ptr %11, align 8, !tbaa !190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 11, ptr %i.a, align 8, !tbaa !131
  %i.av = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc31 unwind label %bb.r   ; 2 uses

.noexc31:                                         ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  store ptr %i.av, ptr %11, align 8, !tbaa !159
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !131
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !134
  %i.ax = call ptr @wmemcpy(ptr noundef %i.av, ptr noundef nonnull @.str.352, i64 noundef 11) #29 ; 0 uses
  %.pre5.i.i = load i64, ptr %i.a, align 8, !tbaa !131 ; 5 uses
  %.pre6.i.i = load ptr, ptr %11, align 8, !tbaa !159 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  store i64 %.pre5.i.i, ptr %i.ay, align 8, !tbaa !158
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.pre6.i.i, i64 %.pre5.i.i
  store i32 0, ptr %i.az, align 4, !tbaa !192
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  store ptr %i.ba, ptr %10, align 8, !tbaa !190
  %i.bb = icmp eq ptr %.pre6.i.i, %i.au
  br i1 %i.bb, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.n:                                             ; preds = %.noexc31
  %i.bc = icmp ult i64 %.pre5.i.i, 4
  call void @llvm.assume(i1 %i.bc)
  %i.bd = add nuw nsw i64 %.pre5.i.i, 1
  %i.be = call ptr @wmemcpy(ptr noundef nonnull %i.ba, ptr noundef nonnull %i.au, i64 noundef %i.bd) #29 ; 0 uses
  %.pre = load i64, ptr %i.ay, align 8, !tbaa !158
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEC2IS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISA_ISt10in_place_tSH_EESt16is_constructibleIS5_JSD_EESt14is_convertibleISD_S5_EEEbE4typeELb1EEEOSD_.exit

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.noexc31
  store ptr %.pre6.i.i, ptr %10, align 8, !tbaa !159
  %i.bf = load i64, ptr %i.au, align 8, !tbaa !134
  store i64 %i.bf, ptr %i.ba, align 8, !tbaa !134
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEC2IS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISA_ISt10in_place_tSH_EESt16is_constructibleIS5_JSD_EESt14is_convertibleISD_S5_EEEbE4typeELb1EEEOSD_.exit

_ZNSt8optionalINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEC2IS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISA_ISt10in_place_tSH_EESt16is_constructibleIS5_JSD_EESt14is_convertibleISD_S5_EEEbE4typeELb1EEEOSD_.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.bg = phi i64 [ %.pre, %bb.n ], [ %.pre5.i.i, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !158
  store ptr %i.au, ptr %11, align 8, !tbaa !159
  store i64 0, ptr %i.ay, align 8, !tbaa !158
  store i32 0, ptr %i.au, align 8, !tbaa !192
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 5 uses
  store i8 1, ptr %i.bi, align 8, !tbaa !308
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29, !noalias !1491
  %i.bj = ptrtoint ptr %10 to i64
  %.sroa.4.0.insert.ext.i.i32 = zext i64 ptrtoint (ptr @_ZN3fmt3v126detail5valueINS0_15generic_contextINS0_14basic_appenderIwEEwEEE13format_customISt8optionalINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEEvPvRNS0_13parse_contextIwEERS6_ to i64) to i128
  %.sroa.4.0.insert.shift.i.i33 = shl nuw i128 %.sroa.4.0.insert.ext.i.i32, 64
  %.sroa.0.0.insert.ext.i.i34 = zext i64 %i.bj to i128
  %.sroa.0.0.insert.insert.i.i35 = or disjoint i128 %.sroa.4.0.insert.shift.i.i33, %.sroa.0.0.insert.ext.i.i34
  store i128 %.sroa.0.0.insert.insert.i.i35, ptr %1, align 16, !noalias !1491
  invoke void @_ZN3fmt3v127vformatIwTnNSt9enable_ifIXntsr3std7is_sameIT_cEE5valueEiE4typeELi0EEENSt7__cxx1112basic_stringIS3_St11char_traitsIS3_ESaIS3_EEENS0_17basic_string_viewIS3_EENS0_17basic_format_argsINSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_7contextENS0_15generic_contextINS0_14basic_appenderIS3_EES3_EEE4typeEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.6") align 8 %9, ptr nonnull @.str.11, i64 2, i64 15, ptr nonnull %1)
          to label %bb.o unwind label %bb.s

bb.o:                                             ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEC2IS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISA_ISt10in_place_tSH_EESt16is_constructibleIS5_JSD_EESt14is_convertibleISD_S5_EEEbE4typeELb1EEEOSD_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29, !noalias !1491
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !158, !noalias !1492
  %i.bm = icmp eq i64 %i.bl, 23
  br i1 %i.bm, label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i38, label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6.i.i37

_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i38: ; preds = %bb.o
  %i.bn = load ptr, ptr %9, align 8, !tbaa !159, !noalias !1492
  %i.bo = call i32 @wmemcmp(ptr noundef %i.bn, ptr noundef nonnull align 4 dereferenceable(96) @.str.353, i64 noundef 23) #31, !noalias !1492
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i39, label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6.i.i37

_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i39: ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i38
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8)
          to label %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEA24_wTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit unwind label %bb.t

_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6.i.i37: ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i38, %bb.o
  invoke void @_ZN7testing8internal18CmpHelperEQFailureINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEA24_wEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8, ptr noundef nonnull @.str.350, ptr noundef nonnull @.str.351, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 4 dereferenceable(96) @.str.353)
          to label %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEA24_wTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit unwind label %bb.t

_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEA24_wTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit: ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i39, %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6.i.i37
  %i.bq = load ptr, ptr %9, align 8, !tbaa !159   ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i42: ; preds = %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEA24_wTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !134
  %i.bu = shl i64 %i.bt, 2
  %i.bv = add i64 %i.bu, 4
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bv) #33
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit44: ; preds = %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEA24_wTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i42
  %i.bw = load i8, ptr %i.bi, align 8, !tbaa !308, !range !169, !noundef !170
  %i.bx = trunc nuw i8 %i.bw to i1
  store i8 0, ptr %i.bi, align 8, !tbaa !308
  br i1 %i.bx, label %bb.p, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0ELb0EED2Ev.exit

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit44
  %i.by = load ptr, ptr %10, align 8, !tbaa !159  ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.ba
  br i1 %i.bz, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.p
  %i.ca = load i64, ptr %i.ba, align 8, !tbaa !134
  %i.cb = shl i64 %i.ca, 2
  %i.cc = add i64 %i.cb, 4
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cc) #33
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0ELb0EED2Ev.exit: ; preds = %bb.p, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit44, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.cd = load ptr, ptr %11, align 8, !tbaa !159  ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.au
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i45: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0ELb0EED2Ev.exit
  %i.cf = load i64, ptr %i.au, align 8, !tbaa !134
  %i.cg = shl i64 %i.cf, 2
  %i.ch = add i64 %i.cg, 4
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #33
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit47: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0ELb0EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  %i.ci = load i8, ptr %8, align 8, !tbaa !168, !range !169, !noundef !170
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.ae, label %bb.v

bb.q:                                             ; preds = %_ZN7testing7MessageD2Ev.exit28, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit24
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit28 ], [ %i.r, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit24 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.ah

bb.r:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit56

bb.s:                                             ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEC2IS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISA_ISt10in_place_tSH_EESt16is_constructibleIS5_JSD_EESt14is_convertibleISD_S5_EEEbE4typeELb1EEEOSD_.exit
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit50

bb.t:                                             ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6.i.i37, %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i39
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cn = load ptr, ptr %9, align 8, !tbaa !159   ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i48: ; preds = %bb.t
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !134
  %i.cr = shl i64 %i.cq, 2
  %i.cs = add i64 %i.cr, 4
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cs) #33
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit50: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i48, %bb.s
  %.pn13 = phi { ptr, i32 } [ %i.cl, %bb.s ], [ %i.cm, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i48 ], [ %i.cm, %bb.t ] ; 2 uses
  %i.ct = load i8, ptr %i.bi, align 8, !tbaa !308, !range !169, !noundef !170
  %i.cu = trunc nuw i8 %i.ct to i1
  store i8 0, ptr %i.bi, align 8, !tbaa !308
  br i1 %i.cu, label %bb.u, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0ELb0EED2Ev.exit53

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit50
  %i.cv = load ptr, ptr %10, align 8, !tbaa !159  ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.ba
  br i1 %i.cw, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0ELb0EED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i.i51

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i.i51: ; preds = %bb.u
  %i.cx = load i64, ptr %i.ba, align 8, !tbaa !134
  %i.cy = shl i64 %i.cx, 2
  %i.cz = add i64 %i.cy, 4
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cz) #33
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0ELb0EED2Ev.exit53

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0ELb0EED2Ev.exit53: ; preds = %bb.u, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit50, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i.i51
  %i.da = load ptr, ptr %11, align 8, !tbaa !159  ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.au
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i54: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0ELb0EED2Ev.exit53
  %i.dc = load i64, ptr %i.au, align 8, !tbaa !134
  %i.dd = shl i64 %i.dc, 2
  %i.de = add i64 %i.dd, 4
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.de) #33
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit56: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0ELb0EED2Ev.exit53, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i54, %bb.r
  %.pn13.pn = phi { ptr, i32 } [ %i.ck, %bb.r ], [ %.pn13, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i54 ], [ %.pn13, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0ELb0EED2Ev.exit53 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %bb.ag

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit47
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.w unwind label %bb.aa

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  %i.df = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !171 ; 2 uses
  %.not.i.i57 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i57, label %_ZNK7testing15AssertionResult15failure_messageEv.exit58, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !133
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit58

_ZNK7testing15AssertionResult15failure_messageEv.exit58: ; preds = %bb.x, %bb.w
  %i.di = phi ptr [ %i.dh, %bb.x ], [ @.str, %bb.w ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 453, ptr noundef %i.di)
          to label %bb.y unwind label %bb.ab

bb.y:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit58
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.z unwind label %bb.ac

bb.z:                                             ; preds = %bb.y
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  %i.dj = load ptr, ptr %12, align 8, !tbaa !173  ; 3 uses
  %.not.i.i59 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i59, label %_ZN7testing7MessageD2Ev.exit61, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i60

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i60: ; preds = %bb.z
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !143
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8
  call void %i.dm(ptr noundef nonnull align 8 dereferenceable(128) %i.dj) #29, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit61

_ZN7testing7MessageD2Ev.exit61:                   ; preds = %bb.z, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  br label %bb.ae

bb.aa:                                            ; preds = %bb.v
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit64

bb.ab:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit58
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ac:                                            ; preds = %bb.y
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #29
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.pn16 = phi { ptr, i32 } [ %i.dp, %bb.ac ], [ %i.do, %bb.ab ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  %i.dq = load ptr, ptr %12, align 8, !tbaa !173  ; 3 uses
  %.not.i.i62 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i62, label %_ZN7testing7MessageD2Ev.exit64, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i63

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i63: ; preds = %bb.ad
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !143
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 8 dereferenceable(128) %i.dq) #29, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit64

_ZN7testing7MessageD2Ev.exit64:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i63, %bb.ad, %bb.aa
  %.pn16.pn = phi { ptr, i32 } [ %i.dn, %bb.aa ], [ %.pn16, %bb.ad ], [ %.pn16, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i63 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #29
  br label %bb.ag

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit47, %_ZN7testing7MessageD2Ev.exit61
  %i.du = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !171 ; 4 uses
  %.not.i.i65 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i65, label %_ZN7testing15AssertionResultD2Ev.exit69, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !133 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 16 ; 2 uses
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i66: ; preds = %bb.af
  %i.dz = load i64, ptr %i.dx, align 8, !tbaa !134
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.ea) #33
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i67

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i67: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i66
  call void @_ZdlPvm(ptr noundef nonnull %i.dv, i64 noundef 32) #33
  br label %_ZN7testing15AssertionResultD2Ev.exit69

_ZN7testing15AssertionResultD2Ev.exit69:          ; preds = %bb.ae, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i67
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  ret void

bb.ag:                                            ; preds = %_ZN7testing7MessageD2Ev.exit64, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit56
  %.pn16.pn.pn = phi { ptr, i32 } [ %.pn16.pn, %_ZN7testing7MessageD2Ev.exit64 ], [ %.pn13.pn, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit56 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.q
  %.pn16.pn.pn.pn = phi { ptr, i32 } [ %.pn16.pn.pn, %bb.ag ], [ %.pn.pn.pn, %bb.q ]
  resume { ptr, i32 } %.pn16.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN61xchar_test_format_explicitly_convertible_to_wstring_view_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #33
  ret void
}

declare void @_ZN7testing4Test5SetUpEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

declare void @_ZN7testing4Test8TearDownEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing4Test5SetupEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN22xchar_test_format_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN30xchar_test_is_formattable_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN35xchar_test_compile_time_string_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN25xchar_test_format_to_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN45xchar_test_compile_time_string_format_to_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #33
end_hunk_0
