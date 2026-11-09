Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_variant_cast?download=true
inline.NumInlined: 6391
inline.NumDeleted: 1307
loop-unroll.NumCompletelyUnrolled: 99
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 119
begin_hunk_0_@_ZN6duckdb14VariantVisitorINS_12_GLOBAL__N_113JSONConverterEPN13duckdb_yyjson14yyjson_mut_valEE12VisitDecimalIJRPNS3_14yyjson_mut_docEEEES5_RKNS_24UnifiedVariantVectorDataEmjDpOT_:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i102: ; preds = %_ZN13duckdb_yyjsonL18yyjson_mut_rawncpyEPNS_14yyjson_mut_docEPKcm.exit.i100
  call void @_ZdlPv(ptr noundef %i.iy) #25
  br label %_ZN6duckdb12_GLOBAL__N_113JSONConverter12VisitDecimalIsEEPN13duckdb_yyjson14yyjson_mut_valET_jjPNS3_14yyjson_mut_docE.exit

bb.bp:                                            ; preds = %bb.bd
  %i.ja = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.br

bb.bq:                                            ; preds = %bb.bn, %bb.bl
  %i.jb = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.pn.i90 = phi { ptr, i32 } [ %i.jb, %bb.bq ], [ %i.ja, %bb.bp ]
  %i.jc = load ptr, ptr %4, align 8, !tbaa !136   ; 2 uses
  %i.jd = icmp eq ptr %i.jc, %i.gw
  br i1 %i.jd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i91: ; preds = %bb.br
  call void @_ZdlPv(ptr noundef %i.jc) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i92

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i92: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i91
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %common.resume

_ZN6duckdb12_GLOBAL__N_113JSONConverter12VisitDecimalIsEEPN13duckdb_yyjson14yyjson_mut_valET_jjPNS3_14yyjson_mut_docE.exit: ; preds = %_ZN13duckdb_yyjsonL18yyjson_mut_rawncpyEPNS_14yyjson_mut_docEPKcm.exit.i100, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i102
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.bs

