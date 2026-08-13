inline.NumInlined: 881
inline.NumDeleted: 329
loop-unroll.NumCompletelyUnrolled: 77
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 79
begin_hunk_0_@_ZN21MapblockMeshGenerator15drawNodeboxNodeEv:.preheader377
  %i.ob = add nsw i64 %.sroa.speculated.i.i.i.i163.4, %i.oa ; 2 uses
  %i.oc = icmp ult i64 %i.ob, %i.oa
  %i.od = call i64 @llvm.umin.i64(i64 %i.ob, i64 2305843009213693951)
  %i.oe = select i1 %i.oc, i64 2305843009213693951, i64 %i.od ; 3 uses
  %.not.i.i.i.i164.4 = icmp ne i64 %i.oe, 0
  call void @llvm.assume(i1 %.not.i.i.i.i164.4)
  %i.of = shl nuw nsw i64 %i.oe, 2
  %i.og = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.of) #28
          to label %.noexc167.4 unwind label %.loopexit366 ; 4 uses

.noexc167.4:                                      ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i.4
  %i.oh = getelementptr inbounds i8, ptr %i.og, i64 %i.ny ; 2 uses
  store float 5.000000e+00, ptr %i.oh, align 4, !tbaa !44
  %i.oi = icmp sgt i64 %i.ny, 0
  br i1 %i.oi, label %bb.ao, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i.4

bb.ao:                                            ; preds = %.noexc167.4
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.og, ptr nonnull align 4 %.sroa.0237.6.3, i64 %i.ny, i1 false)
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i.4

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i.4: ; preds = %bb.ao, %.noexc167.4
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0237.6.3, i64 noundef %i.ny) #29
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %i.oe
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit.4

_ZNSt6vectorIfSaIfEE9push_backEOf.exit.4:         ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i.4, %bb.am
  %.sroa.0237.6.4 = phi ptr [ %i.og, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i.4 ], [ %.sroa.0237.6.3, %bb.am ] ; 6 uses
  %.pn342.4 = phi ptr [ %i.oh, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i.4 ], [ %.sroa.18.4.3, %bb.am ]
  %.sroa.35.6.4 = phi ptr [ %i.oj, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i.4 ], [ %.sroa.35.6.3, %bb.am ] ; 5 uses
  %.sroa.18.4.4 = getelementptr inbounds nuw i8, ptr %.pn342.4, i64 4 ; 3 uses
  %.not.i.i162.5 = icmp eq ptr %.sroa.18.4.4, %.sroa.35.6.4
  br i1 %.not.i.i162.5, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit.4
  store float 1.500000e+01, ptr %.sroa.18.4.4, align 4, !tbaa !44
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit.5

bb.aq:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit.4
  %i.ok = ptrtoint ptr %.sroa.35.6.4 to i64
  %i.ol = ptrtoint ptr %.sroa.0237.6.4 to i64
  %i.om = sub i64 %i.ok, %i.ol                    ; 6 uses
  %i.on = icmp eq i64 %i.om, 9223372036854775804
  br i1 %i.on, label %bb.ac, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i.5

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i.5: ; preds = %bb.aq
  %i.oo = ashr exact i64 %i.om, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i163.5 = call i64 @llvm.umax.i64(i64 %i.oo, i64 1)
  %i.op = add nsw i64 %.sroa.speculated.i.i.i.i163.5, %i.oo ; 2 uses
  %i.oq = icmp ult i64 %i.op, %i.oo
  %i.or = call i64 @llvm.umin.i64(i64 %i.op, i64 2305843009213693951)
  %i.os = select i1 %i.oq, i64 2305843009213693951, i64 %i.or ; 3 uses
  %.not.i.i.i.i164.5 = icmp ne i64 %i.os, 0
  call void @llvm.assume(i1 %.not.i.i.i.i164.5)
  %i.ot = shl nuw nsw i64 %i.os, 2
  %i.ou = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ot) #28
          to label %.noexc167.5 unwind label %.loopexit366 ; 4 uses

.noexc167.5:                                      ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i.5
  %i.ov = getelementptr inbounds i8, ptr %i.ou, i64 %i.om ; 2 uses
  store float 1.500000e+01, ptr %i.ov, align 4, !tbaa !44
  %i.ow = icmp sgt i64 %i.om, 0
  br i1 %i.ow, label %bb.ar, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i.5

bb.ar:                                            ; preds = %.noexc167.5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ou, ptr nonnull align 4 %.sroa.0237.6.4, i64 %i.om, i1 false)
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i.5

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i.5: ; preds = %bb.ar, %.noexc167.5
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0237.6.4, i64 noundef %i.om) #29
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %i.os
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit.5

_ZNSt6vectorIfSaIfEE9push_backEOf.exit.5:         ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i.5, %bb.ap
  %.sroa.0237.6.5 = phi ptr [ %i.ou, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i.5 ], [ %.sroa.0237.6.4, %bb.ap ] ; 6 uses
  %.pn342.5 = phi ptr [ %i.ov, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i.5 ], [ %.sroa.18.4.4, %bb.ap ]
  %.sroa.35.6.5 = phi ptr [ %i.ox, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i.5 ], [ %.sroa.35.6.4, %bb.ap ] ; 5 uses
  %.sroa.18.4.5 = getelementptr inbounds nuw i8, ptr %.pn342.5, i64 4 ; 3 uses
  %.not.i.i162.6 = icmp eq ptr %.sroa.18.4.5, %.sroa.35.6.5
  br i1 %.not.i.i162.6, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit.5
  store float 2.500000e+01, ptr %.sroa.18.4.5, align 4, !tbaa !44
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit.6

bb.at:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit.5
  %i.oy = ptrtoint ptr %.sroa.35.6.5 to i64
  %i.oz = ptrtoint ptr %.sroa.0237.6.5 to i64
  %i.pa = sub i64 %i.oy, %i.oz                    ; 6 uses
  %i.pb = icmp eq i64 %i.pa, 9223372036854775804
  br i1 %i.pb, label %bb.ac, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i.6

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i.6: ; preds = %bb.at
  %i.pc = ashr exact i64 %i.pa, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i163.6 = call i64 @llvm.umax.i64(i64 %i.pc, i64 1)
  %i.pd = add nsw i64 %.sroa.speculated.i.i.i.i163.6, %i.pc ; 2 uses
  %i.pe = icmp ult i64 %i.pd, %i.pc
  %i.pf = call i64 @llvm.umin.i64(i64 %i.pd, i64 2305843009213693951)
  %i.pg = select i1 %i.pe, i64 2305843009213693951, i64 %i.pf ; 3 uses
  %.not.i.i.i.i164.6 = icmp ne i64 %i.pg, 0
  call void @llvm.assume(i1 %.not.i.i.i.i164.6)
  %i.ph = shl nuw nsw i64 %i.pg, 2
  %i.pi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ph) #28
          to label %.noexc167.6 unwind label %.loopexit366 ; 4 uses

