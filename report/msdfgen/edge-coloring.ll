Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msdfgen/original/edge-coloring?download=true
inline.NumInlined: 874
inline.NumDeleted: 392
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN7msdfgen22edgeColoringByDistanceERNS_5ShapeEdy:bb.a
  %.sroa.43.7 = phi ptr [ %.sroa.43.61300, %.lr.ph1309 ], [ %.sroa.43.61300, %bb.da ], [ %i.pf, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i323 ], [ %.sroa.43.61300, %bb.dc ] ; 4 uses
  %.sroa.24.5 = phi ptr [ %.sroa.24.41301, %.lr.ph1309 ], [ %.sroa.24.41301, %bb.da ], [ %i.pe, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i323 ], [ %i.oq, %bb.dc ] ; 2 uses
  %.sroa.0569.7 = phi ptr [ %.sroa.0569.61302, %.lr.ph1309 ], [ %.sroa.0569.61302, %bb.da ], [ %i.pb, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i323 ], [ %.sroa.0569.61302, %bb.dc ] ; 4 uses
  %.1137 = phi i32 [ %.01361306, %.lr.ph1309 ], [ %.01361306, %bb.da ], [ %i.of, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i323 ], [ %i.of, %bb.dc ]
  %i.pg = sext i32 %i.oe to i64
  %i.ph = load ptr, ptr %.sroa.0532.01346, align 8, !tbaa !23
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
  br i1 %exitcond.not, label %.loopexit728, label %.lr.ph1309, !llvm.loop !62

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
  %i.qa = load ptr, ptr %i.f, align 8, !tbaa !8
  %.not692 = icmp eq ptr %i.pz, %i.qa
  br i1 %.not692, label %._crit_edge1359, label %bb.f, !llvm.loop !63

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
  store double 0.000000e+00, ptr %i.qo, align 8, !tbaa !36
  %i.qp = add nsw i64 %i.qm, -1                   ; 3 uses
  %i.qq = icmp eq i64 %i.qp, 0                    ; 2 uses
  br i1 %i.qq, label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc338
  %i.qr = getelementptr i8, ptr %i.qo, i64 8
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.qp, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.qr, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !36
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
  store ptr null, ptr %i.qv, align 8, !tbaa !64
  %i.qw = add nsw i64 %i.qs, -1                   ; 3 uses
  %i.qx = icmp eq i64 %i.qw, 0                    ; 2 uses
  br i1 %i.qx, label %.lr.ph1369.preheader, label %_ZSt6fill_nIPPdmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPPdmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc343
  %i.qy = getelementptr i8, ptr %i.qv, i64 8
  %.idx.i.i.i.i.i.i.i340 = shl nuw nsw i64 %i.qw, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.qy, i8 0, i64 %.idx.i.i.i.i.i.i.i340, i1 false), !tbaa !64
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
  %i.rb = mul nsw i64 %indvars.iv1784.epil, %i.qs
  %i.rc = getelementptr inbounds nuw [8 x i8], ptr %i.qo, i64 %i.rb
  %i.rd = getelementptr inbounds nuw [8 x i8], ptr %i.qv, i64 %indvars.iv1784.epil
  store ptr %i.rc, ptr %i.rd, align 8, !tbaa !64
  %indvars.iv.next1785.epil = add nuw nsw i64 %indvars.iv1784.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph1374.preheader, label %.lr.ph1369.epil, !llvm.loop !66

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
  %i.rg = mul nsw i64 %indvars.iv1784, %i.qs
  %i.rh = getelementptr inbounds nuw [8 x i8], ptr %i.qo, i64 %i.rg
  %i.ri = getelementptr inbounds nuw [8 x i8], ptr %i.qv, i64 %indvars.iv1784
  store ptr %i.rh, ptr %i.ri, align 8, !tbaa !64
  %indvars.iv.next1785 = or disjoint i64 %indvars.iv1784, 1 ; 2 uses
  %i.rj = mul nsw i64 %indvars.iv.next1785, %i.qs
  %i.rk = getelementptr inbounds nuw [8 x i8], ptr %i.qo, i64 %i.rj
  %i.rl = getelementptr inbounds nuw [8 x i8], ptr %i.qv, i64 %indvars.iv.next1785
  store ptr %i.rk, ptr %i.rl, align 8, !tbaa !64
  %indvars.iv.next1785.1 = or disjoint i64 %indvars.iv1784, 2 ; 2 uses
  %i.rm = mul nsw i64 %indvars.iv.next1785.1, %i.qs
  %i.rn = getelementptr inbounds nuw [8 x i8], ptr %i.qo, i64 %i.rm
  %i.ro = getelementptr inbounds nuw [8 x i8], ptr %i.qv, i64 %indvars.iv.next1785.1
  store ptr %i.rn, ptr %i.ro, align 8, !tbaa !64
  %indvars.iv.next1785.2 = or disjoint i64 %indvars.iv1784, 3 ; 2 uses
  %i.rp = mul nsw i64 %indvars.iv.next1785.2, %i.qs
  %i.rq = getelementptr inbounds nuw [8 x i8], ptr %i.qo, i64 %i.rp
  %i.rr = getelementptr inbounds nuw [8 x i8], ptr %i.qv, i64 %indvars.iv.next1785.2
  store ptr %i.rq, ptr %i.rr, align 8, !tbaa !64
  %indvars.iv.next1785.3 = add nuw nsw i64 %indvars.iv1784, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph1374.preheader.unr-lcssa, label %.lr.ph1369, !llvm.loop !68

