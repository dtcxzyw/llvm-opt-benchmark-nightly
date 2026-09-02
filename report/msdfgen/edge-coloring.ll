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
  %i.qj = add nsw i32 %i.qi, -1                   ; 23 uses
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
  %wide.trip.count = zext nneg i32 %i.qj to i64   ; 5 uses
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
end_hunk_0
begin_hunk_1_@_ZN7msdfgen22edgeColoringByDistanceERNS_5ShapeEdy:bb.a
bb.eg:                                            ; preds = %_ZNSt6vectorIPKdSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0455.11376, i64 noundef %i.yb) #17
  br label %_ZNSt6vectorIPKdSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIPKdSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.eg, %_ZNSt6vectorIPKdSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %i.ym = getelementptr inbounds nuw [8 x i8], ptr %i.yj, i64 %i.yh
  br label %_ZNSt6vectorIPKdSaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIPKdSaIS1_EE9push_backEOS1_.exit:     ; preds = %_ZNSt6vectorIPKdSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.ec
  %.sroa.0455.4 = phi ptr [ %i.yj, %_ZNSt6vectorIPKdSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.0455.11376, %bb.ec ] ; 2 uses
  %.pn703 = phi ptr [ %i.yk, %_ZNSt6vectorIPKdSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.18.11377, %bb.ec ]
  %.sroa.27.4 = phi ptr [ %i.ym, %_ZNSt6vectorIPKdSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.27.11378, %bb.ec ] ; 2 uses
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
  invoke void @qsort(ptr noundef nonnull %.sroa.0455.1.lcssa, i64 noundef %i.xr, i64 noundef 8, ptr noundef nonnull @_ZN7msdfgenL12cmpDoublePtrEPKvS1_)
          to label %bb.ei unwind label %.thread662

.thread662:                                       ; preds = %bb.eh
  %i.yn = landingpad { ptr, i32 }
          cleanup
  br label %bb.gc

bb.ei:                                            ; preds = %._crit_edge1390, %bb.eh
  %i.yo = shl nuw nsw i64 %i.qm, 2                ; 3 uses
  %i.yp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yo) #19
          to label %.noexc369 unwind label %bb.ej ; 9 uses

.noexc369:                                        ; preds = %bb.ei
  store i32 0, ptr %i.yp, align 4, !tbaa !19
  br i1 %i.qq, label %_ZNSt6vectorIPiSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc369
  %i.yq = getelementptr i8, ptr %i.yp, i64 4
  %.idx.i.i.i.i.i.i.i367 = shl nuw nsw i64 %i.qp, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.yq, i8 0, i64 %.idx.i.i.i.i.i.i.i367, i1 false), !tbaa !19
  br label %_ZNSt6vectorIPiSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i

_ZNSt6vectorIPiSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc369
  %i.yr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qu) #19
          to label %.noexc374 unwind label %bb.ek ; 17 uses

.noexc374:                                        ; preds = %_ZNSt6vectorIPiSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i
  store ptr null, ptr %i.yr, align 8, !tbaa !36
  br i1 %i.qx, label %.lr.ph1395.preheader, label %_ZSt6fill_nIPPimS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPPimS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc374
  %i.ys = getelementptr i8, ptr %i.yr, i64 8
  %.idx.i.i.i.i.i.i.i371 = shl nuw nsw i64 %i.qw, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ys, i8 0, i64 %.idx.i.i.i.i.i.i.i371, i1 false), !tbaa !36
  br label %.lr.ph1395.preheader

.lr.ph1395.preheader:                             ; preds = %.noexc374, %_ZSt6fill_nIPPimS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %xtraiter3335 = and i64 %wide.trip.count1812, 3 ; 3 uses
  %i.yt = icmp slt i32 %i.qi, 5
  br i1 %i.yt, label %.lr.ph1395.epil.preheader, label %.lr.ph1395.preheader.new

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
  %i.yu = mul nuw nsw i64 %indvars.iv1814.epil, %i.qs
  %i.yv = getelementptr inbounds nuw [4 x i8], ptr %i.yp, i64 %i.yu
  %i.yw = getelementptr inbounds nuw [8 x i8], ptr %i.yr, i64 %indvars.iv1814.epil
  store ptr %i.yv, ptr %i.yw, align 8, !tbaa !36
  %indvars.iv.next1815.epil = add nuw nsw i64 %indvars.iv1814.epil, 1
  %epil.iter3336.next = add i64 %epil.iter3336, 1 ; 2 uses
  %epil.iter3336.cmp.not = icmp eq i64 %epil.iter3336.next, %xtraiter3335
  br i1 %epil.iter3336.cmp.not, label %.preheader716, label %.lr.ph1395.epil, !llvm.loop !95

.preheader716:                                    ; preds = %.lr.ph1395.epil, %.preheader716.unr-lcssa
  %i.yx = icmp sgt i32 %i.xs, 0
  br i1 %i.yx, label %.lr.ph1397, label %.critedge

.lr.ph1397:                                       ; preds = %.preheader716
  %i.yy = ptrtoint ptr %i.qo to i64
  %wide.trip.count1823 = and i64 %i.xr, 2147483647
  br label %bb.el

bb.ej:                                            ; preds = %bb.ei
  %i.yz = landingpad { ptr, i32 }
          cleanup
  br label %bb.gb

bb.ek:                                            ; preds = %_ZNSt6vectorIPiSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i
  %i.za = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit419

.lr.ph1395:                                       ; preds = %.lr.ph1395, %.lr.ph1395.preheader.new
  %indvars.iv1814 = phi i64 [ 0, %.lr.ph1395.preheader.new ], [ %indvars.iv.next1815.3, %.lr.ph1395 ] ; 6 uses
  %niter3340 = phi i64 [ 0, %.lr.ph1395.preheader.new ], [ %niter3340.next.3, %.lr.ph1395 ]
  %i.zb = mul nuw nsw i64 %indvars.iv1814, %i.qs
  %i.zc = getelementptr inbounds nuw [4 x i8], ptr %i.yp, i64 %i.zb
  %i.zd = getelementptr inbounds nuw [8 x i8], ptr %i.yr, i64 %indvars.iv1814
  store ptr %i.zc, ptr %i.zd, align 8, !tbaa !36
  %indvars.iv.next1815 = or disjoint i64 %indvars.iv1814, 1 ; 2 uses
  %i.ze = mul nuw nsw i64 %indvars.iv.next1815, %i.qs
  %i.zf = getelementptr inbounds nuw [4 x i8], ptr %i.yp, i64 %i.ze
  %i.zg = getelementptr inbounds nuw [8 x i8], ptr %i.yr, i64 %indvars.iv.next1815
  store ptr %i.zf, ptr %i.zg, align 8, !tbaa !36
  %indvars.iv.next1815.1 = or disjoint i64 %indvars.iv1814, 2 ; 2 uses
  %i.zh = mul nuw nsw i64 %indvars.iv.next1815.1, %i.qs
  %i.zi = getelementptr inbounds nuw [4 x i8], ptr %i.yp, i64 %i.zh
  %i.zj = getelementptr inbounds nuw [8 x i8], ptr %i.yr, i64 %indvars.iv.next1815.1
  store ptr %i.zi, ptr %i.zj, align 8, !tbaa !36
  %indvars.iv.next1815.2 = or disjoint i64 %indvars.iv1814, 3 ; 2 uses
  %i.zk = mul nuw nsw i64 %indvars.iv.next1815.2, %i.qs
  %i.zl = getelementptr inbounds nuw [4 x i8], ptr %i.yp, i64 %i.zk
  %i.zm = getelementptr inbounds nuw [8 x i8], ptr %i.yr, i64 %indvars.iv.next1815.2
  store ptr %i.zl, ptr %i.zm, align 8, !tbaa !36
  %indvars.iv.next1815.3 = add nuw nsw i64 %indvars.iv1814, 4 ; 2 uses
  %niter3340.next.3 = add i64 %niter3340, 4       ; 2 uses
  %niter3340.ncmp.3 = icmp eq i64 %niter3340.next.3, %unroll_iter3339
  br i1 %niter3340.ncmp.3, label %.preheader716.unr-lcssa, label %.lr.ph1395, !llvm.loop !96

bb.el:                                            ; preds = %.lr.ph1397, %bb.em
  %indvars.iv1820 = phi i64 [ 0, %.lr.ph1397 ], [ %indvars.iv.next1821, %bb.em ] ; 3 uses
  %i.zn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0455.1.lcssa, i64 %indvars.iv1820
  %i.zo = load ptr, ptr %i.zn, align 8, !tbaa !34 ; 2 uses
  %i.zp = load double, ptr %i.zo, align 8, !tbaa !32
  %i.zq = fcmp oeq double %i.zp, 0.000000e+00
  br i1 %i.zq, label %bb.em, label %.critedge.loopexit.split.loop.exit2411

bb.em:                                            ; preds = %bb.el
  %i.zr = ptrtoint ptr %i.zo to i64
  %i.zs = sub i64 %i.zr, %i.yy
  %i.zt = lshr exact i64 %i.zs, 3
  %i.zu = trunc i64 %i.zt to i32                  ; 2 uses
  %i.zv = sdiv i32 %i.zu, %i.qj
  %i.zw = srem i32 %i.zu, %i.qj
  %i.zx = sext i32 %i.zv to i64                   ; 2 uses
  %i.zy = getelementptr inbounds nuw [8 x i8], ptr %i.yr, i64 %i.zx
  %i.zz = load ptr, ptr %i.zy, align 8, !tbaa !36
  %i.aaa = sext i32 %i.zw to i64                  ; 2 uses
  %i.aab = getelementptr inbounds [4 x i8], ptr %i.zz, i64 %i.aaa
  store i32 1, ptr %i.aab, align 4, !tbaa !19
  %i.aac = getelementptr inbounds nuw [8 x i8], ptr %i.yr, i64 %i.aaa
  %i.aad = load ptr, ptr %i.aac, align 8, !tbaa !36
  %i.aae = getelementptr inbounds [4 x i8], ptr %i.aad, i64 %i.zx
  store i32 1, ptr %i.aae, align 4, !tbaa !19
  %indvars.iv.next1821 = add nuw nsw i64 %indvars.iv1820, 1 ; 2 uses
  %exitcond1824.not = icmp eq i64 %indvars.iv.next1821, %wide.trip.count1823
  br i1 %exitcond1824.not, label %.critedge, label %bb.el, !llvm.loop !97