.noexc167.6:                                      ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i.6
  %i.pj = getelementptr inbounds i8, ptr %i.pi, i64 %i.pa ; 2 uses
  store float 2.500000e+01, ptr %i.pj, align 4, !tbaa !44
  %i.pk = icmp sgt i64 %i.pa, 0
  br i1 %i.pk, label %bb.au, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i.6

bb.au:                                            ; preds = %.noexc167.6
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.pi, ptr nonnull align 4 %.sroa.0237.6.5, i64 %i.pa, i1 false)
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i.6

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i.6: ; preds = %bb.au, %.noexc167.6
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0237.6.5, i64 noundef %i.pa) #29
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.pi, i64 %i.pg
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit.6

_ZNSt6vectorIfSaIfEE9push_backEOf.exit.6:         ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i.6, %bb.as
  %.sroa.0237.6.6 = phi ptr [ %i.pi, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i.6 ], [ %.sroa.0237.6.5, %bb.as ] ; 6 uses
  %.pn342.6 = phi ptr [ %i.pj, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i.6 ], [ %.sroa.18.4.5, %bb.as ]
  %.sroa.35.6.6 = phi ptr [ %i.pl, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i.6 ], [ %.sroa.35.6.5, %bb.as ] ; 5 uses
  %.sroa.18.4.6 = getelementptr inbounds nuw i8, ptr %.pn342.6, i64 4 ; 3 uses
  %.not.i.i162.7 = icmp eq ptr %.sroa.18.4.6, %.sroa.35.6.6
  br i1 %.not.i.i162.7, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit.6
  store float 3.500000e+01, ptr %.sroa.18.4.6, align 4, !tbaa !44
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit.7

bb.aw:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit.6
  %i.pm = ptrtoint ptr %.sroa.35.6.6 to i64
  %i.pn = ptrtoint ptr %.sroa.0237.6.6 to i64
  %i.po = sub i64 %i.pm, %i.pn                    ; 6 uses
  %i.pp = icmp eq i64 %i.po, 9223372036854775804
  br i1 %i.pp, label %bb.ac, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i.7

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i.7: ; preds = %bb.aw
  %i.pq = ashr exact i64 %i.po, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i163.7 = call i64 @llvm.umax.i64(i64 %i.pq, i64 1)
  %i.pr = add nsw i64 %.sroa.speculated.i.i.i.i163.7, %i.pq ; 2 uses
  %i.ps = icmp ult i64 %i.pr, %i.pq
  %i.pt = call i64 @llvm.umin.i64(i64 %i.pr, i64 2305843009213693951)
  %i.pu = select i1 %i.ps, i64 2305843009213693951, i64 %i.pt ; 3 uses
  %.not.i.i.i.i164.7 = icmp ne i64 %i.pu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i164.7)
  %i.pv = shl nuw nsw i64 %i.pu, 2
  %i.pw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pv) #28
          to label %.noexc167.7 unwind label %.loopexit366 ; 4 uses

.noexc167.7:                                      ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i.7
  %i.px = getelementptr inbounds i8, ptr %i.pw, i64 %i.po ; 2 uses
  store float 3.500000e+01, ptr %i.px, align 4, !tbaa !44
  %i.py = icmp sgt i64 %i.po, 0
  br i1 %i.py, label %bb.ax, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i.7

bb.ax:                                            ; preds = %.noexc167.7
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.pw, ptr nonnull align 4 %.sroa.0237.6.6, i64 %i.po, i1 false)
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i.7

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i.7: ; preds = %bb.ax, %.noexc167.7
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0237.6.6, i64 noundef %i.po) #29
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %i.pw, i64 %i.pu
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit.7

_ZNSt6vectorIfSaIfEE9push_backEOf.exit.7:         ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i.7, %bb.av
  %.sroa.0237.6.7 = phi ptr [ %i.pw, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i.7 ], [ %.sroa.0237.6.6, %bb.av ]
  %.pn342.7 = phi ptr [ %i.px, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i.7 ], [ %.sroa.18.4.6, %bb.av ]
  %.sroa.35.6.7 = phi ptr [ %i.pz, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i.7 ], [ %.sroa.35.6.6, %bb.av ]
  %.sroa.18.4.7 = getelementptr inbounds nuw i8, ptr %.pn342.7, i64 4
  %i.qa = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.qb = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.qc = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br label %bb.ba

.loopexit366:                                     ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i.7, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i.6, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i.5, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i.4, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i.3, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i.2, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i.1, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i
  %.sroa.35.0548.lcssa696 = phi ptr [ null, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i ], [ %.sroa.35.6, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i.1 ], [ %.sroa.35.6.1, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i.2 ], [ %.sroa.35.6.2, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i.3 ], [ %.sroa.35.6.3, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i.4 ], [ %.sroa.35.6.4, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i.5 ], [ %.sroa.35.6.5, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i.6 ], [ %.sroa.35.6.6, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i.7 ]
  %.sroa.0237.0546.lcssa694 = phi ptr [ null, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i ], [ %.sroa.0237.6, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i.1 ], [ %.sroa.0237.6.1, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i.2 ], [ %.sroa.0237.6.2, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i.3 ], [ %.sroa.0237.6.3, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i.4 ], [ %.sroa.0237.6.4, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i.5 ], [ %.sroa.0237.6.5, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i.6 ], [ %.sroa.0237.6.6, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i.7 ]
  %lpad.loopexit368 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

