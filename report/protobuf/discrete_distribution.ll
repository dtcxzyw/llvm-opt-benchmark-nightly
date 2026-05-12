inline.NumInlined: 195
inline.NumDeleted: 96
begin_hunk_0_@_ZN4absl12lts_2025051215random_internal24InitDiscreteDistributionEPSt6vectorIdSaIdEE:bb.a
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !7      ; 9 uses
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !7    ; 7 uses
  %i.e = ptrtoint ptr %i.d to i64
  %.not5.i = icmp eq ptr %i.a, %i.d               ; 2 uses
  br i1 %.not5.i, label %.loopexit165, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051215random_internal24InitDiscreteDistributionEPSt6vectorIdSaIdEE:bb.a
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !21
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.aa
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !22
  br label %_ZNSt6vectorISt4pairIdmESaIS1_EE7reserveEm.exit

_ZNSt6vectorISt4pairIdmESaIS1_EE7reserveEm.exit:  ; preds = %_ZNSt12_Vector_baseISt4pairIdmESaIS1_EE13_M_deallocateEPS1_m.exit.i, %bb.c
  br i1 %.not5.i, label %_ZNSt6vectorImSaImEED2Ev.exit71, label %.lr.ph252

.lr.ph252:                                        ; preds = %_ZNSt6vectorISt4pairIdmESaIS1_EE7reserveEm.exit
  %i.ah = uitofp nneg i64 %i.aa to double
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051215random_internal24InitDiscreteDistributionEPSt6vectorIdSaIdEE:bb.a
  %.sroa.0111.0247 = phi ptr [ null, %.lr.ph252 ], [ %.sroa.0111.1, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 13 uses
  %.sroa.12.0246 = phi ptr [ null, %.lr.ph252 ], [ %.sroa.12.1, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 8 uses
  %.sroa.23.0245 = phi ptr [ null, %.lr.ph252 ], [ %.sroa.23.1, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 8 uses
  %.sroa.0108.0244 = phi ptr [ %i.a, %.lr.ph252 ], [ %i.cr, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 2 uses
  %i.am = load double, ptr %.sroa.0108.0244, align 8, !tbaa !10
  %i.an = fmul double %i.am, %i.ah                ; 3 uses
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !21 ; 7 uses
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2025051215random_internal24InitDiscreteDistributionEPSt6vectorIdSaIdEE:bb.a
  %.sroa.0125.1 = phi ptr [ %.sroa.0125.0250, %bb.k ], [ %.sroa.0125.0250, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.cm, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i50 ], [ %.sroa.0125.0250, %bb.q ] ; 4 uses
  %.133 = add i64 %.032251, 1
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0108.0244, i64 8 ; 2 uses
  %.not145 = icmp eq ptr %i.cr, %i.d
  br i1 %.not145, label %.preheader148, label %bb.e

.critedge.preheader:                              ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit, %.preheader148
end_hunk_3
