Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tomlplusplus/original/toml?download=true
inline.NumInlined: 4199
inline.NumDeleted: 1284
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN4toml2v35table3getESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  %.0.i4.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessIvEclIRKSt17basic_string_viewIcSt11char_traitsIcEERKN4toml2v33keyEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit.i.i.i

_ZNKSt4lessIvEclIRKSt17basic_string_viewIcSt11char_traitsIcEERKN4toml2v33keyEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %.0.i4.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i ], [ %i.q, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ]
  %i.t = icmp slt i32 %.0.i.i.i.i.i.i.i, 0
  %spec.select.i.i.i = select i1 %i.t, ptr %i.b, ptr %.1.i.i.i.i
  br label %_ZNSt3mapIN4toml2v33keyESt10unique_ptrINS1_4nodeESt14default_deleteIS4_EESt4lessIvESaISt4pairIKS2_S7_EEE4findISt17basic_string_viewIcSt11char_traitsIcEEEEDTcldtdtdefpT4_M_t10_M_find_trfp_EERKT_.exit

_ZNSt3mapIN4toml2v33keyESt10unique_ptrINS1_4nodeESt14default_deleteIS4_EESt4lessIvESaISt4pairIKS2_S7_EEE4findISt17basic_string_viewIcSt11char_traitsIcEEEEDTcldtdtdefpT4_M_t10_M_find_trfp_EERKT_.exit: ; preds = %_ZNKSt4lessIvEclIRKSt17basic_string_viewIcSt11char_traitsIcEERKN4toml2v33keyEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit.i.i.i, %_ZNKSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE17_M_lower_bound_trISt17basic_string_viewIcSt11char_traitsIcEEvEESt23_Rb_tree_const_iteratorISA_ERKT_.exit.i.i.i
  %.sroa.03.0.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE17_M_lower_bound_trISt17basic_string_viewIcSt11char_traitsIcEEvEESt23_Rb_tree_const_iteratorISA_ERKT_.exit.i.i.i ], [ %spec.select.i.i.i, %_ZNKSt4lessIvEclIRKSt17basic_string_viewIcSt11char_traitsIcEERKN4toml2v33keyEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit.i.i.i ] ; 2 uses
  %.not = icmp eq ptr %.sroa.03.0.i.i.i, %i.b
  br i1 %.not, label %_ZNSt3mapIN4toml2v33keyESt10unique_ptrINS1_4nodeESt14default_deleteIS4_EESt4lessIvESaISt4pairIKS2_S7_EEE4findISt17basic_string_viewIcSt11char_traitsIcEEEEDTcldtdtdefpT4_M_t10_M_find_trfp_EERKT_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIN4toml2v33keyESt10unique_ptrINS1_4nodeESt14default_deleteIS4_EESt4lessIvESaISt4pairIKS2_S7_EEE4findISt17basic_string_viewIcSt11char_traitsIcEEEEDTcldtdtdefpT4_M_t10_M_find_trfp_EERKT_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i, i64 96
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !174
  br label %_ZNSt3mapIN4toml2v33keyESt10unique_ptrINS1_4nodeESt14default_deleteIS4_EESt4lessIvESaISt4pairIKS2_S7_EEE4findISt17basic_string_viewIcSt11char_traitsIcEEEEDTcldtdtdefpT4_M_t10_M_find_trfp_EERKT_.exit.thread

_ZNSt3mapIN4toml2v33keyESt10unique_ptrINS1_4nodeESt14default_deleteIS4_EESt4lessIvESaISt4pairIKS2_S7_EEE4findISt17basic_string_viewIcSt11char_traitsIcEEEEDTcldtdtdefpT4_M_t10_M_find_trfp_EERKT_.exit.thread: ; preds = %bb.a, %_ZNSt3mapIN4toml2v33keyESt10unique_ptrINS1_4nodeESt14default_deleteIS4_EESt4lessIvESaISt4pairIKS2_S7_EEE4findISt17basic_string_viewIcSt11char_traitsIcEEEEDTcldtdtdefpT4_M_t10_M_find_trfp_EERKT_.exit, %bb.c
  %i.w = phi ptr [ %i.v, %bb.c ], [ null, %_ZNSt3mapIN4toml2v33keyESt10unique_ptrINS1_4nodeESt14default_deleteIS4_EESt4lessIvESaISt4pairIKS2_S7_EEE4findISt17basic_string_viewIcSt11char_traitsIcEEEEDTcldtdtdefpT4_M_t10_M_find_trfp_EERKT_.exit ], [ null, %bb.a ]
  ret ptr %i.w
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4toml2v35arrayC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((0, 64)) %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35arrayE, i64 16), ptr %0, align 8, !tbaa !74
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4toml2v35arrayD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(64) dereferenceable(64) initializes((0, 8)) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35arrayE, i64 16), ptr %0, align 8, !tbaa !74
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !173  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !172  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.i, %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !174 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !74
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #50, !inline_history !15
  br label %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !16

_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !173
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.j = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !193
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #51
  br label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v34nodeE, i64 16), ptr %0, align 8, !tbaa !74
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !150  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZN4toml2v34nodeD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EED2Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.r, align 8, !tbaa !152
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !153
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !74
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #50, !inline_history !17
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !74
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #50, !inline_history !17
  br label %_ZN4toml2v34nodeD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i.i1 = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i.i.i1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !154
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.u, %bb.f ], [ %i.ae, %bb.g ]
  %i.af = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.af, label %bb.h, label %_ZN4toml2v34nodeD2Ev.exit, !prof !155

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #50, !inline_history !194
  br label %_ZN4toml2v34nodeD2Ev.exit

_ZN4toml2v34nodeD2Ev.exit:                        ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EED2Ev.exit, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !173    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !172  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.h, %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !174 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !74
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #50, !inline_history !463
  br label %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i

_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i, %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !16

_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !173
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit

_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.i = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !193
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #51
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EED2Ev.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4toml2v35arrayD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN4toml2v35arrayD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) #50
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #51
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v35arrayC2EPKNS0_4impl15array_init_elemES5_(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 64)) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1), "nonnull"(ptr %2) ]
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35arrayE, i64 16), ptr %0, align 8, !tbaa !74
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.c = icmp ule ptr %1, %2
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq ptr %1, %2
  br i1 %i.d, label %.loopexit, label %.preheader.preheader, !prof !155

