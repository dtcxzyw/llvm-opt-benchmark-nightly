Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msdfgen/original/edge-coloring?download=true
inline.NumInlined: 874
inline.NumDeleted: 392
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN7msdfgen22edgeColoringByDistanceERNS_5ShapeEdy:bb.a
  %i.oh = sext i32 %i.of to i64
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0552.1.lcssa, i64 %i.oh
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !19
  %i.ok = icmp eq i32 %i.oj, %i.oe
  br i1 %i.ok, label %bb.db, label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit326

bb.db:                                            ; preds = %bb.da
  %i.ol = ptrtoint ptr %.sroa.33.51304 to i64
  %i.om = ptrtoint ptr %.sroa.0602.71305 to i64
  %i.on = sub i64 %i.ol, %i.om
  %i.oo = lshr exact i64 %i.on, 3
  %i.op = trunc i64 %i.oo to i32                  ; 2 uses
  %.not.i.i317 = icmp eq ptr %.sroa.24.41301, %.sroa.43.61300
  br i1 %.not.i.i317, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  store i32 %i.op, ptr %.sroa.24.41301, align 4, !tbaa !19
  %i.oq = getelementptr inbounds nuw i8, ptr %.sroa.24.41301, i64 4
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit326

bb.dd:                                            ; preds = %bb.db
  %i.or = ptrtoint ptr %.sroa.24.41301 to i64
  %i.os = ptrtoint ptr %.sroa.0569.61302 to i64
  %i.ot = sub i64 %i.or, %i.os                    ; 6 uses
  %i.ou = icmp eq i64 %i.ot, 9223372036854775804
  br i1 %i.ou, label %bb.de, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i318

bb.de:                                            ; preds = %bb.dd
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
          to label %.noexc324 unwind label %.thread670.loopexit.split-lp

.noexc324:                                        ; preds = %bb.de
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i318: ; preds = %bb.dd
  %i.ov = ashr exact i64 %i.ot, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i319 = call i64 @llvm.umax.i64(i64 %i.ov, i64 1)
  %i.ow = add nsw i64 %.sroa.speculated.i.i.i.i319, %i.ov ; 2 uses
  %i.ox = icmp ult i64 %i.ow, %i.ov
  %i.oy = call i64 @llvm.umin.i64(i64 %i.ow, i64 2305843009213693951)
  %i.oz = select i1 %i.ox, i64 2305843009213693951, i64 %i.oy ; 3 uses
  %.not.i.i.i.i320 = icmp ne i64 %i.oz, 0
  call void @llvm.assume(i1 %.not.i.i.i.i320)
  %i.pa = shl nuw nsw i64 %i.oz, 2
  %i.pb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pa) #19
          to label %.noexc325 unwind label %.thread670.loopexit ; 4 uses

.noexc325:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i318
  %i.pc = getelementptr inbounds i8, ptr %i.pb, i64 %i.ot ; 2 uses
  store i32 %i.op, ptr %i.pc, align 4, !tbaa !19
  %i.pd = icmp sgt i64 %i.ot, 0
  br i1 %i.pd, label %bb.df, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i321

bb.df:                                            ; preds = %.noexc325
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.pb, ptr align 4 %.sroa.0569.61302, i64 %i.ot, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i321

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i321: ; preds = %bb.df, %.noexc325
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pc, i64 4
  %.not.i17.i.i.i322 = icmp eq ptr %.sroa.0569.61302, null
  br i1 %.not.i17.i.i.i322, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i323, label %bb.dg

bb.dg:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i321
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0569.61302, i64 noundef %i.ot) #17
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i323

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i323: ; preds = %bb.dg, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i321
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.pb, i64 %i.oz
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit326

.thread670.loopexit:                              ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i318
  %lpad.loopexit746 = landingpad { ptr, i32 }
          cleanup
  br label %.thread670

.thread670.loopexit.split-lp:                     ; preds = %bb.de
  %lpad.loopexit.split-lp747 = landingpad { ptr, i32 }
          cleanup
  br label %.thread670

_ZNSt6vectorIiSaIiEE9push_backEOi.exit326:        ; preds = %bb.dc, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i323, %bb.da, %.lr.ph1309
  %.sroa.43.7 = phi ptr [ %.sroa.43.61300, %.lr.ph1309 ], [ %.sroa.43.61300, %bb.da ], [ %i.pf, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i323 ], [ %.sroa.43.61300, %bb.dc ] ; 4 uses
  %.sroa.24.5 = phi ptr [ %.sroa.24.41301, %.lr.ph1309 ], [ %.sroa.24.41301, %bb.da ], [ %i.pe, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i323 ], [ %i.oq, %bb.dc ] ; 2 uses
  %.sroa.0569.7 = phi ptr [ %.sroa.0569.61302, %.lr.ph1309 ], [ %.sroa.0569.61302, %bb.da ], [ %i.pb, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i323 ], [ %.sroa.0569.61302, %bb.dc ] ; 4 uses
  %.1137 = phi i32 [ %.01361306, %.lr.ph1309 ], [ %.01361306, %bb.da ], [ %i.of, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i323 ], [ %i.of, %bb.dc ]
  %i.pg = sext i32 %i.oe to i64
  %i.ph = load ptr, ptr %.sroa.0532.01346, align 8, !tbaa !24
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr %i.ph, i64 %i.pg
  %i.pj = invoke noundef nonnull align 8 dereferenceable(12) ptr @_ZN7msdfgen10EdgeHolderdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.pi)
          to label %bb.dh unwind label %.loopexit749 ; 2 uses

bb.dh:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit326
  %.not.i.i327 = icmp eq ptr %.sroa.33.51304, %.sroa.67.71303
  br i1 %.not.i.i327, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  store ptr %i.pj, ptr %.sroa.33.51304, align 8, !tbaa !27
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit336

bb.dj:                                            ; preds = %bb.dh
  %i.pk = ptrtoint ptr %.sroa.33.51304 to i64
  %i.pl = ptrtoint ptr %.sroa.0602.71305 to i64
  %i.pm = sub i64 %i.pk, %i.pl                    ; 6 uses
  %i.pn = icmp eq i64 %i.pm, 9223372036854775800
  br i1 %i.pn, label %bb.dk, label %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i328

bb.dk:                                            ; preds = %bb.dj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
          to label %.noexc334 unwind label %.loopexit.split-lp750

.noexc334:                                        ; preds = %bb.dk
  unreachable

_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i328: ; preds = %bb.dj
  %i.po = ashr exact i64 %i.pm, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i329 = call i64 @llvm.umax.i64(i64 %i.po, i64 1)
  %i.pp = add nsw i64 %.sroa.speculated.i.i.i.i329, %i.po ; 2 uses
  %i.pq = icmp ult i64 %i.pp, %i.po
  %i.pr = call i64 @llvm.umin.i64(i64 %i.pp, i64 1152921504606846975)
  %i.ps = select i1 %i.pq, i64 1152921504606846975, i64 %i.pr ; 3 uses
  %.not.i.i.i.i330 = icmp ne i64 %i.ps, 0
  call void @llvm.assume(i1 %.not.i.i.i.i330)
  %i.pt = shl nuw nsw i64 %i.ps, 3
  %i.pu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pt) #19
          to label %.noexc335 unwind label %.loopexit749 ; 4 uses

.noexc335:                                        ; preds = %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i328
  %i.pv = getelementptr inbounds i8, ptr %i.pu, i64 %i.pm ; 2 uses
  store ptr %i.pj, ptr %i.pv, align 8, !tbaa !27
  %i.pw = icmp sgt i64 %i.pm, 0
  br i1 %i.pw, label %bb.dl, label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i331

bb.dl:                                            ; preds = %.noexc335
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.pu, ptr align 8 %.sroa.0602.71305, i64 %i.pm, i1 false)
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i331

_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i331: ; preds = %bb.dl, %.noexc335
  %.not.i17.i.i.i332 = icmp eq ptr %.sroa.0602.71305, null
  br i1 %.not.i17.i.i.i332, label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i333, label %bb.dm

bb.dm:                                            ; preds = %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i331
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0602.71305, i64 noundef %i.pm) #17
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i333

_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i333: ; preds = %bb.dm, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i331
  %i.px = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %i.ps
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit336

_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit336: ; preds = %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i333, %bb.di
  %.sroa.67.21 = phi ptr [ %i.px, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i333 ], [ %.sroa.67.71303, %bb.di ] ; 2 uses
  %.pn710 = phi ptr [ %i.pv, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i333 ], [ %.sroa.33.51304, %bb.di ]
  %.sroa.0602.21 = phi ptr [ %i.pu, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i333 ], [ %.sroa.0602.71305, %bb.di ] ; 2 uses
  %.sroa.33.16 = getelementptr inbounds nuw i8, ptr %.pn710, i64 8 ; 2 uses
  %i.py = add nuw nsw i32 %.01351307, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.py, %i.ob
  br i1 %exitcond.not, label %.loopexit728, label %.lr.ph1309, !llvm.loop !82

.loopexit749:                                     ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit326, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i328
  %.sroa.67.71303.lcssa1440 = phi ptr [ %.sroa.67.71303, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit326 ], [ %.sroa.33.51304, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i328 ]
  %lpad.loopexit751 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gd

.loopexit.split-lp750:                            ; preds = %bb.dk
  %lpad.loopexit.split-lp752 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gd

.loopexit728:                                     ; preds = %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit336, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit235, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit, %bb.cz, %bb.ai, %bb.z, %bb.ba, %._crit_edge1319, %bb.f
  %.sroa.23.6 = phi ptr [ %.sroa.23.01348, %bb.f ], [ %.sroa.23.1.lcssa, %bb.ai ], [ %.sroa.23.1.lcssa, %bb.z ], [ %.sroa.23.1.lcssa, %._crit_edge1319 ], [ %.sroa.23.1.lcssa, %bb.ba ], [ %.sroa.23.1.lcssa, %bb.cz ], [ %.sroa.23.1.lcssa, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit235 ], [ %.sroa.23.1.lcssa, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit ], [ %.sroa.23.1.lcssa, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit336 ] ; 3 uses
  %.sroa.15.3 = phi ptr [ %.sroa.15.01349, %bb.f ], [ %.sroa.15.1.lcssa, %bb.ai ], [ %.sroa.15.1.lcssa, %bb.z ], [ %.sroa.15.1.lcssa, %._crit_edge1319 ], [ %.sroa.15.1.lcssa, %bb.ba ], [ %.sroa.15.1.lcssa, %bb.cz ], [ %.sroa.15.1.lcssa, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit235 ], [ %.sroa.15.1.lcssa, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit ], [ %.sroa.15.1.lcssa, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit336 ]
  %.sroa.0552.6 = phi ptr [ %.sroa.0552.01350, %bb.f ], [ %.sroa.0552.1.lcssa, %bb.ai ], [ %.sroa.0552.1.lcssa, %bb.z ], [ %.sroa.0552.1.lcssa, %._crit_edge1319 ], [ %.sroa.0552.1.lcssa, %bb.ba ], [ %.sroa.0552.1.lcssa, %bb.cz ], [ %.sroa.0552.1.lcssa, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit235 ], [ %.sroa.0552.1.lcssa, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit ], [ %.sroa.0552.1.lcssa, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit336 ] ; 3 uses
  %.sroa.43.11 = phi ptr [ %.sroa.43.01351, %bb.f ], [ %.sroa.43.14, %bb.ai ], [ %.sroa.43.14, %bb.z ], [ %.sroa.43.4, %._crit_edge1319 ], [ %.sroa.43.14, %bb.ba ], [ %.sroa.43.14, %bb.cz ], [ %.sroa.43.2, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit235 ], [ %.sroa.43.14, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit ], [ %.sroa.43.7, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit336 ] ; 4 uses
  %.sroa.24.7 = phi ptr [ %.sroa.24.01352, %bb.f ], [ %.sroa.24.9, %bb.ai ], [ %.sroa.24.9, %bb.z ], [ %.sroa.24.3, %._crit_edge1319 ], [ %.sroa.24.9, %bb.ba ], [ %.sroa.24.9, %bb.cz ], [ %.sroa.24.2, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit235 ], [ %.sroa.24.9, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit ], [ %.sroa.24.5, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit336 ] ; 4 uses
  %.sroa.0569.11 = phi ptr [ %.sroa.0569.01353, %bb.f ], [ %.sroa.0569.14, %bb.ai ], [ %.sroa.0569.14, %bb.z ], [ %.sroa.0569.4, %._crit_edge1319 ], [ %.sroa.0569.14, %bb.ba ], [ %.sroa.0569.14, %bb.cz ], [ %.sroa.0569.2, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit235 ], [ %.sroa.0569.14, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit ], [ %.sroa.0569.7, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit336 ] ; 3 uses
  %.sroa.67.11 = phi ptr [ %.sroa.67.01354, %bb.f ], [ %.sroa.67.01354, %bb.ai ], [ %.sroa.67.01354, %bb.z ], [ %.sroa.67.5, %._crit_edge1319 ], [ %.sroa.67.01354, %bb.ba ], [ %.sroa.67.01354, %bb.cz ], [ %.sroa.67.3, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit235 ], [ %.sroa.67.13, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit ], [ %.sroa.67.21, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit336 ] ; 3 uses
  %.sroa.33.7 = phi ptr [ %.sroa.33.01355, %bb.f ], [ %.sroa.33.01355, %bb.ai ], [ %.sroa.33.01355, %bb.z ], [ %.sroa.33.4, %._crit_edge1319 ], [ %.sroa.33.01355, %bb.ba ], [ %.sroa.33.01355, %bb.cz ], [ %.sroa.33.3, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit235 ], [ %.sroa.33.8, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit ], [ %.sroa.33.16, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit336 ] ; 2 uses
  %.sroa.0602.11 = phi ptr [ %.sroa.0602.01356, %bb.f ], [ %.sroa.0602.01356, %bb.ai ], [ %.sroa.0602.01356, %bb.z ], [ %.sroa.0602.5, %._crit_edge1319 ], [ %.sroa.0602.01356, %bb.ba ], [ %.sroa.0602.01356, %bb.cz ], [ %.sroa.0602.3, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit235 ], [ %.sroa.0602.13, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit ], [ %.sroa.0602.21, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit336 ] ; 4 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %.sroa.0532.01346, i64 24 ; 2 uses
  %i.qa = load ptr, ptr %i.f, align 8, !tbaa !12
  %.not692 = icmp eq ptr %i.pz, %i.qa
  br i1 %.not692, label %._crit_edge1359, label %bb.f, !llvm.loop !83

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.b
  %i.qb = phi i32 [ %i.r, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.q, %bb.b ]
  %i.qc = phi i64 [ %i.s, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.p, %bb.b ] ; 4 uses
  %i.qd = phi i64 [ %i.t, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.n, %bb.b ]
  %.sroa.0602.0.lcssa1935 = phi ptr [ %.sroa.0602.0.lcssa1936, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.0602.11, %bb.b ] ; 9 uses
  %.sroa.67.0.lcssa1926 = phi ptr [ %.sroa.67.0.lcssa1927, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.67.11, %bb.b ] ; 3 uses
  %.sroa.0552.0.lcssa1915 = phi ptr [ %.sroa.0552.0.lcssa1916, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.0552.6, %bb.b ] ; 5 uses
  %.sroa.23.0.lcssa1906 = phi ptr [ %.sroa.23.0.lcssa1907, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.23.6, %bb.b ] ; 3 uses
  %.sroa.43.13 = phi ptr [ %i.ah, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.43.11, %bb.b ] ; 3 uses
  %.pn693 = phi ptr [ %i.af, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.24.7, %bb.b ]
  %.sroa.0569.13 = phi ptr [ %i.ae, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.0569.11, %bb.b ] ; 12 uses
  %.sroa.24.8 = getelementptr inbounds nuw i8, ptr %.pn693, i64 4
  %i.qe = ptrtoint ptr %.sroa.24.8 to i64
  %i.qf = ptrtoint ptr %.sroa.0569.13 to i64      ; 2 uses
  %i.qg = sub i64 %i.qe, %i.qf
  %i.qh = lshr exact i64 %i.qg, 2
  %i.qi = trunc i64 %i.qh to i32                  ; 5 uses
  %i.qj = add nsw i32 %i.qi, -1                   ; 21 uses
  %.not = icmp eq i32 %i.qj, 0
  br i1 %.not, label %bb.fx, label %bb.do

