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
  %i.qh = add nsw i32 %i.qg, -1                   ; 21 uses
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
  %wide.trip.count1752 = zext nneg i32 %i.qh to i64
  %wide.trip.count1746 = zext i32 %i.qh to i64
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
  %exitcond1753.not = icmp eq i64 %indvars.iv.next1749, %wide.trip.count1752
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
  %smax1764 = call i32 @llvm.smax.i32(i32 %i.qh, i32 1)
  %wide.trip.count1765 = zext nneg i32 %smax1764 to i64 ; 3 uses
  %wide.trip.count1759 = zext i32 %i.qh to i64
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

end_hunk_0