.loopexit726:                                     ; preds = %_ZN7msdfgenL22splineToSplineDistanceEPKPNS_11EdgeSegmentEiiiii.exit, %.lr.ph1374
  %indvars.iv.next1789 = add nuw nsw i64 %indvars.iv1788, 1
  %exitcond1800.not = icmp eq i64 %indvars.iv.next1796, %wide.trip.count1799
  br i1 %exitcond1800.not, label %._crit_edge1375, label %.lr.ph1374, !llvm.loop !69

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
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !64 ; 2 uses
  %i.sd = getelementptr inbounds nuw [8 x i8], ptr %i.sc, i64 %indvars.iv1795
  store double -1.000000e+00, ptr %i.sd, align 8, !tbaa !36
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
  %i.si = load i32, ptr %i.sf, align 4, !tbaa !17 ; 2 uses
  %i.sj = load i32, ptr %i.sg, align 4, !tbaa !17 ; 2 uses
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0569.13, i64 %indvars.iv1790
  %i.sl = load i32, ptr %i.sk, align 4, !tbaa !17 ; 2 uses
  %indvars.iv.next1791 = add nuw nsw i64 %indvars.iv1790, 1 ; 3 uses
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0569.13, i64 %indvars.iv.next1791
  %i.sn = load i32, ptr %i.sm, align 4, !tbaa !17 ; 2 uses
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
  br i1 %exitcond.not.i, label %_ZN7msdfgenL22splineToSplineDistanceEPKPNS_11EdgeSegmentEiiiii.exit.loopexit, label %.preheader.i, !llvm.loop !70

bb.dv:                                            ; preds = %_ZN7msdfgenL18edgeToEdgeDistanceERKNS_11EdgeSegmentES2_i.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.sq, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN7msdfgenL18edgeToEdgeDistanceERKNS_11EdgeSegmentES2_i.exit.i ] ; 2 uses
  %.120.i = phi double [ %.022.i, %.lr.ph.i ], [ %i.xf, %_ZN7msdfgenL18edgeToEdgeDistanceERKNS_11EdgeSegmentES2_i.exit.i ] ; 2 uses
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !27 ; 14 uses
  %i.sw = getelementptr inbounds [8 x i8], ptr %.sroa.0602.0.lcssa1935, i64 %indvars.iv.i
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !27 ; 14 uses
  %i.sy = load ptr, ptr %i.sv, align 8, !tbaa !15
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 40
  %i.ta = load ptr, ptr %i.sz, align 8
  %i.tb = invoke { double, double } %i.ta(ptr noundef nonnull align 8 dereferenceable(12) %i.sv, double noundef 0.000000e+00)
          to label %.noexc346 unwind label %.loopexit.split-lp719.loopexit.split-lp, !inline_history !71 ; 2 uses

