Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_core_functions_holistic?download=true
inline.NumInlined: 37468
inline.NumDeleted: 10738
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 80
begin_hunk_0_@_ZN14duckdb_tdigest7TDigest16updateCumulativeEv:bb.a
  %i.z = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #31 ; 5 uses
  %i.aa = load ptr, ptr %i.i, align 8, !tbaa !438 ; 4 uses
  %i.ab = load ptr, ptr %i.k, align 8, !tbaa !437
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 0
  br i1 %i.af, label %bb.d, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %i.aa, i64 %i.ae, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i: ; preds = %bb.d, %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.aa, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.aa) #34
  br label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i

_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i: ; preds = %bb.e, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i
  store ptr %i.z, ptr %i.i, align 8, !tbaa !438
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x ; 2 uses
  store ptr %i.ag, ptr %i.k, align 8, !tbaa !437
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.n ; 2 uses
  store ptr %i.ah, ptr %i.p, align 8, !tbaa !442
  br label %_ZNSt6vectorIdSaIdEE7reserveEm.exit

_ZNSt6vectorIdSaIdEE7reserveEm.exit:              ; preds = %bb.c, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i
  %i.ai = phi ptr [ %i.j, %bb.c ], [ %i.z, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i ] ; 2 uses
  %i.aj = phi ptr [ %i.q, %bb.c ], [ %i.ah, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i ] ; 2 uses
  %i.ak = phi ptr [ %i.m, %bb.c ], [ %i.ag, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i ] ; 2 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit, %_ZNSt6vectorIdSaIdEE7reserveEm.exit
  %i.al = phi ptr [ %i.ai, %_ZNSt6vectorIdSaIdEE7reserveEm.exit ], [ %i.cd, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit ] ; 4 uses
  %i.am = phi ptr [ %i.aj, %_ZNSt6vectorIdSaIdEE7reserveEm.exit ], [ %i.ce, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit ] ; 2 uses
  %i.an = phi ptr [ %i.ak, %_ZNSt6vectorIdSaIdEE7reserveEm.exit ], [ %i.cf, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit ] ; 3 uses
  %.014.lcssa = phi double [ 0.000000e+00, %_ZNSt6vectorIdSaIdEE7reserveEm.exit ], [ %i.cg, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit ] ; 2 uses
  %.not.i = icmp eq ptr %i.an, %i.am
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  store double %.014.lcssa, ptr %i.an, align 8, !tbaa !440
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.ao, ptr %i.k, align 8, !tbaa !437
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit

bb.g:                                             ; preds = %._crit_edge
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = ptrtoint ptr %i.al to i64
  %i.ar = sub i64 %i.ap, %i.aq                    ; 5 uses
  %i.as = icmp eq i64 %i.ar, 9223372036854775800
  br i1 %i.as, label %bb.h, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #32
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.at = ashr exact i64 %i.ar, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.at, i64 1)
  %i.au = add nsw i64 %.sroa.speculated.i.i.i, %i.at ; 2 uses
  %i.av = icmp ult i64 %i.au, %i.at
  %i.aw = tail call i64 @llvm.umin.i64(i64 %i.au, i64 1152921504606846975)
  %i.ax = select i1 %i.av, i64 1152921504606846975, i64 %i.aw ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ax, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ay = shl nuw nsw i64 %i.ax, 3
  %i.az = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #31 ; 4 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 %i.ar ; 2 uses
  store double %.014.lcssa, ptr %i.ba, align 8, !tbaa !440
  %i.bb = icmp sgt i64 %i.ar, 0
  br i1 %i.bb, label %bb.i, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.az, ptr align 8 %i.al, i64 %i.ar, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i: ; preds = %bb.i, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.not.i17.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.al) #34
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i
  store ptr %i.az, ptr %i.i, align 8, !tbaa !438
  store ptr %i.bc, ptr %i.k, align 8, !tbaa !437
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ax
  store ptr %i.bd, ptr %i.p, align 8, !tbaa !442
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit

_ZNSt6vectorIdSaIdEE9push_backERKd.exit:          ; preds = %bb.f, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i
  ret void

.lr.ph:                                           ; preds = %_ZNSt6vectorIdSaIdEE7reserveEm.exit, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit
  %i.be = phi ptr [ %i.cd, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit ], [ %i.ai, %_ZNSt6vectorIdSaIdEE7reserveEm.exit ] ; 5 uses
  %i.bf = phi ptr [ %i.ce, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit ], [ %i.aj, %_ZNSt6vectorIdSaIdEE7reserveEm.exit ] ; 3 uses
  %i.bg = phi ptr [ %i.cf, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit ], [ %i.ak, %_ZNSt6vectorIdSaIdEE7reserveEm.exit ] ; 3 uses
  %.017 = phi i64 [ %i.ch, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit ], [ 0, %_ZNSt6vectorIdSaIdEE7reserveEm.exit ] ; 2 uses
  %.01416 = phi double [ %i.cg, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit ], [ 0.000000e+00, %_ZNSt6vectorIdSaIdEE7reserveEm.exit ] ; 2 uses
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !1278
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %.017
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !1298 ; 2 uses
  %i.bl = fmul double %i.bk, 5.000000e-01
  %i.bm = fadd double %.01416, %i.bl              ; 2 uses
  %.not.i.i8 = icmp eq ptr %i.bg, %i.bf
  br i1 %.not.i.i8, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  store double %i.bm, ptr %i.bg, align 8, !tbaa !440
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  store ptr %i.bn, ptr %i.k, align 8, !tbaa !437
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

bb.l:                                             ; preds = %.lr.ph
  %i.bo = ptrtoint ptr %i.bf to i64
  %i.bp = ptrtoint ptr %i.be to i64
  %i.bq = sub i64 %i.bo, %i.bp                    ; 5 uses
  %i.br = icmp eq i64 %i.bq, 9223372036854775800
  br i1 %i.br, label %bb.m, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #32
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.l
  %i.bs = ashr exact i64 %i.bq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bs, i64 1)
  %i.bt = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bs ; 2 uses
  %i.bu = icmp ult i64 %i.bt, %i.bs
  %i.bv = tail call i64 @llvm.umin.i64(i64 %i.bt, i64 1152921504606846975)
  %i.bw = select i1 %i.bu, i64 1152921504606846975, i64 %i.bv ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bw, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bx = shl nuw nsw i64 %i.bw, 3
  %i.by = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bx) #31 ; 5 uses
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 %i.bq ; 2 uses
  store double %i.bm, ptr %i.bz, align 8, !tbaa !440
  %i.ca = icmp sgt i64 %i.bq, 0
  br i1 %i.ca, label %bb.n, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

bb.n:                                             ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.by, ptr align 8 %i.be, i64 %i.bq, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.n, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.be) #34
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i: ; preds = %bb.o, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  store ptr %i.by, ptr %i.i, align 8, !tbaa !438
  store ptr %i.cb, ptr %i.k, align 8, !tbaa !437
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bw ; 2 uses
  store ptr %i.cc, ptr %i.p, align 8, !tbaa !442
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