.preheader.preheader:                             ; preds = %bb.a
  %i.e = ptrtoaddr ptr %2 to i64
  %i.f = ptrtoaddr ptr %1 to i64
  %i.g = add i64 %i.e, -8
  %i.h = sub i64 %i.g, %i.f                       ; 2 uses
  %i.i = lshr i64 %i.h, 3
  %i.j = add nuw nsw i64 %i.i, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.h, 24
  br i1 %min.iters.check, label %.preheader.preheader62, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader
  %n.vec = and i64 %i.j, 4611686018427387900      ; 3 uses
  %i.k = shl i64 %n.vec, 3
  %i.l = getelementptr i8, ptr %1, i64 %i.k
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.s, %vector.body ]
  %vec.phi42 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.t, %vector.body ]
  %i.m = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %1, i64 %i.m  ; 2 uses
  %i.n = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep, align 8, !tbaa !174
  %wide.load43 = load <2 x ptr>, ptr %i.n, align 8, !tbaa !174
  %i.o = icmp ne <2 x ptr> %wide.load, splat (ptr null)
  %i.p = icmp ne <2 x ptr> %wide.load43, splat (ptr null)
  %i.q = zext <2 x i1> %i.o to <2 x i64>
  %i.r = zext <2 x i1> %i.p to <2 x i64>
  %i.s = add <2 x i64> %vec.phi, %i.q             ; 2 uses
  %i.t = add <2 x i64> %vec.phi42, %i.r           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !464

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.t, %i.s
  %i.v = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %.loopexit60, label %.preheader.preheader62

.preheader.preheader62:                           ; preds = %.preheader.preheader, %middle.block
  %.02133.ph = phi i64 [ 0, %.preheader.preheader ], [ %i.v, %middle.block ]
  %.02232.ph = phi ptr [ %1, %.preheader.preheader ], [ %i.l, %middle.block ]
  br label %.preheader

.loopexit60:                                      ; preds = %.preheader, %middle.block
  %spec.select.lcssa = phi i64 [ %i.v, %middle.block ], [ %spec.select, %.preheader ] ; 4 uses
  %.not25 = icmp eq i64 %spec.select.lcssa, 0
  br i1 %.not25, label %.loopexit, label %bb.b, !prof !155

.preheader:                                       ; preds = %.preheader.preheader62, %.preheader
  %.02133 = phi i64 [ %spec.select, %.preheader ], [ %.02133.ph, %.preheader.preheader62 ]
  %.02232 = phi ptr [ %i.y, %.preheader ], [ %.02232.ph, %.preheader.preheader62 ] ; 2 uses
  %i.w = load ptr, ptr %.02232, align 8, !tbaa !174
  %.not29 = icmp ne ptr %i.w, null
  %i.x = zext i1 %.not29 to i64
  %spec.select = add i64 %.02133, %i.x            ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.02232, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.y, %2
  br i1 %.not, label %.loopexit60, label %.preheader, !llvm.loop !465

bb.b:                                             ; preds = %.loopexit60
  %i.z = icmp ugt i64 %spec.select.lcssa, 1152921504606846975
  br i1 %i.z, label %bb.c, label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.217) #54
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.c
  unreachable

_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ac = shl nuw nsw i64 %spec.select.lcssa, 3
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #55
          to label %.noexc27 unwind label %.loopexit.split-lp ; 9 uses

.noexc27:                                         ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !173 ; 11 uses
  %i.af = ptrtoaddr ptr %i.ae to i64              ; 2 uses
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !172 ; 3 uses
  %i.ah = ptrtoaddr ptr %i.ag to i64              ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ae, %i.ag
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc27
  %i.ai = add i64 %i.ah, -8
  %i.aj = sub i64 %i.ai, %i.af                    ; 2 uses
  %i.ak = lshr i64 %i.aj, 3
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %min.iters.check46 = icmp ult i64 %i.aj, 136
  br i1 %min.iters.check46, label %.lr.ph.i.i.i.i.preheader61, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.am = add i64 %i.ah, -8
  %i.an = sub i64 %i.am, %i.af
  %i.ao = and i64 %i.an, -8
  %i.ap = add i64 %i.ao, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ad, i64 %i.ap
  %scevgep44 = getelementptr i8, ptr %i.ae, i64 %i.ap
  %bound0 = icmp ult ptr %i.ad, %scevgep44
  %bound1 = icmp ult ptr %i.ae, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader61, label %vector.ph47

vector.ph47:                                      ; preds = %vector.memcheck
  %n.vec48 = and i64 %i.al, 4611686018427387900   ; 3 uses
  %i.aq = shl i64 %n.vec48, 3                     ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ad, i64 %i.aq
  %i.as = getelementptr i8, ptr %i.ae, i64 %i.aq
  br label %vector.body49

vector.body49:                                    ; preds = %vector.body49, %vector.ph47
  %index50 = phi i64 [ 0, %vector.ph47 ], [ %index.next55, %vector.body49 ] ; 2 uses
  %i.at = shl i64 %index50, 3                     ; 2 uses
  %next.gep51 = getelementptr i8, ptr %i.ad, i64 %i.at ; 2 uses
  %next.gep52 = getelementptr i8, ptr %i.ae, i64 %i.at ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !475)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !476)
  %i.au = getelementptr i8, ptr %next.gep52, i64 16
  %wide.load53 = load <2 x i64>, ptr %next.gep52, align 8, !tbaa !174, !alias.scope !477, !noalias !475
  %wide.load54 = load <2 x i64>, ptr %i.au, align 8, !tbaa !174, !alias.scope !477, !noalias !475
  %i.av = getelementptr i8, ptr %next.gep51, i64 16
  store <2 x i64> %wide.load53, ptr %next.gep51, align 8, !tbaa !174, !alias.scope !478, !noalias !477
  store <2 x i64> %wide.load54, ptr %i.av, align 8, !tbaa !174, !alias.scope !478, !noalias !477
  %i.aw = getelementptr i8, ptr %next.gep52, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep52, align 8, !tbaa !174, !alias.scope !477, !noalias !475
  store <2 x ptr> splat (ptr null), ptr %i.aw, align 8, !tbaa !174, !alias.scope !477, !noalias !475
  %index.next55 = add nuw i64 %index50, 4         ; 2 uses
  %i.ax = icmp eq i64 %index.next55, %n.vec48
  br i1 %i.ax, label %middle.block56, label %vector.body49, !llvm.loop !472

