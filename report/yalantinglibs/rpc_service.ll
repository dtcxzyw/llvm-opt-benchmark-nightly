Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yalantinglibs/original/rpc_service?download=true
inline.NumInlined: 42348
inline.NumDeleted: 16015
loop-unroll.NumCompletelyUnrolled: 55
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 75
begin_hunk_0_@_ZN4asio2ip20basic_resolver_entryINS0_3tcpEED2Ev:bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !230
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !240  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !230
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN4asio2ip20basic_resolver_entryINS1_3tcpEEESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1668   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1665 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4asio2ip20basic_resolver_entryINS1_3tcpEEES4_EvT_S6_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN4asio2ip20basic_resolver_entryINS1_3tcpEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.p, %_ZSt8_DestroyIN4asio2ip20basic_resolver_entryINS1_3tcpEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !240  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 80 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !230
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !240  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZSt8_DestroyIN4asio2ip20basic_resolver_entryINS1_3tcpEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !230
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #51
  br label %_ZSt8_DestroyIN4asio2ip20basic_resolver_entryINS1_3tcpEEEEvPT_.exit.i.i

_ZSt8_DestroyIN4asio2ip20basic_resolver_entryINS1_3tcpEEEEvPT_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 96 ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN4asio2ip20basic_resolver_entryINS1_3tcpEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !107

_ZSt8_DestroyIPN4asio2ip20basic_resolver_entryINS1_3tcpEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN4asio2ip20basic_resolver_entryINS1_3tcpEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !1668
  br label %_ZSt8_DestroyIPN4asio2ip20basic_resolver_entryINS1_3tcpEEES4_EvT_S6_RSaIT0_E.exit

_ZSt8_DestroyIPN4asio2ip20basic_resolver_entryINS1_3tcpEEES4_EvT_S6_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN4asio2ip20basic_resolver_entryINS1_3tcpEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.q = phi ptr [ %.pr, %_ZSt8_DestroyIPN4asio2ip20basic_resolver_entryINS1_3tcpEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.q, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN4asio2ip20basic_resolver_entryINS1_3tcpEEESaIS4_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN4asio2ip20basic_resolver_entryINS1_3tcpEEES4_EvT_S6_RSaIT0_E.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1666
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #51
  br label %_ZNSt12_Vector_baseIN4asio2ip20basic_resolver_entryINS1_3tcpEEESaIS4_EED2Ev.exit

_ZNSt12_Vector_baseIN4asio2ip20basic_resolver_entryINS1_3tcpEEESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4asio2ip20basic_resolver_entryINS1_3tcpEEES4_EvT_S6_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Sp_counted_ptrIPSt6vectorIN4asio2ip20basic_resolver_entryINS2_3tcpEEESaIS5_EELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #51
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Sp_counted_ptrIPSt6vectorIN4asio2ip20basic_resolver_entryINS2_3tcpEEESaIS5_EELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1661 ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !1668 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1665 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4asio2ip20basic_resolver_entryINS1_3tcpEEES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZSt8_DestroyIN4asio2ip20basic_resolver_entryINS1_3tcpEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.s, %_ZSt8_DestroyIN4asio2ip20basic_resolver_entryINS1_3tcpEEEEvPT_.exit.i.i.i ], [ %i.d, %bb.b ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !240  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 80 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.k = load i64, ptr %i.i, align 8, !tbaa !230
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !240  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZSt8_DestroyIN4asio2ip20basic_resolver_entryINS1_3tcpEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.q = load i64, ptr %i.o, align 8, !tbaa !230
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #51
  br label %_ZSt8_DestroyIN4asio2ip20basic_resolver_entryINS1_3tcpEEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN4asio2ip20basic_resolver_entryINS1_3tcpEEEEvPT_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, %i.f
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4asio2ip20basic_resolver_entryINS1_3tcpEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !107

_ZSt8_DestroyIPN4asio2ip20basic_resolver_entryINS1_3tcpEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4asio2ip20basic_resolver_entryINS1_3tcpEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.b, align 8, !tbaa !1668
  br label %_ZSt8_DestroyIPN4asio2ip20basic_resolver_entryINS1_3tcpEEES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4asio2ip20basic_resolver_entryINS1_3tcpEEES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4asio2ip20basic_resolver_entryINS1_3tcpEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %bb.b
  %i.t = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4asio2ip20basic_resolver_entryINS1_3tcpEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %i.d, %bb.b ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4asio2ip20basic_resolver_entryINS1_3tcpEEESaIS4_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN4asio2ip20basic_resolver_entryINS1_3tcpEEES4_EvT_S6_RSaIT0_E.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1666
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #51
  br label %_ZNSt6vectorIN4asio2ip20basic_resolver_entryINS1_3tcpEEESaIS4_EED2Ev.exit

_ZNSt6vectorIN4asio2ip20basic_resolver_entryINS1_3tcpEEESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4asio2ip20basic_resolver_entryINS1_3tcpEEES4_EvT_S6_RSaIT0_E.exit.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 24) #51
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN4asio2ip20basic_resolver_entryINS1_3tcpEEESaIS4_EED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Sp_counted_ptrIPSt6vectorIN4asio2ip20basic_resolver_entryINS2_3tcpEEESaIS5_EELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #51
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15_Sp_counted_ptrIPSt6vectorIN4asio2ip20basic_resolver_entryINS2_3tcpEEESaIS5_EELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #12 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN4asio2ip20basic_resolver_entryINS1_3tcpEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(96) %2) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1665 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1668   ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4asio2ip20basic_resolver_entryINS1_3tcpEEESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.90) #53
  unreachable

