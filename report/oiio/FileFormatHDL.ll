inline.NumInlined: 1707
inline.NumDeleted: 606
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
  br i1 %.not942, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit552
  %.sroa.15.0.lcssa.a = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit552 ], [ %.sroa.15.2.a, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 4 uses
  %.sroa.0829.0.lcssa = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit552 ], [ %.sroa.0829.2, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 10 uses
  %i.ts = load i64, ptr %i.ag, align 8, !tbaa !16 ; 2 uses
  switch i64 %i.ts, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit574.thread869 [
    i64 2, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
  %i.ug = phi ptr [ %i.vu, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %i.td, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit552 ]
  %i.uh = phi i64 [ %i.vw, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit552 ]
  %.0123937 = phi i32 [ %i.vv, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit552 ]
  %.sroa.0829.0936 = phi ptr [ %.sroa.0829.2, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit552 ] ; 7 uses
  %.sroa.12.0935 = phi ptr [ %.sroa.12.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit552 ] ; 6 uses
  %.sroa.15.0934 = phi ptr [ %.sroa.15.2.a, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit552 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #27
  store i32 -1, ptr %i.l, align 4, !tbaa !3
  %i.ui = getelementptr inbounds nuw [32 x i8], ptr %i.uf, i64 %i.uh
end_hunk_1
begin_hunk_2_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
          to label %bb.kn unwind label %bb.eb

.loopexit:                                        ; preds = %.lr.ph, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %.sroa.15.0934.lcssa = phi ptr [ %.sroa.15.0934, %.lr.ph ], [ %.sroa.12.0935, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body576
end_hunk_2
begin_hunk_3_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
  br label %.body576

bb.ef:                                            ; preds = %bb.du
  %.not.i = icmp eq ptr %.sroa.12.0935, %.sroa.15.0934
  br i1 %.not.i, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
end_hunk_3
begin_hunk_4_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.eh:                                            ; preds = %bb.ef
  %i.ve = ptrtoint ptr %.sroa.12.0935 to i64
  %i.vf = ptrtoint ptr %.sroa.0829.0936 to i64
  %i.vg = sub i64 %i.ve, %i.vf                    ; 6 uses
  %i.vh = icmp eq i64 %i.vg, 9223372036854775804
  br i1 %i.vh, label %bb.ei, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
end_hunk_4
begin_hunk_5_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
  br i1 %i.vr, label %bb.ej, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.ej:                                            ; preds = %.noexc572
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.vo, ptr align 4 %.sroa.0829.0936, i64 %i.vg, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.ej, %.noexc572
  %.not.i17.i.i = icmp eq ptr %.sroa.0829.0936, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.ek

bb.ek:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0829.0936, i64 noundef %i.vg) #29
  %.pre968.pre = load ptr, ptr %i.gx, align 8, !tbaa !73
  %.pre969.pre = load ptr, ptr %22, align 16, !tbaa !71
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
end_hunk_5
begin_hunk_6_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
  %.pre968974 = phi ptr [ %.pre968, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.pre968973, %bb.eg ]
  %i.vt = phi ptr [ %.pre969, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.uf, %bb.eg ] ; 2 uses
  %i.vu = phi ptr [ %.pre968, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.ug, %bb.eg ] ; 2 uses
  %.sroa.15.2.a = phi ptr [ %i.vs, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.15.0934, %bb.eg ] ; 2 uses
  %.pn915 = phi ptr [ %i.vp, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.12.0935, %bb.eg ]
  %.sroa.0829.2 = phi ptr [ %i.vo, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.0829.0936, %bb.eg ] ; 2 uses
  %.sroa.12.1 = getelementptr inbounds nuw i8, ptr %.pn915, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #27
  %i.vv = add i32 %.0123937, 1                    ; 2 uses
end_hunk_6
begin_hunk_7_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
  br i1 %i.wm, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit584

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit574, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.wn = load i32, ptr %.sroa.0829.0.lcssa, align 4, !tbaa !3
  %i.wo = invoke noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #28
          to label %.noexc575 unwind label %bb.eu ; 6 uses

end_hunk_7
begin_hunk_8_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
  store i32 1, ptr %i.wq, align 4, !tbaa !44, !noalias !93
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.wo, align 8, !tbaa !11, !noalias !93
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wo, i64 16 ; 2 uses
  %i.ws = load i32, ptr %.sroa.0829.0.lcssa, align 4, !tbaa !3, !noalias !93
  %i.wt = sext i32 %i.ws to i64
  invoke void @_ZN16OpenColorIO_v2_511Lut3DOpDataC1Em(ptr noundef nonnull align 8 dereferenceable(232) %i.wr, i64 noundef %i.wt)
          to label %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut3DOpDataEJRiEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, !noalias !93
end_hunk_8
begin_hunk_9_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
  br i1 %i.xs, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit584.thread871.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit584.thread871

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit584.thread871.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit582
  %i.xt = load i32, ptr %.sroa.0829.0.lcssa, align 4, !tbaa !3
  br label %bb.ew

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit584: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit574.thread869, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit574
end_hunk_9
begin_hunk_10_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
  br i1 %i.ye, label %.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit584.thread871

.thread:                                          ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit584
  %i.yf = getelementptr inbounds nuw i8, ptr %.sroa.0829.0.lcssa, i64 4
  %i.yg = load i32, ptr %i.yf, align 4, !tbaa !3
  br label %bb.ew

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit584.thread871: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit574.thread869, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit582, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit584
  %.012612011206 = phi i32 [ %.012612011216, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit584 ], [ %.0126, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit574.thread869 ], [ %.0126, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit582 ], [ -1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ] ; 2 uses
  %.not.i.i.i585 = icmp eq ptr %.sroa.0829.0.lcssa, null
  br i1 %.not.i.i.i585, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ew

bb.ew:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit584.thread871.thread, %.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit584.thread871
  %.01241207 = phi i32 [ -1, %.thread ], [ -1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit584.thread871 ], [ %i.xt, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit584.thread871.thread ]
  %.012612011204 = phi i32 [ %.012612011216, %.thread ], [ %.012612011206, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit584.thread871 ], [ %.0126, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit584.thread871.thread ]
  %.0125874 = phi i32 [ %i.yg, %.thread ], [ -1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit584.thread871 ], [ -1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit584.thread871.thread ]
  %i.yh = ptrtoint ptr %.sroa.15.0.lcssa.a to i64
  %i.yi = ptrtoint ptr %.sroa.0829.0.lcssa to i64
  %i.yj = sub i64 %i.yh, %i.yi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0829.0.lcssa, i64 noundef %i.yj) #29
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit584.thread871, %bb.ew
end_hunk_10
begin_hunk_11_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
          to label %bb.kn unwind label %bb.hc

.body576:                                         ; preds = %.loopexit, %.loopexit.split-lp, %bb.ee
  %.sroa.15.0934948 = phi ptr [ %.sroa.15.0934, %bb.ee ], [ %.sroa.15.0934.lcssa, %.loopexit ], [ %.sroa.12.0935, %.loopexit.split-lp ]
  %.pn205 = phi { ptr, i32 } [ %.pn201.pn.pn, %bb.ee ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #27
  %.not.i.i.i628 = icmp eq ptr %.sroa.0829.0936, null
  br i1 %.not.i.i.i628, label %_ZNSt6vectorIiSaIiEED2Ev.exit629, label %.body576.thread

.body576.thread:                                  ; preds = %bb.eu, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, %bb.et, %.body576
  %.sroa.15.0930 = phi ptr [ %.sroa.15.0934948, %.body576 ], [ %.sroa.15.0.lcssa.a, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i ], [ %.sroa.15.0.lcssa.a, %bb.eu ], [ %.sroa.15.0.lcssa.a, %bb.et ]
  %.sroa.0829.0924 = phi ptr [ %.sroa.0829.0936, %.body576 ], [ %.sroa.0829.0.lcssa, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i ], [ %.sroa.0829.0.lcssa, %bb.eu ], [ %.sroa.0829.0.lcssa, %bb.et ] ; 2 uses
  %.pn205.pn883 = phi { ptr, i32 } [ %.pn205, %.body576 ], [ %i.wu, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i ], [ %i.xo, %bb.eu ], [ %i.xn, %bb.et ]
  %i.ahc = ptrtoint ptr %.sroa.15.0930 to i64
  %i.ahd = ptrtoint ptr %.sroa.0829.0924 to i64
  %i.ahe = sub i64 %i.ahc, %i.ahd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0829.0924, i64 noundef %i.ahe) #29
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit629

bb.gz:                                            ; preds = %bb.kd, %bb.hs
end_hunk_11