.noexc346:                                        ; preds = %bb.dv
  %i.tc = load ptr, ptr %i.sx, align 8, !tbaa !15
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 40
  %i.te = load ptr, ptr %i.td, align 8
  %i.tf = invoke { double, double } %i.te(ptr noundef nonnull align 8 dereferenceable(12) %i.sx, double noundef 0.000000e+00)
          to label %.noexc347 unwind label %.loopexit.split-lp719.loopexit.split-lp, !inline_history !71 ; 2 uses

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
  %i.tn = load ptr, ptr %i.sv, align 8, !tbaa !15
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 40
  %i.tp = load ptr, ptr %i.to, align 8
  %i.tq = invoke { double, double } %i.tp(ptr noundef nonnull align 8 dereferenceable(12) %i.sv, double noundef 0.000000e+00)
          to label %.noexc348 unwind label %.loopexit.split-lp719.loopexit.split-lp, !inline_history !71 ; 2 uses

.noexc348:                                        ; preds = %bb.dw
  %i.tr = load ptr, ptr %i.sx, align 8, !tbaa !15
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 40
  %i.tt = load ptr, ptr %i.ts, align 8
  %i.tu = invoke { double, double } %i.tt(ptr noundef nonnull align 8 dereferenceable(12) %i.sx, double noundef 1.000000e+00)
          to label %.noexc349 unwind label %.loopexit.split-lp719.loopexit.split-lp, !inline_history !71 ; 2 uses

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
  %i.uc = load ptr, ptr %i.sv, align 8, !tbaa !15
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 40
  %i.ue = load ptr, ptr %i.ud, align 8
  %i.uf = invoke { double, double } %i.ue(ptr noundef nonnull align 8 dereferenceable(12) %i.sv, double noundef 1.000000e+00)
          to label %.noexc350 unwind label %.loopexit.split-lp719.loopexit.split-lp, !inline_history !71 ; 2 uses

.noexc350:                                        ; preds = %bb.dx
  %i.ug = load ptr, ptr %i.sx, align 8, !tbaa !15
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 40
  %i.ui = load ptr, ptr %i.uh, align 8
  %i.uj = invoke { double, double } %i.ui(ptr noundef nonnull align 8 dereferenceable(12) %i.sx, double noundef 0.000000e+00)
          to label %.noexc351 unwind label %.loopexit.split-lp719.loopexit.split-lp, !inline_history !71 ; 2 uses

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
  %i.ur = load ptr, ptr %i.sv, align 8, !tbaa !15
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 40
  %i.ut = load ptr, ptr %i.us, align 8
  %i.uu = invoke { double, double } %i.ut(ptr noundef nonnull align 8 dereferenceable(12) %i.sv, double noundef 1.000000e+00)
          to label %.noexc352 unwind label %.loopexit.split-lp719.loopexit.split-lp, !inline_history !71 ; 2 uses

.noexc352:                                        ; preds = %bb.dy
  %i.uv = load ptr, ptr %i.sx, align 8, !tbaa !15
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 40
  %i.ux = load ptr, ptr %i.uw, align 8
  %i.uy = invoke { double, double } %i.ux(ptr noundef nonnull align 8 dereferenceable(12) %i.sx, double noundef 1.000000e+00)
          to label %.noexc353 unwind label %.loopexit.split-lp719.loopexit.split-lp, !inline_history !71 ; 2 uses

.noexc353:                                        ; preds = %.noexc352
  %i.uz = extractvalue { double, double } %i.uu, 1
  %i.va = extractvalue { double, double } %i.uu, 0
  %i.vb = extractvalue { double, double } %i.uy, 0
  %i.vc = extractvalue { double, double } %i.uy, 1
  %i.vd = fcmp oeq double %i.va, %i.vb