.critedge.loopexit.split.loop.exit2411:           ; preds = %bb.el
  %i.aaf = trunc nuw nsw i64 %indvars.iv1820 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.em, %.critedge.loopexit.split.loop.exit2411, %.preheader716
  %.0127.lcssa = phi i32 [ 0, %.preheader716 ], [ %i.aaf, %.critedge.loopexit.split.loop.exit2411 ], [ %i.xs, %bb.em ] ; 2 uses
  %i.aag = shl nuw nsw i32 %i.qj, 1
  %i.aah = zext nneg i32 %i.aag to i64
  %i.aai = shl nuw nsw i64 %i.aah, 2              ; 4 uses
  %i.aaj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aai) #19
          to label %.preheader.preheader.i383 unwind label %bb.fu ; 19 uses

.preheader.preheader.i383:                        ; preds = %.critedge
  store i32 0, ptr %i.aaj, align 4, !tbaa !19
  %i.aak = getelementptr i8, ptr %i.aaj, i64 4
  %.idx.i.i.i.i.i.i.i377 = add nsw i64 %i.aai, -4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.aak, i8 0, i64 %.idx.i.i.i.i.i.i.i377, i1 false), !tbaa !19
  %wide.trip.count34.i = zext nneg i32 %i.qj to i64
  br label %.preheader.i384

.preheader.i384:                                  ; preds = %bb.ey, %.preheader.preheader.i383
  %indvars.iv31.i = phi i64 [ 0, %.preheader.preheader.i383 ], [ %indvars.iv.next32.i, %bb.ey ] ; 9 uses
  %.02226.i = phi i64 [ %2, %.preheader.preheader.i383 ], [ %.123.i, %bb.ey ] ; 11 uses
  %.not29.i = icmp eq i64 %indvars.iv31.i, 0
  br i1 %.not29.i, label %._crit_edge.thread.i, label %.lr.ph.i385

.lr.ph.i385:                                      ; preds = %.preheader.i384
  %i.aal = getelementptr inbounds nuw [8 x i8], ptr %i.yr, i64 %indvars.iv31.i
  %i.aam = load ptr, ptr %i.aal, align 8, !tbaa !36 ; 3 uses
  %i.aan = icmp eq i64 %indvars.iv31.i, 1
  br i1 %i.aan, label %.epil.preheader, label %.lr.ph.i385.new

.lr.ph.i385.new:                                  ; preds = %.lr.ph.i385
  %unroll_iter3346 = and i64 %indvars.iv31.i, 9223372036854775806
  br label %bb.eo

._crit_edge.i390.unr-lcssa:                       ; preds = %bb.es
  %5 = trunc i64 %indvars.iv31.i to i1
  br i1 %5, label %.epil.preheader, label %._crit_edge.i390

.epil.preheader:                                  ; preds = %._crit_edge.i390.unr-lcssa, %.lr.ph.i385
  %indvars.iv.i386.epil.init = phi i64 [ 0, %.lr.ph.i385 ], [ %indvars.iv.next.i388.1, %._crit_edge.i390.unr-lcssa ] ; 2 uses
  %.01724.i.epil.init = phi i32 [ 7, %.lr.ph.i385 ], [ %.1.i.1, %._crit_edge.i390.unr-lcssa ] ; 2 uses
  %lcmp.mod3345 = trunc i64 %indvars.iv31.i to i1
  call void @llvm.assume(i1 %lcmp.mod3345)
  %i.aao = getelementptr inbounds nuw [4 x i8], ptr %i.aam, i64 %indvars.iv.i386.epil.init
  %i.aap = load i32, ptr %i.aao, align 4, !tbaa !19
  %.not.i387.epil = icmp eq i32 %i.aap, 0
  br i1 %.not.i387.epil, label %._crit_edge.i390, label %bb.en

bb.en:                                            ; preds = %.epil.preheader
  %i.aaq = getelementptr inbounds nuw [4 x i8], ptr %i.aaj, i64 %indvars.iv.i386.epil.init
  %i.aar = load i32, ptr %i.aaq, align 4, !tbaa !19
  %i.aas = shl nuw i32 1, %i.aar
  %i.aat = xor i32 %i.aas, -1
  %i.aau = and i32 %.01724.i.epil.init, %i.aat
  br label %._crit_edge.i390

._crit_edge.i390:                                 ; preds = %.epil.preheader, %bb.en, %._crit_edge.i390.unr-lcssa
  %.1.i.lcssa = phi i32 [ %.1.i.1, %._crit_edge.i390.unr-lcssa ], [ %i.aau, %bb.en ], [ %.01724.i.epil.init, %.epil.preheader ]
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
  %i.aav = getelementptr inbounds nuw [4 x i8], ptr %i.aam, i64 %indvars.iv.i386
  %i.aaw = load i32, ptr %i.aav, align 4, !tbaa !19
  %.not.i387 = icmp eq i32 %i.aaw, 0
  br i1 %.not.i387, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.aax = getelementptr inbounds nuw [4 x i8], ptr %i.aaj, i64 %indvars.iv.i386
  %i.aay = load i32, ptr %i.aax, align 4, !tbaa !19
  %i.aaz = shl nuw i32 1, %i.aay
  %i.aba = xor i32 %i.aaz, -1
  %i.abb = and i32 %.01724.i, %i.aba
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo
  %.1.i = phi i32 [ %i.abb, %bb.ep ], [ %.01724.i, %bb.eo ] ; 2 uses
  %indvars.iv.next.i388 = or disjoint i64 %indvars.iv.i386, 1 ; 2 uses
  %i.abc = getelementptr inbounds nuw [4 x i8], ptr %i.aam, i64 %indvars.iv.next.i388
  %i.abd = load i32, ptr %i.abc, align 4, !tbaa !19
  %.not.i387.1 = icmp eq i32 %i.abd, 0
  br i1 %.not.i387.1, label %bb.es, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.abe = getelementptr inbounds nuw [4 x i8], ptr %i.aaj, i64 %indvars.iv.next.i388
  %i.abf = load i32, ptr %i.abe, align 4, !tbaa !19
  %i.abg = shl nuw i32 1, %i.abf
  %i.abh = xor i32 %i.abg, -1
  %i.abi = and i32 %.1.i, %i.abh
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq
  %.1.i.1 = phi i32 [ %i.abi, %bb.er ], [ %.1.i, %bb.eq ] ; 3 uses
  %indvars.iv.next.i388.1 = add nuw nsw i64 %indvars.iv.i386, 2 ; 2 uses
  %niter3347.next.1 = add i64 %niter3347, 2       ; 2 uses
  %niter3347.ncmp.1 = icmp eq i64 %niter3347.next.1, %unroll_iter3346
  br i1 %niter3347.ncmp.1, label %._crit_edge.i390.unr-lcssa, label %bb.eo, !llvm.loop !98

bb.et:                                            ; preds = %._crit_edge.i390
  br label %bb.ey

bb.eu:                                            ; preds = %._crit_edge.i390
  %i.abj = trunc i64 %.02226.i to i32
  %i.abk = and i32 %i.abj, 1
  %i.abl = lshr i64 %.02226.i, 1
  br label %bb.ey

bb.ev:                                            ; preds = %._crit_edge.i390
  br label %bb.ey

bb.ew:                                            ; preds = %._crit_edge.i390
  %i.abm = trunc i64 %.02226.i to i32
  %i.abn = lshr i64 %.02226.i, 1
  %i.abo = shl i32 %i.abm, 1
  %i.abp = and i32 %i.abo, 2
  %i.abq = xor i32 %i.abp, 2
  br label %bb.ey

bb.ex:                                            ; preds = %._crit_edge.i390
  %i.abr = trunc i64 %.02226.i to i32
  %i.abs = and i32 %i.abr, 1
  %i.abt = lshr i64 %.02226.i, 1
  %i.abu = add nuw nsw i32 %i.abs, 1
  br label %bb.ey

._crit_edge.thread.i:                             ; preds = %._crit_edge.i390, %.preheader.i384
  %i.abv = urem i64 %.02226.i, 3
  %i.abw = trunc nuw nsw i64 %i.abv to i32
  %i.abx = udiv i64 %.02226.i, 3
  %i.aby = trunc nuw nsw i64 %indvars.iv31.i to i32
  %i.abz = add nuw nsw i32 %i.abw, %i.aby
  %i.aca = urem i32 %i.abz, 3
  br label %bb.ey

