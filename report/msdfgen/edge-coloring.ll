Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msdfgen/original/edge-coloring?download=true
inline.NumInlined: 874
inline.NumDeleted: 392
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN7msdfgen22edgeColoringByDistanceERNS_5ShapeEdy:bb.a
  %.not.i17.i.i.i332 = icmp eq ptr %.sroa.0602.71281, null
  br i1 %.not.i17.i.i.i332, label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i333, label %bb.di

bb.di:                                            ; preds = %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i331
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0602.71281, i64 noundef %i.pi) #17
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i333

_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i333: ; preds = %bb.di, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i331
  %i.pt = getelementptr inbounds nuw [8 x i8], ptr %i.pq, i64 %i.po
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit336

_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit336: ; preds = %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i333, %bb.de
  %.sroa.67.21 = phi ptr [ %i.pt, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i333 ], [ %.sroa.67.71279, %bb.de ] ; 2 uses
  %.pn696 = phi ptr [ %i.pr, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i333 ], [ %.sroa.33.51280, %bb.de ]
  %.sroa.0602.21 = phi ptr [ %i.pq, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i333 ], [ %.sroa.0602.71281, %bb.de ] ; 2 uses
  %.sroa.33.16 = getelementptr inbounds nuw i8, ptr %.pn696, i64 8 ; 2 uses
  %i.pu = add nuw nsw i32 %.01351283, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.pu, %i.nx
  br i1 %exitcond.not, label %.loopexit717, label %.lr.ph1285, !llvm.loop !82

.loopexit738:                                     ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit326, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i328
  %.sroa.67.71279.lcssa1417 = phi ptr [ %.sroa.67.71279, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit326 ], [ %.sroa.33.51280, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i328 ]
  %lpad.loopexit740 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp744

.loopexit.split-lp739:                            ; preds = %bb.dg
  %lpad.loopexit.split-lp741 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp744

.loopexit717:                                     ; preds = %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit336, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit235, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit, %bb.cv, %bb.af, %bb.w, %bb.aw, %._crit_edge1295, %bb.f
  %.sroa.23.7 = phi ptr [ %.sroa.23.01324, %bb.f ], [ %.sroa.23.1.lcssa, %bb.af ], [ %.sroa.23.1.lcssa, %bb.w ], [ %.sroa.23.1.lcssa, %._crit_edge1295 ], [ %.sroa.23.1.lcssa, %bb.aw ], [ %.sroa.23.1.lcssa, %bb.cv ], [ %.sroa.23.1.lcssa, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit235 ], [ %.sroa.23.1.lcssa, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit ], [ %.sroa.23.1.lcssa, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit336 ] ; 3 uses
  %.sroa.15.3 = phi ptr [ %.sroa.15.01325, %bb.f ], [ %.sroa.15.1.lcssa, %bb.af ], [ %.sroa.15.1.lcssa, %bb.w ], [ %.sroa.15.1.lcssa, %._crit_edge1295 ], [ %.sroa.15.1.lcssa, %bb.aw ], [ %.sroa.15.1.lcssa, %bb.cv ], [ %.sroa.15.1.lcssa, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit235 ], [ %.sroa.15.1.lcssa, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit ], [ %.sroa.15.1.lcssa, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit336 ]
  %.sroa.0552.7 = phi ptr [ %.sroa.0552.01326, %bb.f ], [ %.sroa.0552.1.lcssa, %bb.af ], [ %.sroa.0552.1.lcssa, %bb.w ], [ %.sroa.0552.1.lcssa, %._crit_edge1295 ], [ %.sroa.0552.1.lcssa, %bb.aw ], [ %.sroa.0552.1.lcssa, %bb.cv ], [ %.sroa.0552.1.lcssa, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit235 ], [ %.sroa.0552.1.lcssa, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit ], [ %.sroa.0552.1.lcssa, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit336 ] ; 3 uses
  %.sroa.43.11 = phi ptr [ %.sroa.43.01327, %bb.f ], [ %.sroa.43.14, %bb.af ], [ %.sroa.43.14, %bb.w ], [ %.sroa.43.4, %._crit_edge1295 ], [ %.sroa.43.14, %bb.aw ], [ %.sroa.43.14, %bb.cv ], [ %.sroa.43.2, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit235 ], [ %.sroa.43.14, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit ], [ %.sroa.43.7, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit336 ] ; 4 uses
  %.sroa.24.7 = phi ptr [ %.sroa.24.01328, %bb.f ], [ %.sroa.24.9, %bb.af ], [ %.sroa.24.9, %bb.w ], [ %.sroa.24.3, %._crit_edge1295 ], [ %.sroa.24.9, %bb.aw ], [ %.sroa.24.9, %bb.cv ], [ %.sroa.24.2, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit235 ], [ %.sroa.24.9, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit ], [ %.sroa.24.5, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit336 ] ; 4 uses
  %.sroa.0569.11 = phi ptr [ %.sroa.0569.01329, %bb.f ], [ %.sroa.0569.14, %bb.af ], [ %.sroa.0569.14, %bb.w ], [ %.sroa.0569.4, %._crit_edge1295 ], [ %.sroa.0569.14, %bb.aw ], [ %.sroa.0569.14, %bb.cv ], [ %.sroa.0569.2, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit235 ], [ %.sroa.0569.14, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit ], [ %.sroa.0569.7, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit336 ] ; 3 uses
  %.sroa.67.11 = phi ptr [ %.sroa.67.01330, %bb.f ], [ %.sroa.67.01330, %bb.af ], [ %.sroa.67.01330, %bb.w ], [ %.sroa.67.5, %._crit_edge1295 ], [ %.sroa.67.01330, %bb.aw ], [ %.sroa.67.01330, %bb.cv ], [ %.sroa.67.3, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit235 ], [ %.sroa.67.13, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit ], [ %.sroa.67.21, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit336 ] ; 3 uses
  %.sroa.33.7 = phi ptr [ %.sroa.33.01331, %bb.f ], [ %.sroa.33.01331, %bb.af ], [ %.sroa.33.01331, %bb.w ], [ %.sroa.33.4, %._crit_edge1295 ], [ %.sroa.33.01331, %bb.aw ], [ %.sroa.33.01331, %bb.cv ], [ %.sroa.33.3, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit235 ], [ %.sroa.33.8, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit ], [ %.sroa.33.16, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit336 ] ; 2 uses
  %.sroa.0602.11 = phi ptr [ %.sroa.0602.01332, %bb.f ], [ %.sroa.0602.01332, %bb.af ], [ %.sroa.0602.01332, %bb.w ], [ %.sroa.0602.5, %._crit_edge1295 ], [ %.sroa.0602.01332, %bb.aw ], [ %.sroa.0602.01332, %bb.cv ], [ %.sroa.0602.3, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit235 ], [ %.sroa.0602.13, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit ], [ %.sroa.0602.21, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit336 ] ; 4 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %.sroa.0532.01322, i64 24 ; 2 uses
  %i.pw = load ptr, ptr %i.f, align 8, !tbaa !12
  %.not678 = icmp eq ptr %i.pv, %i.pw
  br i1 %.not678, label %._crit_edge1335, label %bb.f, !llvm.loop !83

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.b
  %i.px = phi i32 [ %i.r, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.q, %bb.b ]
  %i.py = phi i64 [ %i.s, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.p, %bb.b ] ; 4 uses
  %i.pz = phi i64 [ %i.t, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.n, %bb.b ]
  %.sroa.0602.0.lcssa1865 = phi ptr [ %.sroa.0602.0.lcssa1866, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.0602.11, %bb.b ] ; 9 uses
  %.sroa.67.0.lcssa1862 = phi ptr [ %.sroa.67.0.lcssa1863, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.67.11, %bb.b ] ; 3 uses
  %.sroa.0552.0.lcssa1857 = phi ptr [ %.sroa.0552.0.lcssa1858, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.0552.7, %bb.b ] ; 5 uses
  %.sroa.23.0.lcssa1854 = phi ptr [ %.sroa.23.0.lcssa1855, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.23.7, %bb.b ] ; 3 uses
  %.sroa.43.13 = phi ptr [ %i.ah, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.43.11, %bb.b ] ; 3 uses
  %.pn679 = phi ptr [ %i.af, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.24.7, %bb.b ]
  %.sroa.0569.13 = phi ptr [ %i.ae, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.0569.11, %bb.b ] ; 12 uses
  %.sroa.24.8 = getelementptr inbounds nuw i8, ptr %.pn679, i64 4
  %i.qa = ptrtoint ptr %.sroa.24.8 to i64
  %i.qb = ptrtoint ptr %.sroa.0569.13 to i64      ; 2 uses
  %i.qc = sub i64 %i.qa, %i.qb
  %i.qd = lshr exact i64 %i.qc, 2
  %i.qe = trunc i64 %i.qd to i32                  ; 5 uses
  %i.qf = add nsw i32 %i.qe, -1                   ; 20 uses
  %.not = icmp eq i32 %i.qf, 0
  br i1 %.not, label %bb.fq, label %bb.dj

