Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/FileFormatCSP?download=true
inline.NumInlined: 1226
inline.NumDeleted: 450
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
  call void @_ZdlPvm(ptr noundef nonnull %i.uf, i64 noundef %i.uw) #27
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i627

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i627: ; preds = %bb.er, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i625
  store ptr %i.uq, ptr %i.tz, align 8, !tbaa !109
  store ptr %i.ut, ptr %i.ua, align 8, !tbaa !110
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %i.uq, i64 %i.uo ; 2 uses
  store ptr %i.ux, ptr %i.uc, align 8, !tbaa !111
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit630

_ZNSt6vectorIfSaIfEE9push_backEOf.exit630:        ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i627, %bb.en
  %i.uy = phi ptr [ %i.ux, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i627 ], [ %i.ud, %bb.en ] ; 2 uses
  %i.uz = phi ptr [ %i.ut, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i627 ], [ %i.ue, %bb.en ] ; 3 uses
  %.not.i.i631 = icmp eq ptr %i.uz, %i.uy
  br i1 %.not.i.i631, label %bb.et, label %bb.es

bb.es:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit630
  store float 1.000000e+00, ptr %i.uz, align 4, !tbaa !45
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 4
  store ptr %i.va, ptr %i.ua, align 8, !tbaa !110
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit640

bb.et:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit630
  %i.vb = load ptr, ptr %i.tz, align 8, !tbaa !109 ; 4 uses
  %i.vc = ptrtoint ptr %i.uy to i64
  %i.vd = ptrtoint ptr %i.vb to i64               ; 2 uses
  %i.ve = sub i64 %i.vc, %i.vd                    ; 5 uses
  %i.vf = icmp eq i64 %i.ve, 9223372036854775804
  br i1 %i.vf, label %bb.eu, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i632

bb.eu:                                            ; preds = %bb.et
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #28
          to label %.noexc638 unwind label %.loopexit.split-lp972

.noexc638:                                        ; preds = %bb.eu
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i632: ; preds = %bb.et
  %i.vg = ashr exact i64 %i.ve, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i633 = call i64 @llvm.umax.i64(i64 %i.vg, i64 1)
  %i.vh = add nsw i64 %.sroa.speculated.i.i.i.i633, %i.vg ; 2 uses
  %i.vi = icmp ult i64 %i.vh, %i.vg
  %i.vj = call i64 @llvm.umin.i64(i64 %i.vh, i64 2305843009213693951)
  %i.vk = select i1 %i.vi, i64 2305843009213693951, i64 %i.vj ; 3 uses
  %.not.i.i.i.i634 = icmp ne i64 %i.vk, 0
  call void @llvm.assume(i1 %.not.i.i.i.i634)
  %i.vl = shl nuw nsw i64 %i.vk, 2
  %i.vm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vl) #25
          to label %.noexc639 unwind label %.loopexit971 ; 4 uses

.noexc639:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i632
  %i.vn = getelementptr inbounds i8, ptr %i.vm, i64 %i.ve ; 2 uses
  store float 1.000000e+00, ptr %i.vn, align 4, !tbaa !45
  %i.vo = icmp sgt i64 %i.ve, 0
  br i1 %i.vo, label %bb.ev, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i635

bb.ev:                                            ; preds = %.noexc639
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.vm, ptr align 4 %i.vb, i64 %i.ve, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i635

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i635: ; preds = %bb.ev, %.noexc639
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vn, i64 4
  %.not.i17.i.i.i636 = icmp eq ptr %i.vb, null
  br i1 %.not.i17.i.i.i636, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i637, label %bb.ew

bb.ew:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i635
  %i.vq = load ptr, ptr %i.uc, align 8, !tbaa !111
  %i.vr = ptrtoint ptr %i.vq to i64
  %i.vs = sub i64 %i.vr, %i.vd
  call void @_ZdlPvm(ptr noundef nonnull %i.vb, i64 noundef %i.vs) #27
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i637

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i637: ; preds = %bb.ew, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i635
  store ptr %i.vm, ptr %i.tz, align 8, !tbaa !109
  store ptr %i.vp, ptr %i.ua, align 8, !tbaa !110
  %i.vt = getelementptr inbounds nuw [4 x i8], ptr %i.vm, i64 %i.vk
  store ptr %i.vt, ptr %i.uc, align 8, !tbaa !111
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit640

