inline.NumInlined: 4529
inline.NumDeleted: 1763
begin_hunk_0_@_ZN6duckdb9make_uniqINS_18FunctionExpressionEJRA4_KcNS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS7_ELb1EEELb1ESaISA_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_:bb.a
  store i64 %i.g, ptr %i.c, align 8, !tbaa !20
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.a
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.d, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %1, align 1, !tbaa !20
  store i8 %i.i, ptr %i.h, align 1, !tbaa !20
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !19
  %i.l = load ptr, ptr %3, align 8, !tbaa !29
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = load <2 x ptr>, ptr %2, align 8, !tbaa !149
  store <2 x ptr> %i.o, ptr %4, align 16, !tbaa !149
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !153
  store ptr %i.r, ptr %i.p, align 16, !tbaa !153
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  store ptr null, ptr %5, align 8, !tbaa !55
  store ptr null, ptr %6, align 8, !tbaa !377
  invoke void @_ZN6duckdb18FunctionExpressionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteISB_ELb1EEELb1ESaISE_EEESE_NSA_INS_13OrderModifierESC_ISH_ELb1EEEbbb(ptr noundef nonnull align 8 dereferenceable(209) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  store ptr %i.b, ptr %0, align 8, !tbaa !353
  %i.s = load ptr, ptr %6, align 8, !tbaa !278    ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb13OrderModifierESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb13OrderModifierEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb13OrderModifierEEclEPS1_.exit.i: ; preds = %bb.e
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !22
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(40) %i.s) #26, !inline_history !286
  br label %_ZNSt10unique_ptrIN6duckdb13OrderModifierESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb13OrderModifierESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.e, %_ZNKSt14default_deleteIN6duckdb13OrderModifierEEclEPS1_.exit.i
  %i.w = load ptr, ptr %5, align 8, !tbaa !24     ; 3 uses
  %.not.i6 = icmp eq ptr %i.w, null
  br i1 %.not.i6, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb13OrderModifierESt14default_deleteIS1_EED2Ev.exit
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !22
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(56) %i.w) #26, !inline_history !53
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb13OrderModifierESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i
  %i.aa = load ptr, ptr %4, align 16, !tbaa !154  ; 3 uses
  %i.ab = load ptr, ptr %i.n, align 8, !tbaa !151 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.aa, %i.ab
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ag, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i ], [ %i.aa, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %i.ac = load ptr, ptr %.05.i.i.i, align 8, !tbaa !24 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !22
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(56) %i.ac) #26, !inline_history !287
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ag, %i.ab
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !182

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 16, !tbaa !154
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.ah = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.aa, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.ah) #28
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, %bb.f
  %i.ai = load ptr, ptr %3, align 8, !tbaa !29    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.c
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.ai) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

bb.g:                                             ; preds = %.noexc.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

bb.h:                                             ; preds = %bb.d
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = load ptr, ptr %6, align 8, !tbaa !278   ; 3 uses
  %.not.i7 = icmp eq ptr %i.am, null
  br i1 %.not.i7, label %_ZNSt10unique_ptrIN6duckdb13OrderModifierESt14default_deleteIS1_EED2Ev.exit9, label %_ZNKSt14default_deleteIN6duckdb13OrderModifierEEclEPS1_.exit.i8

_ZNKSt14default_deleteIN6duckdb13OrderModifierEEclEPS1_.exit.i8: ; preds = %bb.h
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !22
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(40) %i.am) #26, !inline_history !286
  br label %_ZNSt10unique_ptrIN6duckdb13OrderModifierESt14default_deleteIS1_EED2Ev.exit9

