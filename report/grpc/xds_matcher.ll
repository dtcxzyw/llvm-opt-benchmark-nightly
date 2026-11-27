Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/xds_matcher?download=true
inline.NumInlined: 2250
inline.NumDeleted: 1171
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK9grpc_core10XdsMatcher7OnMatch11FindMatchesERKNS0_12MatchContextERN4absl12lts_2025051213InlinedVectorIPNS0_6ActionELm1ESaIS9_EEE:bb.a
  br label %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIbEEON9grpc_core12OverloadTypeIJZNKS5_10XdsMatcher7OnMatch11FindMatchesERKNS7_12MatchContextERN4absl12lts_2025051213InlinedVectorIPNS7_6ActionELm1ESaISG_EEEE3$_0ZNKS8_11FindMatchesESB_SJ_E3$_1EEERKSt7variantIJSt10unique_ptrISF_St14default_deleteISF_EESP_IS7_SQ_IS7_EEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESN_SX_.exit.i.i.i"

"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIbEEON9grpc_core12OverloadTypeIJZNKS5_10XdsMatcher7OnMatch11FindMatchesERKNS7_12MatchContextERN4absl12lts_2025051213InlinedVectorIPNS7_6ActionELm1ESaISG_EEEE3$_0ZNKS8_11FindMatchesESB_SJ_E3$_1EEERKSt7variantIJSt10unique_ptrISF_St14default_deleteISF_EESP_IS7_SQ_IS7_EEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESN_SX_.exit.i.i.i": ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIbEEON9grpc_core12OverloadTypeIJZNKS5_10XdsMatcher7OnMatch11FindMatchesERKNS7_12MatchContextERN4absl12lts_2025051213InlinedVectorIPNS7_6ActionELm1ESaISG_EEEE3$_0ZNKS8_11FindMatchesESB_SJ_E3$_1EEERKSt7variantIJSt10unique_ptrISF_St14default_deleteISF_EESP_IS7_SQ_IS7_EEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SX_.exit.sink.split.i.i.i"

bb.e:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %.val, align 8, !tbaa !41
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(8) %.val, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2), !inline_history !126
  br i1 %i.p, label %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIbEEON9grpc_core12OverloadTypeIJZNKS5_10XdsMatcher7OnMatch11FindMatchesERKNS7_12MatchContextERN4absl12lts_2025051213InlinedVectorIPNS7_6ActionELm1ESaISG_EEEE3$_0ZNKS8_11FindMatchesESB_SJ_E3$_1EEERKSt7variantIJSt10unique_ptrISF_St14default_deleteISF_EESP_IS7_SQ_IS7_EEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SX_.exit.sink.split.i.i.i", label %"_ZN9grpc_core5MatchIJZNKS_10XdsMatcher7OnMatch11FindMatchesERKNS1_12MatchContextERN4absl12lts_2025051213InlinedVectorIPNS1_6ActionELm1ESaISA_EEEE3$_0ZNKS2_11FindMatchesES5_SD_E3$_1ESt10unique_ptrIS9_St14default_deleteIS9_EEJSG_IS1_SH_IS1_EEEEEDTclclsr3stdE7declvalINS_12OverloadTypeIJDpT_EEEEEclsr3stdE7declvalIT0_EEEERKSt7variantIJSQ_DpT1_EESO_.exit"

"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIbEEON9grpc_core12OverloadTypeIJZNKS5_10XdsMatcher7OnMatch11FindMatchesERKNS7_12MatchContextERN4absl12lts_2025051213InlinedVectorIPNS7_6ActionELm1ESaISG_EEEE3$_0ZNKS8_11FindMatchesESB_SJ_E3$_1EEERKSt7variantIJSt10unique_ptrISF_St14default_deleteISF_EESP_IS7_SQ_IS7_EEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SX_.exit.sink.split.i.i.i": ; preds = %bb.e, %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIbEEON9grpc_core12OverloadTypeIJZNKS5_10XdsMatcher7OnMatch11FindMatchesERKNS7_12MatchContextERN4absl12lts_2025051213InlinedVectorIPNS7_6ActionELm1ESaISG_EEEE3$_0ZNKS8_11FindMatchesESB_SJ_E3$_1EEERKSt7variantIJSt10unique_ptrISF_St14default_deleteISF_EESP_IS7_SQ_IS7_EEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESN_SX_.exit.i.i.i"
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i8, ptr %i.q, align 8, !tbaa !33, !range !34, !noundef !35
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = xor i1 %i.s, true
  br label %"_ZN9grpc_core5MatchIJZNKS_10XdsMatcher7OnMatch11FindMatchesERKNS1_12MatchContextERN4absl12lts_2025051213InlinedVectorIPNS1_6ActionELm1ESaISA_EEEE3$_0ZNKS2_11FindMatchesES5_SD_E3$_1ESt10unique_ptrIS9_St14default_deleteIS9_EEJSG_IS1_SH_IS1_EEEEEDTclclsr3stdE7declvalINS_12OverloadTypeIJDpT_EEEEEclsr3stdE7declvalIT0_EEEERKSt7variantIJSQ_DpT1_EESO_.exit"

