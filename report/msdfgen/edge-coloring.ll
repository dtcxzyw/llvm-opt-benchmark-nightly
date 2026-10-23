Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msdfgen/original/edge-coloring?download=true
inline.NumInlined: 874
inline.NumDeleted: 392
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN7msdfgen22edgeColoringByDistanceERNS_5ShapeEdy:bb.a
  %i.od = add nsw i32 %.01361281, 1               ; 4 uses
  %i.oe = icmp slt i32 %i.od, %i.nr
  br i1 %i.oe, label %bb.cw, label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit325

bb.cw:                                            ; preds = %.lr.ph1284
  %i.of = sext i32 %i.od to i64
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0551.1.lcssa, i64 %i.of
  %i.oh = load i32, ptr %i.og, align 4, !tbaa !19
  %i.oi = icmp eq i32 %i.oh, %i.oc
  br i1 %i.oi, label %bb.cx, label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit325

bb.cx:                                            ; preds = %bb.cw
  %i.oj = ptrtoint ptr %.sroa.33.51279 to i64
  %i.ok = ptrtoint ptr %.sroa.0601.71280 to i64
  %i.ol = sub i64 %i.oj, %i.ok
  %i.om = lshr exact i64 %i.ol, 3
  %i.on = trunc i64 %i.om to i32                  ; 2 uses
  %.not.i.i316 = icmp eq ptr %.sroa.24.41276, %.sroa.43.61275
  br i1 %.not.i.i316, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  store i32 %i.on, ptr %.sroa.24.41276, align 4, !tbaa !19
  %i.oo = getelementptr inbounds nuw i8, ptr %.sroa.24.41276, i64 4
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit325

bb.cz:                                            ; preds = %bb.cx
  %i.op = ptrtoint ptr %.sroa.24.41276 to i64
  %i.oq = ptrtoint ptr %.sroa.0568.61277 to i64
  %i.or = sub i64 %i.op, %i.oq                    ; 6 uses
  %i.os = icmp eq i64 %i.or, 9223372036854775804
  br i1 %i.os, label %bb.da, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i317

bb.da:                                            ; preds = %bb.cz
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
          to label %.noexc323 unwind label %.thread.loopexit.split-lp.loopexit.split-lp

.noexc323:                                        ; preds = %bb.da
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i317: ; preds = %bb.cz
  %i.ot = ashr exact i64 %i.or, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i318 = call i64 @llvm.umax.i64(i64 %i.ot, i64 1)
  %i.ou = add nsw i64 %.sroa.speculated.i.i.i.i318, %i.ot ; 2 uses
  %i.ov = icmp ult i64 %i.ou, %i.ot
  %i.ow = call i64 @llvm.umin.i64(i64 %i.ou, i64 2305843009213693951)
  %i.ox = select i1 %i.ov, i64 2305843009213693951, i64 %i.ow ; 3 uses
  %.not.i.i.i.i319 = icmp ne i64 %i.ox, 0
  call void @llvm.assume(i1 %.not.i.i.i.i319)
  %i.oy = shl nuw nsw i64 %i.ox, 2
  %i.oz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.oy) #19
          to label %.noexc324 unwind label %.thread.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc324:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i317
  %i.pa = getelementptr inbounds i8, ptr %i.oz, i64 %i.or ; 2 uses
  store i32 %i.on, ptr %i.pa, align 4, !tbaa !19
  %i.pb = icmp sgt i64 %i.or, 0
  br i1 %i.pb, label %bb.db, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i320

bb.db:                                            ; preds = %.noexc324
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.oz, ptr align 4 %.sroa.0568.61277, i64 %i.or, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i320

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i320: ; preds = %bb.db, %.noexc324
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pa, i64 4
  %.not.i17.i.i.i321 = icmp eq ptr %.sroa.0568.61277, null
  br i1 %.not.i17.i.i.i321, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i322, label %bb.dc

bb.dc:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i320
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0568.61277, i64 noundef %i.or) #17
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i322

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i322: ; preds = %bb.dc, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i320
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.oz, i64 %i.ox
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit325

.thread.loopexit.split-lp.loopexit.split-lp:      ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i317, %bb.da
  %lpad.loopexit.split-lp2766 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

_ZNSt6vectorIiSaIiEE9push_backEOi.exit325:        ; preds = %bb.cy, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i322, %bb.cw, %.lr.ph1284
  %.sroa.43.7 = phi ptr [ %.sroa.43.61275, %.lr.ph1284 ], [ %.sroa.43.61275, %bb.cw ], [ %i.pd, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i322 ], [ %.sroa.43.61275, %bb.cy ] ; 4 uses
  %.sroa.24.5 = phi ptr [ %.sroa.24.41276, %.lr.ph1284 ], [ %.sroa.24.41276, %bb.cw ], [ %i.pc, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i322 ], [ %i.oo, %bb.cy ] ; 2 uses
  %.sroa.0568.7 = phi ptr [ %.sroa.0568.61277, %.lr.ph1284 ], [ %.sroa.0568.61277, %bb.cw ], [ %i.oz, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i322 ], [ %.sroa.0568.61277, %bb.cy ] ; 4 uses
  %.1137 = phi i32 [ %.01361281, %.lr.ph1284 ], [ %.01361281, %bb.cw ], [ %i.od, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i322 ], [ %i.od, %bb.cy ]
  %i.pe = sext i32 %i.oc to i64
  %i.pf = load ptr, ptr %.sroa.0531.01321, align 8, !tbaa !24
  %i.pg = getelementptr inbounds nuw [8 x i8], ptr %i.pf, i64 %i.pe
  %i.ph = invoke noundef nonnull align 8 dereferenceable(12) ptr @_ZN7msdfgen10EdgeHolderdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.pg)
          to label %bb.dd unwind label %.loopexit737 ; 2 uses

bb.dd:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit325
  %.not.i.i326 = icmp eq ptr %.sroa.33.51279, %.sroa.67.71278
  br i1 %.not.i.i326, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  store ptr %i.ph, ptr %.sroa.33.51279, align 8, !tbaa !27
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit335

bb.df:                                            ; preds = %bb.dd
  %i.pi = ptrtoint ptr %.sroa.33.51279 to i64
  %i.pj = ptrtoint ptr %.sroa.0601.71280 to i64
  %i.pk = sub i64 %i.pi, %i.pj                    ; 6 uses
  %i.pl = icmp eq i64 %i.pk, 9223372036854775800
  br i1 %i.pl, label %bb.dg, label %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i327

bb.dg:                                            ; preds = %bb.df
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
          to label %.noexc333 unwind label %.loopexit.split-lp738

.noexc333:                                        ; preds = %bb.dg
  unreachable

_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i327: ; preds = %bb.df
  %i.pm = ashr exact i64 %i.pk, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i328 = call i64 @llvm.umax.i64(i64 %i.pm, i64 1)
  %i.pn = add nsw i64 %.sroa.speculated.i.i.i.i328, %i.pm ; 2 uses
  %i.po = icmp ult i64 %i.pn, %i.pm
  %i.pp = call i64 @llvm.umin.i64(i64 %i.pn, i64 1152921504606846975)
  %i.pq = select i1 %i.po, i64 1152921504606846975, i64 %i.pp ; 3 uses
  %.not.i.i.i.i329 = icmp ne i64 %i.pq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i329)
  %i.pr = shl nuw nsw i64 %i.pq, 3
  %i.ps = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pr) #19
          to label %.noexc334 unwind label %.loopexit737 ; 4 uses

.noexc334:                                        ; preds = %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i327
  %i.pt = getelementptr inbounds i8, ptr %i.ps, i64 %i.pk ; 2 uses
  store ptr %i.ph, ptr %i.pt, align 8, !tbaa !27
  %i.pu = icmp sgt i64 %i.pk, 0
  br i1 %i.pu, label %bb.dh, label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i330

bb.dh:                                            ; preds = %.noexc334
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ps, ptr align 8 %.sroa.0601.71280, i64 %i.pk, i1 false)
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i330

_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i330: ; preds = %bb.dh, %.noexc334
  %.not.i17.i.i.i331 = icmp eq ptr %.sroa.0601.71280, null
  br i1 %.not.i17.i.i.i331, label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i332, label %bb.di

bb.di:                                            ; preds = %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i330
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0601.71280, i64 noundef %i.pk) #17
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i332

_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i332: ; preds = %bb.di, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i330
  %i.pv = getelementptr inbounds nuw [8 x i8], ptr %i.ps, i64 %i.pq
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit335

_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit335: ; preds = %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i332, %bb.de
  %.sroa.67.21 = phi ptr [ %i.pv, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i332 ], [ %.sroa.67.71278, %bb.de ] ; 2 uses
  %.pn695 = phi ptr [ %i.pt, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i332 ], [ %.sroa.33.51279, %bb.de ]
  %.sroa.0601.21 = phi ptr [ %i.ps, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i332 ], [ %.sroa.0601.71280, %bb.de ] ; 2 uses
  %.sroa.33.16 = getelementptr inbounds nuw i8, ptr %.pn695, i64 8 ; 2 uses
  %i.pw = add nuw nsw i32 %.01351282, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.pw, %i.nz
  br i1 %exitcond.not, label %.loopexit716, label %.lr.ph1284, !llvm.loop !82