bb.ey:                                            ; preds = %._crit_edge.thread.i, %bb.ex, %bb.ew, %bb.ev, %bb.eu, %bb.et, %._crit_edge.i390
  %.123.i = phi i64 [ %.02226.i, %._crit_edge.i390 ], [ %i.abx, %._crit_edge.thread.i ], [ %.02226.i, %bb.et ], [ %i.abl, %bb.eu ], [ %.02226.i, %bb.ev ], [ %i.abn, %bb.ew ], [ %i.abt, %bb.ex ]
  %.0.i = phi i32 [ 0, %._crit_edge.i390 ], [ %i.aca, %._crit_edge.thread.i ], [ 1, %bb.et ], [ %i.abk, %bb.eu ], [ 2, %bb.ev ], [ %i.abq, %bb.ew ], [ %i.abu, %bb.ex ]
  %i.acb = getelementptr inbounds nuw [4 x i8], ptr %i.aaj, i64 %indvars.iv31.i
  store i32 %.0.i, ptr %i.acb, align 4, !tbaa !19
  %indvars.iv.next32.i = add nuw nsw i64 %indvars.iv31.i, 1 ; 2 uses
  %exitcond35.not.i = icmp eq i64 %indvars.iv.next32.i, %wide.trip.count34.i
  br i1 %exitcond35.not.i, label %_ZN7msdfgenL22colorSecondDegreeGraphEPiPKPKiiy.exit, label %.preheader.i384, !llvm.loop !99

_ZN7msdfgenL22colorSecondDegreeGraphEPiPKPKiiy.exit: ; preds = %bb.ey
  %i.acc = icmp slt i32 %.0127.lcssa, %i.xs
  br i1 %i.acc, label %.lr.ph1402, label %.preheader

.lr.ph1402:                                       ; preds = %_ZN7msdfgenL22colorSecondDegreeGraphEPiPKPKiiy.exit
  %i.acd = ptrtoint ptr %i.qo to i64
  %i.ace = getelementptr inbounds nuw [4 x i8], ptr %i.aaj, i64 %i.qs ; 11 uses
  %wide.trip.count.i.i = zext nneg i32 %i.qj to i64
  %i.acf = shl nuw nsw i64 %wide.trip.count.i.i, 2 ; 2 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.acl = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.acm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.acn = zext i32 %.0127.lcssa to i64
  %i.aco = icmp eq i64 %i.qz, 0
  %unroll_iter3353 = and i64 %wide.trip.count, 2147483646
  %lcmp.mod3352.a = trunc i32 %i.qj to i1
  %lcmp.mod3352 = trunc i32 %i.qj to i1
  %i.acp = icmp eq i64 %i.qz, 0
  %unroll_iter3360 = and i64 %wide.trip.count, 2147483646
  %6 = trunc i32 %i.qj to i1
  %lcmp.mod3359 = trunc i32 %i.qj to i1
  br label %bb.ez

.preheader:                                       ; preds = %_ZN7msdfgenL10tryAddEdgeEPiPKS0_iiiS0_.exit, %_ZN7msdfgenL22colorSecondDegreeGraphEPiPKPKiiy.exit
  %i.acq = icmp sgt i32 %i.qb, 0
  br i1 %i.acq, label %.lr.ph1405.preheader, label %_ZNSt6vectorIiSaIiEED2Ev.exit407

.lr.ph1405.preheader:                             ; preds = %.preheader
  %wide.trip.count1831 = and i64 %i.qc, 2147483647
  %i.acr = icmp eq i64 %wide.trip.count1831, 1
  br i1 %i.acr, label %.lr.ph1405.epil.preheader, label %.lr.ph1405.preheader.new

.lr.ph1405.preheader.new:                         ; preds = %.lr.ph1405.preheader
  %unroll_iter3366 = and i64 %i.qc, 2147483646
  br label %.lr.ph1405

bb.ez:                                            ; preds = %.lr.ph1402, %_ZN7msdfgenL10tryAddEdgeEPiPKS0_iiiS0_.exit
  %indvars.iv1825 = phi i64 [ %i.acn, %.lr.ph1402 ], [ %indvars.iv.next1826, %_ZN7msdfgenL10tryAddEdgeEPiPKS0_iiiS0_.exit ] ; 2 uses
  %i.acs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0455.1.lcssa, i64 %indvars.iv1825
  %i.act = load ptr, ptr %i.acs, align 8, !tbaa !34
  %i.acu = ptrtoint ptr %i.act to i64
  %i.acv = sub i64 %i.acu, %i.acd
  %i.acw = lshr exact i64 %i.acv, 3
  %i.acx = trunc i64 %i.acw to i32                ; 2 uses
  %i.acy = sdiv i32 %i.acx, %i.qj
  %i.acz = srem i32 %i.acx, %i.qj                 ; 2 uses
  %i.ada = sext i32 %i.acy to i64                 ; 6 uses
  %i.adb = getelementptr inbounds [8 x i8], ptr %i.yr, i64 %i.ada ; 2 uses
  %i.adc = load ptr, ptr %i.adb, align 8, !tbaa !36
  %i.add = sext i32 %i.acz to i64                 ; 5 uses
  %i.ade = getelementptr inbounds [4 x i8], ptr %i.adc, i64 %i.add
  store i32 1, ptr %i.ade, align 4, !tbaa !19
  %i.adf = getelementptr inbounds [8 x i8], ptr %i.yr, i64 %i.add ; 2 uses
  %i.adg = load ptr, ptr %i.adf, align 8, !tbaa !36 ; 4 uses
  %i.adh = getelementptr inbounds [4 x i8], ptr %i.adg, i64 %i.ada
  store i32 1, ptr %i.adh, align 4, !tbaa !19
  %i.adi = getelementptr inbounds [4 x i8], ptr %i.aaj, i64 %i.ada
  %i.adj = load i32, ptr %i.adi, align 4, !tbaa !19
  %i.adk = getelementptr inbounds [4 x i8], ptr %i.aaj, i64 %i.add ; 2 uses
  %i.adl = load i32, ptr %i.adk, align 4, !tbaa !19
  %.not.i391 = icmp eq i32 %i.adj, %i.adl
  br i1 %.not.i391, label %.lr.ph.i.i.preheader, label %_ZN7msdfgenL10tryAddEdgeEPiPKS0_iiiS0_.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.ez
  br i1 %i.aco, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.fc
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %bb.fc ], [ 0, %.lr.ph.i.i.preheader ] ; 4 uses
  %.089.i.i = phi i32 [ %.1.i.i.1, %bb.fc ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %niter3354 = phi i64 [ %niter3354.next.1, %bb.fc ], [ 0, %.lr.ph.i.i.preheader ]
  %i.adm = getelementptr inbounds nuw [4 x i8], ptr %i.adg, i64 %indvars.iv.i.i
  %i.adn = load i32, ptr %i.adm, align 4, !tbaa !19
  %.not.i.i392 = icmp eq i32 %i.adn, 0
  br i1 %.not.i.i392, label %.lr.ph.i.i.1, label %bb.fa

bb.fa:                                            ; preds = %.lr.ph.i.i
  %i.ado = getelementptr inbounds nuw [4 x i8], ptr %i.aaj, i64 %indvars.iv.i.i
  %i.adp = load i32, ptr %i.ado, align 4, !tbaa !19
  %i.adq = shl nuw i32 1, %i.adp
  %i.adr = or i32 %i.adq, %.089.i.i
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.fa, %.lr.ph.i.i
  %.1.i.i = phi i32 [ %i.adr, %bb.fa ], [ %.089.i.i, %.lr.ph.i.i ] ; 2 uses
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ads = getelementptr inbounds nuw [4 x i8], ptr %i.adg, i64 %indvars.iv.next.i.i
  %i.adt = load i32, ptr %i.ads, align 4, !tbaa !19
  %.not.i.i392.1 = icmp eq i32 %i.adt, 0
  br i1 %.not.i.i392.1, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %.lr.ph.i.i.1
  %i.adu = getelementptr inbounds nuw [4 x i8], ptr %i.aaj, i64 %indvars.iv.next.i.i
  %i.adv = load i32, ptr %i.adu, align 4, !tbaa !19
  %i.adw = shl nuw i32 1, %i.adv
  %i.adx = or i32 %i.adw, %.1.i.i
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %.lr.ph.i.i.1
  %.1.i.i.1 = phi i32 [ %i.adx, %bb.fb ], [ %.1.i.i, %.lr.ph.i.i.1 ] ; 3 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter3354.next.1 = add i64 %niter3354, 2       ; 2 uses
  %niter3354.ncmp.1 = icmp eq i64 %niter3354.next.1, %unroll_iter3353
  br i1 %niter3354.ncmp.1, label %_ZN7msdfgenL20vertexPossibleColorsEPKiS1_i.exit.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !100

_ZN7msdfgenL20vertexPossibleColorsEPKiS1_i.exit.i.unr-lcssa: ; preds = %bb.fc
  br i1 %lcmp.mod3352.a, label %.lr.ph.i.i.epil.preheader, label %_ZN7msdfgenL20vertexPossibleColorsEPKiS1_i.exit.i

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN7msdfgenL20vertexPossibleColorsEPKiS1_i.exit.i.unr-lcssa, %.lr.ph.i.i.preheader
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %indvars.iv.next.i.i.1, %_ZN7msdfgenL20vertexPossibleColorsEPKiS1_i.exit.i.unr-lcssa ] ; 2 uses
  %.089.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %.1.i.i.1, %_ZN7msdfgenL20vertexPossibleColorsEPKiS1_i.exit.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod3352)
  %i.ady = getelementptr inbounds nuw [4 x i8], ptr %i.adg, i64 %indvars.iv.i.i.epil.init
  %i.adz = load i32, ptr %i.ady, align 4, !tbaa !19
  %.not.i.i392.epil = icmp eq i32 %i.adz, 0
  br i1 %.not.i.i392.epil, label %_ZN7msdfgenL20vertexPossibleColorsEPKiS1_i.exit.i, label %bb.fd

bb.fd:                                            ; preds = %.lr.ph.i.i.epil.preheader
  %i.aea = getelementptr inbounds nuw [4 x i8], ptr %i.aaj, i64 %indvars.iv.i.i.epil.init
  %i.aeb = load i32, ptr %i.aea, align 4, !tbaa !19
  %i.aec = shl nuw i32 1, %i.aeb
  %i.aed = or i32 %i.aec, %.089.i.i.epil.init
  br label %_ZN7msdfgenL20vertexPossibleColorsEPKiS1_i.exit.i