"_ZN9grpc_core5MatchIJZNKS_10XdsMatcher7OnMatch11FindMatchesERKNS1_12MatchContextERN4absl12lts_2025051213InlinedVectorIPNS1_6ActionELm1ESaISA_EEEE3$_0ZNKS2_11FindMatchesES5_SD_E3$_1ESt10unique_ptrIS9_St14default_deleteIS9_EEJSG_IS1_SH_IS1_EEEEEDTclclsr3stdE7declvalINS_12OverloadTypeIJDpT_EEEEEclsr3stdE7declvalIT0_EEEERKSt7variantIJSQ_DpT1_EESO_.exit": ; preds = %bb.e, %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIbEEON9grpc_core12OverloadTypeIJZNKS5_10XdsMatcher7OnMatch11FindMatchesERKNS7_12MatchContextERN4absl12lts_2025051213InlinedVectorIPNS7_6ActionELm1ESaISG_EEEE3$_0ZNKS8_11FindMatchesESB_SJ_E3$_1EEERKSt7variantIJSt10unique_ptrISF_St14default_deleteISF_EESP_IS7_SQ_IS7_EEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SX_.exit.sink.split.i.i.i"
  %.0.i.i.i = phi i1 [ false, %bb.e ], [ %i.t, %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIbEEON9grpc_core12OverloadTypeIJZNKS5_10XdsMatcher7OnMatch11FindMatchesERKNS7_12MatchContextERN4absl12lts_2025051213InlinedVectorIPNS7_6ActionELm1ESaISG_EEEE3$_0ZNKS8_11FindMatchesESB_SJ_E3$_1EEERKSt7variantIJSt10unique_ptrISF_St14default_deleteISF_EESP_IS7_SQ_IS7_EEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SX_.exit.sink.split.i.i.i" ]
  ret i1 %.0.i.i.i
}

; Function Attrs: mustprogress uwtable
define void @_ZNK9grpc_core10XdsMatcher7OnMatch13ForEachActionEN4absl12lts_2025051211FunctionRefIFvRKNS0_6ActionEEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(17) %0, ptr %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load i8, ptr %i.a, align 8
  %i.b = icmp eq i8 %.val2, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void %2(ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %.val), !inline_history !128
  br label %"_ZN9grpc_core5MatchIJZNKS_10XdsMatcher7OnMatch13ForEachActionEN4absl12lts_2025051211FunctionRefIFvRKNS1_6ActionEEEEE3$_0ZNKS2_13ForEachActionESA_E3$_1ESt10unique_ptrIS6_St14default_deleteIS6_EEJSD_IS1_SE_IS1_EEEEEDTclclsr3stdE7declvalINS_12OverloadTypeIJDpT_EEEEEclsr3stdE7declvalIT0_EEEERKSt7variantIJSN_DpT1_EESL_.exit"

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %.val, align 8, !tbaa !41
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %.val, ptr %1, ptr %2), !inline_history !129
  br label %"_ZN9grpc_core5MatchIJZNKS_10XdsMatcher7OnMatch13ForEachActionEN4absl12lts_2025051211FunctionRefIFvRKNS1_6ActionEEEEE3$_0ZNKS2_13ForEachActionESA_E3$_1ESt10unique_ptrIS6_St14default_deleteIS6_EEJSD_IS1_SE_IS1_EEEEEDTclclsr3stdE7declvalINS_12OverloadTypeIJDpT_EEEEEclsr3stdE7declvalIT0_EEEERKSt7variantIJSN_DpT1_EESL_.exit"

