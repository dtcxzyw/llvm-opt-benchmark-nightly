inline.NumInlined: 6391
inline.NumDeleted: 1307
begin_hunk_0_@_ZN6duckdb12_GLOBAL__N_113JSONConverter12VisitDefaultENS_18VariantLogicalTypeEPKhPN13duckdb_yyjson14yyjson_mut_docE:.noexc.i
.noexc.i.i:                                       ; preds = %bb.a
  %i.n = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc12 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ; 2 uses

.noexc12:                                         ; preds = %.noexc.i.i
  store ptr %i.n, ptr %2, align 8, !tbaa !52, !alias.scope !1448
  %i.o = load i64, ptr %i.a, align 8, !tbaa !53, !noalias !1448
  store i64 %i.o, ptr %i.j, align 8, !tbaa !30, !alias.scope !1448
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc12, %bb.a
  %i.p = phi ptr [ %i.n, %.noexc12 ], [ %i.j, %bb.a ] ; 2 uses
  switch i64 %i.l, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.q = load i8, ptr %i.i, align 1, !tbaa !30
  store i8 %i.q, ptr %i.p, align 1, !tbaa !30
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr nonnull align 1 %i.i, i64 %i.l, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.r = load i64, ptr %i.a, align 8, !tbaa !53, !noalias !1448 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.r, ptr %i.s, align 8, !tbaa !27, !alias.scope !1448
  %i.t = load ptr, ptr %2, align 8, !tbaa !52, !alias.scope !1448
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !1448
  invoke void @_ZN6duckdb17InternalExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.i unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.thread: ; preds = %.noexc.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i1 [ false, %bb.e ], [ true, %bb.d ]  ; 2 uses
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.x = load ptr, ptr %2, align 8, !tbaa !52     ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.j
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.x) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.z = load ptr, ptr %1, align 8, !tbaa !52     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.d
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.noexc, %.noexc.i9, %.noexc.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.ac = load ptr, ptr %1, align 8, !tbaa !52    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.d
  br i1 %i.ad, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  call void @_ZdlPv(ptr noundef %i.ac) #25
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.z) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br i1 %.0, label %bb.g, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br i1 %.0, label %bb.g, label %bb.h

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.thread
  %.pn.pn4.ph = phi { ptr, i32 } [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.thread ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.thread ], [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %.pn.pn4 = phi { ptr, i32 } [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13 ], [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15 ], [ %.pn.pn4.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.c) #24
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %bb.g
  %.pn.pn3 = phi { ptr, i32 } [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15 ], [ %.pn.pn4, %bb.g ], [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13 ]
  resume { ptr, i32 } %.pn.pn3

bb.i:                                             ; preds = %bb.e
  unreachable
}

declare noundef zeroext i1 @_ZN13duckdb_yyjson27unsafe_yyjson_val_pool_growEPNS_15yyjson_val_poolEPKNS_10yyjson_alcEm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_ZNK6duckdb9hugeint_t8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN13duckdb_yyjson27unsafe_yyjson_str_pool_growEPNS_15yyjson_str_poolEPKNS_10yyjson_alcEm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_ZNK6duckdb10uhugeint_t8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare void @_ZN6duckdb5Value4UUIDENS_9hugeint_tE(ptr dead_on_unwind writable sret(%"class.duckdb::Value") align 8, i64, i64) local_unnamed_addr #1

declare void @_ZN6duckdb4Date8ToStringB5cxx11ENS_6date_tE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i32) local_unnamed_addr #1

declare void @_ZN6duckdb5Value8INTERVALENS_10interval_tE(ptr dead_on_unwind writable sret(%"class.duckdb::Value") align 8, i64, i64) local_unnamed_addr #1

