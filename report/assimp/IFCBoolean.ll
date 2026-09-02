Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/IFCBoolean?download=true
inline.NumInlined: 1663
inline.NumDeleted: 638
begin_hunk_0_@_ZN6Assimp3IFC13FilterPolygonERSt6vectorI10aiVector3tIdESaIS3_EE:bb.a
bb.f:                                             ; preds = %bb.e, %.lr.ph.i.i
  %.sroa.0.1.i.i = phi ptr [ %.sroa.0.022.i.i, %.lr.ph.i.i ], [ %i.bs, %bb.e ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.az, i64 24 ; 2 uses
  %.not.i.i17 = icmp eq ptr %i.bt, %i.b
  br i1 %.not.i.i17, label %._crit_edge.i.i.loopexit, label %.lr.ph.i.i, !llvm.loop !2

._crit_edge.i.i.loopexit:                         ; preds = %bb.f
  %.pre.pre = load ptr, ptr %i.a, align 8
  %.pre51.pre.pre = load ptr, ptr %0, align 8
  br label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS3_SaIS3_EEEEN6Assimp3IFC18FuzzyVectorCompareEET_SC_SC_T0_.exit

_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS3_SaIS3_EEEEN6Assimp3IFC18FuzzyVectorCompareEET_SC_SC_T0_.exit: ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIN6Assimp3IFC18FuzzyVectorCompareEEEET_SF_SF_T0_.exit.i.i, %._crit_edge.i.i.loopexit
  %.pre51.pre = phi ptr [ %i.c, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIN6Assimp3IFC18FuzzyVectorCompareEEEET_SF_SF_T0_.exit.i.i ], [ %.pre51.pre.pre, %._crit_edge.i.i.loopexit ] ; 4 uses
  %.pre = phi ptr [ %i.b, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIN6Assimp3IFC18FuzzyVectorCompareEEEET_SF_SF_T0_.exit.i.i ], [ %.pre.pre, %._crit_edge.i.i.loopexit ] ; 2 uses
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.010.0.i.i.i, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIN6Assimp3IFC18FuzzyVectorCompareEEEET_SF_SF_T0_.exit.i.i ], [ %.sroa.0.1.i.i, %._crit_edge.i.i.loopexit ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.bu, %.pre
  br i1 %.not, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit, label %_ZSt8_DestroyIP10aiVector3tIdES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIP10aiVector3tIdES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS3_SaIS3_EEEEN6Assimp3IFC18FuzzyVectorCompareEET_SC_SC_T0_.exit
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %.pre51.pre to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = getelementptr inbounds i8, ptr %.pre51.pre, i64 %i.bx ; 2 uses
  store ptr %i.by, ptr %i.a, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit

_ZNSt6vectorI10aiVector3tIdESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit: ; preds = %.preheader.i.i.i, %_ZN6Assimp11ArrayBoundsI10aiVector3tIdEEEvPKT_jRS3_S6_.exit, %_ZSt8_DestroyIP10aiVector3tIdES1_EvT_S3_RSaIT0_E.exit.i.i.i, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS3_SaIS3_EEEEN6Assimp3IFC18FuzzyVectorCompareEET_SC_SC_T0_.exit
  %.pre5170 = phi ptr [ %.pre51.pre, %_ZSt8_DestroyIP10aiVector3tIdES1_EvT_S3_RSaIT0_E.exit.i.i.i ], [ %.pre51.pre, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS3_SaIS3_EEEEN6Assimp3IFC18FuzzyVectorCompareEET_SC_SC_T0_.exit ], [ %i.c, %_ZN6Assimp11ArrayBoundsI10aiVector3tIdEEEvPKT_jRS3_S6_.exit ], [ %i.c, %.preheader.i.i.i ] ; 4 uses
  %i.bz = phi ptr [ %i.by, %_ZSt8_DestroyIP10aiVector3tIdES1_EvT_S3_RSaIT0_E.exit.i.i.i ], [ %.pre, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS3_SaIS3_EEEEN6Assimp3IFC18FuzzyVectorCompareEET_SC_SC_T0_.exit ], [ %i.b, %_ZN6Assimp11ArrayBoundsI10aiVector3tIdEEEvPKT_jRS3_S6_.exit ], [ %i.b, %.preheader.i.i.i ] ; 4 uses
  %i.ca = icmp eq ptr %.pre5170, %i.bz
  br i1 %i.ca, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE5clearEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit
  %i.cb = getelementptr inbounds i8, ptr %i.bz, i64 -24 ; 2 uses
  %i.cc = load double, ptr %.pre5170, align 8, !noalias !34
  %i.cd = load double, ptr %i.cb, align 8, !noalias !34
  %i.ce = fsub double %i.cc, %i.cd                ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.pre5170, i64 8
  %i.cg = load double, ptr %i.cf, align 8, !noalias !34
  %i.ch = getelementptr inbounds i8, ptr %i.bz, i64 -16
  %i.ci = load double, ptr %i.ch, align 8, !noalias !34
  %i.cj = fsub double %i.cg, %i.ci                ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.pre5170, i64 16
  %i.cl = load double, ptr %i.ck, align 8, !noalias !34
  %i.cm = getelementptr inbounds i8, ptr %i.bz, i64 -8
  %i.cn = load double, ptr %i.cm, align 8, !noalias !34
  %i.co = fsub double %i.cl, %i.cn                ; 2 uses
  %i.cp = fmul double %i.cj, %i.cj
  %i.cq = tail call double @llvm.fmuladd.f64(double %i.ce, double %i.ce, double %i.cp)
  %i.cr = tail call noundef double @llvm.fmuladd.f64(double %i.co, double %i.co, double %i.cq)
  %i.cs = tail call noundef double @llvm.fabs.f64(double %i.cr)
  %i.ct = fcmp olt double %i.cs, %i.ad
  br i1 %i.ct, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE5clearEv.exit.sink.split, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE5clearEv.exit

_ZNSt6vectorI10aiVector3tIdESaIS1_EE5clearEv.exit.sink.split: ; preds = %bb.g, %bb.b
  %.sink = phi ptr [ %i.c, %bb.b ], [ %i.cb, %bb.g ]
  store ptr %.sink, ptr %i.a, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE5clearEv.exit

_ZNSt6vectorI10aiVector3tIdESaIS1_EE5clearEv.exit: ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE5clearEv.exit.sink.split, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit, %bb.g, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3IFC12WritePolygonERSt6vectorI10aiVector3tIdESaIS3_EERNS0_8TempMeshE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #3 {
bb.a:
  tail call void @_ZN6Assimp3IFC13FilterPolygonERSt6vectorI10aiVector3tIdESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %0, align 8                ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 24
  %i.h = icmp ugt i64 %i.g, 2
  br i1 %i.h, label %bb.b, label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load ptr, ptr %1, align 8                ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = getelementptr inbounds i8, ptr %i.k, i64 %i.n
  tail call void @_ZNSt6vectorI10aiVector3tIdESaIS1_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS1_S3_EEEEvS8_T_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.o, ptr %i.c, ptr %i.b)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.q = load ptr, ptr %i.a, align 8
  %i.r = load ptr, ptr %0, align 8
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = sdiv exact i64 %i.u, 24
  %i.w = trunc i64 %i.v to i32                    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8              ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %.not.i.i = icmp eq ptr %i.y, %i.aa
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.w, ptr %i.y, align 4
  %i.ab = load ptr, ptr %i.x, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store ptr %i.ac, ptr %i.x, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.d:                                             ; preds = %bb.b
  %i.ad = load ptr, ptr %i.p, align 8             ; 4 uses
  %i.ae = ptrtoint ptr %i.y to i64
  %i.af = ptrtoint ptr %i.ad to i64               ; 2 uses
  %i.ag = sub i64 %i.ae, %i.af                    ; 5 uses
  %i.ah = icmp eq i64 %i.ag, 9223372036854775804
  br i1 %i.ah, label %bb.e, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #22
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.ai = ashr exact i64 %i.ag, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 1)
  %i.aj = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ai ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ai
  %i.al = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 2305843009213693951)
  %i.am = select i1 %i.ak, i64 2305843009213693951, i64 %i.al ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.am, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.an = shl nuw nsw i64 %i.am, 2
  %i.ao = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #23 ; 4 uses
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 %i.ag ; 2 uses
  store i32 %i.w, ptr %i.ap, align 4
  %i.aq = icmp sgt i64 %i.ag, 0
  br i1 %i.aq, label %bb.f, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ao, ptr align 4 %i.ad, i64 %i.ag, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  %i.as = load ptr, ptr %i.z, align 8
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.at, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.au) #24
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ao, ptr %i.p, align 8
  store ptr %i.ar, ptr %i.x, align 8
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.am
  store ptr %i.av, ptr %i.z, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

_ZNSt6vectorIjSaIjEE9push_backEOj.exit:           ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3IFC33ProcessBooleanHalfSpaceDifferenceEPKNS0_10Schema_2x317IfcHalfSpaceSolidERNS0_8TempMeshERKS5_RNS0_14ConversionDataE(ptr noundef %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %2, ptr nofree nonnull readnone align 8 captures(none) %3) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %class.aiVector3t, align 16         ; 9 uses
  %5 = alloca %class.aiVector3t, align 16         ; 11 uses
  %6 = alloca %"class.Assimp::STEP::EXPRESS::ENUMERATION", align 8 ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = tail call noundef ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x310IfcSurfaceEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %i.f, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %i.e, i64 %i.h
  %i.j = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(24) %i.i, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x38IfcPlaneE, i64 -1) #25 ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
  br i1 %i.k, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJRA60_KcEEEvDpOT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.m = tail call noundef ptr @_ZN6Assimp12LogFunctionsINS_11IFCImporterEE6PrefixEv()
  store ptr %i.m, ptr %i.c, align 8
  call void @_ZN6Assimp6Logger5errorIJPKcRA60_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(60) @.str)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJRA60_KcEEEvDpOT_.exit

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %i.o, align 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 64 ; 3 uses
  %i.q = tail call noundef ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x319IfcAxis2Placement3DEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %i.s = load i8, ptr %i.r, align 8, !range !12, !noundef !13
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = tail call noundef ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x319IfcAxis2Placement3DEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.w = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x312IfcDirectionEEcvRKS4_Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  call void @_ZN6Assimp3IFC16ConvertDirectionER10aiVector3tIdERKNS0_10Schema_2x312IfcDirectionE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(72) %i.w)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.x = call noundef ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x319IfcAxis2Placement3DEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = call noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x317IfcCartesianPointEEcvRKS4_Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.y)
  call void @_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(88) %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp4STEP7EXPRESS17PrimitiveDataTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %6, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 7 uses
  store ptr %i.ac, ptr %i.ab, align 8
  %i.ad = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.af = load i64, ptr %i.ae, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i64 %i.af, ptr %i.b, align 8
  %i.ag = icmp ugt i64 %i.af, 15
  br i1 %i.ag, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.f
  %i.ah = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.ah, ptr %i.ab, align 8
  %i.ai = load i64, ptr %i.b, align 8
  store i64 %i.ai, ptr %i.ac, align 8
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.f
  %i.aj = phi ptr [ %i.ah, %.noexc.i.i.i ], [ %i.ac, %bb.f ] ; 2 uses
  switch i64 %i.af, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZN6Assimp4STEP7EXPRESS11ENUMERATIONC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ak = load i8, ptr %i.ad, align 1
  store i8 %i.ak, ptr %i.aj, align 1
  br label %_ZN6Assimp4STEP7EXPRESS11ENUMERATIONC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr align 1 %i.ad, i64 %i.af, i1 false)
  br label %_ZN6Assimp4STEP7EXPRESS11ENUMERATIONC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN6Assimp4STEP7EXPRESS11ENUMERATIONC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %._crit_edge.i.i.i.i, %bb.g, %bb.h
  %i.al = load i64, ptr %i.b, align 8             ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.al, ptr %i.am, align 8
  %i.an = load ptr, ptr %i.ab, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.al
  store i8 0, ptr %i.ao, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp4STEP7EXPRESS11ENUMERATIONE, i64 16), ptr %6, align 8
  %i.ap = invoke noundef zeroext i1 @_ZN6Assimp3IFC6IsTrueERKNS_4STEP7EXPRESS11ENUMERATIONE(ptr noundef nonnull align 8 dereferenceable(40) %6)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %_ZN6Assimp4STEP7EXPRESS11ENUMERATIONC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp4STEP7EXPRESS17PrimitiveDataTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %6, align 8
  %i.aq = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.ac
  br i1 %i.ar, label %_ZN6Assimp4STEP7EXPRESS17PrimitiveDataTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.i
  %i.as = load i64, ptr %i.ac, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #24, !inline_history !14
  br label %_ZN6Assimp4STEP7EXPRESS17PrimitiveDataTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZN6Assimp4STEP7EXPRESS17PrimitiveDataTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br i1 %i.ap, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZN6Assimp4STEP7EXPRESS17PrimitiveDataTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
  %i.au = load <2 x double>, ptr %5, align 16
  %i.av = fneg <2 x double> %i.au
  store <2 x double> %i.av, ptr %5, align 16
  %i.aw = load double, ptr %i.o, align 16
  %i.ax = fneg double %i.aw
  store double %i.ax, ptr %i.o, align 16
  br label %bb.l

