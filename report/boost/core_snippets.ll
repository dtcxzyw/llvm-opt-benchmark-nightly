Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/core_snippets?download=true
inline.NumInlined: 5845
inline.NumDeleted: 2719
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN5boost4asio2ip20basic_resolver_entryINS1_3tcpEED2Ev:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !52   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !53
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN5boost4asio2ip20basic_resolver_entryINS2_3tcpEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !313    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !310  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN5boost4asio2ip20basic_resolver_entryINS2_3tcpEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN5boost4asio2ip20basic_resolver_entryINS2_3tcpEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.p, %_ZSt8_DestroyIN5boost4asio2ip20basic_resolver_entryINS2_3tcpEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !52   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 80 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !53
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !52   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZSt8_DestroyIN5boost4asio2ip20basic_resolver_entryINS2_3tcpEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !53
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #36
  br label %_ZSt8_DestroyIN5boost4asio2ip20basic_resolver_entryINS2_3tcpEEEEvPT_.exit.i.i

_ZSt8_DestroyIN5boost4asio2ip20basic_resolver_entryINS2_3tcpEEEEvPT_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 96 ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN5boost4asio2ip20basic_resolver_entryINS2_3tcpEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !11

_ZSt8_DestroyIPN5boost4asio2ip20basic_resolver_entryINS2_3tcpEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN5boost4asio2ip20basic_resolver_entryINS2_3tcpEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !313
  br label %_ZSt8_DestroyIPN5boost4asio2ip20basic_resolver_entryINS2_3tcpEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPN5boost4asio2ip20basic_resolver_entryINS2_3tcpEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN5boost4asio2ip20basic_resolver_entryINS2_3tcpEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.q = phi ptr [ %.pr, %_ZSt8_DestroyIPN5boost4asio2ip20basic_resolver_entryINS2_3tcpEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.q, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN5boost4asio2ip20basic_resolver_entryINS2_3tcpEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN5boost4asio2ip20basic_resolver_entryINS2_3tcpEEES5_EvT_S7_RSaIT0_E.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !311
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #36
  br label %_ZNSt12_Vector_baseIN5boost4asio2ip20basic_resolver_entryINS2_3tcpEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseIN5boost4asio2ip20basic_resolver_entryINS2_3tcpEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5boost4asio2ip20basic_resolver_entryINS2_3tcpEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPSt6vectorIN5boost4asio2ip20basic_resolver_entryINS3_3tcpEEESaIS6_EELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPSt6vectorIN5boost4asio2ip20basic_resolver_entryINS3_3tcpEEESaIS6_EELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !306  ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !313  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !310  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5boost4asio2ip20basic_resolver_entryINS2_3tcpEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZSt8_DestroyIN5boost4asio2ip20basic_resolver_entryINS2_3tcpEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.s, %_ZSt8_DestroyIN5boost4asio2ip20basic_resolver_entryINS2_3tcpEEEEvPT_.exit.i.i.i ], [ %i.d, %bb.b ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !52   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 80 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.k = load i64, ptr %i.i, align 8, !tbaa !53
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !52   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZSt8_DestroyIN5boost4asio2ip20basic_resolver_entryINS2_3tcpEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.q = load i64, ptr %i.o, align 8, !tbaa !53
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #36
  br label %_ZSt8_DestroyIN5boost4asio2ip20basic_resolver_entryINS2_3tcpEEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN5boost4asio2ip20basic_resolver_entryINS2_3tcpEEEEvPT_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, %i.f
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5boost4asio2ip20basic_resolver_entryINS2_3tcpEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !11

_ZSt8_DestroyIPN5boost4asio2ip20basic_resolver_entryINS2_3tcpEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5boost4asio2ip20basic_resolver_entryINS2_3tcpEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.b, align 8, !tbaa !313
  br label %_ZSt8_DestroyIPN5boost4asio2ip20basic_resolver_entryINS2_3tcpEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5boost4asio2ip20basic_resolver_entryINS2_3tcpEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5boost4asio2ip20basic_resolver_entryINS2_3tcpEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.b
  %i.t = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5boost4asio2ip20basic_resolver_entryINS2_3tcpEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.d, %bb.b ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5boost4asio2ip20basic_resolver_entryINS2_3tcpEEESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN5boost4asio2ip20basic_resolver_entryINS2_3tcpEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !311
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #36
  br label %_ZNSt6vectorIN5boost4asio2ip20basic_resolver_entryINS2_3tcpEEESaIS5_EED2Ev.exit

_ZNSt6vectorIN5boost4asio2ip20basic_resolver_entryINS2_3tcpEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5boost4asio2ip20basic_resolver_entryINS2_3tcpEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 24) #36
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN5boost4asio2ip20basic_resolver_entryINS2_3tcpEEESaIS5_EED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPSt6vectorIN5boost4asio2ip20basic_resolver_entryINS3_3tcpEEESaIS6_EELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt15_Sp_counted_ptrIPSt6vectorIN5boost4asio2ip20basic_resolver_entryINS3_3tcpEEESaIS6_EELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #10 comdat align 2 {
bb.a:
  ret ptr null
}

declare void @_ZN5boost4asio2ip6detail8endpoint6resizeEm(ptr noundef nonnull align 4 dereferenceable(28), i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN5boost4asio2ip20basic_resolver_entryINS2_3tcpEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(96) %2) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !310  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !313    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN5boost4asio2ip20basic_resolver_entryINS2_3tcpEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #34
  unreachable

