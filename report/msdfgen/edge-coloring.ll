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
  %wide.trip.count = zext nneg i32 %i.qj to i64   ; 7 uses
  %i.qz = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.ra = icmp ult i32 %i.qi, 5
  br i1 %i.ra, label %.lr.ph1369.epil.preheader, label %.lr.ph1369.preheader.new

.lr.ph1369.preheader.new:                         ; preds = %.lr.ph1369.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph1369

.lr.ph1374.preheader.unr-lcssa:                   ; preds = %.lr.ph1369
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph1374.preheader, label %.lr.ph1369.epil.preheader

.lr.ph1369.epil.preheader:                        ; preds = %.lr.ph1374.preheader.unr-lcssa, %.lr.ph1369.preheader
  %indvars.iv1784.epil.init = phi i64 [ 0, %.lr.ph1369.preheader ], [ %indvars.iv.next1785.3, %.lr.ph1374.preheader.unr-lcssa ]
  %lcmp.mod3334 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod3334)
  br label %.lr.ph1369.epil

.lr.ph1369.epil:                                  ; preds = %.lr.ph1369.epil, %.lr.ph1369.epil.preheader
  %indvars.iv1784.epil = phi i64 [ %indvars.iv1784.epil.init, %.lr.ph1369.epil.preheader ], [ %indvars.iv.next1785.epil, %.lr.ph1369.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph1369.epil.preheader ], [ %epil.iter.next, %.lr.ph1369.epil ]
  %i.rb = mul nuw nsw i64 %indvars.iv1784.epil, %i.qs
  %i.rc = getelementptr inbounds nuw [8 x i8], ptr %i.qo, i64 %i.rb
  %i.rd = getelementptr inbounds nuw [8 x i8], ptr %i.qv, i64 %indvars.iv1784.epil
  store ptr %i.rc, ptr %i.rd, align 8, !tbaa !34
  %indvars.iv.next1785.epil = add nuw nsw i64 %indvars.iv1784.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph1374.preheader, label %.lr.ph1369.epil, !llvm.loop !84

.lr.ph1374.preheader:                             ; preds = %.lr.ph1369.epil, %.lr.ph1374.preheader.unr-lcssa
  %wide.trip.count1799 = zext nneg i32 %i.qj to i64
  %wide.trip.count1793 = zext i32 %i.qj to i64
  br label %.lr.ph1374

bb.dq:                                            ; preds = %bb.do
  %i.re = landingpad { ptr, i32 }
          cleanup
  br label %bb.gd

bb.dr:                                            ; preds = %_ZNSt6vectorIPdSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i, %bb.dp
  %i.rf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit425

.lr.ph1369:                                       ; preds = %.lr.ph1369, %.lr.ph1369.preheader.new
  %indvars.iv1784 = phi i64 [ 0, %.lr.ph1369.preheader.new ], [ %indvars.iv.next1785.3, %.lr.ph1369 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph1369.preheader.new ], [ %niter.next.3, %.lr.ph1369 ]
  %i.rg = mul nuw nsw i64 %indvars.iv1784, %i.qs
  %i.rh = getelementptr inbounds nuw [8 x i8], ptr %i.qo, i64 %i.rg
  %i.ri = getelementptr inbounds nuw [8 x i8], ptr %i.qv, i64 %indvars.iv1784
  store ptr %i.rh, ptr %i.ri, align 8, !tbaa !34
  %indvars.iv.next1785 = or disjoint i64 %indvars.iv1784, 1 ; 2 uses
  %i.rj = mul nuw nsw i64 %indvars.iv.next1785, %i.qs
  %i.rk = getelementptr inbounds nuw [8 x i8], ptr %i.qo, i64 %i.rj
  %i.rl = getelementptr inbounds nuw [8 x i8], ptr %i.qv, i64 %indvars.iv.next1785
  store ptr %i.rk, ptr %i.rl, align 8, !tbaa !34
  %indvars.iv.next1785.1 = or disjoint i64 %indvars.iv1784, 2 ; 2 uses
  %i.rm = mul nuw nsw i64 %indvars.iv.next1785.1, %i.qs
  %i.rn = getelementptr inbounds nuw [8 x i8], ptr %i.qo, i64 %i.rm
  %i.ro = getelementptr inbounds nuw [8 x i8], ptr %i.qv, i64 %indvars.iv.next1785.1
  store ptr %i.rn, ptr %i.ro, align 8, !tbaa !34
  %indvars.iv.next1785.2 = or disjoint i64 %indvars.iv1784, 3 ; 2 uses
  %i.rp = mul nuw nsw i64 %indvars.iv.next1785.2, %i.qs
  %i.rq = getelementptr inbounds nuw [8 x i8], ptr %i.qo, i64 %i.rp
  %i.rr = getelementptr inbounds nuw [8 x i8], ptr %i.qv, i64 %indvars.iv.next1785.2
  store ptr %i.rq, ptr %i.rr, align 8, !tbaa !34
  %indvars.iv.next1785.3 = add nuw nsw i64 %indvars.iv1784, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph1374.preheader.unr-lcssa, label %.lr.ph1369, !llvm.loop !85