bb.k:                                             ; preds = %_ZN6Assimp4STEP7EXPRESS11ENUMERATIONC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ay = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp4STEP7EXPRESS17PrimitiveDataTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %6, align 8
  %i.az = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.ac
  br i1 %i.ba, label %_ZN6Assimp4STEP7EXPRESS17PrimitiveDataTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i61: ; preds = %bb.k
  %i.bb = load i64, ptr %i.ac, align 8
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #24, !inline_history !14
  br label %_ZN6Assimp4STEP7EXPRESS17PrimitiveDataTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit63

_ZN6Assimp4STEP7EXPRESS17PrimitiveDataTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit63: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %i.ay

bb.l:                                             ; preds = %bb.j, %_ZN6Assimp4STEP7EXPRESS17PrimitiveDataTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8            ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8            ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = load ptr, ptr %2, align 8
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl                    ; 4 uses
  %i.bn = sdiv exact i64 %i.bm, 24
  %i.bo = icmp ugt i64 %i.bn, 384307168202282325
  br i1 %i.bo, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #22
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 14 uses
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = load ptr, ptr %1, align 8
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = ptrtoint ptr %i.br to i64               ; 2 uses
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = icmp ult i64 %i.bu, %i.bm
  br i1 %i.bv, label %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.n
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = sub i64 %i.by, %i.bt
  %i.ca = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bm) #23 ; 4 uses
  %i.cb = load ptr, ptr %1, align 8               ; 5 uses
  %i.cc = load ptr, ptr %i.bw, align 8            ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.cb, %i.cc
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i ], [ %i.ca, %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i.i.i.i ], [ %i.cb, %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i, i64 24, i1 false), !alias.scope !64
  %i.cd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24
  %.not.i.i.i.i = icmp eq ptr %i.cd, %i.cc
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !3

_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.cb, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.cf = load ptr, ptr %i.bp, align 8
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %i.cb to i64
  %i.ci = sub i64 %i.cg, %i.ch
  call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef %i.ci) #24
  br label %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.o, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.ca, ptr %1, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bz
  store ptr %i.cj, ptr %i.bw, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bm
  store ptr %i.ck, ptr %i.bp, align 8
  %.pre = load ptr, ptr %i.bf, align 8
  %.pre236 = load ptr, ptr %i.bd, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit

_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit: ; preds = %bb.n, %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i
  %i.cl = phi ptr [ %i.be, %bb.n ], [ %.pre236, %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i ]
  %i.cm = phi ptr [ %i.bg, %bb.n ], [ %.pre, %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i ]
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = ptrtoint ptr %i.cl to i64
  %i.cq = sub i64 %i.co, %i.cp                    ; 4 uses
  %i.cr = icmp ugt i64 %i.cq, 9223372036854775804
  br i1 %i.cr, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #22
  unreachable

bb.q:                                             ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = load ptr, ptr %i.cn, align 8
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = ptrtoint ptr %i.cu to i64               ; 2 uses
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = icmp ult i64 %i.cx, %i.cq
  br i1 %i.cy, label %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i, label %_ZNSt6vectorIjSaIjEE7reserveEm.exit

_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i: ; preds = %bb.q
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = sub i64 %i.db, %i.cw
  %i.dd = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cq) #23 ; 4 uses
  %i.de = load ptr, ptr %i.cn, align 8            ; 4 uses
  %i.df = load ptr, ptr %i.cz, align 8
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = ptrtoint ptr %i.de to i64               ; 2 uses
  %i.di = sub i64 %i.dg, %i.dh                    ; 2 uses
  %i.dj = icmp sgt i64 %i.di, 0
  br i1 %i.dj, label %bb.r, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dd, ptr align 4 %i.de, i64 %i.di, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i: ; preds = %bb.r, %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  %.not.i8.i64 = icmp eq ptr %i.de, null
  br i1 %.not.i8.i64, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  %i.dk = load ptr, ptr %i.cs, align 8
  %i.dl = ptrtoint ptr %i.dk to i64
  %i.dm = sub i64 %i.dl, %i.dh
  call void @_ZdlPvm(ptr noundef nonnull %i.de, i64 noundef %i.dm) #24
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i: ; preds = %bb.s, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  store ptr %i.dd, ptr %i.cn, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.dc
  store ptr %i.dn, ptr %i.cz, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.cq
  store ptr %i.do, ptr %i.cs, align 8
  br label %_ZNSt6vectorIjSaIjEE7reserveEm.exit

_ZNSt6vectorIjSaIjEE7reserveEm.exit:              ; preds = %bb.q, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i
  %.not190216 = icmp eq ptr %i.be, %i.bg
  br i1 %.not190216, label %._crit_edge220, label %.lr.ph219

.lr.ph219:                                        ; preds = %_ZNSt6vectorIjSaIjEE7reserveEm.exit
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 19 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph219, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %.0218 = phi i32 [ 0, %.lr.ph219 ], [ %i.pm, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 4 uses
  %.sroa.0176.0217 = phi ptr [ %i.be, %.lr.ph219 ], [ %i.pk, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 4 uses
  %i.dt = load i32, ptr %.sroa.0176.0217, align 4 ; 2 uses
  %.not221 = icmp eq i32 %i.dt, 0
  br i1 %.not221, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.t
  %i.du = load ptr, ptr %2, align 8
  %i.dv = zext i32 %.0218 to i64
  %i.dw = getelementptr inbounds nuw [24 x i8], ptr %i.du, i64 %i.dv ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = load double, ptr %i.dx, align 8, !noalias !65
  %i.dz = load double, ptr %i.dq, align 16, !noalias !65
  %i.ea = fsub double %i.dy, %i.dz
  %i.eb = load double, ptr %i.o, align 16
  %i.ec = load double, ptr %i.dw, align 8, !noalias !65
  %i.ed = load double, ptr %4, align 16, !noalias !65
  %i.ee = fsub double %i.ec, %i.ed
  %i.ef = load double, ptr %5, align 16
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.eh = load double, ptr %i.eg, align 8, !noalias !65
  %i.ei = load double, ptr %i.dp, align 8, !noalias !65
  %i.ej = fsub double %i.eh, %i.ei
  %i.ek = load double, ptr %i.n, align 8
  %i.el = fmul double %i.ej, %i.ek
  %i.em = call double @llvm.fmuladd.f64(double %i.ee, double %i.ef, double %i.el)
  %i.en = call noundef double @llvm.fmuladd.f64(double %i.ea, double %i.eb, double %i.em)
  %i.eo = fcmp ogt double %i.en, f0xBEB0C6F7A0000000
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.at
  %.not59 = icmp eq i32 %.1185, 0
  br i1 %.not59, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit, label %.lr.ph.preheader.i

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.at
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.at ] ; 2 uses
  %i.ep = phi i32 [ %i.dt, %.lr.ph.preheader ], [ %i.kl, %bb.at ]
  %.057210 = phi i1 [ %i.eo, %.lr.ph.preheader ], [ %.1, %bb.at ] ; 4 uses
  %.0184209 = phi i32 [ 0, %.lr.ph.preheader ], [ %.1185, %bb.at ] ; 3 uses
  %i.eq = trunc nuw i64 %indvars.iv to i32
  %i.er = add i32 %.0218, %i.eq
  %i.es = zext i32 %i.er to i64
  %i.et = load ptr, ptr %2, align 8               ; 2 uses
  %i.eu = getelementptr inbounds nuw [24 x i8], ptr %i.et, i64 %i.es ; 6 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.ev = zext i32 %i.ep to i64
  %i.ew = icmp eq i64 %indvars.iv.next, %i.ev
  %i.ex = trunc nuw i64 %indvars.iv.next to i32
  %i.ey = select i1 %i.ew, i32 0, i32 %i.ex
  %i.ez = add i32 %i.ey, %.0218
  %i.fa = zext i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw [24 x i8], ptr %i.et, i64 %i.fa ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %.sroa.5.0.copyload = load double, ptr %.sroa.5.0..sroa_idx, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.fd = load double, ptr %i.fc, align 8, !noalias !66 ; 4 uses
  %i.fe = load double, ptr %i.dq, align 16, !noalias !66
  %i.ff = load <2 x double>, ptr %i.fb, align 8
  %i.fg = load <2 x double>, ptr %i.eu, align 8, !noalias !66 ; 4 uses
  %i.fh = load <2 x double>, ptr %4, align 16, !noalias !66
  %i.fi = fsub <2 x double> %i.fg, %i.fh          ; 2 uses
  %i.fj = fsub <2 x double> %i.ff, %i.fg          ; 3 uses
  %i.fk = insertelement <2 x double> poison, double %.sroa.5.0.copyload, i64 0
  %i.fl = insertelement <2 x double> %i.fk, double %i.fd, i64 1
  %i.fm = insertelement <2 x double> poison, double %i.fd, i64 0
  %i.fn = insertelement <2 x double> %i.fm, double %i.fe, i64 1
  %i.fo = fsub <2 x double> %i.fl, %i.fn          ; 2 uses
  %7 = load <3 x double>, ptr %5, align 16        ; 3 uses
  %i.fp = shufflevector <2 x double> %i.fj, <2 x double> %i.fi, <2 x i32> <i32 1, i32 3>
  %8 = shufflevector <3 x double> %7, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fq = fmul <2 x double> %i.fp, %8
  %i.fr = shufflevector <3 x double> %7, <3 x double> poison, <2 x i32> zeroinitializer
  %i.fs = shufflevector <2 x double> %i.fj, <2 x double> %i.fi, <2 x i32> <i32 0, i32 2>
  %i.ft = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fr, <2 x double> %i.fs, <2 x double> %i.fq)
  %9 = shufflevector <3 x double> %7, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.fu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %9, <2 x double> %i.fo, <2 x double> %i.ft) ; 2 uses
  %i.fv = extractelement <2 x double> %i.fu, i64 1 ; 3 uses
  %i.fw = fneg double %i.fv
  %i.fx = extractelement <2 x double> %i.fu, i64 0 ; 3 uses
  %i.fy = fsub double %i.fx, %i.fv                ; 3 uses
  %i.fz = call noundef double @llvm.fabs.f64(double %i.fy)
  %i.ga = fcmp olt double %i.fz, f0x3EB0C6F7A0000000
  br i1 %i.ga, label %bb.an, label %bb.u

bb.u:                                             ; preds = %.lr.ph
  %i.gb = call double @llvm.fabs.f64(double %i.fv)
  %i.gc = fcmp olt double %i.gb, f0x3EB0C6F7A0000000
  br i1 %i.gc, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.gd = fcmp uge double %i.fy, f0x3EB0C6F7A0000000
  %i.ge = fcmp ule double %i.fy, f0xBEB0C6F7A0000000
  %or.cond41.i = select i1 %.057210, i1 %i.gd, i1 %i.ge
  br i1 %or.cond41.i, label %bb.an, label %_ZN6Assimp3IFC21IntersectSegmentPlaneERK10aiVector3tIdES4_S4_S4_bRS2_.exit

bb.w:                                             ; preds = %bb.u
  %i.gf = call noundef double @llvm.fabs.f64(double %i.fx)
  %i.gg = fcmp olt double %i.gf, f0x3EB0C6F7A0000000
  br i1 %i.gg, label %bb.an, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gh = fdiv double %i.fw, %i.fx                ; 4 uses
  %i.gi = fcmp ule double %i.gh, 1.000000e+00
  %i.gj = fcmp uge double %i.gh, 0.000000e+00
  %or.cond.not.i = and i1 %i.gi, %i.gj
  br i1 %or.cond.not.i, label %bb.y, label %bb.an

bb.y:                                             ; preds = %bb.x
  %i.gk = insertelement <2 x double> poison, double %i.gh, i64 0
  %i.gl = shufflevector <2 x double> %i.gk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gm = fmul <2 x double> %i.fj, %i.gl
  %i.gn = extractelement <2 x double> %i.fo, i64 0
  %i.go = fmul double %i.gn, %i.gh
  %i.gp = fadd <2 x double> %i.fg, %i.gm
  %i.gq = fadd double %i.fd, %i.go
  br label %_ZN6Assimp3IFC21IntersectSegmentPlaneERK10aiVector3tIdES4_S4_S4_bRS2_.exit

_ZN6Assimp3IFC21IntersectSegmentPlaneERK10aiVector3tIdES4_S4_S4_bRS2_.exit: ; preds = %bb.v, %bb.y
  %.sroa.10.0 = phi double [ %i.gq, %bb.y ], [ %i.fd, %bb.v ] ; 4 uses
  %i.gr = phi <2 x double> [ %i.gp, %bb.y ], [ %i.fg, %bb.v ] ; 4 uses
  %i.gs = load ptr, ptr %i.dr, align 8            ; 10 uses
  %i.gt = load ptr, ptr %i.bp, align 8
  %.not.i = icmp eq ptr %i.gs, %i.gt              ; 2 uses
  br i1 %.057210, label %bb.z, label %bb.ai

bb.z:                                             ; preds = %_ZN6Assimp3IFC21IntersectSegmentPlaneERK10aiVector3tIdES4_S4_S4_bRS2_.exit
  br i1 %.not.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gs, ptr noundef nonnull align 8 dereferenceable(24) %i.eu, i64 24, i1 false)
  %i.gu = load ptr, ptr %i.dr, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 24 ; 2 uses
  store ptr %i.gv, ptr %i.dr, align 8
  %.pre237 = load ptr, ptr %i.bp, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit

bb.ab:                                            ; preds = %bb.z
  %i.gw = load ptr, ptr %1, align 8               ; 5 uses
  %i.gx = ptrtoint ptr %i.gs to i64
  %i.gy = ptrtoint ptr %i.gw to i64               ; 2 uses
  %i.gz = sub i64 %i.gx, %i.gy                    ; 3 uses
  %i.ha = icmp eq i64 %i.gz, 9223372036854775800
  br i1 %i.ha, label %bb.ac, label %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.ac:                                            ; preds = %bb.ab
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #22
  unreachable

_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ab
  %i.hb = sdiv exact i64 %i.gz, 24                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.hb, i64 1)
  %i.hc = add nsw i64 %.sroa.speculated.i.i.i, %i.hb ; 2 uses
  %i.hd = icmp ult i64 %i.hc, %i.hb
  %i.he = call i64 @llvm.umin.i64(i64 %i.hc, i64 384307168202282325)
  %i.hf = select i1 %i.hd, i64 384307168202282325, i64 %i.he ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.hf, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.hg = mul nuw nsw i64 %i.hf, 24
  %i.hh = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hg) #23 ; 5 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.gz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hi, ptr noundef nonnull align 8 dereferenceable(24) %i.eu, i64 24, i1 false)
  %.not10.i.i.i.i.i = icmp eq ptr %i.gw, %i.gs
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.hk, %.lr.ph.i.i.i.i.i ], [ %i.hh, %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.hj, %.lr.ph.i.i.i.i.i ], [ %i.gw, %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i, i64 24, i1 false), !alias.scope !67
  %i.hj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 24 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.hj, %i.gs
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !3

_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.hh, %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.hk, %.lr.ph.i.i.i.i.i ]
  %i.hl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.gw, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.hm = load ptr, ptr %i.bp, align 8
  %i.hn = ptrtoint ptr %i.hm to i64
  %i.ho = sub i64 %i.hn, %i.gy
  call void @_ZdlPvm(ptr noundef nonnull %i.gw, i64 noundef %i.ho) #24
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.ad, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.hh, ptr %1, align 8
  store ptr %i.hl, ptr %i.dr, align 8
  %i.hp = getelementptr inbounds nuw [24 x i8], ptr %i.hh, i64 %i.hf ; 2 uses
  store ptr %i.hp, ptr %i.bp, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.aa, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.hq = phi ptr [ %.pre237, %bb.aa ], [ %i.hp, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 4 uses
  %i.hr = phi ptr [ %i.gv, %bb.aa ], [ %i.hl, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 3 uses
  %.not.i65 = icmp eq ptr %i.hr, %i.hq
  br i1 %.not.i65, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit
  store <2 x double> %i.gr, ptr %i.hr, align 8
  %.sroa.10.0..sroa_idx150 = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  store double %.sroa.10.0, ptr %.sroa.10.0..sroa_idx150, align 8
  %i.hs = load ptr, ptr %i.dr, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 24
  store ptr %i.ht, ptr %i.dr, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit78

bb.af:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit
  %i.hu = load ptr, ptr %1, align 8               ; 5 uses
  %i.hv = ptrtoint ptr %i.hq to i64
  %i.hw = ptrtoint ptr %i.hu to i64               ; 2 uses
  %i.hx = sub i64 %i.hv, %i.hw                    ; 3 uses
  %i.hy = icmp eq i64 %i.hx, 9223372036854775800
  br i1 %i.hy, label %bb.ag, label %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i66

bb.ag:                                            ; preds = %bb.af
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #22
  unreachable

_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i66: ; preds = %bb.af
  %i.hz = sdiv exact i64 %i.hx, 24                ; 3 uses
  %.sroa.speculated.i.i.i67 = call i64 @llvm.umax.i64(i64 %i.hz, i64 1)
  %i.ia = add nsw i64 %.sroa.speculated.i.i.i67, %i.hz ; 2 uses
  %i.ib = icmp ult i64 %i.ia, %i.hz
  %i.ic = call i64 @llvm.umin.i64(i64 %i.ia, i64 384307168202282325)
  %i.id = select i1 %i.ib, i64 384307168202282325, i64 %i.ic ; 3 uses
  %.not.i.i.i68 = icmp ne i64 %i.id, 0
  call void @llvm.assume(i1 %.not.i.i.i68)
  %i.ie = mul nuw nsw i64 %i.id, 24
  %i.if = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ie) #23 ; 5 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 %i.hx ; 2 uses
  store <2 x double> %i.gr, ptr %i.ig, align 8
  %.sroa.10.0..sroa_idx152 = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  store double %.sroa.10.0, ptr %.sroa.10.0..sroa_idx152, align 8
  %.not10.i.i.i.i.i69 = icmp eq ptr %i.hu, %i.hq
  br i1 %.not10.i.i.i.i.i69, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i74, label %.lr.ph.i.i.i.i.i70

.lr.ph.i.i.i.i.i70:                               ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i66, %.lr.ph.i.i.i.i.i70
  %.012.i.i.i.i.i71 = phi ptr [ %i.ii, %.lr.ph.i.i.i.i.i70 ], [ %i.if, %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i66 ] ; 2 uses
  %.0911.i.i.i.i.i72 = phi ptr [ %i.ih, %.lr.ph.i.i.i.i.i70 ], [ %i.hu, %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i66 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i71, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i72, i64 24, i1 false), !alias.scope !68
  %i.ih = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i72, i64 24 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i71, i64 24 ; 2 uses
  %.not.i.i.i.i.i73 = icmp eq ptr %i.ih, %i.hq
  br i1 %.not.i.i.i.i.i73, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i74, label %.lr.ph.i.i.i.i.i70, !llvm.loop !3

_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i74: ; preds = %.lr.ph.i.i.i.i.i70, %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i66
  %.0.lcssa.i.i.i.i.i75 = phi ptr [ %i.if, %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i66 ], [ %i.ii, %.lr.ph.i.i.i.i.i70 ]
  %i.ij = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i75, i64 24
  %.not.i23.i.i76 = icmp eq ptr %i.hu, null
  br i1 %.not.i23.i.i76, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i77, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i74
  %i.ik = load ptr, ptr %i.bp, align 8
  %i.il = ptrtoint ptr %i.ik to i64
  %i.im = sub i64 %i.il, %i.hw
  call void @_ZdlPvm(ptr noundef nonnull %i.hu, i64 noundef %i.im) #24
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i77

_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i77: ; preds = %bb.ah, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i74
  store ptr %i.if, ptr %1, align 8
  store ptr %i.ij, ptr %i.dr, align 8
  %i.in = getelementptr inbounds nuw [24 x i8], ptr %i.if, i64 %i.id
  store ptr %i.in, ptr %i.bp, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit78

bb.ai:                                            ; preds = %_ZN6Assimp3IFC21IntersectSegmentPlaneERK10aiVector3tIdES4_S4_S4_bRS2_.exit
  br i1 %.not.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store <2 x double> %i.gr, ptr %i.gs, align 8
  %.sroa.10.0..sroa_idx154 = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  store double %.sroa.10.0, ptr %.sroa.10.0..sroa_idx154, align 8
  %i.io = load ptr, ptr %i.dr, align 8
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 24
end_hunk_0
begin_hunk_1_@_ZN6Assimp3IFC25IntersectsBoundaryProfileERK10aiVector3tIdES4_RKSt6vectorIS2_SaIS2_EEbRS5_ISt4pairImS2_ESaISB_EEb:bb.a
  %i.jc = getelementptr inbounds nuw [32 x i8], ptr %i.it, i64 %i.ir
  store ptr %i.jc, ptr %i.av, align 8
  br label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit

_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit: ; preds = %bb.r, %bb.c, %bb.o, %bb.n, %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE17_M_realloc_insertIJRmRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.j, %bb.e, %bb.h, %bb.t, %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE17_M_realloc_insertIJRmRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i109, %bb.b
  %exitcond225.not = icmp eq i64 %i.bx, %i.g
  br i1 %exitcond225.not, label %._crit_edge220, label %bb.b, !llvm.loop !97
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6Assimp3IFC11PointInPolyERK10aiVector3tIdERKSt6vectorIS2_SaIS2_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.40", align 8    ; 14 uses
  %3 = alloca %class.aiVector3t, align 16         ; 6 uses
  %4 = alloca %class.aiVector3t, align 16         ; 6 uses
  %5 = alloca %class.aiVector3t, align 16         ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load double, ptr %i.a, align 8, !noalias !114
  %i.c = fadd double %i.b, 0.000000e+00
  %i.d = load <2 x double>, ptr %0, align 8, !noalias !114
  %i.e = fadd <2 x double> %i.d, <double 1.000000e+00, double 0.000000e+00>
  store <2 x double> %i.e, ptr %3, align 16, !alias.scope !114
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  store double %i.c, ptr %i.f, align 16, !alias.scope !114
  %i.g = invoke noundef zeroext i1 @_ZN6Assimp3IFC25IntersectsBoundaryProfileERK10aiVector3tIdES4_RKSt6vectorIS2_SaIS2_EEbRS5_ISt4pairImS2_ESaISB_EEb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext true)
          to label %_ZSt8_DestroyIPSt4pairIm10aiVector3tIdEES3_EvT_S5_RSaIT0_E.exit.i.i unwind label %bb.d ; 0 uses

_ZSt8_DestroyIPSt4pairIm10aiVector3tIdEES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %i.j = load ptr, ptr %2, align 8                ; 3 uses
  %.not.i.i = icmp eq ptr %i.i, %i.j
  %spec.store.select = select i1 %.not.i.i, ptr %i.i, ptr %i.j
  store ptr %spec.store.select, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  %i.k = load double, ptr %i.a, align 8, !noalias !115
  %i.l = fadd double %i.k, 0.000000e+00
  %i.m = load <2 x double>, ptr %0, align 8, !noalias !115
  %i.n = fadd <2 x double> %i.m, <double 0.000000e+00, double 1.000000e+00>
  store <2 x double> %i.n, ptr %4, align 16, !alias.scope !115
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  store double %i.l, ptr %i.o, align 16, !alias.scope !115
  %i.p = invoke noundef zeroext i1 @_ZN6Assimp3IFC25IntersectsBoundaryProfileERK10aiVector3tIdES4_RKSt6vectorIS2_SaIS2_EEbRS5_ISt4pairImS2_ESaISB_EEb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext true)
          to label %_ZSt8_DestroyIPSt4pairIm10aiVector3tIdEES3_EvT_S5_RSaIT0_E.exit.i.i17 unwind label %bb.e ; 0 uses

_ZSt8_DestroyIPSt4pairIm10aiVector3tIdEES3_EvT_S5_RSaIT0_E.exit.i.i17: ; preds = %_ZSt8_DestroyIPSt4pairIm10aiVector3tIdEES3_EvT_S5_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.q = load ptr, ptr %i.h, align 8              ; 3 uses
  %i.r = load ptr, ptr %2, align 8                ; 3 uses
  %.not.i.i16 = icmp eq ptr %i.q, %i.r
  %spec.store.select27 = select i1 %.not.i.i16, ptr %i.q, ptr %i.r
  store ptr %spec.store.select27, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  %i.s = load double, ptr %i.a, align 8, !noalias !116
  %i.t = fadd double %i.s, 0.000000e+00
  %i.u = load <2 x double>, ptr %0, align 8, !noalias !116
  %i.v = fadd <2 x double> %i.u, <double 6.000000e-01, double -6.000000e-01>
  store <2 x double> %i.v, ptr %5, align 16, !alias.scope !116
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16
  store double %i.t, ptr %i.w, align 16, !alias.scope !116
  %i.x = invoke noundef zeroext i1 @_ZN6Assimp3IFC25IntersectsBoundaryProfileERK10aiVector3tIdES4_RKSt6vectorIS2_SaIS2_EEbRS5_ISt4pairImS2_ESaISB_EEb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext true)
          to label %bb.b unwind label %bb.f       ; 0 uses

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt4pairIm10aiVector3tIdEES3_EvT_S5_RSaIT0_E.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.y = load ptr, ptr %i.h, align 8
  %i.z = load ptr, ptr %2, align 8                ; 3 uses
  %i.aa = ptrtoint ptr %i.z to i64                ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %i.ad, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #24
  br label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EED2Ev.exit

_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EED2Ev.exit: ; preds = %bb.b, %bb.c
  %i.af = ptrtoint ptr %i.i to i64
  %i.ag = ptrtoint ptr %i.j to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = lshr i64 %i.ah, 5
  %i.aj = and i64 %i.ai, 1
  %i.ak = ptrtoint ptr %i.q to i64
  %i.al = ptrtoint ptr %i.r to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = lshr i64 %i.am, 5
  %i.ao = and i64 %i.an, 1
  %i.ap = add nuw nsw i64 %i.ao, %i.aj
  %i.aq = ptrtoint ptr %i.y to i64
  %i.ar = sub i64 %i.aq, %i.aa
  %i.as = lshr i64 %i.ar, 5
  %i.at = and i64 %i.as, 1
  %i.au = add nuw nsw i64 %i.ap, %i.at
  %i.av = icmp samesign ugt i64 %i.au, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret i1 %i.av