_ZN7msdfgenL20vertexPossibleColorsEPKiS1_i.exit.i: ; preds = %.lr.ph.i.i.epil.preheader, %bb.fd, %_ZN7msdfgenL20vertexPossibleColorsEPKiS1_i.exit.i.unr-lcssa
  %.1.i.i.lcssa = phi i32 [ %.1.i.i.1, %_ZN7msdfgenL20vertexPossibleColorsEPKiS1_i.exit.i.unr-lcssa ], [ %i.aed, %bb.fd ], [ %.089.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %i.aee = and i32 %.1.i.i.lcssa, 7               ; 2 uses
  %.not71.i = icmp eq i32 %i.aee, 7
  br i1 %.not71.i, label %bb.fe, label %_ZN7msdfgenL20vertexPossibleColorsEPKiS1_i.exit.thread.i

_ZN7msdfgenL20vertexPossibleColorsEPKiS1_i.exit.thread.i: ; preds = %_ZN7msdfgenL20vertexPossibleColorsEPKiS1_i.exit.i
  %i.aef = xor i32 %i.aee, 7
  %i.aeg = zext nneg i32 %i.aef to i64
  %i.aeh = getelementptr inbounds nuw [4 x i8], ptr @_ZZN7msdfgenL10tryAddEdgeEPiPKS0_iiiS0_E20FIRST_POSSIBLE_COLOR, i64 %i.aeg
  %i.aei = load i32, ptr %i.aeh, align 4, !tbaa !19
  store i32 %i.aei, ptr %i.adk, align 4, !tbaa !19
  br label %_ZN7msdfgenL10tryAddEdgeEPiPKS0_iiiS0_.exit

bb.fe:                                            ; preds = %_ZN7msdfgenL20vertexPossibleColorsEPKiS1_i.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ace, ptr nonnull align 4 %i.aaj, i64 %i.acf, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %3, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseIiSaIiEE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %3, i64 noundef 0)
          to label %.noexc401 unwind label %bb.fv

.noexc401:                                        ; preds = %bb.fe
  %i.aej = getelementptr inbounds [4 x i8], ptr %i.ace, i64 %i.ada ; 2 uses
  %i.aek = load i32, ptr %i.aej, align 4, !tbaa !19
  %i.ael = shl nuw i32 1, %i.aek
  %i.aem = and i32 %i.ael, 7
  %i.aen = xor i32 %i.aem, 7
  %i.aeo = zext nneg i32 %i.aen to i64
  %i.aep = getelementptr inbounds nuw [4 x i8], ptr @_ZZN7msdfgenL10tryAddEdgeEPiPKS0_iiiS0_E20FIRST_POSSIBLE_COLOR, i64 %i.aeo
  %i.aeq = load i32, ptr %i.aep, align 4, !tbaa !19
  %i.aer = getelementptr inbounds [4 x i8], ptr %i.ace, i64 %i.add
  store i32 %i.aeq, ptr %i.aer, align 4, !tbaa !19
  invoke fastcc void @_ZN7msdfgenL20uncolorSameNeighborsERSt5queueIiSt5dequeIiSaIiEEEPiPKPKiii(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull %i.ace, ptr noundef nonnull readonly %i.yr, i32 noundef range(i32 -2147483647, -2147483648) %i.acz, i32 noundef range(i32 -2147483648, 2147483647) %i.qj)
          to label %.preheader95.i unwind label %bb.fl

.preheader95.i:                                   ; preds = %.noexc401
  %i.aes = load ptr, ptr %i.acg, align 8, !tbaa !40
  %i.aet = load ptr, ptr %i.ach, align 8, !tbaa !40 ; 2 uses
  %i.aeu = icmp eq ptr %i.aes, %i.aet
  br i1 %i.aeu, label %._crit_edge.thread.i398, label %.lr.ph.i394

.lr.ph.i394:                                      ; preds = %.preheader95.i, %bb.fp
  %i.aev = phi ptr [ %i.agp, %bb.fp ], [ %i.aet, %.preheader95.i ] ; 3 uses
  %.098.i = phi i32 [ %.2.i, %bb.fp ], [ 0, %.preheader95.i ] ; 2 uses
  %i.aew = load i32, ptr %i.aev, align 4, !tbaa !19 ; 2 uses
  %i.aex = load ptr, ptr %i.aci, align 8, !tbaa !106
  %i.aey = getelementptr inbounds i8, ptr %i.aex, i64 -4
  %.not.i.i.i395 = icmp eq ptr %i.aev, %i.aey
  br i1 %.not.i.i.i395, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %.lr.ph.i394
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aev, i64 4
  br label %_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv.exit.i

bb.fg:                                            ; preds = %.lr.ph.i394
  %i.afa = load ptr, ptr %i.acj, align 8, !tbaa !107
  call void @_ZdlPvm(ptr noundef %i.afa, i64 noundef 512) #17
  %i.afb = load ptr, ptr %i.ack, align 8, !tbaa !43
  %i.afc = getelementptr inbounds nuw i8, ptr %i.afb, i64 8 ; 2 uses
  store ptr %i.afc, ptr %i.ack, align 8, !tbaa !44
  %i.afd = load ptr, ptr %i.afc, align 8, !tbaa !36 ; 3 uses
  store ptr %i.afd, ptr %i.acj, align 8, !tbaa !45
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afd, i64 512
  store ptr %i.afe, ptr %i.aci, align 8, !tbaa !46
  br label %_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv.exit.i

_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv.exit.i:      ; preds = %bb.fg, %bb.ff
  %storemerge.i.i.i = phi ptr [ %i.aez, %bb.ff ], [ %i.afd, %bb.fg ] ; 2 uses
  store ptr %storemerge.i.i.i, ptr %i.ach, align 8, !tbaa !47
  %i.aff = sext i32 %i.aew to i64                 ; 3 uses
  %i.afg = getelementptr inbounds [8 x i8], ptr %i.yr, i64 %i.aff
  %i.afh = load ptr, ptr %i.afg, align 8, !tbaa !36 ; 4 uses
  br i1 %i.acp, label %.lr.ph.i80.i.epil.preheader, label %.lr.ph.i80.i

.lr.ph.i80.i:                                     ; preds = %_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv.exit.i, %bb.fj
  %indvars.iv.i81.i = phi i64 [ %indvars.iv.next.i85.i.1, %bb.fj ], [ 0, %_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv.exit.i ] ; 4 uses
  %.089.i82.i = phi i32 [ %.1.i84.i.1, %bb.fj ], [ 0, %_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv.exit.i ] ; 2 uses
  %niter3361 = phi i64 [ %niter3361.next.1, %bb.fj ], [ 0, %_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv.exit.i ]
  %i.afi = getelementptr inbounds nuw [4 x i8], ptr %i.afh, i64 %indvars.iv.i81.i
  %i.afj = load i32, ptr %i.afi, align 4, !tbaa !19
  %.not.i83.i = icmp eq i32 %i.afj, 0
  br i1 %.not.i83.i, label %.lr.ph.i80.i.1, label %bb.fh

bb.fh:                                            ; preds = %.lr.ph.i80.i
  %i.afk = getelementptr inbounds nuw [4 x i8], ptr %i.ace, i64 %indvars.iv.i81.i
  %i.afl = load i32, ptr %i.afk, align 4, !tbaa !19
  %i.afm = shl nuw i32 1, %i.afl
  %i.afn = or i32 %i.afm, %.089.i82.i
  br label %.lr.ph.i80.i.1

.lr.ph.i80.i.1:                                   ; preds = %bb.fh, %.lr.ph.i80.i
  %.1.i84.i = phi i32 [ %i.afn, %bb.fh ], [ %.089.i82.i, %.lr.ph.i80.i ] ; 2 uses
  %indvars.iv.next.i85.i = or disjoint i64 %indvars.iv.i81.i, 1 ; 2 uses
  %i.afo = getelementptr inbounds nuw [4 x i8], ptr %i.afh, i64 %indvars.iv.next.i85.i
  %i.afp = load i32, ptr %i.afo, align 4, !tbaa !19
  %.not.i83.i.1 = icmp eq i32 %i.afp, 0
  br i1 %.not.i83.i.1, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %.lr.ph.i80.i.1
  %i.afq = getelementptr inbounds nuw [4 x i8], ptr %i.ace, i64 %indvars.iv.next.i85.i
  %i.afr = load i32, ptr %i.afq, align 4, !tbaa !19
  %i.afs = shl nuw i32 1, %i.afr
  %i.aft = or i32 %i.afs, %.1.i84.i
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %.lr.ph.i80.i.1
  %.1.i84.i.1 = phi i32 [ %i.aft, %bb.fi ], [ %.1.i84.i, %.lr.ph.i80.i.1 ] ; 3 uses
  %indvars.iv.next.i85.i.1 = add nuw nsw i64 %indvars.iv.i81.i, 2 ; 2 uses
  %niter3361.next.1 = add i64 %niter3361, 2       ; 2 uses
  %niter3361.ncmp.1 = icmp eq i64 %niter3361.next.1, %unroll_iter3360
  br i1 %niter3361.ncmp.1, label %_ZN7msdfgenL20vertexPossibleColorsEPKiS1_i.exit88.i.unr-lcssa, label %.lr.ph.i80.i, !llvm.loop !100

_ZN7msdfgenL20vertexPossibleColorsEPKiS1_i.exit88.i.unr-lcssa: ; preds = %bb.fj
  br i1 %6, label %.lr.ph.i80.i.epil.preheader, label %_ZN7msdfgenL20vertexPossibleColorsEPKiS1_i.exit88.i