"_ZN9grpc_core5MatchIJZNKS_10XdsMatcher7OnMatch13ForEachActionEN4absl12lts_2025051211FunctionRefIFvRKNS1_6ActionEEEEE3$_0ZNKS2_13ForEachActionESA_E3$_1ESt10unique_ptrIS6_St14default_deleteIS6_EEJSD_IS1_SE_IS1_EEEEEDTclclsr3stdE7declvalINS_12OverloadTypeIJDpT_EEEEEclsr3stdE7declvalIT0_EEEERKSt7variantIJSN_DpT1_EESL_.exit": ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK9grpc_core14XdsMatcherList6EqualsERKNS_10XdsMatcherE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !41
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call { i64, ptr } %i.c(ptr noundef nonnull align 8 dereferenceable(64) %0)
  %i.e = extractvalue { i64, ptr } %i.d, 1
  %i.f = load ptr, ptr %1, align 8, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call { i64, ptr } %i.h(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.j = extractvalue { i64, ptr } %i.i, 1
  %.not16 = icmp eq ptr %i.e, %i.j
  br i1 %.not16, label %bb.b, label %_ZSteqIN9grpc_core10XdsMatcher7OnMatchES2_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS4_ERKSD_IS7_E.exit

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !59   ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !60   ; 3 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !59
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !60
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %.not = icmp eq i64 %i.q, %i.x
  br i1 %.not, label %.preheader, label %_ZSteqIN9grpc_core10XdsMatcher7OnMatchES2_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS4_ERKSD_IS7_E.exit

.preheader:                                       ; preds = %bb.b
  %.not1317.not = icmp eq ptr %i.m, %i.n
  br i1 %.not1317.not, label %.critedge, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.y = add nuw i64 %.018, 1                     ; 2 uses
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !59
  %i.aa = load ptr, ptr %i.k, align 8, !tbaa !60  ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 5
  %.not13 = icmp ult i64 %i.y, %i.ae
  br i1 %.not13, label %.lr.ph, label %.critedge, !llvm.loop !130

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %i.af = phi ptr [ %i.aa, %bb.c ], [ %i.n, %.preheader ]
  %.018 = phi i64 [ %i.y, %bb.c ], [ 0, %.preheader ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.af, i64 %.018
  %i.ah = load ptr, ptr %i.r, align 8, !tbaa !60
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.ah, i64 %.018
  %i.aj = tail call noundef zeroext i1 @_ZNK9grpc_core14XdsMatcherList12FieldMatchereqERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %i.ai)
  br i1 %i.aj, label %bb.c, label %_ZSteqIN9grpc_core10XdsMatcher7OnMatchES2_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS4_ERKSD_IS7_E.exit

.critedge:                                        ; preds = %bb.c, %.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.an = load i8, ptr %i.am, align 8, !tbaa !63, !range !34, !noundef !35 ; 2 uses
  %i.ao = trunc nuw i8 %i.an to i1
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !63, !range !34, !noundef !35
  %i.ar = icmp eq i8 %i.an, %i.aq                 ; 2 uses
  %brmerge.not.i = and i1 %i.ar, %i.ao
  br i1 %brmerge.not.i, label %bb.d, label %_ZSteqIN9grpc_core10XdsMatcher7OnMatchES2_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS4_ERKSD_IS7_E.exit

bb.d:                                             ; preds = %.critedge
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.at = load i8, ptr %i.as, align 8, !tbaa !33, !range !34, !noundef !35
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.av = load i8, ptr %i.au, align 8, !tbaa !33, !range !34, !noundef !35
  %.not.i.i = icmp eq i8 %i.at, %i.av
  br i1 %.not.i.i, label %bb.e, label %_ZSteqIN9grpc_core10XdsMatcher7OnMatchES2_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS4_ERKSD_IS7_E.exit

bb.e:                                             ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !36  ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !36
  %.not7.i.i = icmp eq i8 %i.ax, %i.az
  br i1 %.not7.i.i, label %bb.f, label %_ZSteqIN9grpc_core10XdsMatcher7OnMatchES2_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS4_ERKSD_IS7_E.exit

bb.f:                                             ; preds = %bb.e
  %.val.i.i = load ptr, ptr %i.ak, align 8        ; 4 uses
  switch i8 %i.ax, label %bb.g [
    i8 0, label %_ZSt3getISt10unique_ptrIN9grpc_core10XdsMatcher6ActionESt14default_deleteIS3_EEJS6_S0_IS2_S4_IS2_EEEERKT_RKSt7variantIJDpT0_EE.exit.i.i.i.i.i.i.i.i.i
    i8 1, label %_ZSt3getISt10unique_ptrIN9grpc_core10XdsMatcherESt14default_deleteIS2_EEJS0_INS2_6ActionES3_IS6_EES5_EERKT_RKSt7variantIJDpT0_EE.exit.i.i.i.i.i.i.i.i.i
  ]

_ZSt3getISt10unique_ptrIN9grpc_core10XdsMatcher6ActionESt14default_deleteIS3_EEJS6_S0_IS2_S4_IS2_EEEERKT_RKSt7variantIJDpT0_EE.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.f
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i, null ; 2 uses
  %i.ba = load ptr, ptr %i.al, align 8, !tbaa !39 ; 2 uses
  %.not.i7.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ba, null ; 2 uses
  %brmerge.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not.i7.i.i.i.i.i.i.i.i.i
  %.not.i7.mux.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i, i1 %.not.i7.i.i.i.i.i.i.i.i.i, i1 false
  br i1 %brmerge.i.i.i.i.i.i.i.i.i, label %_ZSteqIN9grpc_core10XdsMatcher7OnMatchES2_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS4_ERKSD_IS7_E.exit, label %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIbEEON9grpc_core12OverloadTypeIJZNKS5_10XdsMatcher7OnMatcheqERKS8_E3$_0ZNKS8_eqESA_E3$_1EEERKSt7variantIJSt10unique_ptrINS7_6ActionESt14default_deleteISH_EESG_IS7_SI_IS7_EEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SP_.exit.sink.split.i.i.i.i.i"

bb.g:                                             ; preds = %bb.f
  %i.bb = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.bb, align 8, !tbaa !41
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr @.str.26, ptr %i.bc, align 8, !tbaa !45
  tail call void @__cxa_throw(ptr nonnull %i.bb, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

_ZSt3getISt10unique_ptrIN9grpc_core10XdsMatcherESt14default_deleteIS2_EEJS0_INS2_6ActionES3_IS6_EES5_EERKT_RKSt7variantIJDpT0_EE.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.f
  %.not.i.i.i.i.i11.i.i.i.i.i = icmp eq ptr %.val.i.i, null ; 2 uses
  %i.bd = load ptr, ptr %i.al, align 8, !tbaa !47 ; 2 uses
  %.not.i7.i.i.i.i12.i.i.i.i.i = icmp eq ptr %i.bd, null ; 2 uses
  %brmerge.i.i.i.i13.i.i.i.i.i = select i1 %.not.i.i.i.i.i11.i.i.i.i.i, i1 true, i1 %.not.i7.i.i.i.i12.i.i.i.i.i
  %.not.i7.mux.i.i.i.i14.i.i.i.i.i = select i1 %.not.i.i.i.i.i11.i.i.i.i.i, i1 %.not.i7.i.i.i.i12.i.i.i.i.i, i1 false
  br i1 %brmerge.i.i.i.i13.i.i.i.i.i, label %_ZSteqIN9grpc_core10XdsMatcher7OnMatchES2_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS4_ERKSD_IS7_E.exit, label %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIbEEON9grpc_core12OverloadTypeIJZNKS5_10XdsMatcher7OnMatcheqERKS8_E3$_0ZNKS8_eqESA_E3$_1EEERKSt7variantIJSt10unique_ptrINS7_6ActionESt14default_deleteISH_EESG_IS7_SI_IS7_EEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SP_.exit.sink.split.i.i.i.i.i"

"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIbEEON9grpc_core12OverloadTypeIJZNKS5_10XdsMatcher7OnMatcheqERKS8_E3$_0ZNKS8_eqESA_E3$_1EEERKSt7variantIJSt10unique_ptrINS7_6ActionESt14default_deleteISH_EESG_IS7_SI_IS7_EEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SP_.exit.sink.split.i.i.i.i.i": ; preds = %_ZSt3getISt10unique_ptrIN9grpc_core10XdsMatcherESt14default_deleteIS2_EEJS0_INS2_6ActionES3_IS6_EES5_EERKT_RKSt7variantIJDpT0_EE.exit.i.i.i.i.i.i.i.i.i, %_ZSt3getISt10unique_ptrIN9grpc_core10XdsMatcher6ActionESt14default_deleteIS3_EEJS6_S0_IS2_S4_IS2_EEEERKT_RKSt7variantIJDpT0_EE.exit.i.i.i.i.i.i.i.i.i
  %.sink10.i.i.i.i.i = phi i64 [ 16, %_ZSt3getISt10unique_ptrIN9grpc_core10XdsMatcher6ActionESt14default_deleteIS3_EEJS6_S0_IS2_S4_IS2_EEEERKT_RKSt7variantIJDpT0_EE.exit.i.i.i.i.i.i.i.i.i ], [ 24, %_ZSt3getISt10unique_ptrIN9grpc_core10XdsMatcherESt14default_deleteIS2_EEJS0_INS2_6ActionES3_IS6_EES5_EERKT_RKSt7variantIJDpT0_EE.exit.i.i.i.i.i.i.i.i.i ]
  %.sink.i.i.i.i.i = phi ptr [ %i.ba, %_ZSt3getISt10unique_ptrIN9grpc_core10XdsMatcher6ActionESt14default_deleteIS3_EEJS6_S0_IS2_S4_IS2_EEEERKT_RKSt7variantIJDpT0_EE.exit.i.i.i.i.i.i.i.i.i ], [ %i.bd, %_ZSt3getISt10unique_ptrIN9grpc_core10XdsMatcherESt14default_deleteIS2_EEJS0_INS2_6ActionES3_IS6_EES5_EERKT_RKSt7variantIJDpT0_EE.exit.i.i.i.i.i.i.i.i.i ]
  %i.be = load ptr, ptr %.val.i.i, align 8, !tbaa !41
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %.sink10.i.i.i.i.i
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = tail call noundef zeroext i1 %i.bg(ptr noundef nonnull align 8 dereferenceable(8) %.val.i.i, ptr noundef nonnull align 8 dereferenceable(8) %.sink.i.i.i.i.i), !inline_history !0
  br label %_ZSteqIN9grpc_core10XdsMatcher7OnMatchES2_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS4_ERKSD_IS7_E.exit

_ZSteqIN9grpc_core10XdsMatcher7OnMatchES2_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS4_ERKSD_IS7_E.exit: ; preds = %.lr.ph, %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIbEEON9grpc_core12OverloadTypeIJZNKS5_10XdsMatcher7OnMatcheqERKS8_E3$_0ZNKS8_eqESA_E3$_1EEERKSt7variantIJSt10unique_ptrINS7_6ActionESt14default_deleteISH_EESG_IS7_SI_IS7_EEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SP_.exit.sink.split.i.i.i.i.i", %_ZSt3getISt10unique_ptrIN9grpc_core10XdsMatcherESt14default_deleteIS2_EEJS0_INS2_6ActionES3_IS6_EES5_EERKT_RKSt7variantIJDpT0_EE.exit.i.i.i.i.i.i.i.i.i, %_ZSt3getISt10unique_ptrIN9grpc_core10XdsMatcher6ActionESt14default_deleteIS3_EEJS6_S0_IS2_S4_IS2_EEEERKT_RKSt7variantIJDpT0_EE.exit.i.i.i.i.i.i.i.i.i, %bb.e, %bb.d, %.critedge, %bb.b, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %.not.i7.mux.i.i.i.i.i.i.i.i.i, %_ZSt3getISt10unique_ptrIN9grpc_core10XdsMatcher6ActionESt14default_deleteIS3_EEJS6_S0_IS2_S4_IS2_EEEERKT_RKSt7variantIJDpT0_EE.exit.i.i.i.i.i.i.i.i.i ], [ %i.ar, %.critedge ], [ %i.bh, %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIbEEON9grpc_core12OverloadTypeIJZNKS5_10XdsMatcher7OnMatcheqERKS8_E3$_0ZNKS8_eqESA_E3$_1EEERKSt7variantIJSt10unique_ptrINS7_6ActionESt14default_deleteISH_EESG_IS7_SI_IS7_EEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SP_.exit.sink.split.i.i.i.i.i" ], [ false, %bb.e ], [ false, %bb.d ], [ %.not.i7.mux.i.i.i.i14.i.i.i.i.i, %_ZSt3getISt10unique_ptrIN9grpc_core10XdsMatcherESt14default_deleteIS2_EEJS0_INS2_6ActionES3_IS6_EES5_EERKT_RKSt7variantIJDpT0_EE.exit.i.i.i.i.i.i.i.i.i ], [ false, %.lr.ph ]
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define void @_ZNK9grpc_core14XdsMatcherList8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !49
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.a, ptr noundef nonnull align 1 dereferenceable(15) @.str.5, i64 15, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 15, ptr %i.b, align 8, !tbaa !53
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 0, ptr %i.c, align 1, !tbaa !50
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !64   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !64   ; 3 uses
  %.not44 = icmp eq ptr %i.e, %i.g
  br i1 %.not44, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  invoke void @_ZNK9grpc_core14XdsMatcherList12FieldMatcher8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %bb.c unwind label %.loopexit.split-lp51.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %2, align 8, !tbaa !54
  %i.k = load i64, ptr %i.h, align 8, !tbaa !53
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %i.k, ptr %i.j)
          to label %bb.d unwind label %.loopexit.split-lp55.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %2, align 8, !tbaa !54     ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.i
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %bb.d
  %i.n = load i64, ptr %i.i, align 8, !tbaa !50
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %.not.peel = icmp eq ptr %i.p, %i.g
  br i1 %.not.peel, label %._crit_edge, label %.peel.next

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.s = load i8, ptr %i.r, align 8, !tbaa !63, !range !34, !noundef !35
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.h, label %bb.n

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.040.045 = phi ptr [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel ] ; 2 uses
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 2, ptr nonnull @.str.6)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %.peel.next
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  invoke void @_ZNK9grpc_core14XdsMatcherList12FieldMatcher8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.040.045)
          to label %bb.f unwind label %.loopexit.split-lp51.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %2, align 8, !tbaa !54
  %i.v = load i64, ptr %i.h, align 8, !tbaa !53
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %i.v, ptr %i.u)
          to label %bb.g unwind label %.loopexit.split-lp55.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %bb.f
  %i.w = load ptr, ptr %2, align 8, !tbaa !54     ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.i
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.y = load i64, ptr %i.i, align 8, !tbaa !50
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.040.045, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.aa, %i.g
  br i1 %.not, label %._crit_edge, label %.peel.next, !llvm.loop !131