.thread768:                                       ; preds = %bb.ac
  %lpad.loopexit.split-lp369 = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.ay:                                            ; preds = %._crit_edge573
  %.not.i.i.i = icmp eq ptr %.sroa.0237.2.lcssa765, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.qd = ptrtoint ptr %.sroa.35.2.lcssa767 to i64
  %i.qe = ptrtoint ptr %.sroa.0237.2.lcssa765 to i64
  %i.qf = sub i64 %i.qd, %i.qe
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0237.2.lcssa765, i64 noundef %i.qf) #29
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.ba:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit.7, %._crit_edge573
  %indvars.iv703 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit.7 ], [ %indvars.iv.next704, %._crit_edge573 ] ; 4 uses
  %.sroa.35.1584 = phi ptr [ %.sroa.35.6.7, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit.7 ], [ %.sroa.35.2.lcssa767, %._crit_edge573 ] ; 6 uses
  %.sroa.18.1583 = phi ptr [ %.sroa.18.4.7, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit.7 ], [ %.sroa.18.2.lcssa766, %._crit_edge573 ] ; 6 uses
  %.sroa.0237.1582 = phi ptr [ %.sroa.0237.6.7, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit.7 ], [ %.sroa.0237.2.lcssa765, %._crit_edge573 ] ; 10 uses
  %.sroa.0265.1581 = phi ptr [ %.sroa.0265.0.lcssa, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit.7 ], [ %.sroa.0265.2.lcssa, %._crit_edge573 ] ; 7 uses
  %.sroa.15.1580 = phi ptr [ %.sroa.15.0.lcssa, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit.7 ], [ %.sroa.15.2.lcssa, %._crit_edge573 ] ; 4 uses
  %.sroa.25.1579 = phi ptr [ %.sroa.25.0.lcssa, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit.7 ], [ %.sroa.25.2.lcssa, %._crit_edge573 ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store i32 1, ptr %6, align 4, !tbaa !115
  store i32 0, ptr %i.qa, align 4, !tbaa !115
  store i32 2, ptr %i.qb, align 4, !tbaa !115
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv703
  %i.qh = load i32, ptr %i.qg, align 4, !tbaa !115
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.qi = shl nsw i32 %i.qh, 1                    ; 2 uses
  %i.qj = shl nuw i32 1, %i.qi
  %i.qk = shl nuw i32 2, %i.qi
  %i.ql = ptrtoint ptr %.sroa.18.1583 to i64      ; 2 uses
  %i.qm = ptrtoint ptr %.sroa.0237.1582 to i64    ; 2 uses
  %i.qn = sub i64 %i.ql, %i.qm                    ; 9 uses
  %i.qo = ashr exact i64 %i.qn, 2                 ; 5 uses
  %i.qp = icmp ult i64 %i.qo, 8
  br i1 %i.qp, label %bb.bb, label %bb.be

bb.bb:                                            ; preds = %bb.ba
  %i.qq = sub nuw nsw i64 8, %i.qo                ; 3 uses
  %i.qr = ptrtoint ptr %.sroa.35.1584 to i64      ; 2 uses
  %i.qs = sub i64 %i.qr, %i.ql
  %i.qt = ashr exact i64 %i.qs, 2                 ; 2 uses
  %i.qu = xor i64 %i.qo, 2305843009213693951
  %i.qv = icmp ule i64 %i.qt, %i.qu
  call void @llvm.assume(i1 %i.qv)
  %.not28.i = icmp ult i64 %i.qt, %i.qq
  br i1 %.not28.i, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  store float 0.000000e+00, ptr %.sroa.18.1583, align 4, !tbaa !44
  %i.qw = getelementptr i8, ptr %.sroa.18.1583, i64 4 ; 3 uses
  %i.qx = icmp eq i64 %i.qn, 28
  br i1 %i.qx, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i: ; preds = %bb.bc
  %.idx.i.i.i.i.i.i = sub i64 28, %i.qn           ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.qw, i8 0, i64 %.idx.i.i.i.i.i.i, i1 false), !tbaa !44
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qw, i64 %.idx.i.i.i.i.i.i
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.bb
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.qo, i64 %i.qq)
  %i.qz = add nuw nsw i64 %.sroa.speculated.i.i, %i.qo ; 2 uses
  %i.ra = shl nuw nsw i64 %i.qz, 2
  %i.rb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ra) #28
          to label %.noexc221 unwind label %bb.bg ; 4 uses

.noexc221:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 %i.qn ; 3 uses
  store float 0.000000e+00, ptr %i.rc, align 4, !tbaa !44
  %i.rd = icmp eq i64 %i.qn, 28
  br i1 %i.rd, label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33.i.thread, label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33.i: ; preds = %.noexc221
  %i.re = getelementptr i8, ptr %i.rc, i64 4
  %.idx.i.i.i.i.i31.i = sub i64 28, %i.qn
  call void @llvm.memset.p0.i64(ptr align 4 %i.re, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !44
  %i.rf = icmp sgt i64 %i.qn, 0
  br i1 %i.rf, label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33.i.thread, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i219

_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33.i.thread: ; preds = %.noexc221, %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.rb, ptr align 4 %.sroa.0237.1582, i64 %i.qn, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i219

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i219: ; preds = %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33.i.thread, %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33.i
  %.not.i35.i = icmp eq ptr %.sroa.0237.1582, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36.i, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i219
  %i.rg = sub i64 %i.qr, %i.qm
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0237.1582, i64 noundef %i.rg) #29
  br label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36.i

_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36.i: ; preds = %bb.bd, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i219
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %i.rc, i64 %i.qq
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %i.rb, i64 %i.qz
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.be:                                            ; preds = %bb.ba
  %.not338 = icmp eq i64 %i.qn, 32
  br i1 %.not338, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.rj = getelementptr inbounds nuw i8, ptr %.sroa.0237.1582, i64 32 ; 2 uses
  %.not.i.i168 = icmp eq ptr %.sroa.18.1583, %i.rj
  %spec.select334 = select i1 %.not.i.i168, ptr %.sroa.18.1583, ptr %i.rj
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

