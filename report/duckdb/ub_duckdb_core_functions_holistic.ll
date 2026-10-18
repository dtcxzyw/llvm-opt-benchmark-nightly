Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_core_functions_holistic?download=true
inline.NumInlined: 37468
inline.NumDeleted: 10738
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 80
begin_hunk_0_@_ZN14duckdb_tdigest7TDigestC2Edmm:bb.a
  store ptr %i.ar, ptr %i.p, align 8, !tbaa !1278
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ap
  store ptr %i.aw, ptr %i.am, align 8, !tbaa !1281
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %i.ac
  store ptr %i.ax, ptr %i.ae, align 8, !tbaa !1282
  br label %_ZNSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EE7reserveEm.exit19

_ZNSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EE7reserveEm.exit19: ; preds = %_ZNSt12_Vector_baseIN14duckdb_tdigest8CentroidESaIS1_EE13_M_deallocateEPS1_m.exit.i16, %bb.f
  ret void

bb.h:                                             ; preds = %.invoke, %_ZNSt12_Vector_baseIN14duckdb_tdigest8CentroidESaIS1_EE11_M_allocateEm.exit.i8, %_ZNSt12_Vector_baseIN14duckdb_tdigest8CentroidESaIS1_EE11_M_allocateEm.exit.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = load ptr, ptr %i.q, align 8, !tbaa !438 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZdlPv(ptr noundef nonnull %i.az) #34
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.h, %bb.i
  %i.ba = load ptr, ptr %i.p, align 8, !tbaa !1278 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.ba) #34
  br label %_ZNSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EED2Ev.exit

_ZNSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.j
  %i.bb = load ptr, ptr %i.o, align 8, !tbaa !1278 ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i21, label %_ZNSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EED2Ev.exit22, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EED2Ev.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.bb) #34
  br label %_ZNSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EED2Ev.exit22

_ZNSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EED2Ev.exit22: ; preds = %_ZNSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EED2Ev.exit, %bb.k
  resume { ptr, i32 } %i.ay
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN14duckdb_tdigest7TDigest3addEdd(ptr noundef nonnull align 8 dereferenceable(128) %0, double noundef %1, double noundef %2) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = fcmp ord double %1, 0.000000e+00         ; 2 uses
  br i1 %i.a, label %bb.b, label %_ZN14duckdb_tdigest7TDigest18processIfNecessaryEv.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1281 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1282
  %.not.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store double %1, ptr %i.d, align 8, !tbaa !440
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store double %2, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !440
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store ptr %i.g, ptr %i.c, align 8, !tbaa !1281
  br label %_ZNSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EE9push_backEOS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !1278 ; 5 uses
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775792
  br i1 %i.l, label %bb.e, label %_ZNKSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #32
  unreachable

_ZNKSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.m = ashr exact i64 %i.k, 4                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i.i, %i.m ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.m
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 576460752303423487)
  %i.q = select i1 %i.o, i64 576460752303423487, i64 %i.p ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.r = shl nuw nsw i64 %i.q, 4
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #31 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.k ; 2 uses
  store double %1, ptr %i.t, align 8, !tbaa !440
  %.sroa.5.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store double %2, ptr %.sroa.5.0..sroa_idx7, align 8, !tbaa !440
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.h, %i.d
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNKSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i.i ], [ %i.s, %_ZNKSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i.i ], [ %i.h, %_ZNKSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !1283, !alias.scope !5290
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.u, %i.d
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !73

_ZNSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.s, %_ZNKSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.v, %.lr.ph.i.i.i.i.i.i.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.h) #34
  br label %_ZNSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.s, ptr %i.b, align 8, !tbaa !1278
  store ptr %i.w, ptr %i.c, align 8, !tbaa !1281
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.q
  store ptr %i.x, ptr %i.e, align 8, !tbaa !1282
  br label %_ZNSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.c, %_ZNSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %i.y = phi ptr [ %i.g, %bb.c ], [ %i.w, %_ZNSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.aa = load double, ptr %i.z, align 8, !tbaa !1288
  %i.ab = fadd double %2, %i.aa
  store double %i.ab, ptr %i.z, align 8, !tbaa !1288
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1281
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !1278
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 4
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !1289
  %i.am = icmp ugt i64 %i.aj, %i.al
  br i1 %i.am, label %_ZN14duckdb_tdigest7TDigest7isDirtyEv.exit.thread.i, label %_ZN14duckdb_tdigest7TDigest7isDirtyEv.exit.i

_ZN14duckdb_tdigest7TDigest7isDirtyEv.exit.i:     ; preds = %_ZNSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EE9push_backEOS1_.exit
  %i.an = load ptr, ptr %i.b, align 8, !tbaa !1278
  %i.ao = ptrtoint ptr %i.y to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 4
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = load i64, ptr %i.as, align 8, !tbaa !1290
  %i.au = icmp ugt i64 %i.ar, %i.at
  br i1 %i.au, label %_ZN14duckdb_tdigest7TDigest7isDirtyEv.exit.thread.i, label %_ZN14duckdb_tdigest7TDigest18processIfNecessaryEv.exit

_ZN14duckdb_tdigest7TDigest7isDirtyEv.exit.thread.i: ; preds = %_ZN14duckdb_tdigest7TDigest7isDirtyEv.exit.i, %_ZNSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EE9push_backEOS1_.exit
  tail call void @_ZN14duckdb_tdigest7TDigest7processEv(ptr noundef nonnull align 8 dereferenceable(128) %0)
  br label %_ZN14duckdb_tdigest7TDigest18processIfNecessaryEv.exit

_ZN14duckdb_tdigest7TDigest18processIfNecessaryEv.exit: ; preds = %_ZN14duckdb_tdigest7TDigest7isDirtyEv.exit.thread.i, %_ZN14duckdb_tdigest7TDigest7isDirtyEv.exit.i, %bb.a
  ret i1 %i.a
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN14duckdb_tdigest7TDigest7processEv(ptr noundef nonnull align 8 dereferenceable(128) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1295 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1295 ; 4 uses
  %.not.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS2_18CentroidComparatorEEvT_SA_T0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 4
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.h, i1 true)
  %i.j = shl nuw nsw i64 %i.i, 1
  %i.k = xor i64 %i.j, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_T0_T1_(ptr %i.b, ptr %i.d, i64 noundef %i.k)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_T0_(ptr %i.b, ptr %i.d)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1281
  %.pre64 = load ptr, ptr %i.a, align 8, !tbaa !1278
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS2_18CentroidComparatorEEvT_SA_T0_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS2_18CentroidComparatorEEvT_SA_T0_.exit: ; preds = %bb.a, %bb.b
  %i.l = phi ptr [ %i.b, %bb.a ], [ %.pre64, %bb.b ] ; 2 uses
  %i.m = phi ptr [ %i.b, %bb.a ], [ %.pre, %bb.b ]
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = sub i64 %i.n, %i.o                       ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1295
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 12 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1295
  %i.u = getelementptr inbounds i8, ptr %i.l, i64 %i.p
  tail call void @_ZNSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEvNS6_IPS1_S3_EET_SC_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %i.u, ptr %i.r, ptr %i.t)
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !1295 ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 %i.p
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !1295
  tail call void @_ZSt15__inplace_mergeIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_SD_T0_(ptr %i.v, ptr %i.w, ptr %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %1 = load double, ptr %i.y, align 8, !tbaa !1288
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %2 = load double, ptr %i.z, align 8, !tbaa !1296
  %3 = fadd double %1, %2
  store double %3, ptr %i.z, align 8, !tbaa !1296
  store double 0.000000e+00, ptr %i.y, align 8, !tbaa !1288
  %i.aa = load ptr, ptr %i.q, align 8, !tbaa !1278 ; 8 uses
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !1281 ; 2 uses
  %.not.i.i23 = icmp eq ptr %i.ab, %i.aa
  br i1 %.not.i.i23, label %_ZNSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIPN14duckdb_tdigest8CentroidES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN14duckdb_tdigest8CentroidES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS2_18CentroidComparatorEEvT_SA_T0_.exit
  store ptr %i.aa, ptr %i.s, align 8, !tbaa !1281
  br label %_ZNSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EE5clearEv.exit

_ZNSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EE5clearEv.exit: ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS2_18CentroidComparatorEEvT_SA_T0_.exit, %_ZSt8_DestroyIPN14duckdb_tdigest8CentroidES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.ac = phi ptr [ %i.ab, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS2_18CentroidComparatorEEvT_SA_T0_.exit ], [ %i.aa, %_ZSt8_DestroyIPN14duckdb_tdigest8CentroidES1_EvT_S3_RSaIT0_E.exit.i.i ] ; 5 uses
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !1278 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1282
  %.not.i = icmp eq ptr %i.ac, %i.af
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EE5clearEv.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false), !tbaa.struct !1283
  %i.ag = load ptr, ptr %i.s, align 8, !tbaa !1281
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store ptr %i.ah, ptr %i.s, align 8, !tbaa !1281
  br label %_ZNSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EE9push_backERKS1_.exit