.loopexit.split-lp51.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.e, %bb.b
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

.loopexit.split-lp55.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.f, %bb.c
  %lpad.loopexit.split-lp84 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %2, align 8, !tbaa !54    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.i
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %.loopexit.split-lp55.loopexit.split-lp.loopexit.split-lp
  %i.ad = load i64, ptr %i.i, align 8, !tbaa !50
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %.loopexit.split-lp55.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp51.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  %.pn16 = phi { ptr, i32 } [ %lpad.loopexit.split-lp84, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp51.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp84, %.loopexit.split-lp55.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %.loopexit.split-lp

bb.h:                                             ; preds = %._crit_edge
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 14, ptr nonnull @.str.7)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZNK9grpc_core10XdsMatcher7OnMatch8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(17) %i.q)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.af = load ptr, ptr %3, align 8, !tbaa !54
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !53
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %i.ah, ptr %i.af)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ai = load ptr, ptr %3, align 8, !tbaa !54    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.k
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !50
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.n

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.peel.next, %bb.n, %bb.h
  %lpad.loopexit.split-lp80 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.l:                                             ; preds = %bb.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

bb.m:                                             ; preds = %bb.j
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = load ptr, ptr %3, align 8, !tbaa !54    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.m
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !50
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29, %bb.l
  %.pn = phi { ptr, i32 } [ %i.an, %bb.l ], [ %i.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29 ], [ %i.ao, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %.loopexit.split-lp

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %._crit_edge
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 1, ptr nonnull @.str.4)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
  %.pn16.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31 ], [ %.pn16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23 ], [ %lpad.loopexit.split-lp80, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.au = load ptr, ptr %0, align 8, !tbaa !54    ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.a
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %.loopexit.split-lp
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !50
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

bb.o:                                             ; preds = %bb.n
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  resume { ptr, i32 } %.pn16.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK9grpc_core14XdsMatcherList12FieldMatcher8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [5 x %"class.std::basic_string_view"], align 8 ; 13 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.a = load ptr, ptr %1, align 8, !tbaa !67     ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8
  call void %i.d(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.e = load ptr, ptr %3, align 8, !tbaa !54
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZNK9grpc_core10XdsMatcher7OnMatch8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(17) %i.h)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %4, align 8, !tbaa !54
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24, !noalias !134
  store i64 11, ptr %2, align 8, !noalias !134
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.13, ptr %i.l, align 8, !noalias !134
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.g, ptr %i.m, align 8, !noalias !134
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.e, ptr %i.n, align 8, !noalias !134
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 11, ptr %i.o, align 8, !noalias !134
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr @.str.14, ptr %i.p, align 8, !noalias !134
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 %i.k, ptr %i.q, align 8, !noalias !134
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr %i.i, ptr %i.r, align 8, !noalias !134
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 1, ptr %i.s, align 8, !noalias !134
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 72
  store ptr @.str.4, ptr %i.t, align 8, !noalias !134
  invoke void @_ZN4absl12lts_2025051216strings_internal9CatPiecesB5cxx11ESt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nonnull %2, i64 5)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