bb.d:                                             ; preds = %bb.a
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.g

bb.e:                                             ; preds = %_ZSt8_DestroyIPSt4pairIm10aiVector3tIdEES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.g

bb.f:                                             ; preds = %_ZSt8_DestroyIPSt4pairIm10aiVector3tIdEES3_EvT_S5_RSaIT0_E.exit.i.i17
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.ay, %bb.f ], [ %i.ax, %bb.e ], [ %i.aw, %bb.d ]
  %i.az = load ptr, ptr %2, align 8               ; 3 uses
  %.not.i.i.i19 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i19, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EED2Ev.exit20, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.az to i64
  %i.be = sub i64 %i.bc, %i.bd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.be) #24
  br label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EED2Ev.exit20

_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EED2Ev.exit20: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3IFC49ProcessPolygonalBoundedBooleanHalfSpaceDifferenceEPKNS0_10Schema_2x328IfcPolygonalBoundedHalfSpaceERNS0_8TempMeshERKS5_RNS0_14ConversionDataE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(392) %3) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %class.aiVector3t, align 16         ; 8 uses
  %5 = alloca %class.aiVector3t, align 16         ; 12 uses
  %6 = alloca %"class.Assimp::STEP::EXPRESS::ENUMERATION", align 8 ; 11 uses
  %7 = alloca %class.aiVector3t, align 16         ; 8 uses
  %8 = alloca %class.aiMatrix4x4t, align 8        ; 16 uses
  %9 = alloca %class.aiMatrix4x4t, align 16       ; 21 uses
  %10 = alloca %"class.std::vector", align 8      ; 12 uses
  %11 = alloca %"class.std::vector", align 8      ; 21 uses
  %12 = alloca %class.aiVector3t, align 16        ; 6 uses
  %13 = alloca %class.aiVector3t, align 16        ; 6 uses
  %14 = alloca %"class.std::vector.40", align 8   ; 13 uses
  %15 = alloca %class.aiVector3t, align 16        ; 6 uses
  %16 = alloca %class.aiVector3t, align 16        ; 6 uses
  %17 = alloca %class.aiVector3t, align 8         ; 6 uses
  %18 = alloca %"class.std::vector", align 8      ; 18 uses
  %.sroa.0547 = alloca %"struct.std::_Tuple_impl.81", align 8 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = tail call noundef ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x310IfcSurfaceEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %i.i, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 %i.k
  %i.m = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(24) %i.l, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x38IfcPlaneE, i64 -1) #25 ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.n = tail call noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
  br i1 %i.n, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJRA60_KcEEEvDpOT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  %i.p = tail call noundef ptr @_ZN6Assimp12LogFunctionsINS_11IFCImporterEE6PrefixEv()
  store ptr %i.p, ptr %i.f, align 8
  call void @_ZN6Assimp6Logger5errorIJPKcRA60_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 1 dereferenceable(60) @.str)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJRA60_KcEEEvDpOT_.exit

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %i.r, align 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 64 ; 3 uses
  %i.t = tail call noundef ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x319IfcAxis2Placement3DEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.s)
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  %i.v = load i8, ptr %i.u, align 8, !range !12, !noundef !13
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = tail call noundef ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x319IfcAxis2Placement3DEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.s)
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.z = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x312IfcDirectionEEcvRKS4_Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.y)
  call void @_ZN6Assimp3IFC16ConvertDirectionER10aiVector3tIdERKNS0_10Schema_2x312IfcDirectionE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(72) %i.z)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aa = call noundef ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x319IfcAxis2Placement3DEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.s)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ac = call noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x317IfcCartesianPointEEcvRKS4_Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
  call void @_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(88) %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp4STEP7EXPRESS17PrimitiveDataTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %6, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 7 uses
  store ptr %i.af, ptr %i.ae, align 8
  %i.ag = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ai = load i64, ptr %i.ah, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  store i64 %i.ai, ptr %i.e, align 8
  %i.aj = icmp ugt i64 %i.ai, 15
  br i1 %i.aj, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.f
  %i.ak = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) ; 2 uses
  store ptr %i.ak, ptr %i.ae, align 8
  %i.al = load i64, ptr %i.e, align 8
  store i64 %i.al, ptr %i.af, align 8
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.f
  %i.am = phi ptr [ %i.ak, %.noexc.i.i.i ], [ %i.af, %bb.f ] ; 2 uses
  switch i64 %i.ai, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZN6Assimp4STEP7EXPRESS11ENUMERATIONC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.an = load i8, ptr %i.ag, align 1
  store i8 %i.an, ptr %i.am, align 1
  br label %_ZN6Assimp4STEP7EXPRESS11ENUMERATIONC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.am, ptr align 1 %i.ag, i64 %i.ai, i1 false)
  br label %_ZN6Assimp4STEP7EXPRESS11ENUMERATIONC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN6Assimp4STEP7EXPRESS11ENUMERATIONC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %._crit_edge.i.i.i.i, %bb.g, %bb.h
  %i.ao = load i64, ptr %i.e, align 8             ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.ao, ptr %i.ap, align 8
  %i.aq = load ptr, ptr %i.ae, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ao
  store i8 0, ptr %i.ar, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp4STEP7EXPRESS11ENUMERATIONE, i64 16), ptr %6, align 8
  %i.as = invoke noundef zeroext i1 @_ZN6Assimp3IFC6IsTrueERKNS_4STEP7EXPRESS11ENUMERATIONE(ptr noundef nonnull align 8 dereferenceable(40) %6)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %_ZN6Assimp4STEP7EXPRESS11ENUMERATIONC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp4STEP7EXPRESS17PrimitiveDataTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %6, align 8
  %i.at = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.af
  br i1 %i.au, label %_ZN6Assimp4STEP7EXPRESS17PrimitiveDataTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.i
  %i.av = load i64, ptr %i.af, align 8
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #24, !inline_history !14
  br label %_ZN6Assimp4STEP7EXPRESS17PrimitiveDataTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZN6Assimp4STEP7EXPRESS17PrimitiveDataTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %.pre = load double, ptr %5, align 16           ; 2 uses
  %.pre1068 = load double, ptr %i.q, align 8      ; 2 uses
  %.pre1069 = load double, ptr %i.r, align 16     ; 2 uses
  br i1 %i.as, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZN6Assimp4STEP7EXPRESS17PrimitiveDataTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
  %i.ax = fneg double %.pre                       ; 2 uses
  store double %i.ax, ptr %5, align 16
  %i.ay = fneg double %.pre1068                   ; 2 uses
  store double %i.ay, ptr %i.q, align 8
  %i.az = fneg double %.pre1069                   ; 2 uses
  store double %i.az, ptr %i.r, align 16
  br label %bb.l

bb.k:                                             ; preds = %_ZN6Assimp4STEP7EXPRESS11ENUMERATIONC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ba = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp4STEP7EXPRESS17PrimitiveDataTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %6, align 8
  %i.bb = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.af
  br i1 %i.bc, label %_ZN6Assimp4STEP7EXPRESS17PrimitiveDataTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit247, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i245

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i245: ; preds = %bb.k
  %i.bd = load i64, ptr %i.af, align 8
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #24, !inline_history !14
  br label %_ZN6Assimp4STEP7EXPRESS17PrimitiveDataTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit247

_ZN6Assimp4STEP7EXPRESS17PrimitiveDataTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit247: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i245
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit421

bb.l:                                             ; preds = %bb.j, %_ZN6Assimp4STEP7EXPRESS17PrimitiveDataTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
  %i.bf = phi double [ %i.az, %bb.j ], [ %.pre1069, %_ZN6Assimp4STEP7EXPRESS17PrimitiveDataTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit ] ; 3 uses
  %i.bg = phi double [ %i.ay, %bb.j ], [ %.pre1068, %_ZN6Assimp4STEP7EXPRESS17PrimitiveDataTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit ] ; 3 uses
  %i.bh = phi double [ %i.ax, %bb.j ], [ %.pre, %_ZN6Assimp4STEP7EXPRESS17PrimitiveDataTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit ] ; 3 uses
  %i.bi = fmul double %i.bg, %i.bg
  %i.bj = call double @llvm.fmuladd.f64(double %i.bh, double %i.bh, double %i.bi)
  %i.bk = call noundef double @llvm.fmuladd.f64(double %i.bf, double %i.bf, double %i.bj) ; 2 uses
  %i.bl = fcmp oeq double %i.bk, 0.000000e+00
  br i1 %i.bl, label %_ZN10aiVector3tIdE9NormalizeEv.exit, label %_ZN10aiVector3tIdEdVEd.exit.i

_ZN10aiVector3tIdEdVEd.exit.i:                    ; preds = %bb.l
  %sqrt.i.i = call noundef double @llvm.sqrt.f64(double %i.bk)
  %i.bm = fdiv double 1.000000e+00, %sqrt.i.i     ; 3 uses
  %i.bn = fmul double %i.bh, %i.bm
  store double %i.bn, ptr %5, align 16
  %i.bo = fmul double %i.bg, %i.bm
  store double %i.bo, ptr %i.q, align 8
  %i.bp = fmul double %i.bf, %i.bm
  store double %i.bp, ptr %i.r, align 16
  br label %_ZN10aiVector3tIdE9NormalizeEv.exit

_ZN10aiVector3tIdE9NormalizeEv.exit:              ; preds = %bb.l, %_ZN10aiVector3tIdEdVEd.exit.i
  %i.bq = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #23, !noalias !190 ; 15 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 9 uses
  store i32 1, ptr %i.br, align 8, !noalias !190
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 12 ; 3 uses
  store i32 1, ptr %i.bs, align 4, !noalias !190
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN6Assimp3IFC8TempMeshESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.bq, align 8, !noalias !190
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bt, i8 0, i64 48, i1 false), !noalias !190
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bv = invoke noundef nonnull align 8 dereferenceable(57) ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x315IfcBoundedCurveEEcvRKS4_Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.bu)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit
  %i.bw = invoke noundef zeroext i1 @_ZN6Assimp3IFC12ProcessCurveERKNS0_10Schema_2x38IfcCurveERNS0_8TempMeshERNS0_14ConversionDataE(ptr noundef nonnull align 8 dereferenceable(41) %i.bv, ptr noundef nonnull align 8 dereferenceable(48) %i.bt, ptr noundef nonnull align 8 dereferenceable(392) %3)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %bb.m
  br i1 %i.bw, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bx = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.o
  br i1 %i.bx, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJRA58_KcEEEvDpOT_.exit, label %bb.p

bb.p:                                             ; preds = %.noexc
  %i.by = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc248 unwind label %bb.q

.noexc248:                                        ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.bz = invoke noundef ptr @_ZN6Assimp12LogFunctionsINS_11IFCImporterEE6PrefixEv()
          to label %.noexc249 unwind label %bb.q

.noexc249:                                        ; preds = %.noexc248
  store ptr %i.bz, ptr %i.d, align 8
  invoke void @_ZN6Assimp6Logger5errorIJPKcRA58_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.by, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 1 dereferenceable(58) @.str.2)
          to label %.noexc250 unwind label %bb.q

.noexc250:                                        ; preds = %.noexc249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJRA58_KcEEEvDpOT_.exit

bb.q:                                             ; preds = %.noexc249, %.noexc248, %bb.p, %bb.o, %bb.m, %_ZN10aiVector3tIdE9NormalizeEv.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.fa

bb.r:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.cb = load ptr, ptr %i.bt, align 8            ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bq, i64 24 ; 3 uses
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = ptrtoint ptr %i.cb to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = sdiv exact i64 %i.cg, 24
  invoke void @_ZN6Assimp3IFC8TempMesh20ComputePolygonNormalEPK10aiVector3tIdEmb(ptr dead_on_unwind nonnull writable sret(%class.aiVector3t) align 8 %7, ptr noundef %i.cb, i64 noundef %i.ch, i1 noundef zeroext true)
          to label %bb.s unwind label %bb.ac