.loopexit753:                                     ; preds = %bb.g, %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %lpad.loopexit755 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp744

.loopexit.split-lp754:                            ; preds = %bb.c, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit.split-lp756 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp744

bb.dj:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.qg = mul nsw i32 %i.qf, %i.qf
  %i.qh = zext nneg i32 %i.qg to i64              ; 3 uses
  %i.qi = shl nuw nsw i64 %i.qh, 3                ; 3 uses
  %i.qj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qi) #19
          to label %.noexc338 unwind label %bb.dl ; 11 uses

.noexc338:                                        ; preds = %bb.dj
  store double 0.000000e+00, ptr %i.qj, align 8, !tbaa !32
  %i.qk = add nsw i64 %i.qh, -1                   ; 3 uses
  %i.ql = icmp eq i64 %i.qk, 0                    ; 2 uses
  br i1 %i.ql, label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc338
  %i.qm = getelementptr i8, ptr %i.qj, i64 8
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.qk, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.qm, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !32
  br label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit

_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc338
  %i.qn = sext i32 %i.qf to i64                   ; 15 uses
  %i.qo = icmp slt i32 %i.qe, 1
  br i1 %i.qo, label %bb.dk, label %_ZNSt6vectorIPdSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i

bb.dk:                                            ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #18
          to label %.noexc342 unwind label %bb.dm

.noexc342:                                        ; preds = %bb.dk
  unreachable

_ZNSt6vectorIPdSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i: ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit
  %i.qp = shl nuw nsw i64 %i.qn, 3                ; 6 uses
  %i.qq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qp) #19
          to label %.noexc343 unwind label %bb.dm ; 12 uses

.noexc343:                                        ; preds = %_ZNSt6vectorIPdSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i
  store ptr null, ptr %i.qq, align 8, !tbaa !34
  %i.qr = add nsw i64 %i.qn, -1                   ; 3 uses
  %i.qs = icmp eq i64 %i.qr, 0                    ; 2 uses
  br i1 %i.qs, label %.lr.ph1345.preheader, label %_ZSt6fill_nIPPdmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPPdmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc343
  %i.qt = getelementptr i8, ptr %i.qq, i64 8
  %.idx.i.i.i.i.i.i.i340 = shl nuw nsw i64 %i.qr, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.qt, i8 0, i64 %.idx.i.i.i.i.i.i.i340, i1 false), !tbaa !34
  br label %.lr.ph1345.preheader

.lr.ph1345.preheader:                             ; preds = %.noexc343, %_ZSt6fill_nIPPdmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %wide.trip.count = zext nneg i32 %i.qf to i64   ; 7 uses
  %i.qu = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.qv = icmp ult i32 %i.qe, 5
  br i1 %i.qv, label %.lr.ph1345.epil.preheader, label %.lr.ph1345.preheader.new

.lr.ph1345.preheader.new:                         ; preds = %.lr.ph1345.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph1345

.lr.ph1350.preheader.unr-lcssa:                   ; preds = %.lr.ph1345
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph1350.preheader, label %.lr.ph1345.epil.preheader

.lr.ph1345.epil.preheader:                        ; preds = %.lr.ph1350.preheader.unr-lcssa, %.lr.ph1345.preheader
  %indvars.iv1738.epil.init = phi i64 [ 0, %.lr.ph1345.preheader ], [ %indvars.iv.next1739.3, %.lr.ph1350.preheader.unr-lcssa ]
  %lcmp.mod3214.a = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod3214.a)
  br label %.lr.ph1345.epil

.lr.ph1345.epil:                                  ; preds = %.lr.ph1345.epil, %.lr.ph1345.epil.preheader
  %indvars.iv1738.epil = phi i64 [ %indvars.iv1738.epil.init, %.lr.ph1345.epil.preheader ], [ %indvars.iv.next1739.epil, %.lr.ph1345.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph1345.epil.preheader ], [ %epil.iter.next, %.lr.ph1345.epil ]
  %i.qw = mul nuw nsw i64 %indvars.iv1738.epil, %i.qn
  %i.qx = getelementptr inbounds nuw [8 x i8], ptr %i.qj, i64 %i.qw
  %i.qy = getelementptr inbounds nuw [8 x i8], ptr %i.qq, i64 %indvars.iv1738.epil
  store ptr %i.qx, ptr %i.qy, align 8, !tbaa !34
  %indvars.iv.next1739.epil = add nuw nsw i64 %indvars.iv1738.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph1350.preheader, label %.lr.ph1345.epil, !llvm.loop !84

.lr.ph1350.preheader:                             ; preds = %.lr.ph1345.epil, %.lr.ph1350.preheader.unr-lcssa
  %wide.trip.count1752 = zext nneg i32 %i.qf to i64 ; 2 uses
  br label %.lr.ph1350

bb.dl:                                            ; preds = %bb.dj
  %i.qz = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp744

bb.dm:                                            ; preds = %_ZNSt6vectorIPdSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i, %bb.dk
  %i.ra = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit425