end_hunk_0
begin_hunk_1_@_ZNK9grpc_core14XdsMatcherList11FindMatchesERKNS_10XdsMatcher12MatchContextERN4absl12lts_2025051213InlinedVectorIPNS1_6ActionELm1ESaIS9_EEE:bb.a
  %i.as = add i64 %i.al, 2
  store i64 %i.as, ptr %2, align 8, !tbaa !55
  br label %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIbEEON9grpc_core12OverloadTypeIJZNKS5_10XdsMatcher7OnMatch11FindMatchesERKNS7_12MatchContextERN4absl12lts_2025051213InlinedVectorIPNS7_6ActionELm1ESaISG_EEEE3$_0ZNKS8_11FindMatchesESB_SJ_E3$_1EEERKSt7variantIJSt10unique_ptrISF_St14default_deleteISF_EESP_IS7_SQ_IS7_EEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESN_SX_.exit.i.i.i.i22"

bb.k:                                             ; preds = %bb.i
  %i.at = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2025051223inlined_vector_internal7StorageIPN9grpc_core10XdsMatcher6ActionELm1ESaIS6_EE15EmplaceBackSlowIJS6_EEERS6_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  br label %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIbEEON9grpc_core12OverloadTypeIJZNKS5_10XdsMatcher7OnMatch11FindMatchesERKNS7_12MatchContextERN4absl12lts_2025051213InlinedVectorIPNS7_6ActionELm1ESaISG_EEEE3$_0ZNKS8_11FindMatchesESB_SJ_E3$_1EEERKSt7variantIJSt10unique_ptrISF_St14default_deleteISF_EESP_IS7_SQ_IS7_EEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESN_SX_.exit.i.i.i.i22"