end_hunk_0
begin_hunk_1_@_ZN7msdfgen22edgeColoringByDistanceERNS_5ShapeEdy:bb.a
  %i.xl = getelementptr inbounds nuw [8 x i8], ptr %i.qv, i64 %indvars.iv1790
  %i.xm = load ptr, ptr %i.xl, align 8, !tbaa !64
  %i.xn = getelementptr inbounds nuw [8 x i8], ptr %i.xm, i64 %indvars.iv1795
  store double %.0.lcssa.i, ptr %i.xn, align 8, !tbaa !36
  %exitcond1794.not = icmp eq i64 %indvars.iv.next1791, %wide.trip.count1793
  br i1 %exitcond1794.not, label %.loopexit726, label %bb.du, !llvm.loop !75

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
  br i1 %exitcond1813.not, label %._crit_edge1390, label %.lr.ph1389, !llvm.loop !76

._crit_edge1390:                                  ; preds = %.loopexit
  %i.xo = ptrtoint ptr %.sroa.18.1.lcssa to i64
  %i.xp = ptrtoint ptr %.sroa.0455.1.lcssa to i64 ; 3 uses
  %i.xq = sub i64 %i.xo, %i.xp
  %i.xr = ashr exact i64 %i.xq, 3                 ; 3 uses
  %i.xs = trunc i64 %i.xr to i32                  ; 4 uses
  %i.xt = icmp eq ptr %.sroa.0455.1.lcssa, %.sroa.18.1.lcssa
  br i1 %i.xt, label %bb.ei, label %bb.eh

.thread:                                          ; preds = %bb.ds, %_ZNSt12_Vector_baseIPKdSaIS1_EE11_M_allocateEm.exit.i
  %i.xu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPdSaIS0_EED2Ev.exit423

.lr.ph1389:                                       ; preds = %.lr.ph1389.preheader, %.loopexit
  %indvars.iv1808 = phi i64 [ 0, %.lr.ph1389.preheader ], [ %indvars.iv.next1809, %.loopexit ] ; 2 uses
  %indvars.iv1801 = phi i64 [ 1, %.lr.ph1389.preheader ], [ %indvars.iv.next1802, %.loopexit ] ; 2 uses
  %.sroa.27.01387 = phi ptr [ %.sroa.27.3, %.lr.ph1389.preheader ], [ %.sroa.27.1.lcssa, %.loopexit ] ; 2 uses
  %.sroa.18.01386 = phi ptr [ %.sroa.0455.3, %.lr.ph1389.preheader ], [ %.sroa.18.1.lcssa, %.loopexit ] ; 2 uses
  %.sroa.0455.01385 = phi ptr [ %.sroa.0455.3, %.lr.ph1389.preheader ], [ %.sroa.0455.1.lcssa, %.loopexit ] ; 2 uses
  %indvars.iv.next1809 = add nuw nsw i64 %indvars.iv1808, 1 ; 3 uses
  %i.xv = icmp slt i64 %indvars.iv.next1809, %i.qs
  br i1 %i.xv, label %.lr.ph1381, label %.loopexit

.lr.ph1381:                                       ; preds = %.lr.ph1389
  %i.xw = getelementptr inbounds nuw [8 x i8], ptr %i.qv, i64 %indvars.iv1808
  br label %bb.eb

