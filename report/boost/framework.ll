Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/framework?download=true
inline.NumInlined: 4258
inline.NumDeleted: 1726
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN5boost9unit_test9framework4impl11name_filter16test_suite_startERKNS0_10test_suiteE:bb.a
  %i.ax = load i64, ptr %i.ad, align 8, !tbaa !37
  store i64 %i.ax, ptr %i.aw, align 8, !tbaa !37
  %i.ay = icmp sgt i64 %i.an, 0
  br i1 %i.ay, label %bb.g, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.ak, i64 %i.an, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.g, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.not.i17.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  %i.ba = load ptr, ptr %i.ag, align 8, !tbaa !149
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.am
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.bc) #26
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  store ptr %i.av, ptr %i.ac, align 8, !tbaa !148
  store ptr %i.az, ptr %i.ae, align 8, !tbaa !85
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.at
  store ptr %i.bd, ptr %i.ag, align 8, !tbaa !149
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.d, %_ZN5boost9unit_test9framework4impl11name_filter11filter_unitERKNS0_9test_unitE.exit, %bb.b
  %.0 = phi i1 [ true, %bb.b ], [ false, %_ZN5boost9unit_test9framework4impl11name_filter11filter_unitERKNS0_9test_unitE.exit ], [ false, %bb.d ], [ false, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost9unit_test9framework4impl11name_filter17test_suite_finishERKNS0_10test_suiteE(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef nonnull align 8 dereferenceable(384) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !336
  %i.c = add i32 %i.b, -1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !336
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost9unit_test9framework4impl11name_filterD0Ev(ptr noundef nonnull align 8 dereferenceable(44) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5boost9unit_test9framework4impl11name_filterE, i64 16), ptr %0, align 8, !tbaa !62
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !66   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS6_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyISt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS6_EEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !69 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS6_EEEvPT_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !70
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #26, !inline_history !71
  br label %_ZSt8_DestroyISt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS6_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS6_EEEvPT_.exit.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS6_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS6_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS6_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !65
  br label %_ZSt8_DestroyIPSt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS6_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.l = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS6_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i.i, label %_ZN5boost9unit_test9framework4impl11name_filterD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !73
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #26, !inline_history !71
  br label %_ZN5boost9unit_test9framework4impl11name_filterD2Ev.exit

_ZN5boost9unit_test9framework4impl11name_filterD2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIS_IN5boost9unit_test9framework4impl11name_filter9componentESaIS5_EESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !65     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIS_IN5boost9unit_test9framework4impl11name_filter9componentESaIS5_EESaIS7_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #25
  unreachable

_ZNKSt6vectorIS_IN5boost9unit_test9framework4impl11name_filter9componentESaIS5_EESaIS7_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 24
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #27 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  %i.r = load <2 x ptr>, ptr %2, align 8, !tbaa !337
  store <2 x ptr> %i.r, ptr %i.q, align 8, !tbaa !337
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !70
  store ptr %i.u, ptr %i.s, align 8, !tbaa !70
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIS_IN5boost9unit_test9framework4impl11name_filter9componentESaIS5_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIS_IN5boost9unit_test9framework4impl11name_filter9componentESaIS5_EESaIS7_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorIS_IN5boost9unit_test9framework4impl11name_filter9componentESaIS5_EESaIS7_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIS_IN5boost9unit_test9framework4impl11name_filter9componentESaIS5_EESaIS7_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !671)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !672)
  %i.v = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !337, !alias.scope !672
  store <2 x ptr> %i.v, ptr %.012.i.i.i, align 8, !tbaa !337, !alias.scope !671
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !70, !alias.scope !672
  store ptr %i.y, ptr %i.w, align 8, !tbaa !70, !alias.scope !671
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !672
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.z, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIS_IN5boost9unit_test9framework4impl11name_filter9componentESaIS5_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i, !llvm.loop !667

_ZNSt6vectorIS_IN5boost9unit_test9framework4impl11name_filter9componentESaIS5_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIS_IN5boost9unit_test9framework4impl11name_filter9componentESaIS5_EESaIS7_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIS_IN5boost9unit_test9framework4impl11name_filter9componentESaIS5_EESaIS7_EE12_M_check_lenEmPKc.exit ], [ %i.aa, %.lr.ph.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 24 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIS_IN5boost9unit_test9framework4impl11name_filter9componentESaIS5_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIS_IN5boost9unit_test9framework4impl11name_filter9componentESaIS5_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ah, %.lr.ph.i.i.i17 ], [ %i.ab, %_ZNSt6vectorIS_IN5boost9unit_test9framework4impl11name_filter9componentESaIS5_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ] ; 3 uses
  %.0911.i.i.i19 = phi ptr [ %i.ag, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorIS_IN5boost9unit_test9framework4impl11name_filter9componentESaIS5_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !673)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !674)
  %i.ac = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !337, !alias.scope !674
  store <2 x ptr> %i.ac, ptr %.012.i.i.i18, align 8, !tbaa !337, !alias.scope !673
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !70, !alias.scope !674
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !70, !alias.scope !673
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i19, i8 0, i64 24, i1 false), !alias.scope !674
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIS_IN5boost9unit_test9framework4impl11name_filter9componentESaIS5_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !667