_ZNSt6vectorIdSaIdEE9push_backEOd.exit:           ; preds = %bb.k, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i
  %i.cd = phi ptr [ %i.be, %bb.k ], [ %i.by, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ] ; 2 uses
  %i.ce = phi ptr [ %i.bf, %bb.k ], [ %i.cc, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ] ; 2 uses
  %i.cf = phi ptr [ %i.bn, %bb.k ], [ %i.cb, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ] ; 2 uses
  %i.cg = fadd double %.01416, %i.bk              ; 2 uses
  %i.ch = add nuw i64 %.017, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ch, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !5356
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %.fr29 = freeze ptr %1                          ; 3 uses
  %.fr28 = freeze ptr %0                          ; 36 uses
  %i.a = ptrtoint ptr %.fr28 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr29 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_SD_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr28, i64 16 ; 6 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph50

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEET_SD_SD_T0_.exit
  %i.h = icmp eq i64 %i.ca, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph50, !llvm.loop !5357

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i27.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.cu, %bb.b ] ; 2 uses
  %storemerge25.lcssa = phi ptr [ %.fr29, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ]
  %i.i = lshr i64 %.fr.i27.lcssa, 4               ; 2 uses
  %i.j = add nsw i64 %i.i, -2                     ; 2 uses
  %i.k = lshr i64 %i.j, 1                         ; 3 uses
  %i.l = add nsw i64 %i.i, -1
  %i.m = lshr i64 %i.l, 1                         ; 2 uses
  %i.n = and i64 %.fr.i27.lcssa, 16
  %i.o = icmp eq i64 %i.n, 0
  %i.p = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %.fr28, i64 %i.p
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %.fr28, i64 %i.k
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_T0_SE_T1_T2_.exit.i.i, %._crit_edge
  %.010.i.i = phi i64 [ %i.k, %._crit_edge ], [ %i.ap, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_T0_SE_T1_T2_.exit.i.i ] ; 8 uses
  %i.s = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %.010.i.i
  %i.t = load <2 x double>, ptr %i.s, align 8, !tbaa !440 ; 2 uses
  %i.u = icmp slt i64 %.010.i.i, %i.m
  br i1 %i.u, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.037.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.010.i.i, %bb.c ] ; 2 uses
  %i.v = shl i64 %.037.i.i.i, 1                   ; 2 uses
  %i.w = add i64 %i.v, 2                          ; 2 uses
  %i.x = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %i.w
  %i.y = or disjoint i64 %i.v, 1                  ; 2 uses
  %i.z = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %i.y
  %i.aa = load double, ptr %i.x, align 8, !tbaa !1299
  %i.ab = load double, ptr %i.z, align 8, !tbaa !1299
  %i.ac = fcmp olt double %i.aa, %i.ab
  %spec.select.i.i.i = select i1 %i.ac, i64 %i.y, i64 %i.w ; 4 uses
  %i.ad = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %spec.select.i.i.i
  %i.ae = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %.037.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false), !tbaa.struct !1283
  %i.af = icmp slt i64 %spec.select.i.i.i, %i.m
  br i1 %i.af, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !5358

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ %.010.i.i, %bb.c ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.ag = icmp eq i64 %.0.lcssa.i.i.i, %i.k
  %or.cond.i.i = select i1 %i.o, i1 %i.ag, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false), !tbaa.struct !1283
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %i.p, %bb.d ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ah = icmp sgt i64 %.1.i.i.i, %.010.i.i
  br i1 %i.ah, label %.lr.ph.i.i.i.i17.preheader, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_T0_SE_T1_T2_.exit.i.i

.lr.ph.i.i.i.i17.preheader:                       ; preds = %bb.e
  %i.ai = extractelement <2 x double> %i.t, i64 0
  br label %.lr.ph.i.i.i.i17

.lr.ph.i.i.i.i17:                                 ; preds = %.lr.ph.i.i.i.i17.preheader, %bb.f
  %.019.i.i.i.i = phi i64 [ %.0920.i.i.i.i, %bb.f ], [ %.1.i.i.i, %.lr.ph.i.i.i.i17.preheader ] ; 3 uses
  %.0920.in.i.i.i.i = add nsw i64 %.019.i.i.i.i, -1
  %.0920.i.i.i.i = sdiv i64 %.0920.in.i.i.i.i, 2  ; 4 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %.fr28, i64 %.0920.i.i.i.i ; 2 uses
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !1299
  %i.al = fcmp olt double %i.ak, %i.ai
  br i1 %i.al, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_T0_SE_T1_T2_.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i17
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %.fr28, i64 %.019.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 16, i1 false), !tbaa.struct !1283
  %i.an = icmp sgt i64 %.0920.i.i.i.i, %.010.i.i
  br i1 %i.an, label %.lr.ph.i.i.i.i17, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_T0_SE_T1_T2_.exit.i.i, !llvm.loop !5359

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_T0_SE_T1_T2_.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i17, %bb.e
  %.0.lcssa.i.i.i.i16 = phi i64 [ %.1.i.i.i, %bb.e ], [ %.0920.i.i.i.i, %bb.f ], [ %.019.i.i.i.i, %.lr.ph.i.i.i.i17 ]
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %.fr28, i64 %.0.lcssa.i.i.i.i16
  store <2 x double> %i.t, ptr %i.ao, align 8, !tbaa !440
  %.not.i.i = icmp eq i64 %.010.i.i, 0
  %i.ap = add nsw i64 %.010.i.i, -1
  br i1 %.not.i.i, label %.lr.ph.i.i, label %bb.c, !llvm.loop !5360