_ZNSt6vectorIfSaIfEE6resizeEm.exit:               ; preds = %bb.bf, %bb.bc, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36.i, %bb.be
  %.sroa.0237.7 = phi ptr [ %.sroa.0237.1582, %bb.be ], [ %.sroa.0237.1582, %bb.bf ], [ %.sroa.0237.1582, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %.sroa.0237.1582, %bb.bc ], [ %i.rb, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36.i ] ; 2 uses
  %.sroa.18.5 = phi ptr [ %.sroa.18.1583, %bb.be ], [ %spec.select334, %bb.bf ], [ %i.qy, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.qw, %bb.bc ], [ %i.rh, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36.i ] ; 2 uses
  %.sroa.35.7 = phi ptr [ %.sroa.35.1584, %bb.be ], [ %.sroa.35.1584, %bb.bf ], [ %.sroa.35.1584, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %.sroa.35.1584, %bb.bc ], [ %i.ri, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36.i ] ; 2 uses
  %i.rk = load ptr, ptr %i.ip, align 8, !tbaa !216
  %i.rl = load ptr, ptr %5, align 8, !tbaa !217   ; 4 uses
  %.not590 = icmp eq ptr %i.rk, %i.rl
  br i1 %.not590, label %._crit_edge573, label %.lr.ph554.preheader

.lr.ph554.preheader:                              ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  %i.rm = trunc nuw nsw i64 %indvars.iv703 to i32 ; 2 uses
  br label %.lr.ph554

.preheader:                                       ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit186
  %i.rn = icmp eq ptr %i.tl, %i.tj
  br i1 %i.rn, label %._crit_edge573, label %.lr.ph572

.lr.ph572:                                        ; preds = %.preheader
  %.not339558 = icmp eq ptr %.sroa.0237.9, %.sroa.18.7
  %i.ro = trunc i32 %i.qk to i8
  %i.rp = trunc i32 %i.qj to i8
  br i1 %.not339558, label %._crit_edge573, label %.lr.ph564.preheader

.lr.ph564.preheader:                              ; preds = %.lr.ph572
  %i.rq = trunc nuw nsw i64 %indvars.iv703 to i32 ; 3 uses
  br label %.lr.ph564

bb.bg:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i
  %i.rr = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

.lr.ph554:                                        ; preds = %.lr.ph554.preheader, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit186
  %.pre708715 = phi ptr [ %.pre708716, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit186 ], [ %i.rl, %.lr.ph554.preheader ] ; 2 uses
  %.pre707709 = phi ptr [ %.pre707710, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit186 ], [ %i.rl, %.lr.ph554.preheader ] ; 2 uses
  %i.rs = phi ptr [ %i.tj, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit186 ], [ %i.rl, %.lr.ph554.preheader ] ; 2 uses
  %.093553 = phi i64 [ %i.tk, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit186 ], [ 0, %.lr.ph554.preheader ] ; 3 uses
  %.sroa.35.2552 = phi ptr [ %.sroa.35.9, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit186 ], [ %.sroa.35.7, %.lr.ph554.preheader ] ; 5 uses
  %.sroa.18.2551 = phi ptr [ %.sroa.18.7, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit186 ], [ %.sroa.18.5, %.lr.ph554.preheader ] ; 3 uses
  %.sroa.0237.2550 = phi ptr [ %.sroa.0237.9, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit186 ], [ %.sroa.0237.7, %.lr.ph554.preheader ] ; 7 uses
  %i.rt = getelementptr inbounds nuw [24 x i8], ptr %i.rs, i64 %.093553 ; 3 uses
  switch i32 %i.rm, label %default.unreachable [
    i32 0, label %_ZN4core8vector3dIfEixEj.exit
    i32 1, label %bb.bh
    i32 2, label %bb.bi
  ]

bb.bh:                                            ; preds = %.lr.ph554
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 4
  br label %_ZN4core8vector3dIfEixEj.exit

bb.bi:                                            ; preds = %.lr.ph554
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rt, i64 8
  br label %_ZN4core8vector3dIfEixEj.exit

default.unreachable:                              ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit, %.lr.ph554, %bb.cb, %bb.by, %bb.bv
  unreachable

_ZN4core8vector3dIfEixEj.exit:                    ; preds = %.lr.ph554, %bb.bh, %bb.bi
  %.0.i170 = phi ptr [ %i.rv, %bb.bi ], [ %i.ru, %bb.bh ], [ %i.rt, %.lr.ph554 ] ; 2 uses
  %.not.i171 = icmp eq ptr %.sroa.18.2551, %.sroa.35.2552
  br i1 %.not.i171, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %_ZN4core8vector3dIfEixEj.exit
  %i.rw = load float, ptr %.0.i170, align 4, !tbaa !44
  store float %i.rw, ptr %.sroa.18.2551, align 4, !tbaa !44
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

bb.bk:                                            ; preds = %_ZN4core8vector3dIfEixEj.exit
  %i.rx = ptrtoint ptr %.sroa.35.2552 to i64
  %i.ry = ptrtoint ptr %.sroa.0237.2550 to i64
  %i.rz = sub i64 %i.rx, %i.ry                    ; 6 uses
  %i.sa = icmp eq i64 %i.rz, 9223372036854775804
  br i1 %i.sa, label %bb.bl, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i

bb.bl:                                            ; preds = %bb.bk
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #27
          to label %.noexc173 unwind label %.loopexit.split-lp359

.noexc173:                                        ; preds = %bb.bl
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bk
  %i.sb = ashr exact i64 %i.rz, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.sb, i64 1)
  %i.sc = add nsw i64 %.sroa.speculated.i.i.i, %i.sb ; 2 uses
  %i.sd = icmp ult i64 %i.sc, %i.sb
  %i.se = call i64 @llvm.umin.i64(i64 %i.sc, i64 2305843009213693951)
  %i.sf = select i1 %i.sd, i64 2305843009213693951, i64 %i.se ; 3 uses
  %.not.i.i.i172 = icmp ne i64 %i.sf, 0
  call void @llvm.assume(i1 %.not.i.i.i172)
  %i.sg = shl nuw nsw i64 %i.sf, 2
  %i.sh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.sg) #28
          to label %.noexc174 unwind label %.loopexit358 ; 4 uses

.noexc174:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i
  %i.si = getelementptr inbounds i8, ptr %i.sh, i64 %i.rz ; 2 uses
  %i.sj = load float, ptr %.0.i170, align 4, !tbaa !44
  store float %i.sj, ptr %i.si, align 4, !tbaa !44
  %i.sk = icmp sgt i64 %i.rz, 0
  br i1 %i.sk, label %bb.bm, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