bb.s:                                             ; preds = %bb.r
end_hunk_1
begin_hunk_2_@_ZN6Assimp3IFC49ProcessPolygonalBoundedBooleanHalfSpaceDifferenceEPKNS0_10Schema_2x328IfcPolygonalBoundedHalfSpaceERNS0_8TempMeshERKS5_RNS0_14ConversionDataE:bb.a
  %.sroa.0547.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0547, i64 8 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph979, %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit406
  %.0194978 = phi i32 [ 0, %.lr.ph979 ], [ %i.ate, %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit406 ] ; 2 uses
  %.sroa.0733.0977 = phi ptr [ %i.fc, %.lr.ph979 ], [ %i.atc, %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit406 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.gd = zext i32 %.0194978 to i64
  %i.ge = load ptr, ptr %2, align 8
  %i.gf = getelementptr inbounds nuw [24 x i8], ptr %i.ge, i64 %i.gd ; 7 uses
  %i.gg = load i32, ptr %.sroa.0733.0977, align 4 ; 2 uses
  %i.gh = zext i32 %i.gg to i64                   ; 4 uses
  %.not205 = icmp eq i32 %i.gg, 0
  br i1 %.not205, label %.critedge238thread-pre-split, label %bb.ag

bb.ac:                                            ; preds = %bb.r
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ez

bb.ad:                                            ; preds = %bb.t, %bb.s
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ey

bb.ae:                                            ; preds = %bb.u
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ex

bb.af:                                            ; preds = %.invoke, %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i, %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ex

bb.ag:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  invoke void @_ZN6Assimp3IFC8TempMesh20ComputePolygonNormalEPK10aiVector3tIdEmb(ptr dead_on_unwind nonnull writable sret(%class.aiVector3t) align 8 %12, ptr noundef nonnull %i.gf, i64 noundef %i.gh, i1 noundef zeroext true)
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.gm = load double, ptr %i.fd, align 16
  %i.gn = load double, ptr %i.r, align 16         ; 2 uses
  %i.go = load <2 x double>, ptr %i.gf, align 8, !noalias !13
  %i.gp = load <2 x double>, ptr %4, align 16, !noalias !13
  %i.gq = fsub <2 x double> %i.go, %i.gp          ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.gs = load double, ptr %i.gr, align 8, !noalias !13
  %i.gt = load double, ptr %i.fe, align 16, !noalias !13
  %i.gu = fsub double %i.gs, %i.gt
  %i.gv = load <2 x double>, ptr %12, align 16    ; 2 uses
  %i.gw = load <2 x double>, ptr %5, align 16     ; 2 uses
  %i.gx = shufflevector <2 x double> %i.gw, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.gy = shufflevector <2 x double> %i.gv, <2 x double> %i.gq, <2 x i32> <i32 1, i32 3>
  %i.gz = fmul <2 x double> %i.gx, %i.gy
  %i.ha = shufflevector <2 x double> %i.gv, <2 x double> %i.gq, <2 x i32> <i32 0, i32 2>
  %i.hb = shufflevector <2 x double> %i.gw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ha, <2 x double> %i.hb, <2 x double> %i.gz) ; 2 uses
  %i.hd = extractelement <2 x double> %i.hc, i64 0
  %i.he = call noundef double @llvm.fmuladd.f64(double %i.gm, double %i.gn, double %i.hd)
  %i.hf = call noundef double @llvm.fabs.f64(double %i.he)
  %i.hg = fcmp ogt double %i.hf, 9.999000e-01
  %i.hh = extractelement <2 x double> %i.hc, i64 1
  %i.hi = call noundef double @llvm.fmuladd.f64(double %i.gu, double %i.gn, double %i.hh)
  %i.hj = fcmp ogt double %i.hi, f0xBEB0C6F7A0000000 ; 3 uses
  br i1 %i.hg, label %bb.ai, label %.preheader

bb.ai:                                            ; preds = %bb.ah
  %i.hk = select i1 %i.hj, ptr %10, ptr %11       ; 2 uses
  %.sroa.gep711.val = load ptr, ptr %.sroa.gep711, align 8
  %.sroa.gep712.val = load ptr, ptr %.sroa.gep712, align 8
  %i.hl = select i1 %i.hj, ptr %.sroa.gep711.val, ptr %.sroa.gep712.val
  %i.hm = getelementptr inbounds nuw [24 x i8], ptr %i.gf, i64 %i.gh
  %i.hn = load ptr, ptr %i.hk, align 8            ; 2 uses
  %i.ho = ptrtoint ptr %i.hl to i64
  %i.hp = ptrtoint ptr %i.hn to i64
  %i.hq = sub i64 %i.ho, %i.hp
  %i.hr = getelementptr inbounds i8, ptr %i.hn, i64 %i.hq
  invoke void @_ZNSt6vectorI10aiVector3tIdESaIS1_EE15_M_range_insertIPKS1_EEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EET_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.hk, ptr %i.hr, ptr noundef nonnull %i.gf, ptr noundef nonnull %i.hm)
          to label %.loopexit796 unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ag
  %i.hs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.ak:                                            ; preds = %bb.ai
  %i.ht = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

.preheader:                                       ; preds = %bb.ah, %_ZN6Assimp3IFC21IntersectSegmentPlaneERK10aiVector3tIdES4_S4_S4_bRS2_.exit.thread
  %.0191914 = phi i64 [ %i.hv, %_ZN6Assimp3IFC21IntersectSegmentPlaneERK10aiVector3tIdES4_S4_S4_bRS2_.exit.thread ], [ 0, %bb.ah ] ; 2 uses
  %.0192913 = phi i1 [ %.1193, %_ZN6Assimp3IFC21IntersectSegmentPlaneERK10aiVector3tIdES4_S4_S4_bRS2_.exit.thread ], [ %i.hj, %bb.ah ] ; 12 uses
  %i.hu = getelementptr inbounds nuw [24 x i8], ptr %i.gf, i64 %.0191914 ; 4 uses
  %.sroa.8701.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  %.sroa.8701.0.copyload = load double, ptr %.sroa.8701.0..sroa_idx, align 8 ; 4 uses
  %i.hv = add nuw nsw i64 %.0191914, 1            ; 4 uses
  %i.hw = icmp eq i64 %i.hv, %i.gh
  %i.hx = select i1 %i.hw, i64 0, i64 %i.hv
  %i.hy = getelementptr inbounds nuw [24 x i8], ptr %i.gf, i64 %i.hx ; 2 uses
  %i.hz = load <2 x double>, ptr %i.hu, align 8   ; 4 uses
  %i.ia = load <2 x double>, ptr %i.hy, align 8
  %.sroa.6698.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  %.sroa.6698.0.copyload = load double, ptr %.sroa.6698.0..sroa_idx, align 8
  %. = select i1 %.0192913, ptr %10, ptr %11      ; 4 uses
  %..sroa.sel = select i1 %.0192913, ptr %.sroa.gep711, ptr %.sroa.gep712 ; 6 uses
  %i.ib = load ptr, ptr %..sroa.sel, align 8      ; 5 uses
  %..sroa.sel715 = select i1 %.0192913, ptr %.sroa.gep713, ptr %.sroa.gep714 ; 6 uses
  %i.ic = load ptr, ptr %..sroa.sel715, align 8
  %.not.i = icmp eq ptr %i.ib, %i.ic
  br i1 %.not.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.preheader
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ib, ptr noundef nonnull align 8 dereferenceable(24) %i.hu, i64 24, i1 false)
  %i.id = load ptr, ptr %..sroa.sel, align 8
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 24 ; 2 uses
  store ptr %i.ie, ptr %..sroa.sel, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit

bb.am:                                            ; preds = %.preheader
  %i.if = load ptr, ptr %., align 8               ; 5 uses
  %i.ig = ptrtoint ptr %i.ib to i64
  %i.ih = ptrtoint ptr %i.if to i64               ; 2 uses
  %i.ii = sub i64 %i.ig, %i.ih                    ; 3 uses
  %i.ij = icmp eq i64 %i.ii, 9223372036854775800
  br i1 %i.ij, label %bb.an, label %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.an:                                            ; preds = %bb.am
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #22
          to label %.noexc257 unwind label %.loopexit.split-lp798

.noexc257:                                        ; preds = %bb.an
  unreachable

_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.am
  %i.ik = sdiv exact i64 %i.ii, 24                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ik, i64 1)
  %i.il = add nsw i64 %.sroa.speculated.i.i.i, %i.ik ; 2 uses
  %i.im = icmp ult i64 %i.il, %i.ik
  %i.in = call i64 @llvm.umin.i64(i64 %i.il, i64 384307168202282325)
  %i.io = select i1 %i.im, i64 384307168202282325, i64 %i.in ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.io, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ip = mul nuw nsw i64 %i.io, 24
  %i.iq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ip) #23
          to label %.noexc258 unwind label %.loopexit797 ; 5 uses

.noexc258:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.ii
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ir, ptr noundef nonnull align 8 dereferenceable(24) %i.hu, i64 24, i1 false)
  %.not10.i.i.i.i.i = icmp eq ptr %i.if, %i.ib
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc258, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.it, %.lr.ph.i.i.i.i.i ], [ %i.iq, %.noexc258 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.is, %.lr.ph.i.i.i.i.i ], [ %i.if, %.noexc258 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i, i64 24, i1 false), !alias.scope !192
  %i.is = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 24 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.is, %i.ib
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !3

_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc258
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.iq, %.noexc258 ], [ %i.it, %.lr.ph.i.i.i.i.i ]
  %i.iu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.if, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.iv = load ptr, ptr %..sroa.sel715, align 8
  %i.iw = ptrtoint ptr %i.iv to i64
  %i.ix = sub i64 %i.iw, %i.ih
  call void @_ZdlPvm(ptr noundef nonnull %i.if, i64 noundef %i.ix) #24
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.ao, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.iq, ptr %., align 8
  store ptr %i.iu, ptr %..sroa.sel, align 8
  %i.iy = getelementptr inbounds nuw [24 x i8], ptr %i.iq, i64 %i.io
  store ptr %i.iy, ptr %..sroa.sel715, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.al
  %i.iz = phi ptr [ %i.iu, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.ie, %bb.al ] ; 10 uses
  %i.ja = load <2 x double>, ptr %4, align 16, !noalias !193
  %i.jb = fsub <2 x double> %i.hz, %i.ja          ; 2 uses
  %i.jc = load double, ptr %i.fe, align 16, !noalias !193
  %i.jd = fsub <2 x double> %i.ia, %i.hz          ; 3 uses
  %i.je = insertelement <2 x double> poison, double %.sroa.6698.0.copyload, i64 0
  %i.jf = insertelement <2 x double> %i.je, double %.sroa.8701.0.copyload, i64 1
  %i.jg = insertelement <2 x double> poison, double %.sroa.8701.0.copyload, i64 0
  %i.jh = insertelement <2 x double> %i.jg, double %i.jc, i64 1
  %i.ji = fsub <2 x double> %i.jf, %i.jh          ; 2 uses
  %19 = load <3 x double>, ptr %5, align 16       ; 3 uses
  %i.jj = shufflevector <2 x double> %i.jd, <2 x double> %i.jb, <2 x i32> <i32 1, i32 3>
  %20 = shufflevector <3 x double> %19, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.jk = fmul <2 x double> %i.jj, %20
  %i.jl = shufflevector <3 x double> %19, <3 x double> poison, <2 x i32> zeroinitializer
  %i.jm = shufflevector <2 x double> %i.jd, <2 x double> %i.jb, <2 x i32> <i32 0, i32 2>
  %i.jn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jl, <2 x double> %i.jm, <2 x double> %i.jk)
  %21 = shufflevector <3 x double> %19, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.jo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %21, <2 x double> %i.ji, <2 x double> %i.jn) ; 2 uses
  %i.jp = extractelement <2 x double> %i.jo, i64 1 ; 3 uses
  %i.jq = fneg double %i.jp
  %i.jr = extractelement <2 x double> %i.jo, i64 0 ; 3 uses
  %i.js = fsub double %i.jr, %i.jp                ; 3 uses
  %i.jt = call noundef double @llvm.fabs.f64(double %i.js)
  %i.ju = fcmp olt double %i.jt, f0x3EB0C6F7A0000000
  br i1 %i.ju, label %_ZN6Assimp3IFC21IntersectSegmentPlaneERK10aiVector3tIdES4_S4_S4_bRS2_.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit
  %i.jv = call double @llvm.fabs.f64(double %i.jp)
  %i.jw = fcmp olt double %i.jv, f0x3EB0C6F7A0000000
  br i1 %i.jw, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.jx = fcmp uge double %i.js, f0x3EB0C6F7A0000000
  %i.jy = fcmp ule double %i.js, f0xBEB0C6F7A0000000
  %or.cond41.i = select i1 %.0192913, i1 %i.jx, i1 %i.jy
  br i1 %or.cond41.i, label %_ZN6Assimp3IFC21IntersectSegmentPlaneERK10aiVector3tIdES4_S4_S4_bRS2_.exit.thread, label %_ZN6Assimp3IFC21IntersectSegmentPlaneERK10aiVector3tIdES4_S4_S4_bRS2_.exit

bb.ar:                                            ; preds = %bb.ap
  %i.jz = call noundef double @llvm.fabs.f64(double %i.jr)
  %i.ka = fcmp olt double %i.jz, f0x3EB0C6F7A0000000
  br i1 %i.ka, label %_ZN6Assimp3IFC21IntersectSegmentPlaneERK10aiVector3tIdES4_S4_S4_bRS2_.exit.thread, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.kb = fdiv double %i.jq, %i.jr                ; 4 uses
  %i.kc = fcmp ule double %i.kb, 1.000000e+00
  %i.kd = fcmp uge double %i.kb, 0.000000e+00
  %or.cond.not.i = and i1 %i.kc, %i.kd
  br i1 %or.cond.not.i, label %bb.at, label %_ZN6Assimp3IFC21IntersectSegmentPlaneERK10aiVector3tIdES4_S4_S4_bRS2_.exit.thread

bb.at:                                            ; preds = %bb.as
  %i.ke = insertelement <2 x double> poison, double %i.kb, i64 0
  %i.kf = shufflevector <2 x double> %i.ke, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kg = fmul <2 x double> %i.jd, %i.kf
  %i.kh = extractelement <2 x double> %i.ji, i64 0
  %i.ki = fmul double %i.kh, %i.kb
  %i.kj = fadd <2 x double> %i.hz, %i.kg
  %i.kk = fadd double %.sroa.8701.0.copyload, %i.ki
  br label %_ZN6Assimp3IFC21IntersectSegmentPlaneERK10aiVector3tIdES4_S4_S4_bRS2_.exit