_ZNKSt6vectorIN5boost4asio2ip20basic_resolver_entryINS2_3tcpEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
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
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #35 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 7 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.q, ptr noundef nonnull align 8 dereferenceable(96) %2, i64 28, i1 false), !tbaa.struct !312
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 3 uses
  store ptr %i.t, ptr %i.r, align 8, !tbaa !48
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !52   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 5 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorIN5boost4asio2ip20basic_resolver_entryINS2_3tcpEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.y = load i64, ptr %i.x, align 8, !tbaa !54   ; 3 uses
  %i.z = icmp ult i64 %i.y, 16
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = add nuw nsw i64 %i.y, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.v, i64 %i.aa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt6vectorIN5boost4asio2ip20basic_resolver_entryINS2_3tcpEEESaIS5_EE12_M_check_lenEmPKc.exit
  store ptr %i.u, ptr %i.r, align 8, !tbaa !52
  %i.ab = load i64, ptr %i.v, align 8, !tbaa !53
  store i64 %i.ab, ptr %i.t, align 8, !tbaa !53
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.c
  %i.ac = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.y, %bb.c ]
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store i64 %i.ac, ptr %i.ae, align 8, !tbaa !54
  store ptr %i.v, ptr %i.s, align 8, !tbaa !52
  store i64 0, ptr %i.ad, align 8, !tbaa !54
  store i8 0, ptr %i.v, align 8, !tbaa !53
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 64 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 80 ; 3 uses
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !48
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !52 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 5 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.am = load i64, ptr %i.al, align 8, !tbaa !54 ; 3 uses
  %i.an = icmp ult i64 %i.am, 16
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = add nuw nsw i64 %i.am, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ah, ptr noundef nonnull align 8 dereferenceable(1) %i.aj, i64 %i.ao, i1 false)
  br label %_ZN5boost4asio2ip20basic_resolver_entryINS1_3tcpEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !52
  %i.ap = load i64, ptr %i.aj, align 8, !tbaa !53
  store i64 %i.ap, ptr %i.ah, align 8, !tbaa !53
  %.phi.trans.insert37 = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.pre38 = load i64, ptr %.phi.trans.insert37, align 8, !tbaa !54
  br label %_ZN5boost4asio2ip20basic_resolver_entryINS1_3tcpEEC2EOS4_.exit

_ZN5boost4asio2ip20basic_resolver_entryINS1_3tcpEEC2EOS4_.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i
  %i.aq = phi i64 [ %i.am, %bb.d ], [ %.pre38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.as = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  store i64 %i.aq, ptr %i.as, align 8, !tbaa !54
  store ptr %i.aj, ptr %i.ag, align 8, !tbaa !52
  store i64 0, ptr %i.ar, align 8, !tbaa !54
  store i8 0, ptr %i.aj, align 8, !tbaa !53
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN5boost4asio2ip20basic_resolver_entryINS2_3tcpEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5boost4asio2ip20basic_resolver_entryINS1_3tcpEEC2EOS4_.exit, %_ZSt19__relocate_object_aIN5boost4asio2ip20basic_resolver_entryINS2_3tcpEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.bw, %_ZSt19__relocate_object_aIN5boost4asio2ip20basic_resolver_entryINS2_3tcpEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZN5boost4asio2ip20basic_resolver_entryINS1_3tcpEEC2EOS4_.exit ] ; 8 uses
  %.0911.i.i.i = phi ptr [ %i.bv, %_ZSt19__relocate_object_aIN5boost4asio2ip20basic_resolver_entryINS2_3tcpEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZN5boost4asio2ip20basic_resolver_entryINS1_3tcpEEC2EOS4_.exit ] ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1028)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1029)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.0911.i.i.i, i64 28, i1 false), !tbaa.struct !312, !alias.scope !1030
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 3 uses
  store ptr %i.av, ptr %i.at, align 8, !tbaa !48, !alias.scope !1028, !noalias !1029
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !52, !alias.scope !1029, !noalias !1028 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 5 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !54, !alias.scope !1029, !noalias !1028 ; 3 uses
  %i.bb = icmp ult i64 %i.ba, 16
  tail call void @llvm.assume(i1 %i.bb)
  %i.bc = add nuw nsw i64 %i.ba, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.av, ptr noundef nonnull align 8 dereferenceable(1) %i.ax, i64 %i.bc, i1 false), !alias.scope !1030
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.aw, ptr %i.at, align 8, !tbaa !52, !alias.scope !1028, !noalias !1029
  %i.bd = load i64, ptr %i.ax, align 8, !tbaa !53, !alias.scope !1029, !noalias !1028
  store i64 %i.bd, ptr %i.av, align 8, !tbaa !53, !alias.scope !1028, !noalias !1029
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !54, !alias.scope !1029, !noalias !1028
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.e
  %i.be = phi i64 [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.ba, %bb.e ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  store i64 %i.be, ptr %i.bg, align 8, !tbaa !54, !alias.scope !1028, !noalias !1029
  store ptr %i.ax, ptr %i.au, align 8, !tbaa !52, !alias.scope !1029, !noalias !1028
  store i64 0, ptr %i.bf, align 8, !tbaa !54, !alias.scope !1029, !noalias !1028
  store i8 0, ptr %i.ax, align 8, !tbaa !53, !alias.scope !1029, !noalias !1028
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 80 ; 3 uses
  store ptr %i.bj, ptr %i.bh, align 8, !tbaa !48, !alias.scope !1028, !noalias !1029
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !52, !alias.scope !1029, !noalias !1028 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 80 ; 5 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !54, !alias.scope !1029, !noalias !1028 ; 3 uses
  %i.bp = icmp ult i64 %i.bo, 16
  tail call void @llvm.assume(i1 %i.bp)
  %i.bq = add nuw nsw i64 %i.bo, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bj, ptr noundef nonnull align 8 dereferenceable(1) %i.bl, i64 %i.bq, i1 false), !alias.scope !1030
  br label %_ZSt19__relocate_object_aIN5boost4asio2ip20basic_resolver_entryINS2_3tcpEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  store ptr %i.bk, ptr %i.bh, align 8, !tbaa !52, !alias.scope !1028, !noalias !1029
  %i.br = load i64, ptr %i.bl, align 8, !tbaa !53, !alias.scope !1029, !noalias !1028
  store i64 %i.br, ptr %i.bj, align 8, !tbaa !53, !alias.scope !1028, !noalias !1029
  %.phi.trans.insert5.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72
  %.pre6.i.i.i.i = load i64, ptr %.phi.trans.insert5.i.i.i.i, align 8, !tbaa !54, !alias.scope !1029, !noalias !1028
  br label %_ZSt19__relocate_object_aIN5boost4asio2ip20basic_resolver_entryINS2_3tcpEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN5boost4asio2ip20basic_resolver_entryINS2_3tcpEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i, %bb.f
  %i.bs = phi i64 [ %i.bo, %bb.f ], [ %.pre6.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72
  %i.bu = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72
  store i64 %i.bs, ptr %i.bu, align 8, !tbaa !54, !alias.scope !1028, !noalias !1029
  store ptr %i.bl, ptr %i.bi, align 8, !tbaa !52, !alias.scope !1029, !noalias !1028
  store i64 0, ptr %i.bt, align 8, !tbaa !54, !alias.scope !1029, !noalias !1028
  store i8 0, ptr %i.bl, align 8, !tbaa !53, !alias.scope !1029, !noalias !1028
  %i.bv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 96 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bv, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5boost4asio2ip20basic_resolver_entryINS2_3tcpEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !1024

_ZNSt6vectorIN5boost4asio2ip20basic_resolver_entryINS2_3tcpEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aIN5boost4asio2ip20basic_resolver_entryINS2_3tcpEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZN5boost4asio2ip20basic_resolver_entryINS1_3tcpEEC2EOS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZN5boost4asio2ip20basic_resolver_entryINS1_3tcpEEC2EOS4_.exit ], [ %i.bw, %_ZSt19__relocate_object_aIN5boost4asio2ip20basic_resolver_entryINS2_3tcpEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 96 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN5boost4asio2ip20basic_resolver_entryINS2_3tcpEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit30, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN5boost4asio2ip20basic_resolver_entryINS2_3tcpEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aIN5boost4asio2ip20basic_resolver_entryINS2_3tcpEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i27
  %.012.i.i.i18 = phi ptr [ %i.db, %_ZSt19__relocate_object_aIN5boost4asio2ip20basic_resolver_entryINS2_3tcpEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i27 ], [ %i.bx, %_ZNSt6vectorIN5boost4asio2ip20basic_resolver_entryINS2_3tcpEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 8 uses
  %.0911.i.i.i19 = phi ptr [ %i.da, %_ZSt19__relocate_object_aIN5boost4asio2ip20basic_resolver_entryINS2_3tcpEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i27 ], [ %1, %_ZNSt6vectorIN5boost4asio2ip20basic_resolver_entryINS2_3tcpEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1031)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1032)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.012.i.i.i18, ptr noundef nonnull align 8 dereferenceable(96) %.0911.i.i.i19, i64 28, i1 false), !tbaa.struct !312, !alias.scope !1033
  %i.by = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 48 ; 3 uses
  store ptr %i.ca, ptr %i.by, align 8, !tbaa !48, !alias.scope !1031, !noalias !1032
  %i.cb = load ptr, ptr %i.bz, align 8, !tbaa !52, !alias.scope !1032, !noalias !1031 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 48 ; 5 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20