"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIbEEON9grpc_core12OverloadTypeIJZNKS5_10XdsMatcher7OnMatch11FindMatchesERKNS7_12MatchContextERN4absl12lts_2025051213InlinedVectorIPNS7_6ActionELm1ESaISG_EEEE3$_0ZNKS8_11FindMatchesESB_SJ_E3$_1EEERKSt7variantIJSt10unique_ptrISF_St14default_deleteISF_EESP_IS7_SQ_IS7_EEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESN_SX_.exit.i.i.i.i22": ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZNK9grpc_core10XdsMatcher7OnMatch11FindMatchesERKNS0_12MatchContextERN4absl12lts_2025051213InlinedVectorIPNS0_6ActionELm1ESaIS9_EEE.exit23

bb.l:                                             ; preds = %bb.h
  %i.au = load ptr, ptr %.val.i14, align 8, !tbaa !41
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = call noundef zeroext i1 %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %.val.i14, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2), !inline_history !1
  br i1 %i.ax, label %_ZNK9grpc_core10XdsMatcher7OnMatch11FindMatchesERKNS0_12MatchContextERN4absl12lts_2025051213InlinedVectorIPNS0_6ActionELm1ESaIS9_EEE.exit23, label %_ZNK9grpc_core10XdsMatcher7OnMatch11FindMatchesERKNS0_12MatchContextERN4absl12lts_2025051213InlinedVectorIPNS0_6ActionELm1ESaIS9_EEE.exit23.thread

_ZNK9grpc_core10XdsMatcher7OnMatch11FindMatchesERKNS0_12MatchContextERN4absl12lts_2025051213InlinedVectorIPNS0_6ActionELm1ESaIS9_EEE.exit23: ; preds = %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIbEEON9grpc_core12OverloadTypeIJZNKS5_10XdsMatcher7OnMatch11FindMatchesERKNS7_12MatchContextERN4absl12lts_2025051213InlinedVectorIPNS7_6ActionELm1ESaISG_EEEE3$_0ZNKS8_11FindMatchesESB_SJ_E3$_1EEERKSt7variantIJSt10unique_ptrISF_St14default_deleteISF_EESP_IS7_SQ_IS7_EEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESN_SX_.exit.i.i.i.i22", %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !33, !range !34, !noundef !35
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %_ZNK9grpc_core10XdsMatcher7OnMatch11FindMatchesERKNS0_12MatchContextERN4absl12lts_2025051213InlinedVectorIPNS0_6ActionELm1ESaIS9_EEE.exit23.thread, label %.loopexit

_ZNK9grpc_core10XdsMatcher7OnMatch11FindMatchesERKNS0_12MatchContextERN4absl12lts_2025051213InlinedVectorIPNS0_6ActionELm1ESaIS9_EEE.exit23.thread: ; preds = %bb.l, %_ZNK9grpc_core10XdsMatcher7OnMatch11FindMatchesERKNS0_12MatchContextERN4absl12lts_2025051213InlinedVectorIPNS0_6ActionELm1ESaIS9_EEE.exit23, %._crit_edge
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNK9grpc_core10XdsMatcher7OnMatch11FindMatchesERKNS0_12MatchContextERN4absl12lts_2025051213InlinedVectorIPNS0_6ActionELm1ESaIS9_EEE.exit, %_ZNK9grpc_core10XdsMatcher7OnMatch11FindMatchesERKNS0_12MatchContextERN4absl12lts_2025051213InlinedVectorIPNS0_6ActionELm1ESaIS9_EEE.exit23, %_ZNK9grpc_core10XdsMatcher7OnMatch11FindMatchesERKNS0_12MatchContextERN4absl12lts_2025051213InlinedVectorIPNS0_6ActionELm1ESaIS9_EEE.exit23.thread
  %.3 = phi i1 [ true, %_ZNK9grpc_core10XdsMatcher7OnMatch11FindMatchesERKNS0_12MatchContextERN4absl12lts_2025051213InlinedVectorIPNS0_6ActionELm1ESaIS9_EEE.exit23 ], [ false, %_ZNK9grpc_core10XdsMatcher7OnMatch11FindMatchesERKNS0_12MatchContextERN4absl12lts_2025051213InlinedVectorIPNS0_6ActionELm1ESaIS9_EEE.exit23.thread ], [ true, %_ZNK9grpc_core10XdsMatcher7OnMatch11FindMatchesERKNS0_12MatchContextERN4absl12lts_2025051213InlinedVectorIPNS0_6ActionELm1ESaIS9_EEE.exit ]
  ret i1 %.3
}