middle.block56:                                   ; preds = %vector.body49
  %cmp.n57 = icmp eq i64 %i.al, %n.vec48
  br i1 %cmp.n57, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader61

.lr.ph.i.i.i.i.preheader61:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block56
  %.012.i.i.i.i.ph = phi ptr [ %i.ad, %vector.memcheck ], [ %i.ad, %.lr.ph.i.i.i.i.preheader ], [ %i.ar, %middle.block56 ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.ae, %vector.memcheck ], [ %i.ae, %.lr.ph.i.i.i.i.preheader ], [ %i.as, %middle.block56 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader61, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader61 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader61 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !475)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !476)
  %i.ay = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !174, !alias.scope !476, !noalias !475
  store i64 %i.ay, ptr %.012.i.i.i.i, align 8, !tbaa !174, !alias.scope !475, !noalias !476
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !174, !alias.scope !476, !noalias !475
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.az, %i.ag
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !473

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block56, %.noexc27
  %.not.i8.i = icmp eq ptr %i.ae, null
  br i1 %.not.i8.i, label %.lr.ph, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  %i.bb = load ptr, ptr %i.aa, align 8, !tbaa !193
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.ae to i64
  %i.be = sub i64 %i.bc, %i.bd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.be) #51
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  store ptr %i.ad, ptr %i.b, align 8, !tbaa !173
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !172
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %spec.select.lcssa
  store ptr %i.bf, ptr %i.aa, align 8, !tbaa !193
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit
  %.035 = phi ptr [ %1, %.lr.ph ], [ %i.bm, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit ] ; 4 uses
  %i.bh = load ptr, ptr %.035, align 8            ; 2 uses
  %.not30 = icmp eq ptr %i.bh, null
  %i.bi = ptrtoint ptr %i.bh to i64
  br i1 %.not30, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bj = load ptr, ptr %i.bg, align 8, !tbaa !172 ; 4 uses
  %i.bk = load ptr, ptr %i.aa, align 8, !tbaa !193
  %.not.i.i = icmp eq ptr %i.bj, %i.bk
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !174
  store ptr null, ptr %.035, align 8, !tbaa !174
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.bl, ptr %i.bg, align 8, !tbaa !172
end_hunk_0
begin_hunk_1_@_ZN4toml2v35array5equalERKS1_S3_:bb.a
  %i.co = load i8, ptr %i.cn, align 2, !tbaa !93
  %i.cp = icmp eq i8 %i.cm, %i.co
  br i1 %i.cp, label %_ZN4toml2v3eqERKNS0_4dateES3_.exit.i.i.i.i.i, label %.critedge

_ZN4toml2v3eqERKNS0_4dateES3_.exit.i.i.i.i.i:     ; preds = %bb.m
  %i.cq = getelementptr inbounds nuw i8, ptr %i.s, i64 43
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !94
  %i.cs = getelementptr inbounds nuw i8, ptr %i.y, i64 43
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !94
  %i.cu = icmp eq i8 %i.cr, %i.ct
  br i1 %i.cu, label %bb.n, label %.critedge

bb.n:                                             ; preds = %_ZN4toml2v3eqERKNS0_4dateES3_.exit.i.i.i.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.s, i64 44
  %i.cw = getelementptr inbounds nuw i8, ptr %i.y, i64 44
  %i.cx = load i8, ptr %i.cv, align 4, !tbaa !96
  %i.cy = load i8, ptr %i.cw, align 4, !tbaa !96
  %i.cz = icmp eq i8 %i.cx, %i.cy
  br i1 %i.cz, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.da = getelementptr inbounds nuw i8, ptr %i.s, i64 45
  %i.db = load i8, ptr %i.da, align 1, !tbaa !97
  %i.dc = getelementptr inbounds nuw i8, ptr %i.y, i64 45
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !97
  %i.de = icmp eq i8 %i.db, %i.dd
  br i1 %i.de, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.df = getelementptr inbounds nuw i8, ptr %i.s, i64 46
  %i.dg = load i8, ptr %i.df, align 2, !tbaa !98
  %i.dh = getelementptr inbounds nuw i8, ptr %i.y, i64 46
  %i.di = load i8, ptr %i.dh, align 2, !tbaa !98
  %i.dj = icmp eq i8 %i.dg, %i.di
  br i1 %i.dj, label %_ZN4toml2v3eqERKNS0_4timeES3_.exit.i.i.i.i.i, label %.critedge

_ZN4toml2v3eqERKNS0_4timeES3_.exit.i.i.i.i.i:     ; preds = %bb.p
  %i.dk = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !99
  %i.dm = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !99
  %i.do = icmp eq i32 %i.dl, %i.dn
  br i1 %i.do, label %.split36, label %.critedge

.split36:                                         ; preds = %_ZN4toml2v3eqERKNS0_4timeES3_.exit.i.i.i.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.s, i64 52
  %i.dq = getelementptr inbounds nuw i8, ptr %i.y, i64 52
  %i.dr = getelementptr inbounds nuw i8, ptr %i.s, i64 54
  %i.ds = load i8, ptr %i.dr, align 2, !tbaa !103, !range !104, !noundef !105 ; 2 uses
  %i.dt = trunc nuw i8 %i.ds to i1
  %i.du = getelementptr inbounds nuw i8, ptr %i.y, i64 54
  %i.dv = load i8, ptr %i.du, align 2, !tbaa !103, !range !104, !noundef !105
  %i.dw = icmp eq i8 %i.ds, %i.dv                 ; 2 uses
  %brmerge.not.i.i.i.i.i.i = and i1 %i.dw, %i.dt
  %.sroa.01.0.copyload.i.i.i.i.i.i = load i16, ptr %i.dp, align 4
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i16, ptr %i.dq, align 4
  %i.dx = icmp eq i16 %.sroa.01.0.copyload.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i
  %i.dy = select i1 %brmerge.not.i.i.i.i.i.i, i1 %i.dx, i1 %i.dw
  br i1 %i.dy, label %"_ZN4toml2v34node8do_visitIZNS0_5array5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit.thread31", label %.critedge