.lr.ph1345:                                       ; preds = %.lr.ph1345, %.lr.ph1345.preheader.new
  %indvars.iv1738 = phi i64 [ 0, %.lr.ph1345.preheader.new ], [ %indvars.iv.next1739.3, %.lr.ph1345 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph1345.preheader.new ], [ %niter.next.3, %.lr.ph1345 ]
  %i.rb = mul nuw nsw i64 %indvars.iv1738, %i.qn
  %i.rc = getelementptr inbounds nuw [8 x i8], ptr %i.qj, i64 %i.rb
  %i.rd = getelementptr inbounds nuw [8 x i8], ptr %i.qq, i64 %indvars.iv1738
  store ptr %i.rc, ptr %i.rd, align 8, !tbaa !34
  %indvars.iv.next1739 = or disjoint i64 %indvars.iv1738, 1 ; 2 uses
  %i.re = mul nuw nsw i64 %indvars.iv.next1739, %i.qn
  %i.rf = getelementptr inbounds nuw [8 x i8], ptr %i.qj, i64 %i.re
  %i.rg = getelementptr inbounds nuw [8 x i8], ptr %i.qq, i64 %indvars.iv.next1739
  store ptr %i.rf, ptr %i.rg, align 8, !tbaa !34
  %indvars.iv.next1739.1 = or disjoint i64 %indvars.iv1738, 2 ; 2 uses
  %i.rh = mul nuw nsw i64 %indvars.iv.next1739.1, %i.qn
  %i.ri = getelementptr inbounds nuw [8 x i8], ptr %i.qj, i64 %i.rh
  %i.rj = getelementptr inbounds nuw [8 x i8], ptr %i.qq, i64 %indvars.iv.next1739.1
  store ptr %i.ri, ptr %i.rj, align 8, !tbaa !34
  %indvars.iv.next1739.2 = or disjoint i64 %indvars.iv1738, 3 ; 2 uses
  %i.rk = mul nuw nsw i64 %indvars.iv.next1739.2, %i.qn
  %i.rl = getelementptr inbounds nuw [8 x i8], ptr %i.qj, i64 %i.rk
  %i.rm = getelementptr inbounds nuw [8 x i8], ptr %i.qq, i64 %indvars.iv.next1739.2
  store ptr %i.rl, ptr %i.rm, align 8, !tbaa !34
  %indvars.iv.next1739.3 = add nuw nsw i64 %indvars.iv1738, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph1350.preheader.unr-lcssa, label %.lr.ph1345, !llvm.loop !85

.loopexit715:                                     ; preds = %_ZN7msdfgenL22splineToSplineDistanceEPKPNS_11EdgeSegmentEiiiii.exit, %.lr.ph1350
  %exitcond1753.not = icmp eq i64 %indvars.iv.next1750, %wide.trip.count1752
  br i1 %exitcond1753.not, label %._crit_edge1351, label %.lr.ph1350, !llvm.loop !86

._crit_edge1351:                                  ; preds = %.loopexit715
  %i.rn = add nsw i32 %i.qe, -2
  %i.ro = mul nsw i32 %i.qf, %i.rn                ; 3 uses
  %i.rp = sdiv i32 %i.ro, 2
  %i.rq = sext i32 %i.rp to i64                   ; 2 uses
  %i.rr = icmp slt i32 %i.ro, -1
  br i1 %i.rr, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %._crit_edge1351
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #18
          to label %.noexc344 unwind label %bb.ed

.noexc344:                                        ; preds = %bb.dn
  unreachable

bb.do:                                            ; preds = %._crit_edge1351
  %i.rs = icmp slt i32 %i.ro, 2
  br i1 %i.rs, label %.lr.ph1365.preheader, label %_ZNSt12_Vector_baseIPKdSaIS1_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIPKdSaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.do
  %i.rt = shl nuw nsw i64 %i.rq, 3
  %i.ru = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rt) #19
          to label %_ZNSt12_Vector_baseIPKdSaIS1_EE13_M_deallocateEPS1_m.exit.i unwind label %bb.ed ; 2 uses

_ZNSt12_Vector_baseIPKdSaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %_ZNSt12_Vector_baseIPKdSaIS1_EE11_M_allocateEm.exit.i
  %i.rv = getelementptr inbounds nuw [8 x i8], ptr %i.ru, i64 %i.rq
  br label %.lr.ph1365.preheader

.lr.ph1365.preheader:                             ; preds = %_ZNSt12_Vector_baseIPKdSaIS1_EE13_M_deallocateEPS1_m.exit.i, %bb.do
  %.sroa.0455.4 = phi ptr [ %i.ru, %_ZNSt12_Vector_baseIPKdSaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ null, %bb.do ] ; 2 uses
  %.sroa.27.4 = phi ptr [ %i.rv, %_ZNSt12_Vector_baseIPKdSaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ null, %bb.do ]
  %wide.trip.count1764 = zext i32 %i.qf to i64    ; 2 uses
  br label %.lr.ph1365

.lr.ph1350:                                       ; preds = %.lr.ph1350.preheader, %.loopexit715
  %indvars.iv1742.a = phi i64 [ 0, %.lr.ph1350.preheader ], [ %indvars.iv.next1750, %.loopexit715 ] ; 5 uses
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr %i.qq, i64 %indvars.iv1742.a ; 2 uses
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !34 ; 2 uses
  %i.ry = getelementptr inbounds nuw [8 x i8], ptr %i.rx, i64 %indvars.iv1742.a
  store double -1.000000e+00, ptr %i.ry, align 8, !tbaa !32
  %indvars.iv.next1750 = add nuw nsw i64 %indvars.iv1742.a, 1 ; 5 uses
  %i.rz = icmp slt i64 %indvars.iv.next1750, %i.qn
  br i1 %i.rz, label %.lr.ph1348, label %.loopexit715

.lr.ph1348:                                       ; preds = %.lr.ph1350
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0569.13, i64 %indvars.iv1742.a
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0569.13, i64 %indvars.iv.next1750
  br label %bb.dp

bb.dp:                                            ; preds = %.lr.ph1348, %_ZN7msdfgenL22splineToSplineDistanceEPKPNS_11EdgeSegmentEiiiii.exit
  %i.sc = phi ptr [ %i.rx, %.lr.ph1348 ], [ %i.xe, %_ZN7msdfgenL22splineToSplineDistanceEPKPNS_11EdgeSegmentEiiiii.exit ]
  %indvars.iv1744 = phi i64 [ %indvars.iv.next1750, %.lr.ph1348 ], [ %indvars.iv.next1745, %_ZN7msdfgenL22splineToSplineDistanceEPKPNS_11EdgeSegmentEiiiii.exit ] ; 4 uses
  %i.sd = load i32, ptr %i.sa, align 4, !tbaa !19 ; 2 uses
  %i.se = load i32, ptr %i.sb, align 4, !tbaa !19 ; 2 uses
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0569.13, i64 %indvars.iv1744
  %i.sg = load i32, ptr %i.sf, align 4, !tbaa !19 ; 2 uses
  %indvars.iv.next1745 = add nuw nsw i64 %indvars.iv1744, 1 ; 3 uses
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0569.13, i64 %indvars.iv.next1745
  %i.si = load i32, ptr %i.sh, align 4, !tbaa !19 ; 2 uses
  %i.sj = icmp slt i32 %i.sd, %i.se
  %i.sk = icmp slt i32 %i.sg, %i.si
  %or.cond.i = and i1 %i.sj, %i.sk
  br i1 %or.cond.i, label %.preheader.preheader.i, label %_ZN7msdfgenL22splineToSplineDistanceEPKPNS_11EdgeSegmentEiiiii.exit