bb.g:                                             ; preds = %.lr.ph.i.i.i17
  %i.ce = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !54, !alias.scope !1032, !noalias !1031 ; 3 uses
  %i.cg = icmp ult i64 %i.cf, 16
  tail call void @llvm.assume(i1 %i.cg)
  %i.ch = add nuw nsw i64 %i.cf, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ca, ptr noundef nonnull align 8 dereferenceable(1) %i.cc, i64 %i.ch, i1 false), !alias.scope !1033
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.cb, ptr %i.by, align 8, !tbaa !52, !alias.scope !1031, !noalias !1032
  %i.ci = load i64, ptr %i.cc, align 8, !tbaa !53, !alias.scope !1032, !noalias !1031
  store i64 %i.ci, ptr %i.ca, align 8, !tbaa !53, !alias.scope !1031, !noalias !1032
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !54, !alias.scope !1032, !noalias !1031
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20, %bb.g
  %i.cj = phi i64 [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20 ], [ %i.cf, %bb.g ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40
  %i.cl = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 40
  store i64 %i.cj, ptr %i.cl, align 8, !tbaa !54, !alias.scope !1031, !noalias !1032
  store ptr %i.cc, ptr %i.bz, align 8, !tbaa !52, !alias.scope !1032, !noalias !1031
  store i64 0, ptr %i.ck, align 8, !tbaa !54, !alias.scope !1032, !noalias !1031
  store i8 0, ptr %i.cc, align 8, !tbaa !53, !alias.scope !1032, !noalias !1031
end_hunk_0
begin_hunk_1_@_ZN5boost5beast4http10serializerILb0ENS1_18basic_dynamic_bodyINS0_18basic_multi_bufferISaIcEEEEENS1_12basic_fieldsIS5_EEE7consumeEm:bb.a
bb.l:                                             ; preds = %_ZN5boost5beast14buffers_suffixINS0_6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEE7consumeEm.exit
  %i.az = load ptr, ptr %i.at, align 8, !tbaa !421, !noalias !1573
  store ptr %i.as, ptr %31, align 8, !tbaa !452, !alias.scope !1573
  %i.ba = getelementptr inbounds nuw i8, ptr %31, i64 8
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !421, !alias.scope !1573
  br label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS1_11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEvEEmRKT_.exit

bb.m:                                             ; preds = %_ZN5boost5beast14buffers_suffixINS0_6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEE7consumeEm.exit
  %i.bb = load ptr, ptr %i.at, align 8, !tbaa !457, !noalias !1573
  store ptr %i.as, ptr %31, align 8, !tbaa !452, !alias.scope !1573
  %i.bc = getelementptr inbounds nuw i8, ptr %31, i64 8
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !398, !alias.scope !1573
  br label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS1_11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEvEEmRKT_.exit

bb.n:                                             ; preds = %_ZN5boost5beast14buffers_suffixINS0_6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEE7consumeEm.exit
  %i.bd = load ptr, ptr %i.at, align 8, !tbaa !421, !noalias !1573
  store ptr %i.as, ptr %31, align 8, !tbaa !452, !alias.scope !1573
  %i.be = getelementptr inbounds nuw i8, ptr %31, i64 8
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !421, !alias.scope !1573
  br label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS1_11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEvEEmRKT_.exit

bb.o:                                             ; preds = %_ZN5boost5beast14buffers_suffixINS0_6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEE7consumeEm.exit
  %i.bf = load i8, ptr %i.at, align 8, !tbaa !53, !noalias !1573
  store ptr %i.as, ptr %31, align 8, !tbaa !452, !alias.scope !1573
  %i.bg = getelementptr inbounds nuw i8, ptr %31, i64 8
  store i8 %i.bf, ptr %i.bg, align 8, !tbaa !53, !alias.scope !1573
  br label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS1_11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEvEEmRKT_.exit

_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS1_11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEvEEmRKT_.exit: ; preds = %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratorC2ERKSC_.exit.thread.i.i.i.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o
  %i.bh = getelementptr inbounds nuw i8, ptr %31, i64 16
  store i8 %i.au, ptr %i.bh, align 8, !tbaa !455, !alias.scope !1573
  %i.bi = getelementptr inbounds nuw i8, ptr %31, i64 24
  store ptr %i.aa, ptr %i.bi, align 8, !tbaa !481, !alias.scope !1573
  call void @llvm.experimental.noalias.scope.decl(metadata !1574)
  call void @llvm.experimental.noalias.scope.decl(metadata !1575)
  %i.bj = load ptr, ptr %i.aa, align 8, !tbaa !461, !noalias !1576
  store ptr %i.bj, ptr %32, align 8, !tbaa !452, !alias.scope !1577
  %i.bk = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %32, i64 16
  store i8 0, ptr %i.bk, align 8, !tbaa !53, !alias.scope !1577
  store i8 6, ptr %i.bl, align 8, !tbaa !455, !alias.scope !1577
  %i.bm = getelementptr inbounds nuw i8, ptr %32, i64 24
  store ptr %i.aa, ptr %i.bm, align 8, !tbaa !481, !alias.scope !1577
  %i.bn = call noundef i64 @_ZN5boost4asio6detail11buffer_sizeINS_5beast14buffers_suffixINS3_6detail11buffers_refINS3_16buffers_cat_viewIJNS0_12const_bufferES8_S8_NS3_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEE14const_iteratorEEEmNS1_16multiple_buffersET_SL_(ptr noundef nonnull align 8 %31, ptr noundef nonnull align 8 %32) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %31)
  call void @llvm.lifetime.end.p0(ptr nonnull %32)
  %.not15 = icmp eq i64 %i.bn, 0
  br i1 %.not15, label %bb.p, label %bb.bv