bb.eb:                                            ; preds = %.lr.ph1381, %_ZNSt6vectorIPKdSaIS1_EE9push_backEOS1_.exit
  %indvars.iv1803 = phi i64 [ %indvars.iv1801, %.lr.ph1381 ], [ %indvars.iv.next1804, %_ZNSt6vectorIPKdSaIS1_EE9push_backEOS1_.exit ] ; 2 uses
  %.sroa.27.11378 = phi ptr [ %.sroa.27.01387, %.lr.ph1381 ], [ %.sroa.27.4, %_ZNSt6vectorIPKdSaIS1_EE9push_backEOS1_.exit ] ; 5 uses
  %.sroa.18.11377 = phi ptr [ %.sroa.18.01386, %.lr.ph1381 ], [ %.sroa.18.3, %_ZNSt6vectorIPKdSaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  %.sroa.0455.11376 = phi ptr [ %.sroa.0455.01385, %.lr.ph1381 ], [ %.sroa.0455.4, %_ZNSt6vectorIPKdSaIS1_EE9push_backEOS1_.exit ] ; 7 uses
  %i.xx = load ptr, ptr %i.xw, align 8, !tbaa !64
  %i.xy = getelementptr inbounds nuw [8 x i8], ptr %i.xx, i64 %indvars.iv1803 ; 2 uses
  %.not.i.i360 = icmp eq ptr %.sroa.18.11377, %.sroa.27.11378
  br i1 %.not.i.i360, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  store ptr %i.xy, ptr %.sroa.18.11377, align 8, !tbaa !64
  br label %_ZNSt6vectorIPKdSaIS1_EE9push_backEOS1_.exit

bb.ed:                                            ; preds = %bb.eb
  %i.xz = ptrtoint ptr %.sroa.27.11378 to i64
  %i.ya = ptrtoint ptr %.sroa.0455.11376 to i64
  %i.yb = sub i64 %i.xz, %i.ya                    ; 6 uses
  %i.yc = icmp eq i64 %i.yb, 9223372036854775800
  br i1 %i.yc, label %bb.ee, label %_ZNKSt6vectorIPKdSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ee:                                            ; preds = %bb.ed
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
          to label %.noexc364 unwind label %.loopexit.split-lp

.noexc364:                                        ; preds = %bb.ee
  unreachable

_ZNKSt6vectorIPKdSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ed
  %i.yd = ashr exact i64 %i.yb, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i361 = call i64 @llvm.umax.i64(i64 %i.yd, i64 1)
  %i.ye = add nsw i64 %.sroa.speculated.i.i.i.i361, %i.yd ; 2 uses
  %i.yf = icmp ult i64 %i.ye, %i.yd
  %i.yg = call i64 @llvm.umin.i64(i64 %i.ye, i64 1152921504606846975)
  %i.yh = select i1 %i.yf, i64 1152921504606846975, i64 %i.yg ; 3 uses
  %.not.i.i.i.i362 = icmp ne i64 %i.yh, 0
  call void @llvm.assume(i1 %.not.i.i.i.i362)
  %i.yi = shl nuw nsw i64 %i.yh, 3
  %i.yj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yi) #19
          to label %.noexc365 unwind label %.loopexit717 ; 4 uses

.noexc365:                                        ; preds = %_ZNKSt6vectorIPKdSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.yk = getelementptr inbounds i8, ptr %i.yj, i64 %i.yb ; 2 uses
  store ptr %i.xy, ptr %i.yk, align 8, !tbaa !64
  %i.yl = icmp sgt i64 %i.yb, 0
  br i1 %i.yl, label %bb.ef, label %_ZNSt6vectorIPKdSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.ef:                                            ; preds = %.noexc365
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.yj, ptr align 8 %.sroa.0455.11376, i64 %i.yb, i1 false)
  br label %_ZNSt6vectorIPKdSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIPKdSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.ef, %.noexc365
  %.not.i17.i.i.i363 = icmp eq ptr %.sroa.0455.11376, null
  br i1 %.not.i17.i.i.i363, label %_ZNSt6vectorIPKdSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.eg

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
  br i1 %exitcond1807.not, label %.loopexit, label %bb.eb, !llvm.loop !77

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
  store i32 0, ptr %i.yp, align 4, !tbaa !17
  br i1 %i.qq, label %_ZNSt6vectorIPiSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc369
  %i.yq = getelementptr i8, ptr %i.yp, i64 4
  %.idx.i.i.i.i.i.i.i367 = shl nuw nsw i64 %i.qp, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.yq, i8 0, i64 %.idx.i.i.i.i.i.i.i367, i1 false), !tbaa !17
  br label %_ZNSt6vectorIPiSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i