declare void @_ZN6duckdb5Value4BLOBEPKhm(ptr dead_on_unwind writable sret(%"class.duckdb::Value") align 8, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_ZN6duckdb5Value6BIGNUMEPKhm(ptr dead_on_unwind writable sret(%"class.duckdb::Value") align 8, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_ZN6duckdb5Value8GEOMETRYEPKhm(ptr dead_on_unwind writable sret(%"class.duckdb::Value") align 8, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_ZN6duckdb5Value3BITEPKhm(ptr dead_on_unwind writable sret(%"class.duckdb::Value") align 8, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_ZN6duckdb7Decimal8ToStringB5cxx11ENS_9hugeint_tEhh(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i64, i64, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare void @_ZN6duckdb7Decimal8ToStringB5cxx11Elhh(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i64 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare void @_ZN6duckdb7Decimal8ToStringB5cxx11Eihh(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare void @_ZN6duckdb7Decimal8ToStringB5cxx11Eshh(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i16 noundef signext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN13duckdb_yyjson14yyjson_mut_valEESaISA_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1446   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1435 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN13duckdb_yyjson14yyjson_mut_valEESA_EvT_SC_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN13duckdb_yyjson14yyjson_mut_valEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.g, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN13duckdb_yyjson14yyjson_mut_valEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !52 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN13duckdb_yyjson14yyjson_mut_valEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  tail call void @_ZdlPv(ptr noundef %i.d) #25
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN13duckdb_yyjson14yyjson_mut_valEEEvPT_.exit.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN13duckdb_yyjson14yyjson_mut_valEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN13duckdb_yyjson14yyjson_mut_valEESA_EvT_SC_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !1447

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN13duckdb_yyjson14yyjson_mut_valEESA_EvT_SC_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN13duckdb_yyjson14yyjson_mut_valEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !1446
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN13duckdb_yyjson14yyjson_mut_valEESA_EvT_SC_RSaIT0_E.exit

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN13duckdb_yyjson14yyjson_mut_valEESA_EvT_SC_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN13duckdb_yyjson14yyjson_mut_valEESA_EvT_SC_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.h = phi ptr [ %.pr, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN13duckdb_yyjson14yyjson_mut_valEESA_EvT_SC_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN13duckdb_yyjson14yyjson_mut_valEESaISA_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN13duckdb_yyjson14yyjson_mut_valEESA_EvT_SC_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.h) #25
  br label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN13duckdb_yyjson14yyjson_mut_valEESaISA_EED2Ev.exit

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN13duckdb_yyjson14yyjson_mut_valEESaISA_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN13duckdb_yyjson14yyjson_mut_valEESA_EvT_SC_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN13duckdb_yyjson14yyjson_mut_valEESaISA_EE17_M_realloc_insertIJS6_S9_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1435 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1446   ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN13duckdb_yyjson14yyjson_mut_valEESaISA_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #26
  unreachable

_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN13duckdb_yyjson14yyjson_mut_valEESaISA_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 40                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 230584300921369395)
  %i.l = select i1 %i.j, i64 230584300921369395, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %4 = mul nuw nsw i64 %i.l, 40
  %5 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #27 ; 5 uses
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 %i.n ; 5 uses
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %7, ptr %6, align 8, !tbaa !24
  %8 = load ptr, ptr %2, align 8, !tbaa !52       ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %.not.i.a = icmp eq ptr %8, %9
  br i1 %.not.i.a, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN13duckdb_yyjson14yyjson_mut_valEESaISA_EE12_M_check_lenEmPKc.exit
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !27   ; 3 uses
  %i.q = icmp ult i64 %i.p, 16
  tail call void @llvm.assume(i1 %i.q)
  %i.r = add nuw nsw i64 %i.p, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(1) %9, i64 %i.r, i1 false)
  br label %bb.d

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN13duckdb_yyjson14yyjson_mut_valEESaISA_EE12_M_check_lenEmPKc.exit
  store ptr %8, ptr %6, align 8, !tbaa !52
  %i.s = load i64, ptr %9, align 8, !tbaa !30
  store i64 %i.s, ptr %7, align 8, !tbaa !30
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !27
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.t = phi i64 [ %i.p, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.t, ptr %i.v, align 8, !tbaa !27
  store ptr %9, ptr %2, align 8, !tbaa !52
  store i64 0, ptr %i.u, align 8, !tbaa !27
  store i8 0, ptr %9, align 8, !tbaa !30
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.x = load ptr, ptr %3, align 8, !tbaa !1422
  store ptr %i.x, ptr %i.w, align 8, !tbaa !1439
  %.not10.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN13duckdb_yyjson14yyjson_mut_valEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN13duckdb_yyjson14yyjson_mut_valEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ao, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN13duckdb_yyjson14yyjson_mut_valEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %5, %bb.d ] ; 6 uses
  %.0911.i.i.i.i = phi ptr [ %i.an, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN13duckdb_yyjson14yyjson_mut_valEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.c, %bb.d ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1451)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1454)
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.y, ptr %.012.i.i.i.i, align 8, !tbaa !24, !alias.scope !1451, !noalias !1454
  %i.z = load ptr, ptr %.0911.i.i.i.i, align 8, !tbaa !52, !alias.scope !1454, !noalias !1451 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 5 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !27, !alias.scope !1454, !noalias !1451 ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 16
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = add nuw nsw i64 %i.ad, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.y, ptr noundef nonnull align 8 dereferenceable(1) %i.aa, i64 %i.af, i1 false), !alias.scope !1456
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN13duckdb_yyjson14yyjson_mut_valEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.z, ptr %.012.i.i.i.i, align 8, !tbaa !52, !alias.scope !1451, !noalias !1454
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !30, !alias.scope !1454, !noalias !1451
  store i64 %i.ag, ptr %i.y, align 8, !tbaa !30, !alias.scope !1451, !noalias !1454
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !27, !alias.scope !1454, !noalias !1451
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN13duckdb_yyjson14yyjson_mut_valEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN13duckdb_yyjson14yyjson_mut_valEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.e
  %i.ah = phi i64 [ %i.ad, %bb.e ], [ %.pre.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  store i64 %i.ah, ptr %i.aj, align 8, !tbaa !27, !alias.scope !1451, !noalias !1454
  store ptr %i.aa, ptr %.0911.i.i.i.i, align 8, !tbaa !52, !alias.scope !1454, !noalias !1451
  store i64 0, ptr %i.ai, align 8, !tbaa !27, !alias.scope !1454, !noalias !1451
  store i8 0, ptr %i.aa, align 8, !tbaa !30, !alias.scope !1454, !noalias !1451
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1439, !alias.scope !1454, !noalias !1451
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !1439, !alias.scope !1451, !noalias !1454
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.an, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN13duckdb_yyjson14yyjson_mut_valEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1457

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN13duckdb_yyjson14yyjson_mut_valEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit: ; preds = %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN13duckdb_yyjson14yyjson_mut_valEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i.i, %bb.d
  %.0.lcssa.i.i.i.i = phi ptr [ %5, %bb.d ], [ %i.ao, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN13duckdb_yyjson14yyjson_mut_valEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 40 ; 2 uses
  %.not10.i.i.i.i27 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i.i27, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN13duckdb_yyjson14yyjson_mut_valEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit37, label %.lr.ph.i.i.i.i28

.lr.ph.i.i.i.i28:                                 ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN13duckdb_yyjson14yyjson_mut_valEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN13duckdb_yyjson14yyjson_mut_valEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i.i34
  %.012.i.i.i.i29 = phi ptr [ %i.bg, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN13duckdb_yyjson14yyjson_mut_valEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i.i34 ], [ %i.ap, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN13duckdb_yyjson14yyjson_mut_valEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit ] ; 6 uses
  %.0911.i.i.i.i30 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN13duckdb_yyjson14yyjson_mut_valEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i.i34 ], [ %1, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN13duckdb_yyjson14yyjson_mut_valEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1458)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1461)
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i29, i64 16 ; 3 uses
  store ptr %i.aq, ptr %.012.i.i.i.i29, align 8, !tbaa !24, !alias.scope !1458, !noalias !1461
  %i.ar = load ptr, ptr %.0911.i.i.i.i30, align 8, !tbaa !52, !alias.scope !1461, !noalias !1458 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i30, i64 16 ; 5 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i31

bb.f:                                             ; preds = %.lr.ph.i.i.i.i28
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i30, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !27, !alias.scope !1461, !noalias !1458 ; 3 uses
  %i.aw = icmp ult i64 %i.av, 16
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = add nuw nsw i64 %i.av, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aq, ptr noundef nonnull align 8 dereferenceable(1) %i.as, i64 %i.ax, i1 false), !alias.scope !1463
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN13duckdb_yyjson14yyjson_mut_valEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i31: ; preds = %.lr.ph.i.i.i.i28
  store ptr %i.ar, ptr %.012.i.i.i.i29, align 8, !tbaa !52, !alias.scope !1458, !noalias !1461
  %i.ay = load i64, ptr %i.as, align 8, !tbaa !30, !alias.scope !1461, !noalias !1458
  store i64 %i.ay, ptr %i.aq, align 8, !tbaa !30, !alias.scope !1458, !noalias !1461
  %.phi.trans.insert.i.i.i.i.i32 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i30, i64 8
  %.pre.i.i.i.i.i33 = load i64, ptr %.phi.trans.insert.i.i.i.i.i32, align 8, !tbaa !27, !alias.scope !1461, !noalias !1458
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN13duckdb_yyjson14yyjson_mut_valEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i.i34

_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN13duckdb_yyjson14yyjson_mut_valEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i.i34: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i31, %bb.f
  %i.az = phi i64 [ %i.av, %bb.f ], [ %.pre.i.i.i.i.i33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i31 ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i30, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i29, i64 8
  store i64 %i.az, ptr %i.bb, align 8, !tbaa !27, !alias.scope !1458, !noalias !1461
  store ptr %i.as, ptr %.0911.i.i.i.i30, align 8, !tbaa !52, !alias.scope !1461, !noalias !1458
  store i64 0, ptr %i.ba, align 8, !tbaa !27, !alias.scope !1461, !noalias !1458
  store i8 0, ptr %i.as, align 8, !tbaa !30, !alias.scope !1461, !noalias !1458
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i29, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i30, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !1439, !alias.scope !1461, !noalias !1458
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !1439, !alias.scope !1458, !noalias !1461
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i30, i64 40 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i29, i64 40 ; 2 uses
  %.not.i.i.i.i35 = icmp eq ptr %i.bf, %i.b
  br i1 %.not.i.i.i.i35, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN13duckdb_yyjson14yyjson_mut_valEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit37, label %.lr.ph.i.i.i.i28, !llvm.loop !1457

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN13duckdb_yyjson14yyjson_mut_valEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit37: ; preds = %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN13duckdb_yyjson14yyjson_mut_valEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i.i34, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN13duckdb_yyjson14yyjson_mut_valEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit
  %.0.lcssa.i.i.i.i36 = phi ptr [ %i.ap, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN13duckdb_yyjson14yyjson_mut_valEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit ], [ %i.bg, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN13duckdb_yyjson14yyjson_mut_valEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i.i34 ]
  %.not.i38 = icmp eq ptr %i.c, null
  br i1 %.not.i38, label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN13duckdb_yyjson14yyjson_mut_valEESaISA_EE13_M_deallocateEPSA_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN13duckdb_yyjson14yyjson_mut_valEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit37
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #25
  br label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN13duckdb_yyjson14yyjson_mut_valEESaISA_EE13_M_deallocateEPSA_m.exit

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN13duckdb_yyjson14yyjson_mut_valEESaISA_EE13_M_deallocateEPSA_m.exit: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN13duckdb_yyjson14yyjson_mut_valEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit37, %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %5, ptr %0, align 8, !tbaa !1446
  store ptr %.0.lcssa.i.i.i.i36, ptr %i.a, align 8, !tbaa !1435
  %i.bi = getelementptr inbounds nuw [40 x i8], ptr %5, i64 %i.l
  store ptr %i.bi, ptr %i.bh, align 8, !tbaa !1438
  ret void
}

declare void @_ZN6duckdb4Time8ToStringB5cxx11ENS_7dtime_tE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i64) local_unnamed_addr #1

declare void @_ZN6duckdb5Value7TIME_NSENS_10dtime_ns_tE(ptr dead_on_unwind writable sret(%"class.duckdb::Value") align 8, i64) local_unnamed_addr #1

declare void @_ZN6duckdb5Value6TIMETZENS_10dtime_tz_tE(ptr dead_on_unwind writable sret(%"class.duckdb::Value") align 8, i64) local_unnamed_addr #1

declare void @_ZN6duckdb5Value12TIMESTAMPSECENS_15timestamp_sec_tE(ptr dead_on_unwind writable sret(%"class.duckdb::Value") align 8, i64) local_unnamed_addr #1

declare void @_ZN6duckdb5Value11TIMESTAMPMSENS_14timestamp_ms_tE(ptr dead_on_unwind writable sret(%"class.duckdb::Value") align 8, i64) local_unnamed_addr #1

declare void @_ZN6duckdb9Timestamp8ToStringB5cxx11ENS_11timestamp_tE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i64) local_unnamed_addr #1

declare void @_ZN6duckdb5Value11TIMESTAMPNSENS_14timestamp_ns_tE(ptr dead_on_unwind writable sret(%"class.duckdb::Value") align 8, i64) local_unnamed_addr #1

declare void @_ZN6duckdb5Value11TIMESTAMPTZENS_14timestamp_tz_tE(ptr dead_on_unwind writable sret(%"class.duckdb::Value") align 8, i64) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #19

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold noreturn }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind memory(none) }
attributes #15 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nounwind }
attributes #25 = { builtin nounwind }
attributes #26 = { noreturn }
attributes #27 = { builtin allocsize(0) }
attributes #28 = { noreturn nounwind }
attributes #29 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSN6duckdb11LogicalTypeE", !9, i64 0, !10, i64 1, !11, i64 8}
!9 = !{!"_ZTSN6duckdb13LogicalTypeIdE", !5, i64 0}
!10 = !{!"_ZTSN6duckdb12PhysicalTypeE", !5, i64 0}
!11 = !{!"_ZTSN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEE", !12, i64 0}
!12 = !{!"_ZTSSt10shared_ptrIN6duckdb13ExtraTypeInfoEE", !13, i64 0}
!13 = !{!"_ZTSSt12__shared_ptrIN6duckdb13ExtraTypeInfoELN9__gnu_cxx12_Lock_policyE2EE", !14, i64 0, !16, i64 8}
!14 = !{!"p1 _ZTSN6duckdb13ExtraTypeInfoE", !15, i64 0}
!15 = !{!"any pointer", !5, i64 0}
!16 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !17, i64 0}
!17 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !15, i64 0}
!18 = !{!19, !20, i64 0}
!19 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb13BoundCastDataELb0EE", !20, i64 0}
!20 = !{!"p1 _ZTSN6duckdb13BoundCastDataE", !15, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"vtable pointer", !6, i64 0}
!24 = !{!25, !26, i64 0}
!25 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !26, i64 0}
!26 = !{!"p1 omnipotent char", !15, i64 0}
!27 = !{!28, !29, i64 8}
!28 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !25, i64 0, !29, i64 8, !5, i64 16}
!29 = !{!"long", !5, i64 0}
!30 = !{!5, !5, i64 0}
!31 = !{!32, !33, i64 0}
!32 = !{!"_ZTSN6duckdb15SelectionVectorE", !33, i64 0, !34, i64 8}
!33 = !{!"p1 int", !15, i64 0}
!34 = !{!"_ZTSN6duckdb10shared_ptrINS_13SelectionDataELb1EEE", !35, i64 0}
!35 = !{!"_ZTSSt10shared_ptrIN6duckdb13SelectionDataEE", !36, i64 0}
!36 = !{!"_ZTSSt12__shared_ptrIN6duckdb13SelectionDataELN9__gnu_cxx12_Lock_policyE2EE", !37, i64 0, !16, i64 8}
!37 = !{!"p1 _ZTSN6duckdb13SelectionDataE", !15, i64 0}
!38 = !{!39, !40, i64 0}
!39 = !{!"_ZTSN6duckdb6VectorE", !40, i64 0, !8, i64 8, !26, i64 32, !41, i64 40, !48, i64 72, !48, i64 88}
!40 = !{!"_ZTSN6duckdb10VectorTypeE", !5, i64 0}
!41 = !{!"_ZTSN6duckdb12ValidityMaskE", !42, i64 0}
!42 = !{!"_ZTSN6duckdb21TemplatedValidityMaskImEE", !43, i64 0, !44, i64 8, !29, i64 24}
!43 = !{!"p1 long", !15, i64 0}
!44 = !{!"_ZTSN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEE", !45, i64 0}
!45 = !{!"_ZTSSt10shared_ptrIN6duckdb21TemplatedValidityDataImEEE", !46, i64 0}
!46 = !{!"_ZTSSt12__shared_ptrIN6duckdb21TemplatedValidityDataImEELN9__gnu_cxx12_Lock_policyE2EE", !47, i64 0, !16, i64 8}
!47 = !{!"p1 _ZTSN6duckdb21TemplatedValidityDataImEE", !15, i64 0}
!48 = !{!"_ZTSN6duckdb10shared_ptrINS_12VectorBufferELb1EEE", !49, i64 0}
!49 = !{!"_ZTSSt10shared_ptrIN6duckdb12VectorBufferEE", !50, i64 0}
!50 = !{!"_ZTSSt12__shared_ptrIN6duckdb12VectorBufferELN9__gnu_cxx12_Lock_policyE2EE", !51, i64 0, !16, i64 8}
!51 = !{!"p1 _ZTSN6duckdb12VectorBufferE", !15, i64 0}
!52 = !{!28, !26, i64 0}
!53 = !{!29, !29, i64 0}
!54 = !{!55, !57}
!55 = distinct !{!55, !56, !"_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES7_RKS7_DpRKT_: argument 0"}
!56 = distinct !{!56, !"_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES7_RKS7_DpRKT_"}
!57 = distinct !{!57, !58, !"_ZN6duckdb10StringUtil6FormatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES7_S7_DpT_: argument 0"}
!58 = distinct !{!58, !"_ZN6duckdb10StringUtil6FormatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES7_S7_DpT_"}
!59 = !{!60, !61, i64 0}
!60 = !{!"_ZTSNSt12_Vector_baseIN6duckdb20ExceptionFormatValueESaIS1_EE17_Vector_impl_dataE", !61, i64 0, !61, i64 8, !61, i64 16}
!61 = !{!"p1 _ZTSN6duckdb20ExceptionFormatValueE", !15, i64 0}
!62 = !{!60, !61, i64 8}
!63 = distinct !{!63, !64}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!66, !69, i64 16}
!66 = !{!"_ZTSN6duckdb14CastParametersE", !67, i64 0, !68, i64 8, !69, i64 16, !70, i64 24, !70, i64 32, !72, i64 40, !74, i64 48, !68, i64 56}
!67 = !{!"_ZTSN6duckdb12optional_ptrINS_13BoundCastDataELb1EEE", !20, i64 0}
!68 = !{!"bool", !5, i64 0}
!69 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0}
!70 = !{!"_ZTSN6duckdb12optional_ptrIKNS_10ExpressionELb1EEE", !71, i64 0}
!71 = !{!"p1 _ZTSN6duckdb10ExpressionE", !15, i64 0}
!72 = !{!"_ZTSN6duckdb12optional_ptrINS_18FunctionLocalStateELb1EEE", !73, i64 0}
!73 = !{!"p1 _ZTSN6duckdb18FunctionLocalStateE", !15, i64 0}
!74 = !{!"_ZTSN6duckdb12optional_idxE", !29, i64 0}
!75 = !{!16, !17, i64 0}
!76 = !{!77, !4, i64 8}
!77 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!78 = !{!77, !4, i64 12}
!79 = distinct !{ptr @_ZN6duckdb15SelectionVectorD2Ev, ptr @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev, null, null, null}
!80 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!81 = !{!39, !26, i64 32}
!82 = distinct !{!82, !64, !83, !84}
!83 = !{!"llvm.loop.isvectorized", i32 1}
!84 = !{!"llvm.loop.unroll.runtime.disable"}
!85 = distinct !{!85, !64, !83}
!86 = distinct !{null, null}
!87 = !{!88, !89, i64 0}
!88 = !{!"_ZTSNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EE17_Vector_impl_dataE", !89, i64 0, !89, i64 8, !89, i64 16}
!89 = !{!"p1 _ZTSN6duckdb11LogicalTypeE", !15, i64 0}
!90 = !{!88, !89, i64 16}
!91 = !{!88, !89, i64 8}
!92 = distinct !{!92, !64}
!93 = !{!94, !29, i64 24}
!94 = !{!"_ZTSN6duckdb9DataChunkE", !95, i64 0, !29, i64 24, !29, i64 32, !29, i64 40, !101, i64 48}
!95 = !{!"_ZTSN6duckdb6vectorINS_6VectorELb1ESaIS1_EEE", !96, i64 0}
!96 = !{!"_ZTSSt6vectorIN6duckdb6VectorESaIS1_EE", !97, i64 0}
!97 = !{!"_ZTSSt12_Vector_baseIN6duckdb6VectorESaIS1_EE", !98, i64 0}
!98 = !{!"_ZTSNSt12_Vector_baseIN6duckdb6VectorESaIS1_EE12_Vector_implE", !99, i64 0}
!99 = !{!"_ZTSNSt12_Vector_baseIN6duckdb6VectorESaIS1_EE17_Vector_impl_dataE", !100, i64 0, !100, i64 8, !100, i64 16}
!100 = !{!"p1 _ZTSN6duckdb6VectorE", !15, i64 0}
!101 = !{!"_ZTSN6duckdb6vectorINS_11VectorCacheELb1ESaIS1_EEE", !102, i64 0}
!102 = !{!"_ZTSSt6vectorIN6duckdb11VectorCacheESaIS1_EE", !103, i64 0}
!103 = !{!"_ZTSSt12_Vector_baseIN6duckdb11VectorCacheESaIS1_EE", !104, i64 0}
!104 = !{!"_ZTSNSt12_Vector_baseIN6duckdb11VectorCacheESaIS1_EE12_Vector_implE", !105, i64 0}
!105 = !{!"_ZTSNSt12_Vector_baseIN6duckdb11VectorCacheESaIS1_EE17_Vector_impl_dataE", !106, i64 0, !106, i64 8, !106, i64 16}
!106 = !{!"p1 _ZTSN6duckdb11VectorCacheE", !15, i64 0}
!107 = !{!108, !108, i64 0}
!108 = !{!"p1 _ZTSN6duckdb9AllocatorE", !15, i64 0}
!109 = !{!110, !112, i64 0}
!110 = !{!"_ZTSSt15_Rb_tree_header", !111, i64 0, !29, i64 32}
!111 = !{!"_ZTSSt18_Rb_tree_node_base", !112, i64 0, !113, i64 8, !113, i64 16, !113, i64 24}
!112 = !{!"_ZTSSt14_Rb_tree_color", !5, i64 0}
!113 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !15, i64 0}
!114 = !{!110, !113, i64 8}
!115 = !{!110, !113, i64 16}
!116 = !{!110, !113, i64 24}
!117 = !{!110, !29, i64 32}
!118 = !{!119, !125, i64 56}
!119 = !{!"_ZTSN6duckdb15OwningStringMapIjSt3mapINS_8string_tEjSt4lessIS2_ESaISt4pairIKS2_jEEEEE", !108, i64 0, !120, i64 8, !125, i64 56}
!120 = !{!"_ZTSSt3mapIN6duckdb8string_tEjSt4lessIS1_ESaISt4pairIKS1_jEEE", !121, i64 0}
end_hunk_0