bb.bm:                                            ; preds = %.noexc174
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.sh, ptr align 4 %.sroa.0237.2550, i64 %i.rz, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i: ; preds = %bb.bm, %.noexc174
  %.not.i17.i.i = icmp eq ptr %.sroa.0237.2550, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0237.2550, i64 noundef %i.rz) #29
  %.pre707.pre = load ptr, ptr %5, align 8, !tbaa !217 ; 2 uses
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i: ; preds = %bb.bn, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i
  %.pre708714 = phi ptr [ %.pre707.pre, %bb.bn ], [ %.pre708715, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i ]
  %.pre707 = phi ptr [ %.pre707.pre, %bb.bn ], [ %.pre707709, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i ] ; 2 uses
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %i.sh, i64 %i.sf
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

_ZNSt6vectorIfSaIfEE9push_backERKf.exit:          ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i, %bb.bj
  %.pre708713 = phi ptr [ %.pre708714, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %.pre708715, %bb.bj ] ; 2 uses
  %.pre707711 = phi ptr [ %.pre707, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %.pre707709, %bb.bj ]
  %i.sm = phi ptr [ %.pre707, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %i.rs, %bb.bj ] ; 2 uses
  %.sroa.0237.8 = phi ptr [ %i.sh, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %.sroa.0237.2550, %bb.bj ] ; 7 uses
  %.pn341 = phi ptr [ %i.si, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %.sroa.18.2551, %bb.bj ] ; 2 uses
  %.sroa.35.8 = phi ptr [ %i.sl, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %.sroa.35.2552, %bb.bj ] ; 5 uses
  %.sroa.18.6 = getelementptr inbounds nuw i8, ptr %.pn341, i64 4 ; 2 uses
  %i.sn = getelementptr inbounds nuw [24 x i8], ptr %i.sm, i64 %.093553 ; 3 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 12
  switch i32 %i.rm, label %default.unreachable [
    i32 0, label %_ZN4core8vector3dIfEixEj.exit176
    i32 1, label %bb.bo
    i32 2, label %bb.bp
  ]

bb.bo:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sn, i64 16
  br label %_ZN4core8vector3dIfEixEj.exit176

bb.bp:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sn, i64 20
  br label %_ZN4core8vector3dIfEixEj.exit176

_ZN4core8vector3dIfEixEj.exit176:                 ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit, %bb.bo, %bb.bp
  %.0.i175 = phi ptr [ %i.sq, %bb.bp ], [ %i.sp, %bb.bo ], [ %i.so, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit ] ; 2 uses
  %.not.i177 = icmp eq ptr %.sroa.18.6, %.sroa.35.8
  br i1 %.not.i177, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %_ZN4core8vector3dIfEixEj.exit176
  %i.sr = load float, ptr %.0.i175, align 4, !tbaa !44
  store float %i.sr, ptr %.sroa.18.6, align 4, !tbaa !44
  %i.ss = getelementptr inbounds nuw i8, ptr %.pn341, i64 8
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit186

bb.br:                                            ; preds = %_ZN4core8vector3dIfEixEj.exit176
  %i.st = ptrtoint ptr %.sroa.35.8 to i64
  %i.su = ptrtoint ptr %.sroa.0237.8 to i64
  %i.sv = sub i64 %i.st, %i.su                    ; 6 uses
  %i.sw = icmp eq i64 %i.sv, 9223372036854775804
  br i1 %i.sw, label %bb.bs, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i178

bb.bs:                                            ; preds = %bb.br
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #27
          to label %.noexc184 unwind label %.loopexit.split-lp359

.noexc184:                                        ; preds = %bb.bs
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i178: ; preds = %bb.br
  %i.sx = ashr exact i64 %i.sv, 2                 ; 3 uses
  %.sroa.speculated.i.i.i179 = call i64 @llvm.umax.i64(i64 %i.sx, i64 1)
  %i.sy = add nsw i64 %.sroa.speculated.i.i.i179, %i.sx ; 2 uses
  %i.sz = icmp ult i64 %i.sy, %i.sx
  %i.ta = call i64 @llvm.umin.i64(i64 %i.sy, i64 2305843009213693951)
  %i.tb = select i1 %i.sz, i64 2305843009213693951, i64 %i.ta ; 3 uses
  %.not.i.i.i180 = icmp ne i64 %i.tb, 0
  call void @llvm.assume(i1 %.not.i.i.i180)
  %i.tc = shl nuw nsw i64 %i.tb, 2
  %i.td = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tc) #28
          to label %.noexc185 unwind label %.loopexit358 ; 4 uses

.noexc185:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i178
  %i.te = getelementptr inbounds i8, ptr %i.td, i64 %i.sv ; 2 uses
  %i.tf = load float, ptr %.0.i175, align 4, !tbaa !44
  store float %i.tf, ptr %i.te, align 4, !tbaa !44
  %i.tg = icmp sgt i64 %i.sv, 0
  br i1 %i.tg, label %bb.bt, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i181

bb.bt:                                            ; preds = %.noexc185
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.td, ptr align 4 %.sroa.0237.8, i64 %i.sv, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i181

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i181: ; preds = %bb.bt, %.noexc185
  %i.th = getelementptr inbounds nuw i8, ptr %i.te, i64 4
  %.not.i17.i.i182 = icmp eq ptr %.sroa.0237.8, null
  br i1 %.not.i17.i.i182, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i183, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i181
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0237.8, i64 noundef %i.sv) #29
  %.pre708.pre = load ptr, ptr %5, align 8, !tbaa !217
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i183

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i183: ; preds = %bb.bu, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i181
  %.pre708 = phi ptr [ %.pre708.pre, %bb.bu ], [ %.pre708713, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i181 ] ; 3 uses
  %i.ti = getelementptr inbounds nuw [4 x i8], ptr %i.td, i64 %i.tb
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit186

_ZNSt6vectorIfSaIfEE9push_backERKf.exit186:       ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i183, %bb.bq
  %.pre708716 = phi ptr [ %.pre708, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i183 ], [ %.pre708713, %bb.bq ]
  %.pre707710 = phi ptr [ %.pre708, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i183 ], [ %.pre707711, %bb.bq ]
  %i.tj = phi ptr [ %.pre708, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i183 ], [ %i.sm, %bb.bq ] ; 4 uses
  %.sroa.0237.9 = phi ptr [ %i.td, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i183 ], [ %.sroa.0237.8, %bb.bq ] ; 10 uses
  %.sroa.18.7 = phi ptr [ %i.th, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i183 ], [ %i.ss, %bb.bq ] ; 6 uses
  %.sroa.35.9 = phi ptr [ %i.ti, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i183 ], [ %.sroa.35.8, %bb.bq ] ; 8 uses
  %i.tk = add nuw i64 %.093553, 1                 ; 2 uses
  %i.tl = load ptr, ptr %i.ip, align 8, !tbaa !216 ; 2 uses
  %i.tm = ptrtoint ptr %i.tl to i64
  %i.tn = ptrtoint ptr %i.tj to i64
  %i.to = sub i64 %i.tm, %i.tn
  %i.tp = sdiv exact i64 %i.to, 24
  %i.tq = icmp ult i64 %i.tk, %i.tp
  br i1 %i.tq, label %.lr.ph554, label %.preheader, !llvm.loop !218