_ZNSt10unique_ptrIN6duckdb13OrderModifierESt14default_deleteIS1_EED2Ev.exit9: ; preds = %bb.h, %_ZNKSt14default_deleteIN6duckdb13OrderModifierEEclEPS1_.exit.i8
  %i.aq = load ptr, ptr %5, align 8, !tbaa !24    ; 3 uses
  %.not.i10 = icmp eq ptr %i.aq, null
  br i1 %.not.i10, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit12, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i11

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i11: ; preds = %_ZNSt10unique_ptrIN6duckdb13OrderModifierESt14default_deleteIS1_EED2Ev.exit9
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !22
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(56) %i.aq) #26, !inline_history !53
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit12

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit12: ; preds = %_ZNSt10unique_ptrIN6duckdb13OrderModifierESt14default_deleteIS1_EED2Ev.exit9, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i11
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #26
  %i.au = load ptr, ptr %3, align 8, !tbaa !29    ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.c
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit12
  call void @_ZdlPv(ptr noundef %i.au) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13, %bb.g
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.g ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13 ], [ %i.al, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit12 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @_ZdlPv(ptr noundef nonnull %i.b) #28
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN6duckdb16LambdaExpressionC2ENS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_(ptr noundef nonnull align 8 dereferenceable(88) initializes((8, 10)) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 -25, ptr %i.a, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 17, ptr %i.b, align 1, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.e, align 8, !tbaa !19
  store i8 0, ptr %i.d, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 -1, ptr %i.f, align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN6duckdb16LambdaExpressionE, i64 16), ptr %0, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %i.g, align 8, !tbaa !356
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load i64, ptr %1, align 8, !tbaa !24
  store i64 %i.i, ptr %i.h, align 8, !tbaa !24
  store ptr null, ptr %1, align 8, !tbaa !24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load i64, ptr %2, align 8, !tbaa !24
  store i64 %i.k, ptr %i.j, align 8, !tbaa !24
  store ptr null, ptr %2, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr null, ptr %i.l, align 8, !tbaa !55
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb16LambdaExpression27ExtractColumnRefExpressionsERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::vector.139") align 8 captures(none) initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr nofree noundef nonnull align 8 captures(address) dereferenceable(32) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.e = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 9
  %i.g = load i8, ptr %i.f, align 1, !tbaa !17
  %i.h = icmp eq i8 %i.g, 4
  br i1 %i.h, label %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16ParsedExpressionEESaIS4_EE12_M_check_lenEmPKc.exit.i.i, label %bb.b

_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16ParsedExpressionEESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 3 uses
  store ptr %i.i, ptr %i.l, align 8, !tbaa !378
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !380
  store ptr %i.m, ptr %i.j, align 8, !tbaa !383
  store ptr %i.m, ptr %i.k, align 8, !tbaa !384
  br label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.n = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 9
  %i.p = load i8, ptr %i.o, align 1, !tbaa !17
  %i.q = icmp eq i8 %i.p, 9
  br i1 %i.q, label %bb.c, label %.thread90.thread

bb.c:                                             ; preds = %bb.b
  %i.r = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.s = tail call noundef nonnull align 8 dereferenceable(209) ptr @_ZN6duckdb14BaseExpression4CastINS_18FunctionExpressionEEERT_v(ptr noundef nonnull align 8 dereferenceable(56) %i.r) ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 128
  %i.u = load i64, ptr %i.t, align 8, !tbaa !19
  %i.v = icmp eq i64 %i.u, 3
  br i1 %i.v, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 120
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !29   ; 2 uses
  %i.y = load i16, ptr %i.x, align 1
  %i.z = xor i16 %i.y, 28530
  %i.aa = getelementptr i8, ptr %i.x, i64 2
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = zext i8 %i.ab to i16
  %i.ad = xor i16 %i.ac, 119
  %i.ae = or i16 %i.z, %i.ad
  %i.af = icmp ne i16 %i.ae, 0
  %i.ag = zext i1 %i.af to i32
  %.not92 = icmp eq i32 %i.ag, 0
  br i1 %.not92, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread84, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !385)
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.ah, ptr %3, align 8, !tbaa !18, !alias.scope !385
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26, !noalias !385
  store i64 97, ptr %i.c, align 8, !tbaa !54, !noalias !385
  %i.ai = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 3 uses
  store ptr %i.ai, ptr %3, align 8, !tbaa !29, !alias.scope !385
  %i.aj = load i64, ptr %i.c, align 8, !tbaa !54, !noalias !385 ; 3 uses
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !20, !alias.scope !385
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(97) %i.ai, ptr noundef nonnull align 1 dereferenceable(97) @.str.6, i64 97, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !19, !alias.scope !385
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aj
  store i8 0, ptr %i.al, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26, !noalias !385
  %i.am = load ptr, ptr %2, align 8, !tbaa !29    ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  %i.ap = load ptr, ptr %3, align 8, !tbaa !29    ; 5 uses
  %i.aq = icmp eq ptr %i.ap, %i.ah                ; 2 uses
  br i1 %i.ao, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  br i1 %i.aq, label %bb.d, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  br i1 %i.aq, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ar = load i64, ptr %i.ak, align 8, !tbaa !19 ; 3 uses
  %i.as = icmp ult i64 %i.ar, 16
  call void @llvm.assume(i1 %i.as)
  switch i64 %i.ar, label %bb.f [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.at = load i8, ptr %i.ap, align 1, !tbaa !20
  store i8 %i.at, ptr %i.am, align 1, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.am, ptr align 1 %i.ap, i64 %i.ar, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.au = load i64, ptr %i.ak, align 8, !tbaa !19 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.au, ptr %i.av, align 8, !tbaa !19
  %i.aw = load ptr, ptr %2, align 8, !tbaa !29
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.au
  store i8 0, ptr %i.ax, align 1, !tbaa !20
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ap, ptr %2, align 8, !tbaa !29
  %i.az = load <2 x i64>, ptr %i.ak, align 8, !tbaa !20
  store <2 x i64> %i.az, ptr %i.ay, align 8, !tbaa !20
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ba = load i64, ptr %i.an, align 8, !tbaa !20
  store ptr %i.ap, ptr %2, align 8, !tbaa !29
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bc = load <2 x i64>, ptr %i.ak, align 8, !tbaa !20
  store <2 x i64> %i.bc, ptr %i.bb, align 8, !tbaa !20
  %.not.i33 = icmp eq ptr %i.am, null
  br i1 %.not.i33, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.am, ptr %3, align 8, !tbaa !29
  store i64 %i.ba, ptr %i.ah, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ah, ptr %3, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.g, %bb.h
  %6 = phi ptr [ %i.am, %bb.g ], [ %i.ah, %bb.h ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.ak, align 8, !tbaa !19
  store i8 0, ptr %6, align 1, !tbaa !20
  %i.bd = load ptr, ptr %3, align 8, !tbaa !29    ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.ah
  br i1 %i.be, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  call void @_ZdlPv(ptr noundef %i.bd) #28
  br label %.thread

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %.critedge

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread84: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %i.s, i64 160
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !149 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.s, i64 168
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !149 ; 2 uses
  %.not9399 = icmp eq ptr %i.bg, %i.bi
  br i1 %.not9399, label %.thread90.thread151, label %.lr.ph

.thread90.thread151:                              ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread84
  store ptr null, ptr %0, align 8
  br label %.thread90.thread

.lr.ph:                                           ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread84
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.y
  %i.bl = phi ptr [ null, %.lr.ph ], [ %i.dw, %bb.y ] ; 5 uses
  %i.bm = phi ptr [ null, %.lr.ph ], [ %i.dx, %bb.y ] ; 3 uses
  %.sroa.081.0100 = phi ptr [ %i.bg, %.lr.ph ], [ %i.dz, %bb.y ] ; 3 uses
  %i.bn = phi ptr [ null, %.lr.ph ], [ %i.dy, %bb.y ] ; 14 uses
  %i.bo = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.081.0100)
          to label %bb.j unwind label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 9
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !17
  %.not = icmp eq i8 %i.bq, 4
  br i1 %.not, label %bb.s, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %i.bn, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !388)
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.br, ptr %4, align 8, !tbaa !18, !alias.scope !388
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26, !noalias !388
  store i64 97, ptr %i.b, align 8, !tbaa !54, !noalias !388
  %i.bs = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %bb.l unwind label %bb.r       ; 3 uses