.lr.ph.i.i:                                       ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_T0_SE_T1_T2_.exit.i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_SD_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.aq, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_SD_RT0_.exit.i.i ], [ %storemerge25.lcssa, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_T0_SE_T1_T2_.exit.i.i ]
  %i.aq = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -16 ; 4 uses
  %i.ar = load <2 x double>, ptr %i.aq, align 8, !tbaa !440 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %.fr28, i64 16, i1 false), !tbaa.struct !1283
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.as, %i.a                     ; 3 uses
  %i.au = ashr exact i64 %i.at, 4                 ; 3 uses
  %i.av = add nsw i64 %i.au, -1
  %i.aw = lshr i64 %i.av, 1
  %i.ax = icmp sgt i64 %i.au, 2
  br i1 %i.ax, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.037.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.ay = shl i64 %.037.i.i.i.i, 1                ; 2 uses
  %i.az = add i64 %i.ay, 2                        ; 2 uses
  %i.ba = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %i.az
  %i.bb = or disjoint i64 %i.ay, 1                ; 2 uses
  %i.bc = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %i.bb
  %i.bd = load double, ptr %i.ba, align 8, !tbaa !1299
  %i.be = load double, ptr %i.bc, align 8, !tbaa !1299
  %i.bf = fcmp olt double %i.bd, %i.be
  %spec.select.i.i.i.i = select i1 %i.bf, i64 %i.bb, i64 %i.az ; 4 uses
  %i.bg = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %spec.select.i.i.i.i
  %i.bh = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %.037.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i64 16, i1 false), !tbaa.struct !1283
  %i.bi = icmp slt i64 %spec.select.i.i.i.i, %i.aw
  br i1 %i.bi, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !5358

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.bj = and i64 %i.at, 16
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bl = add nsw i64 %i.au, -2
  %i.bm = ashr exact i64 %i.bl, 1
  %i.bn = icmp eq i64 %.0.lcssa.i.i.i.i, %i.bm
  br i1 %i.bn, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.bo = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.bp = or disjoint i64 %i.bo, 1                ; 2 uses
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %.fr28, i64 %i.bp
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %.fr28, i64 %.0.lcssa.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.br, ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i64 16, i1 false), !tbaa.struct !1283
  br label %.lr.ph.i.i.i.i.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_SD_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.h, %.thread.i.i.i
  %.019.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.h ], [ %i.bp, %.thread.i.i.i ]
  %i.bs = extractelement <2 x double> %i.ar, i64 0
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.i
  %.019.i.i.i.i.i = phi i64 [ %.0920.i.i89.i.i.i, %bb.i ], [ %.019.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i89.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %.fr28, i64 %.0920.i.i89.i.i.i ; 2 uses
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !1299
  %i.bv = fcmp olt double %i.bu, %i.bs
  br i1 %i.bv, label %bb.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_SD_RT0_.exit.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bw = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %.019.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, ptr noundef nonnull align 8 dereferenceable(16) %i.bt, i64 16, i1 false), !tbaa.struct !1283
  %.not10.i.i.i = icmp eq i64 %.0920.i.i89.i.i.i, 0
  br i1 %.not10.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_SD_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !5359

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_SD_RT0_.exit.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i.i, %bb.h
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.h ], [ %.019.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.i ]
  %i.bx = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %.0.lcssa.i.i.i.i.i
  store <2 x double> %i.ar, ptr %i.bx, align 8, !tbaa !440
  %i.by = icmp sgt i64 %i.at, 16
  br i1 %i.by, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_SD_T0_.exit, !llvm.loop !5361