_ZNSt6vectorIS_IN5boost9unit_test9framework4impl11name_filter9componentESaIS5_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIS_IN5boost9unit_test9framework4impl11name_filter9componentESaIS5_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ab, %_ZNSt6vectorIS_IN5boost9unit_test9framework4impl11name_filter9componentESaIS5_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ], [ %i.ah, %.lr.ph.i.i.i17 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS6_EESaIS8_EE13_M_deallocateEPS8_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIS_IN5boost9unit_test9framework4impl11name_filter9componentESaIS5_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !73
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.al) #26
  br label %_ZNSt12_Vector_baseISt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS6_EESaIS8_EE13_M_deallocateEPS8_m.exit

_ZNSt12_Vector_baseISt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS6_EESaIS8_EE13_M_deallocateEPS8_m.exit: ; preds = %_ZNSt6vectorIS_IN5boost9unit_test9framework4impl11name_filter9componentESaIS5_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !65
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !66
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.l
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !73
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS5_EE19_M_range_initializeINS1_5utils27basic_string_token_iteratorIcNS9_9ut_detail20default_char_compareIcEEEEEEvT_SF_St18input_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
.lr.ph:
  %3 = alloca ptr, align 8                        ; 5 uses
  %4 = alloca %"class.boost::unit_test::basic_cstring", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.pre = load i8, ptr %1, align 8, !tbaa !59, !range !74
  br label %_ZN5boost9iterators6detail20iterator_facade_baseINS_9unit_test5utils27basic_string_token_iteratorIcNS4_9ut_detail20default_char_compareIcEEEENS3_13basic_cstringIKcEENS0_21forward_traversal_tagESC_lLb0ELb0EEppEv.exit

_ZN5boost9iterators6detail20iterator_facade_baseINS_9unit_test5utils27basic_string_token_iteratorIcNS4_9ut_detail20default_char_compareIcEEEENS3_13basic_cstringIKcEENS0_21forward_traversal_tagESC_lLb0ELb0EEppEv.exit: ; preds = %_ZN5boost9iterators6detail20iterator_facade_baseINS_9unit_test5utils27basic_string_token_iteratorIcNS4_9ut_detail20default_char_compareIcEEEENS3_13basic_cstringIKcEENS0_21forward_traversal_tagESC_lLb0ELb0EEppEv.exit.backedge, %.lr.ph
  %5 = phi i8 [ %.pre, %.lr.ph ], [ %.be, %_ZN5boost9iterators6detail20iterator_facade_baseINS_9unit_test5utils27basic_string_token_iteratorIcNS4_9ut_detail20default_char_compareIcEEEENS3_13basic_cstringIKcEENS0_21forward_traversal_tagESC_lLb0ELb0EEppEv.exit.backedge ] ; 2 uses
  %6 = trunc nuw i8 %5 to i1
  br i1 %6, label %bb.a, label %_ZN5boost9iteratorsneINS_9unit_test5utils27basic_string_token_iteratorIcNS3_9ut_detail20default_char_compareIcEEEENS2_13basic_cstringIKcEENS0_21forward_traversal_tagESB_lS8_SB_SC_SB_lEENS0_6detail23enable_if_interoperableIT_T4_bE4typeERKNS0_15iterator_facadeISF_T0_T1_T2_T3_EERKNSJ_ISG_T5_T6_T7_T8_EE.exit

_ZN5boost9iteratorsneINS_9unit_test5utils27basic_string_token_iteratorIcNS3_9ut_detail20default_char_compareIcEEEENS2_13basic_cstringIKcEENS0_21forward_traversal_tagESB_lS8_SB_SC_SB_lEENS0_6detail23enable_if_interoperableIT_T4_bE4typeERKNS0_15iterator_facadeISF_T0_T1_T2_T3_EERKNSJ_ISG_T5_T6_T7_T8_EE.exit: ; preds = %_ZN5boost9iterators6detail20iterator_facade_baseINS_9unit_test5utils27basic_string_token_iteratorIcNS4_9ut_detail20default_char_compareIcEEEENS3_13basic_cstringIKcEENS0_21forward_traversal_tagESC_lLb0ELb0EEppEv.exit
  %7 = load i8, ptr %2, align 8, !tbaa !59, !range !74, !noundef !75
  %8 = trunc nuw i8 %7 to i1
  br i1 %8, label %bb.a, label %._crit_edge