; Function Attrs: mustprogress uwtable
define void @_ZNK9grpc_core14XdsMatcherList13ForEachActionEN4absl12lts_2025051211FunctionRefIFvRKNS_10XdsMatcher6ActionEEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr %1, ptr %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !64   ; 2 uses
  %.not13 = icmp eq ptr %i.b, %i.d
  br i1 %.not13, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNK9grpc_core10XdsMatcher7OnMatch13ForEachActionEN4absl12lts_2025051211FunctionRefIFvRKNS0_6ActionEEEE.exit, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load i8, ptr %i.e, align 8, !tbaa !63, !range !34, !noundef !35
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %_ZNK9grpc_core10XdsMatcher7OnMatch13ForEachActionEN4absl12lts_2025051211FunctionRefIFvRKNS0_6ActionEEEE.exit9

.lr.ph:                                           ; preds = %bb.a, %_ZNK9grpc_core10XdsMatcher7OnMatch13ForEachActionEN4absl12lts_2025051211FunctionRefIFvRKNS0_6ActionEEEE.exit
  %.sroa.010.014 = phi ptr [ %i.n, %_ZNK9grpc_core10XdsMatcher7OnMatch13ForEachActionEN4absl12lts_2025051211FunctionRefIFvRKNS0_6ActionEEEE.exit ], [ %i.b, %bb.a ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.010.014, i64 8
  %.val.i = load ptr, ptr %i.h, align 8           ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.014, i64 16
  %.val2.i = load i8, ptr %i.i, align 8
  %i.j = icmp eq i8 %.val2.i, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  tail call void %2(ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %.val.i), !inline_history !2
  br label %_ZNK9grpc_core10XdsMatcher7OnMatch13ForEachActionEN4absl12lts_2025051211FunctionRefIFvRKNS0_6ActionEEEE.exit

bb.c:                                             ; preds = %.lr.ph
  %i.k = load ptr, ptr %.val.i, align 8, !tbaa !41
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(8) %.val.i, ptr %1, ptr %2), !inline_history !3
  br label %_ZNK9grpc_core10XdsMatcher7OnMatch13ForEachActionEN4absl12lts_2025051211FunctionRefIFvRKNS0_6ActionEEEE.exit

_ZNK9grpc_core10XdsMatcher7OnMatch13ForEachActionEN4absl12lts_2025051211FunctionRefIFvRKNS0_6ActionEEEE.exit: ; preds = %bb.b, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.010.014, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.n, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %._crit_edge
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i7 = load ptr, ptr %i.o, align 8          ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val2.i8 = load i8, ptr %i.p, align 8
  %i.q = icmp eq i8 %.val2.i8, 0
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void %2(ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %.val.i7), !inline_history !2
  br label %_ZNK9grpc_core10XdsMatcher7OnMatch13ForEachActionEN4absl12lts_2025051211FunctionRefIFvRKNS0_6ActionEEEE.exit9

bb.f:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %.val.i7, align 8, !tbaa !41
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(8) %.val.i7, ptr %1, ptr %2), !inline_history !3
  br label %_ZNK9grpc_core10XdsMatcher7OnMatch13ForEachActionEN4absl12lts_2025051211FunctionRefIFvRKNS0_6ActionEEEE.exit9

_ZNK9grpc_core10XdsMatcher7OnMatch13ForEachActionEN4absl12lts_2025051211FunctionRefIFvRKNS0_6ActionEEEE.exit9: ; preds = %bb.f, %bb.e, %._crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK9grpc_core14XdsMatcherList12AndPredicate6EqualsERKNS0_9PredicateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !41
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call { i64, ptr } %i.c(ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.e = extractvalue { i64, ptr } %i.d, 1
  %i.f = load ptr, ptr %1, align 8, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call { i64, ptr } %i.h(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.j = extractvalue { i64, ptr } %i.i, 1
  %.not15 = icmp eq ptr %i.e, %i.j
  br i1 %.not15, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !70   ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !71   ; 3 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !70
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !71
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %.not = icmp eq i64 %i.q, %i.x
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.b
  %.not1216 = icmp eq ptr %i.m, %i.n
  br i1 %.not1216, label %.loopexit, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.y = add nuw i64 %.017, 1                     ; 2 uses
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !70
  %i.aa = load ptr, ptr %i.k, align 8, !tbaa !71  ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 3
  %.not12.not = icmp ult i64 %i.y, %i.ae
  br i1 %.not12.not, label %.lr.ph, label %.loopexit, !llvm.loop !141

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %i.af = phi ptr [ %i.aa, %bb.c ], [ %i.n, %.preheader ]
  %.017 = phi i64 [ %i.y, %bb.c ], [ 0, %.preheader ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.017
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !67 ; 2 uses
  %i.ai = load ptr, ptr %i.r, align 8, !tbaa !71
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.017
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !67
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !41
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull align 8 dereferenceable(8) %i.ak) ; 3 uses
  br i1 %i.ao, label %bb.c, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.c, %.preheader, %bb.b, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %.preheader ], [ %i.ao, %bb.c ], [ %i.ao, %.lr.ph ]
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define void @_ZNK9grpc_core14XdsMatcherList12AndPredicate8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call fastcc void @_ZN9grpc_core12_GLOBAL__N_121PredicateListToStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEERKSt6vectorISt10unique_ptrINS_14XdsMatcherList9PredicateESt14default_deleteIS8_EESaISB_EE(ptr dead_on_unwind noalias writable align 8 %0, i64 3, ptr nonnull @.str.8, ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define internal fastcc void @_ZN9grpc_core12_GLOBAL__N_121PredicateListToStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEERKSt6vectorISt10unique_ptrINS_14XdsMatcherList9PredicateESt14default_deleteIS8_EESaISB_EE(ptr dead_on_unwind noalias nonnull writable align 8 %0, i64 %1, ptr %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !49
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !53
  store i8 0, ptr %i.a, align 8, !tbaa !50
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %1, ptr %2)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 1, ptr nonnull @.str)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %3, align 8, !tbaa !72     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !72   ; 3 uses
  %.not34 = icmp eq ptr %i.c, %i.e
  br i1 %.not34, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !67   ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !41
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.k = load ptr, ptr %i.j, align 8
  invoke void %i.k(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.e unwind label %.loopexit.split-lp41.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %4, align 8, !tbaa !54
  %i.m = load i64, ptr %i.f, align 8, !tbaa !53
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %i.m, ptr %i.l)
          to label %bb.f unwind label %.loopexit.split-lp45.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %4, align 8, !tbaa !54     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.g
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %bb.f
  %i.p = load i64, ptr %i.g, align 8, !tbaa !50
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.not.peel = icmp eq ptr %i.r, %i.e
  br i1 %.not.peel, label %._crit_edge, label %.peel.next

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %bb.c
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 1, ptr nonnull @.str.4)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.029.035 = phi ptr [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel ] ; 2 uses
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 2, ptr nonnull @.str.6)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %.peel.next
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.s = load ptr, ptr %.sroa.029.035, align 8, !tbaa !67 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !41
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load ptr, ptr %i.u, align 8
  invoke void %i.v(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.s)
          to label %bb.h unwind label %.loopexit.split-lp41.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.g
  %i.w = load ptr, ptr %4, align 8, !tbaa !54
  %i.x = load i64, ptr %i.f, align 8, !tbaa !53
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %i.x, ptr %i.w)
          to label %bb.i unwind label %.loopexit.split-lp45.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %bb.h
  %i.y = load ptr, ptr %4, align 8, !tbaa !54     ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.g
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.aa = load i64, ptr %i.g, align 8, !tbaa !50
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.029.035, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ac, %i.e
  br i1 %.not, label %._crit_edge, label %.peel.next, !llvm.loop !142