_ZNSt6vectorIPiSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc369
  %i.yr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qu) #19
          to label %.noexc374 unwind label %bb.ek ; 17 uses

.noexc374:                                        ; preds = %_ZNSt6vectorIPiSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i
  store ptr null, ptr %i.yr, align 8, !tbaa !78
  br i1 %i.qx, label %.lr.ph1395.preheader, label %_ZSt6fill_nIPPimS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPPimS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc374
  %i.ys = getelementptr i8, ptr %i.yr, i64 8
  %.idx.i.i.i.i.i.i.i371 = shl nuw nsw i64 %i.qw, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ys, i8 0, i64 %.idx.i.i.i.i.i.i.i371, i1 false), !tbaa !78
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
  %i.yu = mul nsw i64 %indvars.iv1814.epil, %i.qs
  %i.yv = getelementptr inbounds nuw [4 x i8], ptr %i.yp, i64 %i.yu
  %i.yw = getelementptr inbounds nuw [8 x i8], ptr %i.yr, i64 %indvars.iv1814.epil
  store ptr %i.yv, ptr %i.yw, align 8, !tbaa !78
  %indvars.iv.next1815.epil = add nuw nsw i64 %indvars.iv1814.epil, 1
  %epil.iter3336.next = add i64 %epil.iter3336, 1 ; 2 uses
  %epil.iter3336.cmp.not = icmp eq i64 %epil.iter3336.next, %xtraiter3335
  br i1 %epil.iter3336.cmp.not, label %.preheader716, label %.lr.ph1395.epil, !llvm.loop !80

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
  %i.zb = mul nsw i64 %indvars.iv1814, %i.qs
  %i.zc = getelementptr inbounds nuw [4 x i8], ptr %i.yp, i64 %i.zb
  %i.zd = getelementptr inbounds nuw [8 x i8], ptr %i.yr, i64 %indvars.iv1814
  store ptr %i.zc, ptr %i.zd, align 8, !tbaa !78
  %indvars.iv.next1815 = or disjoint i64 %indvars.iv1814, 1 ; 2 uses
  %i.ze = mul nsw i64 %indvars.iv.next1815, %i.qs
  %i.zf = getelementptr inbounds nuw [4 x i8], ptr %i.yp, i64 %i.ze
  %i.zg = getelementptr inbounds nuw [8 x i8], ptr %i.yr, i64 %indvars.iv.next1815
  store ptr %i.zf, ptr %i.zg, align 8, !tbaa !78
  %indvars.iv.next1815.1 = or disjoint i64 %indvars.iv1814, 2 ; 2 uses
  %i.zh = mul nsw i64 %indvars.iv.next1815.1, %i.qs
  %i.zi = getelementptr inbounds nuw [4 x i8], ptr %i.yp, i64 %i.zh
  %i.zj = getelementptr inbounds nuw [8 x i8], ptr %i.yr, i64 %indvars.iv.next1815.1
  store ptr %i.zi, ptr %i.zj, align 8, !tbaa !78
  %indvars.iv.next1815.2 = or disjoint i64 %indvars.iv1814, 3 ; 2 uses
  %i.zk = mul nsw i64 %indvars.iv.next1815.2, %i.qs
  %i.zl = getelementptr inbounds nuw [4 x i8], ptr %i.yp, i64 %i.zk
  %i.zm = getelementptr inbounds nuw [8 x i8], ptr %i.yr, i64 %indvars.iv.next1815.2
  store ptr %i.zl, ptr %i.zm, align 8, !tbaa !78
  %indvars.iv.next1815.3 = add nuw nsw i64 %indvars.iv1814, 4 ; 2 uses
  %niter3340.next.3 = add i64 %niter3340, 4       ; 2 uses
  %niter3340.ncmp.3 = icmp eq i64 %niter3340.next.3, %unroll_iter3339
  br i1 %niter3340.ncmp.3, label %.preheader716.unr-lcssa, label %.lr.ph1395, !llvm.loop !81