.loopexit737:                                     ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit325, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i327
  %.sroa.67.71278.lcssa1416 = phi ptr [ %.sroa.67.71278, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit325 ], [ %.sroa.33.51279, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i327 ]
  %lpad.loopexit739 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp743

.loopexit.split-lp738:                            ; preds = %bb.dg
  %lpad.loopexit.split-lp740 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp743

.loopexit716:                                     ; preds = %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit335, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit234, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit, %bb.cv, %bb.af, %bb.w, %bb.aw, %._crit_edge1294, %bb.f
  %.sroa.23.7 = phi ptr [ %.sroa.23.01323, %bb.f ], [ %.sroa.23.1.lcssa, %bb.af ], [ %.sroa.23.1.lcssa, %bb.w ], [ %.sroa.23.1.lcssa, %._crit_edge1294 ], [ %.sroa.23.1.lcssa, %bb.aw ], [ %.sroa.23.1.lcssa, %bb.cv ], [ %.sroa.23.1.lcssa, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit234 ], [ %.sroa.23.1.lcssa, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit ], [ %.sroa.23.1.lcssa, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit335 ] ; 3 uses
  %.sroa.15.3 = phi ptr [ %.sroa.15.01324, %bb.f ], [ %.sroa.15.1.lcssa, %bb.af ], [ %.sroa.15.1.lcssa, %bb.w ], [ %.sroa.15.1.lcssa, %._crit_edge1294 ], [ %.sroa.15.1.lcssa, %bb.aw ], [ %.sroa.15.1.lcssa, %bb.cv ], [ %.sroa.15.1.lcssa, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit234 ], [ %.sroa.15.1.lcssa, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit ], [ %.sroa.15.1.lcssa, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit335 ]
  %.sroa.0551.7 = phi ptr [ %.sroa.0551.01325, %bb.f ], [ %.sroa.0551.1.lcssa, %bb.af ], [ %.sroa.0551.1.lcssa, %bb.w ], [ %.sroa.0551.1.lcssa, %._crit_edge1294 ], [ %.sroa.0551.1.lcssa, %bb.aw ], [ %.sroa.0551.1.lcssa, %bb.cv ], [ %.sroa.0551.1.lcssa, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit234 ], [ %.sroa.0551.1.lcssa, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit ], [ %.sroa.0551.1.lcssa, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit335 ] ; 3 uses
  %.sroa.43.11 = phi ptr [ %.sroa.43.01326, %bb.f ], [ %.sroa.43.14, %bb.af ], [ %.sroa.43.14, %bb.w ], [ %.sroa.43.4, %._crit_edge1294 ], [ %.sroa.43.14, %bb.aw ], [ %.sroa.43.14, %bb.cv ], [ %.sroa.43.2, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit234 ], [ %.sroa.43.14, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit ], [ %.sroa.43.7, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit335 ] ; 4 uses
  %.sroa.24.7 = phi ptr [ %.sroa.24.01327, %bb.f ], [ %.sroa.24.9, %bb.af ], [ %.sroa.24.9, %bb.w ], [ %.sroa.24.3, %._crit_edge1294 ], [ %.sroa.24.9, %bb.aw ], [ %.sroa.24.9, %bb.cv ], [ %.sroa.24.2, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit234 ], [ %.sroa.24.9, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit ], [ %.sroa.24.5, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit335 ] ; 4 uses
  %.sroa.0568.11 = phi ptr [ %.sroa.0568.01328, %bb.f ], [ %.sroa.0568.14, %bb.af ], [ %.sroa.0568.14, %bb.w ], [ %.sroa.0568.4, %._crit_edge1294 ], [ %.sroa.0568.14, %bb.aw ], [ %.sroa.0568.14, %bb.cv ], [ %.sroa.0568.2, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit234 ], [ %.sroa.0568.14, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit ], [ %.sroa.0568.7, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit335 ] ; 3 uses
  %.sroa.67.11 = phi ptr [ %.sroa.67.01329, %bb.f ], [ %.sroa.67.01329, %bb.af ], [ %.sroa.67.01329, %bb.w ], [ %.sroa.67.5, %._crit_edge1294 ], [ %.sroa.67.01329, %bb.aw ], [ %.sroa.67.01329, %bb.cv ], [ %.sroa.67.3, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit234 ], [ %.sroa.67.13, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit ], [ %.sroa.67.21, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit335 ] ; 3 uses
  %.sroa.33.7 = phi ptr [ %.sroa.33.01330, %bb.f ], [ %.sroa.33.01330, %bb.af ], [ %.sroa.33.01330, %bb.w ], [ %.sroa.33.4, %._crit_edge1294 ], [ %.sroa.33.01330, %bb.aw ], [ %.sroa.33.01330, %bb.cv ], [ %.sroa.33.3, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit234 ], [ %.sroa.33.8, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit ], [ %.sroa.33.16, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit335 ] ; 2 uses
  %.sroa.0601.11 = phi ptr [ %.sroa.0601.01331, %bb.f ], [ %.sroa.0601.01331, %bb.af ], [ %.sroa.0601.01331, %bb.w ], [ %.sroa.0601.5, %._crit_edge1294 ], [ %.sroa.0601.01331, %bb.aw ], [ %.sroa.0601.01331, %bb.cv ], [ %.sroa.0601.3, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit234 ], [ %.sroa.0601.13, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit ], [ %.sroa.0601.21, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit335 ] ; 4 uses
  %i.px = getelementptr inbounds nuw i8, ptr %.sroa.0531.01321, i64 24 ; 2 uses
  %i.py = load ptr, ptr %i.f, align 8, !tbaa !12
  %.not677 = icmp eq ptr %i.px, %i.py
  br i1 %.not677, label %._crit_edge1334, label %bb.f, !llvm.loop !83

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.b
  %i.pz = phi i32 [ %i.r, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.q, %bb.b ]
  %i.qa = phi i64 [ %i.s, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.p, %bb.b ] ; 4 uses
  %i.qb = phi i64 [ %i.t, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.n, %bb.b ]
  %.sroa.0601.0.lcssa1867 = phi ptr [ %.sroa.0601.0.lcssa1868, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.0601.11, %bb.b ] ; 9 uses
  %.sroa.67.0.lcssa1864 = phi ptr [ %.sroa.67.0.lcssa1865, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.67.11, %bb.b ] ; 3 uses
  %.sroa.0551.0.lcssa1859 = phi ptr [ %.sroa.0551.0.lcssa1860, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.0551.7, %bb.b ] ; 5 uses
  %.sroa.23.0.lcssa1856 = phi ptr [ %.sroa.23.0.lcssa1857, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.23.7, %bb.b ] ; 3 uses
  %.sroa.43.13 = phi ptr [ %i.ah, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.43.11, %bb.b ] ; 3 uses
  %.pn678 = phi ptr [ %i.af, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.24.7, %bb.b ]
  %.sroa.0568.13 = phi ptr [ %i.ae, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.0568.11, %bb.b ] ; 12 uses
  %.sroa.24.8 = getelementptr inbounds nuw i8, ptr %.pn678, i64 4
  %i.qc = ptrtoint ptr %.sroa.24.8 to i64
  %i.qd = ptrtoint ptr %.sroa.0568.13 to i64      ; 2 uses
  %i.qe = sub i64 %i.qc, %i.qd
  %i.qf = lshr exact i64 %i.qe, 2
  %i.qg = trunc i64 %i.qf to i32                  ; 5 uses
  %i.qh = add nsw i32 %i.qg, -1                   ; 20 uses
  %.not = icmp eq i32 %i.qh, 0
  br i1 %.not, label %bb.fq, label %bb.dj

.loopexit752:                                     ; preds = %bb.g, %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %lpad.loopexit754 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp743

.loopexit.split-lp753:                            ; preds = %bb.c, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit.split-lp755 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp743

bb.dj:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.qi = mul nsw i32 %i.qh, %i.qh
  %i.qj = zext nneg i32 %i.qi to i64              ; 3 uses
  %i.qk = shl nuw nsw i64 %i.qj, 3                ; 3 uses
  %i.ql = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qk) #19
          to label %.noexc337 unwind label %bb.dl ; 11 uses

.noexc337:                                        ; preds = %bb.dj
  store double 0.000000e+00, ptr %i.ql, align 8, !tbaa !32
  %i.qm = add nsw i64 %i.qj, -1                   ; 3 uses
  %i.qn = icmp eq i64 %i.qm, 0                    ; 2 uses
  br i1 %i.qn, label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc337
  %i.qo = getelementptr i8, ptr %i.ql, i64 8
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.qm, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.qo, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !32
  br label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit

_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc337
  %i.qp = sext i32 %i.qh to i64                   ; 15 uses
  %i.qq = icmp slt i32 %i.qg, 1
  br i1 %i.qq, label %bb.dk, label %_ZNSt6vectorIPdSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i

bb.dk:                                            ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #18
          to label %.noexc341 unwind label %bb.dm

.noexc341:                                        ; preds = %bb.dk
  unreachable

_ZNSt6vectorIPdSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i: ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit
  %i.qr = shl nuw nsw i64 %i.qp, 3                ; 6 uses
  %i.qs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qr) #19
          to label %.noexc342 unwind label %bb.dm ; 12 uses