bb.dn:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i, %bb.c
  %i.qk = landingpad { ptr, i32 }
          cleanup
  br label %bb.gd

bb.do:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.ql = mul nsw i32 %i.qj, %i.qj
  %i.qm = zext nneg i32 %i.ql to i64              ; 3 uses
  %i.qn = shl nuw nsw i64 %i.qm, 3                ; 3 uses
  %i.qo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qn) #19
          to label %.noexc338 unwind label %bb.dq ; 11 uses

.noexc338:                                        ; preds = %bb.do
  store double 0.000000e+00, ptr %i.qo, align 8, !tbaa !32
  %i.qp = add nsw i64 %i.qm, -1                   ; 3 uses
  %i.qq = icmp eq i64 %i.qp, 0                    ; 2 uses
  br i1 %i.qq, label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc338
  %i.qr = getelementptr i8, ptr %i.qo, i64 8
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.qp, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.qr, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !32
  br label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit

_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc338
  %i.qs = sext i32 %i.qj to i64                   ; 15 uses
  %i.qt = icmp slt i32 %i.qi, 1
  br i1 %i.qt, label %bb.dp, label %_ZNSt6vectorIPdSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i

bb.dp:                                            ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #18
          to label %.noexc342 unwind label %bb.dr

.noexc342:                                        ; preds = %bb.dp
  unreachable

_ZNSt6vectorIPdSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i: ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit
  %i.qu = shl nuw nsw i64 %i.qs, 3                ; 6 uses
  %i.qv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qu) #19
          to label %.noexc343 unwind label %bb.dr ; 12 uses

.noexc343:                                        ; preds = %_ZNSt6vectorIPdSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i
  store ptr null, ptr %i.qv, align 8, !tbaa !34
  %i.qw = add nsw i64 %i.qs, -1                   ; 3 uses
  %i.qx = icmp eq i64 %i.qw, 0                    ; 2 uses
  br i1 %i.qx, label %.lr.ph1369.preheader, label %_ZSt6fill_nIPPdmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPPdmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc343
  %i.qy = getelementptr i8, ptr %i.qv, i64 8
  %.idx.i.i.i.i.i.i.i340 = shl nuw nsw i64 %i.qw, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.qy, i8 0, i64 %.idx.i.i.i.i.i.i.i340, i1 false), !tbaa !34
  br label %.lr.ph1369.preheader

.lr.ph1369.preheader:                             ; preds = %.noexc343, %_ZSt6fill_nIPPdmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %wide.trip.count.a = zext nneg i32 %i.qj to i64 ; 7 uses
  %5 = add nsw i64 %wide.trip.count.a, -1         ; 2 uses
  %xtraiter = and i64 %wide.trip.count.a, 3       ; 3 uses
  %i.qz = icmp ult i32 %i.qi, 5
  br i1 %i.qz, label %.lr.ph1369.epil.preheader, label %.lr.ph1369.preheader.new

.lr.ph1369.preheader.new:                         ; preds = %.lr.ph1369.preheader
  %unroll_iter = and i64 %wide.trip.count.a, 2147483644
  br label %.lr.ph1369

.lr.ph1374.preheader.unr-lcssa:                   ; preds = %.lr.ph1369
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph1374.preheader, label %.lr.ph1369.epil.preheader

.lr.ph1369.epil.preheader:                        ; preds = %.lr.ph1374.preheader.unr-lcssa, %.lr.ph1369.preheader
  %indvars.iv1784.epil.init = phi i64 [ 0, %.lr.ph1369.preheader ], [ %indvars.iv.next1785.3, %.lr.ph1374.preheader.unr-lcssa ]
  %lcmp.mod3334.a = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod3334.a)
  br label %.lr.ph1369.epil

.lr.ph1369.epil:                                  ; preds = %.lr.ph1369.epil, %.lr.ph1369.epil.preheader
  %indvars.iv1784.epil = phi i64 [ %indvars.iv1784.epil.init, %.lr.ph1369.epil.preheader ], [ %indvars.iv.next1785.epil, %.lr.ph1369.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph1369.epil.preheader ], [ %epil.iter.next, %.lr.ph1369.epil ]
  %i.ra = mul nuw nsw i64 %indvars.iv1784.epil, %i.qs
  %i.rb = getelementptr inbounds nuw [8 x i8], ptr %i.qo, i64 %i.ra
  %i.rc = getelementptr inbounds nuw [8 x i8], ptr %i.qv, i64 %indvars.iv1784.epil
  store ptr %i.rb, ptr %i.rc, align 8, !tbaa !34
  %indvars.iv.next1785.epil = add nuw nsw i64 %indvars.iv1784.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph1374.preheader, label %.lr.ph1369.epil, !llvm.loop !84

.lr.ph1374.preheader:                             ; preds = %.lr.ph1369.epil, %.lr.ph1374.preheader.unr-lcssa
  %wide.trip.count1799 = zext nneg i32 %i.qj to i64
  %wide.trip.count1793 = zext i32 %i.qj to i64
  br label %.lr.ph1374

bb.dq:                                            ; preds = %bb.do
  %i.rd = landingpad { ptr, i32 }
          cleanup
  br label %bb.gd

bb.dr:                                            ; preds = %_ZNSt6vectorIPdSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i, %bb.dp
  %i.re = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit425

.lr.ph1369:                                       ; preds = %.lr.ph1369, %.lr.ph1369.preheader.new
  %indvars.iv1784 = phi i64 [ 0, %.lr.ph1369.preheader.new ], [ %indvars.iv.next1785.3, %.lr.ph1369 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph1369.preheader.new ], [ %niter.next.3, %.lr.ph1369 ]
  %i.rf = mul nuw nsw i64 %indvars.iv1784, %i.qs
  %i.rg = getelementptr inbounds nuw [8 x i8], ptr %i.qo, i64 %i.rf
  %i.rh = getelementptr inbounds nuw [8 x i8], ptr %i.qv, i64 %indvars.iv1784
  store ptr %i.rg, ptr %i.rh, align 8, !tbaa !34
  %indvars.iv.next1785 = or disjoint i64 %indvars.iv1784, 1 ; 2 uses
  %i.ri = mul nuw nsw i64 %indvars.iv.next1785, %i.qs
  %i.rj = getelementptr inbounds nuw [8 x i8], ptr %i.qo, i64 %i.ri
  %i.rk = getelementptr inbounds nuw [8 x i8], ptr %i.qv, i64 %indvars.iv.next1785
  store ptr %i.rj, ptr %i.rk, align 8, !tbaa !34
  %indvars.iv.next1785.1 = or disjoint i64 %indvars.iv1784, 2 ; 2 uses
  %i.rl = mul nuw nsw i64 %indvars.iv.next1785.1, %i.qs
  %i.rm = getelementptr inbounds nuw [8 x i8], ptr %i.qo, i64 %i.rl
  %i.rn = getelementptr inbounds nuw [8 x i8], ptr %i.qv, i64 %indvars.iv.next1785.1
  store ptr %i.rm, ptr %i.rn, align 8, !tbaa !34
  %indvars.iv.next1785.2 = or disjoint i64 %indvars.iv1784, 3 ; 2 uses
  %i.ro = mul nuw nsw i64 %indvars.iv.next1785.2, %i.qs
  %i.rp = getelementptr inbounds nuw [8 x i8], ptr %i.qo, i64 %i.ro
  %i.rq = getelementptr inbounds nuw [8 x i8], ptr %i.qv, i64 %indvars.iv.next1785.2
  store ptr %i.rp, ptr %i.rq, align 8, !tbaa !34
  %indvars.iv.next1785.3 = add nuw nsw i64 %indvars.iv1784, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph1374.preheader.unr-lcssa, label %.lr.ph1369, !llvm.loop !85

.loopexit726:                                     ; preds = %_ZN7msdfgenL22splineToSplineDistanceEPKPNS_11EdgeSegmentEiiiii.exit, %.lr.ph1374
  %indvars.iv.next1789 = add nuw nsw i64 %indvars.iv1788, 1
  %exitcond1800.not = icmp eq i64 %indvars.iv.next1796, %wide.trip.count1799
  br i1 %exitcond1800.not, label %._crit_edge1375, label %.lr.ph1374, !llvm.loop !86

._crit_edge1375:                                  ; preds = %.loopexit726
  %i.rr = add nsw i32 %i.qi, -2
  %i.rs = mul nsw i32 %i.qj, %i.rr                ; 3 uses
  %i.rt = sdiv i32 %i.rs, 2
  %i.ru = sext i32 %i.rt to i64                   ; 2 uses
  %i.rv = icmp slt i32 %i.rs, -1
  br i1 %i.rv, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %._crit_edge1375
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #18
          to label %.noexc344 unwind label %.thread

.noexc344:                                        ; preds = %bb.ds
  unreachable

bb.dt:                                            ; preds = %._crit_edge1375
  %i.rw = icmp slt i32 %i.rs, 2
  br i1 %i.rw, label %.lr.ph1389.preheader, label %_ZNSt12_Vector_baseIPKdSaIS1_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIPKdSaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.dt
  %i.rx = shl nuw nsw i64 %i.ru, 3
  %i.ry = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rx) #19
          to label %_ZNSt12_Vector_baseIPKdSaIS1_EE13_M_deallocateEPS1_m.exit.i unwind label %.thread ; 2 uses

_ZNSt12_Vector_baseIPKdSaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %_ZNSt12_Vector_baseIPKdSaIS1_EE11_M_allocateEm.exit.i
  %i.rz = getelementptr inbounds nuw [8 x i8], ptr %i.ry, i64 %i.ru
  br label %.lr.ph1389.preheader