.loopexit.split-lp41.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.g, %bb.d
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

.loopexit.split-lp45.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.h, %bb.e
  %lpad.loopexit.split-lp70 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = load ptr, ptr %4, align 8, !tbaa !54    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.g
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %.loopexit.split-lp45.loopexit.split-lp.loopexit.split-lp
  %i.af = load i64, ptr %i.g, align 8, !tbaa !50
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %.loopexit.split-lp45.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp41.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp70, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp41.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp70, %.loopexit.split-lp45.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.peel.next, %bb.a, %bb.b, %._crit_edge
  %lpad.loopexit.split-lp66 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.j:                                             ; preds = %._crit_edge
  ret void

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22 ], [ %lpad.loopexit.split-lp66, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.ah = load ptr, ptr %0, align 8, !tbaa !54    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.a
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %.loopexit.split-lp
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !50
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK9grpc_core14XdsMatcherList12AndPredicate5MatchERKNS_10XdsMatcher12MatchContextE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !72   ; 2 uses
  %.not12 = icmp eq ptr %i.b, %i.d
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.09.013 = phi ptr [ %i.j, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.sroa.09.013, align 8, !tbaa !67 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.09.013, i64 8 ; 2 uses
  %.not = icmp ne ptr %i.j, %i.d
  %or.cond.not = select i1 %i.i, i1 %.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.not.lcssa = phi i1 [ true, %bb.a ], [ %i.i, %.lr.ph ]
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK9grpc_core14XdsMatcherList11OrPredicate6EqualsERKNS0_9PredicateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !41
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call { i64, ptr } %i.c(ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.e = extractvalue { i64, ptr } %i.d, 1
  %i.f = load ptr, ptr %1, align 8, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call { i64, ptr } %i.h(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.j = extractvalue { i64, ptr } %i.i, 1
  %.not15 = icmp eq ptr %i.e, %i.j
  br i1 %.not15, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !70   ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !71   ; 3 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !70
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !71
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %.not = icmp eq i64 %i.q, %i.x
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.b
  %.not1216 = icmp eq ptr %i.m, %i.n
  br i1 %.not1216, label %.loopexit, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.y = add nuw i64 %.017, 1                     ; 2 uses
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !70
  %i.aa = load ptr, ptr %i.k, align 8, !tbaa !71  ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 3
  %.not12.not = icmp ult i64 %i.y, %i.ae
  br i1 %.not12.not, label %.lr.ph, label %.loopexit, !llvm.loop !143

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %i.af = phi ptr [ %i.aa, %bb.c ], [ %i.n, %.preheader ]
  %.017 = phi i64 [ %i.y, %bb.c ], [ 0, %.preheader ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.017
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !67 ; 2 uses
  %i.ai = load ptr, ptr %i.r, align 8, !tbaa !71
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.017
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !67
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !41
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull align 8 dereferenceable(8) %i.ak) ; 3 uses
  br i1 %i.ao, label %bb.c, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.c, %.preheader, %bb.b, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %.preheader ], [ %i.ao, %bb.c ], [ %i.ao, %.lr.ph ]
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define void @_ZNK9grpc_core14XdsMatcherList11OrPredicate8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call fastcc void @_ZN9grpc_core12_GLOBAL__N_121PredicateListToStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEERKSt6vectorISt10unique_ptrINS_14XdsMatcherList9PredicateESt14default_deleteIS8_EESaISB_EE(ptr dead_on_unwind noalias writable align 8 %0, i64 2, ptr nonnull @.str.9, ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK9grpc_core14XdsMatcherList11OrPredicate5MatchERKNS_10XdsMatcher12MatchContextE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_1