bb.q:                                             ; preds = %bb.c
  unreachable

"_ZN4toml2v34node8do_visitIZNS0_5array5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit": ; preds = %bb.c
  %i.dz = tail call noundef zeroext i1 @_ZN4toml2v35array5equalERKS1_S3_(ptr noundef nonnull align 8 dereferenceable(64) %i.s, ptr noundef nonnull align 8 dereferenceable(64) %i.y) #50, !inline_history !589
  br i1 %i.dz, label %"_ZN4toml2v34node8do_visitIZNS0_5array5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit.thread31", label %.critedge

"_ZN4toml2v34node8do_visitIZNS0_5array5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit.thread31": ; preds = %_ZN4toml2v34impl10fpclassifyERKd.exit13.thr_comm.i.i.i.i, %bb.e, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %_ZN4toml2v34impl10fpclassifyERKd.exit13.i.i.i.i, %.split38, %.split37, %.split36, %.split35, %.split33, %.split, %"_ZN4toml2v34node8do_visitIZNS0_5array5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit"
  %i.ea = add nuw i64 %.02140, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ea, %i.i
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !590

.critedge:                                        ; preds = %_ZN4toml2v34impl10fpclassifyERKd.exit13.thr_comm.i.i.i.i, %_ZN4toml2v34impl10fpclassifyERKd.exit13.i.i.i.i, %bb.n, %bb.o, %bb.p, %bb.m, %bb.l, %_ZN4toml2v3eqERKNS0_4dateES3_.exit.i.i.i.i.i, %_ZN4toml2v3eqERKNS0_4timeES3_.exit.i.i.i.i.i, %bb.i, %bb.j, %bb.k, %bb.g, %bb.h, %bb.d, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %.split38, %.split37, %.split36, %.split35, %.split33, %.split, %.lr.ph, %"_ZN4toml2v34node8do_visitIZNS0_5array5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit.thread31", %"_ZN4toml2v34node8do_visitIZNS0_5array5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit", %.preheader, %bb.b, %bb.a
  %.4 = phi i1 [ false, %bb.b ], [ true, %bb.a ], [ true, %.preheader ], [ true, %"_ZN4toml2v34node8do_visitIZNS0_5array5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit.thread31" ], [ false, %.lr.ph ], [ false, %.split ], [ false, %.split33 ], [ false, %.split35 ], [ false, %.split36 ], [ false, %.split37 ], [ false, %.split38 ], [ false, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ false, %bb.d ], [ false, %bb.h ], [ false, %bb.g ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.i ], [ false, %_ZN4toml2v3eqERKNS0_4timeES3_.exit.i.i.i.i.i ], [ false, %_ZN4toml2v3eqERKNS0_4dateES3_.exit.i.i.i.i.i ], [ false, %bb.l ], [ false, %bb.m ], [ false, %bb.p ], [ false, %bb.o ], [ false, %bb.n ], [ false, %_ZN4toml2v34impl10fpclassifyERKd.exit13.i.i.i.i ], [ false, %_ZN4toml2v34impl10fpclassifyERKd.exit13.thr_comm.i.i.i.i ], [ false, %"_ZN4toml2v34node8do_visitIZNS0_5array5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit" ]
  ret i1 %.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4toml2v35tableC2Ev(ptr noundef nonnull align 8 dereferenceable(89) initializes((0, 40), (48, 52), (56, 64)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35tableE, i64 16), ptr %0, align 8, !tbaa !74
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store i32 0, ptr %i.b, align 8, !tbaa !198
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %i.c, align 8, !tbaa !199
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.b, ptr %i.d, align 8, !tbaa !197
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.b, ptr %i.e, align 8, !tbaa !200
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 0, ptr %i.f, align 8, !tbaa !157
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 0, ptr %i.g, align 8, !tbaa !144
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4toml2v35tableD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) initializes((0, 8)) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35tableE, i64 16), ptr %0, align 8, !tbaa !74
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !199
  invoke void @_ZNSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3mapIN4toml2v33keyESt10unique_ptrINS1_4nodeESt14default_deleteIS4_EESt4lessIvESaISt4pairIKS2_S7_EEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #53
  unreachable

_ZNSt3mapIN4toml2v33keyESt10unique_ptrINS1_4nodeESt14default_deleteIS4_EESt4lessIvESaISt4pairIKS2_S7_EEED2Ev.exit: ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v34nodeE, i64 16), ptr %0, align 8, !tbaa !74
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !150  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %_ZN4toml2v34nodeD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIN4toml2v33keyESt10unique_ptrINS1_4nodeESt14default_deleteIS4_EESt4lessIvESaISt4pairIKS2_S7_EEED2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 4294967297
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.h, align 8, !tbaa !152
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.l, align 4, !tbaa !153
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !74
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #50, !inline_history !17
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !74
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #50, !inline_history !17
  br label %_ZN4toml2v34nodeD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = add nsw i32 %i.k, -1
  store i32 %i.t, ptr %i.h, align 8, !tbaa !154
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.u = atomicrmw volatile add ptr %i.h, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.k, %bb.f ], [ %i.u, %bb.g ]
  %i.v = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.v, label %bb.h, label %_ZN4toml2v34nodeD2Ev.exit, !prof !155

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #50, !inline_history !194
  br label %_ZN4toml2v34nodeD2Ev.exit

_ZN4toml2v34nodeD2Ev.exit:                        ; preds = %_ZNSt3mapIN4toml2v33keyESt10unique_ptrINS1_4nodeESt14default_deleteIS4_EESt4lessIvESaISt4pairIKS2_S7_EEED2Ev.exit, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt3mapIN4toml2v33keyESt10unique_ptrINS1_4nodeESt14default_deleteIS4_EESt4lessIvESaISt4pairIKS2_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !199
  invoke void @_ZNSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #53
  unreachable

_ZNSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4toml2v35tableD0Ev(ptr noundef nonnull align 8 dereferenceable(89) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN4toml2v35tableD1Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %0) #50
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #51
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v35tableC2EPKNS0_4impl15table_init_pairES5_(ptr noundef nonnull align 8 dereferenceable(89) initializes((0, 40), (48, 52), (56, 64)) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1), "nonnull"(ptr %2) ]
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35tableE, i64 16), ptr %0, align 8, !tbaa !74
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store i32 0, ptr %i.c, align 8, !tbaa !198
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %i.d, align 8, !tbaa !199
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.c, ptr %i.e, align 8, !tbaa !197
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.c, ptr %i.f, align 8, !tbaa !200
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 0, ptr %i.g, align 8, !tbaa !157
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 0, ptr %i.h, align 8, !tbaa !144
  %i.i = icmp ule ptr %1, %2
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp eq ptr %1, %2
  br i1 %i.j, label %.loopexit, label %.preheader, !prof !155

.preheader:                                       ; preds = %bb.a, %bb.c
  %.016 = phi ptr [ %i.n, %bb.c ], [ %1, %bb.a ]  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.016, i64 64 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !174
  %.not15 = icmp eq ptr %i.l, null
  br i1 %.not15, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.m = invoke { ptr, i8 } @_ZNSt3mapIN4toml2v33keyESt10unique_ptrINS1_4nodeESt14default_deleteIS4_EESt4lessIvESaISt4pairIKS2_S7_EEE16insert_or_assignIS7_EESA_ISt17_Rb_tree_iteratorISC_EbEOS2_OT_(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %.016, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b, %.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %.016, i64 72 ; 2 uses
  %.not = icmp eq ptr %i.n, %2
  br i1 %.not, label %.loopexit, label %.preheader, !llvm.loop !591

bb.d:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3mapIN4toml2v33keyESt10unique_ptrINS1_4nodeESt14default_deleteIS4_EESt4lessIvESaISt4pairIKS2_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.b) #50
  tail call void @_ZN4toml2v34nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #50
  resume { ptr, i32 } %i.o

.loopexit:                                        ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt3mapIN4toml2v33keyESt10unique_ptrINS1_4nodeESt14default_deleteIS4_EESt4lessIvESaISt4pairIKS2_S7_EEE16insert_or_assignIS7_EESA_ISt17_Rb_tree_iteratorISC_EbEOS2_OT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::tuple.110", align 8    ; 4 uses
  %4 = alloca %"class.std::tuple.113", align 8    ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !199  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !67   ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessIvEclIRKN4toml2v33keyES6_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOS7_OS8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessIvEclIRKN4toml2v33keyES6_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOS7_OS8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessIvEclIRKN4toml2v33keyES6_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOS7_OS8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !67   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !66
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #50 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt4lessIvEclIRKN4toml2v33keyES6_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOS7_OS8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessIvEclIRKN4toml2v33keyES6_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOS7_OS8_.exit.i.i.i

_ZNKSt4lessIvEclIRKN4toml2v33keyES6_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOS7_OS8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i.i, 0        ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 9 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !160 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIN4toml2v33keyESt10unique_ptrINS1_4nodeESt14default_deleteIS4_EESt4lessIvESaISt4pairIKS2_S7_EEE11lower_boundERSB_.exit, label %bb.b, !llvm.loop !592

_ZNSt3mapIN4toml2v33keyESt10unique_ptrINS1_4nodeESt14default_deleteIS4_EESt4lessIvESaISt4pairIKS2_S7_EEE11lower_boundERSB_.exit: ; preds = %_ZNKSt4lessIvEclIRKN4toml2v33keyES6_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOS7_OS8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIN4toml2v33keyESt10unique_ptrINS1_4nodeESt14default_deleteIS4_EESt4lessIvESaISt4pairIKS2_S7_EEE11lower_boundERSB_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !67   ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !66
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i.i) #50 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNKSt4lessIvEclIRN4toml2v33keyERKS4_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOS8_OS9_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %_ZNKSt4lessIvEclIRN4toml2v33keyERKS4_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOS8_OS9_.exit