.lr.ph1389.preheader:                             ; preds = %_ZNSt12_Vector_baseIPKdSaIS1_EE13_M_deallocateEPS1_m.exit.i, %bb.dt
  %.sroa.0455.3 = phi ptr [ %i.ry, %_ZNSt12_Vector_baseIPKdSaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ null, %bb.dt ] ; 2 uses
  %.sroa.27.3 = phi ptr [ %i.rz, %_ZNSt12_Vector_baseIPKdSaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ null, %bb.dt ]
  %smax1811 = call i32 @llvm.smax.i32(i32 %i.qj, i32 1)
  %wide.trip.count1812 = zext nneg i32 %smax1811 to i64 ; 3 uses
  %wide.trip.count1806 = zext i32 %i.qj to i64
  br label %.lr.ph1389

.lr.ph1374:                                       ; preds = %.lr.ph1374.preheader, %.loopexit726
  %indvars.iv1795 = phi i64 [ 0, %.lr.ph1374.preheader ], [ %indvars.iv.next1796, %.loopexit726 ] ; 5 uses
  %indvars.iv1788 = phi i64 [ 1, %.lr.ph1374.preheader ], [ %indvars.iv.next1789, %.loopexit726 ] ; 2 uses
  %i.sa = getelementptr inbounds nuw [8 x i8], ptr %i.qv, i64 %indvars.iv1795 ; 2 uses
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !34 ; 2 uses
  %i.sc = getelementptr inbounds nuw [8 x i8], ptr %i.sb, i64 %indvars.iv1795
  store double -1.000000e+00, ptr %i.sc, align 8, !tbaa !32
  %indvars.iv.next1796 = add nuw nsw i64 %indvars.iv1795, 1 ; 4 uses
  %i.sd = icmp slt i64 %indvars.iv.next1796, %i.qs
  br i1 %i.sd, label %.lr.ph1372, label %.loopexit726

.lr.ph1372:                                       ; preds = %.lr.ph1374
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0569.13, i64 %indvars.iv1795
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0569.13, i64 %indvars.iv.next1796
  br label %bb.du

bb.du:                                            ; preds = %.lr.ph1372, %_ZN7msdfgenL22splineToSplineDistanceEPKPNS_11EdgeSegmentEiiiii.exit
  %i.sg = phi ptr [ %i.sb, %.lr.ph1372 ], [ %i.xi, %_ZN7msdfgenL22splineToSplineDistanceEPKPNS_11EdgeSegmentEiiiii.exit ]
  %indvars.iv1790 = phi i64 [ %indvars.iv1788, %.lr.ph1372 ], [ %indvars.iv.next1791, %_ZN7msdfgenL22splineToSplineDistanceEPKPNS_11EdgeSegmentEiiiii.exit ] ; 4 uses
  %i.sh = load i32, ptr %i.se, align 4, !tbaa !19 ; 2 uses
  %i.si = load i32, ptr %i.sf, align 4, !tbaa !19 ; 2 uses
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0569.13, i64 %indvars.iv1790
  %i.sk = load i32, ptr %i.sj, align 4, !tbaa !19 ; 2 uses
  %indvars.iv.next1791 = add nuw nsw i64 %indvars.iv1790, 1 ; 3 uses
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0569.13, i64 %indvars.iv.next1791
  %i.sm = load i32, ptr %i.sl, align 4, !tbaa !19 ; 2 uses
  %i.sn = icmp slt i32 %i.sh, %i.si
  %i.so = icmp slt i32 %i.sk, %i.sm
  %or.cond.i = and i1 %i.sn, %i.so
  br i1 %or.cond.i, label %.preheader.preheader.i, label %_ZN7msdfgenL22splineToSplineDistanceEPKPNS_11EdgeSegmentEiiiii.exit

.preheader.preheader.i:                           ; preds = %bb.du
  %i.sp = sext i32 %i.sk to i64
  %i.sq = sext i32 %i.sm to i64
  %i.sr = sext i32 %i.sh to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %indvars.iv29.i = phi i64 [ %i.sr, %.preheader.preheader.i ], [ %indvars.iv.next30.i, %._crit_edge.i ] ; 2 uses
  %.022.i = phi double [ f0x7FEFFFFFFFFFFFFF, %.preheader.preheader.i ], [ %.1.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.ss = fcmp une double %.022.i, 0.000000e+00
  br i1 %i.ss, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.st = getelementptr inbounds [8 x i8], ptr %.sroa.0602.0.lcssa1935, i64 %indvars.iv29.i
  br label %bb.dv

._crit_edge.i:                                    ; preds = %_ZN7msdfgenL18edgeToEdgeDistanceERKNS_11EdgeSegmentES2_i.exit.i, %.preheader.i
  %.1.lcssa.i = phi double [ %.022.i, %.preheader.i ], [ %i.xe, %_ZN7msdfgenL18edgeToEdgeDistanceERKNS_11EdgeSegmentES2_i.exit.i ] ; 2 uses
  %indvars.iv.next30.i = add nsw i64 %indvars.iv29.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next30.i to i32
  %exitcond.not.i = icmp eq i32 %i.si, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %_ZN7msdfgenL22splineToSplineDistanceEPKPNS_11EdgeSegmentEiiiii.exit.loopexit, label %.preheader.i, !llvm.loop !87

bb.dv:                                            ; preds = %_ZN7msdfgenL18edgeToEdgeDistanceERKNS_11EdgeSegmentES2_i.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.sp, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN7msdfgenL18edgeToEdgeDistanceERKNS_11EdgeSegmentES2_i.exit.i ] ; 2 uses
  %.120.i = phi double [ %.022.i, %.lr.ph.i ], [ %i.xe, %_ZN7msdfgenL18edgeToEdgeDistanceERKNS_11EdgeSegmentES2_i.exit.i ] ; 2 uses
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !27 ; 14 uses
  %i.sv = getelementptr inbounds [8 x i8], ptr %.sroa.0602.0.lcssa1935, i64 %indvars.iv.i
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !27 ; 14 uses
  %i.sx = load ptr, ptr %i.su, align 8, !tbaa !18
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 40
  %i.sz = load ptr, ptr %i.sy, align 8
  %i.ta = invoke { double, double } %i.sz(ptr noundef nonnull align 8 dereferenceable(12) %i.su, double noundef 0.000000e+00)
          to label %.noexc346 unwind label %.loopexit.split-lp719.loopexit.split-lp, !inline_history !88 ; 2 uses

.noexc346:                                        ; preds = %bb.dv
  %i.tb = load ptr, ptr %i.sw, align 8, !tbaa !18
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 40
  %i.td = load ptr, ptr %i.tc, align 8
  %i.te = invoke { double, double } %i.td(ptr noundef nonnull align 8 dereferenceable(12) %i.sw, double noundef 0.000000e+00)
          to label %.noexc347 unwind label %.loopexit.split-lp719.loopexit.split-lp, !inline_history !88 ; 2 uses

.noexc347:                                        ; preds = %.noexc346
  %i.tf = extractvalue { double, double } %i.ta, 1
  %i.tg = extractvalue { double, double } %i.ta, 0
  %i.th = extractvalue { double, double } %i.te, 0
  %i.ti = extractvalue { double, double } %i.te, 1
  %i.tj = fcmp oeq double %i.tg, %i.th
  %i.tk = fcmp oeq double %i.tf, %i.ti
  %i.tl = select i1 %i.tj, i1 %i.tk, i1 false
  br i1 %i.tl, label %_ZN7msdfgenL18edgeToEdgeDistanceERKNS_11EdgeSegmentES2_i.exit.i, label %bb.dw

bb.dw:                                            ; preds = %.noexc347
  %i.tm = load ptr, ptr %i.su, align 8, !tbaa !18
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 40
  %i.to = load ptr, ptr %i.tn, align 8
  %i.tp = invoke { double, double } %i.to(ptr noundef nonnull align 8 dereferenceable(12) %i.su, double noundef 0.000000e+00)
          to label %.noexc348 unwind label %.loopexit.split-lp719.loopexit.split-lp, !inline_history !88 ; 2 uses

.noexc348:                                        ; preds = %bb.dw
  %i.tq = load ptr, ptr %i.sw, align 8, !tbaa !18
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 40
  %i.ts = load ptr, ptr %i.tr, align 8
  %i.tt = invoke { double, double } %i.ts(ptr noundef nonnull align 8 dereferenceable(12) %i.sw, double noundef 1.000000e+00)
          to label %.noexc349 unwind label %.loopexit.split-lp719.loopexit.split-lp, !inline_history !88 ; 2 uses

.noexc349:                                        ; preds = %.noexc348
  %i.tu = extractvalue { double, double } %i.tp, 1
  %i.tv = extractvalue { double, double } %i.tp, 0
  %i.tw = extractvalue { double, double } %i.tt, 0
  %i.tx = extractvalue { double, double } %i.tt, 1
  %i.ty = fcmp oeq double %i.tv, %i.tw
  %i.tz = fcmp oeq double %i.tu, %i.tx
  %i.ua = select i1 %i.ty, i1 %i.tz, i1 false
  br i1 %i.ua, label %_ZN7msdfgenL18edgeToEdgeDistanceERKNS_11EdgeSegmentES2_i.exit.i, label %bb.dx

bb.dx:                                            ; preds = %.noexc349
  %i.ub = load ptr, ptr %i.su, align 8, !tbaa !18
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 40
  %i.ud = load ptr, ptr %i.uc, align 8
  %i.ue = invoke { double, double } %i.ud(ptr noundef nonnull align 8 dereferenceable(12) %i.su, double noundef 1.000000e+00)
          to label %.noexc350 unwind label %.loopexit.split-lp719.loopexit.split-lp, !inline_history !88 ; 2 uses

.noexc350:                                        ; preds = %bb.dx
  %i.uf = load ptr, ptr %i.sw, align 8, !tbaa !18
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 40
  %i.uh = load ptr, ptr %i.ug, align 8
  %i.ui = invoke { double, double } %i.uh(ptr noundef nonnull align 8 dereferenceable(12) %i.sw, double noundef 0.000000e+00)
          to label %.noexc351 unwind label %.loopexit.split-lp719.loopexit.split-lp, !inline_history !88 ; 2 uses

.noexc351:                                        ; preds = %.noexc350
  %i.uj = extractvalue { double, double } %i.ue, 1
  %i.uk = extractvalue { double, double } %i.ue, 0
  %i.ul = extractvalue { double, double } %i.ui, 0
  %i.um = extractvalue { double, double } %i.ui, 1
  %i.un = fcmp oeq double %i.uk, %i.ul
  %i.uo = fcmp oeq double %i.uj, %i.um
  %i.up = select i1 %i.un, i1 %i.uo, i1 false
  br i1 %i.up, label %_ZN7msdfgenL18edgeToEdgeDistanceERKNS_11EdgeSegmentES2_i.exit.i, label %bb.dy

bb.dy:                                            ; preds = %.noexc351
  %i.uq = load ptr, ptr %i.su, align 8, !tbaa !18
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 40
  %i.us = load ptr, ptr %i.ur, align 8
  %i.ut = invoke { double, double } %i.us(ptr noundef nonnull align 8 dereferenceable(12) %i.su, double noundef 1.000000e+00)
          to label %.noexc352 unwind label %.loopexit.split-lp719.loopexit.split-lp, !inline_history !88 ; 2 uses

.noexc352:                                        ; preds = %bb.dy
  %i.uu = load ptr, ptr %i.sw, align 8, !tbaa !18
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 40
  %i.uw = load ptr, ptr %i.uv, align 8
  %i.ux = invoke { double, double } %i.uw(ptr noundef nonnull align 8 dereferenceable(12) %i.sw, double noundef 1.000000e+00)
          to label %.noexc353 unwind label %.loopexit.split-lp719.loopexit.split-lp, !inline_history !88 ; 2 uses

.noexc353:                                        ; preds = %.noexc352
  %i.uy = extractvalue { double, double } %i.ut, 1
  %i.uz = extractvalue { double, double } %i.ut, 0
  %i.va = extractvalue { double, double } %i.ux, 0
  %i.vb = extractvalue { double, double } %i.ux, 1
  %i.vc = fcmp oeq double %i.uz, %i.va
  %i.vd = fcmp oeq double %i.uy, %i.vb
  %i.ve = select i1 %i.vc, i1 %i.vd, i1 false
  br i1 %i.ve, label %_ZN7msdfgenL18edgeToEdgeDistanceERKNS_11EdgeSegmentES2_i.exit.i, label %bb.dz

bb.dz:                                            ; preds = %.noexc353
  %i.vf = load ptr, ptr %i.sw, align 8, !tbaa !18
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 40
  %i.vh = load ptr, ptr %i.vg, align 8
  %i.vi = invoke { double, double } %i.vh(ptr noundef nonnull align 8 dereferenceable(12) %i.sw, double noundef 0.000000e+00)
          to label %.noexc354 unwind label %.loopexit.split-lp719.loopexit.split-lp, !inline_history !88 ; 2 uses

.noexc354:                                        ; preds = %bb.dz
  %i.vj = load ptr, ptr %i.su, align 8, !tbaa !18
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 40
  %i.vl = load ptr, ptr %i.vk, align 8
  %i.vm = invoke { double, double } %i.vl(ptr noundef nonnull align 8 dereferenceable(12) %i.su, double noundef 0.000000e+00)
          to label %.noexc355 unwind label %.loopexit.split-lp719.loopexit.split-lp, !inline_history !88 ; 2 uses