.lr.ph50:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2549 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %.fr29, %.lr.ph ] ; 3 uses
  %.02648 = phi i64 [ %i.ca, %bb.b ], [ %2, %.lr.ph ]
  %i.bz = phi i64 [ %i.cv, %bb.b ], [ %i.d, %.lr.ph ]
  %i.ca = add nsw i64 %.02648, -1                 ; 3 uses
  %i.cb = lshr i64 %i.bz, 1
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %.fr28, i64 %i.cb ; 5 uses
  %i.cd = getelementptr inbounds i8, ptr %storemerge2549, i64 -16 ; 5 uses
  %i.ce = load double, ptr %i.f, align 8, !tbaa !1299 ; 3 uses
  %i.cf = load double, ptr %i.cc, align 8, !tbaa !1299 ; 3 uses
  %i.cg = fcmp olt double %i.ce, %i.cf
  %i.ch = load double, ptr %i.cd, align 8, !tbaa !1299 ; 4 uses
  br i1 %i.cg, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph50
  %i.ci = fcmp olt double %i.cf, %i.ch
  br i1 %i.ci, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.sroa.0.0.copyload = load <2 x double>, ptr %.fr28, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr28, ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i64 16, i1 false), !tbaa.struct !1283
  store <2 x double> %.sroa.0.0.copyload, ptr %i.cc, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  %i.cj = fcmp olt double %i.ce, %i.ch
  br i1 %i.cj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.sroa.057.0.copyload = load <2 x double>, ptr %.fr28, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr28, ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i64 16, i1 false), !tbaa.struct !1283
  store <2 x double> %.sroa.057.0.copyload, ptr %i.cd, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  %.sroa.059.0.copyload = load <2 x double>, ptr %.fr28, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr28, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !1283
  store <2 x double> %.sroa.059.0.copyload, ptr %i.f, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.o:                                             ; preds = %.lr.ph50
  %i.ck = fcmp olt double %i.ce, %i.ch
  br i1 %i.ck, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.sroa.061.0.copyload = load <2 x double>, ptr %.fr28, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr28, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !1283
  store <2 x double> %.sroa.061.0.copyload, ptr %i.f, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  %i.cl = fcmp olt double %i.cf, %i.ch
  br i1 %i.cl, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %.sroa.063.0.copyload = load <2 x double>, ptr %.fr28, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr28, ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i64 16, i1 false), !tbaa.struct !1283
  store <2 x double> %.sroa.063.0.copyload, ptr %i.cd, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.s:                                             ; preds = %bb.q
  %.sroa.065.0.copyload = load <2 x double>, ptr %.fr28, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr28, ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i64 16, i1 false), !tbaa.struct !1283
  store <2 x double> %.sroa.065.0.copyload, ptr %i.cc, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_SD_SD_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_SD_SD_T0_.exit.i.preheader: ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_SD_SD_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_SD_SD_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_SD_SD_T0_.exit.i.preheader, %bb.v
  %.sroa.010.0.i.i = phi ptr [ %i.cp, %bb.v ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_SD_SD_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge2549, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_SD_SD_T0_.exit.i.preheader ]
  %i.cm = load double, ptr %.fr28, align 8, !tbaa !1299 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_SD_SD_T0_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_SD_SD_T0_.exit.i ], [ %i.cp, %bb.t ] ; 9 uses
  %i.cn = load double, ptr %.sroa.010.1.i.i, align 8, !tbaa !1299
  %i.co = fcmp olt double %i.cn, %i.cm
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 16 ; 2 uses
  br i1 %i.co, label %bb.t, label %.preheader.i.i, !llvm.loop !5362

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.t ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 6 uses
  %i.cq = load double, ptr %.sroa.0.1.i.i, align 8, !tbaa !1299
  %i.cr = fcmp olt double %i.cm, %i.cq
  br i1 %i.cr, label %.preheader.i.i, label %bb.u, !llvm.loop !5363