bb.a:                                             ; preds = %_ZN5boost9iterators6detail20iterator_facade_baseINS_9unit_test5utils27basic_string_token_iteratorIcNS4_9ut_detail20default_char_compareIcEEEENS3_13basic_cstringIKcEENS0_21forward_traversal_tagESC_lLb0ELb0EEppEv.exit, %_ZN5boost9iteratorsneINS_9unit_test5utils27basic_string_token_iteratorIcNS3_9ut_detail20default_char_compareIcEEEENS2_13basic_cstringIKcEENS0_21forward_traversal_tagESB_lS8_SB_SC_SB_lEENS0_6detail23enable_if_interoperableIT_T4_bE4typeERKNS0_15iterator_facadeISF_T0_T1_T2_T3_EERKNSJ_ISG_T5_T6_T7_T8_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !681)
  call void @llvm.experimental.noalias.scope.decl(metadata !682)
  call void @llvm.experimental.noalias.scope.decl(metadata !683)
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !45, !noalias !684 ; 12 uses
  store ptr %i.h, ptr %4, align 8, !tbaa !45, !alias.scope !684
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !46, !noalias !684 ; 6 uses
  store ptr %i.i, ptr %i.b, align 8, !tbaa !46, !alias.scope !684
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !339  ; 10 uses
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !70
  %.not.i = icmp eq ptr %i.j, %i.k
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 4 uses
  store <2 x ptr> <ptr @_ZN5boost9unit_test13basic_cstringIKcE4nullE, ptr @_ZN5boost9unit_test13basic_cstringIKcE4nullE>, ptr %i.l, align 8, !tbaa !49
  %i.n = ptrtoint ptr %i.i to i64
  %i.o = ptrtoint ptr %i.h to i64
  %i.p = sub i64 %i.n, %i.o                       ; 4 uses
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %.lr.ph.i.i.i.i.i, label %_ZN5boost9unit_testeqIKcS2_EEbRKNS0_13basic_cstringIT_EEPT0_.exit.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b
  %i.r = load i8, ptr %i.h, align 1, !tbaa !60
  %i.s = icmp eq i8 %i.r, 42
  br i1 %i.s, label %bb.c, label %_ZN5boost9unit_testeqIKcS2_EEbRKNS0_13basic_cstringIT_EEPT0_.exit.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  store i32 0, ptr %i.j, align 8, !tbaa !342
  br label %_ZN5boost9unit_test9framework4impl11name_filter9componentC2ENS0_13basic_cstringIKcEE.exit.i

_ZN5boost9unit_testeqIKcS2_EEbRKNS0_13basic_cstringIT_EEPT0_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.b
  %i.t = icmp eq ptr %i.i, %i.h
  br i1 %i.t, label %_ZN5boost9unit_test9last_charIKcEENS0_13basic_cstringIT_E14value_ret_typeES5_.exit5.thread.i.i, label %_ZN5boost9unit_test10first_charIKcEENS0_13basic_cstringIT_E14value_ret_typeES5_.exit.i.i

_ZN5boost9unit_test10first_charIKcEENS0_13basic_cstringIT_E14value_ret_typeES5_.exit.i.i: ; preds = %_ZN5boost9unit_testeqIKcS2_EEbRKNS0_13basic_cstringIT_EEPT0_.exit.i.i
  %i.u = load i8, ptr %i.h, align 1, !tbaa !60
  %i.v = icmp eq i8 %i.u, 42
  %i.w = getelementptr inbounds i8, ptr %i.i, i64 -1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !60
  %i.y = icmp eq i8 %i.x, 42                      ; 2 uses
  br i1 %i.v, label %_ZN5boost9unit_test9last_charIKcEENS0_13basic_cstringIT_E14value_ret_typeES5_.exit.i.i, label %_ZN5boost9unit_test9last_charIKcEENS0_13basic_cstringIT_E14value_ret_typeES5_.exit5.i.i

_ZN5boost9unit_test9last_charIKcEENS0_13basic_cstringIT_E14value_ret_typeES5_.exit.i.i: ; preds = %_ZN5boost9unit_test10first_charIKcEENS0_13basic_cstringIT_E14value_ret_typeES5_.exit.i.i
  br i1 %i.y, label %bb.d, label %_ZN5boost9unit_test10first_charIKcEENS0_13basic_cstringIT_E14value_ret_typeES5_.exit1.i.i