.noexc355:                                        ; preds = %.noexc354
  %i.vn = extractvalue { double, double } %i.vi, 1
  %i.vo = extractvalue { double, double } %i.vi, 0
  %i.vp = extractvalue { double, double } %i.vm, 0
  %i.vq = extractvalue { double, double } %i.vm, 1
  %i.vr = fsub double %i.vo, %i.vp                ; 2 uses
  %i.vs = fsub double %i.vn, %i.vq                ; 2 uses
  %i.vt = fmul double %i.vs, %i.vs
  %i.vu = call double @llvm.fmuladd.f64(double %i.vr, double %i.vr, double %i.vt)
  %sqrt.i.i.i = call noundef double @llvm.sqrt.f64(double %i.vu)
  br label %bb.ea

bb.ea:                                            ; preds = %.noexc357, %.noexc355
  %.05560.i.i = phi double [ %sqrt.i.i.i, %.noexc355 ], [ %i.wk, %.noexc357 ] ; 2 uses
  %.05659.i.i = phi i32 [ 0, %.noexc355 ], [ %i.wl, %.noexc357 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.vv = uitofp nneg i32 %.05659.i.i to double
  %i.vw = fmul nnan double %i.vv, 6.250000e-02    ; 2 uses
  store double %i.vw, ptr %i.a, align 8, !tbaa !32
  %i.vx = load ptr, ptr %i.sw, align 8, !tbaa !18
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 40
  %i.vz = load ptr, ptr %i.vy, align 8
  %i.wa = invoke { double, double } %i.vz(ptr noundef nonnull align 8 dereferenceable(12) %i.sw, double noundef %i.vw)
          to label %.noexc356 unwind label %.loopexit.split-lp719.loopexit, !inline_history !88 ; 2 uses

.noexc356:                                        ; preds = %bb.ea
  %i.wb = extractvalue { double, double } %i.wa, 0
  %i.wc = extractvalue { double, double } %i.wa, 1
  %i.wd = load ptr, ptr %i.su, align 8, !tbaa !18
end_hunk_0
begin_hunk_1_@_ZN7msdfgen22edgeColoringByDistanceERNS_5ShapeEdy:bb.a
  br i1 %exitcond64.not.i.i, label %_ZN7msdfgenL18edgeToEdgeDistanceERKNS_11EdgeSegmentES2_i.exit.i, label %.preheader.i.i, !llvm.loop !90

_ZN7msdfgenL18edgeToEdgeDistanceERKNS_11EdgeSegmentES2_i.exit.i: ; preds = %.noexc359, %.noexc353, %.noexc351, %.noexc349, %.noexc347
  %.0.i.i = phi double [ 0.000000e+00, %.noexc347 ], [ 0.000000e+00, %.noexc353 ], [ 0.000000e+00, %.noexc351 ], [ 0.000000e+00, %.noexc349 ], [ %i.xb, %.noexc359 ] ; 2 uses
  %i.xd = fcmp olt double %.0.i.i, %.120.i
  %i.xe = select i1 %i.xd, double %.0.i.i, double %.120.i ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.xf = icmp slt i64 %indvars.iv.next.i, %i.sq
  %i.xg = fcmp une double %i.xe, 0.000000e+00
  %i.xh = select i1 %i.xf, i1 %i.xg, i1 false
  br i1 %i.xh, label %bb.dv, label %._crit_edge.i, !llvm.loop !91

_ZN7msdfgenL22splineToSplineDistanceEPKPNS_11EdgeSegmentEiiiii.exit.loopexit: ; preds = %._crit_edge.i
  %.pre = load ptr, ptr %i.sa, align 8, !tbaa !34
  br label %_ZN7msdfgenL22splineToSplineDistanceEPKPNS_11EdgeSegmentEiiiii.exit

_ZN7msdfgenL22splineToSplineDistanceEPKPNS_11EdgeSegmentEiiiii.exit: ; preds = %_ZN7msdfgenL22splineToSplineDistanceEPKPNS_11EdgeSegmentEiiiii.exit.loopexit, %bb.du
  %i.xi = phi ptr [ %i.sg, %bb.du ], [ %.pre, %_ZN7msdfgenL22splineToSplineDistanceEPKPNS_11EdgeSegmentEiiiii.exit.loopexit ] ; 2 uses
  %.0.lcssa.i = phi double [ f0x7FEFFFFFFFFFFFFF, %bb.du ], [ %.1.lcssa.i, %_ZN7msdfgenL22splineToSplineDistanceEPKPNS_11EdgeSegmentEiiiii.exit.loopexit ] ; 2 uses
  %i.xj = getelementptr inbounds nuw [8 x i8], ptr %i.xi, i64 %indvars.iv1790
  store double %.0.lcssa.i, ptr %i.xj, align 8, !tbaa !32
  %i.xk = getelementptr inbounds nuw [8 x i8], ptr %i.qv, i64 %indvars.iv1790
  %i.xl = load ptr, ptr %i.xk, align 8, !tbaa !34
  %i.xm = getelementptr inbounds nuw [8 x i8], ptr %i.xl, i64 %indvars.iv1795
  store double %.0.lcssa.i, ptr %i.xm, align 8, !tbaa !32
  %exitcond1794.not = icmp eq i64 %indvars.iv.next1791, %wide.trip.count1793
  br i1 %exitcond1794.not, label %.loopexit726, label %bb.du, !llvm.loop !92

.loopexit718:                                     ; preds = %.preheader.i.i, %.noexc358
  %lpad.loopexit720 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPdSaIS0_EED2Ev.exit423

.loopexit.split-lp719.loopexit:                   ; preds = %.noexc356, %bb.ea
  %lpad.loopexit723 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPdSaIS0_EED2Ev.exit423

.loopexit.split-lp719.loopexit.split-lp:          ; preds = %.noexc354, %bb.dz, %.noexc352, %bb.dy, %.noexc350, %bb.dx, %.noexc348, %bb.dw, %.noexc346, %bb.dv
  %lpad.loopexit.split-lp724 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPdSaIS0_EED2Ev.exit423

.loopexit:                                        ; preds = %_ZNSt6vectorIPKdSaIS1_EE9push_backEOS1_.exit, %.lr.ph1389
  %.sroa.0455.1.lcssa = phi ptr [ %.sroa.0455.01385, %.lr.ph1389 ], [ %.sroa.0455.4, %_ZNSt6vectorIPKdSaIS1_EE9push_backEOS1_.exit ] ; 11 uses
  %.sroa.18.1.lcssa = phi ptr [ %.sroa.18.01386, %.lr.ph1389 ], [ %.sroa.18.3, %_ZNSt6vectorIPKdSaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  %.sroa.27.1.lcssa = phi ptr [ %.sroa.27.01387, %.lr.ph1389 ], [ %.sroa.27.4, %_ZNSt6vectorIPKdSaIS1_EE9push_backEOS1_.exit ] ; 5 uses
  %indvars.iv.next1802 = add nuw nsw i64 %indvars.iv1801, 1
  %exitcond1813.not = icmp eq i64 %indvars.iv.next1809, %wide.trip.count1812
  br i1 %exitcond1813.not, label %._crit_edge1390, label %.lr.ph1389, !llvm.loop !93

._crit_edge1390:                                  ; preds = %.loopexit
  %i.xn = ptrtoint ptr %.sroa.18.1.lcssa to i64
  %i.xo = ptrtoint ptr %.sroa.0455.1.lcssa to i64 ; 3 uses
  %i.xp = sub i64 %i.xn, %i.xo
  %i.xq = ashr exact i64 %i.xp, 3                 ; 3 uses
  %i.xr = trunc i64 %i.xq to i32                  ; 4 uses
  %i.xs = icmp eq ptr %.sroa.0455.1.lcssa, %.sroa.18.1.lcssa
  br i1 %i.xs, label %bb.ei, label %bb.eh

.thread:                                          ; preds = %bb.ds, %_ZNSt12_Vector_baseIPKdSaIS1_EE11_M_allocateEm.exit.i
  %i.xt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPdSaIS0_EED2Ev.exit423

.lr.ph1389:                                       ; preds = %.lr.ph1389.preheader, %.loopexit
  %indvars.iv1808 = phi i64 [ 0, %.lr.ph1389.preheader ], [ %indvars.iv.next1809, %.loopexit ] ; 2 uses
  %indvars.iv1801 = phi i64 [ 1, %.lr.ph1389.preheader ], [ %indvars.iv.next1802, %.loopexit ] ; 2 uses
  %.sroa.27.01387 = phi ptr [ %.sroa.27.3, %.lr.ph1389.preheader ], [ %.sroa.27.1.lcssa, %.loopexit ] ; 2 uses
  %.sroa.18.01386 = phi ptr [ %.sroa.0455.3, %.lr.ph1389.preheader ], [ %.sroa.18.1.lcssa, %.loopexit ] ; 2 uses
  %.sroa.0455.01385 = phi ptr [ %.sroa.0455.3, %.lr.ph1389.preheader ], [ %.sroa.0455.1.lcssa, %.loopexit ] ; 2 uses
  %indvars.iv.next1809 = add nuw nsw i64 %indvars.iv1808, 1 ; 3 uses
  %i.xu = icmp slt i64 %indvars.iv.next1809, %i.qs
  br i1 %i.xu, label %.lr.ph1381, label %.loopexit

.lr.ph1381:                                       ; preds = %.lr.ph1389
  %i.xv = getelementptr inbounds nuw [8 x i8], ptr %i.qv, i64 %indvars.iv1808
  br label %bb.eb

bb.eb:                                            ; preds = %.lr.ph1381, %_ZNSt6vectorIPKdSaIS1_EE9push_backEOS1_.exit
  %indvars.iv1803 = phi i64 [ %indvars.iv1801, %.lr.ph1381 ], [ %indvars.iv.next1804, %_ZNSt6vectorIPKdSaIS1_EE9push_backEOS1_.exit ] ; 2 uses
  %.sroa.27.11378 = phi ptr [ %.sroa.27.01387, %.lr.ph1381 ], [ %.sroa.27.4, %_ZNSt6vectorIPKdSaIS1_EE9push_backEOS1_.exit ] ; 5 uses
  %.sroa.18.11377 = phi ptr [ %.sroa.18.01386, %.lr.ph1381 ], [ %.sroa.18.3, %_ZNSt6vectorIPKdSaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  %.sroa.0455.11376 = phi ptr [ %.sroa.0455.01385, %.lr.ph1381 ], [ %.sroa.0455.4, %_ZNSt6vectorIPKdSaIS1_EE9push_backEOS1_.exit ] ; 7 uses
  %i.xw = load ptr, ptr %i.xv, align 8, !tbaa !34
  %i.xx = getelementptr inbounds nuw [8 x i8], ptr %i.xw, i64 %indvars.iv1803 ; 2 uses
  %.not.i.i360 = icmp eq ptr %.sroa.18.11377, %.sroa.27.11378
  br i1 %.not.i.i360, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  store ptr %i.xx, ptr %.sroa.18.11377, align 8, !tbaa !34
  br label %_ZNSt6vectorIPKdSaIS1_EE9push_backEOS1_.exit

bb.ed:                                            ; preds = %bb.eb
  %i.xy = ptrtoint ptr %.sroa.27.11378 to i64
  %i.xz = ptrtoint ptr %.sroa.0455.11376 to i64
  %i.ya = sub i64 %i.xy, %i.xz                    ; 6 uses
  %i.yb = icmp eq i64 %i.ya, 9223372036854775800
  br i1 %i.yb, label %bb.ee, label %_ZNKSt6vectorIPKdSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ee:                                            ; preds = %bb.ed
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
          to label %.noexc364 unwind label %.loopexit.split-lp

.noexc364:                                        ; preds = %bb.ee
  unreachable

_ZNKSt6vectorIPKdSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ed
  %i.yc = ashr exact i64 %i.ya, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i361 = call i64 @llvm.umax.i64(i64 %i.yc, i64 1)
  %i.yd = add nsw i64 %.sroa.speculated.i.i.i.i361, %i.yc ; 2 uses
  %i.ye = icmp ult i64 %i.yd, %i.yc
  %i.yf = call i64 @llvm.umin.i64(i64 %i.yd, i64 1152921504606846975)
  %i.yg = select i1 %i.ye, i64 1152921504606846975, i64 %i.yf ; 3 uses
  %.not.i.i.i.i362 = icmp ne i64 %i.yg, 0
  call void @llvm.assume(i1 %.not.i.i.i.i362)
  %i.yh = shl nuw nsw i64 %i.yg, 3
  %i.yi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yh) #19
          to label %.noexc365 unwind label %.loopexit717 ; 4 uses

.noexc365:                                        ; preds = %_ZNKSt6vectorIPKdSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.yj = getelementptr inbounds i8, ptr %i.yi, i64 %i.ya ; 2 uses
  store ptr %i.xx, ptr %i.yj, align 8, !tbaa !34
  %i.yk = icmp sgt i64 %i.ya, 0
  br i1 %i.yk, label %bb.ef, label %_ZNSt6vectorIPKdSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.ef:                                            ; preds = %.noexc365
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.yi, ptr align 8 %.sroa.0455.11376, i64 %i.ya, i1 false)
  br label %_ZNSt6vectorIPKdSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIPKdSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.ef, %.noexc365
  %.not.i17.i.i.i363 = icmp eq ptr %.sroa.0455.11376, null
  br i1 %.not.i17.i.i.i363, label %_ZNSt6vectorIPKdSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.eg

bb.eg:                                            ; preds = %_ZNSt6vectorIPKdSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0455.11376, i64 noundef %i.ya) #17
  br label %_ZNSt6vectorIPKdSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIPKdSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.eg, %_ZNSt6vectorIPKdSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %i.yl = getelementptr inbounds nuw [8 x i8], ptr %i.yi, i64 %i.yg
  br label %_ZNSt6vectorIPKdSaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIPKdSaIS1_EE9push_backEOS1_.exit:     ; preds = %_ZNSt6vectorIPKdSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.ec
  %.sroa.0455.4 = phi ptr [ %i.yi, %_ZNSt6vectorIPKdSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.0455.11376, %bb.ec ] ; 2 uses
  %.pn703 = phi ptr [ %i.yj, %_ZNSt6vectorIPKdSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.18.11377, %bb.ec ]
  %.sroa.27.4 = phi ptr [ %i.yl, %_ZNSt6vectorIPKdSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.27.11378, %bb.ec ] ; 2 uses
  %.sroa.18.3 = getelementptr inbounds nuw i8, ptr %.pn703, i64 8 ; 2 uses
  %indvars.iv.next1804 = add nuw nsw i64 %indvars.iv1803, 1 ; 2 uses
  %exitcond1807.not = icmp eq i64 %indvars.iv.next1804, %wide.trip.count1806
  br i1 %exitcond1807.not, label %.loopexit, label %bb.eb, !llvm.loop !94