bb.u:                                             ; preds = %.preheader.i.i
  %i.cs = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.cs, label %bb.v, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEET_SD_SD_T0_.exit

bb.v:                                             ; preds = %bb.u
  %.sroa.067.0.copyload = load <2 x double>, ptr %.sroa.010.1.i.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.010.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.1.i.i, i64 16, i1 false), !tbaa.struct !1283
  store <2 x double> %.sroa.067.0.copyload, ptr %.sroa.0.1.i.i, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_SD_SD_T0_.exit.i, !llvm.loop !5364

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEET_SD_SD_T0_.exit: ; preds = %bb.u
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_T0_T1_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge2549, i64 noundef %i.ca)
  %i.ct = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.cu = sub i64 %i.ct, %i.a                     ; 2 uses
  %i.cv = ashr exact i64 %i.cu, 4                 ; 2 uses
  %i.cw = icmp sgt i64 %i.cv, 16
  br i1 %i.cw, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_SD_T0_.exit, !llvm.loop !5357

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_SD_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEET_SD_SD_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_SD_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 256
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %.sroa.0.019.i.idx = phi i64 [ 16, %.lr.ph.i ], [ %.sroa.0.019.i.add, %bb.g ] ; 4 uses
  %.pn18.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.019.i.ptr, %bb.g ] ; 4 uses
  %.sroa.0.019.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.019.i.idx ; 5 uses
  %i.e = load double, ptr %.sroa.0.019.i.ptr, align 8, !tbaa !1299 ; 4 uses
  %i.f = load double, ptr %0, align 8, !tbaa !1299
  %i.g = fcmp olt double %i.e, %i.f
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload = load <2 x double>, ptr %.sroa.0.019.i.ptr, align 8
  %i.h = icmp samesign ugt i64 %.sroa.0.019.i.idx, 16
  br i1 %i.h, label %bb.d, label %bb.e, !prof !373

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.019.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1283
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i: ; preds = %bb.e, %bb.d
  store <2 x double> %.sroa.0.0.copyload, ptr %0, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 24
  %.sroa.5.0.copyload.i.i = load double, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !440
  %i.j = load double, ptr %.pn18.i, align 8, !tbaa !1299
  %i.k = fcmp olt double %i.e, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_18CentroidComparatorEEEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.sroa.0.012.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn18.i, %bb.f ] ; 4 uses
  %.sroa.07.011.i.i = phi ptr [ %.sroa.0.012.i.i, %.lr.ph.i.i ], [ %.sroa.0.019.i.ptr, %bb.f ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.011.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.012.i.i, i64 16, i1 false), !tbaa.struct !1283
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.012.i.i, i64 -16 ; 2 uses
  %i.l = load double, ptr %.sroa.0.0.i.i, align 8, !tbaa !1299
  %i.m = fcmp olt double %i.e, %i.l
  br i1 %i.m, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_18CentroidComparatorEEEEvT_T0_.exit.i, !llvm.loop !5365

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_18CentroidComparatorEEEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.07.0.lcssa.i.i = phi ptr [ %.sroa.0.019.i.ptr, %bb.f ], [ %.sroa.0.012.i.i, %.lr.ph.i.i ] ; 2 uses
  store double %i.e, ptr %.sroa.07.0.lcssa.i.i, align 8, !tbaa !440
  %.sroa.5.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i, i64 8
  store double %.sroa.5.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx5.i.i, align 8, !tbaa !440
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_18CentroidComparatorEEEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i
  %.sroa.0.019.i.add = add nuw nsw i64 %.sroa.0.019.i.idx, 16 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.019.i.add, 256
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_T0_.exit, label %bb.b, !llvm.loop !5366

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_T0_.exit: ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %.not6.i = icmp eq ptr %i.n, %1
  br i1 %.not6.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_T0_.exit, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_18CentroidComparatorEEEEvT_T0_.exit.i15
  %.sroa.0.07.i = phi ptr [ %i.u, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_18CentroidComparatorEEEEvT_T0_.exit.i15 ], [ %i.n, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_T0_.exit ] ; 5 uses
  %i.o = load <2 x double>, ptr %.sroa.0.07.i, align 8, !tbaa !440 ; 2 uses
  %.sroa.0.010.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i, i64 -16 ; 2 uses
  %i.p = load double, ptr %.sroa.0.010.i.i, align 8, !tbaa !1299
  %i.q = extractelement <2 x double> %i.o, i64 0  ; 2 uses
  %i.r = fcmp olt double %i.q, %i.p
  br i1 %i.r, label %.lr.ph.i.i19, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_18CentroidComparatorEEEEvT_T0_.exit.i15

