Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/JSONSchema?download=true
inline.NumInlined: 10040
inline.NumDeleted: 4349
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN5folly10jsonschema12_GLOBAL__N_114AnyOfValidatorC2ERNS1_22SchemaValidatorContextERKNS_7dynamicENS2_4TypeE:bb.a
  tail call fastcc void @_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #23
  resume { ptr, i32 } %.pn

.loopexit:                                        ; preds = %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5folly10jsonschema12_GLOBAL__N_114AnyOfValidatorD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(40) dereferenceable(40) %0) unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7187 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !7183 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %.0.val.i.i.i = load ptr, ptr %.05.i.i.i, align 8, !tbaa !451 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.0.val.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.e = load ptr, ptr %.0.val.i.i.i, align 8, !tbaa !421
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %.0.val.i.i.i) #23, !call_target !7221, !inline_history !349
  br label %_ZSt8_DestroyISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !348

_ZSt8_DestroyIPSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EEEvPT_.exit.i.i.i
  %.val.pr.i = load ptr, ptr %i.a, align 8, !tbaa !7187
  br label %_ZSt8_DestroyIPSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %.val.i = phi ptr [ %.val.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i2.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i2.i, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i = load ptr, ptr %i.i, align 8, !tbaa !7184
  %i.j = ptrtoint ptr %.val1.i to i64
  %i.k = ptrtoint ptr %.val.i to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i, i64 noundef %i.l) #49
  br label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5folly10jsonschema12_GLOBAL__N_114AnyOfValidatorD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7187 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !7183 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %.0.val.i.i.i.i = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !451 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.0.val.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.e = load ptr, ptr %.0.val.i.i.i.i, align 8, !tbaa !421
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %.0.val.i.i.i.i) #23, !call_target !7221, !inline_history !11816
  br label %_ZSt8_DestroyISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !348

_ZSt8_DestroyIPSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i
  %.val.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !7187
  br label %_ZSt8_DestroyIPSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %.val.i.i = phi ptr [ %.val.pr.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i2.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i2.i.i, label %_ZN5folly10jsonschema12_GLOBAL__N_114AnyOfValidatorD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i.i = load ptr, ptr %i.i, align 8, !tbaa !7184
  %i.j = ptrtoint ptr %.val1.i.i to i64
  %i.k = ptrtoint ptr %.val.i.i to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i.i, i64 noundef %i.l) #49
  br label %_ZN5folly10jsonschema12_GLOBAL__N_114AnyOfValidatorD2Ev.exit