.loopexit717:                                     ; preds = %_ZNKSt6vectorIPKdSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.gb

.loopexit.split-lp:                               ; preds = %bb.ee
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.gb

bb.eh:                                            ; preds = %._crit_edge1390
  invoke void @qsort(ptr noundef nonnull %.sroa.0455.1.lcssa, i64 noundef %i.xq, i64 noundef 8, ptr noundef nonnull @_ZN7msdfgenL12cmpDoublePtrEPKvS1_)
          to label %bb.ei unwind label %.thread662

.thread662:                                       ; preds = %bb.eh
  %i.ym = landingpad { ptr, i32 }
          cleanup
  br label %bb.gc

bb.ei:                                            ; preds = %._crit_edge1390, %bb.eh
  %i.yn = shl nuw nsw i64 %i.qm, 2                ; 3 uses
  %i.yo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yn) #19
          to label %.noexc369 unwind label %bb.ej ; 9 uses

.noexc369:                                        ; preds = %bb.ei
  store i32 0, ptr %i.yo, align 4, !tbaa !19
  br i1 %i.qq, label %_ZNSt6vectorIPiSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc369
  %i.yp = getelementptr i8, ptr %i.yo, i64 4
  %.idx.i.i.i.i.i.i.i367 = shl nuw nsw i64 %i.qp, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.yp, i8 0, i64 %.idx.i.i.i.i.i.i.i367, i1 false), !tbaa !19
  br label %_ZNSt6vectorIPiSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i

_ZNSt6vectorIPiSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc369
  %i.yq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qu) #19
          to label %.noexc374 unwind label %bb.ek ; 17 uses

.noexc374:                                        ; preds = %_ZNSt6vectorIPiSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i
  store ptr null, ptr %i.yq, align 8, !tbaa !36
  br i1 %i.qx, label %.lr.ph1395.preheader, label %_ZSt6fill_nIPPimS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPPimS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc374
  %i.yr = getelementptr i8, ptr %i.yq, i64 8
  %.idx.i.i.i.i.i.i.i371 = shl nuw nsw i64 %i.qw, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.yr, i8 0, i64 %.idx.i.i.i.i.i.i.i371, i1 false), !tbaa !36
  br label %.lr.ph1395.preheader

.lr.ph1395.preheader:                             ; preds = %.noexc374, %_ZSt6fill_nIPPimS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %xtraiter3335 = and i64 %wide.trip.count1812, 3 ; 3 uses
  %i.ys = icmp slt i32 %i.qi, 5
  br i1 %i.ys, label %.lr.ph1395.epil.preheader, label %.lr.ph1395.preheader.new

.lr.ph1395.preheader.new:                         ; preds = %.lr.ph1395.preheader
  %unroll_iter3339 = and i64 %wide.trip.count1812, 2147483644
  br label %.lr.ph1395

.preheader716.unr-lcssa:                          ; preds = %.lr.ph1395
  %lcmp.mod3337.not = icmp eq i64 %xtraiter3335, 0
  br i1 %lcmp.mod3337.not, label %.preheader716, label %.lr.ph1395.epil.preheader

.lr.ph1395.epil.preheader:                        ; preds = %.preheader716.unr-lcssa, %.lr.ph1395.preheader
  %indvars.iv1814.epil.init = phi i64 [ 0, %.lr.ph1395.preheader ], [ %indvars.iv.next1815.3, %.preheader716.unr-lcssa ]
  %lcmp.mod3338 = icmp ne i64 %xtraiter3335, 0
  call void @llvm.assume(i1 %lcmp.mod3338)
  br label %.lr.ph1395.epil

.lr.ph1395.epil:                                  ; preds = %.lr.ph1395.epil, %.lr.ph1395.epil.preheader
  %indvars.iv1814.epil = phi i64 [ %indvars.iv1814.epil.init, %.lr.ph1395.epil.preheader ], [ %indvars.iv.next1815.epil, %.lr.ph1395.epil ] ; 3 uses
  %epil.iter3336 = phi i64 [ 0, %.lr.ph1395.epil.preheader ], [ %epil.iter3336.next, %.lr.ph1395.epil ]
  %i.yt = mul nuw nsw i64 %indvars.iv1814.epil, %i.qs
  %i.yu = getelementptr inbounds nuw [4 x i8], ptr %i.yo, i64 %i.yt
  %i.yv = getelementptr inbounds nuw [8 x i8], ptr %i.yq, i64 %indvars.iv1814.epil
  store ptr %i.yu, ptr %i.yv, align 8, !tbaa !36
  %indvars.iv.next1815.epil = add nuw nsw i64 %indvars.iv1814.epil, 1
  %epil.iter3336.next = add i64 %epil.iter3336, 1 ; 2 uses
  %epil.iter3336.cmp.not = icmp eq i64 %epil.iter3336.next, %xtraiter3335
  br i1 %epil.iter3336.cmp.not, label %.preheader716, label %.lr.ph1395.epil, !llvm.loop !95

.preheader716:                                    ; preds = %.lr.ph1395.epil, %.preheader716.unr-lcssa
  %i.yw = icmp sgt i32 %i.xr, 0
  br i1 %i.yw, label %.lr.ph1397, label %.critedge

.lr.ph1397:                                       ; preds = %.preheader716
  %i.yx = ptrtoint ptr %i.qo to i64
  %wide.trip.count1823 = and i64 %i.xq, 2147483647
  br label %bb.el

bb.ej:                                            ; preds = %bb.ei
  %i.yy = landingpad { ptr, i32 }
          cleanup
  br label %bb.gb

bb.ek:                                            ; preds = %_ZNSt6vectorIPiSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i
  %i.yz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit419

.lr.ph1395:                                       ; preds = %.lr.ph1395, %.lr.ph1395.preheader.new
  %indvars.iv1814 = phi i64 [ 0, %.lr.ph1395.preheader.new ], [ %indvars.iv.next1815.3, %.lr.ph1395 ] ; 6 uses
  %niter3340 = phi i64 [ 0, %.lr.ph1395.preheader.new ], [ %niter3340.next.3, %.lr.ph1395 ]
  %i.za = mul nuw nsw i64 %indvars.iv1814, %i.qs
  %i.zb = getelementptr inbounds nuw [4 x i8], ptr %i.yo, i64 %i.za
  %i.zc = getelementptr inbounds nuw [8 x i8], ptr %i.yq, i64 %indvars.iv1814
  store ptr %i.zb, ptr %i.zc, align 8, !tbaa !36
  %indvars.iv.next1815 = or disjoint i64 %indvars.iv1814, 1 ; 2 uses
  %i.zd = mul nuw nsw i64 %indvars.iv.next1815, %i.qs
  %i.ze = getelementptr inbounds nuw [4 x i8], ptr %i.yo, i64 %i.zd
  %i.zf = getelementptr inbounds nuw [8 x i8], ptr %i.yq, i64 %indvars.iv.next1815
  store ptr %i.ze, ptr %i.zf, align 8, !tbaa !36
  %indvars.iv.next1815.1 = or disjoint i64 %indvars.iv1814, 2 ; 2 uses
  %i.zg = mul nuw nsw i64 %indvars.iv.next1815.1, %i.qs
  %i.zh = getelementptr inbounds nuw [4 x i8], ptr %i.yo, i64 %i.zg
  %i.zi = getelementptr inbounds nuw [8 x i8], ptr %i.yq, i64 %indvars.iv.next1815.1
  store ptr %i.zh, ptr %i.zi, align 8, !tbaa !36
  %indvars.iv.next1815.2 = or disjoint i64 %indvars.iv1814, 3 ; 2 uses
  %i.zj = mul nuw nsw i64 %indvars.iv.next1815.2, %i.qs
  %i.zk = getelementptr inbounds nuw [4 x i8], ptr %i.yo, i64 %i.zj
  %i.zl = getelementptr inbounds nuw [8 x i8], ptr %i.yq, i64 %indvars.iv.next1815.2
  store ptr %i.zk, ptr %i.zl, align 8, !tbaa !36
  %indvars.iv.next1815.3 = add nuw nsw i64 %indvars.iv1814, 4 ; 2 uses
  %niter3340.next.3 = add i64 %niter3340, 4       ; 2 uses
  %niter3340.ncmp.3 = icmp eq i64 %niter3340.next.3, %unroll_iter3339
  br i1 %niter3340.ncmp.3, label %.preheader716.unr-lcssa, label %.lr.ph1395, !llvm.loop !96

bb.el:                                            ; preds = %.lr.ph1397, %bb.em
  %indvars.iv1820.a = phi i64 [ 0, %.lr.ph1397 ], [ %indvars.iv.next1821.a, %bb.em ] ; 3 uses
  %i.zm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0455.1.lcssa, i64 %indvars.iv1820.a
  %i.zn = load ptr, ptr %i.zm, align 8, !tbaa !34 ; 2 uses
  %i.zo = load double, ptr %i.zn, align 8, !tbaa !32
  %i.zp = fcmp oeq double %i.zo, 0.000000e+00
  br i1 %i.zp, label %bb.em, label %.critedge.loopexit.split.loop.exit2411

bb.em:                                            ; preds = %bb.el
  %i.zq = ptrtoint ptr %i.zn to i64
  %i.zr = sub i64 %i.zq, %i.yx
  %i.zs = lshr exact i64 %i.zr, 3
  %i.zt = trunc i64 %i.zs to i32                  ; 2 uses
  %i.zu = sdiv i32 %i.zt, %i.qj
  %i.zv = srem i32 %i.zt, %i.qj
  %i.zw = sext i32 %i.zu to i64                   ; 2 uses
  %i.zx = getelementptr inbounds nuw [8 x i8], ptr %i.yq, i64 %i.zw
  %i.zy = load ptr, ptr %i.zx, align 8, !tbaa !36
  %i.zz = sext i32 %i.zv to i64                   ; 2 uses
  %i.aaa = getelementptr inbounds [4 x i8], ptr %i.zy, i64 %i.zz
  store i32 1, ptr %i.aaa, align 4, !tbaa !19
  %i.aab = getelementptr inbounds nuw [8 x i8], ptr %i.yq, i64 %i.zz
  %i.aac = load ptr, ptr %i.aab, align 8, !tbaa !36
  %i.aad = getelementptr inbounds [4 x i8], ptr %i.aac, i64 %i.zw
  store i32 1, ptr %i.aad, align 4, !tbaa !19
  %indvars.iv.next1821.a = add nuw nsw i64 %indvars.iv1820.a, 1 ; 2 uses
  %exitcond1824.not = icmp eq i64 %indvars.iv.next1821.a, %wide.trip.count1823
  br i1 %exitcond1824.not, label %.critedge, label %bb.el, !llvm.loop !97

.critedge.loopexit.split.loop.exit2411:           ; preds = %bb.el
  %i.aae = trunc nuw nsw i64 %indvars.iv1820.a to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.em, %.critedge.loopexit.split.loop.exit2411, %.preheader716
  %.0127.lcssa = phi i32 [ 0, %.preheader716 ], [ %i.aae, %.critedge.loopexit.split.loop.exit2411 ], [ %i.xr, %bb.em ] ; 2 uses
  %i.aaf = shl nuw nsw i32 %i.qj, 1
  %i.aag = zext nneg i32 %i.aaf to i64
  %i.aah = shl nuw nsw i64 %i.aag, 2              ; 4 uses
  %i.aai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aah) #19
          to label %.preheader.preheader.i383 unwind label %bb.fu ; 19 uses