.loopexit358:                                     ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i178
  %.sroa.0237.3.ph = phi ptr [ %.sroa.0237.2550, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.0237.8, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i178 ]
  %.sroa.35.3.ph = phi ptr [ %.sroa.35.2552, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.35.8, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i178 ]
  %lpad.loopexit362 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

.loopexit.split-lp359:                            ; preds = %bb.bl, %bb.bs
  %.sroa.0237.3.ph360 = phi ptr [ %.sroa.0237.8, %bb.bs ], [ %.sroa.0237.2550, %bb.bl ]
  %.sroa.35.3.ph361 = phi ptr [ %.sroa.35.8, %bb.bs ], [ %.sroa.35.2552, %bb.bl ]
  %lpad.loopexit.split-lp363 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

._crit_edge573:                                   ; preds = %._crit_edge, %_ZNSt6vectorIfSaIfEE6resizeEm.exit, %.lr.ph572, %.preheader
  %.sroa.35.2.lcssa767 = phi ptr [ %.sroa.35.9, %.preheader ], [ %.sroa.35.7, %_ZNSt6vectorIfSaIfEE6resizeEm.exit ], [ %.sroa.35.9, %.lr.ph572 ], [ %.sroa.35.9, %._crit_edge ] ; 2 uses
  %.sroa.18.2.lcssa766 = phi ptr [ %.sroa.18.7, %.preheader ], [ %.sroa.18.5, %_ZNSt6vectorIfSaIfEE6resizeEm.exit ], [ %.sroa.18.7, %.lr.ph572 ], [ %.sroa.18.7, %._crit_edge ]
  %.sroa.0237.2.lcssa765 = phi ptr [ %.sroa.0237.9, %.preheader ], [ %.sroa.0237.7, %_ZNSt6vectorIfSaIfEE6resizeEm.exit ], [ %.sroa.0237.9, %.lr.ph572 ], [ %.sroa.0237.9, %._crit_edge ] ; 4 uses
  %.sroa.25.2.lcssa = phi ptr [ %.sroa.25.1579, %.preheader ], [ %.sroa.25.1579, %_ZNSt6vectorIfSaIfEE6resizeEm.exit ], [ %.sroa.25.1579, %.lr.ph572 ], [ %.sroa.25.4, %._crit_edge ] ; 3 uses
  %.sroa.15.2.lcssa = phi ptr [ %.sroa.15.1580, %.preheader ], [ %.sroa.15.1580, %_ZNSt6vectorIfSaIfEE6resizeEm.exit ], [ %.sroa.15.1580, %.lr.ph572 ], [ %.sroa.15.4, %._crit_edge ]
  %.sroa.0265.2.lcssa = phi ptr [ %.sroa.0265.1581, %.preheader ], [ %.sroa.0265.1581, %_ZNSt6vectorIfSaIfEE6resizeEm.exit ], [ %.sroa.0265.1581, %.lr.ph572 ], [ %.sroa.0265.4, %._crit_edge ] ; 3 uses
  %indvars.iv.next704 = add nuw nsw i64 %indvars.iv703, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next704, 3
  br i1 %exitcond.not, label %bb.ay, label %bb.ba, !llvm.loop !219

.lr.ph564:                                        ; preds = %.lr.ph564.preheader, %._crit_edge
  %i.tr = phi ptr [ %i.wg, %._crit_edge ], [ %i.tj, %.lr.ph564.preheader ] ; 3 uses
  %.092571 = phi i64 [ %i.tt, %._crit_edge ], [ 0, %.lr.ph564.preheader ] ; 6 uses
  %.sroa.0265.2570 = phi ptr [ %.sroa.0265.4, %._crit_edge ], [ %.sroa.0265.1581, %.lr.ph564.preheader ]
  %.sroa.15.2569 = phi ptr [ %.sroa.15.4, %._crit_edge ], [ %.sroa.15.1580, %.lr.ph564.preheader ]
  %.sroa.25.2568 = phi ptr [ %.sroa.25.4, %._crit_edge ], [ %.sroa.25.1579, %.lr.ph564.preheader ]
  %i.ts = getelementptr inbounds nuw [24 x i8], ptr %i.tr, i64 %.092571
  br label %bb.bv

._crit_edge:                                      ; preds = %bb.cm
  %i.tt = add nuw nsw i64 %.092571, 1             ; 2 uses
  %i.tu = load ptr, ptr %i.ip, align 8, !tbaa !216
  %i.tv = ptrtoint ptr %i.tu to i64
  %i.tw = ptrtoint ptr %i.wg to i64
  %i.tx = sub i64 %i.tv, %i.tw
  %i.ty = sdiv exact i64 %i.tx, 24
  %i.tz = icmp ult i64 %i.tt, %i.ty
  %i.ua = icmp samesign ult i64 %.092571, 99
  %i.ub = select i1 %i.tz, i1 %i.ua, i1 false
  br i1 %i.ub, label %.lr.ph564, label %._crit_edge573, !llvm.loop !220