.noexc342:                                        ; preds = %_ZNSt6vectorIPdSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i
  store ptr null, ptr %i.qs, align 8, !tbaa !34
  %i.qt = add nsw i64 %i.qp, -1                   ; 3 uses
  %i.qu = icmp eq i64 %i.qt, 0                    ; 2 uses
  br i1 %i.qu, label %.lr.ph1344.preheader, label %_ZSt6fill_nIPPdmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPPdmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc342
  %i.qv = getelementptr i8, ptr %i.qs, i64 8
  %.idx.i.i.i.i.i.i.i339 = shl nuw nsw i64 %i.qt, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.qv, i8 0, i64 %.idx.i.i.i.i.i.i.i339, i1 false), !tbaa !34
  br label %.lr.ph1344.preheader

.lr.ph1344.preheader:                             ; preds = %.noexc342, %_ZSt6fill_nIPPdmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %wide.trip.count = zext nneg i32 %i.qh to i64   ; 7 uses
  %i.qw = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.qx = icmp ult i32 %i.qg, 5
  br i1 %i.qx, label %.lr.ph1344.epil.preheader, label %.lr.ph1344.preheader.new

.lr.ph1344.preheader.new:                         ; preds = %.lr.ph1344.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph1344

.lr.ph1349.preheader.unr-lcssa:                   ; preds = %.lr.ph1344
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph1349.preheader, label %.lr.ph1344.epil.preheader

.lr.ph1344.epil.preheader:                        ; preds = %.lr.ph1349.preheader.unr-lcssa, %.lr.ph1344.preheader
  %indvars.iv1737.epil.init = phi i64 [ 0, %.lr.ph1344.preheader ], [ %indvars.iv.next1738.3, %.lr.ph1349.preheader.unr-lcssa ]
  %lcmp.mod3216 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod3216)
  br label %.lr.ph1344.epil

.lr.ph1344.epil:                                  ; preds = %.lr.ph1344.epil, %.lr.ph1344.epil.preheader
  %indvars.iv1737.epil = phi i64 [ %indvars.iv1737.epil.init, %.lr.ph1344.epil.preheader ], [ %indvars.iv.next1738.epil, %.lr.ph1344.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph1344.epil.preheader ], [ %epil.iter.next, %.lr.ph1344.epil ]
  %i.qy = mul nuw nsw i64 %indvars.iv1737.epil, %i.qp
  %i.qz = getelementptr inbounds nuw [8 x i8], ptr %i.ql, i64 %i.qy
  %i.ra = getelementptr inbounds nuw [8 x i8], ptr %i.qs, i64 %indvars.iv1737.epil
  store ptr %i.qz, ptr %i.ra, align 8, !tbaa !34
  %indvars.iv.next1738.epil = add nuw nsw i64 %indvars.iv1737.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph1349.preheader, label %.lr.ph1344.epil, !llvm.loop !84

.lr.ph1349.preheader:                             ; preds = %.lr.ph1344.epil, %.lr.ph1349.preheader.unr-lcssa
  %wide.trip.count1746 = zext nneg i32 %i.qh to i64 ; 2 uses
  br label %.lr.ph1349

bb.dl:                                            ; preds = %bb.dj
  %i.rb = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp743

bb.dm:                                            ; preds = %_ZNSt6vectorIPdSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i, %bb.dk
  %i.rc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit424

.lr.ph1344:                                       ; preds = %.lr.ph1344, %.lr.ph1344.preheader.new
  %indvars.iv1737 = phi i64 [ 0, %.lr.ph1344.preheader.new ], [ %indvars.iv.next1738.3, %.lr.ph1344 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph1344.preheader.new ], [ %niter.next.3, %.lr.ph1344 ]
  %i.rd = mul nuw nsw i64 %indvars.iv1737, %i.qp
  %i.re = getelementptr inbounds nuw [8 x i8], ptr %i.ql, i64 %i.rd
  %i.rf = getelementptr inbounds nuw [8 x i8], ptr %i.qs, i64 %indvars.iv1737
  store ptr %i.re, ptr %i.rf, align 8, !tbaa !34
  %indvars.iv.next1738 = or disjoint i64 %indvars.iv1737, 1 ; 2 uses
  %i.rg = mul nuw nsw i64 %indvars.iv.next1738, %i.qp
  %i.rh = getelementptr inbounds nuw [8 x i8], ptr %i.ql, i64 %i.rg
  %i.ri = getelementptr inbounds nuw [8 x i8], ptr %i.qs, i64 %indvars.iv.next1738
  store ptr %i.rh, ptr %i.ri, align 8, !tbaa !34
  %indvars.iv.next1738.1 = or disjoint i64 %indvars.iv1737, 2 ; 2 uses
  %i.rj = mul nuw nsw i64 %indvars.iv.next1738.1, %i.qp
  %i.rk = getelementptr inbounds nuw [8 x i8], ptr %i.ql, i64 %i.rj
  %i.rl = getelementptr inbounds nuw [8 x i8], ptr %i.qs, i64 %indvars.iv.next1738.1
  store ptr %i.rk, ptr %i.rl, align 8, !tbaa !34
  %indvars.iv.next1738.2 = or disjoint i64 %indvars.iv1737, 3 ; 2 uses
  %i.rm = mul nuw nsw i64 %indvars.iv.next1738.2, %i.qp
  %i.rn = getelementptr inbounds nuw [8 x i8], ptr %i.ql, i64 %i.rm
  %i.ro = getelementptr inbounds nuw [8 x i8], ptr %i.qs, i64 %indvars.iv.next1738.2
  store ptr %i.rn, ptr %i.ro, align 8, !tbaa !34
  %indvars.iv.next1738.3 = add nuw nsw i64 %indvars.iv1737, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph1349.preheader.unr-lcssa, label %.lr.ph1344, !llvm.loop !85

.loopexit714:                                     ; preds = %_ZN7msdfgenL22splineToSplineDistanceEPKPNS_11EdgeSegmentEiiiii.exit, %.lr.ph1349
  %indvars.iv.next1742 = add nuw nsw i64 %indvars.iv1741, 1
  %exitcond1753.not = icmp eq i64 %indvars.iv.next1749, %wide.trip.count1746
  br i1 %exitcond1753.not, label %._crit_edge1350, label %.lr.ph1349, !llvm.loop !86

._crit_edge1350:                                  ; preds = %.loopexit714
  %i.rp = add nsw i32 %i.qg, -2
  %i.rq = mul nsw i32 %i.qh, %i.rp                ; 3 uses
  %i.rr = sdiv i32 %i.rq, 2
  %i.rs = sext i32 %i.rr to i64                   ; 2 uses
  %i.rt = icmp slt i32 %i.rq, -1
  br i1 %i.rt, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %._crit_edge1350
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #18
          to label %.noexc343 unwind label %bb.ed

.noexc343:                                        ; preds = %bb.dn
  unreachable

bb.do:                                            ; preds = %._crit_edge1350
  %i.ru = icmp slt i32 %i.rq, 2
  br i1 %i.ru, label %.lr.ph1364.preheader, label %_ZNSt12_Vector_baseIPKdSaIS1_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIPKdSaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.do
  %i.rv = shl nuw nsw i64 %i.rs, 3
  %i.rw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rv) #19
          to label %_ZNSt12_Vector_baseIPKdSaIS1_EE13_M_deallocateEPS1_m.exit.i unwind label %bb.ed ; 2 uses

_ZNSt12_Vector_baseIPKdSaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %_ZNSt12_Vector_baseIPKdSaIS1_EE11_M_allocateEm.exit.i
  %i.rx = getelementptr inbounds nuw [8 x i8], ptr %i.rw, i64 %i.rs
  br label %.lr.ph1364.preheader

.lr.ph1364.preheader:                             ; preds = %_ZNSt12_Vector_baseIPKdSaIS1_EE13_M_deallocateEPS1_m.exit.i, %bb.do
  %.sroa.0454.4 = phi ptr [ %i.rw, %_ZNSt12_Vector_baseIPKdSaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ null, %bb.do ] ; 2 uses
  %.sroa.27.4 = phi ptr [ %i.rx, %_ZNSt12_Vector_baseIPKdSaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ null, %bb.do ]
  %wide.trip.count1759 = zext i32 %i.qh to i64    ; 2 uses
  br label %.lr.ph1364

.lr.ph1349:                                       ; preds = %.lr.ph1349.preheader, %.loopexit714
  %indvars.iv1748 = phi i64 [ 0, %.lr.ph1349.preheader ], [ %indvars.iv.next1749, %.loopexit714 ] ; 5 uses
  %indvars.iv1741 = phi i64 [ 1, %.lr.ph1349.preheader ], [ %indvars.iv.next1742, %.loopexit714 ] ; 2 uses
  %i.ry = getelementptr inbounds nuw [8 x i8], ptr %i.qs, i64 %indvars.iv1748 ; 2 uses
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !34 ; 2 uses
  %i.sa = getelementptr inbounds nuw [8 x i8], ptr %i.rz, i64 %indvars.iv1748
  store double -1.000000e+00, ptr %i.sa, align 8, !tbaa !32
  %indvars.iv.next1749 = add nuw nsw i64 %indvars.iv1748, 1 ; 4 uses
  %i.sb = icmp slt i64 %indvars.iv.next1749, %i.qp
  br i1 %i.sb, label %.lr.ph1347, label %.loopexit714

.lr.ph1347:                                       ; preds = %.lr.ph1349
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0568.13, i64 %indvars.iv1748
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0568.13, i64 %indvars.iv.next1749
  br label %bb.dp