.preheader.preheader.i383:                        ; preds = %.critedge
  store i32 0, ptr %i.aai, align 4, !tbaa !19
  %i.aaj = getelementptr i8, ptr %i.aai, i64 4
  %.idx.i.i.i.i.i.i.i377 = add nsw i64 %i.aah, -4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.aaj, i8 0, i64 %.idx.i.i.i.i.i.i.i377, i1 false), !tbaa !19
  %wide.trip.count34.i = zext nneg i32 %i.qj to i64
  br label %.preheader.i384

.preheader.i384:                                  ; preds = %bb.ey, %.preheader.preheader.i383
  %indvars.iv31.i = phi i64 [ 0, %.preheader.preheader.i383 ], [ %indvars.iv.next32.i, %bb.ey ] ; 9 uses
  %.02226.i = phi i64 [ %2, %.preheader.preheader.i383 ], [ %.123.i, %bb.ey ] ; 11 uses
  %.not29.i = icmp eq i64 %indvars.iv31.i, 0
  br i1 %.not29.i, label %._crit_edge.thread.i, label %.lr.ph.i385

.lr.ph.i385:                                      ; preds = %.preheader.i384
  %i.aak = getelementptr inbounds nuw [8 x i8], ptr %i.yq, i64 %indvars.iv31.i
  %i.aal = load ptr, ptr %i.aak, align 8, !tbaa !36 ; 3 uses
  %xtraiter3341 = and i64 %indvars.iv31.i, 1
  %i.aam = icmp eq i64 %indvars.iv31.i, 1
  br i1 %i.aam, label %.epil.preheader, label %.lr.ph.i385.new

.lr.ph.i385.new:                                  ; preds = %.lr.ph.i385
  %unroll_iter3346 = and i64 %indvars.iv31.i, 9223372036854775806
  br label %bb.eo

._crit_edge.i390.unr-lcssa:                       ; preds = %bb.es
  %lcmp.mod3343.not = icmp eq i64 %xtraiter3341, 0
  br i1 %lcmp.mod3343.not, label %._crit_edge.i390, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i390.unr-lcssa, %.lr.ph.i385
  %indvars.iv.i386.epil.init = phi i64 [ 0, %.lr.ph.i385 ], [ %indvars.iv.next.i388.1, %._crit_edge.i390.unr-lcssa ] ; 2 uses
  %.01724.i.epil.init = phi i32 [ 7, %.lr.ph.i385 ], [ %.1.i.1, %._crit_edge.i390.unr-lcssa ] ; 2 uses
  %lcmp.mod3345 = trunc i64 %indvars.iv31.i to i1
  call void @llvm.assume(i1 %lcmp.mod3345)
  %i.aan = getelementptr inbounds nuw [4 x i8], ptr %i.aal, i64 %indvars.iv.i386.epil.init
  %i.aao = load i32, ptr %i.aan, align 4, !tbaa !19
  %.not.i387.epil = icmp eq i32 %i.aao, 0
  br i1 %.not.i387.epil, label %._crit_edge.i390, label %bb.en

bb.en:                                            ; preds = %.epil.preheader
  %i.aap = getelementptr inbounds nuw [4 x i8], ptr %i.aai, i64 %indvars.iv.i386.epil.init
  %i.aaq = load i32, ptr %i.aap, align 4, !tbaa !19
  %i.aar = shl nuw i32 1, %i.aaq
  %i.aas = xor i32 %i.aar, -1
  %i.aat = and i32 %.01724.i.epil.init, %i.aas
  br label %._crit_edge.i390

._crit_edge.i390:                                 ; preds = %.epil.preheader, %bb.en, %._crit_edge.i390.unr-lcssa
  %.1.i.lcssa = phi i32 [ %.1.i.1, %._crit_edge.i390.unr-lcssa ], [ %i.aat, %bb.en ], [ %.01724.i.epil.init, %.epil.preheader ]
  switch i32 %.1.i.lcssa, label %bb.ey [
    i32 7, label %._crit_edge.thread.i
    i32 2, label %bb.et
    i32 3, label %bb.eu
    i32 4, label %bb.ev
    i32 5, label %bb.ew
    i32 6, label %bb.ex
  ]

bb.eo:                                            ; preds = %bb.es, %.lr.ph.i385.new
  %indvars.iv.i386 = phi i64 [ 0, %.lr.ph.i385.new ], [ %indvars.iv.next.i388.1, %bb.es ] ; 4 uses
  %.01724.i = phi i32 [ 7, %.lr.ph.i385.new ], [ %.1.i.1, %bb.es ] ; 2 uses
  %niter3347 = phi i64 [ 0, %.lr.ph.i385.new ], [ %niter3347.next.1, %bb.es ]
  %i.aau = getelementptr inbounds nuw [4 x i8], ptr %i.aal, i64 %indvars.iv.i386
  %i.aav = load i32, ptr %i.aau, align 4, !tbaa !19
  %.not.i387 = icmp eq i32 %i.aav, 0
  br i1 %.not.i387, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.aaw = getelementptr inbounds nuw [4 x i8], ptr %i.aai, i64 %indvars.iv.i386
  %i.aax = load i32, ptr %i.aaw, align 4, !tbaa !19
  %i.aay = shl nuw i32 1, %i.aax
  %i.aaz = xor i32 %i.aay, -1
  %i.aba = and i32 %.01724.i, %i.aaz
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo
  %.1.i = phi i32 [ %i.aba, %bb.ep ], [ %.01724.i, %bb.eo ] ; 2 uses
  %indvars.iv.next.i388 = or disjoint i64 %indvars.iv.i386, 1 ; 2 uses
  %i.abb = getelementptr inbounds nuw [4 x i8], ptr %i.aal, i64 %indvars.iv.next.i388
  %i.abc = load i32, ptr %i.abb, align 4, !tbaa !19
  %.not.i387.1 = icmp eq i32 %i.abc, 0
  br i1 %.not.i387.1, label %bb.es, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.abd = getelementptr inbounds nuw [4 x i8], ptr %i.aai, i64 %indvars.iv.next.i388
  %i.abe = load i32, ptr %i.abd, align 4, !tbaa !19
  %i.abf = shl nuw i32 1, %i.abe
  %i.abg = xor i32 %i.abf, -1
  %i.abh = and i32 %.1.i, %i.abg
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq
  %.1.i.1 = phi i32 [ %i.abh, %bb.er ], [ %.1.i, %bb.eq ] ; 3 uses
  %indvars.iv.next.i388.1 = add nuw nsw i64 %indvars.iv.i386, 2 ; 2 uses
  %niter3347.next.1 = add i64 %niter3347, 2       ; 2 uses
  %niter3347.ncmp.1 = icmp eq i64 %niter3347.next.1, %unroll_iter3346
  br i1 %niter3347.ncmp.1, label %._crit_edge.i390.unr-lcssa, label %bb.eo, !llvm.loop !98

bb.et:                                            ; preds = %._crit_edge.i390
  br label %bb.ey

bb.eu:                                            ; preds = %._crit_edge.i390
  %i.abi = trunc i64 %.02226.i to i32
  %i.abj = and i32 %i.abi, 1
  %i.abk = lshr i64 %.02226.i, 1
  br label %bb.ey

bb.ev:                                            ; preds = %._crit_edge.i390
  br label %bb.ey

bb.ew:                                            ; preds = %._crit_edge.i390
  %i.abl = trunc i64 %.02226.i to i32
  %i.abm = lshr i64 %.02226.i, 1
  %i.abn = shl i32 %i.abl, 1
  %i.abo = and i32 %i.abn, 2
  %i.abp = xor i32 %i.abo, 2
  br label %bb.ey

bb.ex:                                            ; preds = %._crit_edge.i390
  %i.abq = trunc i64 %.02226.i to i32
  %i.abr = and i32 %i.abq, 1
  %i.abs = lshr i64 %.02226.i, 1
  %i.abt = add nuw nsw i32 %i.abr, 1
  br label %bb.ey

._crit_edge.thread.i:                             ; preds = %._crit_edge.i390, %.preheader.i384
  %i.abu = urem i64 %.02226.i, 3
  %i.abv = trunc nuw nsw i64 %i.abu to i32
  %i.abw = udiv i64 %.02226.i, 3
  %i.abx = trunc nuw nsw i64 %indvars.iv31.i to i32
  %i.aby = add nuw nsw i32 %i.abv, %i.abx
  %i.abz = urem i32 %i.aby, 3
  br label %bb.ey

bb.ey:                                            ; preds = %._crit_edge.thread.i, %bb.ex, %bb.ew, %bb.ev, %bb.eu, %bb.et, %._crit_edge.i390
  %.123.i = phi i64 [ %.02226.i, %._crit_edge.i390 ], [ %i.abw, %._crit_edge.thread.i ], [ %.02226.i, %bb.et ], [ %i.abk, %bb.eu ], [ %.02226.i, %bb.ev ], [ %i.abm, %bb.ew ], [ %i.abs, %bb.ex ]
  %.0.i = phi i32 [ 0, %._crit_edge.i390 ], [ %i.abz, %._crit_edge.thread.i ], [ 1, %bb.et ], [ %i.abj, %bb.eu ], [ 2, %bb.ev ], [ %i.abp, %bb.ew ], [ %i.abt, %bb.ex ]
  %i.aca = getelementptr inbounds nuw [4 x i8], ptr %i.aai, i64 %indvars.iv31.i
  store i32 %.0.i, ptr %i.aca, align 4, !tbaa !19
  %indvars.iv.next32.i = add nuw nsw i64 %indvars.iv31.i, 1 ; 2 uses
  %exitcond35.not.i = icmp eq i64 %indvars.iv.next32.i, %wide.trip.count34.i
  br i1 %exitcond35.not.i, label %_ZN7msdfgenL22colorSecondDegreeGraphEPiPKPKiiy.exit, label %.preheader.i384, !llvm.loop !99

_ZN7msdfgenL22colorSecondDegreeGraphEPiPKPKiiy.exit: ; preds = %bb.ey
  %i.acb = icmp slt i32 %.0127.lcssa, %i.xr
  br i1 %i.acb, label %.lr.ph1402, label %.preheader

.lr.ph1402:                                       ; preds = %_ZN7msdfgenL22colorSecondDegreeGraphEPiPKPKiiy.exit
  %i.acc = ptrtoint ptr %i.qo to i64
  %i.acd = getelementptr inbounds nuw [4 x i8], ptr %i.aai, i64 %i.qs ; 11 uses
  %wide.trip.count.i.i = zext nneg i32 %i.qj to i64
  %i.ace = shl nuw nsw i64 %wide.trip.count.i.i, 2 ; 2 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.acl = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.acm = zext i32 %.0127.lcssa to i64
  %xtraiter3348 = and i64 %wide.trip.count.a, 1
  %i.acn = icmp eq i64 %5, 0
  %unroll_iter3353 = and i64 %wide.trip.count.a, 2147483646
  %lcmp.mod3350.not = icmp eq i64 %xtraiter3348, 0
  %lcmp.mod3352 = trunc i32 %i.qj to i1
  %xtraiter3355 = and i64 %wide.trip.count.a, 1
  %i.aco = icmp eq i64 %5, 0
  %unroll_iter3360 = and i64 %wide.trip.count.a, 2147483646
  %lcmp.mod3357.not = icmp eq i64 %xtraiter3355, 0
  %lcmp.mod3359 = trunc i32 %i.qj to i1
  br label %bb.ez

.preheader:                                       ; preds = %_ZN7msdfgenL10tryAddEdgeEPiPKS0_iiiS0_.exit, %_ZN7msdfgenL22colorSecondDegreeGraphEPiPKPKiiy.exit
  %i.acp = icmp sgt i32 %i.qb, 0
  br i1 %i.acp, label %.lr.ph1405.preheader, label %_ZNSt6vectorIiSaIiEED2Ev.exit407

.lr.ph1405.preheader:                             ; preds = %.preheader
  %wide.trip.count1831 = and i64 %i.qc, 2147483647
  %xtraiter3362 = and i64 %i.qc, 1
  %i.acq = icmp eq i64 %wide.trip.count1831, 1
  br i1 %i.acq, label %.lr.ph1405.epil.preheader, label %.lr.ph1405.preheader.new

.lr.ph1405.preheader.new:                         ; preds = %.lr.ph1405.preheader
  %unroll_iter3366 = and i64 %i.qc, 2147483646
  br label %.lr.ph1405