.lr.ph.i80.i.epil.preheader:                      ; preds = %_ZN7msdfgenL20vertexPossibleColorsEPKiS1_i.exit88.i.unr-lcssa, %_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv.exit.i
  %indvars.iv.i81.i.epil.init = phi i64 [ 0, %_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv.exit.i ], [ %indvars.iv.next.i85.i.1, %_ZN7msdfgenL20vertexPossibleColorsEPKiS1_i.exit88.i.unr-lcssa ] ; 2 uses
  %.089.i82.i.epil.init = phi i32 [ 0, %_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv.exit.i ], [ %.1.i84.i.1, %_ZN7msdfgenL20vertexPossibleColorsEPKiS1_i.exit88.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod3359)
  %i.afu = getelementptr inbounds nuw [4 x i8], ptr %i.afh, i64 %indvars.iv.i81.i.epil.init
  %i.afv = load i32, ptr %i.afu, align 4, !tbaa !19
  %.not.i83.i.epil = icmp eq i32 %i.afv, 0
  br i1 %.not.i83.i.epil, label %_ZN7msdfgenL20vertexPossibleColorsEPKiS1_i.exit88.i, label %bb.fk

bb.fk:                                            ; preds = %.lr.ph.i80.i.epil.preheader
  %i.afw = getelementptr inbounds nuw [4 x i8], ptr %i.ace, i64 %indvars.iv.i81.i.epil.init
  %i.afx = load i32, ptr %i.afw, align 4, !tbaa !19
  %i.afy = shl nuw i32 1, %i.afx
  %i.afz = or i32 %i.afy, %.089.i82.i.epil.init
  br label %_ZN7msdfgenL20vertexPossibleColorsEPKiS1_i.exit88.i

_ZN7msdfgenL20vertexPossibleColorsEPKiS1_i.exit88.i: ; preds = %.lr.ph.i80.i.epil.preheader, %bb.fk, %_ZN7msdfgenL20vertexPossibleColorsEPKiS1_i.exit88.i.unr-lcssa
  %.1.i84.i.lcssa = phi i32 [ %.1.i84.i.1, %_ZN7msdfgenL20vertexPossibleColorsEPKiS1_i.exit88.i.unr-lcssa ], [ %i.afz, %bb.fk ], [ %.089.i82.i.epil.init, %.lr.ph.i80.i.epil.preheader ]
  %i.aga = and i32 %.1.i84.i.lcssa, 7             ; 2 uses
  %.not74.i = icmp eq i32 %i.aga, 7
  br i1 %.not74.i, label %.preheader.i399, label %_ZN7msdfgenL20vertexPossibleColorsEPKiS1_i.exit88.thread.i

.preheader.i399:                                  ; preds = %_ZN7msdfgenL20vertexPossibleColorsEPKiS1_i.exit88.i
  %i.agb = getelementptr inbounds [4 x i8], ptr %i.ace, i64 %i.aff
  %i.agc = getelementptr inbounds [4 x i8], ptr %i.afh, i64 %i.ada
  br label %bb.fn

_ZN7msdfgenL20vertexPossibleColorsEPKiS1_i.exit88.thread.i: ; preds = %_ZN7msdfgenL20vertexPossibleColorsEPKiS1_i.exit88.i
  %i.agd = xor i32 %i.aga, 7
  %i.age = zext nneg i32 %i.agd to i64
  %i.agf = getelementptr inbounds nuw [4 x i8], ptr @_ZZN7msdfgenL10tryAddEdgeEPiPKS0_iiiS0_E20FIRST_POSSIBLE_COLOR, i64 %i.age
  %i.agg = load i32, ptr %i.agf, align 4, !tbaa !19
  %i.agh = getelementptr inbounds [4 x i8], ptr %i.ace, i64 %i.aff
  store i32 %i.agg, ptr %i.agh, align 4, !tbaa !19
  br label %bb.fp, !llvm.loop !101

bb.fl:                                            ; preds = %.noexc401
  %i.agi = landingpad { ptr, i32 }
          cleanup
  br label %bb.fr

bb.fm:                                            ; preds = %.critedge.i
  %i.agj = landingpad { ptr, i32 }
          cleanup
  br label %bb.fr

bb.fn:                                            ; preds = %bb.fo, %.preheader.i399
  %.1.i400 = phi i32 [ %i.agk, %bb.fo ], [ %.098.i, %.preheader.i399 ] ; 2 uses
  %i.agk = add nsw i32 %.1.i400, 1                ; 2 uses
  %i.agl = srem i32 %.1.i400, 3                   ; 2 uses
  store i32 %i.agl, ptr %i.agb, align 4, !tbaa !19
  %i.agm = load i32, ptr %i.agc, align 4, !tbaa !19
  %.not75.i = icmp eq i32 %i.agm, 0
  br i1 %.not75.i, label %.critedge.i, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.agn = load i32, ptr %i.aej, align 4, !tbaa !19
  %i.ago = icmp eq i32 %i.agl, %i.agn
  br i1 %i.ago, label %bb.fn, label %.critedge.i, !llvm.loop !102

.critedge.i:                                      ; preds = %bb.fo, %bb.fn
  invoke fastcc void @_ZN7msdfgenL20uncolorSameNeighborsERSt5queueIiSt5dequeIiSaIiEEEPiPKPKiii(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull %i.ace, ptr noundef nonnull readonly %i.yr, i32 noundef %i.aew, i32 noundef range(i32 -2147483648, 2147483647) %i.qj)
          to label %.critedge._crit_edge.i unwind label %bb.fm

.critedge._crit_edge.i:                           ; preds = %.critedge.i
  %.pre.i = load ptr, ptr %i.ach, align 8, !tbaa !40
  br label %bb.fp

bb.fp:                                            ; preds = %.critedge._crit_edge.i, %_ZN7msdfgenL20vertexPossibleColorsEPKiS1_i.exit88.thread.i
  %i.agp = phi ptr [ %storemerge.i.i.i, %_ZN7msdfgenL20vertexPossibleColorsEPKiS1_i.exit88.thread.i ], [ %.pre.i, %.critedge._crit_edge.i ] ; 2 uses
  %.2.i = phi i32 [ %.098.i, %_ZN7msdfgenL20vertexPossibleColorsEPKiS1_i.exit88.thread.i ], [ %i.agk, %.critedge._crit_edge.i ] ; 2 uses
  %i.agq = load ptr, ptr %i.acg, align 8, !tbaa !40
  %i.agr = icmp eq ptr %i.agq, %i.agp             ; 2 uses
  %i.ags = icmp sgt i32 %.2.i, 15
  %.not73.i = select i1 %i.agr, i1 true, i1 %i.ags
  br i1 %.not73.i, label %._crit_edge.i396, label %.lr.ph.i394

._crit_edge.i396:                                 ; preds = %bb.fp
  br i1 %i.agr, label %._crit_edge.thread.i398, label %bb.fq

bb.fq:                                            ; preds = %._crit_edge.i396
  %i.agt = load ptr, ptr %i.adb, align 8, !tbaa !36
  %i.agu = getelementptr inbounds [4 x i8], ptr %i.agt, i64 %i.add
  store i32 0, ptr %i.agu, align 4, !tbaa !19
  %i.agv = load ptr, ptr %i.adf, align 8, !tbaa !36
  %i.agw = getelementptr inbounds [4 x i8], ptr %i.agv, i64 %i.ada
  store i32 0, ptr %i.agw, align 4, !tbaa !19
  br label %bb.fs

bb.fr:                                            ; preds = %bb.fm, %bb.fl
  %.pn.i = phi { ptr, i32 } [ %i.agj, %bb.fm ], [ %i.agi, %bb.fl ]
  call void @_ZNSt5queueIiSt5dequeIiSaIiEEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

._crit_edge.thread.i398:                          ; preds = %._crit_edge.i396, %.preheader95.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aaj, ptr nonnull align 4 %i.ace, i64 %i.acf, i1 false)
  br label %bb.fs

bb.fs:                                            ; preds = %._crit_edge.thread.i398, %bb.fq
  %i.agx = load ptr, ptr %3, align 8, !tbaa !48   ; 2 uses
  %.not.i.i.i.i397 = icmp eq ptr %i.agx, null
  br i1 %.not.i.i.i.i397, label %_ZNSt5queueIiSt5dequeIiSaIiEEED2Ev.exit.i, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.agy = load ptr, ptr %i.ack, align 8, !tbaa !43 ; 2 uses
  %i.agz = load ptr, ptr %i.acl, align 8, !tbaa !49 ; 2 uses
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agz, i64 8
  %i.ahb = icmp ult ptr %i.agy, %i.aha
  br i1 %i.ahb, label %.lr.ph.i.i.i.i.i, label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ft, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.ahd, %.lr.ph.i.i.i.i.i ], [ %i.agy, %bb.ft ] ; 3 uses
  %i.ahc = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !36
  call void @_ZdlPvm(ptr noundef %i.ahc, i64 noundef 512) #17
  %i.ahd = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.ahe = icmp ult ptr %.06.i.i.i.i.i, %i.agz
  br i1 %i.ahe, label %.lr.ph.i.i.i.i.i, label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i.i.i.i, !llvm.loop !1

_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %3, align 8, !tbaa !48
  br label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i.i.i.i

_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i.i.i.i: ; preds = %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i.i.i.i, %bb.ft
  %i.ahf = phi ptr [ %.pre.i.i.i.i, %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i.i.i.i ], [ %i.agx, %bb.ft ]
  %i.ahg = load i64, ptr %i.acm, align 8, !tbaa !50
  %i.ahh = shl i64 %i.ahg, 3
  call void @_ZdlPvm(ptr noundef %i.ahf, i64 noundef %i.ahh) #17
  br label %_ZNSt5queueIiSt5dequeIiSaIiEEED2Ev.exit.i