.preheader.preheader.i:                           ; preds = %bb.dp
  %i.sl = sext i32 %i.sg to i64
  %i.sm = sext i32 %i.si to i64
  %i.sn = sext i32 %i.sd to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %indvars.iv29.i = phi i64 [ %i.sn, %.preheader.preheader.i ], [ %indvars.iv.next30.i, %._crit_edge.i ] ; 2 uses
  %.022.i = phi double [ f0x7FEFFFFFFFFFFFFF, %.preheader.preheader.i ], [ %.1.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.so = fcmp une double %.022.i, 0.000000e+00
  br i1 %i.so, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.sp = getelementptr inbounds [8 x i8], ptr %.sroa.0602.0.lcssa1865, i64 %indvars.iv29.i
  br label %bb.dq

._crit_edge.i:                                    ; preds = %_ZN7msdfgenL18edgeToEdgeDistanceERKNS_11EdgeSegmentES2_i.exit.i, %.preheader.i
  %.1.lcssa.i = phi double [ %.022.i, %.preheader.i ], [ %i.xa, %_ZN7msdfgenL18edgeToEdgeDistanceERKNS_11EdgeSegmentES2_i.exit.i ] ; 2 uses
  %indvars.iv.next30.i = add nsw i64 %indvars.iv29.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next30.i to i32
  %exitcond.not.i = icmp eq i32 %i.se, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %_ZN7msdfgenL22splineToSplineDistanceEPKPNS_11EdgeSegmentEiiiii.exit.loopexit, label %.preheader.i, !llvm.loop !87

bb.dq:                                            ; preds = %_ZN7msdfgenL18edgeToEdgeDistanceERKNS_11EdgeSegmentES2_i.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.sl, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN7msdfgenL18edgeToEdgeDistanceERKNS_11EdgeSegmentES2_i.exit.i ] ; 2 uses
  %.120.i = phi double [ %.022.i, %.lr.ph.i ], [ %i.xa, %_ZN7msdfgenL18edgeToEdgeDistanceERKNS_11EdgeSegmentES2_i.exit.i ] ; 2 uses
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !27 ; 14 uses
  %i.sr = getelementptr inbounds [8 x i8], ptr %.sroa.0602.0.lcssa1865, i64 %indvars.iv.i
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !27 ; 14 uses
  %i.st = load ptr, ptr %i.sq, align 8, !tbaa !18
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 40
  %i.sv = load ptr, ptr %i.su, align 8
  %i.sw = invoke { double, double } %i.sv(ptr noundef nonnull align 8 dereferenceable(12) %i.sq, double noundef 0.000000e+00)
          to label %.noexc346 unwind label %.loopexit.split-lp708.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !88 ; 2 uses

.noexc346:                                        ; preds = %bb.dq
  %i.sx = load ptr, ptr %i.ss, align 8, !tbaa !18
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 40
  %i.sz = load ptr, ptr %i.sy, align 8
  %i.ta = invoke { double, double } %i.sz(ptr noundef nonnull align 8 dereferenceable(12) %i.ss, double noundef 0.000000e+00)
          to label %.noexc347 unwind label %.loopexit.split-lp708.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !88 ; 2 uses

.noexc347:                                        ; preds = %.noexc346
  %i.tb = extractvalue { double, double } %i.sw, 1
  %i.tc = extractvalue { double, double } %i.sw, 0
  %i.td = extractvalue { double, double } %i.ta, 0
  %i.te = extractvalue { double, double } %i.ta, 1
  %i.tf = fcmp oeq double %i.tc, %i.td
  %i.tg = fcmp oeq double %i.tb, %i.te
  %i.th = select i1 %i.tf, i1 %i.tg, i1 false
  br i1 %i.th, label %_ZN7msdfgenL18edgeToEdgeDistanceERKNS_11EdgeSegmentES2_i.exit.i, label %bb.dr

bb.dr:                                            ; preds = %.noexc347
  %i.ti = load ptr, ptr %i.sq, align 8, !tbaa !18
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 40
  %i.tk = load ptr, ptr %i.tj, align 8
  %i.tl = invoke { double, double } %i.tk(ptr noundef nonnull align 8 dereferenceable(12) %i.sq, double noundef 0.000000e+00)
          to label %.noexc348 unwind label %.loopexit.split-lp708.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !88 ; 2 uses

.noexc348:                                        ; preds = %bb.dr
  %i.tm = load ptr, ptr %i.ss, align 8, !tbaa !18
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 40
  %i.to = load ptr, ptr %i.tn, align 8
  %i.tp = invoke { double, double } %i.to(ptr noundef nonnull align 8 dereferenceable(12) %i.ss, double noundef 1.000000e+00)
          to label %.noexc349 unwind label %.loopexit.split-lp708.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !88 ; 2 uses

.noexc349:                                        ; preds = %.noexc348
  %i.tq = extractvalue { double, double } %i.tl, 1
  %i.tr = extractvalue { double, double } %i.tl, 0
  %i.ts = extractvalue { double, double } %i.tp, 0
  %i.tt = extractvalue { double, double } %i.tp, 1
  %i.tu = fcmp oeq double %i.tr, %i.ts
  %i.tv = fcmp oeq double %i.tq, %i.tt
  %i.tw = select i1 %i.tu, i1 %i.tv, i1 false
  br i1 %i.tw, label %_ZN7msdfgenL18edgeToEdgeDistanceERKNS_11EdgeSegmentES2_i.exit.i, label %bb.ds

bb.ds:                                            ; preds = %.noexc349
  %i.tx = load ptr, ptr %i.sq, align 8, !tbaa !18
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 40
  %i.tz = load ptr, ptr %i.ty, align 8
  %i.ua = invoke { double, double } %i.tz(ptr noundef nonnull align 8 dereferenceable(12) %i.sq, double noundef 1.000000e+00)
          to label %.noexc350 unwind label %.loopexit.split-lp708.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !88 ; 2 uses

.noexc350:                                        ; preds = %bb.ds
  %i.ub = load ptr, ptr %i.ss, align 8, !tbaa !18
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 40
  %i.ud = load ptr, ptr %i.uc, align 8
  %i.ue = invoke { double, double } %i.ud(ptr noundef nonnull align 8 dereferenceable(12) %i.ss, double noundef 0.000000e+00)
          to label %.noexc351 unwind label %.loopexit.split-lp708.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !88 ; 2 uses

.noexc351:                                        ; preds = %.noexc350
  %i.uf = extractvalue { double, double } %i.ua, 1
  %i.ug = extractvalue { double, double } %i.ua, 0
  %i.uh = extractvalue { double, double } %i.ue, 0
  %i.ui = extractvalue { double, double } %i.ue, 1
  %i.uj = fcmp oeq double %i.ug, %i.uh
  %i.uk = fcmp oeq double %i.uf, %i.ui
  %i.ul = select i1 %i.uj, i1 %i.uk, i1 false
  br i1 %i.ul, label %_ZN7msdfgenL18edgeToEdgeDistanceERKNS_11EdgeSegmentES2_i.exit.i, label %bb.dt