bb.d:                                             ; preds = %_ZN5boost9unit_test9last_charIKcEENS0_13basic_cstringIT_E14value_ret_typeES5_.exit.i.i
  store i32 3, ptr %i.j, align 8, !tbaa !342
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.aa = getelementptr i8, ptr %i.h, i64 %i.p
  %i.ab = getelementptr i8, ptr %i.aa, i64 -1
  store ptr %i.z, ptr %i.l, align 8, !tbaa !45
  store ptr %i.ab, ptr %i.m, align 8, !tbaa !46
  br label %_ZN5boost9unit_test9framework4impl11name_filter9componentC2ENS0_13basic_cstringIKcEE.exit.i

_ZN5boost9unit_test10first_charIKcEENS0_13basic_cstringIT_E14value_ret_typeES5_.exit1.i.i: ; preds = %_ZN5boost9unit_test9last_charIKcEENS0_13basic_cstringIT_E14value_ret_typeES5_.exit.i.i
  store i32 2, ptr %i.j, align 8, !tbaa !342
  %.not.i.i = icmp eq i64 %i.p, -1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 -1
  %spec.select.i2.i.i = select i1 %.not.i.i, ptr %i.ad, ptr %i.i
  store ptr %i.ac, ptr %i.l, align 8, !tbaa !45
  store ptr %spec.select.i2.i.i, ptr %i.m, align 8, !tbaa !46
  br label %_ZN5boost9unit_test9framework4impl11name_filter9componentC2ENS0_13basic_cstringIKcEE.exit.i

_ZN5boost9unit_test9last_charIKcEENS0_13basic_cstringIT_E14value_ret_typeES5_.exit5.i.i: ; preds = %_ZN5boost9unit_test10first_charIKcEENS0_13basic_cstringIT_E14value_ret_typeES5_.exit.i.i
  br i1 %i.y, label %bb.e, label %_ZN5boost9unit_test9last_charIKcEENS0_13basic_cstringIT_E14value_ret_typeES5_.exit5.thread.i.i

bb.e:                                             ; preds = %_ZN5boost9unit_test9last_charIKcEENS0_13basic_cstringIT_E14value_ret_typeES5_.exit5.i.i
  store i32 1, ptr %i.j, align 8, !tbaa !342
  %i.ae = getelementptr i8, ptr %i.h, i64 %i.p
  %i.af = getelementptr i8, ptr %i.ae, i64 -1
  store ptr %i.h, ptr %i.l, align 8, !tbaa !45
  store ptr %i.af, ptr %i.m, align 8, !tbaa !46
  br label %_ZN5boost9unit_test9framework4impl11name_filter9componentC2ENS0_13basic_cstringIKcEE.exit.i

_ZN5boost9unit_test9last_charIKcEENS0_13basic_cstringIT_E14value_ret_typeES5_.exit5.thread.i.i: ; preds = %_ZN5boost9unit_test9last_charIKcEENS0_13basic_cstringIT_E14value_ret_typeES5_.exit5.i.i, %_ZN5boost9unit_testeqIKcS2_EEbRKNS0_13basic_cstringIT_EEPT0_.exit.i.i
  store i32 4, ptr %i.j, align 8, !tbaa !342
  store ptr %i.h, ptr %i.l, align 8, !tbaa !45
  store ptr %i.i, ptr %i.m, align 8, !tbaa !46
  br label %_ZN5boost9unit_test9framework4impl11name_filter9componentC2ENS0_13basic_cstringIKcEE.exit.i

_ZN5boost9unit_test9framework4impl11name_filter9componentC2ENS0_13basic_cstringIKcEE.exit.i: ; preds = %_ZN5boost9unit_test9last_charIKcEENS0_13basic_cstringIT_E14value_ret_typeES5_.exit5.thread.i.i, %bb.e, %_ZN5boost9unit_test10first_charIKcEENS0_13basic_cstringIT_E14value_ret_typeES5_.exit1.i.i, %bb.d, %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %i.ag, ptr %i.d, align 8, !tbaa !339
  br label %_ZNSt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS5_EE12emplace_backIJNS1_13basic_cstringIKcEEEEERS5_DpOT_.exit

bb.f:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS5_EE17_M_realloc_insertIJNS1_13basic_cstringIKcEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.j, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %._ZNSt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS5_EE12emplace_backIJNS1_13basic_cstringIKcEEEEERS5_DpOT_.exit_crit_edge unwind label %bb.i

._ZNSt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS5_EE12emplace_backIJNS1_13basic_cstringIKcEEEEERS5_DpOT_.exit_crit_edge: ; preds = %bb.f
  %.pre.a = load i8, ptr %1, align 8, !tbaa !59, !range !74
  br label %_ZNSt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS5_EE12emplace_backIJNS1_13basic_cstringIKcEEEEERS5_DpOT_.exit