_ZNKSt6vectorIN4asio2ip20basic_resolver_entryINS1_3tcpEEESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 96                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 96076792050570581)
  %i.l = select i1 %i.j, i64 96076792050570581, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 96
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #52 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 7 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.q, ptr noundef nonnull align 8 dereferenceable(96) %2, i64 28, i1 false), !tbaa.struct !1667
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 3 uses
  store ptr %i.t, ptr %i.r, align 8, !tbaa !237
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !240  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 5 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorIN4asio2ip20basic_resolver_entryINS1_3tcpEEESaIS4_EE12_M_check_lenEmPKc.exit
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.y = load i64, ptr %i.x, align 8, !tbaa !241  ; 3 uses
  %i.z = icmp ult i64 %i.y, 16
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = add nuw nsw i64 %i.y, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.v, i64 %i.aa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt6vectorIN4asio2ip20basic_resolver_entryINS1_3tcpEEESaIS4_EE12_M_check_lenEmPKc.exit
  store ptr %i.u, ptr %i.r, align 8, !tbaa !240
  %i.ab = load i64, ptr %i.v, align 8, !tbaa !230
  store i64 %i.ab, ptr %i.t, align 8, !tbaa !230
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !241
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.c
  %i.ac = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.y, %bb.c ]
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store i64 %i.ac, ptr %i.ae, align 8, !tbaa !241
  store ptr %i.v, ptr %i.s, align 8, !tbaa !240
  store i64 0, ptr %i.ad, align 8, !tbaa !241
  store i8 0, ptr %i.v, align 8, !tbaa !230
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 64 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 80 ; 3 uses
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !237
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !240 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 5 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.am = load i64, ptr %i.al, align 8, !tbaa !241 ; 3 uses
  %i.an = icmp ult i64 %i.am, 16
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = add nuw nsw i64 %i.am, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ah, ptr noundef nonnull align 8 dereferenceable(1) %i.aj, i64 %i.ao, i1 false)
  br label %_ZSt12construct_atIN4asio2ip20basic_resolver_entryINS1_3tcpEEEJS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !240
  %i.ap = load i64, ptr %i.aj, align 8, !tbaa !230
  store i64 %i.ap, ptr %i.ah, align 8, !tbaa !230
  %.phi.trans.insert37 = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.pre38 = load i64, ptr %.phi.trans.insert37, align 8, !tbaa !241
  br label %_ZSt12construct_atIN4asio2ip20basic_resolver_entryINS1_3tcpEEEJS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit

_ZSt12construct_atIN4asio2ip20basic_resolver_entryINS1_3tcpEEEJS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i
  %i.aq = phi i64 [ %i.am, %bb.d ], [ %.pre38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.as = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  store i64 %i.aq, ptr %i.as, align 8, !tbaa !241
  store ptr %i.aj, ptr %i.ag, align 8, !tbaa !240
  store i64 0, ptr %i.ar, align 8, !tbaa !241
  store i8 0, ptr %i.aj, align 8, !tbaa !230
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4asio2ip20basic_resolver_entryINS1_3tcpEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt12construct_atIN4asio2ip20basic_resolver_entryINS1_3tcpEEEJS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit, %_ZSt19__relocate_object_aIN4asio2ip20basic_resolver_entryINS1_3tcpEEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.bw, %_ZSt19__relocate_object_aIN4asio2ip20basic_resolver_entryINS1_3tcpEEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZSt12construct_atIN4asio2ip20basic_resolver_entryINS1_3tcpEEEJS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit ] ; 8 uses
  %.0911.i.i.i = phi ptr [ %i.bv, %_ZSt19__relocate_object_aIN4asio2ip20basic_resolver_entryINS1_3tcpEEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZSt12construct_atIN4asio2ip20basic_resolver_entryINS1_3tcpEEEJS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit ] ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5019)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5020)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.0911.i.i.i, i64 28, i1 false), !tbaa.struct !1667, !alias.scope !5021
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 3 uses
  store ptr %i.av, ptr %i.at, align 8, !tbaa !237, !alias.scope !5019, !noalias !5020
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !240, !alias.scope !5020, !noalias !5019 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 5 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !241, !alias.scope !5020, !noalias !5019 ; 3 uses
  %i.bb = icmp ult i64 %i.ba, 16
  tail call void @llvm.assume(i1 %i.bb)
  %i.bc = add nuw nsw i64 %i.ba, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.av, ptr noundef nonnull align 8 dereferenceable(1) %i.ax, i64 %i.bc, i1 false), !alias.scope !5021
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.aw, ptr %i.at, align 8, !tbaa !240, !alias.scope !5019, !noalias !5020
  %i.bd = load i64, ptr %i.ax, align 8, !tbaa !230, !alias.scope !5020, !noalias !5019
  store i64 %i.bd, ptr %i.av, align 8, !tbaa !230, !alias.scope !5019, !noalias !5020
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !241, !alias.scope !5020, !noalias !5019
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.e
  %i.be = phi i64 [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ %i.ba, %bb.e ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  store i64 %i.be, ptr %i.bg, align 8, !tbaa !241, !alias.scope !5019, !noalias !5020
  store ptr %i.ax, ptr %i.au, align 8, !tbaa !240, !alias.scope !5020, !noalias !5019
  store i64 0, ptr %i.bf, align 8, !tbaa !241, !alias.scope !5020, !noalias !5019
  store i8 0, ptr %i.ax, align 8, !tbaa !230, !alias.scope !5020, !noalias !5019
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 80 ; 3 uses
  store ptr %i.bj, ptr %i.bh, align 8, !tbaa !237, !alias.scope !5019, !noalias !5020
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !240, !alias.scope !5020, !noalias !5019 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 80 ; 5 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !241, !alias.scope !5020, !noalias !5019 ; 3 uses
  %i.bp = icmp ult i64 %i.bo, 16
  tail call void @llvm.assume(i1 %i.bp)
  %i.bq = add nuw nsw i64 %i.bo, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bj, ptr noundef nonnull align 8 dereferenceable(1) %i.bl, i64 %i.bq, i1 false), !alias.scope !5021
  br label %_ZSt19__relocate_object_aIN4asio2ip20basic_resolver_entryINS1_3tcpEEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i
  store ptr %i.bk, ptr %i.bh, align 8, !tbaa !240, !alias.scope !5019, !noalias !5020
  %i.br = load i64, ptr %i.bl, align 8, !tbaa !230, !alias.scope !5020, !noalias !5019
  store i64 %i.br, ptr %i.bj, align 8, !tbaa !230, !alias.scope !5019, !noalias !5020
  %.phi.trans.insert5.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72
  %.pre6.i.i.i.i = load i64, ptr %.phi.trans.insert5.i.i.i.i, align 8, !tbaa !241, !alias.scope !5020, !noalias !5019
  br label %_ZSt19__relocate_object_aIN4asio2ip20basic_resolver_entryINS1_3tcpEEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN4asio2ip20basic_resolver_entryINS1_3tcpEEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i.i, %bb.f
  %i.bs = phi i64 [ %i.bo, %bb.f ], [ %.pre6.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i.i ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72
  %i.bu = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72
  store i64 %i.bs, ptr %i.bu, align 8, !tbaa !241, !alias.scope !5019, !noalias !5020
  store ptr %i.bl, ptr %i.bi, align 8, !tbaa !240, !alias.scope !5020, !noalias !5019
  store i64 0, ptr %i.bt, align 8, !tbaa !241, !alias.scope !5020, !noalias !5019
  store i8 0, ptr %i.bl, align 8, !tbaa !230, !alias.scope !5020, !noalias !5019
  %i.bv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 96 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bv, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4asio2ip20basic_resolver_entryINS1_3tcpEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !5015

_ZNSt6vectorIN4asio2ip20basic_resolver_entryINS1_3tcpEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %_ZSt19__relocate_object_aIN4asio2ip20basic_resolver_entryINS1_3tcpEEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i, %_ZSt12construct_atIN4asio2ip20basic_resolver_entryINS1_3tcpEEEJS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZSt12construct_atIN4asio2ip20basic_resolver_entryINS1_3tcpEEEJS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit ], [ %i.bw, %_ZSt19__relocate_object_aIN4asio2ip20basic_resolver_entryINS1_3tcpEEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 96 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN4asio2ip20basic_resolver_entryINS1_3tcpEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit30, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN4asio2ip20basic_resolver_entryINS1_3tcpEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %_ZSt19__relocate_object_aIN4asio2ip20basic_resolver_entryINS1_3tcpEEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i27
  %.012.i.i.i18 = phi ptr [ %i.db, %_ZSt19__relocate_object_aIN4asio2ip20basic_resolver_entryINS1_3tcpEEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i27 ], [ %i.bx, %_ZNSt6vectorIN4asio2ip20basic_resolver_entryINS1_3tcpEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 8 uses
  %.0911.i.i.i19 = phi ptr [ %i.da, %_ZSt19__relocate_object_aIN4asio2ip20basic_resolver_entryINS1_3tcpEEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i27 ], [ %1, %_ZNSt6vectorIN4asio2ip20basic_resolver_entryINS1_3tcpEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5022)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5023)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.012.i.i.i18, ptr noundef nonnull align 8 dereferenceable(96) %.0911.i.i.i19, i64 28, i1 false), !tbaa.struct !1667, !alias.scope !5024
  %i.by = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 48 ; 3 uses
  store ptr %i.ca, ptr %i.by, align 8, !tbaa !237, !alias.scope !5022, !noalias !5023
  %i.cb = load ptr, ptr %i.bz, align 8, !tbaa !240, !alias.scope !5023, !noalias !5022 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 48 ; 5 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20