bb.el:                                            ; preds = %.lr.ph1397, %bb.em
  %indvars.iv1820 = phi i64 [ 0, %.lr.ph1397 ], [ %indvars.iv.next1821, %bb.em ] ; 3 uses
  %i.zn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0455.1.lcssa, i64 %indvars.iv1820
  %i.zo = load ptr, ptr %i.zn, align 8, !tbaa !64 ; 2 uses
  %i.zp = load double, ptr %i.zo, align 8, !tbaa !36
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
  %i.zz = load ptr, ptr %i.zy, align 8, !tbaa !78
  %i.aaa = sext i32 %i.zw to i64                  ; 2 uses
  %i.aab = getelementptr inbounds [4 x i8], ptr %i.zz, i64 %i.aaa
  store i32 1, ptr %i.aab, align 4, !tbaa !17
  %i.aac = getelementptr inbounds nuw [8 x i8], ptr %i.yr, i64 %i.aaa
  %i.aad = load ptr, ptr %i.aac, align 8, !tbaa !78
  %i.aae = getelementptr inbounds [4 x i8], ptr %i.aad, i64 %i.zx
  store i32 1, ptr %i.aae, align 4, !tbaa !17
  %indvars.iv.next1821 = add nuw nsw i64 %indvars.iv1820, 1 ; 2 uses
  %exitcond1824.not = icmp eq i64 %indvars.iv.next1821, %wide.trip.count1823
  br i1 %exitcond1824.not, label %.critedge, label %bb.el, !llvm.loop !82

.critedge.loopexit.split.loop.exit2411:           ; preds = %bb.el
  %i.aaf = trunc nuw nsw i64 %indvars.iv1820 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.em, %.critedge.loopexit.split.loop.exit2411, %.preheader716
  %.0127.lcssa = phi i32 [ 0, %.preheader716 ], [ %i.aaf, %.critedge.loopexit.split.loop.exit2411 ], [ %i.xs, %bb.em ] ; 2 uses
  %i.aag = shl nsw i32 %i.qj, 1
  %5 = sext i32 %i.aag to i64
  %i.aah = shl nsw i64 %5, 2                      ; 4 uses
  %i.aai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aah) #19
          to label %.preheader.preheader.i383 unwind label %bb.fu ; 19 uses

.preheader.preheader.i383:                        ; preds = %.critedge
  store i32 0, ptr %i.aai, align 4, !tbaa !17
  %i.aaj = getelementptr i8, ptr %i.aai, i64 4
  %.idx.i.i.i.i.i.i.i377 = add nsw i64 %i.aah, -4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.aaj, i8 0, i64 %.idx.i.i.i.i.i.i.i377, i1 false), !tbaa !17
  %wide.trip.count34.i = zext nneg i32 %i.qj to i64
  br label %.preheader.i384

.preheader.i384:                                  ; preds = %bb.ey, %.preheader.preheader.i383
  %indvars.iv31.i = phi i64 [ 0, %.preheader.preheader.i383 ], [ %indvars.iv.next32.i, %bb.ey ] ; 9 uses
  %.02226.i = phi i64 [ %2, %.preheader.preheader.i383 ], [ %.123.i, %bb.ey ] ; 11 uses
  %.not29.i = icmp eq i64 %indvars.iv31.i, 0
  br i1 %.not29.i, label %._crit_edge.thread.i, label %.lr.ph.i385

.lr.ph.i385:                                      ; preds = %.preheader.i384
  %i.aak = getelementptr inbounds nuw [8 x i8], ptr %i.yr, i64 %indvars.iv31.i
  %i.aal = load ptr, ptr %i.aak, align 8, !tbaa !78 ; 3 uses
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
  %i.aao = load i32, ptr %i.aan, align 4, !tbaa !17
  %.not.i387.epil = icmp eq i32 %i.aao, 0
  br i1 %.not.i387.epil, label %._crit_edge.i390, label %bb.en