bb.dp:                                            ; preds = %.lr.ph1347, %_ZN7msdfgenL22splineToSplineDistanceEPKPNS_11EdgeSegmentEiiiii.exit
  %i.se = phi ptr [ %i.rz, %.lr.ph1347 ], [ %i.xh, %_ZN7msdfgenL22splineToSplineDistanceEPKPNS_11EdgeSegmentEiiiii.exit ]
  %indvars.iv1743 = phi i64 [ %indvars.iv1741, %.lr.ph1347 ], [ %indvars.iv.next1744, %_ZN7msdfgenL22splineToSplineDistanceEPKPNS_11EdgeSegmentEiiiii.exit ] ; 4 uses
  %i.sf = load i32, ptr %i.sc, align 4, !tbaa !19 ; 2 uses
  %i.sg = load i32, ptr %i.sd, align 4, !tbaa !19 ; 2 uses
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0568.13, i64 %indvars.iv1743
  %i.si = load i32, ptr %i.sh, align 4, !tbaa !19 ; 2 uses
  %indvars.iv.next1744 = add nuw nsw i64 %indvars.iv1743, 1 ; 3 uses
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0568.13, i64 %indvars.iv.next1744
  %i.sk = load i32, ptr %i.sj, align 4, !tbaa !19 ; 2 uses
  %i.sl = icmp slt i32 %i.sf, %i.sg
  %i.sm = icmp slt i32 %i.si, %i.sk
  %or.cond.i = and i1 %i.sl, %i.sm
  br i1 %or.cond.i, label %.preheader.preheader.i, label %_ZN7msdfgenL22splineToSplineDistanceEPKPNS_11EdgeSegmentEiiiii.exit

.preheader.preheader.i:                           ; preds = %bb.dp
  %i.sn = sext i32 %i.si to i64
  %i.so = sext i32 %i.sk to i64
  %i.sp = sext i32 %i.sf to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %indvars.iv29.i = phi i64 [ %i.sp, %.preheader.preheader.i ], [ %indvars.iv.next30.i, %._crit_edge.i ] ; 2 uses
  %.022.i = phi double [ f0x7FEFFFFFFFFFFFFF, %.preheader.preheader.i ], [ %.1.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.sq = fcmp une double %.022.i, 0.000000e+00
  br i1 %i.sq, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.sr = getelementptr inbounds [8 x i8], ptr %.sroa.0601.0.lcssa1867, i64 %indvars.iv29.i
  br label %bb.dq

._crit_edge.i:                                    ; preds = %_ZN7msdfgenL18edgeToEdgeDistanceERKNS_11EdgeSegmentES2_i.exit.i, %.preheader.i
  %.1.lcssa.i = phi double [ %.022.i, %.preheader.i ], [ %i.xd, %_ZN7msdfgenL18edgeToEdgeDistanceERKNS_11EdgeSegmentES2_i.exit.i ] ; 2 uses
  %indvars.iv.next30.i = add nsw i64 %indvars.iv29.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next30.i to i32
  %exitcond.not.i = icmp eq i32 %i.sg, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %_ZN7msdfgenL22splineToSplineDistanceEPKPNS_11EdgeSegmentEiiiii.exit.loopexit, label %.preheader.i, !llvm.loop !87

bb.dq:                                            ; preds = %_ZN7msdfgenL18edgeToEdgeDistanceERKNS_11EdgeSegmentES2_i.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.sn, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN7msdfgenL18edgeToEdgeDistanceERKNS_11EdgeSegmentES2_i.exit.i ] ; 2 uses
  %.120.i = phi double [ %.022.i, %.lr.ph.i ], [ %i.xd, %_ZN7msdfgenL18edgeToEdgeDistanceERKNS_11EdgeSegmentES2_i.exit.i ] ; 2 uses
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !27 ; 14 uses
  %i.st = getelementptr inbounds [8 x i8], ptr %.sroa.0601.0.lcssa1867, i64 %indvars.iv.i
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !27 ; 14 uses
  %i.sv = load ptr, ptr %i.ss, align 8, !tbaa !18
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 40
  %i.sx = load ptr, ptr %i.sw, align 8
  %i.sy = invoke { double, double } %i.sx(ptr noundef nonnull align 8 dereferenceable(12) %i.ss, double noundef 0.000000e+00)
          to label %.noexc345 unwind label %.loopexit.split-lp707.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !88 ; 2 uses

.noexc345:                                        ; preds = %bb.dq
  %i.sz = load ptr, ptr %i.su, align 8, !tbaa !18
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 40
  %i.tb = load ptr, ptr %i.ta, align 8
  %i.tc = invoke { double, double } %i.tb(ptr noundef nonnull align 8 dereferenceable(12) %i.su, double noundef 0.000000e+00)
          to label %.noexc346 unwind label %.loopexit.split-lp707.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !88 ; 2 uses

.noexc346:                                        ; preds = %.noexc345
  %i.td = extractvalue { double, double } %i.sy, 1
  %i.te = extractvalue { double, double } %i.sy, 0
  %i.tf = extractvalue { double, double } %i.tc, 0
  %i.tg = extractvalue { double, double } %i.tc, 1
  %i.th = fcmp oeq double %i.te, %i.tf
  %i.ti = fcmp oeq double %i.td, %i.tg
  %i.tj = select i1 %i.th, i1 %i.ti, i1 false
  br i1 %i.tj, label %_ZN7msdfgenL18edgeToEdgeDistanceERKNS_11EdgeSegmentES2_i.exit.i, label %bb.dr

bb.dr:                                            ; preds = %.noexc346
  %i.tk = load ptr, ptr %i.ss, align 8, !tbaa !18
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 40
  %i.tm = load ptr, ptr %i.tl, align 8
  %i.tn = invoke { double, double } %i.tm(ptr noundef nonnull align 8 dereferenceable(12) %i.ss, double noundef 0.000000e+00)
          to label %.noexc347 unwind label %.loopexit.split-lp707.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !88 ; 2 uses

.noexc347:                                        ; preds = %bb.dr
  %i.to = load ptr, ptr %i.su, align 8, !tbaa !18
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 40
  %i.tq = load ptr, ptr %i.tp, align 8
  %i.tr = invoke { double, double } %i.tq(ptr noundef nonnull align 8 dereferenceable(12) %i.su, double noundef 1.000000e+00)
          to label %.noexc348 unwind label %.loopexit.split-lp707.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !88 ; 2 uses

.noexc348:                                        ; preds = %.noexc347
  %i.ts = extractvalue { double, double } %i.tn, 1
  %i.tt = extractvalue { double, double } %i.tn, 0
  %i.tu = extractvalue { double, double } %i.tr, 0
  %i.tv = extractvalue { double, double } %i.tr, 1
  %i.tw = fcmp oeq double %i.tt, %i.tu
  %i.tx = fcmp oeq double %i.ts, %i.tv
  %i.ty = select i1 %i.tw, i1 %i.tx, i1 false
  br i1 %i.ty, label %_ZN7msdfgenL18edgeToEdgeDistanceERKNS_11EdgeSegmentES2_i.exit.i, label %bb.ds

bb.ds:                                            ; preds = %.noexc348
  %i.tz = load ptr, ptr %i.ss, align 8, !tbaa !18
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 40
  %i.ub = load ptr, ptr %i.ua, align 8
  %i.uc = invoke { double, double } %i.ub(ptr noundef nonnull align 8 dereferenceable(12) %i.ss, double noundef 1.000000e+00)
          to label %.noexc349 unwind label %.loopexit.split-lp707.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !88 ; 2 uses

.noexc349:                                        ; preds = %bb.ds
  %i.ud = load ptr, ptr %i.su, align 8, !tbaa !18
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 40
  %i.uf = load ptr, ptr %i.ue, align 8
  %i.ug = invoke { double, double } %i.uf(ptr noundef nonnull align 8 dereferenceable(12) %i.su, double noundef 0.000000e+00)
          to label %.noexc350 unwind label %.loopexit.split-lp707.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !88 ; 2 uses

.noexc350:                                        ; preds = %.noexc349
  %i.uh = extractvalue { double, double } %i.uc, 1
  %i.ui = extractvalue { double, double } %i.uc, 0
  %i.uj = extractvalue { double, double } %i.ug, 0
  %i.uk = extractvalue { double, double } %i.ug, 1
  %i.ul = fcmp oeq double %i.ui, %i.uj
  %i.um = fcmp oeq double %i.uh, %i.uk
  %i.un = select i1 %i.ul, i1 %i.um, i1 false
  br i1 %i.un, label %_ZN7msdfgenL18edgeToEdgeDistanceERKNS_11EdgeSegmentES2_i.exit.i, label %bb.dt

bb.dt:                                            ; preds = %.noexc350
  %i.uo = load ptr, ptr %i.ss, align 8, !tbaa !18
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 40
  %i.uq = load ptr, ptr %i.up, align 8
  %i.ur = invoke { double, double } %i.uq(ptr noundef nonnull align 8 dereferenceable(12) %i.ss, double noundef 1.000000e+00)
          to label %.noexc351 unwind label %.loopexit.split-lp707.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !88 ; 2 uses