_ZNKSt4lessIvEclIRN4toml2v33keyERKS4_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOS8_OS9_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i.i, 0
  br i1 %i.w, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapIN4toml2v33keyESt10unique_ptrINS1_4nodeESt14default_deleteIS4_EESt4lessIvESaISt4pairIKS2_S7_EEE11lower_boundERSB_.exit, %_ZNKSt4lessIvEclIRN4toml2v33keyERKS4_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOS8_OS9_.exit
  %.08.lcssa.i.i.i17 = phi ptr [ %.19.i.i.i, %_ZNKSt4lessIvEclIRN4toml2v33keyERKS4_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOS8_OS9_.exit ], [ %.19.i.i.i, %_ZNSt3mapIN4toml2v33keyESt10unique_ptrINS1_4nodeESt14default_deleteIS4_EESt4lessIvESaISt4pairIKS2_S7_EEE11lower_boundERSB_.exit ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #50
  store ptr %1, ptr %3, align 8, !tbaa !202, !alias.scope !597
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #50
  store ptr %2, ptr %4, align 8, !tbaa !159, !alias.scope !598
  %i.x = call ptr @_ZNSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS2_EESL_IJOS9_EEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i17, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #50
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit

bb.d:                                             ; preds = %_ZNKSt4lessIvEclIRN4toml2v33keyERKS4_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOS8_OS9_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 96 ; 2 uses
  %i.z = load ptr, ptr %2, align 8, !tbaa !174
  store ptr null, ptr %2, align 8, !tbaa !174
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !174 ; 3 uses
  store ptr %i.z, ptr %i.y, align 8, !tbaa !174
  %.not.i.i.i.i6 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i6, label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i: ; preds = %bb.d
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !74
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(40) %i.aa) #50, !inline_history !23
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit: ; preds = %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i, %bb.d, %.critedge
  %.sroa.015.0 = phi ptr [ %i.x, %.critedge ], [ %.19.i.i.i, %bb.d ], [ %.19.i.i.i, %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i ]
  %.sroa.3.0 = phi i8 [ 1, %.critedge ], [ 0, %bb.d ], [ 0, %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.015.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v35tableC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(89) initializes((0, 40), (48, 52), (56, 64)) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(89) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.120, align 2            ; 4 uses
  %3 = alloca %"class.std::unique_ptr", align 8   ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35tableE, i64 16), ptr %0, align 8, !tbaa !74
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  store i32 0, ptr %i.c, align 8, !tbaa !198
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %i.d, align 8, !tbaa !199
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.c, ptr %i.e, align 8, !tbaa !197
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.c, ptr %i.f, align 8, !tbaa !200
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 0, ptr %i.g, align 8, !tbaa !157
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.j = load i8, ptr %i.i, align 8, !tbaa !144, !range !104, !noundef !105
  store i8 %i.j, ptr %i.h, align 8, !tbaa !144
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !197  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.not21 = icmp eq ptr %i.l, %i.m
  br i1 %.not21, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit
  %.sroa.018.022 = phi ptr [ %i.w, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit ], [ %i.l, %bb.a ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.018.022, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #50
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !174
  call void @llvm.experimental.noalias.scope.decl(metadata !602)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #50, !noalias !602
  store i16 -1, ptr %2, align 2, !tbaa !204, !noalias !602
  %i.p = invoke noundef ptr @_ZN4toml2v34node8do_visitIZNS0_4impl14make_node_implIRS1_EEPDaOT_NS0_11value_flagsEEUlS8_E_S5_EEDcS8_OT0_(ptr noundef nonnull align 2 dereferenceable(2) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.o)
          to label %bb.b unwind label %bb.c, !inline_history !601

bb.b:                                             ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.018.022, i64 32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #50, !noalias !602
  store ptr %i.p, ptr %3, align 8, !tbaa !174, !alias.scope !602
  %i.r = invoke ptr @_ZNSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE22_M_emplace_hint_uniqueIJRS4_S9_EEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(64) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZNSt3mapIN4toml2v33keyESt10unique_ptrINS1_4nodeESt14default_deleteIS4_EESt4lessIvESaISt4pairIKS2_S7_EEE12emplace_hintIJRSB_S7_EEESt17_Rb_tree_iteratorISC_ESt23_Rb_tree_const_iteratorISC_EDpOT_.exit unwind label %bb.d ; 0 uses

_ZNSt3mapIN4toml2v33keyESt10unique_ptrINS1_4nodeESt14default_deleteIS4_EESt4lessIvESaISt4pairIKS2_S7_EEE12emplace_hintIJRSB_S7_EEESt17_Rb_tree_iteratorISC_ESt23_Rb_tree_const_iteratorISC_EDpOT_.exit: ; preds = %bb.b
  %i.s = load ptr, ptr %3, align 8, !tbaa !174    ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
end_hunk_1
begin_hunk_2_@_ZN4toml2v32ex10parse_fileESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
bb.m:                                             ; preds = %bb.j
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #50, !noalias !693
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #50, !noalias !693
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50, !noalias !693
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit27.i

bb.n:                                             ; preds = %bb.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #50, !noalias !693
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50, !noalias !693
  call void @__cxa_free_exception(ptr %i.ae) #50, !noalias !693
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit27.i

bb.o:                                             ; preds = %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode.exit.i
  %i.ak = invoke { i64, i64 } @_ZNSi5tellgEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.p unwind label %bb.s, !noalias !693

bb.p:                                             ; preds = %bb.o
  %i.al = extractvalue { i64, i64 } %i.ak, 0      ; 8 uses
  %i.am = icmp eq i64 %i.al, -1
  br i1 %i.am, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.an = call ptr @__cxa_allocate_exception(i64 48) #50, !noalias !693 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #50, !noalias !693
  store i32 0, ptr %7, align 4, !tbaa !107, !noalias !693
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 0, ptr %i.ao, align 4, !tbaa !108, !noalias !693
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #50, !noalias !693
  invoke void @_ZSt11make_sharedIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.r unwind label %bb.u, !noalias !693

bb.r:                                             ; preds = %bb.q
  call void @_ZN4toml2v32ex11parse_errorC2EPKcRKNS0_15source_positionERKSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.an, ptr noundef @.str.182, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(16) %8) #50, !noalias !693
  invoke void @__cxa_throw(ptr nonnull %i.an, ptr nonnull @_ZTIN4toml2v32ex11parse_errorE, ptr nonnull @_ZN4toml2v32ex11parse_errorD2Ev) #54
          to label %bb.aj unwind label %bb.t, !noalias !693

bb.s:                                             ; preds = %bb.v, %bb.o
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit27.i

bb.t:                                             ; preds = %bb.r
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #50, !noalias !693
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #50, !noalias !693
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #50, !noalias !693
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit27.i

bb.u:                                             ; preds = %bb.q
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #50, !noalias !693
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #50, !noalias !693
  call void @__cxa_free_exception(ptr %i.an) #50, !noalias !693
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit27.i

bb.v:                                             ; preds = %bb.p
  %i.as = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef 0, i32 noundef 0)
          to label %bb.w unwind label %bb.s, !noalias !693 ; 0 uses

bb.w:                                             ; preds = %bb.v
  %i.at = icmp slt i64 %i.al, 2097153
  br i1 %i.at, label %bb.x, label %bb.ah

bb.x:                                             ; preds = %bb.w
  %.not.i = icmp eq i64 %i.al, 0
  br i1 %.not.i, label %_ZNSt6vectorIcSaIcEE6resizeEm.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.au = icmp slt i64 %i.al, 0
  br i1 %i.au, label %bb.z, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.64) #54
          to label %.noexc32.i unwind label %.thread60.i, !noalias !693

.noexc32.i:                                       ; preds = %bb.z
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.y
  %i.av = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #55
          to label %.noexc33.i unwind label %.thread60.i, !noalias !693 ; 4 uses

.noexc33.i:                                       ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i
  store i8 0, ptr %i.av, align 1, !tbaa !69, !noalias !693
  %i.aw = add nsw i64 %i.al, -1                   ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %.noexc25.i, label %bb.aa

bb.aa:                                            ; preds = %.noexc33.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ay, i8 0, i64 %i.aw, i1 false), !noalias !693
  br label %.noexc25.i

.noexc25.i:                                       ; preds = %bb.aa, %.noexc33.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.al
  %i.ba = ptrtoint ptr %i.az to i64
  br label %_ZNSt6vectorIcSaIcEE6resizeEm.exit.i