_ZNSt6vectorIfSaIfEE9push_backEOf.exit640:        ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i637, %bb.es
  %i.vu = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv
  store i8 0, ptr %i.vu, align 1, !tbaa !43
  br label %bb.ex

.loopexit:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ey

.loopexit.split-lp:                               ; preds = %bb.ef
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ey

.loopexit961:                                     ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i612
  %lpad.loopexit963 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ey

.loopexit.split-lp962:                            ; preds = %bb.ek
  %lpad.loopexit.split-lp964 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ey

.loopexit966:                                     ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i622
  %lpad.loopexit968 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ey

.loopexit.split-lp967:                            ; preds = %bb.ep
  %lpad.loopexit.split-lp969 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ey

.loopexit971:                                     ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i632
  %lpad.loopexit973 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ey

.loopexit.split-lp972:                            ; preds = %bb.eu
  %lpad.loopexit.split-lp974 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ey

bb.ex:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit640, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit608
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %bb.bg, label %bb.bh, !llvm.loop !85

bb.ey:                                            ; preds = %.loopexit971, %.loopexit.split-lp972, %.loopexit966, %.loopexit.split-lp967, %.loopexit961, %.loopexit.split-lp962, %.loopexit, %.loopexit.split-lp, %bb.eb, %bb.bx, %bb.br
  %.pn334.pn.pn.pn = phi { ptr, i32 } [ %.pn334.pn.pn, %bb.bx ], [ %.pn329.pn.pn.pn, %bb.eb ], [ %lpad.loopexit.split-lp969, %.loopexit.split-lp967 ], [ %lpad.loopexit.split-lp964, %.loopexit.split-lp962 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.iq, %bb.br ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit963, %.loopexit961 ], [ %lpad.loopexit968, %.loopexit966 ], [ %lpad.loopexit973, %.loopexit971 ], [ %lpad.loopexit.split-lp974, %.loopexit.split-lp972 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  br label %.body672

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.vv = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_58nextlineERSiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.ez unwind label %bb.ft     ; 0 uses

bb.ez:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #26
  %i.vw = load ptr, ptr %7, align 8, !tbaa !25    ; 4 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 7 uses
  store ptr %i.vx, ptr %39, align 8, !tbaa !16
  %i.vy = icmp eq ptr %i.vw, null
  br i1 %i.vy, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.40) #28
          to label %.noexc643 unwind label %bb.fu

.noexc643:                                        ; preds = %bb.fa
  unreachable

bb.fb:                                            ; preds = %bb.ez
  %i.vz = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.vw) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 %i.vz, ptr %i.b, align 8, !tbaa !26
  %i.wa = icmp ugt i64 %i.vz, 15
  br i1 %i.wa, label %.noexc.i642, label %._crit_edge.i.i641

.noexc.i642:                                      ; preds = %bb.fb
  %i.wb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %39, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc644 unwind label %bb.fu ; 2 uses

.noexc644:                                        ; preds = %.noexc.i642
  store ptr %i.wb, ptr %39, align 8, !tbaa !25
  %i.wc = load i64, ptr %i.b, align 8, !tbaa !26
  store i64 %i.wc, ptr %i.vx, align 8, !tbaa !20
  br label %._crit_edge.i.i641

._crit_edge.i.i641:                               ; preds = %.noexc644, %bb.fb
  %i.wd = phi ptr [ %i.wb, %.noexc644 ], [ %i.vx, %bb.fb ] ; 2 uses
  switch i64 %i.vz, label %bb.fd [
    i64 1, label %bb.fc
    i64 0, label %bb.fe
  ]

bb.fc:                                            ; preds = %._crit_edge.i.i641
  %i.we = load i8, ptr %i.vw, align 1, !tbaa !20
  store i8 %i.we, ptr %i.wd, align 1, !tbaa !20
  br label %bb.fe

bb.fd:                                            ; preds = %._crit_edge.i.i641
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.wd, ptr nonnull align 1 %i.vw, i64 %i.vz, i1 false)
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc, %._crit_edge.i.i641
  %i.wf = load i64, ptr %i.b, align 8, !tbaa !26  ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %39, i64 8
  store i64 %i.wf, ptr %i.wg, align 8, !tbaa !19
  %i.wh = load ptr, ptr %39, align 8, !tbaa !25
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 %i.wf
  store i8 0, ptr %i.wi, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.wj = load ptr, ptr %39, align 8, !tbaa !25   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.wk = tail call ptr @__errno_location() #29   ; 6 uses
  %i.wl = load i32, ptr %i.wk, align 4, !tbaa !10 ; 2 uses
  store i32 0, ptr %i.wk, align 4, !tbaa !10
  %i.wm = call noundef i64 @__isoc23_strtol(ptr noundef %i.wj, ptr noundef nonnull %i.a, i32 noundef 10) ; 5 uses
  %i.wn = load ptr, ptr %i.a, align 8, !tbaa !112
  %i.wo = icmp eq ptr %i.wn, %i.wj
  br i1 %i.wo, label %bb.ff, label %bb.fj