bb.p:                                             ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS1_11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEvEEmRKT_.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.bo, align 8, !tbaa !218
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 413
  store i8 1, ptr %i.bp, align 1, !tbaa !1569
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.br = load i8, ptr %i.bq, align 4, !tbaa !399, !range !241, !noundef !64
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %.sink.split, label %bb.bu

bb.q:                                             ; preds = %bb.a
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !250, !noalias !1578 ; 3 uses
  %.not9.i = icmp eq i64 %1, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !406
  %.fr13.i = freeze ptr %.pre                     ; 10 uses
  br i1 %.not9.i, label %._ZN5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE7consumeEm.exit_crit_edge, label %.lr.ph.i23

._ZN5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE7consumeEm.exit_crit_edge: ; preds = %bb.q
  %.phi.trans.insert79 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.pre80 = load ptr, ptr %.phi.trans.insert79, align 8, !tbaa !250, !noalias !1579
  br label %_ZN5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE7consumeEm.exit

.lr.ph.i23:                                       ; preds = %bb.q
  %.not14.i24 = icmp eq ptr %.fr13.i, %i.bt
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.fr13.i, i64 16 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.fr13.i, i64 32 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.fr13.i, i64 8 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.fr13.i, i64 24 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 5 uses
  br i1 %.not14.i24, label %.lr.ph.split.preheader.i, label %.lr.ph.split.us.i

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i23
  %.pre17.i = load ptr, ptr %i.bw, align 8
  br label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i23
  %.promoted.i = load i64, ptr %i.cb, align 8, !tbaa !408 ; 2 uses
  %.pre.i25 = load ptr, ptr %i.bw, align 8        ; 5 uses
  %i.cc = load ptr, ptr %i.bx, align 8, !tbaa !250
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !130
  %i.cf = icmp eq ptr %.pre.i25, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %.pre.i25, i64 16
  %.sroa.6.0.in.i.us.i.peel = select i1 %i.cf, ptr %i.by, ptr %i.cg
  %.sroa.6.0.i.us.i.peel = load i64, ptr %.sroa.6.0.in.i.us.i.peel, align 8, !tbaa !50 ; 2 uses
  %i.ch = load ptr, ptr %i.bz, align 8, !tbaa !250
  %i.ci = icmp eq ptr %.pre.i25, %i.ch
  br i1 %i.ci, label %bb.r, label %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratordeEv.exit.us.i.peel

bb.r:                                             ; preds = %.lr.ph.split.us.i
  %i.cj = load i64, ptr %i.ca, align 8, !tbaa !463
  %i.ck = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.6.0.i.us.i.peel, i64 %i.cj)
  br label %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratordeEv.exit.us.i.peel

_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratordeEv.exit.us.i.peel: ; preds = %bb.r, %.lr.ph.split.us.i
  %.sroa.6.1.i.us.i.peel = phi i64 [ %i.ck, %bb.r ], [ %.sroa.6.0.i.us.i.peel, %.lr.ph.split.us.i ]
  %i.cl = sub i64 %.sroa.6.1.i.us.i.peel, %.promoted.i ; 2 uses
  %i.cm = icmp ult i64 %1, %i.cl                  ; 2 uses
  %i.cn = add i64 %1, %.promoted.i
  %storemerge.us.i.peel = select i1 %i.cm, i64 %i.cn, i64 0
  store i64 %storemerge.us.i.peel, ptr %i.cb, align 8, !tbaa !408
  br i1 %i.cm, label %_ZN5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE7consumeEm.exit, label %bb.s