_ZN6Assimp3IFC21IntersectSegmentPlaneERK10aiVector3tIdES4_S4_S4_bRS2_.exit: ; preds = %bb.aq, %bb.at
  %.sroa.13687.0 = phi double [ %i.kk, %bb.at ], [ %.sroa.8701.0.copyload, %bb.aq ] ; 5 uses
  %i.kl = phi <2 x double> [ %i.kj, %bb.at ], [ %i.hz, %bb.aq ] ; 6 uses
  %i.km = load ptr, ptr %., align 8               ; 5 uses
  %i.kn = icmp eq ptr %i.km, %i.iz                ; 2 uses
  br i1 %i.kn, label %.critedge, label %bb.au

bb.au:                                            ; preds = %_ZN6Assimp3IFC21IntersectSegmentPlaneERK10aiVector3tIdES4_S4_S4_bRS2_.exit
  %i.ko = getelementptr inbounds i8, ptr %i.iz, i64 -24
  %i.kp = load double, ptr %i.ko, align 8, !noalias !194
  %i.kq = extractelement <2 x double> %i.kl, i64 0
  %i.kr = fsub double %i.kp, %i.kq                ; 2 uses
  %i.ks = getelementptr inbounds i8, ptr %i.iz, i64 -16
  %i.kt = load double, ptr %i.ks, align 8, !noalias !194
  %i.ku = extractelement <2 x double> %i.kl, i64 1
  %i.kv = fsub double %i.kt, %i.ku                ; 2 uses
  %i.kw = getelementptr inbounds i8, ptr %i.iz, i64 -8
  %i.kx = load double, ptr %i.kw, align 8, !noalias !194
  %i.ky = fsub double %i.kx, %.sroa.13687.0       ; 2 uses
  %i.kz = fmul double %i.kv, %i.kv
  %i.la = call double @llvm.fmuladd.f64(double %i.kr, double %i.kr, double %i.kz)
  %i.lb = call noundef double @llvm.fmuladd.f64(double %i.ky, double %i.ky, double %i.la)
  %i.lc = fcmp ogt double %i.lb, f0x3D719799812DEA11
  br i1 %i.lc, label %.critedge, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit274

.critedge:                                        ; preds = %_ZN6Assimp3IFC21IntersectSegmentPlaneERK10aiVector3tIdES4_S4_S4_bRS2_.exit, %bb.au
  %i.ld = load ptr, ptr %..sroa.sel715, align 8
  %.not.i259 = icmp eq ptr %i.iz, %i.ld
  br i1 %.not.i259, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %.critedge
  store <2 x double> %i.kl, ptr %i.iz, align 8
  %.sroa.13687.0..sroa_idx688 = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  store double %.sroa.13687.0, ptr %.sroa.13687.0..sroa_idx688, align 8
  %i.le = getelementptr inbounds nuw i8, ptr %i.iz, i64 24
  store ptr %i.le, ptr %..sroa.sel, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit274

bb.aw:                                            ; preds = %.critedge
  %i.lf = ptrtoint ptr %i.iz to i64
  %i.lg = ptrtoint ptr %i.km to i64               ; 2 uses
  %i.lh = sub i64 %i.lf, %i.lg                    ; 3 uses
  %i.li = icmp eq i64 %i.lh, 9223372036854775800
  br i1 %i.li, label %bb.ax, label %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i260

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #22
          to label %.noexc272 unwind label %.loopexit.split-lp803

.noexc272:                                        ; preds = %bb.ax
  unreachable

_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i260: ; preds = %bb.aw
  %i.lj = sdiv exact i64 %i.lh, 24                ; 3 uses
  %.sroa.speculated.i.i.i261 = call i64 @llvm.umax.i64(i64 %i.lj, i64 1)
  %i.lk = add nsw i64 %.sroa.speculated.i.i.i261, %i.lj ; 2 uses
  %i.ll = icmp ult i64 %i.lk, %i.lj
  %i.lm = call i64 @llvm.umin.i64(i64 %i.lk, i64 384307168202282325)
  %i.ln = select i1 %i.ll, i64 384307168202282325, i64 %i.lm ; 3 uses
  %.not.i.i.i262 = icmp ne i64 %i.ln, 0
  call void @llvm.assume(i1 %.not.i.i.i262)
  %i.lo = mul nuw nsw i64 %i.ln, 24
  %i.lp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lo) #23
          to label %.noexc273 unwind label %.loopexit802 ; 5 uses

.noexc273:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i260
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 %i.lh ; 2 uses
  store <2 x double> %i.kl, ptr %i.lq, align 8
  %.sroa.13687.0..sroa_idx690 = getelementptr inbounds nuw i8, ptr %i.lq, i64 16
  store double %.sroa.13687.0, ptr %.sroa.13687.0..sroa_idx690, align 8
  br i1 %i.kn, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i268, label %.lr.ph.i.i.i.i.i264

.lr.ph.i.i.i.i.i264:                              ; preds = %.noexc273, %.lr.ph.i.i.i.i.i264
  %.012.i.i.i.i.i265 = phi ptr [ %i.ls, %.lr.ph.i.i.i.i.i264 ], [ %i.lp, %.noexc273 ] ; 2 uses
  %.0911.i.i.i.i.i266 = phi ptr [ %i.lr, %.lr.ph.i.i.i.i.i264 ], [ %i.km, %.noexc273 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i265, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i266, i64 24, i1 false), !alias.scope !195
  %i.lr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i266, i64 24 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i265, i64 24 ; 2 uses
  %.not.i.i.i.i.i267 = icmp eq ptr %i.lr, %i.iz
  br i1 %.not.i.i.i.i.i267, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i268, label %.lr.ph.i.i.i.i.i264, !llvm.loop !3

_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i268: ; preds = %.lr.ph.i.i.i.i.i264, %.noexc273
  %.0.lcssa.i.i.i.i.i269 = phi ptr [ %i.lp, %.noexc273 ], [ %i.ls, %.lr.ph.i.i.i.i.i264 ]
  %i.lt = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i269, i64 24
  %.not.i23.i.i270 = icmp eq ptr %i.km, null
  br i1 %.not.i23.i.i270, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i271, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i268
  %i.lu = load ptr, ptr %..sroa.sel715, align 8
  %i.lv = ptrtoint ptr %i.lu to i64
  %i.lw = sub i64 %i.lv, %i.lg
  call void @_ZdlPvm(ptr noundef nonnull %i.km, i64 noundef %i.lw) #24
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i271

_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i271: ; preds = %bb.ay, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i268
  store ptr %i.lp, ptr %., align 8
  store ptr %i.lt, ptr %..sroa.sel, align 8
  %i.lx = getelementptr inbounds nuw [24 x i8], ptr %i.lp, i64 %i.ln
  store ptr %i.lx, ptr %..sroa.sel715, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit274

.loopexit797:                                     ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit799 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

.loopexit.split-lp798:                            ; preds = %bb.an
  %lpad.loopexit.split-lp800 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

.loopexit802:                                     ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i260
  %lpad.loopexit804 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

.loopexit.split-lp803:                            ; preds = %bb.ax
  %lpad.loopexit.split-lp805 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit274: ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i271, %bb.av, %bb.au
  %.2 = select i1 %.0192913, ptr %11, ptr %10     ; 2 uses
  %.2.sroa.sel = select i1 %.0192913, ptr %.sroa.gep712, ptr %.sroa.gep711 ; 4 uses
  %i.ly = load ptr, ptr %.2.sroa.sel, align 8     ; 6 uses
  %.2.sroa.sel732 = select i1 %.0192913, ptr %.sroa.gep714, ptr %.sroa.gep713 ; 3 uses
  %i.lz = load ptr, ptr %.2.sroa.sel732, align 8
  %.not.i275 = icmp eq ptr %i.ly, %i.lz
  br i1 %.not.i275, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit274
  store <2 x double> %i.kl, ptr %i.ly, align 8
  %.sroa.13687.0..sroa_idx692 = getelementptr inbounds nuw i8, ptr %i.ly, i64 16
  store double %.sroa.13687.0, ptr %.sroa.13687.0..sroa_idx692, align 8
  %i.ma = load ptr, ptr %.2.sroa.sel, align 8
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 24
  store ptr %i.mb, ptr %.2.sroa.sel, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit290

bb.ba:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit274
  %i.mc = load ptr, ptr %.2, align 8              ; 5 uses
  %i.md = ptrtoint ptr %i.ly to i64
  %i.me = ptrtoint ptr %i.mc to i64               ; 2 uses
  %i.mf = sub i64 %i.md, %i.me                    ; 3 uses
  %i.mg = icmp eq i64 %i.mf, 9223372036854775800
  br i1 %i.mg, label %bb.bb, label %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i276

bb.bb:                                            ; preds = %bb.ba
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #22
          to label %.noexc288 unwind label %.loopexit.split-lp808

.noexc288:                                        ; preds = %bb.bb
  unreachable

_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i276: ; preds = %bb.ba
  %i.mh = sdiv exact i64 %i.mf, 24                ; 3 uses
  %.sroa.speculated.i.i.i277 = call i64 @llvm.umax.i64(i64 %i.mh, i64 1)
  %i.mi = add nsw i64 %.sroa.speculated.i.i.i277, %i.mh ; 2 uses
  %i.mj = icmp ult i64 %i.mi, %i.mh
  %i.mk = call i64 @llvm.umin.i64(i64 %i.mi, i64 384307168202282325)
  %i.ml = select i1 %i.mj, i64 384307168202282325, i64 %i.mk ; 3 uses
  %.not.i.i.i278 = icmp ne i64 %i.ml, 0
  call void @llvm.assume(i1 %.not.i.i.i278)
  %i.mm = mul nuw nsw i64 %i.ml, 24
  %i.mn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mm) #23
          to label %.noexc289 unwind label %.loopexit807 ; 5 uses

.noexc289:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i276
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.mf ; 2 uses
  store <2 x double> %i.kl, ptr %i.mo, align 8
  %.sroa.13687.0..sroa_idx694 = getelementptr inbounds nuw i8, ptr %i.mo, i64 16
  store double %.sroa.13687.0, ptr %.sroa.13687.0..sroa_idx694, align 8
  %.not10.i.i.i.i.i279 = icmp eq ptr %i.mc, %i.ly
  br i1 %.not10.i.i.i.i.i279, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i284, label %.lr.ph.i.i.i.i.i280

.lr.ph.i.i.i.i.i280:                              ; preds = %.noexc289, %.lr.ph.i.i.i.i.i280
  %.012.i.i.i.i.i281 = phi ptr [ %i.mq, %.lr.ph.i.i.i.i.i280 ], [ %i.mn, %.noexc289 ] ; 2 uses
  %.0911.i.i.i.i.i282 = phi ptr [ %i.mp, %.lr.ph.i.i.i.i.i280 ], [ %i.mc, %.noexc289 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i281, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i282, i64 24, i1 false), !alias.scope !196
  %i.mp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i282, i64 24 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i281, i64 24 ; 2 uses
  %.not.i.i.i.i.i283 = icmp eq ptr %i.mp, %i.ly
  br i1 %.not.i.i.i.i.i283, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i284, label %.lr.ph.i.i.i.i.i280, !llvm.loop !3

_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i284: ; preds = %.lr.ph.i.i.i.i.i280, %.noexc289
  %.0.lcssa.i.i.i.i.i285 = phi ptr [ %i.mn, %.noexc289 ], [ %i.mq, %.lr.ph.i.i.i.i.i280 ]
  %i.mr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i285, i64 24
  %.not.i23.i.i286 = icmp eq ptr %i.mc, null
  br i1 %.not.i23.i.i286, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i287, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i284
  %i.ms = load ptr, ptr %.2.sroa.sel732, align 8
  %i.mt = ptrtoint ptr %i.ms to i64
  %i.mu = sub i64 %i.mt, %i.me
  call void @_ZdlPvm(ptr noundef nonnull %i.mc, i64 noundef %i.mu) #24
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i287

_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i287: ; preds = %bb.bc, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i284
  store ptr %i.mn, ptr %.2, align 8
  store ptr %i.mr, ptr %.2.sroa.sel, align 8
  %i.mv = getelementptr inbounds nuw [24 x i8], ptr %i.mn, i64 %i.ml
  store ptr %i.mv, ptr %.2.sroa.sel732, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit290

_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit290: ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i287, %bb.az
  %i.mw = xor i1 %.0192913, true
  br label %_ZN6Assimp3IFC21IntersectSegmentPlaneERK10aiVector3tIdES4_S4_S4_bRS2_.exit.thread

.loopexit807:                                     ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i276
  %lpad.loopexit809 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

.loopexit.split-lp808:                            ; preds = %bb.bb
  %lpad.loopexit.split-lp810 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

_ZN6Assimp3IFC21IntersectSegmentPlaneERK10aiVector3tIdES4_S4_S4_bRS2_.exit.thread: ; preds = %bb.as, %bb.aq, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit, %bb.ar, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit290
  %.1193 = phi i1 [ %i.mw, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit290 ], [ %.0192913, %bb.ar ], [ %.0192913, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit ], [ %.0192913, %bb.aq ], [ %.0192913, %bb.as ]
  %exitcond.not = icmp eq i64 %i.hv, %i.gh
  br i1 %exitcond.not, label %.loopexit796, label %.preheader, !llvm.loop !135