bb.dt:                                            ; preds = %.noexc351
  %i.um = load ptr, ptr %i.sq, align 8, !tbaa !18
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 40
  %i.uo = load ptr, ptr %i.un, align 8
  %i.up = invoke { double, double } %i.uo(ptr noundef nonnull align 8 dereferenceable(12) %i.sq, double noundef 1.000000e+00)
          to label %.noexc352 unwind label %.loopexit.split-lp708.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !88 ; 2 uses

.noexc352:                                        ; preds = %bb.dt
  %i.uq = load ptr, ptr %i.ss, align 8, !tbaa !18
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 40
  %i.us = load ptr, ptr %i.ur, align 8
  %i.ut = invoke { double, double } %i.us(ptr noundef nonnull align 8 dereferenceable(12) %i.ss, double noundef 1.000000e+00)
          to label %.noexc353 unwind label %.loopexit.split-lp708.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !88 ; 2 uses

.noexc353:                                        ; preds = %.noexc352
  %i.uu = extractvalue { double, double } %i.up, 1
  %i.uv = extractvalue { double, double } %i.up, 0
  %i.uw = extractvalue { double, double } %i.ut, 0
  %i.ux = extractvalue { double, double } %i.ut, 1
  %i.uy = fcmp oeq double %i.uv, %i.uw
  %i.uz = fcmp oeq double %i.uu, %i.ux
  %i.va = select i1 %i.uy, i1 %i.uz, i1 false
  br i1 %i.va, label %_ZN7msdfgenL18edgeToEdgeDistanceERKNS_11EdgeSegmentES2_i.exit.i, label %bb.du

bb.du:                                            ; preds = %.noexc353
  %i.vb = load ptr, ptr %i.ss, align 8, !tbaa !18
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 40
  %i.vd = load ptr, ptr %i.vc, align 8
  %i.ve = invoke { double, double } %i.vd(ptr noundef nonnull align 8 dereferenceable(12) %i.ss, double noundef 0.000000e+00)
          to label %.noexc354 unwind label %.loopexit.split-lp708.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !88 ; 2 uses

.noexc354:                                        ; preds = %bb.du
  %i.vf = load ptr, ptr %i.sq, align 8, !tbaa !18
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 40
  %i.vh = load ptr, ptr %i.vg, align 8
  %i.vi = invoke { double, double } %i.vh(ptr noundef nonnull align 8 dereferenceable(12) %i.sq, double noundef 0.000000e+00)
          to label %.noexc355 unwind label %.loopexit.split-lp708.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !88 ; 2 uses

.noexc355:                                        ; preds = %.noexc354
  %i.vj = extractvalue { double, double } %i.ve, 1
  %i.vk = extractvalue { double, double } %i.ve, 0
  %i.vl = extractvalue { double, double } %i.vi, 0
  %i.vm = extractvalue { double, double } %i.vi, 1
  %i.vn = fsub double %i.vk, %i.vl                ; 2 uses
  %i.vo = fsub double %i.vj, %i.vm                ; 2 uses
  %i.vp = fmul double %i.vo, %i.vo
  %i.vq = call double @llvm.fmuladd.f64(double %i.vn, double %i.vn, double %i.vp)
  %sqrt.i.i.i = call noundef double @llvm.sqrt.f64(double %i.vq)
  br label %bb.dv