bb.d:                                             ; preds = %_ZNSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EE5clearEv.exit
  %i.ai = ptrtoint ptr %i.ac to i64
  %i.aj = ptrtoint ptr %i.aa to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 3 uses
  %i.al = icmp eq i64 %i.ak, 9223372036854775792
  br i1 %i.al, label %bb.e, label %_ZNKSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #32
  unreachable

_ZNKSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.am = ashr exact i64 %i.ak, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.am, i64 1)
  %i.an = add nsw i64 %.sroa.speculated.i.i.i, %i.am ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.am
  %i.ap = tail call i64 @llvm.umin.i64(i64 %i.an, i64 576460752303423487)
  %i.aq = select i1 %i.ao, i64 576460752303423487, i64 %i.ap ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.aq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ar = shl nuw nsw i64 %i.aq, 4
  %i.as = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #31 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ak
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false), !tbaa.struct !1283
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.aa, %i.ac
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i ], [ %i.as, %_ZNKSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i ], [ %i.aa, %_ZNKSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !1283, !alias.scope !5298
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.au, %i.ac
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !73

_ZNSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.as, %_ZNKSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.av, %.lr.ph.i.i.i.i.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16
  %.not.i23.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.aa) #34
  br label %_ZNSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.as, ptr %i.q, align 8, !tbaa !1278
  store ptr %i.aw, ptr %i.s, align 8, !tbaa !1281
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %i.aq
  store ptr %i.ax, ptr %i.ae, align 8, !tbaa !1282
  br label %_ZNSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.c, %_ZNSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !1278 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load double, ptr %i.az, align 8, !tbaa !1298
  %i.bb = load double, ptr %i.z, align 8, !tbaa !1296
  %i.bc = load double, ptr %0, align 8, !tbaa !440 ; 3 uses
  %i.bd = fcmp olt double %i.bc, 1.000000e+00
  %.sroa.speculated.i = select i1 %i.bd, double %i.bc, double 1.000000e+00
  %i.be = fmul double %.sroa.speculated.i, f0x400921FB54442D18
  %i.bf = fdiv double %i.be, %i.bc
  %i.bg = fadd double %i.bf, f0xBFF921FB54442D18
  %i.bh = tail call double @sin(double noundef %i.bg) #30, !tbaa !173
  %i.bi = load ptr, ptr %i.c, align 8, !tbaa !1295 ; 3 uses
  %.sroa.050.058 = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 2 uses
  %i.bj = icmp ult ptr %.sroa.050.058, %i.bi
  br i1 %i.bj, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EE9push_backERKS1_.exit
  %i.bk = fadd double %i.bh, 1.000000e+00
  %i.bl = fmul double %i.bk, 5.000000e-01
  %i.bm = fmul double %i.bb, %i.bl
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EE12emplace_backIJRKS1_EEEvDpOT_.exit
  %.pre65 = load ptr, ptr %i.a, align 8, !tbaa !1278
  %.pre66 = load ptr, ptr %i.c, align 8, !tbaa !1281
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EE9push_backERKS1_.exit
  %i.bn = phi ptr [ %.pre66, %._crit_edge.loopexit ], [ %i.bi, %_ZNSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EE9push_backERKS1_.exit ]
  %i.bo = phi ptr [ %.pre65, %._crit_edge.loopexit ], [ %i.ay, %_ZNSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %.not.i.i24 = icmp eq ptr %i.bn, %i.bo
  br i1 %.not.i.i24, label %_ZNSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EE5clearEv.exit26, label %_ZSt8_DestroyIPN14duckdb_tdigest8CentroidES1_EvT_S3_RSaIT0_E.exit.i.i25

_ZSt8_DestroyIPN14duckdb_tdigest8CentroidES1_EvT_S3_RSaIT0_E.exit.i.i25: ; preds = %._crit_edge
  store ptr %i.bo, ptr %i.c, align 8, !tbaa !1281
  br label %_ZNSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EE5clearEv.exit26

_ZNSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EE5clearEv.exit26: ; preds = %._crit_edge, %_ZSt8_DestroyIPN14duckdb_tdigest8CentroidES1_EvT_S3_RSaIT0_E.exit.i.i25
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bq = load ptr, ptr %i.q, align 8, !tbaa !1278
  %i.br = load double, ptr %i.bq, align 8, !tbaa !1299 ; 2 uses
  %i.bs = load double, ptr %i.bp, align 8, !tbaa !440 ; 2 uses
  %i.bt = fcmp olt double %i.br, %i.bs
  %.sroa.speculated44 = select i1 %i.bt, double %i.br, double %i.bs
  store double %.sroa.speculated44, ptr %i.bp, align 8, !tbaa !1300
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bv = load ptr, ptr %i.s, align 8, !tbaa !1295
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -16
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !1299 ; 2 uses
  %i.by = load double, ptr %i.bu, align 8, !tbaa !440 ; 2 uses
  %i.bz = fcmp olt double %i.by, %i.bx
  %.sroa.speculated = select i1 %i.bz, double %i.bx, double %i.by
  store double %.sroa.speculated, ptr %i.bu, align 8, !tbaa !1293
  tail call void @_ZN14duckdb_tdigest7TDigest16updateCumulativeEv(ptr noundef nonnull align 8 dereferenceable(128) %0)
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EE12emplace_backIJRKS1_EEEvDpOT_.exit
  %.sroa.050.062 = phi ptr [ %.sroa.050.0, %_ZNSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EE12emplace_backIJRKS1_EEEvDpOT_.exit ], [ %.sroa.050.058, %.lr.ph.preheader ] ; 6 uses
  %.061 = phi double [ %i.cc, %_ZNSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EE12emplace_backIJRKS1_EEEvDpOT_.exit ], [ %i.ba, %.lr.ph.preheader ] ; 2 uses
  %.02060 = phi double [ %.121, %_ZNSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EE12emplace_backIJRKS1_EEEvDpOT_.exit ], [ %i.bm, %.lr.ph.preheader ] ; 2 uses
  %.pn59 = phi ptr [ %.sroa.050.062, %_ZNSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EE12emplace_backIJRKS1_EEEvDpOT_.exit ], [ %i.ay, %.lr.ph.preheader ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.pn59, i64 24 ; 2 uses
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !1298 ; 3 uses
  %i.cc = fadd double %.061, %i.cb                ; 2 uses
  %i.cd = fcmp ugt double %i.cc, %.02060
  br i1 %i.cd, label %bb.j, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.ce = load ptr, ptr %i.s, align 8, !tbaa !1295 ; 2 uses
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -16 ; 2 uses
  %i.cg = getelementptr inbounds i8, ptr %i.ce, i64 -8 ; 3 uses
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !1298 ; 2 uses
  %i.ci = fcmp une double %i.ch, 0.000000e+00
  br i1 %i.ci, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cj = fadd double %i.cb, %i.ch                ; 2 uses
  store double %i.cj, ptr %i.cg, align 8, !tbaa !1298
  %i.ck = load double, ptr %i.ca, align 8, !tbaa !1298
  %i.cl = load double, ptr %.sroa.050.062, align 8, !tbaa !1299
  %i.cm = load double, ptr %i.cf, align 8, !tbaa !1299 ; 2 uses
  %i.cn = fsub double %i.cl, %i.cm
  %i.co = fmul double %i.ck, %i.cn
  %i.cp = fdiv double %i.co, %i.cj
  %i.cq = fadd double %i.cm, %i.cp
  br label %_ZN14duckdb_tdigest8Centroid3addERKS0_.exit

bb.i:                                             ; preds = %bb.g
  store double %i.cb, ptr %i.cg, align 8, !tbaa !1298
  %i.cr = load double, ptr %.sroa.050.062, align 8, !tbaa !1299
  br label %_ZN14duckdb_tdigest8Centroid3addERKS0_.exit

_ZN14duckdb_tdigest8Centroid3addERKS0_.exit:      ; preds = %bb.h, %bb.i
  %storemerge.i = phi double [ %i.cr, %bb.i ], [ %i.cq, %bb.h ]
  store double %storemerge.i, ptr %i.cf, align 8, !tbaa !1299
  br label %_ZNSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EE12emplace_backIJRKS1_EEEvDpOT_.exit

bb.j:                                             ; preds = %.lr.ph
  %i.cs = load double, ptr %i.z, align 8, !tbaa !1296 ; 2 uses
  %i.ct = fdiv double %.061, %i.cs
  %i.cu = load double, ptr %0, align 8, !tbaa !1294 ; 4 uses
  %i.cv = tail call double @llvm.fmuladd.f64(double %i.ct, double 2.000000e+00, double -1.000000e+00)
  %i.cw = tail call double @asin(double noundef %i.cv) #30, !tbaa !173
  %i.cx = fadd double %i.cw, f0x3FF921FB54442D18
  %i.cy = fmul double %i.cu, %i.cx
  %i.cz = fdiv double %i.cy, f0x400921FB54442D18
  %i.da = fadd double %i.cz, 1.000000e+00         ; 2 uses
  %i.db = fcmp olt double %i.cu, %i.da
  %.sroa.speculated.i28 = select i1 %i.db, double %i.cu, double %i.da
  %i.dc = fmul double %.sroa.speculated.i28, f0x400921FB54442D18
  %i.dd = fdiv double %i.dc, %i.cu
  %i.de = fadd double %i.dd, f0xBFF921FB54442D18
  %i.df = tail call double @sin(double noundef %i.de) #30, !tbaa !173
  %i.dg = fadd double %i.df, 1.000000e+00
  %i.dh = fmul double %i.dg, 5.000000e-01
  %i.di = fmul double %i.cs, %i.dh                ; 2 uses
  %i.dj = load ptr, ptr %i.s, align 8, !tbaa !1281 ; 5 uses
  %i.dk = load ptr, ptr %i.ae, align 8, !tbaa !1282
  %.not.i29 = icmp eq ptr %i.dj, %i.dk
  br i1 %.not.i29, label %bb.l, label %bb.k

end_hunk_0
begin_hunk_1_@_ZN6duckdb30ContinuousQuantileListFunction11DeserializeERNS_12DeserializerERNS_17AggregateFunctionE:bb.a
bb.g:                                             ; preds = %bb.e
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !181
  %.not.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !173
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i = phi i32 [ %i.i, %bb.h ], [ %i.s, %bb.i ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.j, label %_ZN6duckdb17AggregateFunctionD2Ev.exit, !prof !219

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #30, !inline_history !398
  br label %_ZN6duckdb17AggregateFunctionD2Ev.exit

_ZN6duckdb17AggregateFunctionD2Ev.exit:           ; preds = %bb.d, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.j
  call void @_ZN6duckdb18BaseScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(368) %3) #30, !inline_history !398
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void

bb.k:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.l:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb17AggregateFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(368) %3) #30
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.w, %bb.m ], [ %i.v, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.n ], [ %i.u, %bb.k ]
  %i.x = load ptr, ptr %0, align 8, !tbaa !434    ; 3 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb12FunctionDataESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb12FunctionDataEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb12FunctionDataEEclEPS1_.exit.i: ; preds = %bb.o
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !218
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.x) #30, !inline_history !15
  br label %_ZNSt10unique_ptrIN6duckdb12FunctionDataESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb12FunctionDataESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.o, %_ZNKSt14default_deleteIN6duckdb12FunctionDataEEclEPS1_.exit.i
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb30ContinuousQuantileListFunction12GetAggregateERKNS_11LogicalTypeE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::AggregateFunction") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.duckdb::LogicalType", align 8 ; 8 uses
  %3 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  tail call void @_ZN6duckdb30GetContinuousQuantileTemplatedINS_22ListContinuousQuantileEEENS_17AggregateFunctionERKNS_11LogicalTypeE(ptr dead_on_unwind writable sret(%"class.duckdb::AggregateFunction") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !180
  %i.d = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef 0, i64 noundef %i.c, ptr noundef nonnull @.str.12, i64 noundef 13)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.f ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr @_ZN6duckdb30ContinuousQuantileListFunction4BindERNS_13ClientContextERNS_17AggregateFunctionERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS7_ELb1EEELb1ESaISA_EEE, ptr %i.e, align 8, !tbaa !332
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 328
  store ptr @_ZN6duckdb16QuantileBindData9SerializeERNS_10SerializerENS_12optional_ptrINS_12FunctionDataELb1EEERKNS_17AggregateFunctionE, ptr %i.f, align 8, !tbaa !335
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 336
  store ptr @_ZN6duckdb30ContinuousQuantileListFunction11DeserializeERNS_12DeserializerERNS_17AggregateFunctionE, ptr %i.g, align 8, !tbaa !336
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 noundef zeroext 23)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  invoke void @_ZN6duckdb11LogicalType4LISTERKS0_(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !186  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !185
  %.not.i = icmp eq ptr %i.i, %i.k
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.d
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !186
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.m, ptr %i.h, align 8, !tbaa !186
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 136
  invoke void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr %i.i, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit unwind label %bb.j

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit: ; preds = %.noexc, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i8 2, ptr %i.o, align 8, !tbaa !337
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void

bb.f:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #30
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.r, %bb.h ], [ %i.q, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.k

bb.j:                                             ; preds = %bb.e, %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #30
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn7 = phi { ptr, i32 } [ %i.s, %bb.j ], [ %.pn, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %.pn7.pn = phi { ptr, i32 } [ %.pn7, %bb.k ], [ %i.p, %bb.f ]
  call void @_ZN6duckdb17AggregateFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(368) %0) #30
  resume { ptr, i32 } %.pn7.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #18

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noreturn }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree noreturn }
attributes #15 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nounwind memory(none) }
attributes #25 = { nobuiltin nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #30 = { nounwind }
attributes #31 = { builtin allocsize(0) }
attributes #32 = { noreturn }
attributes #33 = { noreturn nounwind }
attributes #34 = { builtin nounwind }
attributes #35 = { nounwind allocsize(1) }
attributes #36 = { nounwind allocsize(0) }
attributes #37 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!167, !168}
!llvm.ident = !{!169}
!llvm.errno.tbaa = !{!173}