.noexc351:                                        ; preds = %bb.dt
  %i.us = load ptr, ptr %i.su, align 8, !tbaa !18
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 40
  %i.uu = load ptr, ptr %i.ut, align 8
  %i.uv = invoke { double, double } %i.uu(ptr noundef nonnull align 8 dereferenceable(12) %i.su, double noundef 1.000000e+00)
          to label %.noexc352 unwind label %.loopexit.split-lp707.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !88 ; 2 uses

.noexc352:                                        ; preds = %.noexc351
  %i.uw = extractvalue { double, double } %i.ur, 1
  %i.ux = extractvalue { double, double } %i.ur, 0
  %i.uy = extractvalue { double, double } %i.uv, 0
  %i.uz = extractvalue { double, double } %i.uv, 1
  %i.va = fcmp oeq double %i.ux, %i.uy
  %i.vb = fcmp oeq double %i.uw, %i.uz
  %i.vc = select i1 %i.va, i1 %i.vb, i1 false
  br i1 %i.vc, label %_ZN7msdfgenL18edgeToEdgeDistanceERKNS_11EdgeSegmentES2_i.exit.i, label %bb.du

bb.du:                                            ; preds = %.noexc352
  %i.vd = load ptr, ptr %i.su, align 8, !tbaa !18
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 40
  %i.vf = load ptr, ptr %i.ve, align 8
  %i.vg = invoke { double, double } %i.vf(ptr noundef nonnull align 8 dereferenceable(12) %i.su, double noundef 0.000000e+00)
          to label %.noexc353 unwind label %.loopexit.split-lp707.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !88 ; 2 uses

.noexc353:                                        ; preds = %bb.du
  %i.vh = load ptr, ptr %i.ss, align 8, !tbaa !18
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 40
  %i.vj = load ptr, ptr %i.vi, align 8
  %i.vk = invoke { double, double } %i.vj(ptr noundef nonnull align 8 dereferenceable(12) %i.ss, double noundef 0.000000e+00)
          to label %.noexc354 unwind label %.loopexit.split-lp707.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !88 ; 2 uses

.noexc354:                                        ; preds = %.noexc353
  %i.vl = extractvalue { double, double } %i.vg, 1
  %i.vm = extractvalue { double, double } %i.vg, 0
  %i.vn = extractvalue { double, double } %i.vk, 0
  %i.vo = extractvalue { double, double } %i.vk, 1
  %i.vp = fsub double %i.vm, %i.vn                ; 2 uses
  %i.vq = fsub double %i.vl, %i.vo                ; 2 uses
  %i.vr = fmul double %i.vq, %i.vq
  %i.vs = call double @llvm.fmuladd.f64(double %i.vp, double %i.vp, double %i.vr)
  %i.vt = call noundef double @sqrt(double noundef %i.vs) #16
  br label %bb.dv