.loopexit796:                                     ; preds = %_ZN6Assimp3IFC21IntersectSegmentPlaneERK10aiVector3tIdES4_S4_S4_bRS2_.exit.thread, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  invoke void @_ZN6Assimp3IFC12WritePolygonERSt6vectorI10aiVector3tIdESaIS3_EERNS0_8TempMeshE(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.bd unwind label %bb.bh

bb.bd:                                            ; preds = %.loopexit796
  call void @_ZN6Assimp3IFC13FilterPolygonERSt6vectorI10aiVector3tIdESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(24) %11)
  %i.mx = load ptr, ptr %11, align 8              ; 4 uses
  %i.my = load ptr, ptr %.sroa.gep712, align 8
  %i.mz = icmp eq ptr %i.mx, %i.my
  br i1 %i.mz, label %.critedge238, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !197)
  %i.na = load <3 x double>, ptr %i.mx, align 8, !noalias !197 ; 5 uses
  %i.nb = load double, ptr %i.mx, align 8, !noalias !197
  %i.nc = load <8 x double>, ptr %9, align 16, !noalias !197 ; 4 uses
  %i.nd = shufflevector <3 x double> %i.na, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ne = shufflevector <8 x double> %i.nc, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.nf = fmul <2 x double> %i.nd, %i.ne
  %i.ng = shufflevector <8 x double> %i.nc, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.nh = shufflevector <3 x double> %i.na, <3 x double> poison, <2 x i32> zeroinitializer
  %i.ni = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ng, <2 x double> %i.nh, <2 x double> %i.nf)
  %i.nj = shufflevector <8 x double> %i.nc, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.nk = shufflevector <3 x double> %i.na, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.nl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nj, <2 x double> %i.nk, <2 x double> %i.ni)
  %i.nm = shufflevector <8 x double> %i.nc, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.nn = fadd <2 x double> %i.nl, %i.nm
  store <2 x double> %i.nn, ptr %13, align 16, !alias.scope !197
  %i.no = load double, ptr %i.fm, align 16, !noalias !197
  %i.np = load double, ptr %i.fn, align 8, !noalias !197
  %i.nq = extractelement <3 x double> %i.na, i64 1
  %i.nr = fmul double %i.nq, %i.np
  %i.ns = call double @llvm.fmuladd.f64(double %i.no, double %i.nb, double %i.nr)
  %i.nt = load double, ptr %i.fo, align 16, !noalias !197
  %i.nu = extractelement <3 x double> %i.na, i64 2
  %i.nv = call double @llvm.fmuladd.f64(double %i.nt, double %i.nu, double %i.ns)
  %i.nw = load double, ptr %i.fp, align 8, !noalias !197
  %i.nx = fadd double %i.nw, %i.nv
  store double %i.nx, ptr %i.fq, align 16, !alias.scope !197
  %i.ny = invoke noundef zeroext i1 @_ZN6Assimp3IFC11PointInPolyERK10aiVector3tIdERKSt6vectorIS2_SaIS2_EE(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %bb.bf unwind label %.thread   ; 3 uses

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %i.nz = load ptr, ptr %.sroa.gep712, align 8    ; 2 uses
  %i.oa = load ptr, ptr %11, align 8              ; 3 uses
  %.not981 = icmp eq ptr %i.nz, %i.oa
  br i1 %.not981, label %._crit_edge929, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE5clearEv.exit.preheader

_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE5clearEv.exit.preheader: ; preds = %bb.bf
  %i.ob = ptrtoint ptr %i.nz to i64
  %i.oc = ptrtoint ptr %i.oa to i64
  %i.od = sub i64 %i.ob, %i.oc
  %i.oe = sdiv exact i64 %i.od, 24
  %i.of = zext i1 %i.ny to i8
  br label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE5clearEv.exit

._crit_edge929:                                   ; preds = %._crit_edge, %bb.bf
  %.sroa.0611.0.lcssa = phi ptr [ null, %bb.bf ], [ %.sroa.0611.1.lcssa, %._crit_edge ] ; 27 uses
  %.sroa.40.0.lcssa = phi ptr [ null, %bb.bf ], [ %.sroa.40.1.lcssa, %._crit_edge ] ; 4 uses
  %.sroa.72.0.lcssa = phi ptr [ null, %bb.bf ], [ %.sroa.72.1.lcssa, %._crit_edge ] ; 7 uses
  %i.og = ptrtoint ptr %.sroa.40.0.lcssa to i64
  %i.oh = ptrtoint ptr %.sroa.0611.0.lcssa to i64 ; 4 uses
  %i.oi = sub i64 %i.og, %i.oh
  %i.oj = sdiv exact i64 %i.oi, 40                ; 4 uses
  %i.ok = and i64 %i.oj, 1
  %.not206 = icmp eq i64 %i.ok, 0
  br i1 %.not206, label %bb.bu, label %bb.br

bb.bg:                                            ; preds = %.loopexit807, %.loopexit.split-lp808, %.loopexit802, %.loopexit.split-lp803, %.loopexit797, %.loopexit.split-lp798, %bb.ak, %bb.aj
  %.pn202.pn = phi { ptr, i32 } [ %i.hs, %bb.aj ], [ %lpad.loopexit.split-lp805, %.loopexit.split-lp803 ], [ %i.ht, %bb.ak ], [ %lpad.loopexit.split-lp800, %.loopexit.split-lp798 ], [ %lpad.loopexit799, %.loopexit797 ], [ %lpad.loopexit804, %.loopexit802 ], [ %lpad.loopexit809, %.loopexit807 ], [ %lpad.loopexit.split-lp810, %.loopexit.split-lp808 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %_ZNSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EED2Ev.exit402

bb.bh:                                            ; preds = %.loopexit796
  %i.ol = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EED2Ev.exit402

.thread:                                          ; preds = %bb.be
  %i.om = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %_ZNSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EED2Ev.exit402

_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE5clearEv.exit: ; preds = %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE5clearEv.exit.preheader, %._crit_edge
  %i.on = phi ptr [ %i.sf, %._crit_edge ], [ null, %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE5clearEv.exit.preheader ] ; 2 uses
  %i.oo = phi ptr [ %i.sg, %._crit_edge ], [ null, %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE5clearEv.exit.preheader ] ; 2 uses
  %i.op = phi i64 [ %i.sm, %._crit_edge ], [ %i.oe, %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE5clearEv.exit.preheader ]
  %i.oq = phi ptr [ %i.si, %._crit_edge ], [ %i.oa, %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE5clearEv.exit.preheader ] ; 2 uses
  %.0189928 = phi i8 [ %.lcssa820, %._crit_edge ], [ %i.of, %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE5clearEv.exit.preheader ] ; 3 uses
  %storemerge927 = phi i64 [ %i.pu, %._crit_edge ], [ 0, %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE5clearEv.exit.preheader ] ; 4 uses
  %.sroa.72.0926 = phi ptr [ %.sroa.72.1.lcssa, %._crit_edge ], [ null, %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE5clearEv.exit.preheader ] ; 3 uses
  %.sroa.40.0925 = phi ptr [ %.sroa.40.1.lcssa, %._crit_edge ], [ null, %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE5clearEv.exit.preheader ] ; 2 uses
  %.sroa.0611.0924 = phi ptr [ %.sroa.0611.1.lcssa, %._crit_edge ], [ null, %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE5clearEv.exit.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  %i.or = getelementptr inbounds nuw [24 x i8], ptr %i.oq, i64 %storemerge927 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !198)
  %i.os = load double, ptr %i.or, align 8, !noalias !198
  %i.ot = getelementptr inbounds nuw i8, ptr %i.or, i64 8
  %i.ou = load double, ptr %i.ot, align 8, !noalias !198
  %i.ov = getelementptr inbounds nuw i8, ptr %i.or, i64 16
  %i.ow = load double, ptr %i.ov, align 8, !noalias !198
  %i.ox = load <12 x double>, ptr %9, align 16, !noalias !198 ; 8 uses
  %i.oy = load double, ptr %i.fp, align 8, !noalias !198
  %i.oz = load double, ptr %i.fn, align 8, !noalias !198
  %i.pa = load double, ptr %i.fl, align 8, !noalias !198
  %i.pb = load double, ptr %i.fj, align 8, !noalias !198
  %i.pc = load <2 x double>, ptr %i.fh, align 8
  %i.pd = load <2 x double>, ptr %i.ff, align 8
  %i.pe = insertelement <3 x double> poison, double %i.ou, i64 0
  %i.pf = shufflevector <3 x double> %i.pe, <3 x double> poison, <3 x i32> zeroinitializer
  %i.pg = shufflevector <12 x double> %i.ox, <12 x double> poison, <3 x i32> <i32 9, i32 1, i32 5>
  %i.ph = fmul <3 x double> %i.pf, %i.pg
  %i.pi = shufflevector <12 x double> %i.ox, <12 x double> poison, <3 x i32> <i32 8, i32 0, i32 4>
  %i.pj = insertelement <3 x double> poison, double %i.os, i64 0
  %i.pk = shufflevector <3 x double> %i.pj, <3 x double> poison, <3 x i32> zeroinitializer
  %i.pl = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.pi, <3 x double> %i.pk, <3 x double> %i.ph)
  %i.pm = shufflevector <12 x double> %i.ox, <12 x double> poison, <3 x i32> <i32 10, i32 2, i32 6>
  %i.pn = insertelement <3 x double> poison, double %i.ow, i64 0
  %i.po = shufflevector <3 x double> %i.pn, <3 x double> poison, <3 x i32> zeroinitializer
  %i.pp = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.pm, <3 x double> %i.po, <3 x double> %i.pl)
  %i.pq = shufflevector <12 x double> %i.ox, <12 x double> poison, <3 x i32> <i32 11, i32 3, i32 7>
  %i.pr = fadd <3 x double> %i.pp, %i.pq          ; 5 uses
  %i.ps = shufflevector <3 x double> %i.pr, <3 x double> poison, <2 x i32> <i32 1, i32 2>
  store <2 x double> %i.ps, ptr %15, align 16, !alias.scope !198
  %i.pt = extractelement <3 x double> %i.pr, i64 0
  store double %i.pt, ptr %i.fr, align 16, !alias.scope !198
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  %i.pu = add nuw i64 %storemerge927, 1           ; 4 uses
  %i.pv = icmp eq i64 %i.pu, %i.op
  %i.pw = select i1 %i.pv, i64 0, i64 %i.pu
  %i.px = getelementptr inbounds nuw [24 x i8], ptr %i.oq, i64 %i.pw ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !199)
  %22 = load <3 x double>, ptr %i.px, align 8, !noalias !199 ; 5 uses
  %i.py = load double, ptr %i.px, align 8, !noalias !199
  %i.pz = insertelement <2 x double> %i.pd, double %i.pb, i64 1
  %23 = shufflevector <3 x double> %22, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.qa = fmul <2 x double> %i.pz, %23
  %i.qb = shufflevector <12 x double> %i.ox, <12 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.qc = shufflevector <3 x double> %22, <3 x double> poison, <2 x i32> zeroinitializer
  %i.qd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qb, <2 x double> %i.qc, <2 x double> %i.qa)
  %i.qe = shufflevector <12 x double> %i.ox, <12 x double> poison, <2 x i32> <i32 2, i32 6>
  %24 = shufflevector <3 x double> %22, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.qf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qe, <2 x double> %24, <2 x double> %i.qd)
  %i.qg = insertelement <2 x double> %i.pc, double %i.pa, i64 1
  %i.qh = fadd <2 x double> %i.qg, %i.qf
  store <2 x double> %i.qh, ptr %16, align 16, !alias.scope !199
  %25 = extractelement <3 x double> %22, i64 1
  %i.qi = fmul double %i.oz, %25
  %i.qj = extractelement <12 x double> %i.ox, i64 8
  %i.qk = call double @llvm.fmuladd.f64(double %i.qj, double %i.py, double %i.qi)
  %26 = extractelement <12 x double> %i.ox, i64 10
  %i.ql = extractelement <3 x double> %22, i64 2
  %i.qm = call double @llvm.fmuladd.f64(double %26, double %i.ql, double %i.qk)
  %i.qn = fadd double %i.oy, %i.qm
  store double %i.qn, ptr %i.fs, align 16, !alias.scope !199
  %.not.i.i = icmp eq ptr %i.on, %i.oo
  %spec.store.select = select i1 %.not.i.i, ptr %i.on, ptr %i.oo
  store ptr %spec.store.select, ptr %i.ft, align 8
  %i.qo = trunc i8 %.0189928 to i1
  %i.qp = invoke noundef zeroext i1 @_ZN6Assimp3IFC25IntersectsBoundaryProfileERK10aiVector3tIdES4_RKSt6vectorIS2_SaIS2_EEbRS5_ISt4pairImS2_ESaISB_EEb(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %i.bt, i1 noundef zeroext %i.qo, ptr noundef nonnull align 8 dereferenceable(24) %14, i1 noundef zeroext false)
          to label %bb.bi unwind label %bb.bl     ; 0 uses