!0 = distinct !{!0, !187}
!1 = distinct !{ptr @_ZN6duckdb19UnifiedVectorFormatD2Ev, ptr @_ZN6duckdb15SelectionVectorD2Ev, ptr @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev, null, null, null}
!2 = distinct !{ptr @_ZN6duckdb19UnifiedVectorFormatD2Ev, null, null, null, null, null}
!3 = distinct !{!3, !187}
!4 = distinct !{!4, !187}
!5 = distinct !{!5, !187}
!6 = distinct !{!6, !187}
!7 = distinct !{!7, !187}
!8 = distinct !{ptr @_ZN6duckdb17AggregateFunctionD2Ev, null, null, null, null}
!9 = distinct !{!9, !187}
!10 = distinct !{ptr @_ZN6duckdb15SelectionVectorD2Ev, ptr @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev, null, null, null}
!11 = distinct !{null, null, null, null, null}
!12 = distinct !{!12, !187}
!13 = distinct !{!13, !187}
!14 = distinct !{!14, !187}
!15 = distinct !{null, null}
!16 = distinct !{!16, !187}
!17 = distinct !{!17, !187}
!18 = distinct !{!18, !187}
!19 = distinct !{!19, !187}
!20 = distinct !{!20, !187}
!21 = distinct !{!21, !187}
!22 = distinct !{!22, !187}
!23 = distinct !{!23, !187}
!24 = distinct !{!24, !187}
!25 = distinct !{!25, !187}
!26 = distinct !{!26, !187}
!27 = distinct !{!27, !187}
!28 = distinct !{!28, !187}
!29 = distinct !{!29, !187}
!30 = distinct !{!30, !187}
!31 = distinct !{!31, !187}
!32 = distinct !{!32, !187}
!33 = distinct !{!33, !187}
!34 = distinct !{!34, !187}
!35 = distinct !{!35, !187}
!36 = distinct !{!36, !187}
!37 = distinct !{!37, !187}
!38 = distinct !{!38, !187}
!39 = distinct !{!39, !187}
!40 = distinct !{!40, !187}
!41 = distinct !{!41, !187}
!42 = distinct !{!42, !187}
!43 = distinct !{!43, !187}
!44 = distinct !{!44, !187}
!45 = distinct !{null, null, null, null, null, null, null, null, null}
!46 = distinct !{!46, !187}
!47 = distinct !{!47, !187}
!48 = distinct !{!48, !187}
!49 = distinct !{null, null}
!50 = distinct !{ptr @_ZN6duckdb18BoundOrderModifierD2Ev, null, null, null, null, ptr @_ZN6duckdb16BoundOrderByNodeD2Ev, null, null}
!51 = distinct !{!51, !187}
!52 = distinct !{!52, !187}
!53 = distinct !{!53, !187}
!54 = distinct !{!54, !187}
!55 = distinct !{!55, !187}
!56 = distinct !{!56, !187}
!57 = distinct !{!57, !187}
!58 = distinct !{!58, !187}
!59 = distinct !{!59, !187}
!60 = distinct !{!60, !187}
!61 = distinct !{!61, !187}
!62 = distinct !{!62, !187}
!63 = distinct !{!63, !187}
!64 = distinct !{!64, !187}
!65 = distinct !{!65, !187}
!66 = distinct !{!66, !187}
!67 = distinct !{!67, !187}
!68 = distinct !{!68, !187}
!69 = distinct !{!69, !187}
!70 = distinct !{!70, !187}
!71 = distinct !{!71, !187}
!72 = distinct !{!72, !187}
!73 = distinct !{!73, !187}
!74 = distinct !{!74, !187}
!75 = distinct !{!75, !187}
!76 = distinct !{!76, !187}
!77 = distinct !{!77, !187}
!78 = distinct !{!78, !187}
!79 = distinct !{!79, !187}
!80 = distinct !{!80, !187}
!81 = distinct !{!81, !187}
!82 = distinct !{!82, !187}
!83 = distinct !{!83, !187}
!84 = distinct !{!84, !187}
!85 = distinct !{!85, !187}
!86 = distinct !{!86, !187}
!87 = distinct !{!87, !187}
!88 = distinct !{!88, !187}
!89 = distinct !{!89, !187}
!90 = distinct !{!90, !187}
!91 = distinct !{!91, !187}
!92 = distinct !{!92, !187}
!93 = distinct !{!93, !187}
!94 = distinct !{!94, !187}
!95 = distinct !{!95, !187}
!96 = distinct !{!96, !187}
!97 = distinct !{!97, !187}
!98 = distinct !{!98, !187}
!99 = distinct !{!99, !187}
!100 = distinct !{!100, !187}
!101 = distinct !{!101, !187}
!102 = distinct !{!102, !187}
!103 = distinct !{!103, !187}
!104 = distinct !{!104, !187}
!105 = distinct !{!105, !187}
!106 = distinct !{!106, !187}
!107 = distinct !{!107, !187}
!108 = distinct !{!108, !187}
!109 = distinct !{!109, !187}
!110 = distinct !{!110, !1561}
!111 = distinct !{!111, !187}
!112 = distinct !{!112, !187}
!113 = distinct !{!113, !187}
!114 = distinct !{!114, !187}
!115 = distinct !{!115, !187}
!116 = distinct !{!116, !187}
!117 = distinct !{!117, !187}
!118 = distinct !{!118, !187}
!119 = distinct !{!119, !187}
!120 = distinct !{!120, !187}
!121 = distinct !{!121, !187}
!122 = distinct !{!122, !187}
!123 = distinct !{!123, !187}
!124 = distinct !{!124, !187}
!125 = distinct !{!125, !187}
!126 = distinct !{!126, !187}
!127 = distinct !{!127, !187}
!128 = distinct !{!128, !187}
!129 = distinct !{!129, !187}
!130 = distinct !{!130, !187}
!131 = distinct !{!131, !187}
!132 = distinct !{!132, !187}
!133 = distinct !{!133, !187}
!134 = distinct !{!134, !187}
!135 = distinct !{!135, !187}
!136 = distinct !{!136, !187}
!137 = distinct !{!137, !187}
!138 = distinct !{!138, !187}
!139 = distinct !{!139, !187}
!140 = distinct !{!140, !187}
!141 = distinct !{!141, !187}
!142 = distinct !{!142, !187}
!143 = distinct !{!143, !187}
!144 = distinct !{!144, !187}
!145 = distinct !{!145, !187}
!146 = distinct !{!146, !187}
!147 = distinct !{!147, !187}
!148 = distinct !{!148, !187}
!149 = distinct !{!149, !187}
!150 = distinct !{!150, !187}
!151 = distinct !{!151, !187}
!152 = distinct !{!152, !187}
!153 = distinct !{!153, !187}
!154 = distinct !{!154, !187}
!155 = distinct !{!155, !187}
!156 = distinct !{!156, !187}
end_hunk_1