_ZNSt5queueIiSt5dequeIiSaIiEEED2Ev.exit.i:        ; preds = %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i.i.i.i, %bb.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %_ZN7msdfgenL10tryAddEdgeEPiPKS0_iiiS0_.exit

_ZN7msdfgenL10tryAddEdgeEPiPKS0_iiiS0_.exit:      ; preds = %_ZNSt5queueIiSt5dequeIiSaIiEEED2Ev.exit.i, %_ZN7msdfgenL20vertexPossibleColorsEPKiS1_i.exit.thread.i, %bb.ez
  %indvars.iv.next1826 = add nuw nsw i64 %indvars.iv1825, 1 ; 2 uses
  %i.ahi = trunc nuw i64 %indvars.iv.next1826 to i32
  %i.ahj = icmp slt i32 %i.ahi, %i.xs
  br i1 %i.ahj, label %bb.ez, label %.preheader, !llvm.loop !103

bb.fu:                                            ; preds = %.critedge
  %i.ahk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPiSaIS0_EED2Ev.exit417

bb.fv:                                            ; preds = %bb.fe
  %i.ahl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.fr, %bb.fv
  %eh.lpad-body = phi { ptr, i32 } [ %i.ahl, %bb.fv ], [ %.pn.i, %bb.fr ]
  call void @_ZdlPvm(ptr noundef nonnull %i.aaj, i64 noundef %i.aai) #17
  br label %_ZNSt6vectorIPiSaIS0_EED2Ev.exit417

_ZNSt6vectorIiSaIiEED2Ev.exit407.loopexit.unr-lcssa: ; preds = %.lr.ph1405
  %7 = trunc i64 %i.qc to i1
  br i1 %7, label %.lr.ph1405.epil.preheader, label %_ZNSt6vectorIiSaIiEED2Ev.exit407

.lr.ph1405.epil.preheader:                        ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit407.loopexit.unr-lcssa, %.lr.ph1405.preheader
  %indvars.iv1828.epil.init = phi i64 [ 0, %.lr.ph1405.preheader ], [ %indvars.iv.next1829.1, %_ZNSt6vectorIiSaIiEED2Ev.exit407.loopexit.unr-lcssa ] ; 2 uses
  %.01241403.epil.init = phi i32 [ -1, %.lr.ph1405.preheader ], [ %spec.select.1, %_ZNSt6vectorIiSaIiEED2Ev.exit407.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod3365 = trunc i64 %i.qc to i1
  call void @llvm.assume(i1 %lcmp.mod3365)
  %i.ahm = add nsw i32 %.01241403.epil.init, 1    ; 2 uses
  %i.ahn = sext i32 %i.ahm to i64
  %i.aho = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0569.13, i64 %i.ahn
  %i.ahp = load i32, ptr %i.aho, align 4, !tbaa !19
  %i.ahq = zext i32 %i.ahp to i64
  %i.ahr = icmp eq i64 %indvars.iv1828.epil.init, %i.ahq
  %spec.select.epil = select i1 %i.ahr, i32 %i.ahm, i32 %.01241403.epil.init
  %i.ahs = sext i32 %spec.select.epil to i64
  %i.aht = getelementptr inbounds nuw [4 x i8], ptr %i.aaj, i64 %i.ahs
  %i.ahu = load i32, ptr %i.aht, align 4, !tbaa !19
  %i.ahv = sext i32 %i.ahu to i64
  %i.ahw = getelementptr inbounds [4 x i8], ptr @__const._ZN7msdfgen22edgeColoringByDistanceERNS_5ShapeEdy.colors, i64 %i.ahv
  %i.ahx = load i32, ptr %i.ahw, align 4, !tbaa !14
  %i.ahy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0602.0.lcssa1935, i64 %indvars.iv1828.epil.init
  %i.ahz = load ptr, ptr %i.ahy, align 8, !tbaa !27
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahz, i64 8
  store i32 %i.ahx, ptr %i.aia, align 8, !tbaa !22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit407

_ZNSt6vectorIiSaIiEED2Ev.exit407:                 ; preds = %.lr.ph1405.epil.preheader, %_ZNSt6vectorIiSaIiEED2Ev.exit407.loopexit.unr-lcssa, %.preheader
  call void @_ZdlPvm(ptr noundef nonnull %i.aaj, i64 noundef %i.aai) #17
  call void @_ZdlPvm(ptr noundef nonnull %i.yr, i64 noundef %i.qu) #17
  call void @_ZdlPvm(ptr noundef nonnull %i.yp, i64 noundef %i.yo) #17
  %.not.i.i.i408 = icmp eq ptr %.sroa.0455.1.lcssa, null
  br i1 %.not.i.i.i408, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.fw

bb.fw:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit407
  %i.aib = ptrtoint ptr %.sroa.27.1.lcssa to i64
  %i.aic = sub i64 %i.aib, %i.xp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0455.1.lcssa, i64 noundef %i.aic) #17
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit407, %bb.fw
  call void @_ZdlPvm(ptr noundef nonnull %i.qv, i64 noundef %i.qu) #17
  call void @_ZdlPvm(ptr noundef nonnull %i.qo, i64 noundef %i.qn) #17
  br label %bb.fx

.lr.ph1405:                                       ; preds = %.lr.ph1405, %.lr.ph1405.preheader.new
  %indvars.iv1828 = phi i64 [ 0, %.lr.ph1405.preheader.new ], [ %indvars.iv.next1829.1, %.lr.ph1405 ] ; 4 uses
  %.01241403 = phi i32 [ -1, %.lr.ph1405.preheader.new ], [ %spec.select.1, %.lr.ph1405 ] ; 2 uses
  %niter3367 = phi i64 [ 0, %.lr.ph1405.preheader.new ], [ %niter3367.next.1, %.lr.ph1405 ]
  %i.aid = add nsw i32 %.01241403, 1              ; 2 uses
  %i.aie = sext i32 %i.aid to i64
  %i.aif = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0569.13, i64 %i.aie
  %i.aig = load i32, ptr %i.aif, align 4, !tbaa !19
  %i.aih = zext i32 %i.aig to i64
  %i.aii = icmp eq i64 %indvars.iv1828, %i.aih
  %spec.select = select i1 %i.aii, i32 %i.aid, i32 %.01241403 ; 3 uses
  %i.aij = sext i32 %spec.select to i64
  %i.aik = getelementptr inbounds nuw [4 x i8], ptr %i.aaj, i64 %i.aij
  %i.ail = load i32, ptr %i.aik, align 4, !tbaa !19
  %i.aim = sext i32 %i.ail to i64
  %i.ain = getelementptr inbounds [4 x i8], ptr @__const._ZN7msdfgen22edgeColoringByDistanceERNS_5ShapeEdy.colors, i64 %i.aim
  %i.aio = load i32, ptr %i.ain, align 4, !tbaa !14
  %i.aip = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0602.0.lcssa1935, i64 %indvars.iv1828
  %i.aiq = load ptr, ptr %i.aip, align 8, !tbaa !27
  %i.air = getelementptr inbounds nuw i8, ptr %i.aiq, i64 8
  store i32 %i.aio, ptr %i.air, align 8, !tbaa !22
  %indvars.iv.next1829 = or disjoint i64 %indvars.iv1828, 1 ; 2 uses
  %i.ais = add nsw i32 %spec.select, 1            ; 2 uses
  %i.ait = sext i32 %i.ais to i64
  %i.aiu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0569.13, i64 %i.ait
  %i.aiv = load i32, ptr %i.aiu, align 4, !tbaa !19
  %i.aiw = zext i32 %i.aiv to i64
  %i.aix = icmp eq i64 %indvars.iv.next1829, %i.aiw
  %spec.select.1 = select i1 %i.aix, i32 %i.ais, i32 %spec.select ; 3 uses
  %i.aiy = sext i32 %spec.select.1 to i64
  %i.aiz = getelementptr inbounds nuw [4 x i8], ptr %i.aaj, i64 %i.aiy
  %i.aja = load i32, ptr %i.aiz, align 4, !tbaa !19
  %i.ajb = sext i32 %i.aja to i64
  %i.ajc = getelementptr inbounds [4 x i8], ptr @__const._ZN7msdfgen22edgeColoringByDistanceERNS_5ShapeEdy.colors, i64 %i.ajb
  %i.ajd = load i32, ptr %i.ajc, align 4, !tbaa !14
  %i.aje = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0602.0.lcssa1935, i64 %indvars.iv.next1829
  %i.ajf = load ptr, ptr %i.aje, align 8, !tbaa !27
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.ajf, i64 8
  store i32 %i.ajd, ptr %i.ajg, align 8, !tbaa !22
  %indvars.iv.next1829.1 = add nuw nsw i64 %indvars.iv1828, 2 ; 2 uses
  %niter3367.next.1 = add i64 %niter3367, 2       ; 2 uses
  %niter3367.ncmp.1 = icmp eq i64 %niter3367.next.1, %unroll_iter3366
  br i1 %niter3367.ncmp.1, label %_ZNSt6vectorIiSaIiEED2Ev.exit407.loopexit.unr-lcssa, label %.lr.ph1405, !llvm.loop !104

bb.fx:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit, %_ZNSt6vectorIdSaIdEED2Ev.exit
  %.not.i.i.i411 = icmp eq ptr %.sroa.0552.0.lcssa1915, null
  br i1 %.not.i.i.i411, label %_ZNSt6vectorIiSaIiEED2Ev.exit412, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.ajh = ptrtoint ptr %.sroa.23.0.lcssa1906 to i64
  %i.aji = ptrtoint ptr %.sroa.0552.0.lcssa1915 to i64
  %i.ajj = sub i64 %i.ajh, %i.aji
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0552.0.lcssa1915, i64 noundef %i.ajj) #17
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit412