bb.ff:                                            ; preds = %bb.fe
  invoke void @_ZSt24__throw_invalid_argumentPKc(ptr noundef nonnull @.str.42) #28
          to label %bb.fg unwind label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  unreachable

bb.fh:                                            ; preds = %.critedge.i.i, %bb.ff
  %i.wp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wq = load i32, ptr %i.wk, align 4, !tbaa !10
  %i.wr = icmp eq i32 %i.wq, 0
  br i1 %i.wr, label %bb.fi, label %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i

bb.fi:                                            ; preds = %bb.fh
  store i32 %i.wl, ptr %i.wk, align 4, !tbaa !10
  br label %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i

_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i: ; preds = %bb.fi, %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.ws = load ptr, ptr %39, align 8, !tbaa !25   ; 2 uses
  %i.wt = icmp eq ptr %i.ws, %i.vx
  br i1 %i.wt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit667, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i665

bb.fj:                                            ; preds = %bb.fe
  %i.wu = load i32, ptr %i.wk, align 4, !tbaa !10 ; 2 uses
  %i.wv = icmp eq i32 %i.wu, 34
  %i.ww = add i64 %i.wm, -2147483648
  %i.wx = icmp ult i64 %i.ww, -4294967296
  %or.cond.i.i = or i1 %i.wx, %i.wv
  br i1 %or.cond.i.i, label %.critedge.i.i, label %bb.fl

.critedge.i.i:                                    ; preds = %bb.fj
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.42) #28
          to label %bb.fk unwind label %bb.fh

bb.fk:                                            ; preds = %.critedge.i.i
  unreachable

bb.fl:                                            ; preds = %bb.fj
  %i.wy = icmp eq i32 %i.wu, 0
  br i1 %i.wy, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  store i32 %i.wl, ptr %i.wk, align 4, !tbaa !10
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %bb.fl
  %i.wz = trunc nsw i64 %i.wm to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.xa = load ptr, ptr %39, align 8, !tbaa !25   ; 2 uses
  %i.xb = icmp eq ptr %i.xa, %i.vx
  br i1 %i.xb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit650, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i648

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i648: ; preds = %bb.fn
  %i.xc = load i64, ptr %i.vx, align 8, !tbaa !20
  %i.xd = add i64 %i.xc, 1
  call void @_ZdlPvm(ptr noundef %i.xa, i64 noundef %i.xd) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit650

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit650: ; preds = %bb.fn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i648
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #26
  %i.xe = icmp slt i64 %i.wm, 1
  br i1 %i.xe, label %bb.fo, label %bb.gb

bb.fo:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit650
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #26
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %40)
          to label %bb.fp unwind label %bb.fv

bb.fp:                                            ; preds = %bb.fo
  %i.xf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull @.str.26, i64 noundef 45)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit652 unwind label %bb.fw ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit652: ; preds = %bb.fp
  %i.xg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %40, i32 noundef %i.wz)
          to label %bb.fq unwind label %bb.fw     ; 2 uses

bb.fq:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit652
  %i.xh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.xg, ptr noundef nonnull @.str.27, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit654 unwind label %bb.fw ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit654: ; preds = %bb.fq
  %i.xi = load ptr, ptr %7, align 8, !tbaa !25
  %i.xj = load i64, ptr %i.i, align 8, !tbaa !19
  %i.xk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.xg, ptr noundef %i.xi, i64 noundef %i.xj)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit656 unwind label %bb.fw

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit656: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit654
  %i.xl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.xk, ptr noundef nonnull @.str.28, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit658 unwind label %bb.fw ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit658: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit656
  %i.xm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull @.str.24, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit660 unwind label %bb.fw ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit660: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit658
  %i.xn = load ptr, ptr %3, align 8, !tbaa !25
  %i.xo = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.xp = load i64, ptr %i.xo, align 8, !tbaa !19
  %i.xq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef %i.xn, i64 noundef %i.xp)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit662 unwind label %bb.fw

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit662: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit660
  %i.xr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.xq, ptr noundef nonnull @.str.14, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit664 unwind label %bb.fw ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit664: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit662
  %i.xs = call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #26
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %41, ptr noundef nonnull align 8 dereferenceable(112) %40)
          to label %bb.fr unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit670.thread