bb.s:                                             ; preds = %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratordeEv.exit.us.i.peel
  %i.co = sub nuw i64 %1, %i.cl                   ; 2 uses
  %i.cp = load ptr, ptr %.pre.i25, align 8, !tbaa !129 ; 3 uses
  store ptr %i.cp, ptr %i.bw, align 8, !tbaa !250
  %.not.us.i.peel = icmp eq i64 %i.co, 0
  br i1 %.not.us.i.peel, label %_ZN5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE7consumeEm.exit, label %.peel.next

.peel.next:                                       ; preds = %bb.s, %bb.u
  %i.cq = phi ptr [ %i.dc, %bb.u ], [ %i.cp, %bb.s ] ; 5 uses
  %.0710.us.i = phi i64 [ %i.db, %bb.u ], [ %i.co, %bb.s ] ; 3 uses
  %i.cr = load ptr, ptr %i.bx, align 8, !tbaa !250
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !130
  %i.cu = icmp eq ptr %i.cq, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %.sroa.6.0.in.i.us.i = select i1 %i.cu, ptr %i.by, ptr %i.cv
  %.sroa.6.0.i.us.i = load i64, ptr %.sroa.6.0.in.i.us.i, align 8, !tbaa !50 ; 2 uses
  %i.cw = load ptr, ptr %i.bz, align 8, !tbaa !250
  %i.cx = icmp eq ptr %i.cq, %i.cw
  br i1 %i.cx, label %bb.t, label %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratordeEv.exit.us.i

bb.t:                                             ; preds = %.peel.next
  %i.cy = load i64, ptr %i.ca, align 8, !tbaa !463
  %i.cz = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.6.0.i.us.i, i64 %i.cy)
  br label %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratordeEv.exit.us.i

_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratordeEv.exit.us.i: ; preds = %bb.t, %.peel.next
  %.sroa.6.1.i.us.i = phi i64 [ %i.cz, %bb.t ], [ %.sroa.6.0.i.us.i, %.peel.next ] ; 2 uses
  %i.da = icmp ult i64 %.0710.us.i, %.sroa.6.1.i.us.i ; 2 uses
  %storemerge.us.i = select i1 %i.da, i64 %.0710.us.i, i64 0
  store i64 %storemerge.us.i, ptr %i.cb, align 8, !tbaa !408
  br i1 %i.da, label %_ZN5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE7consumeEm.exit, label %bb.u

bb.u:                                             ; preds = %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratordeEv.exit.us.i
  %i.db = sub nuw i64 %.0710.us.i, %.sroa.6.1.i.us.i ; 2 uses
  %i.dc = load ptr, ptr %i.cq, align 8, !tbaa !129 ; 3 uses
  store ptr %i.dc, ptr %i.bw, align 8, !tbaa !250
  %.not.us.i = icmp eq i64 %i.db, 0
  br i1 %.not.us.i, label %_ZN5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE7consumeEm.exit, label %.peel.next, !llvm.loop !1526

.lr.ph.split.i:                                   ; preds = %bb.x, %.lr.ph.split.preheader.i
  %i.dd = phi ptr [ %i.ds, %bb.x ], [ %.pre17.i, %.lr.ph.split.preheader.i ] ; 7 uses
  %.0710.i = phi i64 [ %i.dr, %bb.x ], [ %1, %.lr.ph.split.preheader.i ] ; 3 uses
  %.not15.i = icmp eq ptr %i.dd, %i.bv
  br i1 %.not15.i, label %_ZN5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE7consumeEm.exit, label %bb.v

bb.v:                                             ; preds = %.lr.ph.split.i
  %i.de = load ptr, ptr %i.bx, align 8, !tbaa !250
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !130
  %i.dh = icmp eq ptr %i.dd, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %.sroa.6.0.in.i.i = select i1 %i.dh, ptr %i.by, ptr %i.di
  %.sroa.6.0.i.i = load i64, ptr %.sroa.6.0.in.i.i, align 8, !tbaa !50 ; 2 uses
  %i.dj = load ptr, ptr %i.bz, align 8, !tbaa !250
  %i.dk = icmp eq ptr %i.dd, %i.dj
  br i1 %i.dk, label %bb.w, label %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratordeEv.exit.i

bb.w:                                             ; preds = %bb.v
  %i.dl = load i64, ptr %i.ca, align 8, !tbaa !463
  %i.dm = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.6.0.i.i, i64 %i.dl)
  br label %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratordeEv.exit.i

_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratordeEv.exit.i: ; preds = %bb.w, %bb.v
  %.sroa.6.1.i.i = phi i64 [ %i.dm, %bb.w ], [ %.sroa.6.0.i.i, %bb.v ]
  %i.dn = load i64, ptr %i.cb, align 8, !tbaa !408 ; 2 uses
  %i.do = sub i64 %.sroa.6.1.i.i, %i.dn           ; 2 uses
  %i.dp = icmp ult i64 %.0710.i, %i.do            ; 2 uses
  %i.dq = add i64 %i.dn, %.0710.i
  %storemerge.i26 = select i1 %i.dp, i64 %i.dq, i64 0
  store i64 %storemerge.i26, ptr %i.cb, align 8, !tbaa !408
  br i1 %i.dp, label %_ZN5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE7consumeEm.exit, label %bb.x

bb.x:                                             ; preds = %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratordeEv.exit.i
  %i.dr = sub nuw i64 %.0710.i, %i.do             ; 2 uses
  %i.ds = load ptr, ptr %i.dd, align 8, !tbaa !129 ; 3 uses
  store ptr %i.ds, ptr %i.bw, align 8, !tbaa !250
  %.not.i27 = icmp eq i64 %i.dr, 0
  br i1 %.not.i27, label %_ZN5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE7consumeEm.exit, label %.lr.ph.split.i, !llvm.loop !1527