bb.l:                                             ; preds = %bb.k
  store ptr %i.bs, ptr %4, align 8, !tbaa !29, !alias.scope !388
  %i.bt = load i64, ptr %i.b, align 8, !tbaa !54, !noalias !388 ; 3 uses
  store i64 %i.bt, ptr %i.br, align 8, !tbaa !20, !alias.scope !388
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(97) %i.bs, ptr noundef nonnull align 1 dereferenceable(97) @.str.6, i64 97, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !19, !alias.scope !388
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bt
  store i8 0, ptr %i.bv, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26, !noalias !388
  %i.bw = load ptr, ptr %2, align 8, !tbaa !29    ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  %i.bz = load ptr, ptr %4, align 8, !tbaa !29    ; 5 uses
  %i.ca = icmp eq ptr %i.bz, %i.br                ; 2 uses
  br i1 %i.by, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i42: ; preds = %bb.l
  br i1 %i.ca, label %bb.m, label %.thread.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i36: ; preds = %bb.l
  br i1 %i.ca, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i37

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i36, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i42
  %i.cb = load i64, ptr %i.bu, align 8, !tbaa !19 ; 3 uses
  %i.cc = icmp ult i64 %i.cb, 16
  call void @llvm.assume(i1 %i.cc)
  switch i64 %i.cb, label %bb.o [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i40
    i64 1, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %i.cd = load i8, ptr %i.bz, align 1, !tbaa !20
  store i8 %i.cd, ptr %i.bw, align 1, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i40

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bw, ptr align 1 %i.bz, i64 %i.cb, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i40: ; preds = %bb.o, %bb.n, %bb.m
  %i.ce = load i64, ptr %i.bu, align 8, !tbaa !19 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ce, ptr %i.cf, align 8, !tbaa !19
  %i.cg = load ptr, ptr %2, align 8, !tbaa !29
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ce
  store i8 0, ptr %i.ch, align 1, !tbaa !20
  %.pre.i41 = load ptr, ptr %4, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit44

.thread.i43:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i42
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.bz, ptr %2, align 8, !tbaa !29
  %i.cj = load <2 x i64>, ptr %i.bu, align 8, !tbaa !20
  store <2 x i64> %i.cj, ptr %i.ci, align 8, !tbaa !20
  br label %bb.q

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i37: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i36
  %i.ck = load i64, ptr %i.bx, align 8, !tbaa !20
  store ptr %i.bz, ptr %2, align 8, !tbaa !29
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cm = load <2 x i64>, ptr %i.bu, align 8, !tbaa !20
  store <2 x i64> %i.cm, ptr %i.cl, align 8, !tbaa !20
  %.not.i38 = icmp eq ptr %i.bw, null
  br i1 %.not.i38, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i37
  store ptr %i.bw, ptr %4, align 8, !tbaa !29
  store i64 %i.ck, ptr %i.br, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit44

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i37, %.thread.i43
  store ptr %i.br, ptr %4, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i40, %bb.p, %bb.q
  %7 = phi ptr [ %i.bw, %bb.p ], [ %i.br, %bb.q ], [ %.pre.i41, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i40 ]
  store i64 0, ptr %i.bu, align 8, !tbaa !19
  store i8 0, ptr %7, align 1, !tbaa !20
  %i.cn = load ptr, ptr %4, align 8, !tbaa !29    ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.br
  br i1 %i.co, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit44
  call void @_ZdlPv(ptr noundef %i.cn) #28
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i46

.loopexit:                                        ; preds = %bb.i, %bb.s, %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16ParsedExpressionEESaIS4_EE12_M_check_lenEmPKc.exit.i.i49
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bn, ptr %0, align 8
  br label %bb.ag

.loopexit.split-lp:                               ; preds = %bb.w
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.r:                                             ; preds = %bb.k
  %i.cp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.ag

bb.s:                                             ; preds = %bb.j
  %i.cq = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.081.0100)
          to label %bb.t unwind label %.loopexit  ; 2 uses