_ZNSt6vectorIiSaIiEED2Ev.exit412:                 ; preds = %bb.fx, %bb.fy
  %.not.i.i.i413 = icmp eq ptr %.sroa.0569.13, null
  br i1 %.not.i.i.i413, label %_ZNSt6vectorIiSaIiEED2Ev.exit414, label %bb.fz

bb.fz:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit412
  %i.ajk = ptrtoint ptr %.sroa.43.13 to i64
  %i.ajl = sub i64 %i.ajk, %i.qf
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0569.13, i64 noundef %i.ajl) #17
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit414

_ZNSt6vectorIiSaIiEED2Ev.exit414:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit412, %bb.fz
  %.not.i.i.i415 = icmp eq ptr %.sroa.0602.0.lcssa1935, null
  br i1 %.not.i.i.i415, label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EED2Ev.exit, label %bb.ga

bb.ga:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit414
  %i.ajm = ptrtoint ptr %.sroa.67.0.lcssa1926 to i64
  %i.ajn = sub i64 %i.ajm, %i.qd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0602.0.lcssa1935, i64 noundef %i.ajn) #17
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EED2Ev.exit

_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit414, %bb.ga
  ret void

_ZNSt6vectorIPiSaIS0_EED2Ev.exit417:              ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.fu
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ %i.ahk, %bb.fu ]
  call void @_ZdlPvm(ptr noundef nonnull %i.yr, i64 noundef %i.qu) #17
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit419

_ZNSt6vectorIiSaIiEED2Ev.exit419:                 ; preds = %_ZNSt6vectorIPiSaIS0_EED2Ev.exit417, %bb.ek
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorIPiSaIS0_EED2Ev.exit417 ], [ %i.za, %bb.ek ]
  call void @_ZdlPvm(ptr noundef nonnull %i.yp, i64 noundef %i.yo) #17
  br label %bb.gb

bb.gb:                                            ; preds = %.loopexit717, %.loopexit.split-lp, %bb.ej, %_ZNSt6vectorIiSaIiEED2Ev.exit419
  %.sroa.0455.2 = phi ptr [ %.sroa.0455.1.lcssa, %bb.ej ], [ %.sroa.0455.1.lcssa, %_ZNSt6vectorIiSaIiEED2Ev.exit419 ], [ %.sroa.0455.11376, %.loopexit717 ], [ %.sroa.0455.11376, %.loopexit.split-lp ] ; 3 uses
  %.sroa.27.2 = phi ptr [ %.sroa.27.1.lcssa, %bb.ej ], [ %.sroa.27.1.lcssa, %_ZNSt6vectorIiSaIiEED2Ev.exit419 ], [ %.sroa.27.11378, %.loopexit717 ], [ %.sroa.27.11378, %.loopexit.split-lp ]
  %.pn165 = phi { ptr, i32 } [ %i.yz, %bb.ej ], [ %.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit419 ], [ %lpad.loopexit, %.loopexit717 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i420 = icmp eq ptr %.sroa.0455.2, null
  br i1 %.not.i.i.i420, label %_ZNSt6vectorIPdSaIS0_EED2Ev.exit423, label %._crit_edge1834

._crit_edge1834:                                  ; preds = %bb.gb
  %.pre1837 = ptrtoint ptr %.sroa.0455.2 to i64
  br label %bb.gc

bb.gc:                                            ; preds = %._crit_edge1834, %.thread662
  %.pre-phi1838 = phi i64 [ %.pre1837, %._crit_edge1834 ], [ %i.xp, %.thread662 ]
  %.pn165669 = phi { ptr, i32 } [ %.pn165, %._crit_edge1834 ], [ %i.yn, %.thread662 ]
  %.sroa.27.2668 = phi ptr [ %.sroa.27.2, %._crit_edge1834 ], [ %.sroa.27.1.lcssa, %.thread662 ]
  %.sroa.0455.2667 = phi ptr [ %.sroa.0455.2, %._crit_edge1834 ], [ %.sroa.0455.1.lcssa, %.thread662 ]
  %i.ajo = ptrtoint ptr %.sroa.27.2668 to i64
  %i.ajp = sub i64 %i.ajo, %.pre-phi1838
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0455.2667, i64 noundef %i.ajp) #17
  br label %_ZNSt6vectorIPdSaIS0_EED2Ev.exit423

_ZNSt6vectorIPdSaIS0_EED2Ev.exit423:              ; preds = %.loopexit718, %.loopexit.split-lp719.loopexit.split-lp, %.loopexit.split-lp719.loopexit, %bb.gc, %bb.gb, %.thread
  %.pn167 = phi { ptr, i32 } [ %.pn165669, %bb.gc ], [ %i.xu, %.thread ], [ %.pn165, %bb.gb ], [ %lpad.loopexit720, %.loopexit718 ], [ %lpad.loopexit723, %.loopexit.split-lp719.loopexit ], [ %lpad.loopexit.split-lp724, %.loopexit.split-lp719.loopexit.split-lp ]
  call void @_ZdlPvm(ptr noundef nonnull %i.qv, i64 noundef %i.qu) #17
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit425

_ZNSt6vectorIdSaIdEED2Ev.exit425:                 ; preds = %_ZNSt6vectorIPdSaIS0_EED2Ev.exit423, %bb.dr
  %.pn167.pn = phi { ptr, i32 } [ %.pn167, %_ZNSt6vectorIPdSaIS0_EED2Ev.exit423 ], [ %i.rf, %bb.dr ]
  call void @_ZdlPvm(ptr noundef nonnull %i.qo, i64 noundef %i.qn) #17
  br label %bb.gd