bb.bs:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_113JSONConverter12VisitDecimalIsEEPN13duckdb_yyjson14yyjson_mut_valET_jjPNS3_14yyjson_mut_docE.exit, %_ZN6duckdb12_GLOBAL__N_113JSONConverter12VisitDecimalIiEEPN13duckdb_yyjson14yyjson_mut_valET_jjPNS3_14yyjson_mut_docE.exit, %_ZN6duckdb12_GLOBAL__N_113JSONConverter12VisitDecimalIlEEPN13duckdb_yyjson14yyjson_mut_valET_jjPNS3_14yyjson_mut_docE.exit, %_ZN6duckdb12_GLOBAL__N_113JSONConverter12VisitDecimalINS_9hugeint_tEEEPN13duckdb_yyjson14yyjson_mut_valET_jjPNS4_14yyjson_mut_docE.exit
  %.0 = phi ptr [ %.1.i.i, %_ZN6duckdb12_GLOBAL__N_113JSONConverter12VisitDecimalINS_9hugeint_tEEEPN13duckdb_yyjson14yyjson_mut_valET_jjPNS4_14yyjson_mut_docE.exit ], [ %.1.i.i41, %_ZN6duckdb12_GLOBAL__N_113JSONConverter12VisitDecimalIlEEPN13duckdb_yyjson14yyjson_mut_valET_jjPNS3_14yyjson_mut_docE.exit ], [ %.1.i.i68, %_ZN6duckdb12_GLOBAL__N_113JSONConverter12VisitDecimalIiEEPN13duckdb_yyjson14yyjson_mut_valET_jjPNS3_14yyjson_mut_docE.exit ], [ %.1.i.i101, %_ZN6duckdb12_GLOBAL__N_113JSONConverter12VisitDecimalIsEEPN13duckdb_yyjson14yyjson_mut_valET_jjPNS3_14yyjson_mut_docE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  ret ptr %.0

bb.bt:                                            ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZN6duckdb14VariantVisitorINS_12_GLOBAL__N_113JSONConverterEPN13duckdb_yyjson14yyjson_mut_valEE10VisitArrayIJRPNS3_14yyjson_mut_docEEEES5_RKNS_24UnifiedVariantVectorDataEmjDpOT_(ptr noundef nonnull align 8 dereferenceable(160) %0, i64 noundef %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !1760 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = tail call i64 @_ZN6duckdb12VariantUtils16DecodeNestedDataERKNS_24UnifiedVariantVectorDataEmj(ptr noundef nonnull align 8 dereferenceable(160) %0, i64 noundef %1, i32 noundef %2) ; 2 uses
  %.sroa.5.0.extract.shift = lshr i64 %i.b, 32
  %i.c = load ptr, ptr %3, align 8, !tbaa !193    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8, !tbaa !193
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN13duckdb_yyjsonL14yyjson_mut_arrEPNS_14yyjson_mut_docE.exit.i, label %bb.b, !prof !150

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !197
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !198  ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.c, label %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i.i, !prof !150

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = tail call noundef zeroext i1 @_ZN13duckdb_yyjson27unsafe_yyjson_val_pool_growEPNS_15yyjson_val_poolEPKNS_10yyjson_alcEm(ptr noundef nonnull %i.d, ptr noundef nonnull %i.i, i64 noundef 1), !inline_history !1755
  br i1 %i.j, label %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i.ithread-pre-split, label %_ZN13duckdb_yyjsonL14yyjson_mut_arrEPNS_14yyjson_mut_docE.exit.i, !prof !199

_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i.ithread-pre-split: ; preds = %bb.c
  %.pr = load ptr, ptr %i.d, align 8, !tbaa !198
  br label %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i.i

_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i.i: ; preds = %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i.ithread-pre-split, %bb.b
  %i.k = phi ptr [ %.pr, %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i.ithread-pre-split ], [ %i.g, %bb.b ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr %i.l, ptr %i.d, align 8, !tbaa !198
  %.not9.i.i.not = icmp eq ptr %i.k, null
  br i1 %.not9.i.i.not, label %_ZN13duckdb_yyjsonL14yyjson_mut_arrEPNS_14yyjson_mut_docE.exit.i, label %bb.d, !prof !200

bb.d:                                             ; preds = %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i.i
  store i64 6, ptr %i.k, align 8, !tbaa !202
  br label %_ZN13duckdb_yyjsonL14yyjson_mut_arrEPNS_14yyjson_mut_docE.exit.i

_ZN13duckdb_yyjsonL14yyjson_mut_arrEPNS_14yyjson_mut_docE.exit.i: ; preds = %bb.c, %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i.i, %bb.a, %bb.d
  %.1.i.i = phi ptr [ %i.k, %bb.d ], [ null, %bb.a ], [ null, %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i.i ], [ null, %bb.c ] ; 5 uses
  %i.m = and i64 %i.b, 4294967295                 ; 4 uses
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %_ZNSt6vectorIPN13duckdb_yyjson14yyjson_mut_valESaIS2_EED2Ev.exit, label %_ZNSt12_Vector_baseIPN13duckdb_yyjson14yyjson_mut_valESaIS2_EE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseIPN13duckdb_yyjson14yyjson_mut_valESaIS2_EE11_M_allocateEm.exit.i.i: ; preds = %_ZN13duckdb_yyjsonL14yyjson_mut_arrEPNS_14yyjson_mut_docE.exit.i
  %i.n = shl nuw nsw i64 %i.m, 3
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #27, !noalias !1761, !inline_history !1758 ; 3 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.m
  br label %.lr.ph

_ZN6duckdb14VariantVisitorINS_12_GLOBAL__N_113JSONConverterEPN13duckdb_yyjson14yyjson_mut_valEE15VisitArrayItemsIS5_JRPNS3_14yyjson_mut_docEEEENSt9enable_ifIXntsr3std7is_voidIT_EE5valueENS_6vectorISC_Lb1ESaISC_EEEE4typeERKNS_24UnifiedVariantVectorDataEmRKNS_17VariantNestedDataEDpOT0_.exit.preheader: ; preds = %_ZNSt6vectorIPN13duckdb_yyjson14yyjson_mut_valESaIS2_EE12emplace_backIJS2_EEEvDpOT_.exit.i
  %.not2846 = icmp eq ptr %.sroa.011.4, %.sroa.11.2
  br i1 %.not2846, label %_ZN6duckdb12_GLOBAL__N_113JSONConverter10VisitArrayERKNS_24UnifiedVariantVectorDataEmRKNS_17VariantNestedDataEPN13duckdb_yyjson14yyjson_mut_docE.exit, label %.lr.ph48

.lr.ph48:                                         ; preds = %_ZN6duckdb14VariantVisitorINS_12_GLOBAL__N_113JSONConverterEPN13duckdb_yyjson14yyjson_mut_valEE15VisitArrayItemsIS5_JRPNS3_14yyjson_mut_docEEEENSt9enable_ifIXntsr3std7is_voidIT_EE5valueENS_6vectorISC_Lb1ESaISC_EEEE4typeERKNS_24UnifiedVariantVectorDataEmRKNS_17VariantNestedDataEDpOT0_.exit.preheader
  %.not.i9.i = icmp eq ptr %.1.i.i, null
  %i.q = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8 ; 2 uses
  br i1 %.not.i9.i, label %_ZN6duckdb12_GLOBAL__N_113JSONConverter10VisitArrayERKNS_24UnifiedVariantVectorDataEmRKNS_17VariantNestedDataEPN13duckdb_yyjson14yyjson_mut_docE.exit, label %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit.i.preheader

_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit.i.preheader: ; preds = %.lr.ph48
  %.pre = load i64, ptr %.1.i.i, align 8, !tbaa !277
  br label %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit.i

.lr.ph:                                           ; preds = %_ZNSt12_Vector_baseIPN13duckdb_yyjson14yyjson_mut_valESaIS2_EE11_M_allocateEm.exit.i.i, %_ZNSt6vectorIPN13duckdb_yyjson14yyjson_mut_valESaIS2_EE12emplace_backIJS2_EEEvDpOT_.exit.i
  %.0.i44 = phi i64 [ %i.ai, %_ZNSt6vectorIPN13duckdb_yyjson14yyjson_mut_valESaIS2_EE12emplace_backIJS2_EEEvDpOT_.exit.i ], [ 0, %_ZNSt12_Vector_baseIPN13duckdb_yyjson14yyjson_mut_valESaIS2_EE11_M_allocateEm.exit.i.i ] ; 2 uses
  %.sroa.18.143 = phi ptr [ %.sroa.18.2, %_ZNSt6vectorIPN13duckdb_yyjson14yyjson_mut_valESaIS2_EE12emplace_backIJS2_EEEvDpOT_.exit.i ], [ %i.p, %_ZNSt12_Vector_baseIPN13duckdb_yyjson14yyjson_mut_valESaIS2_EE11_M_allocateEm.exit.i.i ] ; 3 uses
  %.sroa.11.142 = phi ptr [ %.sroa.11.2, %_ZNSt6vectorIPN13duckdb_yyjson14yyjson_mut_valESaIS2_EE12emplace_backIJS2_EEEvDpOT_.exit.i ], [ %i.o, %_ZNSt12_Vector_baseIPN13duckdb_yyjson14yyjson_mut_valESaIS2_EE11_M_allocateEm.exit.i.i ] ; 3 uses
  %.sroa.011.141 = phi ptr [ %.sroa.011.4, %_ZNSt6vectorIPN13duckdb_yyjson14yyjson_mut_valESaIS2_EE12emplace_backIJS2_EEEvDpOT_.exit.i ], [ %i.o, %_ZNSt12_Vector_baseIPN13duckdb_yyjson14yyjson_mut_valESaIS2_EE11_M_allocateEm.exit.i.i ] ; 7 uses
  %i.r = add nuw nsw i64 %.0.i44, %.sroa.5.0.extract.shift
  %i.s = invoke noundef i32 @_ZNK6duckdb24UnifiedVariantVectorData14GetValuesIndexEmm(ptr noundef nonnull align 8 dereferenceable(160) %0, i64 noundef %1, i64 noundef %i.r)
          to label %bb.e unwind label %.loopexit.split-lp30.loopexit.split-lp, !noalias !1761, !inline_history !1758

bb.e:                                             ; preds = %.lr.ph
  %i.t = invoke fastcc noundef ptr @_ZN6duckdb14VariantVisitorINS_12_GLOBAL__N_113JSONConverterEPN13duckdb_yyjson14yyjson_mut_valEE5VisitIJRPNS3_14yyjson_mut_docEEEES5_RKNS_24UnifiedVariantVectorDataEmjDpOT_(ptr noundef nonnull align 8 dereferenceable(160) %0, i64 noundef %1, i32 noundef %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.f unwind label %.loopexit.split-lp30.loopexit.split-lp, !noalias !1761, !inline_history !1758 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %.not.i.i5 = icmp eq ptr %.sroa.11.142, %.sroa.18.143
  br i1 %.not.i.i5, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.t, ptr %.sroa.11.142, align 8, !tbaa !307, !noalias !1761
  br label %_ZNSt6vectorIPN13duckdb_yyjson14yyjson_mut_valESaIS2_EE12emplace_backIJS2_EEEvDpOT_.exit.i

bb.h:                                             ; preds = %bb.f
  %i.u = ptrtoint ptr %.sroa.18.143 to i64
  %i.v = ptrtoint ptr %.sroa.011.141 to i64
  %i.w = sub i64 %i.u, %i.v                       ; 5 uses
  %i.x = icmp eq i64 %i.w, 9223372036854775800
  br i1 %i.x, label %bb.i, label %_ZNKSt6vectorIPN13duckdb_yyjson14yyjson_mut_valESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #26
          to label %.noexc19.i unwind label %.loopexit.split-lp30.loopexit.split-lp, !noalias !1761, !inline_history !1758

.noexc19.i:                                       ; preds = %bb.i
  unreachable

_ZNKSt6vectorIPN13duckdb_yyjson14yyjson_mut_valESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.h
  %i.y = ashr exact i64 %i.w, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.y, i64 1)
  %i.z = add nsw i64 %.sroa.speculated.i.i.i.i, %i.y ; 2 uses
  %i.aa = icmp ult i64 %i.z, %i.y
  %i.ab = tail call i64 @llvm.umin.i64(i64 %i.z, i64 1152921504606846975)
  %i.ac = select i1 %i.aa, i64 1152921504606846975, i64 %i.ab ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ac, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ad = shl nuw nsw i64 %i.ac, 3
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #27
          to label %.noexc20.i unwind label %.loopexit.split-lp30.loopexit.split-lp, !noalias !1761, !inline_history !1758 ; 4 uses

.noexc20.i:                                       ; preds = %_ZNKSt6vectorIPN13duckdb_yyjson14yyjson_mut_valESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 %i.w ; 2 uses
  store ptr %i.t, ptr %i.af, align 8, !tbaa !307, !noalias !1761
  %i.ag = icmp sgt i64 %i.w, 0
  br i1 %i.ag, label %bb.j, label %_ZNSt6vectorIPN13duckdb_yyjson14yyjson_mut_valESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.j:                                             ; preds = %.noexc20.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr align 8 %.sroa.011.141, i64 %i.w, i1 false), !noalias !1761
  br label %_ZNSt6vectorIPN13duckdb_yyjson14yyjson_mut_valESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPN13duckdb_yyjson14yyjson_mut_valESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.j, %.noexc20.i
  %.not.i17.i.i.i = icmp eq ptr %.sroa.011.141, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN13duckdb_yyjson14yyjson_mut_valESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIPN13duckdb_yyjson14yyjson_mut_valESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.011.141) #25, !noalias !1761, !inline_history !1758
  br label %_ZNSt6vectorIPN13duckdb_yyjson14yyjson_mut_valESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN13duckdb_yyjson14yyjson_mut_valESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.k, %_ZNSt6vectorIPN13duckdb_yyjson14yyjson_mut_valESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ac
  br label %_ZNSt6vectorIPN13duckdb_yyjson14yyjson_mut_valESaIS2_EE12emplace_backIJS2_EEEvDpOT_.exit.i

_ZNSt6vectorIPN13duckdb_yyjson14yyjson_mut_valESaIS2_EE12emplace_backIJS2_EEEvDpOT_.exit.i: ; preds = %_ZNSt6vectorIPN13duckdb_yyjson14yyjson_mut_valESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.g
  %.sroa.011.4 = phi ptr [ %i.ae, %_ZNSt6vectorIPN13duckdb_yyjson14yyjson_mut_valESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.011.141, %bb.g ] ; 5 uses
  %.pn = phi ptr [ %i.af, %_ZNSt6vectorIPN13duckdb_yyjson14yyjson_mut_valESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.11.142, %bb.g ] ; 2 uses
  %.sroa.18.2 = phi ptr [ %i.ah, %_ZNSt6vectorIPN13duckdb_yyjson14yyjson_mut_valESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.18.143, %bb.g ]
  %.sroa.11.2 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 2 uses
  %i.ai = add nuw nsw i64 %.0.i44, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ai, %i.m
  br i1 %exitcond.not, label %_ZN6duckdb14VariantVisitorINS_12_GLOBAL__N_113JSONConverterEPN13duckdb_yyjson14yyjson_mut_valEE15VisitArrayItemsIS5_JRPNS3_14yyjson_mut_docEEEENSt9enable_ifIXntsr3std7is_voidIT_EE5valueENS_6vectorISC_Lb1ESaISC_EEEE4typeERKNS_24UnifiedVariantVectorDataEmRKNS_17VariantNestedDataEDpOT0_.exit.preheader, label %.lr.ph, !llvm.loop !1759

.loopexit.split-lp30.loopexit.split-lp:           ; preds = %_ZNKSt6vectorIPN13duckdb_yyjson14yyjson_mut_valESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.e, %.lr.ph, %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i21.i = icmp eq ptr %.sroa.011.141, null
  br i1 %.not.i.i.i21.i, label %_ZNSt6vectorIPN13duckdb_yyjson14yyjson_mut_valESaIS2_EED2Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %.loopexit.split-lp30.loopexit.split-lp
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.011.141) #25, !noalias !1761, !inline_history !1758
  br label %_ZNSt6vectorIPN13duckdb_yyjson14yyjson_mut_valESaIS2_EED2Ev.exit.i