bb.ez:                                            ; preds = %.lr.ph1402, %_ZN7msdfgenL10tryAddEdgeEPiPKS0_iiiS0_.exit
  %indvars.iv1825 = phi i64 [ %i.acm, %.lr.ph1402 ], [ %indvars.iv.next1826, %_ZN7msdfgenL10tryAddEdgeEPiPKS0_iiiS0_.exit ] ; 2 uses
  %i.acr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0455.1.lcssa, i64 %indvars.iv1825
  %i.acs = load ptr, ptr %i.acr, align 8, !tbaa !34
  %i.act = ptrtoint ptr %i.acs to i64
  %i.acu = sub i64 %i.act, %i.acc
  %i.acv = lshr exact i64 %i.acu, 3
  %i.acw = trunc i64 %i.acv to i32                ; 2 uses
  %i.acx = sdiv i32 %i.acw, %i.qj
  %i.acy = srem i32 %i.acw, %i.qj                 ; 2 uses
  %i.acz = sext i32 %i.acx to i64                 ; 6 uses
  %i.ada = getelementptr inbounds [8 x i8], ptr %i.yq, i64 %i.acz ; 2 uses
  %i.adb = load ptr, ptr %i.ada, align 8, !tbaa !36
  %i.adc = sext i32 %i.acy to i64                 ; 5 uses
  %i.add = getelementptr inbounds [4 x i8], ptr %i.adb, i64 %i.adc
  store i32 1, ptr %i.add, align 4, !tbaa !19
  %i.ade = getelementptr inbounds [8 x i8], ptr %i.yq, i64 %i.adc ; 2 uses
  %i.adf = load ptr, ptr %i.ade, align 8, !tbaa !36 ; 4 uses
  %i.adg = getelementptr inbounds [4 x i8], ptr %i.adf, i64 %i.acz
  store i32 1, ptr %i.adg, align 4, !tbaa !19
  %i.adh = getelementptr inbounds [4 x i8], ptr %i.aai, i64 %i.acz
  %i.adi = load i32, ptr %i.adh, align 4, !tbaa !19
  %i.adj = getelementptr inbounds [4 x i8], ptr %i.aai, i64 %i.adc ; 2 uses
  %i.adk = load i32, ptr %i.adj, align 4, !tbaa !19
  %.not.i391 = icmp eq i32 %i.adi, %i.adk
  br i1 %.not.i391, label %.lr.ph.i.i.preheader, label %_ZN7msdfgenL10tryAddEdgeEPiPKS0_iiiS0_.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.ez
  br i1 %i.acn, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.fc
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %bb.fc ], [ 0, %.lr.ph.i.i.preheader ] ; 4 uses
  %.089.i.i = phi i32 [ %.1.i.i.1, %bb.fc ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %niter3354 = phi i64 [ %niter3354.next.1, %bb.fc ], [ 0, %.lr.ph.i.i.preheader ]
  %i.adl = getelementptr inbounds nuw [4 x i8], ptr %i.adf, i64 %indvars.iv.i.i
  %i.adm = load i32, ptr %i.adl, align 4, !tbaa !19
  %.not.i.i392 = icmp eq i32 %i.adm, 0
  br i1 %.not.i.i392, label %.lr.ph.i.i.1, label %bb.fa

bb.fa:                                            ; preds = %.lr.ph.i.i
  %i.adn = getelementptr inbounds nuw [4 x i8], ptr %i.aai, i64 %indvars.iv.i.i
  %i.ado = load i32, ptr %i.adn, align 4, !tbaa !19
  %i.adp = shl nuw i32 1, %i.ado
  %i.adq = or i32 %i.adp, %.089.i.i
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.fa, %.lr.ph.i.i
  %.1.i.i = phi i32 [ %i.adq, %bb.fa ], [ %.089.i.i, %.lr.ph.i.i ] ; 2 uses
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.adr = getelementptr inbounds nuw [4 x i8], ptr %i.adf, i64 %indvars.iv.next.i.i
  %i.ads = load i32, ptr %i.adr, align 4, !tbaa !19
  %.not.i.i392.1 = icmp eq i32 %i.ads, 0
  br i1 %.not.i.i392.1, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %.lr.ph.i.i.1
  %i.adt = getelementptr inbounds nuw [4 x i8], ptr %i.aai, i64 %indvars.iv.next.i.i
  %i.adu = load i32, ptr %i.adt, align 4, !tbaa !19
  %i.adv = shl nuw i32 1, %i.adu
  %i.adw = or i32 %i.adv, %.1.i.i
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %.lr.ph.i.i.1
  %.1.i.i.1 = phi i32 [ %i.adw, %bb.fb ], [ %.1.i.i, %.lr.ph.i.i.1 ] ; 3 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter3354.next.1 = add i64 %niter3354, 2       ; 2 uses
  %niter3354.ncmp.1 = icmp eq i64 %niter3354.next.1, %unroll_iter3353
  br i1 %niter3354.ncmp.1, label %_ZN7msdfgenL20vertexPossibleColorsEPKiS1_i.exit.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !100

_ZN7msdfgenL20vertexPossibleColorsEPKiS1_i.exit.i.unr-lcssa: ; preds = %bb.fc
  br i1 %lcmp.mod3350.not, label %_ZN7msdfgenL20vertexPossibleColorsEPKiS1_i.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN7msdfgenL20vertexPossibleColorsEPKiS1_i.exit.i.unr-lcssa, %.lr.ph.i.i.preheader
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %indvars.iv.next.i.i.1, %_ZN7msdfgenL20vertexPossibleColorsEPKiS1_i.exit.i.unr-lcssa ] ; 2 uses
  %.089.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %.1.i.i.1, %_ZN7msdfgenL20vertexPossibleColorsEPKiS1_i.exit.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod3352)
  %i.adx = getelementptr inbounds nuw [4 x i8], ptr %i.adf, i64 %indvars.iv.i.i.epil.init
  %i.ady = load i32, ptr %i.adx, align 4, !tbaa !19
  %.not.i.i392.epil = icmp eq i32 %i.ady, 0
  br i1 %.not.i.i392.epil, label %_ZN7msdfgenL20vertexPossibleColorsEPKiS1_i.exit.i, label %bb.fd

bb.fd:                                            ; preds = %.lr.ph.i.i.epil.preheader
  %i.adz = getelementptr inbounds nuw [4 x i8], ptr %i.aai, i64 %indvars.iv.i.i.epil.init
  %i.aea = load i32, ptr %i.adz, align 4, !tbaa !19
  %i.aeb = shl nuw i32 1, %i.aea
  %i.aec = or i32 %i.aeb, %.089.i.i.epil.init
  br label %_ZN7msdfgenL20vertexPossibleColorsEPKiS1_i.exit.i

_ZN7msdfgenL20vertexPossibleColorsEPKiS1_i.exit.i: ; preds = %.lr.ph.i.i.epil.preheader, %bb.fd, %_ZN7msdfgenL20vertexPossibleColorsEPKiS1_i.exit.i.unr-lcssa
  %.1.i.i.lcssa = phi i32 [ %.1.i.i.1, %_ZN7msdfgenL20vertexPossibleColorsEPKiS1_i.exit.i.unr-lcssa ], [ %i.aec, %bb.fd ], [ %.089.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %i.aed = and i32 %.1.i.i.lcssa, 7               ; 2 uses
  %.not71.i = icmp eq i32 %i.aed, 7
  br i1 %.not71.i, label %bb.fe, label %_ZN7msdfgenL20vertexPossibleColorsEPKiS1_i.exit.thread.i

_ZN7msdfgenL20vertexPossibleColorsEPKiS1_i.exit.thread.i: ; preds = %_ZN7msdfgenL20vertexPossibleColorsEPKiS1_i.exit.i
  %i.aee = xor i32 %i.aed, 7
  %i.aef = zext nneg i32 %i.aee to i64
  %i.aeg = getelementptr inbounds nuw [4 x i8], ptr @_ZZN7msdfgenL10tryAddEdgeEPiPKS0_iiiS0_E20FIRST_POSSIBLE_COLOR, i64 %i.aef
  %i.aeh = load i32, ptr %i.aeg, align 4, !tbaa !19
  store i32 %i.aeh, ptr %i.adj, align 4, !tbaa !19
  br label %_ZN7msdfgenL10tryAddEdgeEPiPKS0_iiiS0_.exit

bb.fe:                                            ; preds = %_ZN7msdfgenL20vertexPossibleColorsEPKiS1_i.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.acd, ptr nonnull align 4 %i.aai, i64 %i.ace, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %3, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseIiSaIiEE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %3, i64 noundef 0)
          to label %.noexc401 unwind label %bb.fv

.noexc401:                                        ; preds = %bb.fe
  %i.aei = getelementptr inbounds [4 x i8], ptr %i.acd, i64 %i.acz ; 2 uses
  %i.aej = load i32, ptr %i.aei, align 4, !tbaa !19
  %i.aek = shl nuw i32 1, %i.aej
  %i.ael = and i32 %i.aek, 7
  %i.aem = xor i32 %i.ael, 7
  %i.aen = zext nneg i32 %i.aem to i64
  %i.aeo = getelementptr inbounds nuw [4 x i8], ptr @_ZZN7msdfgenL10tryAddEdgeEPiPKS0_iiiS0_E20FIRST_POSSIBLE_COLOR, i64 %i.aen
  %i.aep = load i32, ptr %i.aeo, align 4, !tbaa !19
  %i.aeq = getelementptr inbounds [4 x i8], ptr %i.acd, i64 %i.adc
  store i32 %i.aep, ptr %i.aeq, align 4, !tbaa !19
  invoke fastcc void @_ZN7msdfgenL20uncolorSameNeighborsERSt5queueIiSt5dequeIiSaIiEEEPiPKPKiii(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull %i.acd, ptr noundef nonnull readonly %i.yq, i32 noundef range(i32 -2147483647, -2147483648) %i.acy, i32 noundef range(i32 -2147483648, 2147483647) %i.qj)
          to label %.preheader95.i unwind label %bb.fl

.preheader95.i:                                   ; preds = %.noexc401
  %i.aer = load ptr, ptr %i.acf, align 8, !tbaa !40
  %i.aes = load ptr, ptr %i.acg, align 8, !tbaa !40 ; 2 uses
  %i.aet = icmp eq ptr %i.aer, %i.aes
  br i1 %i.aet, label %._crit_edge.thread.i398, label %.lr.ph.i394

.lr.ph.i394:                                      ; preds = %.preheader95.i, %bb.fp
  %i.aeu = phi ptr [ %i.ago, %bb.fp ], [ %i.aes, %.preheader95.i ] ; 3 uses
  %.098.i = phi i32 [ %.2.i, %bb.fp ], [ 0, %.preheader95.i ] ; 2 uses
  %i.aev = load i32, ptr %i.aeu, align 4, !tbaa !19 ; 2 uses
  %i.aew = load ptr, ptr %i.ach, align 8, !tbaa !106
  %i.aex = getelementptr inbounds i8, ptr %i.aew, i64 -4
  %.not.i.i.i395 = icmp eq ptr %i.aeu, %i.aex
  br i1 %.not.i.i.i395, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %.lr.ph.i394
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aeu, i64 4
  br label %_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv.exit.i

bb.fg:                                            ; preds = %.lr.ph.i394
  %i.aez = load ptr, ptr %i.aci, align 8, !tbaa !107
  call void @_ZdlPvm(ptr noundef %i.aez, i64 noundef 512) #17
  %i.afa = load ptr, ptr %i.acj, align 8, !tbaa !43
  %i.afb = getelementptr inbounds nuw i8, ptr %i.afa, i64 8 ; 2 uses
  store ptr %i.afb, ptr %i.acj, align 8, !tbaa !44
  %i.afc = load ptr, ptr %i.afb, align 8, !tbaa !36 ; 3 uses
  store ptr %i.afc, ptr %i.aci, align 8, !tbaa !45
  %i.afd = getelementptr inbounds nuw i8, ptr %i.afc, i64 512
  store ptr %i.afd, ptr %i.ach, align 8, !tbaa !46
  br label %_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv.exit.i

_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv.exit.i:      ; preds = %bb.fg, %bb.ff
  %storemerge.i.i.i = phi ptr [ %i.aey, %bb.ff ], [ %i.afc, %bb.fg ] ; 2 uses
  store ptr %storemerge.i.i.i, ptr %i.acg, align 8, !tbaa !47
  %i.afe = sext i32 %i.aev to i64                 ; 3 uses
  %i.aff = getelementptr inbounds [8 x i8], ptr %i.yq, i64 %i.afe
  %i.afg = load ptr, ptr %i.aff, align 8, !tbaa !36 ; 4 uses
  br i1 %i.aco, label %.lr.ph.i80.i.epil.preheader, label %.lr.ph.i80.i

.lr.ph.i80.i:                                     ; preds = %_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv.exit.i, %bb.fj
  %indvars.iv.i81.i = phi i64 [ %indvars.iv.next.i85.i.1, %bb.fj ], [ 0, %_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv.exit.i ] ; 4 uses
  %.089.i82.i = phi i32 [ %.1.i84.i.1, %bb.fj ], [ 0, %_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv.exit.i ] ; 2 uses
  %niter3361 = phi i64 [ %niter3361.next.1, %bb.fj ], [ 0, %_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv.exit.i ]
  %i.afh = getelementptr inbounds nuw [4 x i8], ptr %i.afg, i64 %indvars.iv.i81.i
  %i.afi = load i32, ptr %i.afh, align 4, !tbaa !19
  %.not.i83.i = icmp eq i32 %i.afi, 0
  br i1 %.not.i83.i, label %.lr.ph.i80.i.1, label %bb.fh