_ZN5folly10jsonschema12_GLOBAL__N_114AnyOfValidatorD2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #49
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK5folly10jsonschema12_GLOBAL__N_114AnyOfValidator8validateERNS1_17ValidationContextERKNS_7dynamicE(ptr dead_on_unwind noalias writable sret(%"class.folly::Optional") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(40) %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.folly::jsonschema::(anonymous namespace)::SchemaError", align 8 ; 5 uses
  %5 = alloca %"struct.folly::jsonschema::(anonymous namespace)::SchemaError", align 8 ; 5 uses
  %6 = alloca %"class.std::vector.893", align 8   ; 12 uses
  %7 = alloca %"class.folly::Optional", align 8   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !9108 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.val16 = load ptr, ptr %i.b, align 8, !tbaa !9108 ; 2 uses
  %i.c = icmp eq ptr %.val, %.val16
  br i1 %i.c, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %_ZN5folly8OptionalINS_10jsonschema12_GLOBAL__N_111SchemaErrorEED2Ev.exit29
  %.val22.pre = load ptr, ptr %i.a, align 8, !tbaa !7187
  %.val23.pre = load ptr, ptr %i.b, align 8, !tbaa !7183
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.val25 = phi ptr [ null, %bb.a ], [ %i.aq, %._crit_edge.loopexit ] ; 3 uses
  %.val23 = phi ptr [ %.val, %bb.a ], [ %.val23.pre, %._crit_edge.loopexit ]
  %.val22 = phi ptr [ %.val, %bb.a ], [ %.val22.pre, %._crit_edge.loopexit ]
  %.lcssa36 = phi ptr [ null, %bb.a ], [ %i.ar, %._crit_edge.loopexit ] ; 6 uses
  store ptr %.lcssa36, ptr %6, align 8
  %i.g = ptrtoint ptr %.val23 to i64
  %i.h = ptrtoint ptr %.val22 to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3                   ; 2 uses
  %i.k = ptrtoint ptr %.val25 to i64
  %i.l = ptrtoint ptr %.lcssa36 to i64            ; 2 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 4                   ; 2 uses
  %i.o = icmp eq i64 %i.j, %i.n
  br i1 %i.o, label %bb.l, label %bb.n

bb.b:                                             ; preds = %.lr.ph, %_ZN5folly8OptionalINS_10jsonschema12_GLOBAL__N_111SchemaErrorEED2Ev.exit29
  %i.p = phi ptr [ null, %.lr.ph ], [ %i.aq, %_ZN5folly8OptionalINS_10jsonschema12_GLOBAL__N_111SchemaErrorEED2Ev.exit29 ] ; 8 uses
  %.sroa.033.040 = phi ptr [ %.val, %.lr.ph ], [ %i.au, %_ZN5folly8OptionalINS_10jsonschema12_GLOBAL__N_111SchemaErrorEED2Ev.exit29 ] ; 2 uses
  %i.q = phi ptr [ null, %.lr.ph ], [ %i.ar, %_ZN5folly8OptionalINS_10jsonschema12_GLOBAL__N_111SchemaErrorEED2Ev.exit29 ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %.val20 = load ptr, ptr %.sroa.033.040, align 8, !tbaa !451
  invoke fastcc void @_ZN5folly10jsonschema12_GLOBAL__N_117ValidationContext8validateEPNS1_10IValidatorERKNS_7dynamicE(ptr dead_on_unwind noalias nonnull writable align 8 %7, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef %.val20, ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %.val21 = load i8, ptr %i.d, align 8, !tbaa !9111, !range !614, !noundef !515
  %i.r = trunc nuw i8 %.val21 to i1
  br i1 %i.r, label %_ZNR5folly8OptionalINS_10jsonschema12_GLOBAL__N_111SchemaErrorEEdeEv.exit, label %_ZNSt6vectorIN5folly10jsonschema12_GLOBAL__N_111SchemaErrorESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit

_ZNR5folly8OptionalINS_10jsonschema12_GLOBAL__N_111SchemaErrorEEdeEv.exit: ; preds = %bb.c
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !9633
  %.not.i = icmp eq ptr %i.p, %i.s
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNR5folly8OptionalINS_10jsonschema12_GLOBAL__N_111SchemaErrorEEdeEv.exit
  call void @_ZNSt13runtime_errorC2ERKS_(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %7) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly10jsonschema12_GLOBAL__N_111SchemaErrorE, i64 16), ptr %i.p, align 8, !tbaa !421
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  store ptr %i.t, ptr %i.e, align 8, !tbaa !9634
  br label %_ZNSt6vectorIN5folly10jsonschema12_GLOBAL__N_111SchemaErrorESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit

bb.e:                                             ; preds = %_ZNR5folly8OptionalINS_10jsonschema12_GLOBAL__N_111SchemaErrorEEdeEv.exit
  %i.u = ptrtoint ptr %i.p to i64
  %i.v = ptrtoint ptr %i.q to i64
  %i.w = sub i64 %i.u, %i.v                       ; 4 uses
  %i.x = icmp eq i64 %i.w, 9223372036854775792
  br i1 %i.x, label %bb.f, label %_ZNKSt6vectorIN5folly10jsonschema12_GLOBAL__N_111SchemaErrorESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  store ptr %i.q, ptr %6, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #46
          to label %.noexc27 unwind label %.loopexit.split-lp

.noexc27:                                         ; preds = %bb.f
  unreachable

_ZNKSt6vectorIN5folly10jsonschema12_GLOBAL__N_111SchemaErrorESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.y = ashr exact i64 %i.w, 4                   ; 3 uses
  %i.z = icmp eq ptr %i.p, %i.q                   ; 2 uses
  %.sroa.speculated.i.i.i = select i1 %i.z, i64 1, i64 %i.y
  %i.aa = add nsw i64 %.sroa.speculated.i.i.i, %i.y ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %i.y
  %i.ac = call i64 @llvm.umin.i64(i64 %i.aa, i64 576460752303423487)
  %i.ad = select i1 %i.ab, i64 576460752303423487, i64 %i.ac ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ad, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ae = shl nuw nsw i64 %i.ad, 4
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #48
          to label %.noexc28 unwind label %.loopexit ; 5 uses

.noexc28:                                         ; preds = %_ZNKSt6vectorIN5folly10jsonschema12_GLOBAL__N_111SchemaErrorESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.w ; 2 uses
  call void @_ZNSt13runtime_errorC2ERKS_(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %7) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly10jsonschema12_GLOBAL__N_111SchemaErrorE, i64 16), ptr %i.ag, align 8, !tbaa !421
  br i1 %i.z, label %_ZNSt6vectorIN5folly10jsonschema12_GLOBAL__N_111SchemaErrorESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc28, %.lr.ph.i.i.i.i.i
  %.03.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %i.af, %.noexc28 ] ; 3 uses
  %.092.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %i.q, %.noexc28 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11827)
  call void @llvm.experimental.noalias.scope.decl(metadata !11828)
  call void @_ZNSt13runtime_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(16) %.03.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.092.i.i.i.i.i) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly10jsonschema12_GLOBAL__N_111SchemaErrorE, i64 16), ptr %.03.i.i.i.i.i, align 8, !tbaa !421, !alias.scope !11827, !noalias !11828
  %i.ah = load ptr, ptr %.092.i.i.i.i.i, align 8, !tbaa !421, !alias.scope !11828, !noalias !11827
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.092.i.i.i.i.i) #23, !call_target !9120, !inline_history !11820
  %i.aj = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aj, %i.p
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN5folly10jsonschema12_GLOBAL__N_111SchemaErrorESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !11821