bb.bv:                                            ; preds = %.lr.ph564, %bb.cm
  %i.uc = phi ptr [ %i.tr, %.lr.ph564 ], [ %i.wg, %bb.cm ] ; 2 uses
  %i.ud = phi ptr [ %i.tr, %.lr.ph564 ], [ %i.wh, %bb.cm ] ; 7 uses
  %.090563 = phi ptr [ %i.ts, %.lr.ph564 ], [ %.191, %bb.cm ] ; 13 uses
  %.sroa.0233.0562 = phi ptr [ %.sroa.0237.9, %.lr.ph564 ], [ %i.wi, %bb.cm ] ; 2 uses
  %.sroa.0265.3561 = phi ptr [ %.sroa.0265.2570, %.lr.ph564 ], [ %.sroa.0265.4, %bb.cm ] ; 11 uses
  %.sroa.15.3560 = phi ptr [ %.sroa.15.2569, %.lr.ph564 ], [ %.sroa.15.4, %bb.cm ] ; 8 uses
  %.sroa.25.3559 = phi ptr [ %.sroa.25.2568, %.lr.ph564 ], [ %.sroa.25.4, %bb.cm ] ; 6 uses
  %i.ue = load float, ptr %.sroa.0233.0562, align 4, !tbaa !44 ; 6 uses
  switch i32 %i.rq, label %default.unreachable [
    i32 0, label %_ZN4core8vector3dIfEixEj.exit188
    i32 1, label %bb.bw
    i32 2, label %bb.bx
  ]

bb.bw:                                            ; preds = %bb.bv
  %i.uf = getelementptr inbounds nuw i8, ptr %.090563, i64 4
  br label %_ZN4core8vector3dIfEixEj.exit188

bb.bx:                                            ; preds = %bb.bv
  %i.ug = getelementptr inbounds nuw i8, ptr %.090563, i64 8
  br label %_ZN4core8vector3dIfEixEj.exit188

_ZN4core8vector3dIfEixEj.exit188:                 ; preds = %bb.bv, %bb.bw, %bb.bx
  %.0.i187 = phi ptr [ %i.ug, %bb.bx ], [ %i.uf, %bb.bw ], [ %.090563, %bb.bv ]
  %i.uh = load float, ptr %.0.i187, align 4, !tbaa !44
  %i.ui = fadd nsz float %i.ue, -1.000000e-03
  %i.uj = fcmp nsz olt float %i.uh, %i.ui
  br i1 %i.uj, label %bb.by, label %bb.cm

bb.by:                                            ; preds = %_ZN4core8vector3dIfEixEj.exit188
  %i.uk = getelementptr inbounds nuw i8, ptr %.090563, i64 12 ; 3 uses
  switch i32 %i.rq, label %default.unreachable [
    i32 0, label %_ZN4core8vector3dIfEixEj.exit190
    i32 1, label %bb.bz
    i32 2, label %bb.ca
  ]

bb.bz:                                            ; preds = %bb.by
  %i.ul = getelementptr inbounds nuw i8, ptr %.090563, i64 16
  br label %_ZN4core8vector3dIfEixEj.exit190

bb.ca:                                            ; preds = %bb.by
  %i.um = getelementptr inbounds nuw i8, ptr %.090563, i64 20
  br label %_ZN4core8vector3dIfEixEj.exit190

_ZN4core8vector3dIfEixEj.exit190:                 ; preds = %bb.by, %bb.bz, %bb.ca
  %.0.i189 = phi ptr [ %i.um, %bb.ca ], [ %i.ul, %bb.bz ], [ %i.uk, %bb.by ]
  %i.un = load float, ptr %.0.i189, align 4, !tbaa !44
  %i.uo = fadd nsz float %i.ue, 1.000000e-03
  %i.up = fcmp nsz ogt float %i.un, %i.uo
  br i1 %i.up, label %bb.cb, label %bb.cm

bb.cb:                                            ; preds = %_ZN4core8vector3dIfEixEj.exit190
  %.sroa.0.0.copyload = load float, ptr %.090563, align 4, !tbaa !44 ; 2 uses
  %.sroa.7.0..090.sroa_idx = getelementptr inbounds nuw i8, ptr %.090563, i64 4
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..090.sroa_idx, align 4, !tbaa !44 ; 2 uses
  %.sroa.8.0..090.sroa_idx = getelementptr inbounds nuw i8, ptr %.090563, i64 8
  %.sroa.8.0.copyload = load float, ptr %.sroa.8.0..090.sroa_idx, align 4, !tbaa !44 ; 2 uses
  %.sroa.9.sroa.0.0.copyload = load <3 x float>, ptr %i.uk, align 4 ; 2 uses
  switch i32 %i.rq, label %default.unreachable [
    i32 0, label %_ZN4core8vector3dIfEixEj.exit194
    i32 1, label %bb.cc
    i32 2, label %bb.cd
  ]

bb.cc:                                            ; preds = %bb.cb
  %i.uq = getelementptr inbounds nuw i8, ptr %.090563, i64 16
  br label %_ZN4core8vector3dIfEixEj.exit194

bb.cd:                                            ; preds = %bb.cb
  %i.ur = getelementptr inbounds nuw i8, ptr %.090563, i64 20
  br label %_ZN4core8vector3dIfEixEj.exit194

_ZN4core8vector3dIfEixEj.exit194:                 ; preds = %bb.cb, %bb.cc, %bb.cd
  %.sroa.0.0 = phi nsz float [ %.sroa.0.0.copyload, %bb.cd ], [ %.sroa.0.0.copyload, %bb.cc ], [ %i.ue, %bb.cb ] ; 2 uses
  %.sroa.7.0 = phi nsz float [ %.sroa.7.0.copyload, %bb.cd ], [ %i.ue, %bb.cc ], [ %.sroa.7.0.copyload, %bb.cb ] ; 2 uses
  %.sroa.8.0 = phi nsz float [ %i.ue, %bb.cd ], [ %.sroa.8.0.copyload, %bb.cc ], [ %.sroa.8.0.copyload, %bb.cb ] ; 2 uses
  %.0.i193 = phi ptr [ %i.ur, %bb.cd ], [ %i.uq, %bb.cc ], [ %i.uk, %bb.cb ]
  store float %i.ue, ptr %.0.i193, align 4, !tbaa !44
  %i.us = load ptr, ptr %i.ip, align 8, !tbaa !216 ; 8 uses
  %i.ut = load ptr, ptr %i.qc, align 8, !tbaa !221
  %.not.i195 = icmp eq ptr %i.us, %i.ut
  br i1 %.not.i195, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %_ZN4core8vector3dIfEixEj.exit194
  store float %.sroa.0.0, ptr %i.us, align 4, !tbaa !44
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.us, i64 4
  store float %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !44
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.us, i64 8
  store float %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !44
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.us, i64 12
  store <3 x float> %.sroa.9.sroa.0.0.copyload, ptr %.sroa.9.0..sroa_idx, align 4
  %i.uu = load ptr, ptr %i.ip, align 8, !tbaa !216
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 24
  store ptr %i.uv, ptr %i.ip, align 8, !tbaa !216
  br label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE9push_backERKS2_.exit