_ZNSt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS5_EE12emplace_backIJNS1_13basic_cstringIKcEEEEERS5_DpOT_.exit: ; preds = %._ZNSt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS5_EE12emplace_backIJNS1_13basic_cstringIKcEEEEERS5_DpOT_.exit_crit_edge, %_ZN5boost9unit_test9framework4impl11name_filter9componentC2ENS0_13basic_cstringIKcEE.exit.i
  %i.ah = phi i8 [ %.pre.a, %._ZNSt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS5_EE12emplace_backIJNS1_13basic_cstringIKcEEEEERS5_DpOT_.exit_crit_edge ], [ %5, %_ZN5boost9unit_test9framework4impl11name_filter9componentC2ENS0_13basic_cstringIKcEE.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.g, label %_ZN5boost9iterators6detail20iterator_facade_baseINS_9unit_test5utils27basic_string_token_iteratorIcNS4_9ut_detail20default_char_compareIcEEEENS3_13basic_cstringIKcEENS0_21forward_traversal_tagESC_lLb0ELb0EEppEv.exit.backedge

_ZN5boost9iterators6detail20iterator_facade_baseINS_9unit_test5utils27basic_string_token_iteratorIcNS4_9ut_detail20default_char_compareIcEEEENS3_13basic_cstringIKcEENS0_21forward_traversal_tagESC_lLb0ELb0EEppEv.exit.backedge: ; preds = %_ZNSt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS5_EE12emplace_backIJNS1_13basic_cstringIKcEEEEERS5_DpOT_.exit, %.noexc3
  %.be = phi i8 [ 0, %_ZNSt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS5_EE12emplace_backIJNS1_13basic_cstringIKcEEEEERS5_DpOT_.exit ], [ %i.an, %.noexc3 ]
  br label %_ZN5boost9iterators6detail20iterator_facade_baseINS_9unit_test5utils27basic_string_token_iteratorIcNS4_9ut_detail20default_char_compareIcEEEENS3_13basic_cstringIKcEENS0_21forward_traversal_tagESC_lLb0ELb0EEppEv.exit

bb.g:                                             ; preds = %_ZNSt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS5_EE12emplace_backIJNS1_13basic_cstringIKcEEEEERS5_DpOT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.aj = load ptr, ptr %i.f, align 8, !tbaa !45
  store ptr %i.aj, ptr %3, align 8, !tbaa !49
  %i.ak = load ptr, ptr %i.g, align 8, !tbaa !46
  %i.al = invoke noundef zeroext i1 @_ZN5boost9unit_test5utils19token_iterator_baseINS1_27basic_string_token_iteratorIcNS1_9ut_detail20default_char_compareIcEEEEcS6_NS0_13basic_cstringIKcEESA_NS_9iterators21forward_traversal_tagEE3getIPS9_EEbRT_SG_(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.ak)
          to label %.noexc3 unwind label %bb.h

.noexc3:                                          ; preds = %bb.g
  %i.am = load ptr, ptr %3, align 8, !tbaa !49
  store ptr %i.am, ptr %i.f, align 8, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.an = zext i1 %i.al to i8                     ; 2 uses
  store i8 %i.an, ptr %1, align 8, !tbaa !59
  br label %_ZN5boost9iterators6detail20iterator_facade_baseINS_9unit_test5utils27basic_string_token_iteratorIcNS4_9ut_detail20default_char_compareIcEEEENS3_13basic_cstringIKcEENS0_21forward_traversal_tagESC_lLb0ELb0EEppEv.exit.backedge

bb.h:                                             ; preds = %bb.g
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ao, %bb.h ], [ %i.ap, %bb.i ]
  %.0 = extractvalue { ptr, i32 } %.pn, 0
  %i.aq = call ptr @__cxa_begin_catch(ptr %.0) #24 ; 0 uses
  %i.ar = load ptr, ptr %0, align 8, !tbaa !69    ; 2 uses
  %i.as = load ptr, ptr %i.d, align 8, !tbaa !339
  %.not.i.i4 = icmp eq ptr %i.as, %i.ar
  br i1 %.not.i.i4, label %_ZNSt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS5_EE5clearEv.exit, label %_ZSt8_DestroyIPN5boost9unit_test9framework4impl11name_filter9componentES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5boost9unit_test9framework4impl11name_filter9componentES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %bb.j
  store ptr %i.ar, ptr %i.d, align 8, !tbaa !339
  br label %_ZNSt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS5_EE5clearEv.exit

_ZNSt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS5_EE5clearEv.exit: ; preds = %bb.j, %_ZSt8_DestroyIPN5boost9unit_test9framework4impl11name_filter9componentES5_EvT_S7_RSaIT0_E.exit.i.i
  invoke void @__cxa_rethrow() #25
          to label %bb.n unwind label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS5_EE5clearEv.exit
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.m