_ZN5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE7consumeEm.exit: ; preds = %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratordeEv.exit.us.i, %bb.u, %.lr.ph.split.i, %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratordeEv.exit.i, %bb.x, %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratordeEv.exit.us.i.peel, %bb.s, %._ZN5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE7consumeEm.exit_crit_edge
  %i.dt = phi ptr [ %.pre80, %._ZN5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE7consumeEm.exit_crit_edge ], [ %i.cp, %bb.s ], [ %.pre.i25, %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratordeEv.exit.us.i.peel ], [ %i.dd, %.lr.ph.split.i ], [ %i.dd, %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratordeEv.exit.i ], [ %i.ds, %bb.x ], [ %i.dc, %bb.u ], [ %i.cq, %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratordeEv.exit.us.i ] ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.fr13.i, i64 32
  %i.dv = getelementptr inbounds nuw i8, ptr %.fr13.i, i64 24 ; 2 uses
  %i.dw = icmp ne ptr %.fr13.i, %i.bt             ; 2 uses
  %i.dx = icmp ne ptr %i.dt, %i.bv
  %.not3.i.us18.i.i.i = select i1 %i.dw, i1 true, i1 %i.dx
  br i1 %.not3.i.us18.i.i.i, label %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.us.lr.ph.i.i.i, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEvEEmRKT_.exit.thread

_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.us.lr.ph.i.i.i: ; preds = %_ZN5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE7consumeEm.exit
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.dz = getelementptr inbounds nuw i8, ptr %.fr13.i, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %.fr13.i, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !250
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !130
  %i.ee = load ptr, ptr %i.dz, align 8, !tbaa !250
  %38 = xor i1 %i.dw, true
  tail call void @llvm.assume(i1 %38)
  %i.ef = load i64, ptr %i.dy, align 8
  br label %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.us.i.i.i

_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.us.i.i.i: ; preds = %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratordeEv.exit.us.i.i.i, %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.us.lr.ph.i.i.i
  %.sroa.5.0.us20.i.i.i = phi ptr [ %.sroa.5.0.us.i.i.i, %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratordeEv.exit.us.i.i.i ], [ %i.dt, %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.us.lr.ph.i.i.i ] ; 5 uses
  %.0.us19.i.i.i = phi i64 [ %i.ep, %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratordeEv.exit.us.i.i.i ], [ 0, %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.us.lr.ph.i.i.i ]
  %i.eg = icmp eq ptr %.sroa.5.0.us20.i.i.i, %i.dt
  %i.eh = icmp eq ptr %.sroa.5.0.us20.i.i.i, %i.ed
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.5.0.us20.i.i.i, i64 16
  %.sroa.6.0.in.i.i.us.i.i.i = select i1 %i.eh, ptr %i.du, ptr %i.ei
  %.sroa.6.0.i.i.us.i.i.i = load i64, ptr %.sroa.6.0.in.i.i.us.i.i.i, align 8, !tbaa !50 ; 4 uses
  %i.ej = icmp eq ptr %.sroa.5.0.us20.i.i.i, %i.ee ; 2 uses
  br i1 %i.eg, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.us.i.i.i
  br i1 %i.ej, label %bb.z, label %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratordeEv.exit.us.i.i.i

bb.z:                                             ; preds = %bb.y
  %i.ek = load i64, ptr %i.dv, align 8, !tbaa !463
  %i.el = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.6.0.i.i.us.i.i.i, i64 %i.ek)
  br label %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratordeEv.exit.us.i.i.i

bb.aa:                                            ; preds = %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.us.i.i.i
  br i1 %i.ej, label %bb.ab, label %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratordeEv.exit.i.us.i.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.em = load i64, ptr %i.dv, align 8, !tbaa !463
  %i.en = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.6.0.i.i.us.i.i.i, i64 %i.em)
  br label %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratordeEv.exit.i.us.i.i.i

_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratordeEv.exit.i.us.i.i.i: ; preds = %bb.ab, %bb.aa
  %.sroa.6.1.i.i.us.i.i.i = phi i64 [ %i.en, %bb.ab ], [ %.sroa.6.0.i.i.us.i.i.i, %bb.aa ]
  %i.eo = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.6.1.i.i.us.i.i.i, i64 %i.ef)
  br label %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratordeEv.exit.us.i.i.i

_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratordeEv.exit.us.i.i.i: ; preds = %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratordeEv.exit.i.us.i.i.i, %bb.z, %bb.y
  %.pn13.i.us.i.i.i = phi i64 [ %i.eo, %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratordeEv.exit.i.us.i.i.i ], [ %i.el, %bb.z ], [ %.sroa.6.0.i.i.us.i.i.i, %bb.y ]
  %i.ep = add i64 %.pn13.i.us.i.i.i, %.0.us19.i.i.i ; 2 uses
  %.sroa.5.0.us.i.i.i = load ptr, ptr %.sroa.5.0.us20.i.i.i, align 8, !tbaa !254 ; 2 uses
  %.not33.i.i.i = icmp eq ptr %.sroa.5.0.us.i.i.i, %i.bv
  br i1 %.not33.i.i.i, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEvEEmRKT_.exit, label %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.us.i.i.i, !llvm.loop !1528

_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEvEEmRKT_.exit: ; preds = %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratordeEv.exit.us.i.i.i
  %.not14 = icmp eq i64 %i.ep, 0
  br i1 %.not14, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEvEEmRKT_.exit.thread, label %bb.bv