.lr.ph.i.i19:                                     ; preds = %.lr.ph.i12, %.lr.ph.i.i19
  %.sroa.0.012.i.i20 = phi ptr [ %.sroa.0.0.i.i22, %.lr.ph.i.i19 ], [ %.sroa.0.010.i.i, %.lr.ph.i12 ] ; 4 uses
  %.sroa.07.011.i.i21 = phi ptr [ %.sroa.0.012.i.i20, %.lr.ph.i.i19 ], [ %.sroa.0.07.i, %.lr.ph.i12 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.011.i.i21, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.012.i.i20, i64 16, i1 false), !tbaa.struct !1283
  %.sroa.0.0.i.i22 = getelementptr inbounds i8, ptr %.sroa.0.012.i.i20, i64 -16 ; 2 uses
  %i.s = load double, ptr %.sroa.0.0.i.i22, align 8, !tbaa !1299
  %i.t = fcmp olt double %i.q, %i.s
  br i1 %i.t, label %.lr.ph.i.i19, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_18CentroidComparatorEEEEvT_T0_.exit.i15, !llvm.loop !5365

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_18CentroidComparatorEEEEvT_T0_.exit.i15: ; preds = %.lr.ph.i.i19, %.lr.ph.i12
  %.sroa.07.0.lcssa.i.i16 = phi ptr [ %.sroa.0.07.i, %.lr.ph.i12 ], [ %.sroa.0.012.i.i20, %.lr.ph.i.i19 ]
  store <2 x double> %i.o, ptr %.sroa.07.0.lcssa.i.i16, align 8, !tbaa !440
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 16 ; 2 uses
  %.not.i18 = icmp eq ptr %i.u, %1
  br i1 %.not.i18, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_T0_.exit, label %.lr.ph.i12, !llvm.loop !5367

bb.h:                                             ; preds = %bb.a
  %i.v = icmp eq ptr %0, %1
  %.sroa.0.016.i24 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not17.i25 = icmp eq ptr %.sroa.0.016.i24, %1
  %or.cond = select i1 %i.v, i1 true, i1 %.not17.i25
  br i1 %or.cond, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_T0_.exit, label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %bb.h, %bb.n
  %.sroa.0.019.i27 = phi ptr [ %.sroa.0.0.i34, %bb.n ], [ %.sroa.0.016.i24, %bb.h ] ; 7 uses
  %.pn18.i28 = phi ptr [ %.sroa.0.019.i27, %bb.n ], [ %0, %bb.h ] ; 5 uses
  %i.w = load double, ptr %.sroa.0.019.i27, align 8, !tbaa !1299 ; 4 uses
  %i.x = load double, ptr %0, align 8, !tbaa !1299
  %i.y = fcmp olt double %i.w, %i.x
  br i1 %i.y, label %bb.i, label %bb.m

bb.i:                                             ; preds = %.lr.ph.i26
  %.sroa.057.0.copyload = load <2 x double>, ptr %.sroa.0.019.i27, align 8
  %i.z = ptrtoint ptr %.sroa.0.019.i27 to i64
  %i.aa = sub i64 %i.z, %i.b                      ; 3 uses
  %i.ab = ashr exact i64 %i.aa, 4                 ; 2 uses
  %i.ac = icmp sgt i64 %i.ab, 1
  br i1 %i.ac, label %bb.j, label %bb.k, !prof !373

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.pn18.i28, i64 32
  %i.ae = sub nsw i64 0, %i.ab
  %i.af = getelementptr inbounds [16 x i8], ptr %i.ad, i64 %i.ae
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.aa, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i40