._crit_edge:                                      ; preds = %_ZN5boost9iteratorsneINS_9unit_test5utils27basic_string_token_iteratorIcNS3_9ut_detail20default_char_compareIcEEEENS2_13basic_cstringIKcEENS0_21forward_traversal_tagESB_lS8_SB_SC_SB_lEENS0_6detail23enable_if_interoperableIT_T4_bE4typeERKNS0_15iterator_facadeISF_T0_T1_T2_T3_EERKNSJ_ISG_T5_T6_T7_T8_EE.exit
  ret void

bb.l:                                             ; preds = %bb.k
  resume { ptr, i32 } %i.at

bb.m:                                             ; preds = %bb.k
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  call void @__clang_call_terminate(ptr %i.av) #28
  unreachable

bb.n:                                             ; preds = %_ZNSt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS5_EE5clearEv.exit
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS5_EE17_M_realloc_insertIJNS1_13basic_cstringIKcEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !339  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !69     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #25
  unreachable

_ZNKSt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 24
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #27 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 7 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !45     ; 11 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !46   ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 5 uses
  store ptr @_ZN5boost9unit_test13basic_cstringIKcE4nullE, ptr %i.u, align 8, !tbaa !45
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 5 uses
  store ptr @_ZN5boost9unit_test13basic_cstringIKcE4nullE, ptr %i.v, align 8, !tbaa !46
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = ptrtoint ptr %i.r to i64
  %i.y = sub i64 %i.w, %i.x                       ; 4 uses
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %.lr.ph.i.i.i.i, label %_ZN5boost9unit_testeqIKcS2_EEbRKNS0_13basic_cstringIT_EEPT0_.exit.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS5_EE12_M_check_lenEmPKc.exit
  %i.aa = load i8, ptr %i.r, align 1, !tbaa !60
  %i.ab = icmp eq i8 %i.aa, 42
  br i1 %i.ab, label %bb.c, label %_ZN5boost9unit_testeqIKcS2_EEbRKNS0_13basic_cstringIT_EEPT0_.exit.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  store i32 0, ptr %i.q, align 8, !tbaa !342
  br label %_ZNSt16allocator_traitsISaIN5boost9unit_test9framework4impl11name_filter9componentEEE9constructIS5_JNS1_13basic_cstringIKcEEEEEvRS6_PT_DpOT0_.exit

_ZN5boost9unit_testeqIKcS2_EEbRKNS0_13basic_cstringIT_EEPT0_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS5_EE12_M_check_lenEmPKc.exit
  %i.ac = icmp eq ptr %i.t, %i.r
  br i1 %i.ac, label %_ZN5boost9unit_test9last_charIKcEENS0_13basic_cstringIT_E14value_ret_typeES5_.exit5.thread.i, label %_ZN5boost9unit_test10first_charIKcEENS0_13basic_cstringIT_E14value_ret_typeES5_.exit.i

_ZN5boost9unit_test10first_charIKcEENS0_13basic_cstringIT_E14value_ret_typeES5_.exit.i: ; preds = %_ZN5boost9unit_testeqIKcS2_EEbRKNS0_13basic_cstringIT_EEPT0_.exit.i
  %i.ad = load i8, ptr %i.r, align 1, !tbaa !60
  %i.ae = icmp eq i8 %i.ad, 42
  %i.af = getelementptr inbounds i8, ptr %i.t, i64 -1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !60
  %i.ah = icmp eq i8 %i.ag, 42                    ; 2 uses
  br i1 %i.ae, label %_ZN5boost9unit_test9last_charIKcEENS0_13basic_cstringIT_E14value_ret_typeES5_.exit.i, label %_ZN5boost9unit_test9last_charIKcEENS0_13basic_cstringIT_E14value_ret_typeES5_.exit5.i

_ZN5boost9unit_test9last_charIKcEENS0_13basic_cstringIT_E14value_ret_typeES5_.exit.i: ; preds = %_ZN5boost9unit_test10first_charIKcEENS0_13basic_cstringIT_E14value_ret_typeES5_.exit.i
  br i1 %i.ah, label %bb.d, label %_ZN5boost9unit_test10first_charIKcEENS0_13basic_cstringIT_E14value_ret_typeES5_.exit1.i

bb.d:                                             ; preds = %_ZN5boost9unit_test9last_charIKcEENS0_13basic_cstringIT_E14value_ret_typeES5_.exit.i
  store i32 3, ptr %i.q, align 8, !tbaa !342
  %i.ai = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.aj = getelementptr i8, ptr %i.r, i64 %i.y
  %i.ak = getelementptr i8, ptr %i.aj, i64 -1
  store ptr %i.ai, ptr %i.u, align 8, !tbaa !45
  store ptr %i.ak, ptr %i.v, align 8, !tbaa !46
  br label %_ZNSt16allocator_traitsISaIN5boost9unit_test9framework4impl11name_filter9componentEEE9constructIS5_JNS1_13basic_cstringIKcEEEEEvRS6_PT_DpOT0_.exit