bb.fh:                                            ; preds = %.lr.ph.i80.i
  %i.afj = getelementptr inbounds nuw [4 x i8], ptr %i.acd, i64 %indvars.iv.i81.i
  %i.afk = load i32, ptr %i.afj, align 4, !tbaa !19
  %i.afl = shl nuw i32 1, %i.afk
  %i.afm = or i32 %i.afl, %.089.i82.i
  br label %.lr.ph.i80.i.1

.lr.ph.i80.i.1:                                   ; preds = %bb.fh, %.lr.ph.i80.i
  %.1.i84.i = phi i32 [ %i.afm, %bb.fh ], [ %.089.i82.i, %.lr.ph.i80.i ] ; 2 uses
  %indvars.iv.next.i85.i = or disjoint i64 %indvars.iv.i81.i, 1 ; 2 uses
  %i.afn = getelementptr inbounds nuw [4 x i8], ptr %i.afg, i64 %indvars.iv.next.i85.i
  %i.afo = load i32, ptr %i.afn, align 4, !tbaa !19
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.r, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !114

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  %i.v = tail call ptr @__cxa_begin_catch(ptr %i.u) #16 ; 0 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.p, %.016.i.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i.i ], [ %i.p, %bb.c ] ; 2 uses
  tail call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i.i.i) #16
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.w, %.016.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.c
  invoke void @__cxa_rethrow() #18
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit.i.i.i.i.i
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit.thread unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #20
  unreachable

bb.f:                                             ; preds = %_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit.i.i.i.i.i
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %_ZSt10_ConstructIN7msdfgen10EdgeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt16allocator_traitsISaIN7msdfgen10EdgeHolderEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN7msdfgen10EdgeHolderEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_.exit ], [ %i.s, %_ZSt10_ConstructIN7msdfgen10EdgeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ] ; 4 uses
  %.ptr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8 ; 3 uses
  %.not14.i.i.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not14.i.i.i.i.i28, label %_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit43, label %.lr.ph.i.i.i.i.i29

.lr.ph.i.i.i.i.i29:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit, %_ZSt10_ConstructIN7msdfgen10EdgeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i37
  %.016.i.i.i.i.i30.idx = phi i64 [ %.016.i.i.i.i.i30.add, %_ZSt10_ConstructIN7msdfgen10EdgeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i37 ], [ 8, %_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit ] ; 3 uses
  %.01215.i.i.i.i.i31 = phi ptr [ %i.aa, %_ZSt10_ConstructIN7msdfgen10EdgeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i37 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit ] ; 2 uses
  %.016.i.i.i.i.i30.ptr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 %.016.i.i.i.i.i30.idx ; 2 uses
  invoke void @_ZN7msdfgen10EdgeHolderC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %.016.i.i.i.i.i30.ptr, ptr noundef nonnull align 8 dereferenceable(8) %.01215.i.i.i.i.i31)
          to label %_ZSt10_ConstructIN7msdfgen10EdgeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i37 unwind label %bb.g

_ZSt10_ConstructIN7msdfgen10EdgeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i37: ; preds = %.lr.ph.i.i.i.i.i29
  %i.aa = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i31, i64 8 ; 2 uses
  %.016.i.i.i.i.i30.add = add nuw nsw i64 %.016.i.i.i.i.i30.idx, 8 ; 2 uses
  %.not.i.i.i.i.i38 = icmp eq ptr %i.aa, %i.b
  br i1 %.not.i.i.i.i.i38, label %_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit43.loopexit, label %.lr.ph.i.i.i.i.i29, !llvm.loop !114

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i29
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  %i.ad = tail call ptr @__cxa_begin_catch(ptr %i.ac) #16 ; 0 uses
  %.not4.i.i.i.i.i.i.i32 = icmp eq i64 %.016.i.i.i.i.i30.idx, 8
  br i1 %.not4.i.i.i.i.i.i.i32, label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit.i.i.i.i.i36, label %.lr.ph.i.i.i.i.i.i.i33

.lr.ph.i.i.i.i.i.i.i33:                           ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i33
  %.05.i.i.i.i.i.i.i34 = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.i.i33 ], [ %.ptr, %bb.g ] ; 2 uses
  tail call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i.i.i34) #16
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i34, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i35 = icmp eq ptr %i.ae, %.016.i.i.i.i.i30.ptr
  br i1 %.not.i.i.i.i.i.i.i35, label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit.i.i.i.i.i36, label %.lr.ph.i.i.i.i.i.i.i33, !llvm.loop !0

_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit.i.i.i.i.i36: ; preds = %.lr.ph.i.i.i.i.i.i.i33, %bb.g
  invoke void @__cxa_rethrow() #18
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit.i.i.i.i.i36
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #20
  unreachable

bb.j:                                             ; preds = %_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit.i.i.i.i.i36
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit43.loopexit: ; preds = %_ZSt10_ConstructIN7msdfgen10EdgeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i37
  %.ptr60.le = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 %.016.i.i.i.i.i30.add
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit43

_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit43: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit43.loopexit, %_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %.0.lcssa.i.i.i.i.i39 = phi ptr [ %.ptr, %_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit ], [ %.ptr60.le, %_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit43.loopexit ]
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit43, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.ai, %.lr.ph.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit43 ] ; 2 uses
  tail call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i) #16
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ai, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit: ; preds = %.lr.ph.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit43
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i44 = icmp eq ptr %i.c, null
  br i1 %.not.i44, label %_ZNSt12_Vector_baseIN7msdfgen10EdgeHolderESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !30
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %i.al, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.am) #17
  br label %_ZNSt12_Vector_baseIN7msdfgen10EdgeHolderESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN7msdfgen10EdgeHolderESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit, %bb.k
  store ptr %i.p, ptr %0, align 8, !tbaa !24
  store ptr %.0.lcssa.i.i.i.i.i39, ptr %i.a, align 8, !tbaa !25
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.an, ptr %i.aj, align 8, !tbaa !30
  ret void

.thread:                                          ; preds = %_ZNKSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE12_M_check_lenEmPKc.exit
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  %i.aq = tail call ptr @__cxa_begin_catch(ptr %i.ap) #16 ; 0 uses
  br label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit.thread: ; preds = %bb.d
  %i.ar = extractvalue { ptr, i32 } %i.x, 0
  %i.as = tail call ptr @__cxa_begin_catch(ptr %i.ar) #16 ; 0 uses
  tail call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #16
  br label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit

bb.l:                                             ; preds = %bb.h
  %i.at = extractvalue { ptr, i32 } %i.af, 0
  %i.au = tail call ptr @__cxa_begin_catch(ptr %i.at) #16 ; 0 uses
  %.not4.i.i45 = icmp eq ptr %i.p, %.ptr
  br i1 %.not4.i.i45, label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i46

.lr.ph.i.i46:                                     ; preds = %bb.l, %.lr.ph.i.i46
  %.05.i.i47 = phi ptr [ %i.av, %.lr.ph.i.i46 ], [ %i.p, %bb.l ] ; 3 uses
  tail call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i47) #16
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i47, i64 8
  %.not.i.i48 = icmp eq ptr %.05.i.i47, %.0.lcssa.i.i.i.i.i
  br i1 %.not.i.i48, label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i46, !llvm.loop !0

bb.m:                                             ; preds = %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit: ; preds = %.lr.ph.i.i46, %.thread, %bb.l, %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit.thread
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #17
  invoke void @__cxa_rethrow() #18
          to label %bb.p unwind label %bb.m

bb.n:                                             ; preds = %bb.m
  resume { ptr, i32 } %i.aw

bb.o:                                             ; preds = %bb.m
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  tail call void @__clang_call_terminate(ptr %i.ay) #20
  unreachable

bb.p:                                             ; preds = %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit
  unreachable
}

declare void @_ZN7msdfgen10EdgeHolderC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

declare void @_ZN7msdfgen10EdgeHolderC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.sqrt.v4f64(<4 x double>) #8

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { builtin nounwind }
attributes #18 = { noreturn }
attributes #19 = { builtin allocsize(0) }
attributes #20 = { noreturn nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !20}
!1 = distinct !{!1, !20}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 _ZTSN7msdfgen7ContourE", !10, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"_ZTSN7msdfgen9EdgeColorE", !6, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"p1 _ZTSN7msdfgen10EdgeHolderE", !10, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"vtable pointer", !5, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!7, !7, i64 0}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!"_ZTSN7msdfgen11EdgeSegmentE", !13, i64 8}
!22 = !{!21, !13, i64 8}
!23 = !{!"_ZTSNSt12_Vector_baseIN7msdfgen10EdgeHolderESaIS1_EE17_Vector_impl_dataE", !15, i64 0, !15, i64 8, !15, i64 16}
!24 = !{!23, !15, i64 0}
!25 = !{!23, !15, i64 8}
!26 = !{!"p1 _ZTSN7msdfgen11EdgeSegmentE", !10, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"_ZTSN7msdfgen10EdgeHolderE", !26, i64 0}
!29 = !{!28, !26, i64 0}
!30 = !{!23, !15, i64 16}
!31 = !{!"double", !6, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !{!"p1 double", !10, i64 0}
!34 = !{!33, !33, i64 0}
!35 = !{!"p1 int", !10, i64 0}
!36 = !{!35, !35, i64 0}
!37 = !{!"any p2 pointer", !10, i64 0}
!38 = !{!"p2 int", !37, i64 0}
!39 = !{!"_ZTSSt15_Deque_iteratorIiRiPiE", !35, i64 0, !35, i64 8, !35, i64 16, !38, i64 24}
!40 = !{!39, !35, i64 0}
!41 = !{!"long", !6, i64 0}
!42 = !{!"_ZTSNSt11_Deque_baseIiSaIiEE16_Deque_impl_dataE", !38, i64 0, !41, i64 8, !39, i64 16, !39, i64 48}
!43 = !{!42, !38, i64 40}
!44 = !{!39, !38, i64 24}
!45 = !{!39, !35, i64 8}
!46 = !{!39, !35, i64 16}
!47 = !{!42, !35, i64 16}
!48 = !{!42, !38, i64 0}
!49 = !{!42, !38, i64 72}
!50 = !{!42, !41, i64 8}
!51 = !{!42, !35, i64 48}
!52 = distinct !{!52, !20}
!53 = distinct !{!53, !20}
!54 = distinct !{!54, !20}
!55 = distinct !{!55, !20}
!56 = distinct !{!56, !20}
!57 = distinct !{!57, !20}
!58 = distinct !{null}
!59 = distinct !{!59, !20}
!60 = distinct !{!60, !20}
!61 = distinct !{!61, !20}
!62 = distinct !{!62, !20}
!63 = distinct !{!63, !20, !74}
!64 = distinct !{!64, !20}
!65 = distinct !{!65, !20, !74}
!66 = distinct !{!66, !20}
!67 = distinct !{!67, !20}
!68 = !{!"bool", !6, i64 0}
!69 = !{!68, !68, i64 0}
!70 = !{!"_ZTSN7msdfgen25EdgeColoringInkTrapCornerE", !7, i64 0, !31, i64 8, !68, i64 16, !13, i64 20}
!71 = !{!70, !7, i64 0}
!72 = !{!70, !31, i64 8}
!73 = !{!70, !68, i64 16}
!74 = !{!"llvm.loop.peeled.count", i32 1}
!75 = !{i8 0, i8 2}
!76 = !{}
!77 = !{!70, !13, i64 20}
!78 = distinct !{!78, !20}
!79 = distinct !{!79, !20}
!80 = distinct !{!80, !20}
!81 = distinct !{!81, !20}
!82 = distinct !{!82, !20}
!83 = distinct !{!83, !20}
!84 = distinct !{!84, !105}
!85 = distinct !{!85, !20}
!86 = distinct !{!86, !20}
!87 = distinct !{!87, !20}
!88 = distinct !{null}
!89 = distinct !{!89, !20}
!90 = distinct !{!90, !20}
!91 = distinct !{!91, !20}
!92 = distinct !{!92, !20}
!93 = distinct !{!93, !20}
!94 = distinct !{!94, !20}
!95 = distinct !{!95, !105}
!96 = distinct !{!96, !20}
!97 = distinct !{!97, !20}
!98 = distinct !{!98, !20}
!99 = distinct !{!99, !20}
!100 = distinct !{!100, !20}
!101 = distinct !{!101, !20}
!102 = distinct !{!102, !20}
!103 = distinct !{!103, !20}
!104 = distinct !{!104, !20}
!105 = !{!"llvm.loop.unroll.disable"}
!106 = !{!42, !35, i64 32}
!107 = !{!42, !35, i64 24}
!108 = distinct !{!108, !20}
!109 = distinct !{!109, !20}
!110 = !{!42, !35, i64 64}
!111 = distinct !{!111, !20}
!112 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!113 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!114 = distinct !{!114, !20}
end_hunk_2