bb.k:                                             ; preds = %bb.i
  %i.ag = icmp eq i64 %i.aa, 16
  br i1 %i.ag, label %bb.l, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i40

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %.pn18.i28, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1283
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i40

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i40: ; preds = %bb.l, %bb.k, %bb.j
  store <2 x double> %.sroa.057.0.copyload, ptr %0, align 8
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph.i26
  %.sroa.5.0..sroa_idx.i.i29 = getelementptr inbounds nuw i8, ptr %.pn18.i28, i64 24
  %.sroa.5.0.copyload.i.i30 = load double, ptr %.sroa.5.0..sroa_idx.i.i29, align 8, !tbaa !440
  %i.ai = load double, ptr %.pn18.i28, align 8, !tbaa !1299
  %i.aj = fcmp olt double %i.w, %i.ai
  br i1 %i.aj, label %.lr.ph.i.i36, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_18CentroidComparatorEEEEvT_T0_.exit.i31

.lr.ph.i.i36:                                     ; preds = %bb.m, %.lr.ph.i.i36
  %.sroa.0.012.i.i37 = phi ptr [ %.sroa.0.0.i.i39, %.lr.ph.i.i36 ], [ %.pn18.i28, %bb.m ] ; 4 uses
  %.sroa.07.011.i.i38 = phi ptr [ %.sroa.0.012.i.i37, %.lr.ph.i.i36 ], [ %.sroa.0.019.i27, %bb.m ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.011.i.i38, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.012.i.i37, i64 16, i1 false), !tbaa.struct !1283
  %.sroa.0.0.i.i39 = getelementptr inbounds i8, ptr %.sroa.0.012.i.i37, i64 -16 ; 2 uses
  %i.ak = load double, ptr %.sroa.0.0.i.i39, align 8, !tbaa !1299
  %i.al = fcmp olt double %i.w, %i.ak
  br i1 %i.al, label %.lr.ph.i.i36, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_18CentroidComparatorEEEEvT_T0_.exit.i31, !llvm.loop !5365

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_18CentroidComparatorEEEEvT_T0_.exit.i31: ; preds = %.lr.ph.i.i36, %bb.m
  %.sroa.07.0.lcssa.i.i32 = phi ptr [ %.sroa.0.019.i27, %bb.m ], [ %.sroa.0.012.i.i37, %.lr.ph.i.i36 ] ; 2 uses
  store double %i.w, ptr %.sroa.07.0.lcssa.i.i32, align 8, !tbaa !440
  %.sroa.5.0..sroa_idx5.i.i33 = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i32, i64 8
  store double %.sroa.5.0.copyload.i.i30, ptr %.sroa.5.0..sroa_idx5.i.i33, align 8, !tbaa !440
  br label %bb.n

bb.n:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_18CentroidComparatorEEEEvT_T0_.exit.i31, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i40
  %.sroa.0.0.i34 = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i27, i64 16 ; 2 uses
  %.not.i35 = icmp eq ptr %.sroa.0.0.i34, %1
  br i1 %.not.i35, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_T0_.exit, label %.lr.ph.i26, !llvm.loop !5366

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_T0_.exit: ; preds = %bb.n, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_18CentroidComparatorEEEEvT_T0_.exit.i15, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN14duckdb_tdigest8CentroidESaIS1_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEvNS6_IPS1_S3_EET_SC_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not94 = icmp eq ptr %2, %3
  br i1 %.not94, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 7 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1282
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1281 ; 12 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.k = sub i64 %i.i, %i.j
  %.not = icmp ult i64 %i.k, %i.c
  br i1 %.not, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.m = sub i64 %i.j, %i.l                       ; 6 uses
end_hunk_0