bb.g:                                             ; preds = %.lr.ph.i.i.i17
  %i.ce = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !241, !alias.scope !5023, !noalias !5022 ; 3 uses
  %i.cg = icmp ult i64 %i.cf, 16
  tail call void @llvm.assume(i1 %i.cg)
  %i.ch = add nuw nsw i64 %i.cf, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ca, ptr noundef nonnull align 8 dereferenceable(1) %i.cc, i64 %i.ch, i1 false), !alias.scope !5024
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.cb, ptr %i.by, align 8, !tbaa !240, !alias.scope !5022, !noalias !5023
  %i.ci = load i64, ptr %i.cc, align 8, !tbaa !230, !alias.scope !5023, !noalias !5022
  store i64 %i.ci, ptr %i.ca, align 8, !tbaa !230, !alias.scope !5022, !noalias !5023
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !241, !alias.scope !5023, !noalias !5022
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20, %bb.g
  %i.cj = phi i64 [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20 ], [ %i.cf, %bb.g ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40
  %i.cl = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 40
  store i64 %i.cj, ptr %i.cl, align 8, !tbaa !241, !alias.scope !5022, !noalias !5023
  store ptr %i.cc, ptr %i.bz, align 8, !tbaa !240, !alias.scope !5023, !noalias !5022
  store i64 0, ptr %i.ck, align 8, !tbaa !241, !alias.scope !5023, !noalias !5022
  store i8 0, ptr %i.cc, align 8, !tbaa !230, !alias.scope !5023, !noalias !5022
end_hunk_0
begin_hunk_1_@_Z23async_echo_by_coroutineSt17basic_string_viewIcSt11char_traitsIcEE.resume:resume.entry
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 136
  store ptr @_ZZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEmENUlPvmE_8__invokeES4_m, ptr %i.bh, align 1
  store ptr @_ZN7coro_io9sleep_forINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEN12async_simple4coro4LazyIbEET_.resume, ptr %i.bf, align 8
  %destroy.addr.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr @_ZN7coro_io9sleep_forINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEN12async_simple4coro4LazyIbEET_.destroy, ptr %destroy.addr.i, align 8
  %.reload.addr220.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %.spill.addr.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 120
  store i64 1, ptr %.spill.addr.i, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  store i8 0, ptr %i.bi, align 8, !tbaa !325
  %index.addr221.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 128
  store i8 0, ptr %index.addr221.i, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !8611)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !8612)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  store ptr %i.bf, ptr %.reload.addr101, align 8, !alias.scope !8613
  store i8 1, ptr %index.addr, align 8
  store ptr %0, ptr %.reload.addr220.i, align 8, !tbaa !284
  %i.bl = load <2 x ptr>, ptr %i.bj, align 8, !tbaa !284
  store <2 x ptr> %i.bl, ptr %i.bk, align 8, !tbaa !284
  musttail call void @_ZN7coro_io9sleep_forINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEN12async_simple4coro4LazyIbEET_.resume(ptr nonnull %i.bf)
  ret void