bb.fr:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit664
  %i.xt = load ptr, ptr %41, align 8, !tbaa !25
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.xs, ptr noundef %i.xt)
          to label %bb.fs unwind label %bb.fx

bb.fs:                                            ; preds = %bb.fr
  invoke void @__cxa_throw(ptr nonnull %i.xs, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #28
          to label %bb.ok unwind label %bb.fx

bb.ft:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit709.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.xu = landingpad { ptr, i32 }
          cleanup
  br label %.body672

bb.fu:                                            ; preds = %.noexc.i642, %bb.fa
  %i.xv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit667

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i665: ; preds = %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i
  %i.xw = load i64, ptr %i.vx, align 8, !tbaa !20
  %i.xx = add i64 %i.xw, 1
  call void @_ZdlPvm(ptr noundef %i.ws, i64 noundef %i.xx) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit667

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit667: ; preds = %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i665, %bb.fu
  %.pn297 = phi { ptr, i32 } [ %i.xv, %bb.fu ], [ %i.wp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i665 ], [ %i.wp, %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #26
  br label %.body672

bb.fv:                                            ; preds = %bb.fo
  %i.xy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ga

bb.fw:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit662, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit660, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit658, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit656, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit654, %bb.fq, %bb.fp, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit652
  %i.xz = landingpad { ptr, i32 }
          cleanup
  br label %bb.fz

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit670.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit664
  %i.ya = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #26
  br label %bb.fy

bb.fx:                                            ; preds = %bb.fs, %bb.fr
  %.0154 = phi i1 [ false, %bb.fs ], [ true, %bb.fr ] ; 2 uses
  %i.yb = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.yc = load ptr, ptr %41, align 8, !tbaa !25   ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 2 uses
  %i.ye = icmp eq ptr %i.yc, %i.yd
  br i1 %i.ye, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit670, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i668

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i668: ; preds = %bb.fx
  %i.yf = load i64, ptr %i.yd, align 8, !tbaa !20
  %i.yg = add i64 %i.yf, 1
  call void @_ZdlPvm(ptr noundef %i.yc, i64 noundef %i.yg) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #26
  br i1 %.0154, label %bb.fy, label %bb.fz

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit670: ; preds = %bb.fx
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #26
  br i1 %.0154, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i668, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit670.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit670
  %.pn312940 = phi { ptr, i32 } [ %i.ya, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit670.thread ], [ %i.yb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit670 ], [ %i.yb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i668 ]
  call void @__cxa_free_exception(ptr %i.xs) #26
  br label %bb.fz

bb.fz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i668, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit670, %bb.fy, %bb.fw
  %.pn312.pn = phi { ptr, i32 } [ %.pn312940, %bb.fy ], [ %i.yb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit670 ], [ %i.xz, %bb.fw ], [ %i.yb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i668 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %40) #26
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.fv
  %.pn312.pn.pn = phi { ptr, i32 } [ %.pn312.pn, %bb.fz ], [ %i.xy, %bb.fv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #26
  br label %.body672

bb.gb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit650
  %i.yh = invoke noalias noundef nonnull dereferenceable(384) ptr @_Znwm(i64 noundef 384) #25
          to label %.noexc671 unwind label %bb.gk ; 6 uses

.noexc671:                                        ; preds = %bb.gb
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 8
  store i32 1, ptr %i.yi, align 8, !tbaa !47, !noalias !113
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yh, i64 12
  store i32 1, ptr %i.yj, align 4, !tbaa !48, !noalias !113
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.yh, align 8, !tbaa !12, !noalias !113
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yh, i64 16 ; 2 uses
  invoke void @_ZN16OpenColorIO_v2_511Lut1DOpDataC1Em(ptr noundef nonnull align 8 dereferenceable(364) %i.yk, i64 noundef %i.wm)
          to label %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJRiEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, !noalias !113

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i: ; preds = %.noexc671
  %i.yl = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.yh, i64 noundef 384) #27, !noalias !113
  br label %.body672

_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJRiEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_.exit: ; preds = %.noexc671
  store ptr %i.yk, ptr %5, align 8, !tbaa !114
  %i.ym = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.yn = load ptr, ptr %i.ym, align 8, !tbaa !52 ; 8 uses
  store ptr %i.yh, ptr %i.ym, align 8, !tbaa !52
  %.not.i.i.i.i674 = icmp eq ptr %i.yn, null
  br i1 %.not.i.i.i.i674, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.gc

bb.gc:                                            ; preds = %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJRiEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_.exit
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yn, i64 8 ; 4 uses
  %i.yp = load atomic i64, ptr %i.yo acquire, align 8 ; 2 uses
  %i.yq = icmp eq i64 %i.yp, 4294967297
  %i.yr = trunc i64 %i.yp to i32                  ; 2 uses
  br i1 %i.yq, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %bb.gc
  store i32 0, ptr %i.yo, align 8, !tbaa !47
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yn, i64 12
  store i32 0, ptr %i.ys, align 4, !tbaa !48
  %i.yt = load ptr, ptr %i.yn, align 8, !tbaa !12
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 16
  %i.yv = load ptr, ptr %i.yu, align 8
  call void %i.yv(ptr noundef nonnull align 8 dereferenceable(16) %i.yn) #26, !inline_history !88
  %i.yw = load ptr, ptr %i.yn, align 8, !tbaa !12
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 24
  %i.yy = load ptr, ptr %i.yx, align 8
  call void %i.yy(ptr noundef nonnull align 8 dereferenceable(16) %i.yn) #26, !inline_history !88
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ge:                                            ; preds = %bb.gc
  %i.yz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i.i675 = icmp eq i8 %i.yz, 0
  br i1 %.not.i.i.i.i.i675, label %bb.gg, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.za = add nsw i32 %i.yr, -1
  store i32 %i.za, ptr %i.yo, align 8, !tbaa !10
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.gg:                                            ; preds = %bb.ge
  %i.zb = atomicrmw volatile add ptr %i.yo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.gg, %bb.gf
  %.0.i.i.i.i.i.i = phi i32 [ %i.yr, %bb.gf ], [ %i.zb, %bb.gg ]
  %i.zc = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.zc, label %bb.gh, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !53

bb.gh:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.yn) #26
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.gh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.gd, %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJRiEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_.exit
  %i.zd = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_511Lut1DOpData20IsValidInterpolationENS_13InterpolationE(i32 noundef %4)
          to label %bb.gi unwind label %bb.gl

bb.gi:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.pre1135 = load ptr, ptr %5, align 8, !tbaa !55 ; 3 uses
  br i1 %i.zd, label %bb.gj, label %.lr.ph1087

bb.gj:                                            ; preds = %bb.gi
  invoke void @_ZN16OpenColorIO_v2_511Lut1DOpData16setInterpolationENS_13InterpolationE(ptr noundef nonnull align 8 dereferenceable(364) %.pre1135, i32 noundef %4)
          to label %.lr.ph1087 unwind label %bb.gl

bb.gk:                                            ; preds = %bb.gb
  %i.ze = landingpad { ptr, i32 }
          cleanup
  br label %.body672

bb.gl:                                            ; preds = %bb.gj, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.zf = landingpad { ptr, i32 }
          cleanup
  br label %.body672

.lr.ph1087:                                       ; preds = %bb.gi, %bb.gj
  %i.zg = getelementptr inbounds nuw i8, ptr %.pre1135, i64 360
  store i32 8, ptr %i.zg, align 8, !tbaa !142
  %i.zh = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.zi = getelementptr inbounds nuw i8, ptr %.pre1135, i64 200
  %i.zj = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 2 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.zl = getelementptr inbounds nuw i8, ptr %42, i64 16
  %wide.trip.count = and i64 %i.wm, 4294967295
  br label %bb.gm

bb.gm:                                            ; preds = %.lr.ph1087, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit705
  %indvars.iv1119 = phi i64 [ 0, %.lr.ph1087 ], [ %indvars.iv.next1120, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit705 ] ; 2 uses
  %i.zm = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_58nextlineERSiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.gn unwind label %bb.gv     ; 0 uses

bb.gn:                                            ; preds = %bb.gm
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #26
  invoke void @_ZN11StringUtils18SplitByWhiteSpacesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.15") align 8 %42, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.go unwind label %bb.gw

bb.go:                                            ; preds = %bb.gn
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %43, i8 0, i64 24, i1 false)
  %i.zn = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_519StringVecToFloatVecERSt6vectorIfSaIfEERKS0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE(ptr noundef nonnull align 8 dereferenceable(24) %43, ptr noundef nonnull align 8 dereferenceable(24) %42)
          to label %bb.gp unwind label %bb.gx