.loopexit726:                                     ; preds = %_ZN7msdfgenL22splineToSplineDistanceEPKPNS_11EdgeSegmentEiiiii.exit, %.lr.ph1374
  %indvars.iv.next1789 = add nuw nsw i64 %indvars.iv1788, 1
  %exitcond1800.not = icmp eq i64 %indvars.iv.next1796, %wide.trip.count1799
  br i1 %exitcond1800.not, label %._crit_edge1375, label %.lr.ph1374, !llvm.loop !86

._crit_edge1375:                                  ; preds = %.loopexit726
  %i.rs = add nsw i32 %i.qi, -2
  %i.rt = mul nsw i32 %i.qj, %i.rs                ; 3 uses
  %i.ru = sdiv i32 %i.rt, 2
  %i.rv = sext i32 %i.ru to i64                   ; 2 uses
  %i.rw = icmp slt i32 %i.rt, -1
  br i1 %i.rw, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %._crit_edge1375
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #18
          to label %.noexc344 unwind label %.thread

.noexc344:                                        ; preds = %bb.ds
  unreachable

bb.dt:                                            ; preds = %._crit_edge1375
  %i.rx = icmp slt i32 %i.rt, 2
  br i1 %i.rx, label %.lr.ph1389.preheader, label %_ZNSt12_Vector_baseIPKdSaIS1_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIPKdSaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.dt
  %i.ry = shl nuw nsw i64 %i.rv, 3
  %i.rz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ry) #19
          to label %_ZNSt12_Vector_baseIPKdSaIS1_EE13_M_deallocateEPS1_m.exit.i unwind label %.thread ; 2 uses

_ZNSt12_Vector_baseIPKdSaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %_ZNSt12_Vector_baseIPKdSaIS1_EE11_M_allocateEm.exit.i
  %i.sa = getelementptr inbounds nuw [8 x i8], ptr %i.rz, i64 %i.rv
  br label %.lr.ph1389.preheader

.lr.ph1389.preheader:                             ; preds = %_ZNSt12_Vector_baseIPKdSaIS1_EE13_M_deallocateEPS1_m.exit.i, %bb.dt
  %.sroa.0455.3 = phi ptr [ %i.rz, %_ZNSt12_Vector_baseIPKdSaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ null, %bb.dt ] ; 2 uses
  %.sroa.27.3 = phi ptr [ %i.sa, %_ZNSt12_Vector_baseIPKdSaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ null, %bb.dt ]
  %smax1811 = call i32 @llvm.smax.i32(i32 %i.qj, i32 1)
  %wide.trip.count1812 = zext nneg i32 %smax1811 to i64 ; 3 uses
  %wide.trip.count1806 = zext i32 %i.qj to i64
  br label %.lr.ph1389