bb.p:                                             ; preds = %bb.o
  %i.bm = call ptr @__cxa_allocate_exception(i64 16) #49, !noalias !8614 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull @.str.103)
          to label %bb.q unwind label %_ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit37.from.89, !noalias !8614

bb.q:                                             ; preds = %bb.p
  invoke void @__cxa_throw(ptr nonnull %i.bm, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #53
          to label %.noexc27 unwind label %_ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit37.from.87

.noexc27:                                         ; preds = %bb.q
  unreachable

_ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit37.from.89: ; preds = %bb.p
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_free_exception(ptr nonnull %i.bm) #49, !noalias !8614
  br label %.body

_ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit37.from.87: ; preds = %bb.q
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

bb.r:                                             ; preds = %.noexc31, %AfterCoroSuspend70
  %i.bp = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.bq = load ptr, ptr %.reload.addr101, align 8, !tbaa !298 ; 3 uses
  %.not.i30 = icmp eq ptr %i.bq, null
  br i1 %.not.i30, label %.body, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  invoke void %i.bs(ptr nonnull %i.bq)
          to label %.body unwind label %bb.t, !inline_history !61

bb.t:                                             ; preds = %bb.s
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  tail call void @__clang_call_terminate(ptr %i.bu) #50
  unreachable

AfterCoroSuspend70:                               ; preds = %resume.entry
  %i.bv = load ptr, ptr %.reload.addr101, align 8, !tbaa !298
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = invoke noundef nonnull align 1 dereferenceable(1) ptr @_ZNO12async_simple4coro6detail11LazyPromiseIbE6resultEv(ptr noundef nonnull align 8 dereferenceable(40) %i.bw)
          to label %.noexc31 unwind label %bb.r   ; 0 uses

.noexc31:                                         ; preds = %AfterCoroSuspend70
  %i.by = load ptr, ptr %.reload.addr101, align 8, !tbaa !298 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8
  invoke void %i.ca(ptr %i.by)
          to label %bb.u unwind label %bb.r, !inline_history !164

bb.u:                                             ; preds = %.noexc31
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.cd = load i8, ptr %i.cb, align 8, !tbaa !291 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.cd, -1
  br i1 %.not.i.i.i.i.i, label %_ZN12async_simple4coro6detail11LazyPromiseISt17basic_string_viewIcSt11char_traitsIcEEE12return_valueIS6_EEvOT_Qsr3stdE16is_convertible_vIOTL0__S9_E.exit, label %bb.v, !prof !242

bb.v:                                             ; preds = %bb.u
  %i.ce = icmp ne i8 %i.cd, 2
  %i.cf = load ptr, ptr %i.cc, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cf, null
  %or.cond.i.i.i.i.i.i = select i1 %i.ce, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN12async_simple4coro6detail11LazyPromiseISt17basic_string_viewIcSt11char_traitsIcEEE12return_valueIS6_EEvOT_Qsr3stdE16is_convertible_vIOTL0__S9_E.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(17) %i.cc) #49
  br label %_ZN12async_simple4coro6detail11LazyPromiseISt17basic_string_viewIcSt11char_traitsIcEEE12return_valueIS6_EEvOT_Qsr3stdE16is_convertible_vIOTL0__S9_E.exit

_ZN12async_simple4coro6detail11LazyPromiseISt17basic_string_viewIcSt11char_traitsIcEEE12return_valueIS6_EEvOT_Qsr3stdE16is_convertible_vIOTL0__S9_E.exit: ; preds = %bb.w, %bb.v, %bb.u
  %.reload.addr99 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.reload100 = load ptr, ptr %.reload.addr99, align 8, !tbaa !8616
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.reload = load i64, ptr %.reload.addr, align 8, !tbaa !8616
  store i64 %.reload, ptr %i.cc, align 8, !tbaa !263
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.reload100, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !285
  store i8 1, ptr %i.cb, align 8, !tbaa !291
  br label %bb.x