_ZNSt6vectorIcSaIcEE6resizeEm.exit.i:             ; preds = %.noexc25.i, %bb.x
  %.sroa.034.1.i = phi ptr [ %i.av, %.noexc25.i ], [ null, %bb.x ] ; 8 uses
  %.sroa.12.0.i = phi i64 [ %i.ba, %.noexc25.i ], [ 0, %bb.x ] ; 2 uses
  %i.bb = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %.sroa.034.1.i, i64 noundef %i.al)
          to label %bb.ab unwind label %bb.af, !noalias !693 ; 0 uses

bb.ab:                                            ; preds = %_ZNSt6vectorIcSaIcEE6resizeEm.exit.i
  %i.bc = ptrtoint ptr %.sroa.034.1.i to i64
  %i.bd = sub i64 %.sroa.12.0.i, %i.bc            ; 2 uses
  invoke void @_ZN4toml2v32ex5parseESt17basic_string_viewIcSt11char_traitsIcEEONSt7__cxx1112basic_stringIcS4_SaIcEEE(ptr dead_on_unwind writable sret(%"class.toml::v3::table") align 8 %0, i64 %i.bd, ptr %.sroa.034.1.i, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.ac unwind label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %.not.i.i.i.i = icmp eq ptr %.sroa.034.1.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.034.1.i, i64 noundef %i.bd) #51
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit.i

bb.ae:                                            ; preds = %bb.ah
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit27.i

.thread60.i:                                      ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i, %bb.z
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit27.i

bb.af:                                            ; preds = %bb.ab, %_ZNSt6vectorIcSaIcEE6resizeEm.exit.i
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i26.i = icmp eq ptr %.sroa.034.1.i, null
  br i1 %.not.i.i.i26.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit27.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bf = ptrtoint ptr %.sroa.034.1.i to i64
  %i.bg = sub i64 %.sroa.12.0.i, %i.bf
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.034.1.i, i64 noundef %i.bg) #51
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit27.i

bb.ah:                                            ; preds = %bb.w
  invoke void @_ZN4toml2v32ex5parseERSiONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.toml::v3::table") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNSt6vectorIcSaIcEED2Ev.exit.i unwind label %bb.ae

_ZNSt6vectorIcSaIcEED2Ev.exit.i:                  ; preds = %bb.ah, %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #50, !noalias !693
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %4) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50, !noalias !693
  %i.bh = load ptr, ptr %3, align 8, !tbaa !66, !noalias !693 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.c
  br i1 %i.bi, label %_ZN12_GLOBAL__N_113do_parse_fileESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit.i
  %i.bj = load i64, ptr %i.c, align 8, !tbaa !69, !noalias !693
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #51
  br label %_ZN12_GLOBAL__N_113do_parse_fileESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZNSt6vectorIcSaIcEED2Ev.exit27.i:                ; preds = %bb.ag, %bb.af, %.thread60.i, %bb.ae, %bb.u, %bb.t, %bb.s, %bb.n, %bb.m, %bb.l
  %.pn15.pn.pn.i = phi { ptr, i32 } [ %i.ah, %bb.l ], [ %i.aj, %bb.n ], [ %i.ai, %bb.m ], [ %i.ar, %bb.u ], [ %i.aq, %bb.t ], [ %i.ap, %bb.s ], [ %i.be, %bb.ae ], [ %lpad.thr_comm.i, %.thread60.i ], [ %lpad.thr_comm.split-lp.i, %bb.af ], [ %lpad.thr_comm.split-lp.i, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #50, !noalias !693
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %4) #50
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit27.i, %bb.k
  %.pn15.pn.pn.pn.i = phi { ptr, i32 } [ %.pn15.pn.pn.i, %_ZNSt6vectorIcSaIcEED2Ev.exit27.i ], [ %i.ag, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50, !noalias !693
  %i.bl = load ptr, ptr %3, align 8, !tbaa !66, !noalias !693 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.c
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i: ; preds = %bb.ai
  %i.bn = load i64, ptr %i.c, align 8, !tbaa !69, !noalias !693
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #50, !noalias !693
  resume { ptr, i32 } %.pn15.pn.pn.pn.i

bb.aj:                                            ; preds = %bb.r, %bb.j
  unreachable

_ZN12_GLOBAL__N_113do_parse_fileESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #50, !noalias !693
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define void @_ZN4toml2v34impl9formatterC2EPKNS0_4nodeEPKNS0_5tableERKNS1_19formatter_constantsERKNS1_16formatter_configE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(69) initializes((0, 48)) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(96) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4) unnamed_addr #25 align 2 {
bb.a:
  %.not = icmp eq ptr %2, null
  %i.a = select i1 %.not, ptr %1, ptr %2          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.a) ]
  store ptr %i.a, ptr %0, align 8, !tbaa !121
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %i.b, align 8, !tbaa !122
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !701
  %i.d = load i64, ptr %i.c, align 8, !tbaa !125
  %i.e = load i64, ptr %3, align 8, !tbaa !703
  %i.f = or i64 %i.e, %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !704
  %i.i = xor i64 %i.h, -1
  %i.j = and i64 %i.f, %i.i                       ; 2 uses
  store i64 %i.j, ptr %i.c, align 8, !tbaa !125
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  store i64 0, ptr %i.k, align 8, !tbaa !126
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !323  ; 7 uses
  %i.o = ptrtoaddr ptr %i.n to i64
  %i.p = load i64, ptr %i.l, align 8, !tbaa !324  ; 6 uses
  %i.q = getelementptr i8, ptr %i.n, i64 %i.p     ; 2 uses
  %.not1213 = icmp samesign eq i64 %i.p, 0
  br i1 %.not1213, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %i.p, 6
  br i1 %min.iters.check, label %.lr.ph.preheader17, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %scevgep = getelementptr inbounds nuw i8, ptr %0, i64 48
  %bound0 = icmp ult ptr %i.k, %i.q
  %bound1 = icmp ult ptr %i.n, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader17, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.p, -4                       ; 3 uses
  %i.r = getelementptr i8, ptr %i.n, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.x, %vector.body ]
  %vec.phi15 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.y, %vector.body ]
  %next.gep = getelementptr i8, ptr %i.n, i64 %index ; 2 uses
  %i.s = getelementptr i8, ptr %next.gep, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep, align 1, !tbaa !69, !alias.scope !705
  %wide.load16 = load <2 x i8>, ptr %i.s, align 1, !tbaa !69, !alias.scope !705
  %i.t = icmp eq <2 x i8> %wide.load, splat (i8 9)
  %i.u = icmp eq <2 x i8> %wide.load16, splat (i8 9)
  %i.v = select <2 x i1> %i.t, <2 x i64> splat (i64 4), <2 x i64> splat (i64 1)
  %i.w = select <2 x i1> %i.u, <2 x i64> splat (i64 4), <2 x i64> splat (i64 1)
  %i.x = add <2 x i64> %i.v, %vec.phi             ; 2 uses
  %i.y = add <2 x i64> %i.w, %vec.phi15           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !696

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.y, %i.x
  %i.aa = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  store i64 %i.aa, ptr %i.k, align 8, !tbaa !126, !alias.scope !706, !noalias !705
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader17