.lr.ph1374:                                       ; preds = %.lr.ph1374.preheader, %.loopexit726
  %indvars.iv1795 = phi i64 [ 0, %.lr.ph1374.preheader ], [ %indvars.iv.next1796, %.loopexit726 ] ; 5 uses
  %indvars.iv1788 = phi i64 [ 1, %.lr.ph1374.preheader ], [ %indvars.iv.next1789, %.loopexit726 ] ; 2 uses
  %i.sb = getelementptr inbounds nuw [8 x i8], ptr %i.qv, i64 %indvars.iv1795 ; 2 uses
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !34 ; 2 uses
  %i.sd = getelementptr inbounds nuw [8 x i8], ptr %i.sc, i64 %indvars.iv1795
  store double -1.000000e+00, ptr %i.sd, align 8, !tbaa !32
  %indvars.iv.next1796 = add nuw nsw i64 %indvars.iv1795, 1 ; 4 uses
  %i.se = icmp slt i64 %indvars.iv.next1796, %i.qs
  br i1 %i.se, label %.lr.ph1372, label %.loopexit726

.lr.ph1372:                                       ; preds = %.lr.ph1374
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0569.13, i64 %indvars.iv1795
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0569.13, i64 %indvars.iv.next1796
  br label %bb.du

bb.du:                                            ; preds = %.lr.ph1372, %_ZN7msdfgenL22splineToSplineDistanceEPKPNS_11EdgeSegmentEiiiii.exit
  %i.sh = phi ptr [ %i.sc, %.lr.ph1372 ], [ %i.xj, %_ZN7msdfgenL22splineToSplineDistanceEPKPNS_11EdgeSegmentEiiiii.exit ]
  %indvars.iv1790 = phi i64 [ %indvars.iv1788, %.lr.ph1372 ], [ %indvars.iv.next1791, %_ZN7msdfgenL22splineToSplineDistanceEPKPNS_11EdgeSegmentEiiiii.exit ] ; 4 uses
  %i.si = load i32, ptr %i.sf, align 4, !tbaa !19 ; 2 uses
  %i.sj = load i32, ptr %i.sg, align 4, !tbaa !19 ; 2 uses
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0569.13, i64 %indvars.iv1790
  %i.sl = load i32, ptr %i.sk, align 4, !tbaa !19 ; 2 uses
  %indvars.iv.next1791 = add nuw nsw i64 %indvars.iv1790, 1 ; 3 uses
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0569.13, i64 %indvars.iv.next1791
  %i.sn = load i32, ptr %i.sm, align 4, !tbaa !19 ; 2 uses
  %i.so = icmp slt i32 %i.si, %i.sj
  %i.sp = icmp slt i32 %i.sl, %i.sn
  %or.cond.i = and i1 %i.so, %i.sp
  br i1 %or.cond.i, label %.preheader.preheader.i, label %_ZN7msdfgenL22splineToSplineDistanceEPKPNS_11EdgeSegmentEiiiii.exit

.preheader.preheader.i:                           ; preds = %bb.du
  %i.sq = sext i32 %i.sl to i64
  %i.sr = sext i32 %i.sn to i64
  %i.ss = sext i32 %i.si to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %indvars.iv29.i = phi i64 [ %i.ss, %.preheader.preheader.i ], [ %indvars.iv.next30.i, %._crit_edge.i ] ; 2 uses
  %.022.i = phi double [ f0x7FEFFFFFFFFFFFFF, %.preheader.preheader.i ], [ %.1.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.st = fcmp une double %.022.i, 0.000000e+00
  br i1 %i.st, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.su = getelementptr inbounds [8 x i8], ptr %.sroa.0602.0.lcssa1935, i64 %indvars.iv29.i
  br label %bb.dv

._crit_edge.i:                                    ; preds = %_ZN7msdfgenL18edgeToEdgeDistanceERKNS_11EdgeSegmentES2_i.exit.i, %.preheader.i
  %.1.lcssa.i = phi double [ %.022.i, %.preheader.i ], [ %i.xf, %_ZN7msdfgenL18edgeToEdgeDistanceERKNS_11EdgeSegmentES2_i.exit.i ] ; 2 uses
  %indvars.iv.next30.i = add nsw i64 %indvars.iv29.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next30.i to i32
  %exitcond.not.i = icmp eq i32 %i.sj, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %_ZN7msdfgenL22splineToSplineDistanceEPKPNS_11EdgeSegmentEiiiii.exit.loopexit, label %.preheader.i, !llvm.loop !87

bb.dv:                                            ; preds = %_ZN7msdfgenL18edgeToEdgeDistanceERKNS_11EdgeSegmentES2_i.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.sq, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN7msdfgenL18edgeToEdgeDistanceERKNS_11EdgeSegmentES2_i.exit.i ] ; 2 uses
  %.120.i = phi double [ %.022.i, %.lr.ph.i ], [ %i.xf, %_ZN7msdfgenL18edgeToEdgeDistanceERKNS_11EdgeSegmentES2_i.exit.i ] ; 2 uses
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !27 ; 14 uses
  %i.sw = getelementptr inbounds [8 x i8], ptr %.sroa.0602.0.lcssa1935, i64 %indvars.iv.i
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !27 ; 14 uses
  %i.sy = load ptr, ptr %i.sv, align 8, !tbaa !18
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 40
  %i.ta = load ptr, ptr %i.sz, align 8
  %i.tb = invoke { double, double } %i.ta(ptr noundef nonnull align 8 dereferenceable(12) %i.sv, double noundef 0.000000e+00)
          to label %.noexc346 unwind label %.loopexit.split-lp719.loopexit.split-lp, !inline_history !88 ; 2 uses