.body:                                            ; preds = %bb.s, %bb.r, %_ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit37.from.87, %_ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit37.from.89, %.body.from.93, %.body.from., %.body.from.91
  %.pn14.pn.pn = phi { ptr, i32 } [ %i.n, %.body.from. ], [ %i.f, %.body.from.91 ], [ %.pn, %.body.from.93 ], [ %i.bp, %bb.r ], [ %i.bn, %_ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit37.from.89 ], [ %i.bo, %_ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit37.from.87 ], [ %i.bp, %bb.s ]
  %.4 = extractvalue { ptr, i32 } %.pn14.pn.pn, 0
  %i.cg = call ptr @__cxa_begin_catch(ptr %.4) #49 ; 0 uses
  call void @_ZN12async_simple4coro6detail11LazyPromiseISt17basic_string_viewIcSt11char_traitsIcEEE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(48) %.reload.addr104) #49
  invoke void @__cxa_end_catch()
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %_ZN12async_simple4coro6detail11LazyPromiseISt17basic_string_viewIcSt11char_traitsIcEEE12return_valueIS6_EEvOT_Qsr3stdE16is_convertible_vIOTL0__S9_E.exit, %.body
  store ptr null, ptr %0, align 8
  store i8 2, ptr %index.addr, align 8
  %.sroa.0.0.copyload.i.i5 = load ptr, ptr %.reload.addr104, align 8, !tbaa !284 ; 2 uses
  %i.ch = load ptr, ptr %.sroa.0.0.copyload.i.i5, align 8
  musttail call void %i.ch(ptr nonnull %.sroa.0.0.copyload.i.i5)
  ret void

bb.y:                                             ; preds = %.body
  %i.ci = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %0, align 8
  store i8 2, ptr %index.addr, align 8
  resume { ptr, i32 } %i.ci
}

; Function Attrs: coro_only_destroy_when_complete mustprogress nounwind uwtable
define internal void @_Z23async_echo_by_coroutineSt17basic_string_viewIcSt11char_traitsIcEE.destroy(ptr noundef nonnull align 8 dereferenceable(96) %0) #48 personality ptr @__gxx_personality_v0 {
resume.entry:
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 88
  %index = load i8, ptr %index.addr, align 8
  %i.a = icmp eq i8 %index, 1
  br i1 %i.a, label %AfterCoroSuspend70, label %AfterCoroSuspend, !prof !8617

AfterCoroSuspend70:                               ; preds = %resume.entry
  %.reload.addr101 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pr = load ptr, ptr %.reload.addr101, align 8, !tbaa !298 ; 3 uses
  %.not.i33 = icmp eq ptr %.pr, null
  br i1 %.not.i33, label %AfterCoroSuspend, label %bb.a

bb.a:                                             ; preds = %AfterCoroSuspend70
  %i.b = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  invoke void %i.c(ptr nonnull %.pr)
          to label %AfterCoroSuspend unwind label %bb.b, !inline_history !61

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #50
  unreachable

AfterCoroSuspend:                                 ; preds = %resume.entry, %AfterCoroSuspend70, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = load i8, ptr %i.f, align 8, !tbaa !291   ; 2 uses
  %.not.i.i.i38 = icmp eq i8 %i.h, -1
  br i1 %.not.i.i.i38, label %_ZN12async_simple4coro6detail11LazyPromiseISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit, label %bb.c, !prof !242

bb.c:                                             ; preds = %AfterCoroSuspend
  %i.i = icmp ne i8 %i.h, 2
  %i.j = load ptr, ptr %i.g, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.j, null
  %or.cond.i.i.i.i = select i1 %i.i, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %_ZN12async_simple4coro6detail11LazyPromiseISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(17) %i.g) #49
  br label %_ZN12async_simple4coro6detail11LazyPromiseISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit

_ZN12async_simple4coro6detail11LazyPromiseISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit: ; preds = %AfterCoroSuspend, %bb.c, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.0.copyload.i = load ptr, ptr %i.k, align 8
  invoke void %.0.copyload.i(ptr noundef nonnull %0, i64 noundef 96)
          to label %CoroEnd unwind label %bb.e

bb.e:                                             ; preds = %_ZN12async_simple4coro6detail11LazyPromiseISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #50
  unreachable

CoroEnd:                                          ; preds = %_ZN12async_simple4coro6detail11LazyPromiseISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit
  ret void
}

; Function Attrs: coro_only_destroy_when_complete mustprogress uwtable
define internal void @_ZN8coro_rpc19get_context_in_coroINS_8protocol17coro_rpc_protocolEEEN12async_simple4coro4LazyIPNS_14context_info_tIT_EEEEv.resume(ptr noundef nonnull align 8 dereferenceable(64) %0) #37 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1193, !nonnull !267, !noundef !267
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !338
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.g = load i8, ptr %i.a, align 8, !tbaa !3123  ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.g, -1
  br i1 %.not.i.i.i.i.i, label %bb.b, label %bb.c, !prof !242