bb.dv:                                            ; preds = %.noexc357, %.noexc355
  %.05560.i.i = phi double [ %sqrt.i.i.i, %.noexc355 ], [ %i.wg, %.noexc357 ] ; 2 uses
  %.05659.i.i = phi i32 [ 0, %.noexc355 ], [ %i.wh, %.noexc357 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.vr = uitofp nneg i32 %.05659.i.i to double
  %i.vs = fmul nnan double %i.vr, 6.250000e-02    ; 2 uses
  store double %i.vs, ptr %i.a, align 8, !tbaa !32
  %i.vt = load ptr, ptr %i.ss, align 8, !tbaa !18
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 40
  %i.vv = load ptr, ptr %i.vu, align 8
  %i.vw = invoke { double, double } %i.vv(ptr noundef nonnull align 8 dereferenceable(12) %i.ss, double noundef %i.vs)
          to label %.noexc356 unwind label %.loopexit.split-lp708.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !88 ; 2 uses

.noexc356:                                        ; preds = %bb.dv
  %i.vx = extractvalue { double, double } %i.vw, 0
  %i.vy = extractvalue { double, double } %i.vw, 1
  %i.vz = load ptr, ptr %i.sq, align 8, !tbaa !18
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 64
  %i.wb = load ptr, ptr %i.wa, align 8
  %i.wc = invoke { double, double } %i.wb(ptr noundef nonnull align 8 dereferenceable(12) %i.sq, double %i.vx, double %i.vy, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc357 unwind label %.loopexit.split-lp708.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !88

.noexc357:                                        ; preds = %.noexc356
  %i.wd = extractvalue { double, double } %i.wc, 0
  %i.we = call double @llvm.fabs.f64(double %i.wd) ; 2 uses
  %i.wf = fcmp olt double %i.we, %.05560.i.i
  %i.wg = select i1 %i.wf, double %i.we, double %.05560.i.i ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.wh = add nuw nsw i32 %.05659.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.wh, 17
  br i1 %exitcond.not.i.i, label %.preheader.i.i, label %bb.dv, !llvm.loop !89

.preheader.i.i:                                   ; preds = %.noexc357, %.noexc359
  %.162.i.i = phi double [ %i.wx, %.noexc359 ], [ %i.wg, %.noexc357 ] ; 2 uses
  %.05761.i.i = phi i32 [ %i.wy, %.noexc359 ], [ 0, %.noexc357 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.wi = uitofp nneg i32 %.05761.i.i to double
  %i.wj = fmul nnan double %i.wi, 6.250000e-02    ; 2 uses
  store double %i.wj, ptr %i.b, align 8, !tbaa !32
  %i.wk = load ptr, ptr %i.sq, align 8, !tbaa !18
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 40
  %i.wm = load ptr, ptr %i.wl, align 8
  %i.wn = invoke { double, double } %i.wm(ptr noundef nonnull align 8 dereferenceable(12) %i.sq, double noundef %i.wj)
          to label %.noexc358 unwind label %.loopexit.split-lp708.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !88 ; 2 uses

.noexc358:                                        ; preds = %.preheader.i.i
  %i.wo = extractvalue { double, double } %i.wn, 0
  %i.wp = extractvalue { double, double } %i.wn, 1
  %i.wq = load ptr, ptr %i.ss, align 8, !tbaa !18
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 64
  %i.ws = load ptr, ptr %i.wr, align 8
  %i.wt = invoke { double, double } %i.ws(ptr noundef nonnull align 8 dereferenceable(12) %i.ss, double %i.wo, double %i.wp, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.noexc359 unwind label %.loopexit.split-lp708.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !88

.noexc359:                                        ; preds = %.noexc358
  %i.wu = extractvalue { double, double } %i.wt, 0
  %i.wv = call double @llvm.fabs.f64(double %i.wu) ; 2 uses
  %i.ww = fcmp olt double %i.wv, %.162.i.i
  %i.wx = select i1 %i.ww, double %i.wv, double %.162.i.i ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %i.wy = add nuw nsw i32 %.05761.i.i, 1          ; 2 uses
  %exitcond64.not.i.i = icmp eq i32 %i.wy, 17
  br i1 %exitcond64.not.i.i, label %_ZN7msdfgenL18edgeToEdgeDistanceERKNS_11EdgeSegmentES2_i.exit.i, label %.preheader.i.i, !llvm.loop !90

_ZN7msdfgenL18edgeToEdgeDistanceERKNS_11EdgeSegmentES2_i.exit.i: ; preds = %.noexc359, %.noexc353, %.noexc351, %.noexc349, %.noexc347
  %.0.i.i = phi double [ 0.000000e+00, %.noexc347 ], [ 0.000000e+00, %.noexc353 ], [ 0.000000e+00, %.noexc351 ], [ 0.000000e+00, %.noexc349 ], [ %i.wx, %.noexc359 ] ; 2 uses
  %i.wz = fcmp olt double %.0.i.i, %.120.i
  %i.xa = select i1 %i.wz, double %.0.i.i, double %.120.i ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.xb = icmp slt i64 %indvars.iv.next.i, %i.sm
  %i.xc = fcmp une double %i.xa, 0.000000e+00
  %i.xd = select i1 %i.xb, i1 %i.xc, i1 false
  br i1 %i.xd, label %bb.dq, label %._crit_edge.i, !llvm.loop !91

_ZN7msdfgenL22splineToSplineDistanceEPKPNS_11EdgeSegmentEiiiii.exit.loopexit: ; preds = %._crit_edge.i
  %.pre = load ptr, ptr %i.rw, align 8, !tbaa !34
  br label %_ZN7msdfgenL22splineToSplineDistanceEPKPNS_11EdgeSegmentEiiiii.exit

_ZN7msdfgenL22splineToSplineDistanceEPKPNS_11EdgeSegmentEiiiii.exit: ; preds = %_ZN7msdfgenL22splineToSplineDistanceEPKPNS_11EdgeSegmentEiiiii.exit.loopexit, %bb.dp
  %i.xe = phi ptr [ %i.sc, %bb.dp ], [ %.pre, %_ZN7msdfgenL22splineToSplineDistanceEPKPNS_11EdgeSegmentEiiiii.exit.loopexit ] ; 2 uses
  %.0.lcssa.i = phi double [ f0x7FEFFFFFFFFFFFFF, %bb.dp ], [ %.1.lcssa.i, %_ZN7msdfgenL22splineToSplineDistanceEPKPNS_11EdgeSegmentEiiiii.exit.loopexit ] ; 2 uses
  %i.xf = getelementptr inbounds nuw [8 x i8], ptr %i.xe, i64 %indvars.iv1744
  store double %.0.lcssa.i, ptr %i.xf, align 8, !tbaa !32
  %i.xg = getelementptr inbounds nuw [8 x i8], ptr %i.qq, i64 %indvars.iv1744
  %i.xh = load ptr, ptr %i.xg, align 8, !tbaa !34
  %i.xi = getelementptr inbounds nuw [8 x i8], ptr %i.xh, i64 %indvars.iv1742.a
  store double %.0.lcssa.i, ptr %i.xi, align 8, !tbaa !32
  %exitcond1748.not = icmp eq i64 %indvars.iv.next1745, %wide.trip.count1752
  br i1 %exitcond1748.not, label %.loopexit715, label %bb.dp, !llvm.loop !92

.loopexit.split-lp708.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc358, %.preheader.i.i, %.noexc356, %bb.dv, %.noexc354, %bb.du, %.noexc352, %bb.dt, %.noexc350, %bb.ds, %.noexc348, %bb.dr, %.noexc346, %bb.dq
  %lpad.loopexit.split-lp2754 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPdSaIS0_EED2Ev.exit423

.loopexit:                                        ; preds = %_ZNSt6vectorIPKdSaIS1_EE9push_backEOS1_.exit, %.lr.ph1365
  %.sroa.0455.1.lcssa = phi ptr [ %.sroa.0455.01361, %.lr.ph1365 ], [ %.sroa.0455.5, %_ZNSt6vectorIPKdSaIS1_EE9push_backEOS1_.exit ] ; 11 uses
  %.sroa.18.1.lcssa = phi ptr [ %.sroa.18.01362, %.lr.ph1365 ], [ %.sroa.18.3, %_ZNSt6vectorIPKdSaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  %.sroa.27.1.lcssa = phi ptr [ %.sroa.27.01363, %.lr.ph1365 ], [ %.sroa.27.5, %_ZNSt6vectorIPKdSaIS1_EE9push_backEOS1_.exit ] ; 5 uses
  %exitcond1765.not = icmp eq i64 %indvars.iv.next1762, %wide.trip.count1764
  br i1 %exitcond1765.not, label %._crit_edge1366, label %.lr.ph1365, !llvm.loop !93

._crit_edge1366:                                  ; preds = %.loopexit
  %i.xj = ptrtoint ptr %.sroa.18.1.lcssa to i64
  %i.xk = ptrtoint ptr %.sroa.0455.1.lcssa to i64 ; 2 uses
  %i.xl = sub i64 %i.xj, %i.xk
  %i.xm = ashr exact i64 %i.xl, 3                 ; 3 uses
  %i.xn = trunc i64 %i.xm to i32                  ; 4 uses
  %i.xo = icmp eq ptr %.sroa.0455.1.lcssa, %.sroa.18.1.lcssa
  br i1 %i.xo, label %bb.ee, label %bb.ec

.lr.ph1365:                                       ; preds = %.lr.ph1365.preheader, %.loopexit
  %indvars.iv1754 = phi i64 [ 0, %.lr.ph1365.preheader ], [ %indvars.iv.next1762, %.loopexit ] ; 2 uses
  %.sroa.27.01363 = phi ptr [ %.sroa.27.4, %.lr.ph1365.preheader ], [ %.sroa.27.1.lcssa, %.loopexit ] ; 2 uses
  %.sroa.18.01362 = phi ptr [ %.sroa.0455.4, %.lr.ph1365.preheader ], [ %.sroa.18.1.lcssa, %.loopexit ] ; 2 uses
  %.sroa.0455.01361 = phi ptr [ %.sroa.0455.4, %.lr.ph1365.preheader ], [ %.sroa.0455.1.lcssa, %.loopexit ] ; 2 uses
  %indvars.iv.next1762 = add nuw nsw i64 %indvars.iv1754, 1 ; 4 uses
  %i.xp = icmp slt i64 %indvars.iv.next1762, %i.qn
  br i1 %i.xp, label %.lr.ph1357, label %.loopexit

.lr.ph1357:                                       ; preds = %.lr.ph1365
  %i.xq = getelementptr inbounds nuw [8 x i8], ptr %i.qq, i64 %indvars.iv1754
  br label %bb.dw

bb.dw:                                            ; preds = %.lr.ph1357, %_ZNSt6vectorIPKdSaIS1_EE9push_backEOS1_.exit
  %indvars.iv1756 = phi i64 [ %indvars.iv.next1762, %.lr.ph1357 ], [ %indvars.iv.next1757, %_ZNSt6vectorIPKdSaIS1_EE9push_backEOS1_.exit ] ; 2 uses
  %.sroa.27.11354 = phi ptr [ %.sroa.27.01363, %.lr.ph1357 ], [ %.sroa.27.5, %_ZNSt6vectorIPKdSaIS1_EE9push_backEOS1_.exit ] ; 4 uses
  %.sroa.18.11353 = phi ptr [ %.sroa.18.01362, %.lr.ph1357 ], [ %.sroa.18.3, %_ZNSt6vectorIPKdSaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  %.sroa.0455.11352 = phi ptr [ %.sroa.0455.01361, %.lr.ph1357 ], [ %.sroa.0455.5, %_ZNSt6vectorIPKdSaIS1_EE9push_backEOS1_.exit ] ; 6 uses
  %i.xr = load ptr, ptr %i.xq, align 8, !tbaa !34
  %i.xs = getelementptr inbounds nuw [8 x i8], ptr %i.xr, i64 %indvars.iv1756 ; 2 uses
  %.not.i.i360 = icmp eq ptr %.sroa.18.11353, %.sroa.27.11354
  br i1 %.not.i.i360, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  store ptr %i.xs, ptr %.sroa.18.11353, align 8, !tbaa !34
  br label %_ZNSt6vectorIPKdSaIS1_EE9push_backEOS1_.exit

bb.dy:                                            ; preds = %bb.dw
  %i.xt = ptrtoint ptr %.sroa.27.11354 to i64
  %i.xu = ptrtoint ptr %.sroa.0455.11352 to i64
  %i.xv = sub i64 %i.xt, %i.xu                    ; 6 uses
  %i.xw = icmp eq i64 %i.xv, 9223372036854775800
  br i1 %i.xw, label %bb.dz, label %_ZNKSt6vectorIPKdSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.dz:                                            ; preds = %bb.dy
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
          to label %.noexc364 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc364:                                        ; preds = %bb.dz
  unreachable

_ZNKSt6vectorIPKdSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.dy
  %i.xx = ashr exact i64 %i.xv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i361 = call i64 @llvm.umax.i64(i64 %i.xx, i64 1)
  %i.xy = add nsw i64 %.sroa.speculated.i.i.i.i361, %i.xx ; 2 uses
  %i.xz = icmp ult i64 %i.xy, %i.xx
  %i.ya = call i64 @llvm.umin.i64(i64 %i.xy, i64 1152921504606846975)
  %i.yb = select i1 %i.xz, i64 1152921504606846975, i64 %i.ya ; 3 uses
  %.not.i.i.i.i362 = icmp ne i64 %i.yb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i362)
  %i.yc = shl nuw nsw i64 %i.yb, 3
  %i.yd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yc) #19
          to label %.noexc365 unwind label %.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc365:                                        ; preds = %_ZNKSt6vectorIPKdSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ye = getelementptr inbounds i8, ptr %i.yd, i64 %i.xv ; 2 uses
  store ptr %i.xs, ptr %i.ye, align 8, !tbaa !34
  %i.yf = icmp sgt i64 %i.xv, 0
  br i1 %i.yf, label %bb.ea, label %_ZNSt6vectorIPKdSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.ea:                                            ; preds = %.noexc365
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.yd, ptr align 8 %.sroa.0455.11352, i64 %i.xv, i1 false)
  br label %_ZNSt6vectorIPKdSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIPKdSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.ea, %.noexc365
  %.not.i17.i.i.i363 = icmp eq ptr %.sroa.0455.11352, null
  br i1 %.not.i17.i.i.i363, label %_ZNSt6vectorIPKdSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.eb

bb.eb:                                            ; preds = %_ZNSt6vectorIPKdSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0455.11352, i64 noundef %i.xv) #17
  br label %_ZNSt6vectorIPKdSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIPKdSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.eb, %_ZNSt6vectorIPKdSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %i.yg = getelementptr inbounds nuw [8 x i8], ptr %i.yd, i64 %i.yb
  br label %_ZNSt6vectorIPKdSaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIPKdSaIS1_EE9push_backEOS1_.exit:     ; preds = %_ZNSt6vectorIPKdSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.dx
  %.sroa.0455.5 = phi ptr [ %i.yd, %_ZNSt6vectorIPKdSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.0455.11352, %bb.dx ] ; 2 uses
  %.pn689 = phi ptr [ %i.ye, %_ZNSt6vectorIPKdSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.18.11353, %bb.dx ]
  %.sroa.27.5 = phi ptr [ %i.yg, %_ZNSt6vectorIPKdSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.27.11354, %bb.dx ] ; 2 uses
  %.sroa.18.3 = getelementptr inbounds nuw i8, ptr %.pn689, i64 8 ; 2 uses
  %indvars.iv.next1757 = add nuw nsw i64 %indvars.iv1756, 1 ; 2 uses
  %exitcond1760.not = icmp eq i64 %indvars.iv.next1757, %wide.trip.count1764
  br i1 %exitcond1760.not, label %.loopexit, label %bb.dw, !llvm.loop !94

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZNKSt6vectorIPKdSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.dz
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.fu

bb.ec:                                            ; preds = %._crit_edge1366
  invoke void @qsort(ptr noundef nonnull %.sroa.0455.1.lcssa, i64 noundef %i.xm, i64 noundef 8, ptr noundef nonnull @_ZN7msdfgenL12cmpDoublePtrEPKvS1_)
          to label %bb.ee unwind label %bb.ed

bb.ed:                                            ; preds = %_ZNSt12_Vector_baseIPKdSaIS1_EE11_M_allocateEm.exit.i, %bb.dn, %bb.ec
  %.sroa.0455.2 = phi ptr [ null, %bb.dn ], [ %.sroa.0455.1.lcssa, %bb.ec ], [ null, %_ZNSt12_Vector_baseIPKdSaIS1_EE11_M_allocateEm.exit.i ]
  %.sroa.27.2 = phi ptr [ null, %bb.dn ], [ %.sroa.27.1.lcssa, %bb.ec ], [ null, %_ZNSt12_Vector_baseIPKdSaIS1_EE11_M_allocateEm.exit.i ]
  %i.yh = landingpad { ptr, i32 }
          cleanup
  br label %bb.fu

bb.ee:                                            ; preds = %._crit_edge1366, %bb.ec
  %i.yi = shl nuw nsw i64 %i.qh, 2                ; 3 uses
  %i.yj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yi) #19
          to label %.noexc369 unwind label %bb.ef ; 9 uses

.noexc369:                                        ; preds = %bb.ee
  store i32 0, ptr %i.yj, align 4, !tbaa !19
  br i1 %i.ql, label %_ZNSt6vectorIPiSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc369
  %i.yk = getelementptr i8, ptr %i.yj, i64 4
  %.idx.i.i.i.i.i.i.i367 = shl nuw nsw i64 %i.qk, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.yk, i8 0, i64 %.idx.i.i.i.i.i.i.i367, i1 false), !tbaa !19
  br label %_ZNSt6vectorIPiSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i