bb.en:                                            ; preds = %.epil.preheader
  %i.aap = getelementptr inbounds nuw [4 x i8], ptr %i.aai, i64 %indvars.iv.i386.epil.init
  %i.aaq = load i32, ptr %i.aap, align 4, !tbaa !17
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
  %i.aav = load i32, ptr %i.aau, align 4, !tbaa !17
  %.not.i387 = icmp eq i32 %i.aav, 0
  br i1 %.not.i387, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.aaw = getelementptr inbounds nuw [4 x i8], ptr %i.aai, i64 %indvars.iv.i386
  %i.aax = load i32, ptr %i.aaw, align 4, !tbaa !17
  %i.aay = shl nuw i32 1, %i.aax
  %i.aaz = xor i32 %i.aay, -1
  %i.aba = and i32 %.01724.i, %i.aaz
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo
  %.1.i = phi i32 [ %i.aba, %bb.ep ], [ %.01724.i, %bb.eo ] ; 2 uses
  %indvars.iv.next.i388 = or disjoint i64 %indvars.iv.i386, 1 ; 2 uses
  %i.abb = getelementptr inbounds nuw [4 x i8], ptr %i.aal, i64 %indvars.iv.next.i388
  %i.abc = load i32, ptr %i.abb, align 4, !tbaa !17
  %.not.i387.1 = icmp eq i32 %i.abc, 0
  br i1 %.not.i387.1, label %bb.es, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.abd = getelementptr inbounds nuw [4 x i8], ptr %i.aai, i64 %indvars.iv.next.i388
  %i.abe = load i32, ptr %i.abd, align 4, !tbaa !17
  %i.abf = shl nuw i32 1, %i.abe
  %i.abg = xor i32 %i.abf, -1
  %i.abh = and i32 %.1.i, %i.abg
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq
  %.1.i.1 = phi i32 [ %i.abh, %bb.er ], [ %.1.i, %bb.eq ] ; 3 uses
  %indvars.iv.next.i388.1 = add nuw nsw i64 %indvars.iv.i386, 2 ; 2 uses
  %niter3347.next.1 = add i64 %niter3347, 2       ; 2 uses
  %niter3347.ncmp.1 = icmp eq i64 %niter3347.next.1, %unroll_iter3346
  br i1 %niter3347.ncmp.1, label %._crit_edge.i390.unr-lcssa, label %bb.eo, !llvm.loop !83

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
  store i32 %.0.i, ptr %i.aca, align 4, !tbaa !17
  %indvars.iv.next32.i = add nuw nsw i64 %indvars.iv31.i, 1 ; 2 uses
  %exitcond35.not.i = icmp eq i64 %indvars.iv.next32.i, %wide.trip.count34.i
  br i1 %exitcond35.not.i, label %_ZN7msdfgenL22colorSecondDegreeGraphEPiPKPKiiy.exit, label %.preheader.i384, !llvm.loop !84

_ZN7msdfgenL22colorSecondDegreeGraphEPiPKPKiiy.exit: ; preds = %bb.ey
  %i.acb = icmp slt i32 %.0127.lcssa, %i.xs
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
  %xtraiter3348 = and i64 %wide.trip.count, 1
  %i.acn = icmp eq i64 %i.qz, 0
  %unroll_iter3353 = and i64 %wide.trip.count, 2147483646
  %lcmp.mod3350.not = icmp eq i64 %xtraiter3348, 0
  %lcmp.mod3352 = trunc i32 %i.qj to i1
  %xtraiter3355 = and i64 %wide.trip.count, 1
  %i.aco = icmp eq i64 %i.qz, 0
  %unroll_iter3360 = and i64 %wide.trip.count, 2147483646
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
  %i.acs = load ptr, ptr %i.acr, align 8, !tbaa !64
  %i.act = ptrtoint ptr %i.acs to i64
  %i.acu = sub i64 %i.act, %i.acc
  %i.acv = lshr exact i64 %i.acu, 3
  %i.acw = trunc i64 %i.acv to i32                ; 2 uses
  %i.acx = sdiv i32 %i.acw, %i.qj
  %i.acy = srem i32 %i.acw, %i.qj                 ; 2 uses
  %i.acz = sext i32 %i.acx to i64                 ; 6 uses
end_hunk_1