bb.b:                                             ; preds = %bb.a, %bb.c, %bb.d
  %.reload.addr35 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %i.f, align 8, !tbaa !3183
  store i8 1, ptr %i.a, align 8, !tbaa !3123
  store ptr null, ptr %0, align 8
  %index.addr37 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %index.addr37, align 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %.reload.addr35, align 8, !tbaa !284 ; 2 uses
  %i.h = load ptr, ptr %.sroa.0.0.copyload.i.i, align 8
  musttail call void %i.h(ptr nonnull %.sroa.0.0.copyload.i.i)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ne i8 %i.g, 2
  %i.j = load ptr, ptr %i.f, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.j, null
  %or.cond.i.i.i.i.i.i = select i1 %i.i, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(9) %i.f) #49
  br label %bb.b
}

; Function Attrs: coro_only_destroy_when_complete mustprogress nounwind uwtable
define internal void @_ZN8coro_rpc19get_context_in_coroINS_8protocol17coro_rpc_protocolEEEN12async_simple4coro4LazyIPNS_14context_info_tIT_EEEEv.destroy(ptr noundef nonnull align 8 dereferenceable(64) %0) #48 personality ptr @__gxx_personality_v0 {
resume.entry:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i8, ptr %i.a, align 8, !tbaa !3123  ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.c, -1
  br i1 %.not.i.i.i, label %_ZN12async_simple4coro6detail11LazyPromiseIPN8coro_rpc14context_info_tINS3_8protocol17coro_rpc_protocolEEEED2Ev.exit, label %bb.a, !prof !242

bb.a:                                             ; preds = %resume.entry
  %i.d = icmp ne i8 %i.c, 2
  %i.e = load ptr, ptr %i.b, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  %or.cond.i.i.i.i = select i1 %i.d, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %_ZN12async_simple4coro6detail11LazyPromiseIPN8coro_rpc14context_info_tINS3_8protocol17coro_rpc_protocolEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(9) %i.b) #49
  br label %_ZN12async_simple4coro6detail11LazyPromiseIPN8coro_rpc14context_info_tINS3_8protocol17coro_rpc_protocolEEEED2Ev.exit

_ZN12async_simple4coro6detail11LazyPromiseIPN8coro_rpc14context_info_tINS3_8protocol17coro_rpc_protocolEEEED2Ev.exit: ; preds = %resume.entry, %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.0.copyload.i = load ptr, ptr %i.f, align 8
  invoke void %.0.copyload.i(ptr noundef nonnull %0, i64 noundef 64)
          to label %CoroEnd unwind label %bb.c

bb.c:                                             ; preds = %_ZN12async_simple4coro6detail11LazyPromiseIPN8coro_rpc14context_info_tINS3_8protocol17coro_rpc_protocolEEEED2Ev.exit
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #50
  unreachable

CoroEnd:                                          ; preds = %_ZN12async_simple4coro6detail11LazyPromiseIPN8coro_rpc14context_info_tINS3_8protocol17coro_rpc_protocolEEEED2Ev.exit
  ret void
}

; Function Attrs: coro_only_destroy_when_complete mustprogress uwtable
define internal void @_Z12get_ctx_infov.resume(ptr noundef nonnull align 8 dereferenceable(240) %0) #37 personality ptr @__gxx_personality_v0 {
resume.entry:
  %1 = alloca %"class.easylog::record_t", align 8 ; 15 uses
  %2 = alloca %"struct.coro_io::endpoint", align 8 ; 16 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.easylog::record_t", align 8 ; 15 uses
  %4 = alloca %"class.easylog::record_t", align 8 ; 15 uses
  %5 = alloca %"class.asio::ip::basic_endpoint", align 4 ; 4 uses
  %6 = alloca %"class.asio::ip::basic_endpoint", align 4 ; 7 uses
  %7 = alloca %"class.asio::ip::basic_endpoint", align 4 ; 4 uses
  %8 = alloca %"class.asio::ip::basic_endpoint", align 4 ; 7 uses
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 12 uses
  %.reload.addr394 = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %.reload.addr396 = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 7 uses
  %.reload.addr397 = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 5 uses
  %.reload.addr400 = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %.reload.addr403 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 5 uses
  %index = load i8, ptr %index.addr, align 4
  switch i8 %index, label %unreachable [
    i8 0, label %AfterCoroSuspend
    i8 1, label %AfterCoroSuspend291
    i8 2, label %AfterCoroSuspend295
  ], !prof !8662

AfterCoroSuspend:                                 ; preds = %resume.entry
  %i.c = load atomic i8, ptr @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.a, label %_ZN7easylog6loggerILm0EE8instanceEv.exit, !prof !232