_ZNSt6vectorIN5folly10jsonschema12_GLOBAL__N_111SchemaErrorESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc28
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.af, %.noexc28 ], [ %i.ak, %.lr.ph.i.i.i.i.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i27.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i27.i.i, label %_ZNSt6vectorIN5folly10jsonschema12_GLOBAL__N_111SchemaErrorESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN5folly10jsonschema12_GLOBAL__N_111SchemaErrorESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.w) #49
  br label %_ZNSt6vectorIN5folly10jsonschema12_GLOBAL__N_111SchemaErrorESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN5folly10jsonschema12_GLOBAL__N_111SchemaErrorESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIN5folly10jsonschema12_GLOBAL__N_111SchemaErrorESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26.i.i
  store ptr %i.al, ptr %i.e, align 8, !tbaa !9634
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.ad
  store ptr %i.am, ptr %i.f, align 8, !tbaa !9633
  br label %_ZNSt6vectorIN5folly10jsonschema12_GLOBAL__N_111SchemaErrorESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit

bb.h:                                             ; preds = %bb.b
  %i.an = landingpad { ptr, i32 }
          cleanup
  store ptr %i.q, ptr %6, align 8
  br label %_ZN5folly8OptionalINS_10jsonschema12_GLOBAL__N_111SchemaErrorEED2Ev.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorIN5folly10jsonschema12_GLOBAL__N_111SchemaErrorESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.q, ptr %6, align 8
  br label %bb.i

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.ao = load i8, ptr %i.d, align 8, !tbaa !9112, !range !614, !noundef !515
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.j, label %_ZN5folly8OptionalINS_10jsonschema12_GLOBAL__N_111SchemaErrorEED2Ev.exit

bb.j:                                             ; preds = %bb.i
  store i8 0, ptr %i.d, align 8, !tbaa !9112
  call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(24) %7) #23
  br label %_ZN5folly8OptionalINS_10jsonschema12_GLOBAL__N_111SchemaErrorEED2Ev.exit