bb.gp:                                            ; preds = %bb.go
  br i1 %i.zn, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %bb.gp
  %i.zo = load ptr, ptr %i.zh, align 8, !tbaa !110
  %i.zp = load ptr, ptr %43, align 8, !tbaa !109  ; 5 uses
  %i.zq = ptrtoint ptr %i.zo to i64
  %i.zr = ptrtoint ptr %i.zp to i64               ; 2 uses
  %i.zs = sub i64 %i.zq, %i.zr
  %.not304 = icmp eq i64 %i.zs, 12
  br i1 %.not304, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.gr

bb.gr:                                            ; preds = %bb.gq, %bb.gp
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #26
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %44)
          to label %bb.gs unwind label %bb.gy

bb.gs:                                            ; preds = %bb.gr
  %i.zt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %44, ptr noundef nonnull @.str.29, i64 noundef 46)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit679 unwind label %bb.gz ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit679: ; preds = %bb.gs
  %i.zu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %44, ptr noundef nonnull @.str.30, i64 noundef 35)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit681 unwind label %bb.gz ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit681: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit679
  %i.zv = load ptr, ptr %7, align 8, !tbaa !25
  %i.zw = load i64, ptr %i.i, align 8, !tbaa !19
  %i.zx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %44, ptr noundef %i.zv, i64 noundef %i.zw)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit683 unwind label %bb.gz

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit683: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit681
  %i.zy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.zx, ptr noundef nonnull @.str.31, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit685 unwind label %bb.gz ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit685: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit683
  %i.zz = load ptr, ptr %3, align 8, !tbaa !25
  %i.aaa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aab = load i64, ptr %i.aaa, align 8, !tbaa !19
  %i.aac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %44, ptr noundef %i.zz, i64 noundef %i.aab)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit687 unwind label %bb.gz

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit687: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit685
  %i.aad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aac, ptr noundef nonnull @.str.14, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit689 unwind label %bb.gz ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit689: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit687
  %i.aae = call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #26
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %45, ptr noundef nonnull align 8 dereferenceable(112) %44)
          to label %bb.gt unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit692.thread