.noexc346:                                        ; preds = %bb.dv
  %i.tc = load ptr, ptr %i.sx, align 8, !tbaa !18
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 40
  %i.te = load ptr, ptr %i.td, align 8
  %i.tf = invoke { double, double } %i.te(ptr noundef nonnull align 8 dereferenceable(12) %i.sx, double noundef 0.000000e+00)
          to label %.noexc347 unwind label %.loopexit.split-lp719.loopexit.split-lp, !inline_history !88 ; 2 uses

.noexc347:                                        ; preds = %.noexc346
  %i.tg = extractvalue { double, double } %i.tb, 1
  %i.th = extractvalue { double, double } %i.tb, 0
  %i.ti = extractvalue { double, double } %i.tf, 0
  %i.tj = extractvalue { double, double } %i.tf, 1
  %i.tk = fcmp oeq double %i.th, %i.ti
  %i.tl = fcmp oeq double %i.tg, %i.tj
  %i.tm = select i1 %i.tk, i1 %i.tl, i1 false
  br i1 %i.tm, label %_ZN7msdfgenL18edgeToEdgeDistanceERKNS_11EdgeSegmentES2_i.exit.i, label %bb.dw

bb.dw:                                            ; preds = %.noexc347
  %i.tn = load ptr, ptr %i.sv, align 8, !tbaa !18
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 40
  %i.tp = load ptr, ptr %i.to, align 8
  %i.tq = invoke { double, double } %i.tp(ptr noundef nonnull align 8 dereferenceable(12) %i.sv, double noundef 0.000000e+00)
          to label %.noexc348 unwind label %.loopexit.split-lp719.loopexit.split-lp, !inline_history !88 ; 2 uses

.noexc348:                                        ; preds = %bb.dw
  %i.tr = load ptr, ptr %i.sx, align 8, !tbaa !18
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 40
  %i.tt = load ptr, ptr %i.ts, align 8
  %i.tu = invoke { double, double } %i.tt(ptr noundef nonnull align 8 dereferenceable(12) %i.sx, double noundef 1.000000e+00)
          to label %.noexc349 unwind label %.loopexit.split-lp719.loopexit.split-lp, !inline_history !88 ; 2 uses

.noexc349:                                        ; preds = %.noexc348
  %i.tv = extractvalue { double, double } %i.tq, 1
  %i.tw = extractvalue { double, double } %i.tq, 0
  %i.tx = extractvalue { double, double } %i.tu, 0
  %i.ty = extractvalue { double, double } %i.tu, 1
  %i.tz = fcmp oeq double %i.tw, %i.tx
  %i.ua = fcmp oeq double %i.tv, %i.ty
  %i.ub = select i1 %i.tz, i1 %i.ua, i1 false
  br i1 %i.ub, label %_ZN7msdfgenL18edgeToEdgeDistanceERKNS_11EdgeSegmentES2_i.exit.i, label %bb.dx