_ZNSt6vectorIPN13duckdb_yyjson14yyjson_mut_valESaIS2_EED2Ev.exit.i: ; preds = %bb.l, %.loopexit.split-lp30.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp

_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit.i: ; preds = %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit.i.preheader, %_ZN13duckdb_yyjsonL21yyjson_mut_arr_appendEPNS_14yyjson_mut_valES1_.exit.i
  %i.aj = phi i64 [ %i.av, %_ZN13duckdb_yyjsonL21yyjson_mut_arr_appendEPNS_14yyjson_mut_valES1_.exit.i ], [ %.pre, %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit.i.preheader ] ; 5 uses
  %.sroa.08.047 = phi ptr [ %i.aw, %_ZN13duckdb_yyjsonL21yyjson_mut_arr_appendEPNS_14yyjson_mut_valES1_.exit.i ], [ %.sroa.011.4, %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit.i.preheader ] ; 3 uses
  %i.ak = load ptr, ptr %.sroa.08.047, align 8, !tbaa !307 ; 5 uses
  %i.al = and i64 %i.aj, 7
  %i.am = icmp eq i64 %i.al, 6
  %i.an = icmp ne ptr %i.ak, null
  %i.ao = and i1 %i.an, %i.am
  br i1 %i.ao, label %bb.m, label %_ZN13duckdb_yyjsonL21yyjson_mut_arr_appendEPNS_14yyjson_mut_valES1_.exit.i, !prof !308