_ZNSt6vectorIPiSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc369
  %i.yl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qp) #19
          to label %.noexc374 unwind label %bb.eg ; 17 uses

.noexc374:                                        ; preds = %_ZNSt6vectorIPiSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i
  store ptr null, ptr %i.yl, align 8, !tbaa !36
  br i1 %i.qs, label %.lr.ph1371.preheader, label %_ZSt6fill_nIPPimS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPPimS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc374
  %i.ym = getelementptr i8, ptr %i.yl, i64 8
  %.idx.i.i.i.i.i.i.i371 = shl nuw nsw i64 %i.qr, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ym, i8 0, i64 %.idx.i.i.i.i.i.i.i371, i1 false), !tbaa !36
  br label %.lr.ph1371.preheader

.lr.ph1371.preheader:                             ; preds = %.noexc374, %_ZSt6fill_nIPPimS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %smax = call i32 @llvm.smax.i32(i32 %i.qf, i32 1)
  %wide.trip.count1769 = zext nneg i32 %smax to i64 ; 2 uses
  %xtraiter3215 = and i64 %wide.trip.count1769, 3 ; 3 uses
  %i.yn = icmp slt i32 %i.qe, 5
  br i1 %i.yn, label %.lr.ph1371.epil.preheader, label %.lr.ph1371.preheader.new