_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEvEEmRKT_.exit.thread: ; preds = %_ZN5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE7consumeEm.exit, %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEvEEmRKT_.exit
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.er = load i8, ptr %i.eq, align 8, !tbaa !221
  %i.es = zext i8 %i.er to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #32
  store ptr %i.bt, ptr %30, align 8, !tbaa !232
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm9EE4callILm0ENS_5beast6detail7variantIJNS5_14buffers_suffixINS6_11buffers_refINS5_16buffers_cat_viewIJNS_4asio12const_bufferESC_SC_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSD_10chunk_crlfEEEEEEEENS8_INSA_IJSL_NS5_18basic_multi_bufferISF_E8subrangeILb0EEEEEEEENS8_ISQ_EENS8_INSA_IJSL_NSD_6detail10chunk_sizeESC_SJ_SQ_SJ_EEEEENS8_INSA_IJSV_SC_SJ_SQ_SJ_EEEEENS8_INSA_IJSV_SC_SJ_SQ_SJ_SC_SC_SJ_EEEEENS8_INSA_IJSL_SV_SC_SJ_SQ_SJ_SC_SC_SJ_EEEEENS8_INSA_IJSC_SC_SJ_EEEEEEE7destroyEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOS18_(i64 noundef %i.es, ptr noundef nonnull align 8 dereferenceable(8) %30)
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #32
  store i8 0, ptr %i.eq, align 8, !tbaa !221
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 414
  %i.eu = load i8, ptr %i.et, align 2, !tbaa !401, !range !241, !noundef !64
  %i.ev = trunc nuw i8 %i.eu to i1
  br i1 %i.ev, label %.sink.split, label %bb.bu

bb.ac:                                            ; preds = %bb.a
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %.not21.i = icmp eq i64 %1, 0
  br i1 %.not21.i, label %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_NS0_18basic_multi_bufferIS9_E8subrangeILb0EEESD_EEEE7consumeEm.exit, label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %bb.ac
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_NS0_18basic_multi_bufferIS8_E8subrangeILb0EEESC_EE14const_iteratorppEv.exit.i, %.lr.ph.i28
  %.0922.i = phi i64 [ %1, %.lr.ph.i28 ], [ %i.fj, %_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_NS0_18basic_multi_bufferIS8_E8subrangeILb0EEESC_EE14const_iteratorppEv.exit.i ] ; 3 uses
  %i.fa = load ptr, ptr %i.ey, align 8, !tbaa !485
  %i.fb = icmp eq ptr %i.fa, %i.ew
  %.pre.i29 = load i8, ptr %i.ex, align 8, !tbaa !486 ; 2 uses
  %.not.i.i.i.i30 = icmp eq i8 %.pre.i29, 7
  %or.cond.i31 = select i1 %i.fb, i1 %.not.i.i.i.i30, i1 false
  br i1 %or.cond.i31, label %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_NS0_18basic_multi_bufferIS9_E8subrangeILb0EEESD_EEEE7consumeEm.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fc = zext i8 %.pre.i29 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #32
  store ptr %i.ey, ptr %29, align 8, !tbaa !488
  %i.fd = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm8EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEENSB_6detail10chunk_sizeESA_SH_NS5_18basic_multi_bufferISD_E8subrangeILb0EEESH_EE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOST_(i64 noundef %i.fc, ptr noundef nonnull align 8 dereferenceable(8) %29)
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #32
  %i.fe = extractvalue { ptr, i64 } %i.fd, 1
  %i.ff = load i64, ptr %i.ez, align 8, !tbaa !502 ; 2 uses
  %i.fg = sub i64 %i.fe, %i.ff                    ; 2 uses
  %i.fh = icmp ult i64 %.0922.i, %i.fg            ; 2 uses
  %i.fi = add i64 %i.ff, %.0922.i
  %storemerge.i32 = select i1 %i.fh, i64 %i.fi, i64 0
  store i64 %storemerge.i32, ptr %i.ez, align 8, !tbaa !502
  br i1 %i.fh, label %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_NS0_18basic_multi_bufferIS9_E8subrangeILb0EEESD_EEEE7consumeEm.exit, label %_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_NS0_18basic_multi_bufferIS8_E8subrangeILb0EEESC_EE14const_iteratorppEv.exit.i

_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_NS0_18basic_multi_bufferIS8_E8subrangeILb0EEESC_EE14const_iteratorppEv.exit.i: ; preds = %bb.ae
  %i.fj = sub nuw i64 %.0922.i, %i.fg             ; 2 uses
  %i.fk = load i8, ptr %i.ex, align 8, !tbaa !486
  %i.fl = zext i8 %i.fk to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #32
  store ptr %i.ey, ptr %28, align 8, !tbaa !488
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm8EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEENSB_6detail10chunk_sizeESA_SH_NS5_18basic_multi_bufferISD_E8subrangeILb0EEESH_EE14const_iterator9incrementEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOST_(i64 noundef %i.fl, ptr noundef nonnull align 8 dereferenceable(8) %28)
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #32
  %.not.i33 = icmp eq i64 %i.fj, 0
  br i1 %.not.i33, label %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_NS0_18basic_multi_bufferIS9_E8subrangeILb0EEESD_EEEE7consumeEm.exit, label %bb.ad

_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_NS0_18basic_multi_bufferIS9_E8subrangeILb0EEESD_EEEE7consumeEm.exit: ; preds = %bb.ad, %bb.ae, %_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_NS0_18basic_multi_bufferIS8_E8subrangeILb0EEESC_EE14const_iteratorppEv.exit.i, %bb.ac
  %i.fm = call noundef i64 @_ZN5boost4asio11buffer_sizeINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_NS2_18basic_multi_bufferISA_E8subrangeILb0EEESE_EEEEEEEmRKT_(ptr noundef nonnull align 8 dereferenceable(144) %i.ew) #32
  %.not13 = icmp eq i64 %i.fm, 0
  br i1 %.not13, label %bb.af, label %bb.bv