bb.bi:                                            ; preds = %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE5clearEv.exit
  %i.qq = load ptr, ptr %i.ft, align 8            ; 3 uses
  %i.qr = load ptr, ptr %14, align 8              ; 6 uses
  %i.qs = ptrtoint ptr %i.qq to i64
  %i.qt = ptrtoint ptr %i.qr to i64
  %i.qu = sub i64 %i.qs, %i.qt
  %i.qv = ashr exact i64 %i.qu, 5                 ; 2 uses
  %i.qw = icmp ugt i64 %i.qv, 1
  br i1 %i.qw, label %.preheader791, label %.loopexit792

.preheader791:                                    ; preds = %bb.bi
  %i.qx = add nsw i64 %i.qv, -1                   ; 2 uses
  %.not982 = icmp eq i64 %i.qx, 0
  br i1 %.not982, label %.loopexit792, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.preheader791
  %i.qy = shufflevector <3 x double> %i.pr, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.qz = shufflevector <3 x double> %i.pr, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.ra = shufflevector <3 x double> %i.pr, <3 x double> poison, <2 x i32> zeroinitializer
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %bb.bk
  %.0185916.us = phi i64 [ %.mux, %bb.bk ], [ 0, %.preheader.us.preheader ] ; 2 uses
  %.1187915.us = phi i1 [ %.2188.us.mux, %bb.bk ], [ false, %.preheader.us.preheader ]
  %i.rb = add nuw i64 %.0185916.us, 1             ; 3 uses
  %i.rc = getelementptr inbounds nuw [32 x i8], ptr %i.qr, i64 %i.rb ; 4 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 8 ; 3 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.rc, i64 24
  %i.rf = load double, ptr %i.re, align 8, !noalias !200
  %i.rg = getelementptr inbounds nuw [32 x i8], ptr %i.qr, i64 %.0185916.us ; 4 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 8 ; 3 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rg, i64 24
  %i.rj = load double, ptr %i.ri, align 8, !noalias !201
  %i.rk = load <2 x double>, ptr %i.rd, align 8, !noalias !200 ; 2 uses
  %i.rl = load <2 x double>, ptr %i.rh, align 8, !noalias !201 ; 2 uses
  %i.rm = shufflevector <2 x double> %i.rk, <2 x double> %i.rl, <2 x i32> <i32 0, i32 2>
  %i.rn = fsub <2 x double> %i.rm, %i.qy          ; 2 uses
  %i.ro = shufflevector <2 x double> %i.rk, <2 x double> %i.rl, <2 x i32> <i32 1, i32 3>
  %i.rp = fsub <2 x double> %i.ro, %i.qz          ; 2 uses
  %i.rq = insertelement <2 x double> poison, double %i.rf, i64 0
  %i.rr = insertelement <2 x double> %i.rq, double %i.rj, i64 1
  %i.rs = fsub <2 x double> %i.rr, %i.ra          ; 2 uses
  %i.rt = fmul <2 x double> %i.rp, %i.rp
  %i.ru = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rn, <2 x double> %i.rn, <2 x double> %i.rt)
  %i.rv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rs, <2 x double> %i.rs, <2 x double> %i.ru) ; 2 uses
  %i.rw = extractelement <2 x double> %i.rv, i64 0
  %i.rx = extractelement <2 x double> %i.rv, i64 1
  %i.ry = fcmp olt double %i.rw, %i.rx
  br i1 %i.ry, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %.preheader.us
  %i.rz = load i64, ptr %i.rc, align 8
  %i.sa = load i64, ptr %i.rg, align 8
  store i64 %i.sa, ptr %i.rc, align 8
  store i64 %i.rz, ptr %i.rg, align 8
  %.sroa.0.0.copyload = load <3 x double>, ptr %i.rd, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.rd, ptr noundef nonnull align 8 dereferenceable(24) %i.rh, i64 24, i1 false)
  store <3 x double> %.sroa.0.0.copyload, ptr %i.rh, align 8
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %.preheader.us
  %.2188.us = phi i1 [ true, %bb.bj ], [ %.1187915.us, %.preheader.us ] ; 2 uses
  %exitcond1065.not = icmp ne i64 %i.rb, %i.qx    ; 3 uses
  %brmerge = select i1 %exitcond1065.not, i1 true, i1 %.2188.us
  %.mux = select i1 %exitcond1065.not, i64 %i.rb, i64 0
  %.2188.us.mux = select i1 %exitcond1065.not, i1 %.2188.us, i1 false
  br i1 %brmerge, label %.preheader.us, label %.loopexit792, !llvm.loop !146

bb.bl:                                            ; preds = %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE5clearEv.exit
  %i.sb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

.loopexit792:                                     ; preds = %bb.bk, %.preheader791, %bb.bi
  %.not983 = icmp eq ptr %i.qq, %i.qr
  br i1 %.not983, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EE12emplace_backIJRmS2_S7_EEERS3_DpOT_.exit
  %i.sc = trunc i64 %i.uv to i8
  %i.sd = lshr i8 %i.sc, 5
  %i.se = xor i8 %i.sd, %.0189928
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.loopexit792
  %i.sf = phi ptr [ %i.qq, %.loopexit792 ], [ %i.ur, %._crit_edge.loopexit ]
  %i.sg = phi ptr [ %i.qr, %.loopexit792 ], [ %i.us, %._crit_edge.loopexit ]
  %.sroa.0611.1.lcssa = phi ptr [ %.sroa.0611.0924, %.loopexit792 ], [ %.sroa.0611.5, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.40.1.lcssa = phi ptr [ %.sroa.40.0925, %.loopexit792 ], [ %.sroa.40.7, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.72.1.lcssa = phi ptr [ %.sroa.72.0926, %.loopexit792 ], [ %.sroa.72.5, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa820 = phi i8 [ %.0189928, %.loopexit792 ], [ %i.se, %._crit_edge.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  %i.sh = load ptr, ptr %.sroa.gep712, align 8
  %i.si = load ptr, ptr %11, align 8              ; 2 uses
  %i.sj = ptrtoint ptr %i.sh to i64
  %i.sk = ptrtoint ptr %i.si to i64
  %i.sl = sub i64 %i.sj, %i.sk
  %i.sm = sdiv exact i64 %i.sl, 24                ; 2 uses
  %i.sn = icmp ult i64 %i.pu, %i.sm
  br i1 %i.sn, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE5clearEv.exit, label %._crit_edge929, !llvm.loop !147

.lr.ph:                                           ; preds = %.loopexit792, %_ZNSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EE12emplace_backIJRmS2_S7_EEERS3_DpOT_.exit
  %i.so = phi ptr [ %i.us, %_ZNSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EE12emplace_backIJRmS2_S7_EEERS3_DpOT_.exit ], [ %i.qr, %.loopexit792 ]
  %.0184920 = phi i64 [ %i.uq, %_ZNSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EE12emplace_backIJRmS2_S7_EEERS3_DpOT_.exit ], [ 0, %.loopexit792 ] ; 2 uses
  %.sroa.72.1919 = phi ptr [ %.sroa.72.5, %_ZNSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EE12emplace_backIJRmS2_S7_EEERS3_DpOT_.exit ], [ %.sroa.72.0926, %.loopexit792 ] ; 7 uses
  %.sroa.40.1918 = phi ptr [ %.sroa.40.7, %_ZNSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EE12emplace_backIJRmS2_S7_EEERS3_DpOT_.exit ], [ %.sroa.40.0925, %.loopexit792 ] ; 6 uses
  %.sroa.0611.1917 = phi ptr [ %.sroa.0611.5, %_ZNSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EE12emplace_backIJRmS2_S7_EEERS3_DpOT_.exit ], [ %.sroa.0611.0924, %.loopexit792 ] ; 8 uses
  %i.sp = getelementptr inbounds nuw [32 x i8], ptr %i.so, i64 %.0184920 ; 3 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 8 ; 2 uses
  %i.sr = load <3 x double>, ptr %i.sq, align 8, !noalias !202 ; 5 uses
  %i.ss = load double, ptr %i.sq, align 8, !noalias !202
  %i.st = load <8 x double>, ptr %8, align 8, !noalias !202 ; 4 uses
  %i.su = shufflevector <3 x double> %i.sr, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.sv = shufflevector <8 x double> %i.st, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.sw = fmul <2 x double> %i.su, %i.sv
  %i.sx = shufflevector <8 x double> %i.st, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.sy = shufflevector <3 x double> %i.sr, <3 x double> poison, <2 x i32> zeroinitializer
  %i.sz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sx, <2 x double> %i.sy, <2 x double> %i.sw)
  %i.ta = shufflevector <8 x double> %i.st, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.tb = shufflevector <3 x double> %i.sr, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.tc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ta, <2 x double> %i.tb, <2 x double> %i.sz)
  %i.td = shufflevector <8 x double> %i.st, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.te = fadd <2 x double> %i.tc, %i.td          ; 2 uses
  %i.tf = load double, ptr %i.fu, align 8, !noalias !202
  %i.tg = load double, ptr %i.fv, align 8, !noalias !202
  %i.th = extractelement <3 x double> %i.sr, i64 1
  %i.ti = fmul double %i.th, %i.tg
  %i.tj = call double @llvm.fmuladd.f64(double %i.tf, double %i.ss, double %i.ti)
  %i.tk = load double, ptr %i.cl, align 8, !noalias !202
  %i.tl = extractelement <3 x double> %i.sr, i64 2
  %i.tm = call double @llvm.fmuladd.f64(double %i.tk, double %i.tl, double %i.tj)
  %i.tn = load double, ptr %i.cm, align 8, !noalias !202
  %i.to = fadd double %i.tn, %i.tm                ; 2 uses
  %.not.i291 = icmp eq ptr %.sroa.40.1918, %.sroa.72.1919
  br i1 %.not.i291, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph
  %i.tp = load i64, ptr %i.sp, align 8
  store i64 %i.tp, ptr %.sroa.40.1918, align 8
  %i.tq = getelementptr inbounds nuw i8, ptr %.sroa.40.1918, i64 8
  store <2 x double> %i.te, ptr %i.tq, align 8
  %.sroa.7597.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.40.1918, i64 24
  store double %i.to, ptr %.sroa.7597.0..sroa_idx, align 8
  %i.tr = getelementptr inbounds nuw i8, ptr %.sroa.40.1918, i64 32
  store i64 %storemerge927, ptr %i.tr, align 8
  br label %_ZNSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EE12emplace_backIJRmS2_S7_EEERS3_DpOT_.exit

bb.bn:                                            ; preds = %.lr.ph
  %i.ts = ptrtoint ptr %.sroa.72.1919 to i64
  %i.tt = ptrtoint ptr %.sroa.0611.1917 to i64
  %i.tu = sub i64 %i.ts, %i.tt                    ; 4 uses
  %i.tv = icmp eq i64 %i.tu, 9223372036854775800
  br i1 %i.tv, label %bb.bo, label %_ZNKSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EE12_M_check_lenEmPKc.exit.i

bb.bo:                                            ; preds = %bb.bn
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #22
          to label %.noexc428 unwind label %.loopexit.split-lp787

.noexc428:                                        ; preds = %bb.bo
  unreachable

_ZNKSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.bn
  %i.tw = sdiv exact i64 %i.tu, 40                ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.tw, i64 1)
  %i.tx = add nsw i64 %.sroa.speculated.i.i, %i.tw ; 2 uses
  %i.ty = icmp ult i64 %i.tx, %i.tw
  %i.tz = call i64 @llvm.umin.i64(i64 %i.tx, i64 230584300921369395)
  %i.ua = select i1 %i.ty, i64 230584300921369395, i64 %i.tz ; 3 uses
  %.not.i.i422 = icmp ne i64 %i.ua, 0
  call void @llvm.assume(i1 %.not.i.i422)
  %i.ub = mul nuw nsw i64 %i.ua, 40
  %i.uc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ub) #23
          to label %.noexc429 unwind label %.loopexit786 ; 5 uses

.noexc429:                                        ; preds = %_ZNKSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EE12_M_check_lenEmPKc.exit.i
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 %i.tu ; 4 uses
  %i.ue = load i64, ptr %i.sp, align 8
  store i64 %i.ue, ptr %i.ud, align 8
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ud, i64 8
  store <2 x double> %i.te, ptr %i.uf, align 8
  %.sroa.7597.0..sroa_idx598 = getelementptr inbounds nuw i8, ptr %i.ud, i64 24
  store double %i.to, ptr %.sroa.7597.0..sroa_idx598, align 8
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ud, i64 32
  store i64 %storemerge927, ptr %i.ug, align 8
  %.not10.i.i.i.i423 = icmp eq ptr %.sroa.0611.1917, %.sroa.72.1919
  br i1 %.not10.i.i.i.i423, label %_ZNSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit24.i, label %.lr.ph.i.i.i.i424

.lr.ph.i.i.i.i424:                                ; preds = %.noexc429, %.lr.ph.i.i.i.i424
  %.012.i.i.i.i425 = phi ptr [ %i.uo, %.lr.ph.i.i.i.i424 ], [ %i.uc, %.noexc429 ] ; 4 uses
  %.0911.i.i.i.i426 = phi ptr [ %i.un, %.lr.ph.i.i.i.i424 ], [ %.sroa.0611.1917, %.noexc429 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !203)
end_hunk_2