_ZN5boost9unit_test10first_charIKcEENS0_13basic_cstringIT_E14value_ret_typeES5_.exit1.i: ; preds = %_ZN5boost9unit_test9last_charIKcEENS0_13basic_cstringIT_E14value_ret_typeES5_.exit.i
  store i32 2, ptr %i.q, align 8, !tbaa !342
  %.not.i28 = icmp eq i64 %i.y, -1
  %i.al = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.r, i64 -1
  %spec.select.i2.i = select i1 %.not.i28, ptr %i.am, ptr %i.t
  store ptr %i.al, ptr %i.u, align 8, !tbaa !45
  store ptr %spec.select.i2.i, ptr %i.v, align 8, !tbaa !46
  br label %_ZNSt16allocator_traitsISaIN5boost9unit_test9framework4impl11name_filter9componentEEE9constructIS5_JNS1_13basic_cstringIKcEEEEEvRS6_PT_DpOT0_.exit

_ZN5boost9unit_test9last_charIKcEENS0_13basic_cstringIT_E14value_ret_typeES5_.exit5.i: ; preds = %_ZN5boost9unit_test10first_charIKcEENS0_13basic_cstringIT_E14value_ret_typeES5_.exit.i
  br i1 %i.ah, label %bb.e, label %_ZN5boost9unit_test9last_charIKcEENS0_13basic_cstringIT_E14value_ret_typeES5_.exit5.thread.i

bb.e:                                             ; preds = %_ZN5boost9unit_test9last_charIKcEENS0_13basic_cstringIT_E14value_ret_typeES5_.exit5.i
  store i32 1, ptr %i.q, align 8, !tbaa !342
  %i.an = getelementptr i8, ptr %i.r, i64 %i.y
  %i.ao = getelementptr i8, ptr %i.an, i64 -1
  store ptr %i.r, ptr %i.u, align 8, !tbaa !45
  store ptr %i.ao, ptr %i.v, align 8, !tbaa !46
  br label %_ZNSt16allocator_traitsISaIN5boost9unit_test9framework4impl11name_filter9componentEEE9constructIS5_JNS1_13basic_cstringIKcEEEEEvRS6_PT_DpOT0_.exit

_ZN5boost9unit_test9last_charIKcEENS0_13basic_cstringIT_E14value_ret_typeES5_.exit5.thread.i: ; preds = %_ZN5boost9unit_test9last_charIKcEENS0_13basic_cstringIT_E14value_ret_typeES5_.exit5.i, %_ZN5boost9unit_testeqIKcS2_EEbRKNS0_13basic_cstringIT_EEPT0_.exit.i
  store i32 4, ptr %i.q, align 8, !tbaa !342
  store ptr %i.r, ptr %i.u, align 8, !tbaa !45
  store ptr %i.t, ptr %i.v, align 8, !tbaa !46
  br label %_ZNSt16allocator_traitsISaIN5boost9unit_test9framework4impl11name_filter9componentEEE9constructIS5_JNS1_13basic_cstringIKcEEEEEvRS6_PT_DpOT0_.exit

_ZNSt16allocator_traitsISaIN5boost9unit_test9framework4impl11name_filter9componentEEE9constructIS5_JNS1_13basic_cstringIKcEEEEEvRS6_PT_DpOT0_.exit: ; preds = %_ZN5boost9unit_test9last_charIKcEENS0_13basic_cstringIT_E14value_ret_typeES5_.exit5.thread.i, %bb.e, %_ZN5boost9unit_test10first_charIKcEENS0_13basic_cstringIT_E14value_ret_typeES5_.exit1.i, %bb.d, %bb.c
  %.not13.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not13.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9unit_test9framework4impl11name_filter9componentES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt16allocator_traitsISaIN5boost9unit_test9framework4impl11name_filter9componentEEE9constructIS5_JNS1_13basic_cstringIKcEEEEEvRS6_PT_DpOT0_.exit, %.lr.ph.i.i.i.i.i
  %.015.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaIN5boost9unit_test9framework4impl11name_filter9componentEEE9constructIS5_JNS1_13basic_cstringIKcEEEEEvRS6_PT_DpOT0_.exit ] ; 3 uses
  %.01214.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN5boost9unit_test9framework4impl11name_filter9componentEEE9constructIS5_JNS1_13basic_cstringIKcEEEEEvRS6_PT_DpOT0_.exit ] ; 3 uses
  %i.ap = load i32, ptr %.01214.i.i.i.i.i, align 8, !tbaa !342
  store i32 %i.ap, ptr %.015.i.i.i.i.i, align 8, !tbaa !342
  %i.aq = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 8
  %i.as = load <2 x ptr>, ptr %i.ar, align 8, !tbaa !49
  store <2 x ptr> %i.as, ptr %i.aq, align 8, !tbaa !49
  %i.at = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 24 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.at, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9unit_test9framework4impl11name_filter9componentES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !685