_ZNSt6vectorIN5folly10jsonschema12_GLOBAL__N_111SchemaErrorESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit: ; preds = %_ZNSt6vectorIN5folly10jsonschema12_GLOBAL__N_111SchemaErrorESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.d, %bb.c
  %i.aq = phi ptr [ %i.al, %_ZNSt6vectorIN5folly10jsonschema12_GLOBAL__N_111SchemaErrorESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.t, %bb.d ], [ %i.p, %bb.c ] ; 2 uses
  %i.ar = phi ptr [ %i.af, %_ZNSt6vectorIN5folly10jsonschema12_GLOBAL__N_111SchemaErrorESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.q, %bb.d ], [ %i.q, %bb.c ] ; 2 uses
  %i.as = load i8, ptr %i.d, align 8, !tbaa !9112, !range !614, !noundef !515
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.k, label %_ZN5folly8OptionalINS_10jsonschema12_GLOBAL__N_111SchemaErrorEED2Ev.exit29

bb.k:                                             ; preds = %_ZNSt6vectorIN5folly10jsonschema12_GLOBAL__N_111SchemaErrorESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit
  store i8 0, ptr %i.d, align 8, !tbaa !9112
  call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(24) %7) #23
  br label %_ZN5folly8OptionalINS_10jsonschema12_GLOBAL__N_111SchemaErrorEED2Ev.exit29

_ZN5folly8OptionalINS_10jsonschema12_GLOBAL__N_111SchemaErrorEED2Ev.exit29: ; preds = %_ZNSt6vectorIN5folly10jsonschema12_GLOBAL__N_111SchemaErrorESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.033.040, i64 8 ; 2 uses
  %i.av = icmp eq ptr %i.au, %.val16
  br i1 %i.av, label %._crit_edge.loopexit, label %bb.b

_ZN5folly8OptionalINS_10jsonschema12_GLOBAL__N_111SchemaErrorEED2Ev.exit: ; preds = %bb.j, %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.an, %bb.h ], [ %lpad.phi, %bb.i ], [ %lpad.phi, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.t

bb.l:                                             ; preds = %._crit_edge
  call void @llvm.experimental.noalias.scope.decl(metadata !11829)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !11829
  invoke fastcc void @_ZN5folly10jsonschema12_GLOBAL__N_111SchemaErrorC2ENS_5RangeIPKcEERKNS_7dynamicE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr nonnull @.str.351, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.351, i64 25), ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %_ZN5folly10jsonschema12_GLOBAL__N_19makeErrorIJRA26_KcRKNS_7dynamicEEEENS_8OptionalINS1_11SchemaErrorEEEDpOT_.exit unwind label %bb.m

_ZN5folly10jsonschema12_GLOBAL__N_19makeErrorIJRA26_KcRKNS_7dynamicEEEENS_8OptionalINS1_11SchemaErrorEEEDpOT_.exit: ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i8 0, ptr %i.aw, align 8, !tbaa !9112, !alias.scope !11829
  call void @_ZNSt13runtime_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %5) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly10jsonschema12_GLOBAL__N_111SchemaErrorE, i64 16), ptr %0, align 8, !tbaa !421, !alias.scope !11829
  store i8 1, ptr %i.aw, align 8, !tbaa !9111, !alias.scope !11829
  call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !11829
  br label %bb.r

bb.m:                                             ; preds = %bb.p, %bb.l
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.n:                                             ; preds = %._crit_edge
  %i.ay = sub nsw i64 %i.j, %i.n
  %i.az = icmp ugt i64 %i.ay, 1
  br i1 %i.az, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !9631
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !11830)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !11830
  invoke fastcc void @_ZN5folly10jsonschema12_GLOBAL__N_111SchemaErrorC2ENS_5RangeIPKcEERKNS_7dynamicE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nonnull @.str.352, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.352, i64 24), ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %_ZN5folly10jsonschema12_GLOBAL__N_19makeErrorIJRA25_KcRKNS_7dynamicEEEENS_8OptionalINS1_11SchemaErrorEEEDpOT_.exit unwind label %bb.m