bb.cf:                                            ; preds = %_ZN4core8vector3dIfEixEj.exit194
  %i.uw = ptrtoint ptr %i.us to i64
  %i.ux = ptrtoint ptr %i.ud to i64
  %i.uy = sub i64 %i.uw, %i.ux                    ; 4 uses
  %i.uz = icmp eq i64 %i.uy, 9223372036854775800
  br i1 %i.uz, label %bb.cg, label %_ZNKSt6vectorIN4core8aabbox3dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.cg:                                            ; preds = %bb.cf
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #27
          to label %.noexc198 unwind label %.loopexit.split-lp

.noexc198:                                        ; preds = %bb.cg
  unreachable

_ZNKSt6vectorIN4core8aabbox3dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.cf
  %i.va = sdiv exact i64 %i.uy, 24                ; 3 uses
  %.sroa.speculated.i.i.i196 = call i64 @llvm.umax.i64(i64 %i.va, i64 1)
  %i.vb = add nsw i64 %.sroa.speculated.i.i.i196, %i.va ; 2 uses
  %i.vc = icmp ult i64 %i.vb, %i.va
  %i.vd = call i64 @llvm.umin.i64(i64 %i.vb, i64 384307168202282325)
  %i.ve = select i1 %i.vc, i64 384307168202282325, i64 %i.vd ; 3 uses
  %.not.i.i.i197 = icmp ne i64 %i.ve, 0
  call void @llvm.assume(i1 %.not.i.i.i197)
  %i.vf = mul nuw nsw i64 %i.ve, 24
  %i.vg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vf) #28
          to label %.noexc199 unwind label %.loopexit ; 5 uses

.noexc199:                                        ; preds = %_ZNKSt6vectorIN4core8aabbox3dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 %i.uy ; 4 uses
  store float %.sroa.0.0, ptr %i.vh, align 4, !tbaa !44
  %.sroa.7.0..sroa_idx226 = getelementptr inbounds nuw i8, ptr %i.vh, i64 4
  store float %.sroa.7.0, ptr %.sroa.7.0..sroa_idx226, align 4, !tbaa !44
  %.sroa.8.0..sroa_idx229 = getelementptr inbounds nuw i8, ptr %i.vh, i64 8
  store float %.sroa.8.0, ptr %.sroa.8.0..sroa_idx229, align 4, !tbaa !44
  %.sroa.9.0..sroa_idx231 = getelementptr inbounds nuw i8, ptr %i.vh, i64 12
  store <3 x float> %.sroa.9.sroa.0.0.copyload, ptr %.sroa.9.0..sroa_idx231, align 4
  %.not10.i.i.i.i.i = icmp eq ptr %i.ud, %i.us
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc199, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.vj, %.lr.ph.i.i.i.i.i ], [ %i.vg, %.noexc199 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.vi, %.lr.ph.i.i.i.i.i ], [ %i.ud, %.noexc199 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(24) %.0911.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !222, !alias.scope !223
  %i.vi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 24 ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.vi, %i.us
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !227

_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc199
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.vg, %.noexc199 ], [ %i.vj, %.lr.ph.i.i.i.i.i ]
  %i.vk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 24
  %.not.i23.i.i = icmp eq ptr %i.ud, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.ch

bb.ch:                                            ; preds = %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ud, i64 noundef %i.uy) #29
  br label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.ch, %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.vg, ptr %5, align 8, !tbaa !217
  store ptr %i.vk, ptr %i.ip, align 8, !tbaa !216
  %i.vl = getelementptr inbounds nuw [24 x i8], ptr %i.vg, i64 %i.ve
  store ptr %i.vl, ptr %i.qc, align 8, !tbaa !221
  br label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.ce
  %i.vm = getelementptr inbounds nuw i8, ptr %.sroa.0265.3561, i64 %.092571
  %i.vn = load i8, ptr %i.vm, align 1, !tbaa !55
  %i.vo = or i8 %i.vn, %i.ro                      ; 2 uses
  %.not.i.i200 = icmp eq ptr %.sroa.15.3560, %.sroa.25.3559
  br i1 %.not.i.i200, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE9push_backERKS2_.exit
  store i8 %i.vo, ptr %.sroa.15.3560, align 1, !tbaa !55
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit209

bb.cj:                                            ; preds = %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE9push_backERKS2_.exit
  %i.vp = ptrtoint ptr %.sroa.15.3560 to i64
  %i.vq = ptrtoint ptr %.sroa.0265.3561 to i64
  %i.vr = sub i64 %i.vp, %i.vq                    ; 8 uses
  %i.vs = icmp eq i64 %i.vr, 9223372036854775807
  br i1 %i.vs, label %bb.ck, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i201

bb.ck:                                            ; preds = %bb.cj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #27
          to label %.noexc207 unwind label %.loopexit.split-lp354

.noexc207:                                        ; preds = %bb.ck
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i201: ; preds = %bb.cj
  %.sroa.speculated.i.i.i.i202 = call i64 @llvm.umax.i64(i64 %i.vr, i64 1)
  %i.vt = add i64 %.sroa.speculated.i.i.i.i202, %i.vr ; 2 uses
  %i.vu = icmp ult i64 %i.vt, %i.vr
  %i.vv = call i64 @llvm.umin.i64(i64 %i.vt, i64 9223372036854775807)
  %i.vw = select i1 %i.vu, i64 9223372036854775807, i64 %i.vv ; 3 uses
  %.not.i.i.i.i203 = icmp ne i64 %i.vw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i203)
  %i.vx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vw) #28
          to label %.noexc208 unwind label %.loopexit353 ; 4 uses

.noexc208:                                        ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i201
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 %i.vr ; 2 uses
  store i8 %i.vo, ptr %i.vy, align 1, !tbaa !55
  %i.vz = icmp sgt i64 %i.vr, 0
  br i1 %i.vz, label %bb.cl, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i206

bb.cl:                                            ; preds = %.noexc208
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.vx, ptr nonnull align 1 %.sroa.0265.3561, i64 %i.vr, i1 false)
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i206

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i206: ; preds = %bb.cl, %.noexc208
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0265.3561, i64 noundef %i.vr) #29
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vx, i64 %i.vw
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit209
end_hunk_0