bb.a:                                             ; preds = %AfterCoroSuspend
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #49
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZN7easylog6loggerILm0EE8instanceEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN7easylog6loggerILm0EEC2Ev(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7easylog6loggerILm0EE8instanceEvE8instance)
          to label %bb.c unwind label %.body.from.383

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7easylog6loggerILm0EED2Ev, ptr nonnull @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, ptr nonnull @__dso_handle) #49 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #49
  br label %_ZN7easylog6loggerILm0EE8instanceEv.exit

.body.from.383:                                   ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #49
  br label %.body

_ZN7easylog6loggerILm0EE8instanceEv.exit:         ; preds = %bb.c, %bb.a, %AfterCoroSuspend
  %i.h = load atomic i32, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance monotonic, align 8
  %i.i = icmp slt i32 %i.h, 4
  br i1 %i.i, label %bb.d, label %bb.o

bb.d:                                             ; preds = %_ZN7easylog6loggerILm0EE8instanceEv.exit
  %i.j = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #49 ; 2 uses
  %i.k = load atomic i8, ptr @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance acquire, align 8
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.e, label %_ZN7easylog6loggerILm0EE8instanceEv.exit60, !prof !232

bb.e:                                             ; preds = %bb.d
  %i.m = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #49
  %.not.i57 = icmp eq i32 %i.m, 0
  br i1 %.not.i57, label %_ZN7easylog6loggerILm0EE8instanceEv.exit60, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN7easylog6loggerILm0EEC2Ev(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7easylog6loggerILm0EE8instanceEvE8instance)
          to label %bb.g unwind label %.body.from.381

bb.g:                                             ; preds = %bb.f
  %i.n = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7easylog6loggerILm0EED2Ev, ptr nonnull @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, ptr nonnull @__dso_handle) #49 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #49
  br label %_ZN7easylog6loggerILm0EE8instanceEv.exit60

.body.from.381:                                   ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #49
  br label %.body

_ZN7easylog6loggerILm0EE8instanceEv.exit60:       ; preds = %bb.g, %bb.e, %bb.d
  %i.p = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, i64 8) monotonic, align 8
  %i.q = icmp slt i64 %i.p, 1
  br i1 %i.q, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit

_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit: ; preds = %_ZN7easylog6loggerILm0EE8instanceEv.exit60
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, i64 24), align 8, !tbaa !263
  %i.r = sub nsw i64 %i.j, %.sroa.0.0.copyload.i2.i.i
  %i.s = sdiv i64 %i.r, 1000000
  %i.t = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, i64 8) monotonic, align 8
  %i.u = srem i64 %i.s, %i.t
  %i.v = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, i64 16) monotonic, align 8
  %i.w = icmp slt i64 %i.u, %i.v
  br i1 %i.w, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread, label %bb.o

_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread: ; preds = %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit, %_ZN7easylog6loggerILm0EE8instanceEv.exit60
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #49
  store i64 %i.j, ptr %4, align 8, !tbaa !263
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.x, align 8, !tbaa !272
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.z = load i8, ptr @_ZGVZN7easylog8record_t8_get_tidEvE3tid, align 8
  %i.aa = icmp eq i8 %i.z, 0
  br i1 %i.aa, label %bb.h, label %._crit_edge.i.i, !prof !273

._crit_edge.i.i:                                  ; preds = %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread
  %.pre.i.i = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZZN7easylog8record_t8_get_tidEvE3tid)
  %.pre.i = load i32, ptr %.pre.i.i, align 4, !tbaa !231
  br label %_ZN7easylog8record_t8_get_tidEv.exit.i

bb.h:                                             ; preds = %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread
  %i.ab = tail call i64 (i64, ...) @syscall(i64 noundef 186) #49
  %i.ac = trunc i64 %i.ab to i32                  ; 2 uses
  %i.ad = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZZN7easylog8record_t8_get_tidEvE3tid)
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !231
  store i8 1, ptr @_ZGVZN7easylog8record_t8_get_tidEvE3tid, align 8
  br label %_ZN7easylog8record_t8_get_tidEv.exit.i

_ZN7easylog8record_t8_get_tidEv.exit.i:           ; preds = %bb.h, %._crit_edge.i.i
  %i.ae = phi i32 [ %.pre.i, %._crit_edge.i.i ], [ %i.ac, %bb.h ]
  store i32 %i.ae, ptr %i.y, align 4, !tbaa !274
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.ah = invoke noalias noundef nonnull dereferenceable(22) ptr @_Znwm(i64 noundef 22) #52
          to label %.noexc unwind label %bb.n     ; 6 uses

.noexc:                                           ; preds = %_ZN7easylog8record_t8_get_tidEv.exit.i
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !240
  store i64 21, ptr %i.ag, align 8, !tbaa !230
end_hunk_1