bb.gt:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit689
  %i.aaf = load ptr, ptr %45, align 8, !tbaa !25
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aae, ptr noundef %i.aaf)
          to label %bb.gu unwind label %bb.ha

bb.gu:                                            ; preds = %bb.gt
  invoke void @__cxa_throw(ptr nonnull %i.aae, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #28
          to label %bb.ok unwind label %bb.ha

bb.gv:                                            ; preds = %bb.gm
  %i.aag = landingpad { ptr, i32 }
          cleanup
  br label %.body672

bb.gw:                                            ; preds = %bb.gn
  %i.aah = landingpad { ptr, i32 }
          cleanup
  br label %bb.hh

bb.gx:                                            ; preds = %bb.go
  %i.aai = landingpad { ptr, i32 }
          cleanup
  br label %bb.hf

bb.gy:                                            ; preds = %bb.gr
  %i.aaj = landingpad { ptr, i32 }
          cleanup
  br label %bb.hd

bb.gz:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit687, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit685, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit683, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit681, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit679, %bb.gs
  %i.aak = landingpad { ptr, i32 }
          cleanup
  br label %bb.hc

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit692.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit689
  %i.aal = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #26
  br label %bb.hb

bb.ha:                                            ; preds = %bb.gu, %bb.gt
  %.0151 = phi i1 [ false, %bb.gu ], [ true, %bb.gt ] ; 2 uses
  %i.aam = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.aan = load ptr, ptr %45, align 8, !tbaa !25  ; 2 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 2 uses
  %i.aap = icmp eq ptr %i.aan, %i.aao
  br i1 %i.aap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit692, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i690

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i690: ; preds = %bb.ha
  %i.aaq = load i64, ptr %i.aao, align 8, !tbaa !20
  %i.aar = add i64 %i.aaq, 1
  call void @_ZdlPvm(ptr noundef %i.aan, i64 noundef %i.aar) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #26
  br i1 %.0151, label %bb.hb, label %bb.hc

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit692: ; preds = %bb.ha
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #26
  br i1 %.0151, label %bb.hb, label %bb.hc

bb.hb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i690, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit692.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit692
  %.pn305943 = phi { ptr, i32 } [ %i.aal, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit692.thread ], [ %i.aam, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit692 ], [ %i.aam, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i690 ]
  call void @__cxa_free_exception(ptr %i.aae) #26
  br label %bb.hc

bb.hc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i690, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit692, %bb.hb, %bb.gz
  %.pn305.pn = phi { ptr, i32 } [ %.pn305943, %bb.hb ], [ %i.aam, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit692 ], [ %i.aak, %bb.gz ], [ %i.aam, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i690 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %44) #26
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hc, %bb.gy
  %.pn305.pn.pn = phi { ptr, i32 } [ %.pn305.pn, %bb.hc ], [ %i.aaj, %bb.gy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #26
  br label %bb.hf

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.gq
  %i.aas = load float, ptr %i.zp, align 4, !tbaa !45
  %i.aat = load ptr, ptr %i.zi, align 8, !tbaa !109
  %.idx = mul nuw nsw i64 %indvars.iv1119, 12
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aat, i64 %.idx ; 3 uses
  store float %i.aas, ptr %i.aau, align 4, !tbaa !45
  %i.aav = getelementptr inbounds nuw i8, ptr %i.zp, i64 4
  %i.aaw = load float, ptr %i.aav, align 4, !tbaa !45
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aau, i64 4
  store float %i.aaw, ptr %i.aax, align 4, !tbaa !45
  %i.aay = getelementptr inbounds nuw i8, ptr %i.zp, i64 8
  %i.aaz = load float, ptr %i.aay, align 4, !tbaa !45
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aau, i64 8
  store float %i.aaz, ptr %i.aba, align 4, !tbaa !45
  %i.abb = load ptr, ptr %i.zj, align 8, !tbaa !111
  %i.abc = ptrtoint ptr %i.abb to i64
  %i.abd = sub i64 %i.abc, %i.zr
  call void @_ZdlPvm(ptr noundef nonnull %i.zp, i64 noundef %i.abd) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #26
  %i.abe = load ptr, ptr %42, align 8, !tbaa !39  ; 3 uses
  %i.abf = load ptr, ptr %i.zk, align 8, !tbaa !40 ; 2 uses
  %.not4.i.i.i694 = icmp eq ptr %i.abe, %i.abf
  br i1 %.not4.i.i.i694, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i702, label %.lr.ph.i.i.i695

.lr.ph.i.i.i695:                                  ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i698
  %.05.i.i.i696 = phi ptr [ %i.abl, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i698 ], [ %i.abe, %_ZNSt6vectorIfSaIfEED2Ev.exit ] ; 3 uses
  %i.abg = load ptr, ptr %.05.i.i.i696, align 8, !tbaa !25 ; 2 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %.05.i.i.i696, i64 16 ; 2 uses
  %i.abi = icmp eq ptr %i.abg, %i.abh
  br i1 %i.abi, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i698, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i697

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i697: ; preds = %.lr.ph.i.i.i695
  %i.abj = load i64, ptr %i.abh, align 8, !tbaa !20
  %i.abk = add i64 %i.abj, 1
  call void @_ZdlPvm(ptr noundef %i.abg, i64 noundef %i.abk) #27
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i698

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i698: ; preds = %.lr.ph.i.i.i695, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i697
  %i.abl = getelementptr inbounds nuw i8, ptr %.05.i.i.i696, i64 32 ; 2 uses
  %.not.i.i.i699 = icmp eq ptr %i.abl, %i.abf
  br i1 %.not.i.i.i699, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i700, label %.lr.ph.i.i.i695, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i700: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i698
  %.pr.i701 = load ptr, ptr %42, align 8, !tbaa !39
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i702

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i702: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i700, %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.abm = phi ptr [ %.pr.i701, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i700 ], [ %i.abe, %_ZNSt6vectorIfSaIfEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i703 = icmp eq ptr %i.abm, null
  br i1 %.not.i.i1.i703, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit705, label %bb.he

bb.he:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i702
  %i.abn = load ptr, ptr %i.zl, align 8, !tbaa !41
  %i.abo = ptrtoint ptr %i.abn to i64
  %i.abp = ptrtoint ptr %i.abm to i64
end_hunk_0