bb.dv:                                            ; preds = %.noexc356, %.noexc354
  %.05560.i.i = phi double [ %i.vt, %.noexc354 ], [ %i.wj, %.noexc356 ] ; 2 uses
  %.05659.i.i = phi i32 [ 0, %.noexc354 ], [ %i.wk, %.noexc356 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.vu = uitofp nneg i32 %.05659.i.i to double
  %i.vv = fmul nnan double %i.vu, 6.250000e-02    ; 2 uses
  store double %i.vv, ptr %i.a, align 8, !tbaa !32
  %i.vw = load ptr, ptr %i.su, align 8, !tbaa !18
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 40
  %i.vy = load ptr, ptr %i.vx, align 8
  %i.vz = invoke { double, double } %i.vy(ptr noundef nonnull align 8 dereferenceable(12) %i.su, double noundef %i.vv)
          to label %.noexc355 unwind label %.loopexit.split-lp707.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !88 ; 2 uses

.noexc355:                                        ; preds = %bb.dv
  %i.wa = extractvalue { double, double } %i.vz, 0
  %i.wb = extractvalue { double, double } %i.vz, 1
  %i.wc = load ptr, ptr %i.ss, align 8, !tbaa !18
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 64
  %i.we = load ptr, ptr %i.wd, align 8
  %i.wf = invoke { double, double } %i.we(ptr noundef nonnull align 8 dereferenceable(12) %i.ss, double %i.wa, double %i.wb, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc356 unwind label %.loopexit.split-lp707.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !88

.noexc356:                                        ; preds = %.noexc355
  %i.wg = extractvalue { double, double } %i.wf, 0
  %i.wh = call double @llvm.fabs.f64(double %i.wg) ; 2 uses
  %i.wi = fcmp olt double %i.wh, %.05560.i.i
  %i.wj = select i1 %i.wi, double %i.wh, double %.05560.i.i ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.wk = add nuw nsw i32 %.05659.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.wk, 17
  br i1 %exitcond.not.i.i, label %.preheader.i.i, label %bb.dv, !llvm.loop !89

.preheader.i.i:                                   ; preds = %.noexc356, %.noexc358
  %.162.i.i = phi double [ %i.xa, %.noexc358 ], [ %i.wj, %.noexc356 ] ; 2 uses
  %.05761.i.i = phi i32 [ %i.xb, %.noexc358 ], [ 0, %.noexc356 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.wl = uitofp nneg i32 %.05761.i.i to double
  %i.wm = fmul nnan double %i.wl, 6.250000e-02    ; 2 uses
  store double %i.wm, ptr %i.b, align 8, !tbaa !32
  %i.wn = load ptr, ptr %i.ss, align 8, !tbaa !18
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 40
  %i.wp = load ptr, ptr %i.wo, align 8
  %i.wq = invoke { double, double } %i.wp(ptr noundef nonnull align 8 dereferenceable(12) %i.ss, double noundef %i.wm)
          to label %.noexc357 unwind label %.loopexit.split-lp707.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !88 ; 2 uses

.noexc357:                                        ; preds = %.preheader.i.i
  %i.wr = extractvalue { double, double } %i.wq, 0
  %i.ws = extractvalue { double, double } %i.wq, 1
  %i.wt = load ptr, ptr %i.su, align 8, !tbaa !18
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 64
  %i.wv = load ptr, ptr %i.wu, align 8
  %i.ww = invoke { double, double } %i.wv(ptr noundef nonnull align 8 dereferenceable(12) %i.su, double %i.wr, double %i.ws, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.noexc358 unwind label %.loopexit.split-lp707.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !88

.noexc358:                                        ; preds = %.noexc357
  %i.wx = extractvalue { double, double } %i.ww, 0
  %i.wy = call double @llvm.fabs.f64(double %i.wx) ; 2 uses
  %i.wz = fcmp olt double %i.wy, %.162.i.i
  %i.xa = select i1 %i.wz, double %i.wy, double %.162.i.i ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %i.xb = add nuw nsw i32 %.05761.i.i, 1          ; 2 uses
  %exitcond64.not.i.i = icmp eq i32 %i.xb, 17
  br i1 %exitcond64.not.i.i, label %_ZN7msdfgenL18edgeToEdgeDistanceERKNS_11EdgeSegmentES2_i.exit.i, label %.preheader.i.i, !llvm.loop !90

_ZN7msdfgenL18edgeToEdgeDistanceERKNS_11EdgeSegmentES2_i.exit.i: ; preds = %.noexc358, %.noexc352, %.noexc350, %.noexc348, %.noexc346
  %.0.i.i = phi double [ 0.000000e+00, %.noexc346 ], [ 0.000000e+00, %.noexc352 ], [ 0.000000e+00, %.noexc350 ], [ 0.000000e+00, %.noexc348 ], [ %i.xa, %.noexc358 ] ; 2 uses
  %i.xc = fcmp olt double %.0.i.i, %.120.i
  %i.xd = select i1 %i.xc, double %.0.i.i, double %.120.i ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.xe = icmp slt i64 %indvars.iv.next.i, %i.so
  %i.xf = fcmp une double %i.xd, 0.000000e+00
  %i.xg = select i1 %i.xe, i1 %i.xf, i1 false
  br i1 %i.xg, label %bb.dq, label %._crit_edge.i, !llvm.loop !91

_ZN7msdfgenL22splineToSplineDistanceEPKPNS_11EdgeSegmentEiiiii.exit.loopexit: ; preds = %._crit_edge.i
  %.pre = load ptr, ptr %i.ry, align 8, !tbaa !34
  br label %_ZN7msdfgenL22splineToSplineDistanceEPKPNS_11EdgeSegmentEiiiii.exit

_ZN7msdfgenL22splineToSplineDistanceEPKPNS_11EdgeSegmentEiiiii.exit: ; preds = %_ZN7msdfgenL22splineToSplineDistanceEPKPNS_11EdgeSegmentEiiiii.exit.loopexit, %bb.dp
  %i.xh = phi ptr [ %i.se, %bb.dp ], [ %.pre, %_ZN7msdfgenL22splineToSplineDistanceEPKPNS_11EdgeSegmentEiiiii.exit.loopexit ] ; 2 uses
  %.0.lcssa.i = phi double [ f0x7FEFFFFFFFFFFFFF, %bb.dp ], [ %.1.lcssa.i, %_ZN7msdfgenL22splineToSplineDistanceEPKPNS_11EdgeSegmentEiiiii.exit.loopexit ] ; 2 uses
  %i.xi = getelementptr inbounds nuw [8 x i8], ptr %i.xh, i64 %indvars.iv1743
  store double %.0.lcssa.i, ptr %i.xi, align 8, !tbaa !32
  %i.xj = getelementptr inbounds nuw [8 x i8], ptr %i.qs, i64 %indvars.iv1743
  %i.xk = load ptr, ptr %i.xj, align 8, !tbaa !34
  %i.xl = getelementptr inbounds nuw [8 x i8], ptr %i.xk, i64 %indvars.iv1748
  store double %.0.lcssa.i, ptr %i.xl, align 8, !tbaa !32
  %exitcond1747.not = icmp eq i64 %indvars.iv.next1744, %wide.trip.count1746
  br i1 %exitcond1747.not, label %.loopexit714, label %bb.dp, !llvm.loop !92

.loopexit.split-lp707.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc357, %.preheader.i.i, %.noexc355, %bb.dv, %.noexc353, %bb.du, %.noexc351, %bb.dt, %.noexc349, %bb.ds, %.noexc347, %bb.dr, %.noexc345, %bb.dq
  %lpad.loopexit.split-lp2756 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPdSaIS0_EED2Ev.exit422

.loopexit:                                        ; preds = %_ZNSt6vectorIPKdSaIS1_EE9push_backEOS1_.exit, %.lr.ph1364
  %.sroa.0454.1.lcssa = phi ptr [ %.sroa.0454.01360, %.lr.ph1364 ], [ %.sroa.0454.5, %_ZNSt6vectorIPKdSaIS1_EE9push_backEOS1_.exit ] ; 11 uses
  %.sroa.18.1.lcssa = phi ptr [ %.sroa.18.01361, %.lr.ph1364 ], [ %.sroa.18.3, %_ZNSt6vectorIPKdSaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  %.sroa.27.1.lcssa = phi ptr [ %.sroa.27.01362, %.lr.ph1364 ], [ %.sroa.27.5, %_ZNSt6vectorIPKdSaIS1_EE9push_backEOS1_.exit ] ; 5 uses
  %indvars.iv.next1755 = add nuw nsw i64 %indvars.iv1754, 1
  %exitcond1766.not = icmp eq i64 %indvars.iv.next1762, %wide.trip.count1759
  br i1 %exitcond1766.not, label %._crit_edge1365, label %.lr.ph1364, !llvm.loop !93

._crit_edge1365:                                  ; preds = %.loopexit
  %i.xm = ptrtoint ptr %.sroa.18.1.lcssa to i64
  %i.xn = ptrtoint ptr %.sroa.0454.1.lcssa to i64 ; 2 uses
  %i.xo = sub i64 %i.xm, %i.xn
  %i.xp = ashr exact i64 %i.xo, 3                 ; 3 uses
  %i.xq = trunc i64 %i.xp to i32                  ; 4 uses
  %i.xr = icmp eq ptr %.sroa.0454.1.lcssa, %.sroa.18.1.lcssa
  br i1 %i.xr, label %bb.ee, label %bb.ec

.lr.ph1364:                                       ; preds = %.lr.ph1364.preheader, %.loopexit
  %indvars.iv1761 = phi i64 [ 0, %.lr.ph1364.preheader ], [ %indvars.iv.next1762, %.loopexit ] ; 2 uses
  %indvars.iv1754 = phi i64 [ 1, %.lr.ph1364.preheader ], [ %indvars.iv.next1755, %.loopexit ] ; 2 uses
  %.sroa.27.01362 = phi ptr [ %.sroa.27.4, %.lr.ph1364.preheader ], [ %.sroa.27.1.lcssa, %.loopexit ] ; 2 uses
  %.sroa.18.01361 = phi ptr [ %.sroa.0454.4, %.lr.ph1364.preheader ], [ %.sroa.18.1.lcssa, %.loopexit ] ; 2 uses
  %.sroa.0454.01360 = phi ptr [ %.sroa.0454.4, %.lr.ph1364.preheader ], [ %.sroa.0454.1.lcssa, %.loopexit ] ; 2 uses
  %indvars.iv.next1762 = add nuw nsw i64 %indvars.iv1761, 1 ; 3 uses
  %i.xs = icmp slt i64 %indvars.iv.next1762, %i.qp
  br i1 %i.xs, label %.lr.ph1356, label %.loopexit

.lr.ph1356:                                       ; preds = %.lr.ph1364
  %i.xt = getelementptr inbounds nuw [8 x i8], ptr %i.qs, i64 %indvars.iv1761
  br label %bb.dw

bb.dw:                                            ; preds = %.lr.ph1356, %_ZNSt6vectorIPKdSaIS1_EE9push_backEOS1_.exit
  %indvars.iv1756 = phi i64 [ %indvars.iv1754, %.lr.ph1356 ], [ %indvars.iv.next1757, %_ZNSt6vectorIPKdSaIS1_EE9push_backEOS1_.exit ] ; 2 uses
  %.sroa.27.11353 = phi ptr [ %.sroa.27.01362, %.lr.ph1356 ], [ %.sroa.27.5, %_ZNSt6vectorIPKdSaIS1_EE9push_backEOS1_.exit ] ; 4 uses
  %.sroa.18.11352 = phi ptr [ %.sroa.18.01361, %.lr.ph1356 ], [ %.sroa.18.3, %_ZNSt6vectorIPKdSaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  %.sroa.0454.11351 = phi ptr [ %.sroa.0454.01360, %.lr.ph1356 ], [ %.sroa.0454.5, %_ZNSt6vectorIPKdSaIS1_EE9push_backEOS1_.exit ] ; 6 uses
  %i.xu = load ptr, ptr %i.xt, align 8, !tbaa !34
  %i.xv = getelementptr inbounds nuw [8 x i8], ptr %i.xu, i64 %indvars.iv1756 ; 2 uses
  %.not.i.i359 = icmp eq ptr %.sroa.18.11352, %.sroa.27.11353
  br i1 %.not.i.i359, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  store ptr %i.xv, ptr %.sroa.18.11352, align 8, !tbaa !34
  br label %_ZNSt6vectorIPKdSaIS1_EE9push_backEOS1_.exit

bb.dy:                                            ; preds = %bb.dw
  %i.xw = ptrtoint ptr %.sroa.27.11353 to i64
  %i.xx = ptrtoint ptr %.sroa.0454.11351 to i64
  %i.xy = sub i64 %i.xw, %i.xx                    ; 6 uses
  %i.xz = icmp eq i64 %i.xy, 9223372036854775800
  br i1 %i.xz, label %bb.dz, label %_ZNKSt6vectorIPKdSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.dz:                                            ; preds = %bb.dy
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
          to label %.noexc363 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc363:                                        ; preds = %bb.dz
  unreachable

_ZNKSt6vectorIPKdSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.dy
  %i.ya = ashr exact i64 %i.xy, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i360 = call i64 @llvm.umax.i64(i64 %i.ya, i64 1)
  %i.yb = add nsw i64 %.sroa.speculated.i.i.i.i360, %i.ya ; 2 uses
  %i.yc = icmp ult i64 %i.yb, %i.ya
  %i.yd = call i64 @llvm.umin.i64(i64 %i.yb, i64 1152921504606846975)
  %i.ye = select i1 %i.yc, i64 1152921504606846975, i64 %i.yd ; 3 uses
  %.not.i.i.i.i361 = icmp ne i64 %i.ye, 0
  call void @llvm.assume(i1 %.not.i.i.i.i361)
  %i.yf = shl nuw nsw i64 %i.ye, 3
  %i.yg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yf) #19
          to label %.noexc364 unwind label %.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc364:                                        ; preds = %_ZNKSt6vectorIPKdSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.yh = getelementptr inbounds i8, ptr %i.yg, i64 %i.xy ; 2 uses
  store ptr %i.xv, ptr %i.yh, align 8, !tbaa !34
  %i.yi = icmp sgt i64 %i.xy, 0
  br i1 %i.yi, label %bb.ea, label %_ZNSt6vectorIPKdSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.ea:                                            ; preds = %.noexc364
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.yg, ptr align 8 %.sroa.0454.11351, i64 %i.xy, i1 false)
  br label %_ZNSt6vectorIPKdSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIPKdSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.ea, %.noexc364
  %.not.i17.i.i.i362 = icmp eq ptr %.sroa.0454.11351, null
  br i1 %.not.i17.i.i.i362, label %_ZNSt6vectorIPKdSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.eb

bb.eb:                                            ; preds = %_ZNSt6vectorIPKdSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0454.11351, i64 noundef %i.xy) #17
  br label %_ZNSt6vectorIPKdSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIPKdSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.eb, %_ZNSt6vectorIPKdSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %i.yj = getelementptr inbounds nuw [8 x i8], ptr %i.yg, i64 %i.ye
  br label %_ZNSt6vectorIPKdSaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIPKdSaIS1_EE9push_backEOS1_.exit:     ; preds = %_ZNSt6vectorIPKdSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.dx
  %.sroa.0454.5 = phi ptr [ %i.yg, %_ZNSt6vectorIPKdSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.0454.11351, %bb.dx ] ; 2 uses
  %.pn688 = phi ptr [ %i.yh, %_ZNSt6vectorIPKdSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.18.11352, %bb.dx ]
  %.sroa.27.5 = phi ptr [ %i.yj, %_ZNSt6vectorIPKdSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.27.11353, %bb.dx ] ; 2 uses
  %.sroa.18.3 = getelementptr inbounds nuw i8, ptr %.pn688, i64 8 ; 2 uses
  %indvars.iv.next1757 = add nuw nsw i64 %indvars.iv1756, 1 ; 2 uses
  %exitcond1760.not = icmp eq i64 %indvars.iv.next1757, %wide.trip.count1759
  br i1 %exitcond1760.not, label %.loopexit, label %bb.dw, !llvm.loop !94

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZNKSt6vectorIPKdSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.dz
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.fu

bb.ec:                                            ; preds = %._crit_edge1365
  invoke void @qsort(ptr noundef nonnull %.sroa.0454.1.lcssa, i64 noundef %i.xp, i64 noundef 8, ptr noundef nonnull @_ZN7msdfgenL12cmpDoublePtrEPKvS1_)
          to label %bb.ee unwind label %bb.ed

bb.ed:                                            ; preds = %_ZNSt12_Vector_baseIPKdSaIS1_EE11_M_allocateEm.exit.i, %bb.dn, %bb.ec
  %.sroa.0454.2 = phi ptr [ null, %bb.dn ], [ %.sroa.0454.1.lcssa, %bb.ec ], [ null, %_ZNSt12_Vector_baseIPKdSaIS1_EE11_M_allocateEm.exit.i ]
  %.sroa.27.2 = phi ptr [ null, %bb.dn ], [ %.sroa.27.1.lcssa, %bb.ec ], [ null, %_ZNSt12_Vector_baseIPKdSaIS1_EE11_M_allocateEm.exit.i ]
  %i.yk = landingpad { ptr, i32 }
          cleanup
  br label %bb.fu

bb.ee:                                            ; preds = %._crit_edge1365, %bb.ec
  %i.yl = shl nuw nsw i64 %i.qj, 2                ; 3 uses
  %i.ym = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yl) #19
          to label %.noexc368 unwind label %bb.ef ; 9 uses

.noexc368:                                        ; preds = %bb.ee
  store i32 0, ptr %i.ym, align 4, !tbaa !19
  br i1 %i.qn, label %_ZNSt6vectorIPiSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc368
  %i.yn = getelementptr i8, ptr %i.ym, i64 4
  %.idx.i.i.i.i.i.i.i366 = shl nuw nsw i64 %i.qm, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.yn, i8 0, i64 %.idx.i.i.i.i.i.i.i366, i1 false), !tbaa !19
  br label %_ZNSt6vectorIPiSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i

_ZNSt6vectorIPiSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc368
  %i.yo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qr) #19
          to label %.noexc373 unwind label %bb.eg ; 17 uses