_ZN5folly10jsonschema12_GLOBAL__N_19makeErrorIJRA25_KcRKNS_7dynamicEEEENS_8OptionalINS1_11SchemaErrorEEEDpOT_.exit: ; preds = %bb.p
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i8 0, ptr %i.bd, align 8, !tbaa !9112, !alias.scope !11830
  call void @_ZNSt13runtime_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %4) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly10jsonschema12_GLOBAL__N_111SchemaErrorE, i64 16), ptr %0, align 8, !tbaa !421, !alias.scope !11830
  store i8 1, ptr %i.bd, align 8, !tbaa !9111, !alias.scope !11830
  call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !11830
  br label %bb.r

bb.q:                                             ; preds = %bb.n, %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.be, align 8, !tbaa !9112
  br label %bb.r

bb.r:                                             ; preds = %_ZN5folly10jsonschema12_GLOBAL__N_19makeErrorIJRA25_KcRKNS_7dynamicEEEENS_8OptionalINS1_11SchemaErrorEEEDpOT_.exit, %_ZN5folly10jsonschema12_GLOBAL__N_19makeErrorIJRA26_KcRKNS_7dynamicEEEENS_8OptionalINS1_11SchemaErrorEEEDpOT_.exit, %bb.q
  %.not4.i.i.i = icmp eq ptr %.lcssa36, %.val25
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5folly10jsonschema12_GLOBAL__N_111SchemaErrorES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.r, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i ], [ %.lcssa36, %bb.r ] ; 3 uses
  %i.bf = load ptr, ptr %.05.i.i.i, align 8, !tbaa !421
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.05.i.i.i) #23, !call_target !9120, !inline_history !11826
  %i.bh = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i32 = icmp eq ptr %i.bh, %.val25
  br i1 %.not.i.i.i32, label %_ZSt8_DestroyIPN5folly10jsonschema12_GLOBAL__N_111SchemaErrorES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !394

_ZSt8_DestroyIPN5folly10jsonschema12_GLOBAL__N_111SchemaErrorES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %.lr.ph.i.i.i, %bb.r
  %.not.i.i2.i = icmp eq ptr %.lcssa36, null
  br i1 %.not.i.i2.i, label %_ZNSt6vectorIN5folly10jsonschema12_GLOBAL__N_111SchemaErrorESaIS3_EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZSt8_DestroyIPN5folly10jsonschema12_GLOBAL__N_111SchemaErrorES3_EvT_S5_RSaIT0_E.exit.i
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.val1.i = load ptr, ptr %i.bi, align 8, !tbaa !9633
  %i.bj = ptrtoint ptr %.val1.i to i64
  %i.bk = sub i64 %i.bj, %i.l
  call void @_ZdlPvm(ptr noundef nonnull %.lcssa36, i64 noundef %i.bk) #49
  br label %_ZNSt6vectorIN5folly10jsonschema12_GLOBAL__N_111SchemaErrorESaIS3_EED2Ev.exit

_ZNSt6vectorIN5folly10jsonschema12_GLOBAL__N_111SchemaErrorESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5folly10jsonschema12_GLOBAL__N_111SchemaErrorES3_EvT_S5_RSaIT0_E.exit.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  ret void

bb.t:                                             ; preds = %bb.m, %_ZN5folly8OptionalINS_10jsonschema12_GLOBAL__N_111SchemaErrorEED2Ev.exit
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZN5folly8OptionalINS_10jsonschema12_GLOBAL__N_111SchemaErrorEED2Ev.exit ], [ %i.ax, %bb.m ]
  call fastcc void @_ZNSt6vectorIN5folly10jsonschema12_GLOBAL__N_111SchemaErrorESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt6vectorIN5folly10jsonschema12_GLOBAL__N_111SchemaErrorESaIS3_EED2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(24) dereferenceable(24) %0) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11832  ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9634 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN5folly10jsonschema12_GLOBAL__N_111SchemaErrorES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.f, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !421
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.05.i.i) #23, !call_target !9120, !inline_history !11831
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN5folly10jsonschema12_GLOBAL__N_111SchemaErrorES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !394

_ZSt8_DestroyIPN5folly10jsonschema12_GLOBAL__N_111SchemaErrorES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %.lr.ph.i.i
end_hunk_0