bb.t:                                             ; preds = %bb.s
  %.not.i48 = icmp eq ptr %i.bm, %i.bl
  br i1 %.not.i48, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store ptr %i.cq, ptr %i.bm, align 8, !tbaa !378
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  store ptr %i.cr, ptr %i.bj, align 8, !tbaa !383
  br label %bb.y

bb.v:                                             ; preds = %bb.t
  %i.cs = ptrtoint ptr %i.bl to i64               ; 2 uses
  %i.ct = ptrtoint ptr %i.bn to i64               ; 3 uses
  %i.cu = sub i64 %i.cs, %i.ct                    ; 3 uses
  %i.cv = icmp eq i64 %i.cu, 9223372036854775800
  br i1 %i.cv, label %bb.w, label %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16ParsedExpressionEESaIS4_EE12_M_check_lenEmPKc.exit.i.i49

bb.w:                                             ; preds = %bb.v
  store ptr %i.bn, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.69) #27
          to label %.noexc61.a unwind label %.loopexit.split-lp

.noexc61.a:                                       ; preds = %bb.w
  unreachable

_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16ParsedExpressionEESaIS4_EE12_M_check_lenEmPKc.exit.i.i49: ; preds = %bb.v
  %i.cw = ashr exact i64 %i.cu, 3                 ; 3 uses
  %.sroa.speculated.i.i.i50 = tail call i64 @llvm.umax.i64(i64 %i.cw, i64 1)
  %i.cx = add nsw i64 %.sroa.speculated.i.i.i50, %i.cw ; 2 uses
  %i.cy = icmp ult i64 %i.cx, %i.cw
  %i.cz = tail call i64 @llvm.umin.i64(i64 %i.cx, i64 1152921504606846975)
  %i.da = select i1 %i.cy, i64 1152921504606846975, i64 %i.cz ; 3 uses
  %.not.i.i.i51 = icmp ne i64 %i.da, 0
  tail call void @llvm.assume(i1 %.not.i.i.i51)
  %i.db = shl nuw nsw i64 %i.da, 3
  %i.dc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.db) #29
          to label %.noexc62 unwind label %.loopexit ; 8 uses