bb.af:                                            ; preds = %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_NS0_18basic_multi_bufferIS9_E8subrangeILb0EEESD_EEEE7consumeEm.exit
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 413
  store i8 1, ptr %i.fn, align 1, !tbaa !1569
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.fp = load i8, ptr %i.fo, align 8, !tbaa !221
  %i.fq = zext i8 %i.fp to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #32
  store ptr %i.ew, ptr %27, align 8, !tbaa !232
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm9EE4callILm0ENS_5beast6detail7variantIJNS5_14buffers_suffixINS6_11buffers_refINS5_16buffers_cat_viewIJNS_4asio12const_bufferESC_SC_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSD_10chunk_crlfEEEEEEEENS8_INSA_IJSL_NS5_18basic_multi_bufferISF_E8subrangeILb0EEEEEEEENS8_ISQ_EENS8_INSA_IJSL_NSD_6detail10chunk_sizeESC_SJ_SQ_SJ_EEEEENS8_INSA_IJSV_SC_SJ_SQ_SJ_EEEEENS8_INSA_IJSV_SC_SJ_SQ_SJ_SC_SC_SJ_EEEEENS8_INSA_IJSL_SV_SC_SJ_SQ_SJ_SC_SC_SJ_EEEEENS8_INSA_IJSC_SC_SJ_EEEEEEE7destroyEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOS18_(i64 noundef %i.fq, ptr noundef nonnull align 8 dereferenceable(8) %27)
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #32
  store i8 0, ptr %i.fo, align 8, !tbaa !221
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 414
  %i.fs = load i8, ptr %i.fr, align 2, !tbaa !401, !range !241, !noundef !64
  %i.ft = trunc nuw i8 %i.fs to i1
  %. = select i1 %i.ft, i32 81, i32 90
  br label %.sink.split

bb.ag:                                            ; preds = %bb.a
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !461, !noalias !1580
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %.not14.i34 = icmp eq i64 %1, 0
  br i1 %.not14.i34, label %_ZN5boost5beast14buffers_suffixINS0_6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEE7consumeEm.exit43, label %.lr.ph.i35

.lr.ph.i35:                                       ; preds = %bb.ag
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  br label %bb.ah

bb.ah:                                            ; preds = %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratorppEv.exit.i41, %.lr.ph.i35
  %.0915.i36 = phi i64 [ %1, %.lr.ph.i35 ], [ %i.gi, %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratorppEv.exit.i41 ] ; 3 uses
  %i.fz = load ptr, ptr %i.fx, align 8, !tbaa !452
  %i.ga = icmp eq ptr %i.fz, %i.fv
  %.pre.i37 = load i8, ptr %i.fw, align 8, !tbaa !455 ; 2 uses
  %.not.i.i.i.i38 = icmp eq i8 %.pre.i37, 6
  %or.cond.i39 = select i1 %i.ga, i1 %.not.i.i.i.i38, i1 false
  br i1 %or.cond.i39, label %_ZN5boost5beast14buffers_suffixINS0_6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEE7consumeEm.exit43, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gb = zext i8 %.pre.i37 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #32
  store ptr %i.fx, ptr %26, align 8, !tbaa !454
  %i.gc = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm7EE4callILm0ENS_5beast16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSJ_(i64 noundef %i.gb, ptr noundef nonnull align 8 dereferenceable(8) %26)
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #32
  %i.gd = extractvalue { ptr, i64 } %i.gc, 1
  %i.ge = load i64, ptr %i.fy, align 8, !tbaa !459 ; 2 uses
  %i.gf = sub i64 %i.gd, %i.ge                    ; 2 uses
  %i.gg = icmp ult i64 %.0915.i36, %i.gf          ; 2 uses
  %i.gh = add i64 %i.ge, %.0915.i36
  %storemerge.i40 = select i1 %i.gg, i64 %i.gh, i64 0
  store i64 %storemerge.i40, ptr %i.fy, align 8, !tbaa !459
  br i1 %i.gg, label %_ZN5boost5beast14buffers_suffixINS0_6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEE7consumeEm.exit43, label %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratorppEv.exit.i41

_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratorppEv.exit.i41: ; preds = %bb.ai
  %i.gi = sub nuw i64 %.0915.i36, %i.gf           ; 2 uses
  %i.gj = load i8, ptr %i.fw, align 8, !tbaa !455
  %i.gk = zext i8 %i.gj to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #32
  store ptr %i.fx, ptr %25, align 8, !tbaa !454
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm7EE4callILm0ENS_5beast16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEE14const_iterator9incrementEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSJ_(i64 noundef %i.gk, ptr noundef nonnull align 8 dereferenceable(8) %25)
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #32
  %.not.i42 = icmp eq i64 %i.gi, 0
  br i1 %.not.i42, label %_ZN5boost5beast14buffers_suffixINS0_6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEE7consumeEm.exit43, label %bb.ah

_ZN5boost5beast14buffers_suffixINS0_6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEE7consumeEm.exit43: ; preds = %bb.ah, %bb.ai, %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratorppEv.exit.i41, %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.experimental.noalias.scope.decl(metadata !1581)
  call void @llvm.experimental.noalias.scope.decl(metadata !1582)
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !452, !noalias !1583 ; 7 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 6 uses
  %i.go = load i8, ptr %i.fw, align 8, !tbaa !455, !noalias !1583 ; 2 uses
  switch i8 %i.go, label %bb.aj [
    i8 0, label %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratorC2ERKSC_.exit.thread.i.i.i.i44
    i8 1, label %bb.ak
    i8 2, label %bb.al
    i8 3, label %bb.am
    i8 4, label %bb.an
    i8 5, label %bb.ao
    i8 6, label %bb.ap
  ]

_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratorC2ERKSC_.exit.thread.i.i.i.i44: ; preds = %_ZN5boost5beast14buffers_suffixINS0_6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEE7consumeEm.exit43
  store ptr %i.gm, ptr %23, align 8, !tbaa !452, !alias.scope !1583
  br label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS1_11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEvEEmRKT_.exit45

bb.aj:                                            ; preds = %_ZN5boost5beast14buffers_suffixINS0_6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEE7consumeEm.exit43
  unreachable
end_hunk_1