.noexc373:                                        ; preds = %_ZNSt6vectorIPiSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i
  store ptr null, ptr %i.yo, align 8, !tbaa !36
  br i1 %i.qu, label %.lr.ph1370.preheader, label %_ZSt6fill_nIPPimS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPPimS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc373
  %i.yp = getelementptr i8, ptr %i.yo, i64 8
  %.idx.i.i.i.i.i.i.i370 = shl nuw nsw i64 %i.qt, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.yp, i8 0, i64 %.idx.i.i.i.i.i.i.i370, i1 false), !tbaa !36
  br label %.lr.ph1370.preheader

.lr.ph1370.preheader:                             ; preds = %.noexc373, %_ZSt6fill_nIPPimS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %smax = call i32 @llvm.smax.i32(i32 %i.qh, i32 1)
  %wide.trip.count1768 = zext nneg i32 %smax to i64 ; 2 uses
  %xtraiter3217 = and i64 %wide.trip.count1768, 3 ; 3 uses
  %i.yq = icmp slt i32 %i.qg, 5
  br i1 %i.yq, label %.lr.ph1370.epil.preheader, label %.lr.ph1370.preheader.new

.lr.ph1370.preheader.new:                         ; preds = %.lr.ph1370.preheader
  %unroll_iter3221 = and i64 %wide.trip.count1768, 2147483644
  br label %.lr.ph1370

.preheader701.unr-lcssa:                          ; preds = %.lr.ph1370
  %lcmp.mod3219.not = icmp eq i64 %xtraiter3217, 0
  br i1 %lcmp.mod3219.not, label %.preheader701, label %.lr.ph1370.epil.preheader

.lr.ph1370.epil.preheader:                        ; preds = %.preheader701.unr-lcssa, %.lr.ph1370.preheader
  %indvars.iv1767.epil.init = phi i64 [ 0, %.lr.ph1370.preheader ], [ %indvars.iv.next1768.3, %.preheader701.unr-lcssa ]
  %lcmp.mod3220 = icmp ne i64 %xtraiter3217, 0
  call void @llvm.assume(i1 %lcmp.mod3220)
  br label %.lr.ph1370.epil

.lr.ph1370.epil:                                  ; preds = %.lr.ph1370.epil, %.lr.ph1370.epil.preheader
  %indvars.iv1767.epil = phi i64 [ %indvars.iv1767.epil.init, %.lr.ph1370.epil.preheader ], [ %indvars.iv.next1768.epil, %.lr.ph1370.epil ] ; 3 uses
  %epil.iter3218 = phi i64 [ 0, %.lr.ph1370.epil.preheader ], [ %epil.iter3218.next, %.lr.ph1370.epil ]
  %i.yr = mul nuw nsw i64 %indvars.iv1767.epil, %i.qp
  %i.ys = getelementptr inbounds nuw [4 x i8], ptr %i.ym, i64 %i.yr
  %i.yt = getelementptr inbounds nuw [8 x i8], ptr %i.yo, i64 %indvars.iv1767.epil
  store ptr %i.ys, ptr %i.yt, align 8, !tbaa !36
  %indvars.iv.next1768.epil = add nuw nsw i64 %indvars.iv1767.epil, 1
  %epil.iter3218.next = add i64 %epil.iter3218, 1 ; 2 uses
  %epil.iter3218.cmp.not = icmp eq i64 %epil.iter3218.next, %xtraiter3217
  br i1 %epil.iter3218.cmp.not, label %.preheader701, label %.lr.ph1370.epil, !llvm.loop !95

.preheader701:                                    ; preds = %.lr.ph1370.epil, %.preheader701.unr-lcssa
  %i.yu = icmp sgt i32 %i.xq, 0
  br i1 %i.yu, label %.lr.ph1372, label %.critedge

.lr.ph1372:                                       ; preds = %.preheader701
  %i.yv = ptrtoint ptr %i.ql to i64
  %wide.trip.count1776 = and i64 %i.xp, 2147483647
  br label %bb.eh

bb.ef:                                            ; preds = %bb.ee
  %i.yw = landingpad { ptr, i32 }
          cleanup
  br label %bb.fu

bb.eg:                                            ; preds = %_ZNSt6vectorIPiSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i
  %i.yx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit418

.lr.ph1370:                                       ; preds = %.lr.ph1370, %.lr.ph1370.preheader.new
  %indvars.iv1767 = phi i64 [ 0, %.lr.ph1370.preheader.new ], [ %indvars.iv.next1768.3, %.lr.ph1370 ] ; 6 uses
  %niter3222 = phi i64 [ 0, %.lr.ph1370.preheader.new ], [ %niter3222.next.3, %.lr.ph1370 ]
  %i.yy = mul nuw nsw i64 %indvars.iv1767, %i.qp
  %i.yz = getelementptr inbounds nuw [4 x i8], ptr %i.ym, i64 %i.yy
  %i.za = getelementptr inbounds nuw [8 x i8], ptr %i.yo, i64 %indvars.iv1767
  store ptr %i.yz, ptr %i.za, align 8, !tbaa !36
  %indvars.iv.next1768 = or disjoint i64 %indvars.iv1767, 1 ; 2 uses
  %i.zb = mul nuw nsw i64 %indvars.iv.next1768, %i.qp
  %i.zc = getelementptr inbounds nuw [4 x i8], ptr %i.ym, i64 %i.zb
  %i.zd = getelementptr inbounds nuw [8 x i8], ptr %i.yo, i64 %indvars.iv.next1768
  store ptr %i.zc, ptr %i.zd, align 8, !tbaa !36
  %indvars.iv.next1768.1 = or disjoint i64 %indvars.iv1767, 2 ; 2 uses
  %i.ze = mul nuw nsw i64 %indvars.iv.next1768.1, %i.qp
  %i.zf = getelementptr inbounds nuw [4 x i8], ptr %i.ym, i64 %i.ze
  %i.zg = getelementptr inbounds nuw [8 x i8], ptr %i.yo, i64 %indvars.iv.next1768.1
  store ptr %i.zf, ptr %i.zg, align 8, !tbaa !36
  %indvars.iv.next1768.2 = or disjoint i64 %indvars.iv1767, 3 ; 2 uses
  %i.zh = mul nuw nsw i64 %indvars.iv.next1768.2, %i.qp
  %i.zi = getelementptr inbounds nuw [4 x i8], ptr %i.ym, i64 %i.zh
  %i.zj = getelementptr inbounds nuw [8 x i8], ptr %i.yo, i64 %indvars.iv.next1768.2
  store ptr %i.zi, ptr %i.zj, align 8, !tbaa !36
  %indvars.iv.next1768.3 = add nuw nsw i64 %indvars.iv1767, 4 ; 2 uses
  %niter3222.next.3 = add i64 %niter3222, 4       ; 2 uses
  %niter3222.ncmp.3 = icmp eq i64 %niter3222.next.3, %unroll_iter3221
  br i1 %niter3222.ncmp.3, label %.preheader701.unr-lcssa, label %.lr.ph1370, !llvm.loop !96