.noexc62:                                         ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16ParsedExpressionEESaIS4_EE12_M_check_lenEmPKc.exit.i.i49
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.cu
  store ptr %i.cq, ptr %i.dd, align 8, !tbaa !378
  %.not10.i.i.i.i.i.i52 = icmp eq ptr %i.bn, %i.bl
  br i1 %.not10.i.i.i.i.i.i52, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16ParsedExpressionEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i57, label %.lr.ph.i.i.i.i.i.i53.preheader

.lr.ph.i.i.i.i.i.i53.preheader:                   ; preds = %.noexc62
  %i.de = ptrtoaddr ptr %i.dc to i64
  %i.df = add i64 %i.cs, -8
  %i.dg = sub i64 %i.df, %i.ct                    ; 2 uses
  %i.dh = lshr i64 %i.dg, 3
  %i.di = add nuw nsw i64 %i.dh, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dg, 24
  %i.dj = sub i64 %i.de, %i.ct
  %diff.check = icmp ult i64 %i.dj, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i53.preheader172, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i53.preheader
  %n.vec = and i64 %i.di, 4611686018427387900     ; 3 uses
  %i.dk = shl i64 %n.vec, 3                       ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dc, i64 %i.dk  ; 2 uses
  %i.dm = getelementptr i8, ptr %i.bn, i64 %i.dk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dn = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dc, i64 %i.dn ; 2 uses
  %next.gep169 = getelementptr i8, ptr %i.bn, i64 %i.dn ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !391)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !394)
  %i.do = getelementptr i8, ptr %next.gep169, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep169, align 8, !alias.scope !394, !noalias !391
  %wide.load170 = load <2 x i64>, ptr %i.do, align 8, !alias.scope !394, !noalias !391
  %i.dp = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !391, !noalias !394
  store <2 x i64> %wide.load170, ptr %i.dp, align 8, !alias.scope !391, !noalias !394
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !396

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.di, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16ParsedExpressionEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i57, label %.lr.ph.i.i.i.i.i.i53.preheader172