_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9unit_test9framework4impl11name_filter9componentES6_SaIS5_EET0_T_S9_S8_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNSt16allocator_traitsISaIN5boost9unit_test9framework4impl11name_filter9componentEEE9constructIS5_JNS1_13basic_cstringIKcEEEEEvRS6_PT_DpOT0_.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN5boost9unit_test9framework4impl11name_filter9componentEEE9constructIS5_JNS1_13basic_cstringIKcEEEEEvRS6_PT_DpOT0_.exit ], [ %i.au, %.lr.ph.i.i.i.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 24 ; 2 uses
  %.not13.i.i.i.i.i29 = icmp eq ptr %1, %i.b
  br i1 %.not13.i.i.i.i.i29, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9unit_test9framework4impl11name_filter9componentES6_SaIS5_EET0_T_S9_S8_RT1_.exit35, label %.lr.ph.i.i.i.i.i30

.lr.ph.i.i.i.i.i30:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9unit_test9framework4impl11name_filter9componentES6_SaIS5_EET0_T_S9_S8_RT1_.exit, %.lr.ph.i.i.i.i.i30
  %.015.i.i.i.i.i31 = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i30 ], [ %i.av, %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9unit_test9framework4impl11name_filter9componentES6_SaIS5_EET0_T_S9_S8_RT1_.exit ] ; 3 uses
  %.01214.i.i.i.i.i32 = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i30 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9unit_test9framework4impl11name_filter9componentES6_SaIS5_EET0_T_S9_S8_RT1_.exit ] ; 3 uses
  %i.aw = load i32, ptr %.01214.i.i.i.i.i32, align 8, !tbaa !342
  store i32 %i.aw, ptr %.015.i.i.i.i.i31, align 8, !tbaa !342
  %i.ax = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i31, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i32, i64 8
  %i.az = load <2 x ptr>, ptr %i.ay, align 8, !tbaa !49
  store <2 x ptr> %i.az, ptr %i.ax, align 8, !tbaa !49
  %i.ba = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i32, i64 24 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i31, i64 24 ; 2 uses
  %.not.i.i.i.i.i33 = icmp eq ptr %i.ba, %i.b
  br i1 %.not.i.i.i.i.i33, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9unit_test9framework4impl11name_filter9componentES6_SaIS5_EET0_T_S9_S8_RT1_.exit35, label %.lr.ph.i.i.i.i.i30, !llvm.loop !685

_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9unit_test9framework4impl11name_filter9componentES6_SaIS5_EET0_T_S9_S8_RT1_.exit35: ; preds = %.lr.ph.i.i.i.i.i30, %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9unit_test9framework4impl11name_filter9componentES6_SaIS5_EET0_T_S9_S8_RT1_.exit
  %.0.lcssa.i.i.i.i.i34 = phi ptr [ %i.av, %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9unit_test9framework4impl11name_filter9componentES6_SaIS5_EET0_T_S9_S8_RT1_.exit ], [ %i.bb, %.lr.ph.i.i.i.i.i30 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseIN5boost9unit_test9framework4impl11name_filter9componentESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9unit_test9framework4impl11name_filter9componentES6_SaIS5_EET0_T_S9_S8_RT1_.exit35
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !70
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bf) #26
  br label %_ZNSt12_Vector_baseIN5boost9unit_test9framework4impl11name_filter9componentESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseIN5boost9unit_test9framework4impl11name_filter9componentESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9unit_test9framework4impl11name_filter9componentES6_SaIS5_EET0_T_S9_S8_RT1_.exit35, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !69
  store ptr %.0.lcssa.i.i.i.i.i34, ptr %i.a, align 8, !tbaa !339
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bg, ptr %i.bc, align 8, !tbaa !70
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK5boost9unit_test9framework4impl11name_filter9component4passERKNS0_9test_unitE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(280) %1) #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.d = load i64, ptr %i.c, align 8, !tbaa !43   ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d ; 3 uses
  %i.f = load i32, ptr %0, align 8, !tbaa !342
  switch i32 %i.f, label %_ZN5boost9unit_testeqIKcS2_EEbRKNS0_13basic_cstringIT_EERKNS3_IT0_EE.exit [
    i32 4, label %bb.k
    i32 1, label %bb.b
    i32 2, label %bb.d
    i32 3, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !46
end_hunk_0