bb.m:                                             ; preds = %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit.i
  %4 = and i64 %i.aj, 254
  %5 = and i64 %i.aj, -256
  %i.ap = add i64 %5, 256
  %6 = or disjoint i64 %i.ap, %4                  ; 2 uses
  store i64 %6, ptr %.1.i.i, align 8, !tbaa !277
  %i.aq = icmp ult i64 %i.aj, 256
  br i1 %i.aq, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = load ptr, ptr %i.q, align 8, !tbaa !114
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !309
  store ptr %i.ak, ptr %i.as, align 8, !tbaa !309
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %.sink = phi ptr [ %i.at, %bb.n ], [ %i.ak, %bb.m ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr %.sink, ptr %i.au, align 8, !tbaa !309
  store ptr %i.ak, ptr %i.q, align 8, !tbaa !114
  br label %_ZN13duckdb_yyjsonL21yyjson_mut_arr_appendEPNS_14yyjson_mut_valES1_.exit.i

_ZN13duckdb_yyjsonL21yyjson_mut_arr_appendEPNS_14yyjson_mut_valES1_.exit.i: ; preds = %bb.o, %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit.i
  %i.av = phi i64 [ %6, %bb.o ], [ %i.aj, %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.08.047, i64 8
  %.not28 = icmp eq ptr %.sroa.08.047, %.pn
  br i1 %.not28, label %_ZN6duckdb12_GLOBAL__N_113JSONConverter10VisitArrayERKNS_24UnifiedVariantVectorDataEmRKNS_17VariantNestedDataEPN13duckdb_yyjson14yyjson_mut_docE.exit, label %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit.i

_ZN6duckdb12_GLOBAL__N_113JSONConverter10VisitArrayERKNS_24UnifiedVariantVectorDataEmRKNS_17VariantNestedDataEPN13duckdb_yyjson14yyjson_mut_docE.exit: ; preds = %_ZN13duckdb_yyjsonL21yyjson_mut_arr_appendEPNS_14yyjson_mut_valES1_.exit.i, %.lr.ph48, %_ZN6duckdb14VariantVisitorINS_12_GLOBAL__N_113JSONConverterEPN13duckdb_yyjson14yyjson_mut_valEE15VisitArrayItemsIS5_JRPNS3_14yyjson_mut_docEEEENSt9enable_ifIXntsr3std7is_voidIT_EE5valueENS_6vectorISC_Lb1ESaISC_EEEE4typeERKNS_24UnifiedVariantVectorDataEmRKNS_17VariantNestedDataEDpOT0_.exit.preheader
  %.not.i.i.i = icmp eq ptr %.sroa.011.4, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN13duckdb_yyjson14yyjson_mut_valESaIS2_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN6duckdb12_GLOBAL__N_113JSONConverter10VisitArrayERKNS_24UnifiedVariantVectorDataEmRKNS_17VariantNestedDataEPN13duckdb_yyjson14yyjson_mut_docE.exit
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.011.4) #25
  br label %_ZNSt6vectorIPN13duckdb_yyjson14yyjson_mut_valESaIS2_EED2Ev.exit

_ZNSt6vectorIPN13duckdb_yyjson14yyjson_mut_valESaIS2_EED2Ev.exit: ; preds = %_ZN13duckdb_yyjsonL14yyjson_mut_arrEPNS_14yyjson_mut_docE.exit.i, %_ZN6duckdb12_GLOBAL__N_113JSONConverter10VisitArrayERKNS_24UnifiedVariantVectorDataEmRKNS_17VariantNestedDataEPN13duckdb_yyjson14yyjson_mut_docE.exit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %.1.i.i
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZN6duckdb14VariantVisitorINS_12_GLOBAL__N_113JSONConverterEPN13duckdb_yyjson14yyjson_mut_valEE11VisitObjectIJRPNS3_14yyjson_mut_docEEEES5_RKNS_24UnifiedVariantVectorDataEmjDpOT_(ptr noundef nonnull align 8 dereferenceable(160) %0, i64 noundef %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !1770 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.duckdb::vector.174", align 8 ; 13 uses
  %i.d = tail call i64 @_ZN6duckdb12VariantUtils16DecodeNestedDataERKNS_24UnifiedVariantVectorDataEmj(ptr noundef nonnull align 8 dereferenceable(160) %0, i64 noundef %1, i32 noundef %2) ; 2 uses
  %.sroa.4.0.extract.shift = lshr i64 %i.d, 32
  %i.e = load ptr, ptr %3, align 8, !tbaa !193    ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.e, ptr %i.c, align 8, !tbaa !193
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZN13duckdb_yyjsonL14yyjson_mut_objEPNS_14yyjson_mut_docE.exit.i, label %bb.b, !prof !150

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 80 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !197
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !198  ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i12.i, !prof !150

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = tail call noundef zeroext i1 @_ZN13duckdb_yyjson27unsafe_yyjson_val_pool_growEPNS_15yyjson_val_poolEPKNS_10yyjson_alcEm(ptr noundef nonnull %i.f, ptr noundef nonnull %i.k, i64 noundef 1), !inline_history !1762
  br i1 %i.l, label %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i12.ithread-pre-split, label %_ZN13duckdb_yyjsonL14yyjson_mut_objEPNS_14yyjson_mut_docE.exit.i, !prof !199

_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i12.ithread-pre-split: ; preds = %bb.c
  %.pr = load ptr, ptr %i.f, align 8, !tbaa !198
  br label %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i12.i

_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i12.i: ; preds = %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i12.ithread-pre-split, %bb.b
  %i.m = phi ptr [ %.pr, %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i12.ithread-pre-split ], [ %i.i, %bb.b ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %i.n, ptr %i.f, align 8, !tbaa !198
  %.not9.i.i.not = icmp eq ptr %i.m, null
  br i1 %.not9.i.i.not, label %_ZN13duckdb_yyjsonL14yyjson_mut_objEPNS_14yyjson_mut_docE.exit.i, label %bb.d, !prof !200

bb.d:                                             ; preds = %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i12.i
  store i64 7, ptr %i.m, align 8, !tbaa !202
  br label %_ZN13duckdb_yyjsonL14yyjson_mut_objEPNS_14yyjson_mut_docE.exit.i

_ZN13duckdb_yyjsonL14yyjson_mut_objEPNS_14yyjson_mut_docE.exit.i: ; preds = %bb.c, %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i12.i, %bb.a, %bb.d
  %.1.i14.i = phi ptr [ %i.m, %bb.d ], [ null, %bb.a ], [ null, %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i12.i ], [ null, %bb.c ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1771)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !alias.scope !1771
  %i.o = and i64 %i.d, 4294967295                 ; 2 uses
  %.not72 = icmp eq i64 %i.o, 0
  br i1 %.not72, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN13duckdb_yyjson14yyjson_mut_valEESaISA_EED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN13duckdb_yyjsonL14yyjson_mut_objEPNS_14yyjson_mut_docE.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.026.i58 = phi i64 [ 0, %.lr.ph ], [ %i.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 2 uses
  %i.t = add nuw nsw i64 %.026.i58, %.sroa.4.0.extract.shift ; 2 uses
  %i.u = invoke noundef i32 @_ZNK6duckdb24UnifiedVariantVectorData14GetValuesIndexEmm(ptr noundef nonnull align 8 dereferenceable(160) %0, i64 noundef %1, i64 noundef %i.t)
          to label %bb.f unwind label %bb.p, !inline_history !1765

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24, !noalias !1771
  %i.v = invoke fastcc noundef ptr @_ZN6duckdb14VariantVisitorINS_12_GLOBAL__N_113JSONConverterEPN13duckdb_yyjson14yyjson_mut_valEE5VisitIJRPNS3_14yyjson_mut_docEEEES5_RKNS_24UnifiedVariantVectorDataEmjDpOT_(ptr noundef nonnull align 8 dereferenceable(160) %0, i64 noundef %1, i32 noundef %i.u, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.g unwind label %bb.q, !inline_history !1765

bb.g:                                             ; preds = %bb.f
  store ptr %i.v, ptr %i.b, align 8, !tbaa !307, !noalias !1771
  %i.w = invoke noundef i32 @_ZNK6duckdb24UnifiedVariantVectorData12GetKeysIndexEmm(ptr noundef nonnull align 8 dereferenceable(160) %0, i64 noundef %1, i64 noundef %i.t)
          to label %bb.h unwind label %bb.q, !inline_history !1765

bb.h:                                             ; preds = %bb.g
  %i.x = zext i32 %i.w to i64
  %i.y = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb24UnifiedVariantVectorData6GetKeyEmm(ptr noundef nonnull align 8 dereferenceable(160) %0, i64 noundef %1, i64 noundef %i.x)
          to label %bb.i unwind label %bb.q, !inline_history !1765 ; 3 uses

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !1771
  call void @llvm.experimental.noalias.scope.decl(metadata !1772)
  %i.z = load i32, ptr %i.y, align 8, !tbaa !114, !noalias !1772 ; 4 uses
  %i.aa = icmp ult i32 %i.z, 13
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !1772
  %i.ae = select i1 %i.aa, ptr %i.ab, ptr %i.ad   ; 2 uses
  %i.af = zext i32 %i.z to i64                    ; 2 uses
  store ptr %i.p, ptr %4, align 8, !tbaa !110, !alias.scope !1772, !noalias !1771
  %i.ag = icmp eq ptr %i.ae, null
  br i1 %i.ag, label %.noexc.i.i, label %bb.j

.noexc.i.i:                                       ; preds = %bb.i
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.1) #26
          to label %.noexc.i7 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !1765

.noexc.i7:                                        ; preds = %.noexc.i.i
  unreachable

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !1773
  store i64 %i.af, ptr %i.a, align 8, !tbaa !137, !noalias !1773
  %i.ah = icmp ugt i32 %i.z, 15
  br i1 %i.ah, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.j
  %i.ai = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc32.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !1765 ; 2 uses

.noexc32.i:                                       ; preds = %.noexc.i.i.i
  store ptr %i.ai, ptr %4, align 8, !tbaa !136, !alias.scope !1772, !noalias !1771
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !137, !noalias !1773
  store i64 %i.aj, ptr %i.p, align 8, !tbaa !114, !alias.scope !1772, !noalias !1771
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc32.i, %bb.j
  %i.ak = phi ptr [ %i.ai, %.noexc32.i ], [ %i.p, %bb.j ] ; 2 uses
  switch i32 %i.z, label %bb.l [
    i32 1, label %bb.k
    i32 0, label %_ZNK6duckdb8string_t9GetStringB5cxx11Ev.exit.i
  ]

bb.k:                                             ; preds = %._crit_edge.i.i.i.i
  %i.al = load i8, ptr %i.ab, align 4, !tbaa !114, !noalias !1772
  store i8 %i.al, ptr %i.ak, align 1, !tbaa !114
  br label %_ZNK6duckdb8string_t9GetStringB5cxx11Ev.exit.i

bb.l:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ak, ptr nonnull align 1 %i.ae, i64 %i.af, i1 false)
  br label %_ZNK6duckdb8string_t9GetStringB5cxx11Ev.exit.i

_ZNK6duckdb8string_t9GetStringB5cxx11Ev.exit.i:   ; preds = %bb.l, %bb.k, %._crit_edge.i.i.i.i
  %i.am = load i64, ptr %i.a, align 8, !tbaa !137, !noalias !1773 ; 2 uses
  store i64 %i.am, ptr %i.q, align 8, !tbaa !113, !alias.scope !1772, !noalias !1771
  %i.an = load ptr, ptr %4, align 8, !tbaa !136, !alias.scope !1772, !noalias !1771
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.am
  store i8 0, ptr %i.ao, align 1, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !1773
  %i.ap = load ptr, ptr %i.r, align 8, !tbaa !312, !alias.scope !1771 ; 8 uses
  %i.aq = load ptr, ptr %i.s, align 8, !tbaa !313, !alias.scope !1771
  %.not.i.i6 = icmp eq ptr %i.ap, %i.aq
  br i1 %.not.i.i6, label %bb.o, label %bb.m

bb.m:                                             ; preds = %_ZNK6duckdb8string_t9GetStringB5cxx11Ev.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 3 uses
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !110
  %i.as = load ptr, ptr %4, align 8, !tbaa !136, !noalias !1771 ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.p
  br i1 %i.at, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.au = load i64, ptr %i.q, align 8, !tbaa !113, !noalias !1771 ; 3 uses
  %i.av = icmp ult i64 %i.au, 16
  call void @llvm.assume(i1 %i.av)
  %i.aw = add nuw nsw i64 %i.au, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %i.p, i64 %i.aw, i1 false)
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN13duckdb_yyjson14yyjson_mut_valEESaISA_EE12emplace_backIJS6_S9_EEEvDpOT_.exit.i.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.m
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !136
  %i.ax = load i64, ptr %i.p, align 8, !tbaa !114, !noalias !1771
  store i64 %i.ax, ptr %i.ar, align 8, !tbaa !114
  %.pre = load i64, ptr %i.q, align 8, !tbaa !113, !noalias !1771
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN13duckdb_yyjson14yyjson_mut_valEESaISA_EE12emplace_backIJS6_S9_EEEvDpOT_.exit.i.thread

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN13duckdb_yyjson14yyjson_mut_valEESaISA_EE12emplace_backIJS6_S9_EEEvDpOT_.exit.i.thread: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.ay = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.au, %bb.n ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !113
  store ptr %i.p, ptr %4, align 8, !tbaa !136, !noalias !1771
  store i64 0, ptr %i.q, align 8, !tbaa !113, !noalias !1771
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.bb = load ptr, ptr %i.b, align 8, !tbaa !307, !noalias !1771
  store ptr %i.bb, ptr %i.ba, align 8, !tbaa !315
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  store ptr %i.bc, ptr %i.r, align 8, !tbaa !312, !alias.scope !1771
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.o:                                             ; preds = %_ZNK6duckdb8string_t9GetStringB5cxx11Ev.exit.i
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN13duckdb_yyjson14yyjson_mut_valEESaISA_EE17_M_realloc_insertIJS6_S9_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
end_hunk_0