.lr.ph1371.preheader.new:                         ; preds = %.lr.ph1371.preheader
  %unroll_iter3219 = and i64 %wide.trip.count1769, 2147483644
  br label %.lr.ph1371

.preheader702.unr-lcssa:                          ; preds = %.lr.ph1371
  %lcmp.mod3217.not = icmp eq i64 %xtraiter3215, 0
  br i1 %lcmp.mod3217.not, label %.preheader702, label %.lr.ph1371.epil.preheader

.lr.ph1371.epil.preheader:                        ; preds = %.preheader702.unr-lcssa, %.lr.ph1371.preheader
  %indvars.iv1766.epil.init = phi i64 [ 0, %.lr.ph1371.preheader ], [ %indvars.iv.next1767.3, %.preheader702.unr-lcssa ]
  %lcmp.mod3218 = icmp ne i64 %xtraiter3215, 0
  call void @llvm.assume(i1 %lcmp.mod3218)
  br label %.lr.ph1371.epil

.lr.ph1371.epil:                                  ; preds = %.lr.ph1371.epil, %.lr.ph1371.epil.preheader
  %indvars.iv1766.epil = phi i64 [ %indvars.iv1766.epil.init, %.lr.ph1371.epil.preheader ], [ %indvars.iv.next1767.epil, %.lr.ph1371.epil ] ; 3 uses
  %epil.iter3216 = phi i64 [ 0, %.lr.ph1371.epil.preheader ], [ %epil.iter3216.next, %.lr.ph1371.epil ]
  %i.yo = mul nuw nsw i64 %indvars.iv1766.epil, %i.qn
  %i.yp = getelementptr inbounds nuw [4 x i8], ptr %i.yj, i64 %i.yo
  %i.yq = getelementptr inbounds nuw [8 x i8], ptr %i.yl, i64 %indvars.iv1766.epil
  store ptr %i.yp, ptr %i.yq, align 8, !tbaa !36
  %indvars.iv.next1767.epil = add nuw nsw i64 %indvars.iv1766.epil, 1
  %epil.iter3216.next = add i64 %epil.iter3216, 1 ; 2 uses
  %epil.iter3216.cmp.not = icmp eq i64 %epil.iter3216.next, %xtraiter3215
  br i1 %epil.iter3216.cmp.not, label %.preheader702, label %.lr.ph1371.epil, !llvm.loop !95

.preheader702:                                    ; preds = %.lr.ph1371.epil, %.preheader702.unr-lcssa
  %i.yr = icmp sgt i32 %i.xn, 0
  br i1 %i.yr, label %.lr.ph1373, label %.critedge

.lr.ph1373:                                       ; preds = %.preheader702
  %i.ys = ptrtoint ptr %i.qj to i64
  %wide.trip.count1774 = and i64 %i.xm, 2147483647
  br label %bb.eh

bb.ef:                                            ; preds = %bb.ee
  %i.yt = landingpad { ptr, i32 }
          cleanup
  br label %bb.fu

bb.eg:                                            ; preds = %_ZNSt6vectorIPiSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i
  %i.yu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit419

.lr.ph1371:                                       ; preds = %.lr.ph1371, %.lr.ph1371.preheader.new
  %indvars.iv1766 = phi i64 [ 0, %.lr.ph1371.preheader.new ], [ %indvars.iv.next1767.3, %.lr.ph1371 ] ; 6 uses
  %niter3220 = phi i64 [ 0, %.lr.ph1371.preheader.new ], [ %niter3220.next.3, %.lr.ph1371 ]
  %i.yv = mul nuw nsw i64 %indvars.iv1766, %i.qn
  %i.yw = getelementptr inbounds nuw [4 x i8], ptr %i.yj, i64 %i.yv
  %i.yx = getelementptr inbounds nuw [8 x i8], ptr %i.yl, i64 %indvars.iv1766
  store ptr %i.yw, ptr %i.yx, align 8, !tbaa !36
  %indvars.iv.next1767 = or disjoint i64 %indvars.iv1766, 1 ; 2 uses
  %i.yy = mul nuw nsw i64 %indvars.iv.next1767, %i.qn
  %i.yz = getelementptr inbounds nuw [4 x i8], ptr %i.yj, i64 %i.yy
  %i.za = getelementptr inbounds nuw [8 x i8], ptr %i.yl, i64 %indvars.iv.next1767
  store ptr %i.yz, ptr %i.za, align 8, !tbaa !36
  %indvars.iv.next1767.1 = or disjoint i64 %indvars.iv1766, 2 ; 2 uses
  %i.zb = mul nuw nsw i64 %indvars.iv.next1767.1, %i.qn
  %i.zc = getelementptr inbounds nuw [4 x i8], ptr %i.yj, i64 %i.zb
  %i.zd = getelementptr inbounds nuw [8 x i8], ptr %i.yl, i64 %indvars.iv.next1767.1
  store ptr %i.zc, ptr %i.zd, align 8, !tbaa !36
  %indvars.iv.next1767.2 = or disjoint i64 %indvars.iv1766, 3 ; 2 uses
  %i.ze = mul nuw nsw i64 %indvars.iv.next1767.2, %i.qn
  %i.zf = getelementptr inbounds nuw [4 x i8], ptr %i.yj, i64 %i.ze
  %i.zg = getelementptr inbounds nuw [8 x i8], ptr %i.yl, i64 %indvars.iv.next1767.2
  store ptr %i.zf, ptr %i.zg, align 8, !tbaa !36
  %indvars.iv.next1767.3 = add nuw nsw i64 %indvars.iv1766, 4 ; 2 uses
  %niter3220.next.3 = add i64 %niter3220, 4       ; 2 uses
  %niter3220.ncmp.3 = icmp eq i64 %niter3220.next.3, %unroll_iter3219
  br i1 %niter3220.ncmp.3, label %.preheader702.unr-lcssa, label %.lr.ph1371, !llvm.loop !96

bb.eh:                                            ; preds = %.lr.ph1373, %bb.ei
  %indvars.iv1771 = phi i64 [ 0, %.lr.ph1373 ], [ %indvars.iv.next1772, %bb.ei ] ; 3 uses
  %i.zh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0455.1.lcssa, i64 %indvars.iv1771
  %i.zi = load ptr, ptr %i.zh, align 8, !tbaa !34 ; 2 uses
  %i.zj = load double, ptr %i.zi, align 8, !tbaa !32
  %i.zk = fcmp oeq double %i.zj, 0.000000e+00
end_hunk_0