bb.gd:                                            ; preds = %.loopexit749, %.loopexit.split-lp750, %.loopexit740, %.loopexit.split-lp741, %.loopexit735, %.loopexit.split-lp736, %.loopexit729, %.loopexit.split-lp730, %.loopexit759, %.loopexit.split-lp760, %.loopexit754, %.loopexit.split-lp755, %bb.dq, %_ZNSt6vectorIdSaIdEED2Ev.exit425, %bb.n, %bb.y, %bb.v, %bb.cy, %bb.ax, %bb.dn
  %.sroa.23.7 = phi ptr [ %.sroa.23.0.lcssa1906, %_ZNSt6vectorIdSaIdEED2Ev.exit425 ], [ %.sroa.23.0.lcssa1907, %bb.dn ], [ %.sroa.23.01348, %bb.n ], [ %.sroa.23.1.lcssa, %.loopexit.split-lp741 ], [ %.sroa.15.11296, %.loopexit.split-lp755 ], [ %.sroa.23.1.lcssa, %.loopexit.split-lp760 ], [ %.sroa.23.1.lcssa, %.loopexit.split-lp730 ], [ %.sroa.23.1.lcssa, %bb.ax ], [ %.sroa.23.1.lcssa, %.loopexit.split-lp736 ], [ %.sroa.23.1.lcssa, %bb.cy ], [ %.sroa.23.0.lcssa1906, %bb.dq ], [ %.sroa.23.11292, %bb.v ], [ %.sroa.23.2, %bb.y ], [ %.sroa.15.11296, %.loopexit754 ], [ %.sroa.23.1.lcssa, %.loopexit759 ], [ %.sroa.23.1.lcssa, %.loopexit729 ], [ %.sroa.23.1.lcssa, %.loopexit735 ], [ %.sroa.23.1.lcssa, %.loopexit740 ], [ %.sroa.23.1.lcssa, %.loopexit749 ], [ %.sroa.23.1.lcssa, %.loopexit.split-lp750 ]
  %.sroa.0552.7 = phi ptr [ %.sroa.0552.0.lcssa1915, %_ZNSt6vectorIdSaIdEED2Ev.exit425 ], [ %.sroa.0552.0.lcssa1916, %bb.dn ], [ %.sroa.0552.01350, %bb.n ], [ %.sroa.0552.1.lcssa, %.loopexit.split-lp741 ], [ %.sroa.0552.11297, %.loopexit.split-lp755 ], [ %.sroa.0552.1.lcssa, %.loopexit.split-lp760 ], [ %.sroa.0552.1.lcssa, %.loopexit.split-lp730 ], [ %.sroa.0552.1.lcssa, %bb.ax ], [ %.sroa.0552.1.lcssa, %.loopexit.split-lp736 ], [ %.sroa.0552.1.lcssa, %bb.cy ], [ %.sroa.0552.0.lcssa1915, %bb.dq ], [ %.sroa.0552.11297, %bb.v ], [ %.sroa.0552.2, %bb.y ], [ %.sroa.0552.11297, %.loopexit754 ], [ %.sroa.0552.1.lcssa, %.loopexit759 ], [ %.sroa.0552.1.lcssa, %.loopexit729 ], [ %.sroa.0552.1.lcssa, %.loopexit735 ], [ %.sroa.0552.1.lcssa, %.loopexit740 ], [ %.sroa.0552.1.lcssa, %.loopexit749 ], [ %.sroa.0552.1.lcssa, %.loopexit.split-lp750 ] ; 3 uses
  %.sroa.43.12 = phi ptr [ %.sroa.43.13, %_ZNSt6vectorIdSaIdEED2Ev.exit425 ], [ %.sroa.43.0.lcssa1924, %bb.dn ], [ %.sroa.43.01351, %bb.n ], [ %.sroa.43.2, %.loopexit.split-lp741 ], [ %.sroa.43.01351, %.loopexit.split-lp755 ], [ %.sroa.24.01352, %.loopexit.split-lp760 ], [ %.sroa.43.14, %.loopexit.split-lp730 ], [ %.sroa.43.2, %bb.ax ], [ %.sroa.24.11321, %.loopexit.split-lp736 ], [ %.sroa.43.5, %bb.cy ], [ %.sroa.43.13, %bb.dq ], [ %.sroa.43.01351, %bb.v ], [ %.sroa.43.01351, %bb.y ], [ %.sroa.43.01351, %.loopexit754 ], [ %.sroa.24.01352, %.loopexit759 ], [ %.sroa.43.14, %.loopexit729 ], [ %.sroa.24.11321, %.loopexit735 ], [ %.sroa.43.2, %.loopexit740 ], [ %.sroa.43.7, %.loopexit749 ], [ %.sroa.43.7, %.loopexit.split-lp750 ] ; 2 uses
  %.sroa.0569.12 = phi ptr [ %.sroa.0569.13, %_ZNSt6vectorIdSaIdEED2Ev.exit425 ], [ %.sroa.0569.0.lcssa1925, %bb.dn ], [ %.sroa.0569.01353, %bb.n ], [ %.sroa.0569.2, %.loopexit.split-lp741 ], [ %.sroa.0569.01353, %.loopexit.split-lp755 ], [ %.sroa.0569.01353, %.loopexit.split-lp760 ], [ %.sroa.0569.14, %.loopexit.split-lp730 ], [ %.sroa.0569.2, %bb.ax ], [ %.sroa.0569.11322, %.loopexit.split-lp736 ], [ %.sroa.0569.5, %bb.cy ], [ %.sroa.0569.13, %bb.dq ], [ %.sroa.0569.01353, %bb.v ], [ %.sroa.0569.01353, %bb.y ], [ %.sroa.0569.01353, %.loopexit754 ], [ %.sroa.0569.01353, %.loopexit759 ], [ %.sroa.0569.14, %.loopexit729 ], [ %.sroa.0569.11322, %.loopexit735 ], [ %.sroa.0569.2, %.loopexit740 ], [ %.sroa.0569.7, %.loopexit749 ], [ %.sroa.0569.7, %.loopexit.split-lp750 ] ; 2 uses
  %.sroa.67.12 = phi ptr [ %.sroa.67.0.lcssa1926, %_ZNSt6vectorIdSaIdEED2Ev.exit425 ], [ %.sroa.67.0.lcssa1927, %bb.dn ], [ %.sroa.67.01354, %bb.n ], [ %.sroa.33.21324, %.loopexit.split-lp741 ], [ %.sroa.67.01354, %.loopexit.split-lp755 ], [ %.sroa.67.01354, %.loopexit.split-lp760 ], [ %.sroa.33.11338, %.loopexit.split-lp730 ], [ %.sroa.67.21323, %bb.ax ], [ %.sroa.67.21323, %.loopexit.split-lp736 ], [ %.sroa.67.6, %bb.cy ], [ %.sroa.67.0.lcssa1926, %bb.dq ], [ %.sroa.67.01354, %bb.v ], [ %.sroa.67.01354, %bb.y ], [ %.sroa.67.01354, %.loopexit754 ], [ %.sroa.67.01354, %.loopexit759 ], [ %.sroa.67.11337.lcssa, %.loopexit729 ], [ %.sroa.67.21323, %.loopexit735 ], [ %.sroa.67.21323.lcssa1464, %.loopexit740 ], [ %.sroa.67.71303.lcssa1440, %.loopexit749 ], [ %.sroa.33.51304, %.loopexit.split-lp750 ] ; 2 uses
  %.sroa.0602.12 = phi ptr [ %.sroa.0602.0.lcssa1935, %_ZNSt6vectorIdSaIdEED2Ev.exit425 ], [ %.sroa.0602.0.lcssa1936, %bb.dn ], [ %.sroa.0602.01356, %bb.n ], [ %.sroa.0602.21325, %.loopexit.split-lp741 ], [ %.sroa.0602.01356, %.loopexit.split-lp755 ], [ %.sroa.0602.01356, %.loopexit.split-lp760 ], [ %.sroa.0602.11339, %.loopexit.split-lp730 ], [ %.sroa.0602.21325, %bb.ax ], [ %.sroa.0602.21325, %.loopexit.split-lp736 ], [ %.sroa.0602.6, %bb.cy ], [ %.sroa.0602.0.lcssa1935, %bb.dq ], [ %.sroa.0602.01356, %bb.v ], [ %.sroa.0602.01356, %bb.y ], [ %.sroa.0602.01356, %.loopexit754 ], [ %.sroa.0602.01356, %.loopexit759 ], [ %.sroa.0602.11339, %.loopexit729 ], [ %.sroa.0602.21325, %.loopexit735 ], [ %.sroa.0602.21325, %.loopexit740 ], [ %.sroa.0602.71305, %.loopexit749 ], [ %.sroa.0602.71305, %.loopexit.split-lp750 ] ; 2 uses
  %.pn183.pn.pn.pn = phi { ptr, i32 } [ %.pn167.pn, %_ZNSt6vectorIdSaIdEED2Ev.exit425 ], [ %i.qk, %bb.dn ], [ %i.bn, %bb.n ], [ %lpad.loopexit.split-lp743, %.loopexit.split-lp741 ], [ %lpad.loopexit.split-lp757, %.loopexit.split-lp755 ], [ %lpad.loopexit.split-lp762, %.loopexit.split-lp760 ], [ %lpad.loopexit.split-lp732, %.loopexit.split-lp730 ], [ %i.gr, %bb.ax ], [ %lpad.loopexit.split-lp738, %.loopexit.split-lp736 ], [ %.pn175, %bb.cy ], [ %i.re, %bb.dq ], [ %i.dd, %bb.v ], [ %i.dm, %bb.y ], [ %lpad.loopexit756, %.loopexit754 ], [ %lpad.loopexit761, %.loopexit759 ], [ %lpad.loopexit731, %.loopexit729 ], [ %lpad.loopexit737, %.loopexit735 ], [ %lpad.loopexit742, %.loopexit740 ], [ %lpad.loopexit751, %.loopexit749 ], [ %lpad.loopexit.split-lp752, %.loopexit.split-lp750 ] ; 2 uses
  %.not.i.i.i426 = icmp eq ptr %.sroa.0552.7, null
  br i1 %.not.i.i.i426, label %_ZNSt6vectorIiSaIiEED2Ev.exit427, label %..thread670_crit_edge

..thread670_crit_edge:                            ; preds = %bb.gd
  %.pre1835 = ptrtoint ptr %.sroa.0552.7 to i64
  br label %.thread670

.thread670:                                       ; preds = %..thread670_crit_edge, %.thread670.loopexit, %.thread670.loopexit.split-lp
  %.pre-phi1836 = phi i64 [ %.pre1835, %..thread670_crit_edge ], [ %i.ei, %.thread670.loopexit ], [ %i.ei, %.thread670.loopexit.split-lp ]
  %.pn183.pn.pn.pn689 = phi { ptr, i32 } [ %.pn183.pn.pn.pn, %..thread670_crit_edge ], [ %lpad.loopexit746, %.thread670.loopexit ], [ %lpad.loopexit.split-lp747, %.thread670.loopexit.split-lp ]
  %.sroa.0602.12687 = phi ptr [ %.sroa.0602.12, %..thread670_crit_edge ], [ %.sroa.0602.71305, %.thread670.loopexit ], [ %.sroa.0602.71305, %.thread670.loopexit.split-lp ]
  %.sroa.67.12685 = phi ptr [ %.sroa.67.12, %..thread670_crit_edge ], [ %.sroa.67.71303, %.thread670.loopexit ], [ %.sroa.67.71303, %.thread670.loopexit.split-lp ]
  %.sroa.0569.12683 = phi ptr [ %.sroa.0569.12, %..thread670_crit_edge ], [ %.sroa.0569.61302, %.thread670.loopexit ], [ %.sroa.0569.61302, %.thread670.loopexit.split-lp ]
  %.sroa.43.12681 = phi ptr [ %.sroa.43.12, %..thread670_crit_edge ], [ %.sroa.24.41301, %.thread670.loopexit ], [ %.sroa.24.41301, %.thread670.loopexit.split-lp ]
  %.sroa.0552.7680 = phi ptr [ %.sroa.0552.7, %..thread670_crit_edge ], [ %.sroa.0552.1.lcssa, %.thread670.loopexit ], [ %.sroa.0552.1.lcssa, %.thread670.loopexit.split-lp ]
  %.sroa.23.7679 = phi ptr [ %.sroa.23.7, %..thread670_crit_edge ], [ %.sroa.23.1.lcssa, %.thread670.loopexit ], [ %.sroa.23.1.lcssa, %.thread670.loopexit.split-lp ]
  %i.ajq = ptrtoint ptr %.sroa.23.7679 to i64
  %i.ajr = sub i64 %i.ajq, %.pre-phi1836
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0552.7680, i64 noundef %i.ajr) #17
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit427

_ZNSt6vectorIiSaIiEED2Ev.exit427:                 ; preds = %bb.gd, %.thread670
  %.pn183.pn.pn.pn690 = phi { ptr, i32 } [ %.pn183.pn.pn.pn, %bb.gd ], [ %.pn183.pn.pn.pn689, %.thread670 ]
  %.sroa.0602.12688 = phi ptr [ %.sroa.0602.12, %bb.gd ], [ %.sroa.0602.12687, %.thread670 ] ; 3 uses
  %.sroa.67.12686 = phi ptr [ %.sroa.67.12, %bb.gd ], [ %.sroa.67.12685, %.thread670 ]
  %.sroa.0569.12684 = phi ptr [ %.sroa.0569.12, %bb.gd ], [ %.sroa.0569.12683, %.thread670 ] ; 3 uses
  %.sroa.43.12682 = phi ptr [ %.sroa.43.12, %bb.gd ], [ %.sroa.43.12681, %.thread670 ]
  %.not.i.i.i428 = icmp eq ptr %.sroa.0569.12684, null
  br i1 %.not.i.i.i428, label %_ZNSt6vectorIiSaIiEED2Ev.exit429, label %bb.ge

end_hunk_1