.lr.ph.i.i.i.i.i.i53.preheader172:                ; preds = %.lr.ph.i.i.i.i.i.i53.preheader, %middle.block
  %.012.i.i.i.i.i.i54.ph = phi ptr [ %i.dc, %.lr.ph.i.i.i.i.i.i53.preheader ], [ %i.dl, %middle.block ]
  %.0911.i.i.i.i.i.i55.ph = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i.i53.preheader ], [ %i.dm, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i53

.lr.ph.i.i.i.i.i.i53:                             ; preds = %.lr.ph.i.i.i.i.i.i53.preheader172, %.lr.ph.i.i.i.i.i.i53
  %.012.i.i.i.i.i.i54 = phi ptr [ %i.dt, %.lr.ph.i.i.i.i.i.i53 ], [ %.012.i.i.i.i.i.i54.ph, %.lr.ph.i.i.i.i.i.i53.preheader172 ] ; 2 uses
  %.0911.i.i.i.i.i.i55 = phi ptr [ %i.ds, %.lr.ph.i.i.i.i.i.i53 ], [ %.0911.i.i.i.i.i.i55.ph, %.lr.ph.i.i.i.i.i.i53.preheader172 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !391)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !394)
  %i.dr = load i64, ptr %.0911.i.i.i.i.i.i55, align 8, !alias.scope !394, !noalias !391
  store i64 %i.dr, ptr %.012.i.i.i.i.i.i54, align 8, !alias.scope !391, !noalias !394
  %i.ds = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i55, i64 8 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i54, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i56 = icmp eq ptr %i.ds, %i.bl
  br i1 %.not.i.i.i.i.i.i56, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16ParsedExpressionEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i57, label %.lr.ph.i.i.i.i.i.i53, !llvm.loop !397

_ZNSt6vectorISt17reference_wrapperIKN6duckdb16ParsedExpressionEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i57: ; preds = %.lr.ph.i.i.i.i.i.i53, %middle.block, %.noexc62
  %.0.lcssa.i.i.i.i.i.i58 = phi ptr [ %i.dc, %.noexc62 ], [ %i.dl, %middle.block ], [ %i.dt, %.lr.ph.i.i.i.i.i.i53 ]
  %i.du = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i58, i64 8 ; 2 uses
  %.not.i23.i.i59 = icmp eq ptr %i.bn, null
  br i1 %.not.i23.i.i59, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16ParsedExpressionEESaIS4_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i60, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16ParsedExpressionEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i57
  tail call void @_ZdlPv(ptr noundef nonnull %i.bn) #28
  br label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16ParsedExpressionEESaIS4_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i60

_ZNSt6vectorISt17reference_wrapperIKN6duckdb16ParsedExpressionEESaIS4_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i60: ; preds = %bb.x, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16ParsedExpressionEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i57
  store ptr %i.du, ptr %i.bj, align 8, !tbaa !383
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.da ; 2 uses
  store ptr %i.dv, ptr %i.bk, align 8, !tbaa !384
  br label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16ParsedExpressionEESaIS4_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i60, %bb.u
  %i.dw = phi ptr [ %i.dv, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16ParsedExpressionEESaIS4_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i60 ], [ %i.bl, %bb.u ]
  %i.dx = phi ptr [ %i.du, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16ParsedExpressionEESaIS4_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i60 ], [ %i.cr, %bb.u ] ; 2 uses
  %i.dy = phi ptr [ %i.dc, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16ParsedExpressionEESaIS4_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i60 ], [ %i.bn, %bb.u ] ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.081.0100, i64 8 ; 2 uses
  %.not93 = icmp eq ptr %i.dz, %i.bi
  br i1 %.not93, label %.thread90, label %bb.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit44, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %.critedge