bb.eh:                                            ; preds = %.lr.ph1372, %bb.ei
  %indvars.iv1773 = phi i64 [ 0, %.lr.ph1372 ], [ %indvars.iv.next1774, %bb.ei ] ; 3 uses
  %i.zk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0454.1.lcssa, i64 %indvars.iv1773
  %i.zl = load ptr, ptr %i.zk, align 8, !tbaa !34 ; 2 uses
  %i.zm = load double, ptr %i.zl, align 8, !tbaa !32
  %i.zn = fcmp oeq double %i.zm, 0.000000e+00
  br i1 %i.zn, label %bb.ei, label %.critedge.loopexit.split.loop.exit2301

bb.ei:                                            ; preds = %bb.eh
  %i.zo = ptrtoint ptr %i.zl to i64
  %i.zp = sub i64 %i.zo, %i.yv
  %i.zq = lshr exact i64 %i.zp, 3
  %i.zr = trunc i64 %i.zq to i32                  ; 2 uses
  %i.zs = sdiv i32 %i.zr, %i.qh
  %i.zt = srem i32 %i.zr, %i.qh
  %i.zu = sext i32 %i.zs to i64                   ; 2 uses
  %i.zv = getelementptr inbounds nuw [8 x i8], ptr %i.yo, i64 %i.zu
  %i.zw = load ptr, ptr %i.zv, align 8, !tbaa !36
  %i.zx = sext i32 %i.zt to i64                   ; 2 uses
  %i.zy = getelementptr inbounds [4 x i8], ptr %i.zw, i64 %i.zx
  store i32 1, ptr %i.zy, align 4, !tbaa !19
  %i.zz = getelementptr inbounds nuw [8 x i8], ptr %i.yo, i64 %i.zx
  %i.aaa = load ptr, ptr %i.zz, align 8, !tbaa !36
  %i.aab = getelementptr inbounds [4 x i8], ptr %i.aaa, i64 %i.zu
  store i32 1, ptr %i.aab, align 4, !tbaa !19
  %indvars.iv.next1774 = add nuw nsw i64 %indvars.iv1773, 1 ; 2 uses
  %exitcond1777.not = icmp eq i64 %indvars.iv.next1774, %wide.trip.count1776
  br i1 %exitcond1777.not, label %.critedge, label %bb.eh, !llvm.loop !97

.critedge.loopexit.split.loop.exit2301:           ; preds = %bb.eh
  %i.aac = trunc nuw nsw i64 %indvars.iv1773 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.ei, %.critedge.loopexit.split.loop.exit2301, %.preheader701
  %.0127.lcssa = phi i32 [ 0, %.preheader701 ], [ %i.aac, %.critedge.loopexit.split.loop.exit2301 ], [ %i.xq, %bb.ei ] ; 2 uses
  %i.aad = shl nuw nsw i32 %i.qh, 1
  %i.aae = zext nneg i32 %i.aad to i64
  %i.aaf = shl nuw nsw i64 %i.aae, 2              ; 4 uses
  %i.aag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aaf) #19
          to label %.preheader.preheader.i382 unwind label %bb.fn ; 19 uses

.preheader.preheader.i382:                        ; preds = %.critedge
  store i32 0, ptr %i.aag, align 4, !tbaa !19
  %i.aah = getelementptr i8, ptr %i.aag, i64 4
  %.idx.i.i.i.i.i.i.i376 = add nsw i64 %i.aaf, -4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.aah, i8 0, i64 %.idx.i.i.i.i.i.i.i376, i1 false), !tbaa !19
  %wide.trip.count34.i = zext nneg i32 %i.qh to i64
  br label %.preheader.i383

.preheader.i383:                                  ; preds = %bb.eu, %.preheader.preheader.i382
  %indvars.iv31.i = phi i64 [ 0, %.preheader.preheader.i382 ], [ %indvars.iv.next32.i, %bb.eu ] ; 9 uses
  %.02226.i = phi i64 [ %2, %.preheader.preheader.i382 ], [ %.123.i, %bb.eu ] ; 11 uses
  %.not29.i = icmp eq i64 %indvars.iv31.i, 0
  br i1 %.not29.i, label %._crit_edge.thread.i, label %.lr.ph.i384

.lr.ph.i384:                                      ; preds = %.preheader.i383
  %i.aai = getelementptr inbounds nuw [8 x i8], ptr %i.yo, i64 %indvars.iv31.i
  %i.aaj = load ptr, ptr %i.aai, align 8, !tbaa !36 ; 3 uses
  %xtraiter3223 = and i64 %indvars.iv31.i, 1
  %i.aak = icmp eq i64 %indvars.iv31.i, 1
  br i1 %i.aak, label %.epil.preheader, label %.lr.ph.i384.new

.lr.ph.i384.new:                                  ; preds = %.lr.ph.i384
  %unroll_iter3228 = and i64 %indvars.iv31.i, 9223372036854775806
  br label %bb.ek

._crit_edge.i389.unr-lcssa:                       ; preds = %bb.eo
  %lcmp.mod3225.not = icmp eq i64 %xtraiter3223, 0
  br i1 %lcmp.mod3225.not, label %._crit_edge.i389, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i389.unr-lcssa, %.lr.ph.i384
  %indvars.iv.i385.epil.init = phi i64 [ 0, %.lr.ph.i384 ], [ %indvars.iv.next.i387.1, %._crit_edge.i389.unr-lcssa ] ; 2 uses
  %.01724.i.epil.init = phi i32 [ 7, %.lr.ph.i384 ], [ %.1.i.1, %._crit_edge.i389.unr-lcssa ] ; 2 uses
  %lcmp.mod3227 = trunc i64 %indvars.iv31.i to i1
  call void @llvm.assume(i1 %lcmp.mod3227)
  %i.aal = getelementptr inbounds nuw [4 x i8], ptr %i.aaj, i64 %indvars.iv.i385.epil.init
  %i.aam = load i32, ptr %i.aal, align 4, !tbaa !19
  %.not.i386.epil = icmp eq i32 %i.aam, 0
  br i1 %.not.i386.epil, label %._crit_edge.i389, label %bb.ej

bb.ej:                                            ; preds = %.epil.preheader
  %i.aan = getelementptr inbounds nuw [4 x i8], ptr %i.aag, i64 %indvars.iv.i385.epil.init
  %i.aao = load i32, ptr %i.aan, align 4, !tbaa !19
  %i.aap = shl nuw i32 1, %i.aao
  %i.aaq = xor i32 %i.aap, -1
  %i.aar = and i32 %.01724.i.epil.init, %i.aaq
  br label %._crit_edge.i389

._crit_edge.i389:                                 ; preds = %.epil.preheader, %bb.ej, %._crit_edge.i389.unr-lcssa
  %.1.i.lcssa = phi i32 [ %.1.i.1, %._crit_edge.i389.unr-lcssa ], [ %i.aar, %bb.ej ], [ %.01724.i.epil.init, %.epil.preheader ]
  switch i32 %.1.i.lcssa, label %bb.eu [
    i32 7, label %._crit_edge.thread.i
    i32 2, label %bb.ep
    i32 3, label %bb.eq
    i32 4, label %bb.er
    i32 5, label %bb.es
    i32 6, label %bb.et
  ]

bb.ek:                                            ; preds = %bb.eo, %.lr.ph.i384.new
  %indvars.iv.i385 = phi i64 [ 0, %.lr.ph.i384.new ], [ %indvars.iv.next.i387.1, %bb.eo ] ; 4 uses
  %.01724.i = phi i32 [ 7, %.lr.ph.i384.new ], [ %.1.i.1, %bb.eo ] ; 2 uses
  %niter3229 = phi i64 [ 0, %.lr.ph.i384.new ], [ %niter3229.next.1, %bb.eo ]
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr %i.aaj, i64 %indvars.iv.i385
  %i.aat = load i32, ptr %i.aas, align 4, !tbaa !19
  %.not.i386 = icmp eq i32 %i.aat, 0
  br i1 %.not.i386, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.aau = getelementptr inbounds nuw [4 x i8], ptr %i.aag, i64 %indvars.iv.i385
  %i.aav = load i32, ptr %i.aau, align 4, !tbaa !19
  %i.aaw = shl nuw i32 1, %i.aav
  %i.aax = xor i32 %i.aaw, -1
  %i.aay = and i32 %.01724.i, %i.aax
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek
  %.1.i = phi i32 [ %i.aay, %bb.el ], [ %.01724.i, %bb.ek ] ; 2 uses
  %indvars.iv.next.i387 = or disjoint i64 %indvars.iv.i385, 1 ; 2 uses
  %i.aaz = getelementptr inbounds nuw [4 x i8], ptr %i.aaj, i64 %indvars.iv.next.i387
  %i.aba = load i32, ptr %i.aaz, align 4, !tbaa !19
  %.not.i386.1 = icmp eq i32 %i.aba, 0
  br i1 %.not.i386.1, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.abb = getelementptr inbounds nuw [4 x i8], ptr %i.aag, i64 %indvars.iv.next.i387
  %i.abc = load i32, ptr %i.abb, align 4, !tbaa !19
  %i.abd = shl nuw i32 1, %i.abc
  %i.abe = xor i32 %i.abd, -1
  %i.abf = and i32 %.1.i, %i.abe
end_hunk_0