bb.dx:                                            ; preds = %.noexc349
  %i.uc = load ptr, ptr %i.sv, align 8, !tbaa !18
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 40
  %i.ue = load ptr, ptr %i.ud, align 8
  %i.uf = invoke { double, double } %i.ue(ptr noundef nonnull align 8 dereferenceable(12) %i.sv, double noundef 1.000000e+00)
          to label %.noexc350 unwind label %.loopexit.split-lp719.loopexit.split-lp, !inline_history !88 ; 2 uses

.noexc350:                                        ; preds = %bb.dx
  %i.ug = load ptr, ptr %i.sx, align 8, !tbaa !18
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 40
  %i.ui = load ptr, ptr %i.uh, align 8
  %i.uj = invoke { double, double } %i.ui(ptr noundef nonnull align 8 dereferenceable(12) %i.sx, double noundef 0.000000e+00)
          to label %.noexc351 unwind label %.loopexit.split-lp719.loopexit.split-lp, !inline_history !88 ; 2 uses

.noexc351:                                        ; preds = %.noexc350
  %i.uk = extractvalue { double, double } %i.uf, 1
  %i.ul = extractvalue { double, double } %i.uf, 0
  %i.um = extractvalue { double, double } %i.uj, 0
  %i.un = extractvalue { double, double } %i.uj, 1
  %i.uo = fcmp oeq double %i.ul, %i.um
  %i.up = fcmp oeq double %i.uk, %i.un
  %i.uq = select i1 %i.uo, i1 %i.up, i1 false
  br i1 %i.uq, label %_ZN7msdfgenL18edgeToEdgeDistanceERKNS_11EdgeSegmentES2_i.exit.i, label %bb.dy

bb.dy:                                            ; preds = %.noexc351
  %i.ur = load ptr, ptr %i.sv, align 8, !tbaa !18
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 40
  %i.ut = load ptr, ptr %i.us, align 8
  %i.uu = invoke { double, double } %i.ut(ptr noundef nonnull align 8 dereferenceable(12) %i.sv, double noundef 1.000000e+00)
          to label %.noexc352 unwind label %.loopexit.split-lp719.loopexit.split-lp, !inline_history !88 ; 2 uses

.noexc352:                                        ; preds = %bb.dy
  %i.uv = load ptr, ptr %i.sx, align 8, !tbaa !18
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 40
  %i.ux = load ptr, ptr %i.uw, align 8
  %i.uy = invoke { double, double } %i.ux(ptr noundef nonnull align 8 dereferenceable(12) %i.sx, double noundef 1.000000e+00)
          to label %.noexc353 unwind label %.loopexit.split-lp719.loopexit.split-lp, !inline_history !88 ; 2 uses

.noexc353:                                        ; preds = %.noexc352
  %i.uz = extractvalue { double, double } %i.uu, 1
  %i.va = extractvalue { double, double } %i.uu, 0
  %i.vb = extractvalue { double, double } %i.uy, 0
  %i.vc = extractvalue { double, double } %i.uy, 1
  %i.vd = fcmp oeq double %i.va, %i.vb
  %i.ve = fcmp oeq double %i.uz, %i.vc
  %i.vf = select i1 %i.vd, i1 %i.ve, i1 false
  br i1 %i.vf, label %_ZN7msdfgenL18edgeToEdgeDistanceERKNS_11EdgeSegmentES2_i.exit.i, label %bb.dz

bb.dz:                                            ; preds = %.noexc353
  %i.vg = load ptr, ptr %i.sx, align 8, !tbaa !18
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 40
  %i.vi = load ptr, ptr %i.vh, align 8
  %i.vj = invoke { double, double } %i.vi(ptr noundef nonnull align 8 dereferenceable(12) %i.sx, double noundef 0.000000e+00)
          to label %.noexc354 unwind label %.loopexit.split-lp719.loopexit.split-lp, !inline_history !88 ; 2 uses

end_hunk_0
