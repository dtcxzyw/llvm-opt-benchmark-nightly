Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/from_chars?download=true
inline.NumInlined: 530
inline.NumDeleted: 158
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN5boost8charconv10from_charsEPKcS2_RfNS0_12chars_formatE:bb.a
  %i.a = alloca float, align 4                    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !28
  %.not.i.i = icmp eq i32 %3, 4
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.insert.ext.i.i.i = zext i32 %3 to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.0.0.insert.ext.i.i.i, 197568495616
  %i.b = call { ptr, i32 } @_ZN5boost8charconv6detail10fast_float19from_chars_advancedIfcEENS0_19from_chars_result_tIT0_EEPKS5_S8_RT_NS2_15parse_options_tIS5_EE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i64 %.sroa.0.0.insert.insert.i.i.i) #13
  br label %_ZN5boost8charconv17from_chars_erangeEPKcS2_RfNS0_12chars_formatE.exit.i

bb.c:                                             ; preds = %bb.a
  %i.c = call { ptr, i32 } @_ZN5boost8charconv6detail21from_chars_float_implIfEENS0_19from_chars_result_tIcEEPKcS6_RT_NS0_12chars_formatE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 4) #13
  br label %_ZN5boost8charconv17from_chars_erangeEPKcS2_RfNS0_12chars_formatE.exit.i

_ZN5boost8charconv17from_chars_erangeEPKcS2_RfNS0_12chars_formatE.exit.i: ; preds = %bb.c, %bb.b
  %.pn.i.i = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.c, %bb.c ] ; 2 uses
  %i.d = extractvalue { ptr, i32 } %.pn.i.i, 1
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %_ZN12_GLOBAL__N_122from_chars_strict_implIfEEN5boost8charconv19from_chars_result_tIcEEPKcS6_RT_NS2_12chars_formatE.exit

bb.d:                                             ; preds = %_ZN5boost8charconv17from_chars_erangeEPKcS2_RfNS0_12chars_formatE.exit.i
  %i.f = load float, ptr %i.a, align 4, !tbaa !28
  store float %i.f, ptr %2, align 4, !tbaa !28
  br label %_ZN12_GLOBAL__N_122from_chars_strict_implIfEEN5boost8charconv19from_chars_result_tIcEEPKcS6_RT_NS2_12chars_formatE.exit

_ZN12_GLOBAL__N_122from_chars_strict_implIfEEN5boost8charconv19from_chars_result_tIcEEPKcS6_RT_NS2_12chars_formatE.exit: ; preds = %_ZN5boost8charconv17from_chars_erangeEPKcS2_RfNS0_12chars_formatE.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret { ptr, i32 } %.pn.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define { ptr, i32 } @_ZN5boost8charconv10from_charsEPKcS2_RdNS0_12chars_formatE(ptr noundef %0, ptr noundef %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %2, i32 noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !30
  %.not.i.i = icmp eq i32 %3, 4
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.insert.ext.i.i.i = zext i32 %3 to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.0.0.insert.ext.i.i.i, 197568495616
  %i.b = call { ptr, i32 } @_ZN5boost8charconv6detail10fast_float19from_chars_advancedIdcEENS0_19from_chars_result_tIT0_EEPKS5_S8_RT_NS2_15parse_options_tIS5_EE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 %.sroa.0.0.insert.insert.i.i.i) #13
  br label %_ZN5boost8charconv17from_chars_erangeEPKcS2_RdNS0_12chars_formatE.exit.i

bb.c:                                             ; preds = %bb.a
  %i.c = call { ptr, i32 } @_ZN5boost8charconv6detail21from_chars_float_implIdEENS0_19from_chars_result_tIcEEPKcS6_RT_NS0_12chars_formatE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef 4) #13
  br label %_ZN5boost8charconv17from_chars_erangeEPKcS2_RdNS0_12chars_formatE.exit.i

_ZN5boost8charconv17from_chars_erangeEPKcS2_RdNS0_12chars_formatE.exit.i: ; preds = %bb.c, %bb.b
  %.pn.i.i = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.c, %bb.c ] ; 2 uses
  %i.d = extractvalue { ptr, i32 } %.pn.i.i, 1
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %_ZN12_GLOBAL__N_122from_chars_strict_implIdEEN5boost8charconv19from_chars_result_tIcEEPKcS6_RT_NS2_12chars_formatE.exit

bb.d:                                             ; preds = %_ZN5boost8charconv17from_chars_erangeEPKcS2_RdNS0_12chars_formatE.exit.i
  %i.f = load double, ptr %i.a, align 8, !tbaa !30
  store double %i.f, ptr %2, align 8, !tbaa !30
  br label %_ZN12_GLOBAL__N_122from_chars_strict_implIdEEN5boost8charconv19from_chars_result_tIcEEPKcS6_RT_NS2_12chars_formatE.exit

_ZN12_GLOBAL__N_122from_chars_strict_implIdEEN5boost8charconv19from_chars_result_tIcEEPKcS6_RT_NS2_12chars_formatE.exit: ; preds = %_ZN5boost8charconv17from_chars_erangeEPKcS2_RdNS0_12chars_formatE.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret { ptr, i32 } %.pn.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define { ptr, i32 } @_ZN5boost8charconv10from_charsEPKcS2_ReNS0_12chars_formatE(ptr noundef %0, ptr noundef %1, ptr nofree noundef nonnull writeonly align 16 captures(none) dereferenceable(16) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca x86_fp80, align 16                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store x86_fp80 0.000000e+00, ptr %i.a, align 16, !tbaa !34
  %i.b = call { ptr, i32 } @_ZN5boost8charconv17from_chars_erangeEPKcS2_ReNS0_12chars_formatE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i32 noundef %3) #13 ; 2 uses
  %i.c = extractvalue { ptr, i32 } %i.b, 1
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZN12_GLOBAL__N_122from_chars_strict_implIeEEN5boost8charconv19from_chars_result_tIcEEPKcS6_RT_NS2_12chars_formatE.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load x86_fp80, ptr %i.a, align 16, !tbaa !34
  store x86_fp80 %i.e, ptr %2, align 16, !tbaa !34
  br label %_ZN12_GLOBAL__N_122from_chars_strict_implIeEEN5boost8charconv19from_chars_result_tIcEEPKcS6_RT_NS2_12chars_formatE.exit