.thread90:                                        ; preds = %bb.y
  %i.ea = icmp eq ptr %i.dy, %i.dx
  store ptr %i.dy, ptr %0, align 8
  br i1 %i.ea, label %.thread90.thread, label %.critedge

.thread90.thread:                                 ; preds = %bb.b, %.thread90.thread151, %.thread90
  %i.eb = phi ptr [ null, %.thread90.thread151 ], [ %i.dy, %.thread90 ], [ null, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !398)
  %i.ec = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.ec, ptr %5, align 8, !tbaa !18, !alias.scope !398
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26, !noalias !398
  store i64 97, ptr %i.a, align 8, !tbaa !54, !noalias !398
  %i.ed = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %bb.z unwind label %bb.af      ; 3 uses

bb.z:                                             ; preds = %.thread90.thread
  store ptr %i.ed, ptr %5, align 8, !tbaa !29, !alias.scope !398
  %i.ee = load i64, ptr %i.a, align 8, !tbaa !54, !noalias !398 ; 3 uses
  store i64 %i.ee, ptr %i.ec, align 8, !tbaa !20, !alias.scope !398
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(97) %i.ed, ptr noundef nonnull align 1 dereferenceable(97) @.str.6, i64 97, i1 false)
  %i.ef = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  store i64 %i.ee, ptr %i.ef, align 8, !tbaa !19, !alias.scope !398
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.ee
  store i8 0, ptr %i.eg, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26, !noalias !398
  %i.eh = load ptr, ptr %2, align 8, !tbaa !29    ; 6 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ej = icmp eq ptr %i.eh, %i.ei
  %i.ek = load ptr, ptr %5, align 8, !tbaa !29    ; 5 uses
  %i.el = icmp eq ptr %i.ek, %i.ec                ; 2 uses
  br i1 %i.ej, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i72: ; preds = %bb.z
  br i1 %i.el, label %bb.aa, label %.thread.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i66: ; preds = %bb.z
  br i1 %i.el, label %bb.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i67

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i66, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i72
  %i.em = load i64, ptr %i.ef, align 8, !tbaa !19 ; 3 uses
  %i.en = icmp ult i64 %i.em, 16
  call void @llvm.assume(i1 %i.en)
  switch i64 %i.em, label %bb.ac [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i70
    i64 1, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.eo = load i8, ptr %i.ek, align 1, !tbaa !20
  store i8 %i.eo, ptr %i.eh, align 1, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i70

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eh, ptr align 1 %i.ek, i64 %i.em, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i70: ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.ep = load i64, ptr %i.ef, align 8, !tbaa !19 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ep, ptr %i.eq, align 8, !tbaa !19
  %i.er = load ptr, ptr %2, align 8, !tbaa !29
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.ep
  store i8 0, ptr %i.es, align 1, !tbaa !20
  %.pre.i71 = load ptr, ptr %5, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit74

.thread.i73:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i72
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ek, ptr %2, align 8, !tbaa !29
  %i.eu = load <2 x i64>, ptr %i.ef, align 8, !tbaa !20
  store <2 x i64> %i.eu, ptr %i.et, align 8, !tbaa !20
  br label %bb.ae

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i67: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i66
  %i.ev = load i64, ptr %i.ei, align 8, !tbaa !20
  store ptr %i.ek, ptr %2, align 8, !tbaa !29
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ex = load <2 x i64>, ptr %i.ef, align 8, !tbaa !20
  store <2 x i64> %i.ex, ptr %i.ew, align 8, !tbaa !20
  %.not.i68 = icmp eq ptr %i.eh, null
  br i1 %.not.i68, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i67
  store ptr %i.eh, ptr %5, align 8, !tbaa !29
  store i64 %i.ev, ptr %i.ec, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit74

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i67, %.thread.i73
  store ptr %i.ec, ptr %5, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i70, %bb.ad, %bb.ae
  %8 = phi ptr [ %i.eh, %bb.ad ], [ %i.ec, %bb.ae ], [ %.pre.i71, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i70 ]
  store i64 0, ptr %i.ef, align 8, !tbaa !19
  store i8 0, ptr %8, align 1, !tbaa !20
  %i.ey = load ptr, ptr %5, align 8, !tbaa !29    ; 2 uses
  %i.ez = icmp eq ptr %i.ey, %i.ec
  br i1 %i.ez, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit74
  call void @_ZdlPv(ptr noundef %i.ey) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit74, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %.critedge

bb.af:                                            ; preds = %.thread90.thread
  %i.fa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.ag

.critedge:                                        ; preds = %.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i46, %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16ParsedExpressionEESaIS4_EE12_M_check_lenEmPKc.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, %.thread90
  ret void

bb.ag:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.r, %bb.af
  %i.fb = phi ptr [ %i.bn, %bb.r ], [ %i.eb, %bb.af ], [ %i.bn, %.loopexit ], [ %i.bn, %.loopexit.split-lp ] ; 2 uses
  %.pn29 = phi { ptr, i32 } [ %i.cp, %bb.r ], [ %i.fa, %bb.af ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i79 = icmp eq ptr %i.fb, null
  br i1 %.not.i.i.i79, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16ParsedExpressionEESaIS4_EED2Ev.exit80, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZdlPv(ptr noundef nonnull %i.fb) #28
  br label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16ParsedExpressionEESaIS4_EED2Ev.exit80

_ZNSt6vectorISt17reference_wrapperIKN6duckdb16ParsedExpressionEESaIS4_EED2Ev.exit80: ; preds = %bb.ag, %bb.ah
  resume { ptr, i32 } %.pn29
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(209) ptr @_ZN6duckdb14BaseExpression4CastINS_18FunctionExpressionEEERT_v(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.b = load i8, ptr %i.a, align 1, !tbaa !17
  %.not = icmp eq i8 %i.b, 9
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.80, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !29     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.f) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.c) #26
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret ptr %0

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb16LambdaExpression29InvalidParametersErrorMessageB5cxx11Ev(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 97, ptr %i.a, align 8, !tbaa !54
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !29
  %i.d = load i64, ptr %i.a, align 8, !tbaa !54   ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(97) %i.c, ptr noundef nonnull align 1 dereferenceable(97) @.str.6, i64 97, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  store i8 0, ptr %i.f, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb16LambdaExpression17IsLambdaParameterERKNS_6vectorISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS8_ESt8equal_toIS8_ESaIS8_EELb1ESaISE_EEERKS8_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !401    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !401  ; 2 uses
  %.not17.not = icmp eq ptr %i.a, %i.c
  br i1 %.not17.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.012.018 = phi ptr [ %i.e, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = tail call ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS5_(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.012.018, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %.not16.not = icmp ne ptr %i.d, null            ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.012.018, i64 56 ; 2 uses
  %.not.not = icmp eq ptr %i.e, %i.c
  %or.cond = select i1 %.not16.not, i1 true, i1 %.not.not
  br i1 %or.cond, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.not.lcssa = phi i1 [ false, %bb.a ], [ %.not16.not, %.lr.ph ]
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb16LambdaExpression8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %8 = alloca %"class.duckdb::vector.139", align 8 ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load i8, ptr %i.a, align 8, !tbaa !356
  %.not = icmp eq i8 %i.b, 2
  br i1 %.not, label %._crit_edge.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(56) %i.d)
  %i.h = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.7, i64 noundef 1)
          to label %.noexc unwind label %bb.t     ; 6 uses

.noexc:                                           ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.i, ptr %4, align 8, !tbaa !18, !alias.scope !403
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !29   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 5 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %.noexc
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !19   ; 3 uses
  %i.o = icmp ult i64 %i.n, 16
  call void @llvm.assume(i1 %i.o)
  %i.p = add nuw nsw i64 %i.n, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.k, i64 %i.p, i1 false)
  br label %bb.d

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc
end_hunk_0