.lr.ph.preheader17:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.014.ph = phi ptr [ %i.n, %vector.memcheck ], [ %i.n, %.lr.ph.preheader ], [ %i.r, %middle.block ] ; 3 uses
  %.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.aa, %middle.block ] ; 2 uses
  %i.ab = add i64 %i.p, %i.o                      ; 2 uses
  %.014.ph19 = ptrtoaddr ptr %.014.ph to i64      ; 2 uses
  %i.ac = sub i64 %i.ab, %.014.ph19
  %xtraiter = and i64 %i.ac, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader17, %.lr.ph.prol
  %.014.prol = phi ptr [ %i.ai, %.lr.ph.prol ], [ %.014.ph, %.lr.ph.preheader17 ] ; 2 uses
  %i.ad = phi i64 [ %i.ah, %.lr.ph.prol ], [ %.ph, %.lr.ph.preheader17 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader17 ]
  %i.ae = load i8, ptr %.014.prol, align 1, !tbaa !69
  %i.af = icmp eq i8 %i.ae, 9
  %i.ag = select i1 %i.af, i64 4, i64 1
  %i.ah = add i64 %i.ag, %i.ad                    ; 3 uses
  store i64 %i.ah, ptr %i.k, align 8, !tbaa !126
  %i.ai = getelementptr inbounds nuw i8, ptr %.014.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !698

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader17
  %.014.unr = phi ptr [ %.014.ph, %.lr.ph.preheader17 ], [ %i.ai, %.lr.ph.prol ]
  %.unr = phi i64 [ %.ph, %.lr.ph.preheader17 ], [ %i.ah, %.lr.ph.prol ]
  %i.aj = sub i64 %.014.ph19, %i.ab
  %i.ak = icmp ugt i64 %i.aj, -4
  br i1 %i.ak, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  %i.al = and i64 %i.j, 448
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.al, ptr %i.am, align 8, !tbaa !127
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.014 = phi ptr [ %i.bh, %.lr.ph ], [ %.014.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.an = phi i64 [ %i.bg, %.lr.ph ], [ %.unr, %.lr.ph.prol.loopexit ]
  %i.ao = load i8, ptr %.014, align 1, !tbaa !69
  %i.ap = icmp eq i8 %i.ao, 9
  %i.aq = select i1 %i.ap, i64 4, i64 1
  %i.ar = add i64 %i.aq, %i.an                    ; 2 uses
  store i64 %i.ar, ptr %i.k, align 8, !tbaa !126
  %i.as = getelementptr inbounds nuw i8, ptr %.014, i64 1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !69
  %i.au = icmp eq i8 %i.at, 9
  %i.av = select i1 %i.au, i64 4, i64 1
  %i.aw = add i64 %i.av, %i.ar                    ; 2 uses
  store i64 %i.aw, ptr %i.k, align 8, !tbaa !126
  %i.ax = getelementptr inbounds nuw i8, ptr %.014, i64 2
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !69
  %i.az = icmp eq i8 %i.ay, 9
  %i.ba = select i1 %i.az, i64 4, i64 1
  %i.bb = add i64 %i.ba, %i.aw                    ; 2 uses
  store i64 %i.bb, ptr %i.k, align 8, !tbaa !126
  %i.bc = getelementptr inbounds nuw i8, ptr %.014, i64 3
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !69
  %i.be = icmp eq i8 %i.bd, 9
  %i.bf = select i1 %i.be, i64 4, i64 1
  %i.bg = add i64 %i.bf, %i.bb                    ; 2 uses
  store i64 %i.bg, ptr %i.k, align 8, !tbaa !126
  %i.bh = getelementptr inbounds nuw i8, ptr %.014, i64 4 ; 2 uses
  %.not12.3 = icmp eq ptr %i.bh, %i.q
  br i1 %.not12.3, label %._crit_edge, label %.lr.ph, !llvm.loop !699
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4toml2v34impl9formatter6attachERSo(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(69) initializes((56, 69)) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %i.a, align 8, !tbaa !128
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i8 1, ptr %i.b, align 4, !tbaa !129
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %1, ptr %i.c, align 8, !tbaa !130
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4toml2v34impl9formatter6detachEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(69) initializes((56, 64)) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %i.a, align 8, !tbaa !130
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v34impl9formatter13print_newlineEb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(69) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !129, !range !104, !noundef !105
  %i.c = trunc nuw i8 %i.b to i1
  %.not = xor i1 %i.c, true
  %or.cond = or i1 %1, %.not
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !130
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i8 noundef signext 10) ; 0 uses
  store i8 1, ptr %i.a, align 4, !tbaa !129
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v34impl9formatter12print_indentEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(69) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !128
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 68
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.02 = phi i32 [ 0, %.lr.ph ], [ %i.i, %bb.b ]
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !130
  %.sroa.0.0.copyload = load i64, ptr %i.e, align 8, !tbaa !123
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !124
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %.sroa.2.0.copyload, i64 noundef %.sroa.0.0.copyload) ; 0 uses
  store i8 0, ptr %i.f, align 4, !tbaa !129
  %i.i = add nuw nsw i32 %.02, 1                  ; 2 uses
  %i.j = load i32, ptr %i.a, align 8, !tbaa !128
  %i.k = icmp slt i32 %i.i, %i.j
  br i1 %i.k, label %bb.b, label %._crit_edge, !llvm.loop !37
}

end_hunk_2