_ZN12_GLOBAL__N_122from_chars_strict_implIeEEN5boost8charconv19from_chars_result_tIcEEPKcS6_RT_NS2_12chars_formatE.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define { ptr, i32 } @_ZN5boost8charconv10from_charsENS_4core17basic_string_viewIcEERfNS0_12chars_formatE(ptr %0, i64 %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2, i32 noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !28
  %.not.i.i = icmp eq i32 %3, 4
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.insert.ext.i.i.i = zext i32 %3 to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.0.0.insert.ext.i.i.i, 197568495616
  %i.c = call { ptr, i32 } @_ZN5boost8charconv6detail10fast_float19from_chars_advancedIfcEENS0_19from_chars_result_tIT0_EEPKS5_S8_RT_NS2_15parse_options_tIS5_EE(ptr noundef %0, ptr noundef %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i64 %.sroa.0.0.insert.insert.i.i.i) #13
  br label %_ZN5boost8charconv17from_chars_erangeEPKcS2_RfNS0_12chars_formatE.exit.i

bb.c:                                             ; preds = %bb.a
  %i.d = call { ptr, i32 } @_ZN5boost8charconv6detail21from_chars_float_implIfEENS0_19from_chars_result_tIcEEPKcS6_RT_NS0_12chars_formatE(ptr noundef %0, ptr noundef %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 4) #13
  br label %_ZN5boost8charconv17from_chars_erangeEPKcS2_RfNS0_12chars_formatE.exit.i

_ZN5boost8charconv17from_chars_erangeEPKcS2_RfNS0_12chars_formatE.exit.i: ; preds = %bb.c, %bb.b
  %.pn.i.i = phi { ptr, i32 } [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = extractvalue { ptr, i32 } %.pn.i.i, 1
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %_ZN12_GLOBAL__N_122from_chars_strict_implIfEEN5boost8charconv19from_chars_result_tIcEEPKcS6_RT_NS2_12chars_formatE.exit

bb.d:                                             ; preds = %_ZN5boost8charconv17from_chars_erangeEPKcS2_RfNS0_12chars_formatE.exit.i
  %i.g = load float, ptr %i.a, align 4, !tbaa !28
  store float %i.g, ptr %2, align 4, !tbaa !28
  br label %_ZN12_GLOBAL__N_122from_chars_strict_implIfEEN5boost8charconv19from_chars_result_tIcEEPKcS6_RT_NS2_12chars_formatE.exit

_ZN12_GLOBAL__N_122from_chars_strict_implIfEEN5boost8charconv19from_chars_result_tIcEEPKcS6_RT_NS2_12chars_formatE.exit: ; preds = %_ZN5boost8charconv17from_chars_erangeEPKcS2_RfNS0_12chars_formatE.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret { ptr, i32 } %.pn.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define { ptr, i32 } @_ZN5boost8charconv10from_charsENS_4core17basic_string_viewIcEERdNS0_12chars_formatE(ptr %0, i64 %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %2, i32 noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !30
  %.not.i.i = icmp eq i32 %3, 4
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.insert.ext.i.i.i = zext i32 %3 to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.0.0.insert.ext.i.i.i, 197568495616
  %i.c = call { ptr, i32 } @_ZN5boost8charconv6detail10fast_float19from_chars_advancedIdcEENS0_19from_chars_result_tIT0_EEPKS5_S8_RT_NS2_15parse_options_tIS5_EE(ptr noundef %0, ptr noundef %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 %.sroa.0.0.insert.insert.i.i.i) #13
  br label %_ZN5boost8charconv17from_chars_erangeEPKcS2_RdNS0_12chars_formatE.exit.i

bb.c:                                             ; preds = %bb.a
  %i.d = call { ptr, i32 } @_ZN5boost8charconv6detail21from_chars_float_implIdEENS0_19from_chars_result_tIcEEPKcS6_RT_NS0_12chars_formatE(ptr noundef %0, ptr noundef %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef 4) #13
  br label %_ZN5boost8charconv17from_chars_erangeEPKcS2_RdNS0_12chars_formatE.exit.i

_ZN5boost8charconv17from_chars_erangeEPKcS2_RdNS0_12chars_formatE.exit.i: ; preds = %bb.c, %bb.b
  %.pn.i.i = phi { ptr, i32 } [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = extractvalue { ptr, i32 } %.pn.i.i, 1
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %_ZN12_GLOBAL__N_122from_chars_strict_implIdEEN5boost8charconv19from_chars_result_tIcEEPKcS6_RT_NS2_12chars_formatE.exit

bb.d:                                             ; preds = %_ZN5boost8charconv17from_chars_erangeEPKcS2_RdNS0_12chars_formatE.exit.i
  %i.g = load double, ptr %i.a, align 8, !tbaa !30
  store double %i.g, ptr %2, align 8, !tbaa !30
  br label %_ZN12_GLOBAL__N_122from_chars_strict_implIdEEN5boost8charconv19from_chars_result_tIcEEPKcS6_RT_NS2_12chars_formatE.exit

_ZN12_GLOBAL__N_122from_chars_strict_implIdEEN5boost8charconv19from_chars_result_tIcEEPKcS6_RT_NS2_12chars_formatE.exit: ; preds = %_ZN5boost8charconv17from_chars_erangeEPKcS2_RdNS0_12chars_formatE.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret { ptr, i32 } %.pn.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define { ptr, i32 } @_ZN5boost8charconv10from_charsENS_4core17basic_string_viewIcEEReNS0_12chars_formatE(ptr %0, i64 %1, ptr nofree noundef nonnull writeonly align 16 captures(none) dereferenceable(16) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca x86_fp80, align 16                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store x86_fp80 0.000000e+00, ptr %i.a, align 16, !tbaa !34
  %i.c = call { ptr, i32 } @_ZN5boost8charconv17from_chars_erangeEPKcS2_ReNS0_12chars_formatE(ptr noundef %0, ptr noundef %i.b, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i32 noundef %3) #13 ; 2 uses
  %i.d = extractvalue { ptr, i32 } %i.c, 1
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN12_GLOBAL__N_122from_chars_strict_implIeEEN5boost8charconv19from_chars_result_tIcEEPKcS6_RT_NS2_12chars_formatE.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load x86_fp80, ptr %i.a, align 16, !tbaa !34
  store x86_fp80 %i.f, ptr %2, align 16, !tbaa !34
  br label %_ZN12_GLOBAL__N_122from_chars_strict_implIeEEN5boost8charconv19from_chars_result_tIcEEPKcS6_RT_NS2_12chars_formatE.exit

_ZN12_GLOBAL__N_122from_chars_strict_implIeEEN5boost8charconv19from_chars_result_tIcEEPKcS6_RT_NS2_12chars_formatE.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret { ptr, i32 } %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN5boost8charconv6detail10fast_float19from_chars_advancedIfcEENS0_19from_chars_result_tIT0_EEPKS5_S8_RT_NS2_15parse_options_tIS5_EE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, i64 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"struct.boost::charconv::detail::fast_float::bigint", align 8 ; 6 uses
  %5 = alloca %"struct.boost::charconv::detail::fast_float::parsed_number_string_t", align 8 ; 16 uses
  %i.c = icmp eq ptr %0, %1
  br i1 %i.c, label %bb.bd, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  %.sroa.0.0.extract.trunc.i = trunc i64 %3 to i32 ; 2 uses
  %.sroa.2.0.extract.shift.i = lshr i64 %3, 32
  %.sroa.2.0.extract.trunc.i = trunc i64 %.sroa.2.0.extract.shift.i to i8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 25
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(27) %5, i8 0, i64 27, i1 false)
  %i.g = load i8, ptr %0, align 1, !tbaa !35, !noalias !65
  %i.h = icmp eq i8 %i.g, 45                      ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.j = zext i1 %i.h to i8                       ; 4 uses
  store i8 %i.j, ptr %i.i, align 8, !tbaa !45, !alias.scope !65
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %i.l = icmp eq ptr %i.k, %1
  br i1 %i.l, label %bb.z, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load i8, ptr %i.k, align 1, !tbaa !35, !noalias !65 ; 2 uses
  %i.n = add i8 %i.m, -48
  %i.o = icmp ult i8 %i.n, 10
  %.not.i = icmp eq i8 %i.m, %.sroa.2.0.extract.trunc.i
  %or.cond180 = select i1 %i.o, i1 true, i1 %.not.i
  br i1 %or.cond180, label %bb.e, label %bb.z

bb.e:                                             ; preds = %bb.d, %bb.b
  %.0127.i = phi ptr [ %i.k, %bb.d ], [ %0, %bb.b ] ; 10 uses
  %.0127.i279 = ptrtoaddr ptr %.0127.i to i64
  %i.p = sub i64 %i.a, %.0127.i279
  %scevgep = getelementptr i8, ptr %.0127.i, i64 %i.p
  br label %bb.f

.critedge.i.thread:                               ; preds = %bb.g
  %i.q = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.r = ptrtoint ptr %.0127.i to i64
  %i.s = sub i64 %i.q, %i.r                       ; 3 uses
  store ptr %.0127.i, ptr %i.d, align 8, !tbaa !46
  %.sroa.4138.0..sroa_idx171 = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 %i.s, ptr %.sroa.4138.0..sroa_idx171, align 8, !tbaa !24
  br label %bb.l

bb.f:                                             ; preds = %bb.e, %bb.g
  %.1128.i226 = phi ptr [ %.0127.i, %bb.e ], [ %i.aa, %bb.g ] ; 5 uses
  %.0143.i225 = phi i64 [ 0, %bb.e ], [ %i.z, %bb.g ] ; 4 uses
  %i.t = load i8, ptr %.1128.i226, align 1, !tbaa !35, !noalias !65 ; 3 uses
  %i.u = add i8 %i.t, -48
  %i.v = icmp ult i8 %i.u, 10
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = mul i64 %.0143.i225, 10
  %i.x = zext nneg i8 %i.t to i64
  %i.y = add i64 %i.w, -48
  %i.z = add i64 %i.y, %i.x                       ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.1128.i226, i64 1 ; 2 uses
  %.not161.i = icmp eq ptr %i.aa, %1
  br i1 %.not161.i, label %.critedge.i.thread, label %bb.f, !llvm.loop !0

bb.h:                                             ; preds = %bb.f
  %i.ab = ptrtoint ptr %.1128.i226 to i64         ; 3 uses
  %i.ac = ptrtoint ptr %.0127.i to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 5 uses
  store ptr %.0127.i, ptr %i.d, align 8, !tbaa !46
  %.sroa.4138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 %i.ad, ptr %.sroa.4138.0..sroa_idx, align 8, !tbaa !24
  %i.ae = icmp eq i8 %i.t, %.sroa.2.0.extract.trunc.i
  br i1 %i.ae, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %.1128.i226, i64 1 ; 5 uses
  %i.ag = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ah = ptrtoint ptr %i.af to i64               ; 3 uses
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = icmp sgt i64 %i.ai, 7
  br i1 %i.aj, label %.lr.ph, label %.critedge2.i

.lr.ph:                                           ; preds = %bb.i, %bb.j
  %.2129.i228 = phi ptr [ %i.ba, %bb.j ], [ %i.af, %bb.i ] ; 3 uses
  %.1144.i227 = phi i64 [ %i.az, %bb.j ], [ %.0143.i225, %bb.i ] ; 2 uses
  %.0.copyload.i98 = load i64, ptr %.2129.i228, align 1 ; 2 uses
  %i.ak = add i64 %.0.copyload.i98, 5063812098665367110
  %i.al = add i64 %.0.copyload.i98, -3472328296227680304 ; 3 uses
  %i.am = or i64 %i.ak, %i.al
  %i.an = and i64 %i.am, -9187201950435737472
  %.not.i97 = icmp eq i64 %i.an, 0
  br i1 %.not.i97, label %bb.j, label %.critedge2.i

bb.j:                                             ; preds = %.lr.ph
  %i.ao = mul i64 %.1144.i227, 100000000
  %i.ap = mul i64 %i.al, 10
  %i.aq = lshr i64 %i.al, 8
  %i.ar = add i64 %i.ap, %i.aq                    ; 2 uses
  %i.as = and i64 %i.ar, 1095216660735
  %i.at = mul i64 %i.as, 4294967296000100
  %i.au = lshr i64 %i.ar, 16
  %i.av = and i64 %i.au, 1095216660735
  %i.aw = mul i64 %i.av, 42949672960001
  %i.ax = add i64 %i.aw, %i.at
  %i.ay = lshr i64 %i.ax, 32
  %i.az = add i64 %i.ay, %i.ao                    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.2129.i228, i64 8 ; 3 uses
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.ag, %i.bb
  %i.bd = icmp sgt i64 %i.bc, 7
  br i1 %i.bd, label %.lr.ph, label %.critedge2.i, !llvm.loop !1

.critedge2.i:                                     ; preds = %bb.j, %.lr.ph, %bb.i
  %.1144.i.lcssa = phi i64 [ %.0143.i225, %bb.i ], [ %.1144.i227, %.lr.ph ], [ %i.az, %bb.j ] ; 2 uses
  %.2129.i.lcssa = phi ptr [ %i.af, %bb.i ], [ %.2129.i228, %.lr.ph ], [ %i.ba, %bb.j ] ; 5 uses
  %.not162.i233 = icmp eq ptr %.2129.i.lcssa, %1
  br i1 %.not162.i233, label %.critedge4.i, label %.lr.ph236.preheader

.lr.ph236.preheader:                              ; preds = %.critedge2.i
  %.2129.i.lcssa280 = ptrtoaddr ptr %.2129.i.lcssa to i64
  %i.be = sub i64 %i.a, %.2129.i.lcssa280
  %scevgep281 = getelementptr i8, ptr %.2129.i.lcssa, i64 %i.be
  br label %.lr.ph236

.lr.ph236:                                        ; preds = %.lr.ph236.preheader, %bb.k
  %.3130.i235 = phi ptr [ %i.bi, %bb.k ], [ %.2129.i.lcssa, %.lr.ph236.preheader ] ; 3 uses
  %.2145.i234 = phi i64 [ %i.bl, %bb.k ], [ %.1144.i.lcssa, %.lr.ph236.preheader ] ; 2 uses
  %i.bf = load i8, ptr %.3130.i235, align 1, !tbaa !35, !noalias !65
  %i.bg = add i8 %i.bf, -48                       ; 2 uses
  %i.bh = icmp ult i8 %i.bg, 10
  br i1 %i.bh, label %bb.k, label %.critedge4.i

bb.k:                                             ; preds = %.lr.ph236
  %i.bi = getelementptr inbounds nuw i8, ptr %.3130.i235, i64 1 ; 2 uses
  %i.bj = mul i64 %.2145.i234, 10
  %i.bk = zext nneg i8 %i.bg to i64
  %i.bl = add i64 %i.bj, %i.bk                    ; 2 uses
  %.not162.i = icmp eq ptr %i.bi, %1
  br i1 %.not162.i, label %.critedge4.i, label %.lr.ph236, !llvm.loop !2

.critedge4.i:                                     ; preds = %bb.k, %.lr.ph236, %.critedge2.i
  %.2145.i.lcssa = phi i64 [ %.1144.i.lcssa, %.critedge2.i ], [ %.2145.i234, %.lr.ph236 ], [ %i.bl, %bb.k ]
  %.3130.i.lcssa = phi ptr [ %.2129.i.lcssa, %.critedge2.i ], [ %.3130.i235, %.lr.ph236 ], [ %scevgep281, %bb.k ] ; 2 uses
  %i.bm = ptrtoint ptr %.3130.i.lcssa to i64      ; 2 uses
  %i.bn = sub i64 %i.ah, %i.bm                    ; 2 uses
  %i.bo = sub i64 %i.bm, %i.ah                    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.af, ptr %i.bp, align 8, !tbaa !46
  %.sroa.4136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i64 %i.bo, ptr %.sroa.4136.0..sroa_idx, align 8, !tbaa !24
  %i.bq = sub nsw i64 %i.ad, %i.bn
  br label %bb.l

bb.l:                                             ; preds = %.critedge.i.thread, %.critedge4.i, %bb.h
  %i.br = phi i64 [ %i.bo, %.critedge4.i ], [ 0, %bb.h ], [ 0, %.critedge.i.thread ] ; 2 uses
  %i.bs = phi ptr [ %i.af, %.critedge4.i ], [ null, %bb.h ], [ null, %.critedge.i.thread ] ; 4 uses
  %i.bt = phi i64 [ %i.ad, %.critedge4.i ], [ %i.ad, %bb.h ], [ %i.s, %.critedge.i.thread ] ; 2 uses
  %i.bu = phi i64 [ %i.ab, %.critedge4.i ], [ %i.ab, %bb.h ], [ %i.q, %.critedge.i.thread ]
  %.3146.i = phi i64 [ %.2145.i.lcssa, %.critedge4.i ], [ %.0143.i225, %bb.h ], [ %i.z, %.critedge.i.thread ] ; 2 uses
  %.0140.i = phi i64 [ %i.bq, %.critedge4.i ], [ %i.ad, %bb.h ], [ %i.s, %.critedge.i.thread ] ; 3 uses
  %.0133.i = phi i64 [ %i.bn, %.critedge4.i ], [ 0, %bb.h ], [ 0, %.critedge.i.thread ] ; 3 uses
  %.4131.i = phi ptr [ %.3130.i.lcssa, %.critedge4.i ], [ %.1128.i226, %bb.h ], [ %scevgep, %.critedge.i.thread ] ; 7 uses
  %i.bv = icmp eq i64 %.0140.i, 0
  br i1 %i.bv, label %bb.z, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bw = and i32 %.sroa.0.0.extract.trunc.i, 1
  %.not163.i = icmp eq i32 %i.bw, 0
  %.not164.i = icmp eq ptr %.4131.i, %1
  %or.cond.i = or i1 %.not163.i, %.not164.i
  br i1 %or.cond.i, label %bb.v, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bx = load i8, ptr %.4131.i, align 1, !tbaa !35, !noalias !65
  switch i8 %i.bx, label %bb.v [
    i8 101, label %bb.o
    i8 69, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n, %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %.4131.i, i64 1 ; 4 uses
  %.not166.i = icmp eq ptr %i.by, %1
  br i1 %.not166.i, label %.critedge171.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !35, !noalias !65 ; 2 uses
  %i.ca = icmp eq i8 %i.bz, 45
  br i1 %i.ca, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cb = getelementptr inbounds nuw i8, ptr %.4131.i, i64 2
  br label %.critedge171.i

bb.r:                                             ; preds = %bb.p
  %i.cc = icmp eq i8 %i.bz, 43
  %i.cd = getelementptr inbounds nuw i8, ptr %.4131.i, i64 2
  %spec.select.i = select i1 %i.cc, ptr %i.cd, ptr %i.by
  br label %.critedge171.i

.critedge171.i:                                   ; preds = %bb.r, %bb.q, %bb.o
  %.5132.i = phi ptr [ %i.cb, %bb.q ], [ %i.by, %bb.o ], [ %spec.select.i, %bb.r ] ; 5 uses
  %.0125.i = phi i1 [ true, %bb.q ], [ false, %bb.o ], [ false, %bb.r ]
  %.5132.i282 = ptrtoaddr ptr %.5132.i to i64
  %i.ce = icmp eq ptr %.5132.i, %1
  br i1 %i.ce, label %bb.u, label %bb.s

bb.s:                                             ; preds = %.critedge171.i
  %i.cf = load i8, ptr %.5132.i, align 1, !tbaa !35, !noalias !65
  %i.cg = add i8 %i.cf, -48
  %i.ch = icmp ult i8 %i.cg, 10
  br i1 %i.ch, label %.lr.ph245.preheader, label %bb.u

.lr.ph245.preheader:                              ; preds = %bb.s
  %i.ci = sub i64 %i.a, %.5132.i282
  %scevgep283 = getelementptr i8, ptr %.5132.i, i64 %i.ci
  br label %.lr.ph245

.lr.ph245:                                        ; preds = %.lr.ph245.preheader, %bb.t
  %.0126.i244 = phi i64 [ %.1.i, %bb.t ], [ 0, %.lr.ph245.preheader ] ; 4 uses
  %.6.i243 = phi ptr [ %i.cq, %bb.t ], [ %.5132.i, %.lr.ph245.preheader ] ; 3 uses
  %i.cj = load i8, ptr %.6.i243, align 1, !tbaa !35, !noalias !65
  %i.ck = add i8 %i.cj, -48                       ; 2 uses
  %i.cl = icmp ult i8 %i.ck, 10
  br i1 %i.cl, label %bb.t, label %.thread

bb.t:                                             ; preds = %.lr.ph245
  %i.cm = icmp slt i64 %.0126.i244, 268435456
  %i.cn = mul nsw i64 %.0126.i244, 10
  %i.co = zext nneg i8 %i.ck to i64
  %i.cp = add nsw i64 %i.cn, %i.co
  %.1.i = select i1 %i.cm, i64 %i.cp, i64 %.0126.i244 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.6.i243, i64 1 ; 2 uses
  %.not167.i = icmp eq ptr %i.cq, %1
  br i1 %.not167.i, label %.thread, label %.lr.ph245, !llvm.loop !3

.thread:                                          ; preds = %.lr.ph245, %bb.t
  %.6.i.lcssa.ph = phi ptr [ %.6.i243, %.lr.ph245 ], [ %scevgep283, %bb.t ]
  %.0126.i.lcssa.ph = phi i64 [ %.0126.i244, %.lr.ph245 ], [ %.1.i, %bb.t ] ; 2 uses
  %i.cr = sub nsw i64 0, %.0126.i.lcssa.ph
  %spec.select172.i = select i1 %.0125.i, i64 %i.cr, i64 %.0126.i.lcssa.ph ; 2 uses
  %i.cs = add nsw i64 %spec.select172.i, %.0133.i
  br label %bb.w

bb.u:                                             ; preds = %.critedge171.i, %bb.s
  %i.ct = and i32 %.sroa.0.0.extract.trunc.i, 2
  %.not168.i.not = icmp eq i32 %i.ct, 0
  br i1 %.not168.i.not, label %bb.z, label %bb.w

bb.v:                                             ; preds = %bb.n, %bb.m
  %i.cu = and i64 %3, 3
  %or.cond173.i.not.not = icmp eq i64 %i.cu, 1
  br i1 %or.cond173.i.not.not, label %bb.z, label %bb.w

bb.w:                                             ; preds = %.thread, %bb.v, %bb.u
  %.3136.i = phi i64 [ %.0133.i, %bb.u ], [ %.0133.i, %bb.v ], [ %i.cs, %.thread ] ; 2 uses
  %.9.i = phi ptr [ %.4131.i, %bb.u ], [ %.4131.i, %bb.v ], [ %.6.i.lcssa.ph, %.thread ] ; 7 uses
  %.5.i = phi i64 [ 0, %bb.u ], [ 0, %bb.v ], [ %spec.select172.i, %.thread ]
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %.9.i, ptr %i.cv, align 8, !tbaa !47, !alias.scope !65
  store i8 1, ptr %i.e, align 1, !tbaa !48, !alias.scope !65
  %i.cw = icmp sgt i64 %.0140.i, 19
  br i1 %i.cw, label %.preheader, label %bb.aa

.preheader:                                       ; preds = %bb.w, %.critedge10.i
  %.0.i252 = phi ptr [ %i.db, %.critedge10.i ], [ %.0127.i, %bb.w ] ; 2 uses
  %.1141.i251 = phi i64 [ %spec.select175.i, %.critedge10.i ], [ %.0140.i, %bb.w ] ; 2 uses
  %i.cx = load i8, ptr %.0.i252, align 1, !tbaa !35, !noalias !65 ; 2 uses
  %i.cy = icmp eq i8 %i.cx, 48                    ; 2 uses
  %i.cz = icmp eq i8 %i.cx, %.sroa.2.0.extract.trunc.i
  %or.cond174.i = select i1 %i.cy, i1 true, i1 %i.cz
  br i1 %or.cond174.i, label %.critedge10.i, label %.critedge8.i

.critedge10.i:                                    ; preds = %.preheader
  %i.da = sext i1 %i.cy to i64
  %spec.select175.i = add nsw i64 %.1141.i251, %i.da ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.0.i252, i64 1 ; 2 uses
  %.not169.i = icmp eq ptr %i.db, %1
  br i1 %.not169.i, label %.critedge8.i, label %.preheader, !llvm.loop !4

.critedge8.i:                                     ; preds = %.preheader, %.critedge10.i
  %.1141.i.lcssa = phi i64 [ %.1141.i251, %.preheader ], [ %spec.select175.i, %.critedge10.i ]
  %i.dc = icmp sgt i64 %.1141.i.lcssa, 19
  br i1 %i.dc, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %.critedge8.i
  store i8 1, ptr %i.f, align 2, !tbaa !49, !alias.scope !65
  %i.dd = getelementptr inbounds nuw i8, ptr %.0127.i, i64 %i.bt
  %.not265 = icmp samesign eq i64 %i.bt, 0
  br i1 %.not265, label %._crit_edge.thread, label %.lr.ph255

.lr.ph255:                                        ; preds = %bb.x, %.lr.ph255
  %.10.i254 = phi ptr [ %i.dj, %.lr.ph255 ], [ %.0127.i, %bb.x ] ; 2 uses
  %.4147.i253 = phi i64 [ %i.di, %.lr.ph255 ], [ 0, %bb.x ]
  %i.de = mul nuw i64 %.4147.i253, 10
  %i.df = load i8, ptr %.10.i254, align 1, !tbaa !35
  %i.dg = sext i8 %i.df to i64
  %i.dh = add i64 %i.de, -48
  %i.di = add i64 %i.dh, %i.dg                    ; 5 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.10.i254, i64 1 ; 3 uses
  %i.dk = icmp ult i64 %i.di, 1000000000000000000
  %i.dl = icmp ne ptr %i.dj, %i.dd
  %i.dm = select i1 %i.dk, i1 %i.dl, i1 false
  br i1 %i.dm, label %.lr.ph255, label %._crit_edge, !llvm.loop !5

._crit_edge:                                      ; preds = %.lr.ph255
  %i.dn = icmp ugt i64 %i.di, 999999999999999999
  br i1 %i.dn, label %bb.y, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.x, %._crit_edge
  %.4147.i.lcssa313 = phi i64 [ %i.di, %._crit_edge ], [ 0, %bb.x ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.br
  %.not266 = icmp samesign eq i64 %i.br, 0
  br i1 %.not266, label %._crit_edge262, label %.lr.ph261

.lr.ph261:                                        ; preds = %._crit_edge.thread, %.lr.ph261
  %.11.i259 = phi ptr [ %i.du, %.lr.ph261 ], [ %i.bs, %._crit_edge.thread ] ; 2 uses
  %.5148.i258 = phi i64 [ %i.dt, %.lr.ph261 ], [ %.4147.i.lcssa313, %._crit_edge.thread ]
  %i.dp = mul nuw i64 %.5148.i258, 10
  %i.dq = load i8, ptr %.11.i259, align 1, !tbaa !35
  %i.dr = sext i8 %i.dq to i64
  %i.ds = add i64 %i.dp, -48
  %i.dt = add i64 %i.ds, %i.dr                    ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.11.i259, i64 1 ; 3 uses
  %i.dv = icmp ult i64 %i.dt, 1000000000000000000
  %i.dw = icmp ne ptr %i.du, %i.do
  %i.dx = select i1 %i.dv, i1 %i.dw, i1 false
  br i1 %i.dx, label %.lr.ph261, label %._crit_edge262, !llvm.loop !6

._crit_edge262:                                   ; preds = %.lr.ph261, %._crit_edge.thread
  %.5148.i.lcssa = phi i64 [ %.4147.i.lcssa313, %._crit_edge.thread ], [ %i.dt, %.lr.ph261 ]
  %.11.i.lcssa = phi ptr [ %i.bs, %._crit_edge.thread ], [ %i.du, %.lr.ph261 ]
  %i.dy = ptrtoint ptr %i.bs to i64
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge, %._crit_edge262
  %.11.i.lcssa.sink = phi ptr [ %.11.i.lcssa, %._crit_edge262 ], [ %i.dj, %._crit_edge ]
  %.sink = phi i64 [ %i.dy, %._crit_edge262 ], [ %i.bu, %._crit_edge ]
  %.6149.i = phi i64 [ %.5148.i.lcssa, %._crit_edge262 ], [ %i.di, %._crit_edge ]
  %i.dz = ptrtoint ptr %.11.i.lcssa.sink to i64
  %i.ea = sub i64 %.sink, %i.dz
  %.4137.i = add nsw i64 %i.ea, %.5.i
  br label %bb.aa

bb.z:                                             ; preds = %bb.d, %bb.c, %bb.l, %bb.u, %bb.v
  %i.eb = tail call { ptr, i32 } @_ZN5boost8charconv6detail10fast_float6detail12parse_infnanIfcEENS0_19from_chars_result_tIT0_EEPKS6_S9_RT_(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #13 ; 2 uses
  %i.ec = extractvalue { ptr, i32 } %i.eb, 0
  %i.ed = extractvalue { ptr, i32 } %i.eb, 1
  br label %bb.bc

bb.aa:                                            ; preds = %bb.y, %.critedge8.i, %bb.w
  %i.ee = phi i1 [ false, %bb.w ], [ true, %bb.y ], [ false, %.critedge8.i ] ; 2 uses
  %.8151.i = phi i64 [ %.3146.i, %bb.w ], [ %.6149.i, %bb.y ], [ %.3146.i, %.critedge8.i ] ; 18 uses
  %.6139.i = phi i64 [ %.3136.i, %bb.w ], [ %.4137.i, %bb.y ], [ %.3136.i, %.critedge8.i ] ; 16 uses
  store i64 %.6139.i, ptr %5, align 8, !tbaa !50, !alias.scope !65
  %i.ef = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %.8151.i, ptr %i.ef, align 8, !tbaa !51, !alias.scope !65
  %i.eg = add i64 %.6139.i, -11
  %i.eh = icmp ult i64 %i.eg, -21
  %or.cond328 = or i1 %i.eh, %i.ee
  br i1 %or.cond328, label %bb.ao, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ei = load volatile float, ptr @_ZZN5boost8charconv6detail10fast_float6detail17rounds_to_nearestEvE4fmin, align 4, !tbaa !28 ; 2 uses
  %i.ej = fadd float %i.ei, 1.000000e+00
  %i.ek = fsub float 1.000000e+00, %i.ei
  %i.el = fcmp oeq float %i.ej, %i.ek
  br i1 %i.el, label %bb.ac, label %bb.ai

bb.ac:                                            ; preds = %bb.ab
  %.not84 = icmp ugt i64 %.8151.i, 16777216
  br i1 %.not84, label %bb.ao, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.em = uitofp nneg i64 %.8151.i to float       ; 3 uses
  store float %i.em, ptr %2, align 4, !tbaa !28
  %i.en = icmp slt i64 %.6139.i, 0
  br i1 %i.en, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.eo = sub nsw i64 0, %.6139.i
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr @_ZN5boost8charconv6detail10fast_float27binary_format_lookup_tablesIfvE13powers_of_tenE, i64 %i.eo
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !28
  %i.er = fdiv float %i.em, %i.eq
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.es = getelementptr inbounds nuw [4 x i8], ptr @_ZN5boost8charconv6detail10fast_float27binary_format_lookup_tablesIfvE13powers_of_tenE, i64 %.6139.i
  %i.et = load float, ptr %i.es, align 4, !tbaa !28
  %i.eu = fmul float %i.et, %i.em
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %storemerge = phi float [ %i.eu, %bb.af ], [ %i.er, %bb.ae ] ; 2 uses
  store float %storemerge, ptr %2, align 4, !tbaa !28
  br i1 %i.h, label %bb.ah, label %bb.bc

bb.ah:                                            ; preds = %bb.ag
  %i.ev = fneg float %storemerge
  store float %i.ev, ptr %2, align 4, !tbaa !28
  br label %bb.bc

bb.ai:                                            ; preds = %bb.ab
  %i.ew = icmp sgt i64 %.6139.i, -1
  br i1 %i.ew, label %bb.aj, label %bb.ao

bb.aj:                                            ; preds = %bb.ai
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr @_ZN5boost8charconv6detail10fast_float27binary_format_lookup_tablesIfvE12max_mantissaE, i64 %.6139.i
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !24
  %.not83 = icmp ugt i64 %.8151.i, %i.ey
  br i1 %.not83, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ez = icmp eq i64 %.8151.i, 0
  br i1 %i.ez, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.fa = select i1 %i.h, float -0.000000e+00, float 0.000000e+00
  store float %i.fa, ptr %2, align 4, !tbaa !28
  br label %bb.bc

bb.am:                                            ; preds = %bb.ak
  %i.fb = uitofp i64 %.8151.i to float
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr @_ZN5boost8charconv6detail10fast_float27binary_format_lookup_tablesIfvE13powers_of_tenE, i64 %.6139.i
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !28
  %i.fe = fmul float %i.fd, %i.fb                 ; 2 uses
  store float %i.fe, ptr %2, align 4, !tbaa !28
  br i1 %i.h, label %bb.an, label %bb.bc

bb.an:                                            ; preds = %bb.am
  %i.ff = fneg float %i.fe
  store float %i.ff, ptr %2, align 4, !tbaa !28
  br label %bb.bc

bb.ao:                                            ; preds = %bb.ac, %bb.aj, %bb.ai, %bb.aa
  %i.fg = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fh = icmp eq i64 %.8151.i, 0
  %i.fi = icmp slt i64 %.6139.i, -65              ; 2 uses
  %or.cond181 = or i1 %i.fi, %i.fh
  br i1 %or.cond181, label %_ZN5boost8charconv6detail10fast_float13compute_floatINS2_13binary_formatIfEEEENS2_17adjusted_mantissaElm.exit96, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fj = icmp sgt i64 %.6139.i, 38
  br i1 %i.fj, label %_ZN5boost8charconv6detail10fast_float13compute_floatINS2_13binary_formatIfEEEENS2_17adjusted_mantissaElm.exit96, label %.noexc103

.noexc103:                                        ; preds = %bb.ap
  %i.fk = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.8151.i, i1 true) ; 2 uses
  %i.fl = trunc nuw nsw i64 %i.fk to i32
  %i.fm = shl i64 %.8151.i, %i.fk                 ; 2 uses
  %i.fn = trunc nsw i64 %.6139.i to i32           ; 2 uses
  %i.fo = shl nsw i32 %i.fn, 1
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr [8 x i8], ptr @_ZN5boost8charconv6detail10fast_float15powers_templateIvE17power_of_five_128E, i64 %i.fp ; 2 uses
  %i.fr = getelementptr i8, ptr %i.fq, i64 5472
  %i.fs = load i64, ptr %i.fr, align 16, !tbaa !24
  %i.ft = zext i64 %i.fm to i128
  %i.fu = zext i64 %i.fs to i128
  %i.fv = mul nuw i128 %i.fu, %i.ft               ; 2 uses
  %i.fw = trunc i128 %i.fv to i64                 ; 2 uses
  %i.fx = lshr i128 %i.fv, 64
  %i.fy = trunc nuw i128 %i.fx to i64             ; 3 uses
  %i.fz = and i64 %i.fy, 274877906943
  %i.ga = icmp eq i64 %i.fz, 274877906943
  br i1 %i.ga, label %.noexc104, label %_ZN5boost8charconv6detail10fast_float29compute_product_approximationILi26EEENS2_8value128Elm.exit105

.noexc104:                                        ; preds = %.noexc103
  %i.gb = getelementptr i8, ptr %i.fq, i64 5480
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !24
  %i.gd = tail call i64 @llvm.umulh.i64(i64 %i.fm, i64 %i.gc) ; 2 uses
  %i.ge = add i64 %i.gd, %i.fw                    ; 2 uses
  %i.gf = icmp ugt i64 %i.gd, %i.ge
  %i.gg = zext i1 %i.gf to i64
  %spec.select.i102 = add nuw i64 %i.gg, %i.fy
  br label %_ZN5boost8charconv6detail10fast_float29compute_product_approximationILi26EEENS2_8value128Elm.exit105

_ZN5boost8charconv6detail10fast_float29compute_product_approximationILi26EEENS2_8value128Elm.exit105: ; preds = %.noexc104, %.noexc103
  %.pn201 = phi i64 [ %i.ge, %.noexc104 ], [ %i.fw, %.noexc103 ]
  %spec.select.i102.pn = phi i64 [ %spec.select.i102, %.noexc104 ], [ %i.fy, %.noexc103 ] ; 3 uses
  %i.gh = lshr i64 %spec.select.i102.pn, 63       ; 2 uses
  %i.gi = trunc nuw nsw i64 %i.gh to i32
  %i.gj = or disjoint i64 %i.gh, 38               ; 2 uses
  %i.gk = lshr i64 %spec.select.i102.pn, %i.gj    ; 5 uses
  %i.gl = mul nsw i32 %i.fn, 217706
  %i.gm = ashr i32 %i.gl, 16
  %i.gn = add nsw i32 %i.gm, 190
  %i.go = sub nsw i32 %i.gn, %i.fl
  %i.gp = add nsw i32 %i.go, %i.gi                ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN5boost8charconv6detail23from_chars_integer_implIlmEENS0_19from_chars_result_tIcEEPKcS6_RT_i:bb.a
  %.493 = phi i64 [ %i.ao, %bb.i ], [ %.392141, %bb.h ] ; 2 uses
  %.177 = phi i1 [ %.076143, %bb.i ], [ true, %bb.h ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.482142, i64 1 ; 2 uses
  %i.aq = add nuw nsw i64 %.1144, 1               ; 2 uses
  %i.ar = icmp slt i64 %i.aq, %i.m
  br i1 %i.ar, label %.lr.ph146, label %._crit_edge147, !llvm.loop !101

._crit_edge147:                                   ; preds = %.lr.ph146, %bb.j
  %.392.lcssa = phi i64 [ %.493, %bb.j ], [ %.392141, %.lr.ph146 ]
  %.482.lcssa = phi ptr [ %i.ap, %bb.j ], [ %.482142, %.lr.ph146 ] ; 2 uses
  %.076.lcssa = phi i1 [ %.177, %bb.j ], [ %.076143, %.lr.ph146 ]
  br i1 %.076.lcssa, label %.thread123, label %._crit_edge147.thread

._crit_edge147.thread:                            ; preds = %._crit_edge, %._crit_edge147
  %.482.lcssa168 = phi ptr [ %.482.lcssa, %._crit_edge147 ], [ %.179.lcssa, %._crit_edge ]
  %.392.lcssa167 = phi i64 [ %.392.lcssa, %._crit_edge147 ], [ %.089.lcssa, %._crit_edge ] ; 2 uses
  %i.as = sub i64 0, %.392.lcssa167
  %spec.select = select i1 %.083113, i64 %i.as, i64 %.392.lcssa167
  store i64 %spec.select, ptr %2, align 8, !tbaa !24
  br label %.thread123

.thread123:                                       ; preds = %bb.e, %._crit_edge147, %bb.c, %bb.c, %.thread, %._crit_edge147.thread, %bb.a
  %.sroa.0.3 = phi ptr [ %0, %bb.a ], [ %0, %bb.c ], [ %0, %.thread ], [ %0, %bb.c ], [ %.482.lcssa, %._crit_edge147 ], [ %.482.lcssa168, %._crit_edge147.thread ], [ %0, %bb.e ]
  %.sroa.7.3 = phi i32 [ 22, %bb.a ], [ 22, %bb.c ], [ 22, %.thread ], [ 22, %bb.c ], [ 34, %._crit_edge147 ], [ 0, %._crit_edge147.thread ], [ 22, %bb.e ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.3, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.7.3, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef double @_ZN5boost8charconv6detail15compute_float64ElmbRb(i64 noundef %0, i64 noundef %1, i1 noundef zeroext %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = add i64 %0, 22
  %or.cond = icmp ult i64 %i.a, 45
  %i.b = icmp ult i64 %1, 9007199254740992
  %or.cond3 = and i1 %or.cond, %i.b
  br i1 %or.cond3, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = uitofp nneg i64 %1 to double             ; 2 uses
  %i.d = icmp slt i64 %0, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = sub nsw i64 0, %0
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @_ZN5boost8charconv6detailL13powers_of_tenE, i64 %i.e
  %i.g = load double, ptr %i.f, align 8, !tbaa !30
  %i.h = fdiv double %i.c, %i.g
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @_ZN5boost8charconv6detailL13powers_of_tenE, i64 %0
  %i.j = load double, ptr %i.i, align 8, !tbaa !30
  %i.k = fmul double %i.j, %i.c
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.077 = phi double [ %i.h, %bb.c ], [ %i.k, %bb.d ] ; 2 uses
  %i.l = fneg double %.077
  %.178 = select i1 %2, double %i.l, double %.077
  store i8 1, ptr %3, align 1, !tbaa !22
  br label %bb.p

bb.f:                                             ; preds = %bb.a
  %i.m = icmp eq i64 %1, 0
  %i.n = icmp slt i64 %0, -325
  %or.cond5 = or i1 %i.n, %i.m
  br i1 %or.cond5, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = select i1 %2, double -0.000000e+00, double 0.000000e+00
  br label %bb.p

bb.h:                                             ; preds = %bb.f
  %i.p = icmp sgt i64 %0, 308
  br i1 %i.p, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.q = select i1 %2, double -inf, double +inf
  br label %bb.p

bb.j:                                             ; preds = %bb.h
  %i.r = add nsw i64 %0, 325                      ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr @_ZN5boost8charconv6detail20significand_templateILb1EE14significand_64E, i64 %i.r
  %i.t = load i64, ptr %i.s, align 8, !tbaa !24
  %i.u = mul nsw i64 %0, 217706
  %i.v = ashr i64 %i.u, 16
  %i.w = add nsw i64 %i.v, 1087                   ; 2 uses
  %i.x = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %1, i1 false) ; 2 uses
  %i.y = shl i64 %1, %i.x                         ; 3 uses
  %i.z = zext i64 %i.y to i128
  %i.aa = zext i64 %i.t to i128
  %i.ab = mul nuw i128 %i.aa, %i.z                ; 2 uses
  %i.ac = lshr i128 %i.ab, 64
  %i.ad = trunc nuw i128 %i.ac to i64             ; 4 uses
  %i.ae = trunc i128 %i.ab to i64                 ; 5 uses
  %i.af = and i64 %i.ad, 511                      ; 2 uses
  %i.ag = icmp eq i64 %i.af, 511
  br i1 %i.ag, label %bb.k, label %bb.m, !prof !102

bb.k:                                             ; preds = %bb.j
  %i.ah = xor i64 %i.ae, -1
  %i.ai = icmp ugt i64 %i.y, %i.ah
  br i1 %i.ai, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr @_ZN5boost8charconv6detail20significand_templateILb1EE15significand_128E, i64 %i.r
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !24
  %i.al = tail call i64 @llvm.umulh.i64(i64 %i.ak, i64 %i.y)
  %i.am = add i64 %i.al, %i.ae                    ; 2 uses
  %i.an = icmp ult i64 %i.am, %i.ae
  %i.ao = zext i1 %i.an to i64
  %spec.select = add nuw i64 %i.ao, %i.ad         ; 2 uses
  %.pre = and i64 %spec.select, 511
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.pre-phi = phi i64 [ %.pre, %bb.l ], [ 511, %bb.k ], [ %i.af, %bb.j ]
  %.075 = phi i64 [ %i.am, %bb.l ], [ %i.ae, %bb.k ], [ %i.ae, %bb.j ]
  %.074 = phi i64 [ %spec.select, %bb.l ], [ %i.ad, %bb.k ], [ %i.ad, %bb.j ] ; 2 uses
  %i.ap = lshr i64 %.074, 63                      ; 2 uses
  %i.aq = add nuw nsw i64 %i.ap, 9
  %i.ar = lshr i64 %.074, %i.aq                   ; 3 uses
  %i.as = icmp eq i64 %.075, 0
  %i.at = icmp eq i64 %.pre-phi, 0
  %or.cond88 = select i1 %i.as, i1 %i.at, i1 false
  %i.au = and i64 %i.ar, 3
  %i.av = icmp eq i64 %i.au, 1
  %or.cond92 = select i1 %or.cond88, i1 %i.av, i1 false, !prof !103
  br i1 %or.cond92, label %bb.o, label %.critedge, !prof !103

.critedge:                                        ; preds = %bb.m
  %i.aw = xor i64 %i.ap, 1
  %i.ax = add nuw nsw i64 %i.aw, %i.x
  %i.ay = and i64 %i.ar, 1
  %i.az = add nuw nsw i64 %i.ay, %i.ar            ; 2 uses
  %i.ba = icmp samesign ugt i64 %i.az, 18014398509481983 ; 2 uses
  %i.bb = sext i1 %i.ba to i64
  %spec.select89 = add nsw i64 %i.ax, %i.bb       ; 2 uses
  %i.bc = sub nsw i64 %i.w, %spec.select89        ; 2 uses
  %i.bd = icmp eq i64 %i.w, %spec.select89
  %i.be = icmp ugt i64 %i.bc, 2046
  %i.bf = select i1 %i.bd, i1 true, i1 %i.be, !prof !102
  br i1 %i.bf, label %bb.o, label %bb.n, !prof !102

bb.n:                                             ; preds = %.critedge
  %i.bg = lshr i64 %i.az, 1
  %i.bh = and i64 %i.bg, 67553994410557439
  %i.bi = select i1 %i.ba, i64 0, i64 %i.bh
  %i.bj = shl nuw nsw i64 %i.bc, 52
  %i.bk = select i1 %2, i64 -9223372036854775808, i64 0
  %i.bl = or disjoint i64 %i.bi, %i.bk
  %i.bm = or i64 %i.bl, %i.bj
  %i.bn = bitcast i64 %i.bm to double
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %.critedge
  %storemerge86 = phi i8 [ 0, %bb.m ], [ 1, %bb.n ], [ 0, %.critedge ]
  %.1 = phi double [ 0.000000e+00, %bb.m ], [ %i.bn, %bb.n ], [ 0.000000e+00, %.critedge ]
  store i8 %storemerge86, ptr %3, align 1, !tbaa !22
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.i, %bb.g, %bb.e
  %.2 = phi double [ %.178, %bb.e ], [ %i.o, %bb.g ], [ %i.q, %bb.i ], [ %.1, %bb.o ]
  ret double %.2
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare float @strtof(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nounwind
declare ptr @localeconv() local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN5boost8charconv6detail10fast_float19from_chars_advancedIdcEENS0_19from_chars_result_tIT0_EEPKS5_S8_RT_NS2_15parse_options_tIS5_EE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"struct.boost::charconv::detail::fast_float::bigint", align 8 ; 6 uses
  %5 = alloca %"struct.boost::charconv::detail::fast_float::parsed_number_string_t", align 8 ; 16 uses
  %i.c = icmp eq ptr %0, %1
  br i1 %i.c, label %bb.bj, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  %.sroa.0.0.extract.trunc.i = trunc i64 %3 to i32 ; 2 uses
  %.sroa.2.0.extract.shift.i = lshr i64 %3, 32
  %.sroa.2.0.extract.trunc.i = trunc i64 %.sroa.2.0.extract.shift.i to i8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 25
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(27) %5, i8 0, i64 27, i1 false)
  %i.g = load i8, ptr %0, align 1, !tbaa !35, !noalias !106
  %i.h = icmp eq i8 %i.g, 45                      ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.j = zext i1 %i.h to i8                       ; 4 uses
  store i8 %i.j, ptr %i.i, align 8, !tbaa !45, !alias.scope !106
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %i.l = icmp eq ptr %i.k, %1
  br i1 %i.l, label %bb.z, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load i8, ptr %i.k, align 1, !tbaa !35, !noalias !106 ; 2 uses
  %i.n = add i8 %i.m, -48
  %i.o = icmp ult i8 %i.n, 10
  %.not.i = icmp eq i8 %i.m, %.sroa.2.0.extract.trunc.i
  %or.cond171 = select i1 %i.o, i1 true, i1 %.not.i
  br i1 %or.cond171, label %bb.e, label %bb.z

bb.e:                                             ; preds = %bb.d, %bb.b
  %.0127.i = phi ptr [ %i.k, %bb.d ], [ %0, %bb.b ] ; 10 uses
  %.0127.i270 = ptrtoaddr ptr %.0127.i to i64
  %i.p = sub i64 %i.a, %.0127.i270
  %scevgep = getelementptr i8, ptr %.0127.i, i64 %i.p
  br label %bb.f

.critedge.i.thread:                               ; preds = %bb.g
  %i.q = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.r = ptrtoint ptr %.0127.i to i64
  %i.s = sub i64 %i.q, %i.r                       ; 3 uses
  store ptr %.0127.i, ptr %i.d, align 8, !tbaa !46
  %.sroa.4129.0..sroa_idx162 = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 %i.s, ptr %.sroa.4129.0..sroa_idx162, align 8, !tbaa !24
  br label %bb.l

bb.f:                                             ; preds = %bb.e, %bb.g
  %.1128.i217 = phi ptr [ %.0127.i, %bb.e ], [ %i.aa, %bb.g ] ; 5 uses
  %.0143.i216 = phi i64 [ 0, %bb.e ], [ %i.z, %bb.g ] ; 4 uses
  %i.t = load i8, ptr %.1128.i217, align 1, !tbaa !35, !noalias !106 ; 3 uses
  %i.u = add i8 %i.t, -48
  %i.v = icmp ult i8 %i.u, 10
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = mul i64 %.0143.i216, 10
  %i.x = zext nneg i8 %i.t to i64
  %i.y = add i64 %i.w, -48
  %i.z = add i64 %i.y, %i.x                       ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.1128.i217, i64 1 ; 2 uses
  %.not161.i = icmp eq ptr %i.aa, %1
  br i1 %.not161.i, label %.critedge.i.thread, label %bb.f, !llvm.loop !0

bb.h:                                             ; preds = %bb.f
  %i.ab = ptrtoint ptr %.1128.i217 to i64         ; 3 uses
  %i.ac = ptrtoint ptr %.0127.i to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 5 uses
  store ptr %.0127.i, ptr %i.d, align 8, !tbaa !46
  %.sroa.4129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 %i.ad, ptr %.sroa.4129.0..sroa_idx, align 8, !tbaa !24
  %i.ae = icmp eq i8 %i.t, %.sroa.2.0.extract.trunc.i
  br i1 %i.ae, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %.1128.i217, i64 1 ; 5 uses
  %i.ag = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ah = ptrtoint ptr %i.af to i64               ; 3 uses
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = icmp sgt i64 %i.ai, 7
  br i1 %i.aj, label %.lr.ph, label %.critedge2.i

.lr.ph:                                           ; preds = %bb.i, %bb.j
  %.2129.i219 = phi ptr [ %i.ba, %bb.j ], [ %i.af, %bb.i ] ; 3 uses
  %.1144.i218 = phi i64 [ %i.az, %bb.j ], [ %.0143.i216, %bb.i ] ; 2 uses
  %.0.copyload.i86 = load i64, ptr %.2129.i219, align 1 ; 2 uses
  %i.ak = add i64 %.0.copyload.i86, 5063812098665367110
  %i.al = add i64 %.0.copyload.i86, -3472328296227680304 ; 3 uses
  %i.am = or i64 %i.ak, %i.al
  %i.an = and i64 %i.am, -9187201950435737472
  %.not.i85 = icmp eq i64 %i.an, 0
  br i1 %.not.i85, label %bb.j, label %.critedge2.i

bb.j:                                             ; preds = %.lr.ph
  %i.ao = mul i64 %.1144.i218, 100000000
  %i.ap = mul i64 %i.al, 10
  %i.aq = lshr i64 %i.al, 8
  %i.ar = add i64 %i.ap, %i.aq                    ; 2 uses
  %i.as = and i64 %i.ar, 1095216660735
  %i.at = mul i64 %i.as, 4294967296000100
  %i.au = lshr i64 %i.ar, 16
  %i.av = and i64 %i.au, 1095216660735
  %i.aw = mul i64 %i.av, 42949672960001
  %i.ax = add i64 %i.aw, %i.at
  %i.ay = lshr i64 %i.ax, 32
  %i.az = add i64 %i.ay, %i.ao                    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.2129.i219, i64 8 ; 3 uses
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.ag, %i.bb
  %i.bd = icmp sgt i64 %i.bc, 7
  br i1 %i.bd, label %.lr.ph, label %.critedge2.i, !llvm.loop !1

.critedge2.i:                                     ; preds = %bb.j, %.lr.ph, %bb.i
  %.1144.i.lcssa = phi i64 [ %.0143.i216, %bb.i ], [ %.1144.i218, %.lr.ph ], [ %i.az, %bb.j ] ; 2 uses
  %.2129.i.lcssa = phi ptr [ %i.af, %bb.i ], [ %.2129.i219, %.lr.ph ], [ %i.ba, %bb.j ] ; 5 uses
  %.not162.i224 = icmp eq ptr %.2129.i.lcssa, %1
  br i1 %.not162.i224, label %.critedge4.i, label %.lr.ph227.preheader

.lr.ph227.preheader:                              ; preds = %.critedge2.i
  %.2129.i.lcssa271 = ptrtoaddr ptr %.2129.i.lcssa to i64
  %i.be = sub i64 %i.a, %.2129.i.lcssa271
  %scevgep272 = getelementptr i8, ptr %.2129.i.lcssa, i64 %i.be
  br label %.lr.ph227

.lr.ph227:                                        ; preds = %.lr.ph227.preheader, %bb.k
  %.3130.i226 = phi ptr [ %i.bi, %bb.k ], [ %.2129.i.lcssa, %.lr.ph227.preheader ] ; 3 uses
  %.2145.i225 = phi i64 [ %i.bl, %bb.k ], [ %.1144.i.lcssa, %.lr.ph227.preheader ] ; 2 uses
  %i.bf = load i8, ptr %.3130.i226, align 1, !tbaa !35, !noalias !106
  %i.bg = add i8 %i.bf, -48                       ; 2 uses
  %i.bh = icmp ult i8 %i.bg, 10
  br i1 %i.bh, label %bb.k, label %.critedge4.i

bb.k:                                             ; preds = %.lr.ph227
  %i.bi = getelementptr inbounds nuw i8, ptr %.3130.i226, i64 1 ; 2 uses
  %i.bj = mul i64 %.2145.i225, 10
  %i.bk = zext nneg i8 %i.bg to i64
  %i.bl = add i64 %i.bj, %i.bk                    ; 2 uses
  %.not162.i = icmp eq ptr %i.bi, %1
  br i1 %.not162.i, label %.critedge4.i, label %.lr.ph227, !llvm.loop !2

.critedge4.i:                                     ; preds = %bb.k, %.lr.ph227, %.critedge2.i
  %.2145.i.lcssa = phi i64 [ %.1144.i.lcssa, %.critedge2.i ], [ %.2145.i225, %.lr.ph227 ], [ %i.bl, %bb.k ]
  %.3130.i.lcssa = phi ptr [ %.2129.i.lcssa, %.critedge2.i ], [ %.3130.i226, %.lr.ph227 ], [ %scevgep272, %bb.k ] ; 2 uses
  %i.bm = ptrtoint ptr %.3130.i.lcssa to i64      ; 2 uses
  %i.bn = sub i64 %i.ah, %i.bm                    ; 2 uses
  %i.bo = sub i64 %i.bm, %i.ah                    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.af, ptr %i.bp, align 8, !tbaa !46
  %.sroa.4127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i64 %i.bo, ptr %.sroa.4127.0..sroa_idx, align 8, !tbaa !24
  %i.bq = sub nsw i64 %i.ad, %i.bn
  br label %bb.l

bb.l:                                             ; preds = %.critedge.i.thread, %.critedge4.i, %bb.h
  %i.br = phi i64 [ %i.bo, %.critedge4.i ], [ 0, %bb.h ], [ 0, %.critedge.i.thread ] ; 2 uses
  %i.bs = phi ptr [ %i.af, %.critedge4.i ], [ null, %bb.h ], [ null, %.critedge.i.thread ] ; 4 uses
  %i.bt = phi i64 [ %i.ad, %.critedge4.i ], [ %i.ad, %bb.h ], [ %i.s, %.critedge.i.thread ] ; 2 uses
  %i.bu = phi i64 [ %i.ab, %.critedge4.i ], [ %i.ab, %bb.h ], [ %i.q, %.critedge.i.thread ]
  %.3146.i = phi i64 [ %.2145.i.lcssa, %.critedge4.i ], [ %.0143.i216, %bb.h ], [ %i.z, %.critedge.i.thread ] ; 2 uses
  %.0140.i = phi i64 [ %i.bq, %.critedge4.i ], [ %i.ad, %bb.h ], [ %i.s, %.critedge.i.thread ] ; 3 uses
  %.0133.i = phi i64 [ %i.bn, %.critedge4.i ], [ 0, %bb.h ], [ 0, %.critedge.i.thread ] ; 3 uses
  %.4131.i = phi ptr [ %.3130.i.lcssa, %.critedge4.i ], [ %.1128.i217, %bb.h ], [ %scevgep, %.critedge.i.thread ] ; 7 uses
  %i.bv = icmp eq i64 %.0140.i, 0
  br i1 %i.bv, label %bb.z, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bw = and i32 %.sroa.0.0.extract.trunc.i, 1
  %.not163.i = icmp eq i32 %i.bw, 0
  %.not164.i = icmp eq ptr %.4131.i, %1
  %or.cond.i = or i1 %.not163.i, %.not164.i
  br i1 %or.cond.i, label %bb.v, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bx = load i8, ptr %.4131.i, align 1, !tbaa !35, !noalias !106
  switch i8 %i.bx, label %bb.v [
    i8 101, label %bb.o
    i8 69, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n, %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %.4131.i, i64 1 ; 4 uses
  %.not166.i = icmp eq ptr %i.by, %1
  br i1 %.not166.i, label %.critedge171.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !35, !noalias !106 ; 2 uses
  %i.ca = icmp eq i8 %i.bz, 45
  br i1 %i.ca, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cb = getelementptr inbounds nuw i8, ptr %.4131.i, i64 2
  br label %.critedge171.i

bb.r:                                             ; preds = %bb.p
  %i.cc = icmp eq i8 %i.bz, 43
  %i.cd = getelementptr inbounds nuw i8, ptr %.4131.i, i64 2
  %spec.select.i = select i1 %i.cc, ptr %i.cd, ptr %i.by
  br label %.critedge171.i

.critedge171.i:                                   ; preds = %bb.r, %bb.q, %bb.o
  %.5132.i = phi ptr [ %i.cb, %bb.q ], [ %i.by, %bb.o ], [ %spec.select.i, %bb.r ] ; 5 uses
  %.0125.i = phi i1 [ true, %bb.q ], [ false, %bb.o ], [ false, %bb.r ]
  %.5132.i273 = ptrtoaddr ptr %.5132.i to i64
  %i.ce = icmp eq ptr %.5132.i, %1
  br i1 %i.ce, label %bb.u, label %bb.s

bb.s:                                             ; preds = %.critedge171.i
  %i.cf = load i8, ptr %.5132.i, align 1, !tbaa !35, !noalias !106
  %i.cg = add i8 %i.cf, -48
  %i.ch = icmp ult i8 %i.cg, 10
  br i1 %i.ch, label %.lr.ph236.preheader, label %bb.u

.lr.ph236.preheader:                              ; preds = %bb.s
  %i.ci = sub i64 %i.a, %.5132.i273
  %scevgep274 = getelementptr i8, ptr %.5132.i, i64 %i.ci
  br label %.lr.ph236

.lr.ph236:                                        ; preds = %.lr.ph236.preheader, %bb.t
  %.0126.i235 = phi i64 [ %.1.i, %bb.t ], [ 0, %.lr.ph236.preheader ] ; 4 uses
  %.6.i234 = phi ptr [ %i.cq, %bb.t ], [ %.5132.i, %.lr.ph236.preheader ] ; 3 uses
  %i.cj = load i8, ptr %.6.i234, align 1, !tbaa !35, !noalias !106
  %i.ck = add i8 %i.cj, -48                       ; 2 uses
  %i.cl = icmp ult i8 %i.ck, 10
  br i1 %i.cl, label %bb.t, label %.thread

bb.t:                                             ; preds = %.lr.ph236
  %i.cm = icmp slt i64 %.0126.i235, 268435456
  %i.cn = mul nsw i64 %.0126.i235, 10
  %i.co = zext nneg i8 %i.ck to i64
  %i.cp = add nsw i64 %i.cn, %i.co
  %.1.i = select i1 %i.cm, i64 %i.cp, i64 %.0126.i235 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.6.i234, i64 1 ; 2 uses
  %.not167.i = icmp eq ptr %i.cq, %1
  br i1 %.not167.i, label %.thread, label %.lr.ph236, !llvm.loop !3

.thread:                                          ; preds = %.lr.ph236, %bb.t
  %.6.i.lcssa.ph = phi ptr [ %.6.i234, %.lr.ph236 ], [ %scevgep274, %bb.t ]
  %.0126.i.lcssa.ph = phi i64 [ %.0126.i235, %.lr.ph236 ], [ %.1.i, %bb.t ] ; 2 uses
  %i.cr = sub nsw i64 0, %.0126.i.lcssa.ph
  %spec.select172.i = select i1 %.0125.i, i64 %i.cr, i64 %.0126.i.lcssa.ph ; 2 uses
  %i.cs = add nsw i64 %spec.select172.i, %.0133.i
  br label %bb.w

bb.u:                                             ; preds = %.critedge171.i, %bb.s
  %i.ct = and i32 %.sroa.0.0.extract.trunc.i, 2
  %.not168.i.not = icmp eq i32 %i.ct, 0
  br i1 %.not168.i.not, label %bb.z, label %bb.w

bb.v:                                             ; preds = %bb.n, %bb.m
  %i.cu = and i64 %3, 3
  %or.cond173.i.not.not = icmp eq i64 %i.cu, 1
  br i1 %or.cond173.i.not.not, label %bb.z, label %bb.w

bb.w:                                             ; preds = %.thread, %bb.v, %bb.u
  %.3136.i = phi i64 [ %.0133.i, %bb.u ], [ %.0133.i, %bb.v ], [ %i.cs, %.thread ] ; 2 uses
  %.9.i = phi ptr [ %.4131.i, %bb.u ], [ %.4131.i, %bb.v ], [ %.6.i.lcssa.ph, %.thread ] ; 7 uses
  %.5.i = phi i64 [ 0, %bb.u ], [ 0, %bb.v ], [ %spec.select172.i, %.thread ]
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %.9.i, ptr %i.cv, align 8, !tbaa !47, !alias.scope !106
  store i8 1, ptr %i.e, align 1, !tbaa !48, !alias.scope !106
  %i.cw = icmp sgt i64 %.0140.i, 19
  br i1 %i.cw, label %.preheader, label %bb.aa

.preheader:                                       ; preds = %bb.w, %.critedge10.i
  %.0.i243 = phi ptr [ %i.db, %.critedge10.i ], [ %.0127.i, %bb.w ] ; 2 uses
  %.1141.i242 = phi i64 [ %spec.select175.i, %.critedge10.i ], [ %.0140.i, %bb.w ] ; 2 uses
  %i.cx = load i8, ptr %.0.i243, align 1, !tbaa !35, !noalias !106 ; 2 uses
  %i.cy = icmp eq i8 %i.cx, 48                    ; 2 uses
  %i.cz = icmp eq i8 %i.cx, %.sroa.2.0.extract.trunc.i
  %or.cond174.i = select i1 %i.cy, i1 true, i1 %i.cz
  br i1 %or.cond174.i, label %.critedge10.i, label %.critedge8.i

.critedge10.i:                                    ; preds = %.preheader
  %i.da = sext i1 %i.cy to i64
  %spec.select175.i = add nsw i64 %.1141.i242, %i.da ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.0.i243, i64 1 ; 2 uses
  %.not169.i = icmp eq ptr %i.db, %1
  br i1 %.not169.i, label %.critedge8.i, label %.preheader, !llvm.loop !4

.critedge8.i:                                     ; preds = %.preheader, %.critedge10.i
  %.1141.i.lcssa = phi i64 [ %.1141.i242, %.preheader ], [ %spec.select175.i, %.critedge10.i ]
  %i.dc = icmp sgt i64 %.1141.i.lcssa, 19
  br i1 %i.dc, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %.critedge8.i
  store i8 1, ptr %i.f, align 2, !tbaa !49, !alias.scope !106
  %i.dd = getelementptr inbounds nuw i8, ptr %.0127.i, i64 %i.bt
  %.not256 = icmp samesign eq i64 %i.bt, 0
  br i1 %.not256, label %._crit_edge.thread, label %.lr.ph246

.lr.ph246:                                        ; preds = %bb.x, %.lr.ph246
  %.10.i245 = phi ptr [ %i.dj, %.lr.ph246 ], [ %.0127.i, %bb.x ] ; 2 uses
  %.4147.i244 = phi i64 [ %i.di, %.lr.ph246 ], [ 0, %bb.x ]
  %i.de = mul nuw i64 %.4147.i244, 10
  %i.df = load i8, ptr %.10.i245, align 1, !tbaa !35
  %i.dg = sext i8 %i.df to i64
  %i.dh = add i64 %i.de, -48
  %i.di = add i64 %i.dh, %i.dg                    ; 5 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.10.i245, i64 1 ; 3 uses
  %i.dk = icmp ult i64 %i.di, 1000000000000000000
  %i.dl = icmp ne ptr %i.dj, %i.dd
  %i.dm = select i1 %i.dk, i1 %i.dl, i1 false
  br i1 %i.dm, label %.lr.ph246, label %._crit_edge, !llvm.loop !5

._crit_edge:                                      ; preds = %.lr.ph246
  %i.dn = icmp ugt i64 %i.di, 999999999999999999
  br i1 %i.dn, label %bb.y, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.x, %._crit_edge
  %.4147.i.lcssa304 = phi i64 [ %i.di, %._crit_edge ], [ 0, %bb.x ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.br
  %.not257 = icmp samesign eq i64 %i.br, 0
  br i1 %.not257, label %._crit_edge253, label %.lr.ph252

.lr.ph252:                                        ; preds = %._crit_edge.thread, %.lr.ph252
  %.11.i250 = phi ptr [ %i.du, %.lr.ph252 ], [ %i.bs, %._crit_edge.thread ] ; 2 uses
  %.5148.i249 = phi i64 [ %i.dt, %.lr.ph252 ], [ %.4147.i.lcssa304, %._crit_edge.thread ]
  %i.dp = mul nuw i64 %.5148.i249, 10
  %i.dq = load i8, ptr %.11.i250, align 1, !tbaa !35
  %i.dr = sext i8 %i.dq to i64
  %i.ds = add i64 %i.dp, -48
  %i.dt = add i64 %i.ds, %i.dr                    ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.11.i250, i64 1 ; 3 uses
  %i.dv = icmp ult i64 %i.dt, 1000000000000000000
  %i.dw = icmp ne ptr %i.du, %i.do
  %i.dx = select i1 %i.dv, i1 %i.dw, i1 false
  br i1 %i.dx, label %.lr.ph252, label %._crit_edge253, !llvm.loop !6

._crit_edge253:                                   ; preds = %.lr.ph252, %._crit_edge.thread
  %.5148.i.lcssa = phi i64 [ %.4147.i.lcssa304, %._crit_edge.thread ], [ %i.dt, %.lr.ph252 ]
  %.11.i.lcssa = phi ptr [ %i.bs, %._crit_edge.thread ], [ %i.du, %.lr.ph252 ]
  %i.dy = ptrtoint ptr %i.bs to i64
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge, %._crit_edge253
  %.11.i.lcssa.sink = phi ptr [ %.11.i.lcssa, %._crit_edge253 ], [ %i.dj, %._crit_edge ]
  %.sink = phi i64 [ %i.dy, %._crit_edge253 ], [ %i.bu, %._crit_edge ]
  %.6149.i = phi i64 [ %.5148.i.lcssa, %._crit_edge253 ], [ %i.di, %._crit_edge ]
  %i.dz = ptrtoint ptr %.11.i.lcssa.sink to i64
  %i.ea = sub i64 %.sink, %i.dz
  %.4137.i = add nsw i64 %i.ea, %.5.i
  br label %bb.aa

bb.z:                                             ; preds = %bb.d, %bb.c, %bb.l, %bb.u, %bb.v
  %i.eb = tail call { ptr, i32 } @_ZN5boost8charconv6detail10fast_float6detail12parse_infnanIdcEENS0_19from_chars_result_tIT0_EEPKS6_S9_RT_(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #13 ; 2 uses
  %i.ec = extractvalue { ptr, i32 } %i.eb, 0
  %i.ed = extractvalue { ptr, i32 } %i.eb, 1
  br label %bb.bi

bb.aa:                                            ; preds = %bb.y, %.critedge8.i, %bb.w
  %i.ee = phi i1 [ false, %bb.w ], [ true, %bb.y ], [ false, %.critedge8.i ] ; 2 uses
  %.8151.i = phi i64 [ %.3146.i, %bb.w ], [ %.6149.i, %bb.y ], [ %.3146.i, %.critedge8.i ] ; 18 uses
  %.6139.i = phi i64 [ %.3136.i, %bb.w ], [ %.4137.i, %bb.y ], [ %.3136.i, %.critedge8.i ] ; 16 uses
  store i64 %.6139.i, ptr %5, align 8, !tbaa !50, !alias.scope !106
  %i.ef = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %.8151.i, ptr %i.ef, align 8, !tbaa !51, !alias.scope !106
  %i.eg = add i64 %.6139.i, -23
  %i.eh = icmp ult i64 %i.eg, -45
  %or.cond319 = or i1 %i.eh, %i.ee
  br i1 %or.cond319, label %bb.ao, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ei = load volatile float, ptr @_ZZN5boost8charconv6detail10fast_float6detail17rounds_to_nearestEvE4fmin, align 4, !tbaa !28 ; 2 uses
  %i.ej = fadd float %i.ei, 1.000000e+00
  %i.ek = fsub float 1.000000e+00, %i.ei
  %i.el = fcmp oeq float %i.ej, %i.ek
  br i1 %i.el, label %bb.ac, label %bb.ai

bb.ac:                                            ; preds = %bb.ab
  %.not84 = icmp ugt i64 %.8151.i, 9007199254740992
  br i1 %.not84, label %bb.ao, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.em = uitofp nneg i64 %.8151.i to double      ; 3 uses
  store double %i.em, ptr %2, align 8, !tbaa !30
  %i.en = icmp slt i64 %.6139.i, 0
  br i1 %i.en, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.eo = sub nsw i64 0, %.6139.i
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr @_ZN5boost8charconv6detail10fast_float27binary_format_lookup_tablesIdvE13powers_of_tenE, i64 %i.eo
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !30
  %i.er = fdiv double %i.em, %i.eq
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.es = getelementptr inbounds nuw [8 x i8], ptr @_ZN5boost8charconv6detail10fast_float27binary_format_lookup_tablesIdvE13powers_of_tenE, i64 %.6139.i
  %i.et = load double, ptr %i.es, align 8, !tbaa !30
  %i.eu = fmul double %i.et, %i.em
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %storemerge = phi double [ %i.eu, %bb.af ], [ %i.er, %bb.ae ] ; 2 uses
  store double %storemerge, ptr %2, align 8, !tbaa !30
  br i1 %i.h, label %bb.ah, label %bb.bi

bb.ah:                                            ; preds = %bb.ag
  %i.ev = fneg double %storemerge
  store double %i.ev, ptr %2, align 8, !tbaa !30
  br label %bb.bi

bb.ai:                                            ; preds = %bb.ab
  %i.ew = icmp sgt i64 %.6139.i, -1
  br i1 %i.ew, label %bb.aj, label %bb.ao

bb.aj:                                            ; preds = %bb.ai
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr @_ZN5boost8charconv6detail10fast_float27binary_format_lookup_tablesIdvE12max_mantissaE, i64 %.6139.i
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !24
  %.not83 = icmp ugt i64 %.8151.i, %i.ey
  br i1 %.not83, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ez = icmp eq i64 %.8151.i, 0
  br i1 %i.ez, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.fa = select i1 %i.h, double -0.000000e+00, double 0.000000e+00
  store double %i.fa, ptr %2, align 8, !tbaa !30
  br label %bb.bi

bb.am:                                            ; preds = %bb.ak
  %i.fb = uitofp i64 %.8151.i to double
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr @_ZN5boost8charconv6detail10fast_float27binary_format_lookup_tablesIdvE13powers_of_tenE, i64 %.6139.i
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !30
  %i.fe = fmul double %i.fd, %i.fb                ; 2 uses
  store double %i.fe, ptr %2, align 8, !tbaa !30
  br i1 %i.h, label %bb.an, label %bb.bi

bb.an:                                            ; preds = %bb.am
  %i.ff = fneg double %i.fe
  store double %i.ff, ptr %2, align 8, !tbaa !30
  br label %bb.bi

bb.ao:                                            ; preds = %bb.ac, %bb.aj, %bb.ai, %bb.aa
  %i.fg = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fh = icmp eq i64 %.8151.i, 0
  %i.fi = icmp slt i64 %.6139.i, -342             ; 2 uses
  %or.cond172 = or i1 %i.fi, %i.fh
  br i1 %or.cond172, label %_ZN5boost8charconv6detail10fast_float13compute_floatINS2_13binary_formatIdEEEENS2_17adjusted_mantissaElm.exit98, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fj = icmp sgt i64 %.6139.i, 308
  br i1 %i.fj, label %_ZN5boost8charconv6detail10fast_float13compute_floatINS2_13binary_formatIdEEEENS2_17adjusted_mantissaElm.exit98, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fk = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.8151.i, i1 true) ; 2 uses
  %i.fl = trunc nuw nsw i64 %i.fk to i32
  %i.fm = shl i64 %.8151.i, %i.fk                 ; 2 uses
  %i.fn = trunc nsw i64 %.6139.i to i32           ; 2 uses
  %i.fo = shl nsw i32 %i.fn, 1
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr [8 x i8], ptr @_ZN5boost8charconv6detail10fast_float15powers_templateIvE17power_of_five_128E, i64 %i.fp ; 2 uses
  %i.fr = getelementptr i8, ptr %i.fq, i64 5472
  %i.fs = load i64, ptr %i.fr, align 16, !tbaa !24
  %i.ft = zext i64 %i.fm to i128
  %i.fu = zext i64 %i.fs to i128
  %i.fv = mul nuw i128 %i.fu, %i.ft               ; 2 uses
  %i.fw = trunc i128 %i.fv to i64                 ; 2 uses
  %i.fx = lshr i128 %i.fv, 64
  %i.fy = trunc nuw i128 %i.fx to i64             ; 3 uses
  %i.fz = and i64 %i.fy, 511
  %i.ga = icmp eq i64 %i.fz, 511
  br i1 %i.ga, label %bb.ar, label %_ZN5boost8charconv6detail10fast_float29compute_product_approximationILi55EEENS2_8value128Elm.exit106

bb.ar:                                            ; preds = %bb.aq
  %i.gb = getelementptr i8, ptr %i.fq, i64 5480
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !24
  %i.gd = tail call i64 @llvm.umulh.i64(i64 %i.fm, i64 %i.gc) ; 2 uses
  %i.ge = add i64 %i.gd, %i.fw                    ; 2 uses
  %i.gf = icmp ugt i64 %i.gd, %i.ge
  %i.gg = zext i1 %i.gf to i64
  %spec.select.i105 = add nuw i64 %i.gg, %i.fy
  br label %_ZN5boost8charconv6detail10fast_float29compute_product_approximationILi55EEENS2_8value128Elm.exit106

_ZN5boost8charconv6detail10fast_float29compute_product_approximationILi55EEENS2_8value128Elm.exit106: ; preds = %bb.ar, %bb.aq
  %.pn192 = phi i64 [ %i.ge, %bb.ar ], [ %i.fw, %bb.aq ]
  %spec.select.i105.pn = phi i64 [ %spec.select.i105, %bb.ar ], [ %i.fy, %bb.aq ] ; 3 uses
  %i.gh = lshr i64 %spec.select.i105.pn, 63       ; 2 uses
  %i.gi = trunc nuw nsw i64 %i.gh to i32
  %i.gj = add nuw nsw i64 %i.gh, 9                ; 2 uses
  %i.gk = lshr i64 %spec.select.i105.pn, %i.gj    ; 5 uses
  %i.gl = mul nsw i32 %i.fn, 217706
  %i.gm = ashr i32 %i.gl, 16
  %i.gn = add nsw i32 %i.gm, 1086
  %i.go = sub nsw i32 %i.gn, %i.fl
  %i.gp = add nsw i32 %i.go, %i.gi                ; 3 uses
end_hunk_1
