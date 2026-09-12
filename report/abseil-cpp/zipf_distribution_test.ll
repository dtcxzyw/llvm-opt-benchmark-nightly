Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/zipf_distribution_test?download=true
inline.NumInlined: 5549
inline.NumDeleted: 1840
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN12_GLOBAL__N_128ZipfTest_ChiSquaredTest_Test8TestBodyEv:bb.a
bb.ae:                                            ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0334.0446, i64 noundef %i.et) #32
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i: ; preds = %bb.ae, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.ez
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit

_ZNSt6vectorIdSaIdEE9push_backERKd.exit:          ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i, %bb.aa
  %.sroa.26.4 = phi ptr [ %i.fe, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i ], [ %.sroa.26.0444, %bb.aa ]
  %.pn388 = phi ptr [ %i.fc, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i ], [ %.sroa.15.0445, %bb.aa ]
  %.sroa.0334.4 = phi ptr [ %i.fb, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i ], [ %.sroa.0334.0446, %bb.aa ]
  %.sroa.15.3 = getelementptr inbounds nuw i8, ptr %.pn388, i64 8
  %i.ff = fcmp olt double %i.eq, %.058451
  %.159 = select i1 %i.ff, double %i.eq, double %.058451
  br label %bb.af

.loopexit390:                                     ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit298

.loopexit.split-lp:                               ; preds = %bb.x
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit298

.loopexit391:                                     ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit393 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit298

.loopexit.split-lp392:                            ; preds = %bb.ac
  %lpad.loopexit.split-lp394 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit298

bb.af:                                            ; preds = %_ZNSt6vectorIdSaIdEE9push_backERKd.exit, %bb.t
  %.sroa.26.1 = phi ptr [ %.sroa.26.4, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit ], [ %.sroa.26.0444, %bb.t ] ; 7 uses
  %.sroa.15.1 = phi ptr [ %.sroa.15.3, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit ], [ %.sroa.15.0445, %bb.t ] ; 6 uses
  %.sroa.0334.1 = phi ptr [ %.sroa.0334.4, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit ], [ %.sroa.0334.0446, %bb.t ] ; 9 uses
  %.sroa.28.1 = phi ptr [ %.sroa.28.5, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit ], [ %.sroa.28.0447, %bb.t ] ; 6 uses
  %.sroa.16.1 = phi ptr [ %.sroa.16.3, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit ], [ %.sroa.16.0448, %bb.t ] ; 6 uses
  %.sroa.0354.1 = phi ptr [ %.sroa.0354.5, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit ], [ %.sroa.0354.0449, %bb.t ] ; 8 uses
  %.2 = phi double [ %.159, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit ], [ %.058451, %bb.t ] ; 4 uses
  %.1 = phi double [ %.0.i, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit ], [ %.057452, %bb.t ] ; 4 uses
  %i.fg = fadd double %.060450, 1.000000e-02      ; 2 uses
  %i.fh = fcmp olt double %i.fg, 1.000000e+00
  br i1 %i.fh, label %bb.r, label %bb.q, !llvm.loop !310

bb.ag:                                            ; preds = %bb.q
  %.not.i.i163 = icmp eq ptr %.sroa.16.1, %.sroa.28.1
  br i1 %.not.i.i163, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store i64 -1, ptr %.sroa.16.1, align 8, !tbaa !48
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.ai:                                            ; preds = %bb.ag
  %i.fi = ptrtoint ptr %.sroa.28.1 to i64
  %i.fj = ptrtoint ptr %.sroa.0354.1 to i64
  %i.fk = sub i64 %i.fi, %i.fj                    ; 6 uses
  %i.fl = icmp eq i64 %i.fk, 9223372036854775800
  br i1 %i.fl, label %bb.aj, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #33
          to label %.noexc167 unwind label %bb.ar

.noexc167:                                        ; preds = %bb.aj
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ai
  %i.fm = ashr exact i64 %i.fk, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i164 = tail call i64 @llvm.umax.i64(i64 %i.fm, i64 1)
  %i.fn = add nsw i64 %.sroa.speculated.i.i.i.i164, %i.fm ; 2 uses
  %i.fo = icmp ult i64 %i.fn, %i.fm
  %i.fp = tail call i64 @llvm.umin.i64(i64 %i.fn, i64 1152921504606846975)
  %i.fq = select i1 %i.fo, i64 1152921504606846975, i64 %i.fp ; 3 uses
  %.not.i.i.i.i165 = icmp ne i64 %i.fq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i165)
  %i.fr = shl nuw nsw i64 %i.fq, 3
  %i.fs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fr) #35
          to label %.noexc168 unwind label %bb.ar ; 4 uses

.noexc168:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ft = getelementptr inbounds i8, ptr %i.fs, i64 %i.fk ; 2 uses
  store i64 -1, ptr %i.ft, align 8, !tbaa !48
  %i.fu = icmp sgt i64 %i.fk, 0
  br i1 %i.fu, label %bb.ak, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

bb.ak:                                            ; preds = %.noexc168
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fs, ptr align 8 %.sroa.0354.1, i64 %i.fk, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.ak, %.noexc168
  %.not.i17.i.i.i166 = icmp eq ptr %.sroa.0354.1, null
  br i1 %.not.i17.i.i.i166, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0354.1, i64 noundef %i.fk) #32
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.al, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.fq
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

_ZNSt6vectorImSaImEE9push_backEOm.exit:           ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, %bb.ah
  %.sroa.28.6 = phi ptr [ %i.fv, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.28.1, %bb.ah ] ; 2 uses
  %.pn383 = phi ptr [ %i.ft, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.16.1, %bb.ah ]
  %.sroa.0354.6 = phi ptr [ %i.fs, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.0354.1, %bb.ah ] ; 2 uses
  %.sroa.16.4 = getelementptr inbounds nuw i8, ptr %.pn383, i64 8
  %i.fw = fsub double 1.000000e+00, %.1           ; 4 uses
  %.not.i169 = icmp eq ptr %.sroa.15.1, %.sroa.26.1
  br i1 %.not.i169, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit
  store double %i.fw, ptr %.sroa.15.1, align 8, !tbaa !95
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit178

bb.an:                                            ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %i.fx = ptrtoint ptr %.sroa.26.1 to i64
  %i.fy = ptrtoint ptr %.sroa.0334.1 to i64
  %i.fz = sub i64 %i.fx, %i.fy                    ; 6 uses
  %i.ga = icmp eq i64 %i.fz, 9223372036854775800
  br i1 %i.ga, label %bb.ao, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i170

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #33
          to label %.noexc176 unwind label %bb.as

.noexc176:                                        ; preds = %bb.ao
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i170: ; preds = %bb.an
  %i.gb = ashr exact i64 %i.fz, 3                 ; 3 uses
  %.sroa.speculated.i.i.i171 = tail call i64 @llvm.umax.i64(i64 %i.gb, i64 1)
  %i.gc = add nsw i64 %.sroa.speculated.i.i.i171, %i.gb ; 2 uses
  %i.gd = icmp ult i64 %i.gc, %i.gb
  %i.ge = tail call i64 @llvm.umin.i64(i64 %i.gc, i64 1152921504606846975)
  %i.gf = select i1 %i.gd, i64 1152921504606846975, i64 %i.ge ; 3 uses
  %.not.i.i.i172 = icmp ne i64 %i.gf, 0
  tail call void @llvm.assume(i1 %.not.i.i.i172)
  %i.gg = shl nuw nsw i64 %i.gf, 3
  %i.gh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gg) #35
          to label %.noexc177 unwind label %bb.as ; 4 uses

.noexc177:                                        ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i170
  %i.gi = getelementptr inbounds i8, ptr %i.gh, i64 %i.fz ; 2 uses
  store double %i.fw, ptr %i.gi, align 8, !tbaa !95
  %i.gj = icmp sgt i64 %i.fz, 0
  br i1 %i.gj, label %bb.ap, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i173

bb.ap:                                            ; preds = %.noexc177
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gh, ptr align 8 %.sroa.0334.1, i64 %i.fz, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i173

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i173: ; preds = %bb.ap, %.noexc177
  %.not.i17.i.i174 = icmp eq ptr %.sroa.0334.1, null
  br i1 %.not.i17.i.i174, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i175, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i173
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0334.1, i64 noundef %i.fz) #32
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i175

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i175: ; preds = %bb.aq, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i173
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %i.gf
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit178

_ZNSt6vectorIdSaIdEE9push_backERKd.exit178:       ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i175, %bb.am
  %.sroa.26.5 = phi ptr [ %i.gk, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i175 ], [ %.sroa.26.1, %bb.am ]
  %.pn384 = phi ptr [ %i.gi, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i175 ], [ %.sroa.15.1, %bb.am ]
  %.sroa.0334.5 = phi ptr [ %i.gh, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i175 ], [ %.sroa.0334.1, %bb.am ]
  %.sroa.15.4 = getelementptr inbounds nuw i8, ptr %.pn384, i64 8
  %i.gl = fcmp olt double %i.fw, %.2
  %.3 = select i1 %i.gl, double %i.fw, double %.2
  br label %bb.au

bb.ar:                                            ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i, %bb.aj
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit298

bb.as:                                            ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i170, %bb.ao
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit298

bb.at:                                            ; preds = %bb.q
  %i.go = getelementptr inbounds i8, ptr %.sroa.16.1, i64 -8
  store i64 -1, ptr %i.go, align 8, !tbaa !48
  %i.gp = fsub double 1.000000e+00, %.1
  %i.gq = getelementptr inbounds i8, ptr %.sroa.15.1, i64 -8 ; 2 uses
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !95
  %i.gs = fadd double %i.gp, %i.gr
  store double %i.gs, ptr %i.gq, align 8, !tbaa !95
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit178
  %.sroa.26.2 = phi ptr [ %.sroa.26.5, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit178 ], [ %.sroa.26.1, %bb.at ] ; 5 uses
  %.sroa.15.2 = phi ptr [ %.sroa.15.4, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit178 ], [ %.sroa.15.1, %bb.at ] ; 6 uses
  %.sroa.0334.2 = phi ptr [ %.sroa.0334.5, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit178 ], [ %.sroa.0334.1, %bb.at ] ; 16 uses
  %.sroa.28.3 = phi ptr [ %.sroa.28.6, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit178 ], [ %.sroa.28.1, %bb.at ] ; 5 uses
  %.sroa.16.2 = phi ptr [ %.sroa.16.4, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit178 ], [ %.sroa.16.1, %bb.at ] ; 2 uses
  %.sroa.0354.3 = phi ptr [ %.sroa.0354.6, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit178 ], [ %.sroa.0354.1, %bb.at ] ; 10 uses
  %.4 = phi double [ %.3, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit178 ], [ %.2, %bb.at ]
  %i.gt = fdiv double 8.000000e+00, %.4
  %i.gu = fptoui double %i.gt to i64              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #34
  %i.gv = ptrtoint ptr %.sroa.16.2 to i64         ; 2 uses
  %i.gw = ptrtoint ptr %.sroa.0354.3 to i64       ; 4 uses
  %i.gx = sub i64 %i.gv, %i.gw                    ; 3 uses
  %i.gy = ashr exact i64 %i.gx, 3                 ; 3 uses
  store i64 %i.gy, ptr %i.k, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #34
  store i32 0, ptr %i.l, align 4, !tbaa !58
  %.not = icmp eq ptr %.sroa.16.2, %.sroa.0354.3  ; 3 uses
  br i1 %.not, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1)
          to label %_ZN7testing8internal11CmpHelperGTImiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit unwind label %bb.ax

bb.aw:                                            ; preds = %bb.au
  invoke void @_ZN7testing8internal18CmpHelperOpFailureImiEENS_15AssertionResultEPKcS4_RKT_RKT0_S4_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 4 dereferenceable(4) %i.l, ptr noundef nonnull @.str.39)
          to label %_ZN7testing8internal11CmpHelperGTImiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit unwind label %bb.ax

_ZN7testing8internal11CmpHelperGTImiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit: ; preds = %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #34
  %i.gz = load i8, ptr %1, align 8, !tbaa !104, !range !105, !noundef !106
  %i.ha = trunc nuw i8 %i.gz to i1
  br i1 %i.ha, label %.critedge, label %bb.ay

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.hb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #34
  br label %bb.bm

bb.ay:                                            ; preds = %_ZN7testing8internal11CmpHelperGTImiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.az unwind label %bb.be

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !107 ; 2 uses
  %.not.i.i181 = icmp eq ptr %i.hd, null
  br i1 %.not.i.i181, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !37
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.ba, %bb.az
  %i.hf = phi ptr [ %i.he, %bb.ba ], [ @.str, %bb.az ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 262, ptr noundef %i.hf)
          to label %bb.bb unwind label %bb.bf

bb.bb:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.bc unwind label %bb.bg

bb.bc:                                            ; preds = %bb.bb
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.hg = load ptr, ptr %2, align 8, !tbaa !109   ; 3 uses
  %.not.i.i182 = icmp eq ptr %i.hg, null
  br i1 %.not.i.i182, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.bc
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !45
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8
  call void %i.hj(ptr noundef nonnull align 8 dereferenceable(128) %i.hg) #34, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.bc, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  %i.hk = load ptr, ptr %i.hc, align 8, !tbaa !107 ; 4 uses
  %.not.i.i183 = icmp eq ptr %i.hk, null
  br i1 %.not.i.i183, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.bd

bb.bd:                                            ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !37 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 16 ; 2 uses
  %i.hn = icmp eq ptr %i.hl, %i.hm
  br i1 %i.hn, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.bd
  %i.ho = load i64, ptr %i.hm, align 8, !tbaa !38
  %i.hp = add i64 %i.ho, 1
  call void @_ZdlPvm(ptr noundef %i.hl, i64 noundef %i.hp) #32
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.hk, i64 noundef 32) #32
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZN7testing7MessageD2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

bb.be:                                            ; preds = %bb.ay
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit186

bb.bf:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bg:                                            ; preds = %bb.bb
  %i.hs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #34
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.pn = phi { ptr, i32 } [ %i.hs, %bb.bg ], [ %i.hr, %bb.bf ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.ht = load ptr, ptr %2, align 8, !tbaa !109   ; 3 uses
  %.not.i.i184 = icmp eq ptr %i.ht, null
  br i1 %.not.i.i184, label %_ZN7testing7MessageD2Ev.exit186, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i185

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i185: ; preds = %bb.bh
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !45
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.hw = load ptr, ptr %i.hv, align 8
  call void %i.hw(ptr noundef nonnull align 8 dereferenceable(128) %i.ht) #34, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit186

_ZN7testing7MessageD2Ev.exit186:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i185, %bb.bh, %bb.be
  %.pn.pn = phi { ptr, i32 } [ %i.hq, %bb.be ], [ %.pn, %bb.bh ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i185 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #34
  br label %bb.bm

.critedge:                                        ; preds = %_ZN7testing8internal11CmpHelperGTImiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !107 ; 4 uses
  %.not.i.i187 = icmp eq ptr %i.hy, null
  br i1 %.not.i.i187, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %.critedge
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !37 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 16 ; 2 uses
  %i.ib = icmp eq ptr %i.hz, %i.ia
  br i1 %i.ib, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i189, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i188

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i188: ; preds = %bb.bi
  %i.ic = load i64, ptr %i.ia, align 8, !tbaa !38
  %i.id = add i64 %i.ic, 1
  call void @_ZdlPvm(ptr noundef %i.hz, i64 noundef %i.id) #32
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i189

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i189: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i188
  call void @_ZdlPvm(ptr noundef nonnull %i.hy, i64 noundef 32) #32
  br label %bb.bj

bb.bj:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i189, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  %i.ie = icmp ugt i64 %i.gy, 1152921504606846975
  br i1 %i.ie, label %bb.bk, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #33
          to label %.noexc193 unwind label %bb.bn

.noexc193:                                        ; preds = %bb.bk
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.bj
  br i1 %.not, label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %i.if = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gx) #35
          to label %.noexc194 unwind label %bb.bn ; 3 uses

.noexc194:                                        ; preds = %bb.bl
  %i.ig = add i64 %i.gv, -8
  %i.ih = sub i64 %i.ig, %i.gw
  %i.ii = and i64 %i.ih, -8
  %i.ij = add i64 %i.ii, 8
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.if, i8 0, i64 %i.ij, i1 false), !tbaa !48
  %i.ik = getelementptr inbounds nuw i8, ptr %i.if, i64 %i.gx
  br label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit

_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit:            ; preds = %.noexc194, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.0316.0 = phi ptr [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.if, %.noexc194 ] ; 10 uses
  %.sroa.13.0 = phi ptr [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ik, %.noexc194 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %i.o, i64 64, i1 false), !tbaa.struct !110
  %.not.not453.not = icmp eq i64 %i.gu, 0
  br i1 %.not.not453.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_128ZipfTest_ChiSquaredTest_Test8TestBodyEv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8)
          to label %_ZN7testing8internal11CmpHelperGEImmEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit unwind label %bb.ch

_ZN7testing8internal11CmpHelperGEImmEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit: ; preds = %bb.cf
  %i.jv = load i8, ptr %8, align 8, !tbaa !104, !range !105, !noundef !106
  %i.jw = trunc nuw i8 %i.jv to i1
  br i1 %i.jw, label %.critedge150, label %bb.ci

bb.cg:                                            ; preds = %_ZN7testing7MessageD2Ev.exit211, %bb.bt
  %.pn111.pn.pn = phi { ptr, i32 } [ %.pn111.pn, %_ZN7testing7MessageD2Ev.exit211 ], [ %i.iu, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %bb.cv

bb.ch:                                            ; preds = %bb.cf
  %i.jx = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.ci:                                            ; preds = %_ZN7testing8internal11CmpHelperGEImmEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.cj unwind label %bb.co

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  %i.jy = load ptr, ptr %i.in, align 8, !tbaa !107 ; 2 uses
  %.not.i.i220 = icmp eq ptr %i.jy, null
  br i1 %.not.i.i220, label %_ZNK7testing15AssertionResult15failure_messageEv.exit221, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !37
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit221

_ZNK7testing15AssertionResult15failure_messageEv.exit221: ; preds = %bb.ck, %bb.cj
  %i.ka = phi ptr [ %i.jz, %bb.ck ], [ @.str, %bb.cj ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 273, ptr noundef %i.ka)
          to label %bb.cl unwind label %bb.cp

bb.cl:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit221
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.cm unwind label %bb.cq

bb.cm:                                            ; preds = %bb.cl
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  %i.kb = load ptr, ptr %9, align 8, !tbaa !109   ; 3 uses
  %.not.i.i222 = icmp eq ptr %i.kb, null
  br i1 %.not.i.i222, label %_ZN7testing7MessageD2Ev.exit224, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i223

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i223: ; preds = %bb.cm
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !45
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  %i.ke = load ptr, ptr %i.kd, align 8
  call void %i.ke(ptr noundef nonnull align 8 dereferenceable(128) %i.kb) #34, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit224

_ZN7testing7MessageD2Ev.exit224:                  ; preds = %bb.cm, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i223
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  %i.kf = load ptr, ptr %i.in, align 8, !tbaa !107 ; 4 uses
  %.not.i.i225 = icmp eq ptr %i.kf, null
  br i1 %.not.i.i225, label %_ZN7testing15AssertionResultD2Ev.exit229, label %bb.cn

bb.cn:                                            ; preds = %_ZN7testing7MessageD2Ev.exit224
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !37 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kf, i64 16 ; 2 uses
  %i.ki = icmp eq ptr %i.kg, %i.kh
  br i1 %i.ki, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i227, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i226

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i226: ; preds = %bb.cn
  %i.kj = load i64, ptr %i.kh, align 8, !tbaa !38
  %i.kk = add i64 %i.kj, 1
  call void @_ZdlPvm(ptr noundef %i.kg, i64 noundef %i.kk) #32
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i227

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i227: ; preds = %bb.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i226
  call void @_ZdlPvm(ptr noundef nonnull %i.kf, i64 noundef 32) #32
  br label %_ZN7testing15AssertionResultD2Ev.exit229

_ZN7testing15AssertionResultD2Ev.exit229:         ; preds = %_ZN7testing7MessageD2Ev.exit224, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i227
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br label %.thread381

bb.co:                                            ; preds = %bb.ci
  %i.kl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit232

bb.cp:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit221
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

bb.cq:                                            ; preds = %bb.cl
  %i.kn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #34
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %.pn115 = phi { ptr, i32 } [ %i.kn, %bb.cq ], [ %i.km, %bb.cp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  %i.ko = load ptr, ptr %9, align 8, !tbaa !109   ; 3 uses
  %.not.i.i230 = icmp eq ptr %i.ko, null
  br i1 %.not.i.i230, label %_ZN7testing7MessageD2Ev.exit232, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i231

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i231: ; preds = %bb.cr
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !45
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %i.kr = load ptr, ptr %i.kq, align 8
  call void %i.kr(ptr noundef nonnull align 8 dereferenceable(128) %i.ko) #34, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit232

_ZN7testing7MessageD2Ev.exit232:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i231, %bb.cr, %bb.co
  %.pn115.pn = phi { ptr, i32 } [ %i.kl, %bb.co ], [ %.pn115, %bb.cr ], [ %.pn115, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i231 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #34
  br label %bb.cu

.critedge150:                                     ; preds = %_ZN7testing8internal11CmpHelperGEImmEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit
  %i.ks = load ptr, ptr %i.in, align 8, !tbaa !107 ; 4 uses
  %.not.i.i233 = icmp eq ptr %i.ks, null
  br i1 %.not.i.i233, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %.critedge150
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !37 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ks, i64 16 ; 2 uses
  %i.kv = icmp eq ptr %i.kt, %i.ku
  br i1 %i.kv, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i235, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i234

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i234: ; preds = %bb.cs
  %i.kw = load i64, ptr %i.ku, align 8, !tbaa !38
  %i.kx = add i64 %i.kw, 1
  call void @_ZdlPvm(ptr noundef %i.kt, i64 noundef %i.kx) #32
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i235

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i235: ; preds = %bb.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i234
  call void @_ZdlPvm(ptr noundef nonnull %i.ks, i64 noundef 32) #32
  br label %bb.ct

bb.ct:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i235, %.critedge150
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  %i.ky = load i64, ptr %i.m, align 8, !tbaa !48  ; 2 uses
  %i.kz = uitofp i64 %i.ky to double
  %i.la = fadd double %.0101454, %i.kz            ; 2 uses
  br i1 %.not, label %.loopexit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %bb.ct, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.016.i.i = phi i64 [ %.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.gy, %bb.ct ] ; 2 uses
  %.sroa.011.015.i.i = phi ptr [ %.sroa.011.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %.sroa.0354.3, %bb.ct ] ; 2 uses
  %i.lb = lshr i64 %.016.i.i, 1                   ; 3 uses
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015.i.i, i64 %i.lb ; 2 uses
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !48
  %i.le = icmp ult i64 %i.ky, %i.ld               ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  %i.lg = xor i64 %i.lb, -1
  %i.lh = add nsw i64 %.016.i.i, %i.lg
  %.sroa.011.1.i.i = select i1 %i.le, ptr %.sroa.011.015.i.i, ptr %i.lf ; 2 uses
  %.1.i.i = select i1 %i.le, i64 %i.lb, i64 %i.lh ; 2 uses
  %i.li = icmp sgt i64 %.1.i.i, 0
  br i1 %i.li, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %.loopexit.loopexit, !llvm.loop !311

.thread381:                                       ; preds = %_ZN7testing15AssertionResultD2Ev.exit208, %_ZN7testing15AssertionResultD2Ev.exit229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.es

.loopexit.loopexit:                               ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.pre = ptrtoint ptr %.sroa.011.1.i.i to i64
  %.pre486 = sub i64 %.pre, %i.gw
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.ct
  %.pre-phi487 = phi i64 [ %.pre486, %.loopexit.loopexit ], [ 0, %bb.ct ]
  %i.lj = getelementptr inbounds nuw i8, ptr %.sroa.0316.0, i64 %.pre-phi487 ; 2 uses
  %i.lk = load i64, ptr %i.lj, align 8, !tbaa !48
  %i.ll = add nsw i64 %i.lk, 1
  store i64 %i.ll, ptr %i.lj, align 8, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #34
  %i.lm = add nuw i64 %.0100455, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.lm, %i.gu
  br i1 %exitcond.not, label %._crit_edge, label %bb.bo, !llvm.loop !312

bb.cu:                                            ; preds = %_ZN7testing7MessageD2Ev.exit232, %bb.ch
  %.pn115.pn.pn = phi { ptr, i32 } [ %.pn115.pn, %_ZN7testing7MessageD2Ev.exit232 ], [ %i.jx, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.cg, %bb.bs
  %.pn119.pn = phi { ptr, i32 } [ %i.it, %bb.bs ], [ %.pn115.pn.pn, %bb.cu ], [ %.pn111.pn.pn, %bb.cg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.ew

._crit_edge:                                      ; preds = %.loopexit, %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  %.0101.lcssa = phi double [ 0.000000e+00, %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit ], [ %i.la, %.loopexit ]
  %i.ln = uitofp i64 %i.gu to double              ; 3 uses
  %i.lo = fdiv double %.0101.lcssa, %i.ln
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %.not385456 = icmp eq ptr %.sroa.0334.2, %.sroa.15.2 ; 2 uses
  br i1 %.not385456, label %._crit_edge460, label %.lr.ph459.preheader

.lr.ph459.preheader:                              ; preds = %._crit_edge
  %i.lp = ptrtoaddr ptr %.sroa.15.2 to i64
  %i.lq = ptrtoaddr ptr %.sroa.0334.2 to i64
  %i.lr = add i64 %i.lp, -8
  %i.ls = sub i64 %i.lr, %i.lq                    ; 2 uses
  %i.lt = lshr i64 %i.ls, 3
  %i.lu = add nuw nsw i64 %i.lt, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ls, 24
  br i1 %min.iters.check, label %.lr.ph459.preheader588, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph459.preheader
  %n.vec = and i64 %i.lu, 4611686018427387900     ; 3 uses
  %i.lv = shl i64 %n.vec, 3
  %i.lw = getelementptr i8, ptr %.sroa.0334.2, i64 %i.lv
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ln, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.lx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %.sroa.0334.2, i64 %i.lx ; 3 uses
  %i.ly = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %next.gep, align 8, !tbaa !95
  %wide.load587 = load <2 x double>, ptr %i.ly, align 8, !tbaa !95
  %i.lz = fmul <2 x double> %wide.load, %broadcast.splat
  %i.ma = fmul <2 x double> %wide.load587, %broadcast.splat
  store <2 x double> %i.lz, ptr %next.gep, align 8, !tbaa !95
  store <2 x double> %i.ma, ptr %i.ly, align 8, !tbaa !95
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.mb = icmp eq i64 %index.next, %n.vec
  br i1 %i.mb, label %middle.block, label %vector.body, !llvm.loop !313

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.lu, %n.vec
  br i1 %cmp.n, label %._crit_edge460, label %.lr.ph459.preheader588

.lr.ph459.preheader588:                           ; preds = %.lr.ph459.preheader, %middle.block
  %.sroa.0311.0457.ph = phi ptr [ %.sroa.0334.2, %.lr.ph459.preheader ], [ %i.lw, %middle.block ]
  br label %.lr.ph459

._crit_edge460:                                   ; preds = %.lr.ph459, %middle.block, %._crit_edge
  %i.mc = ptrtoint ptr %.sroa.15.2 to i64
  %i.md = ptrtoint ptr %.sroa.0334.2 to i64
  %i.me = sub i64 %i.mc, %i.md
  %i.mf = ashr exact i64 %i.me, 3                 ; 2 uses
  %i.mg = trunc i64 %i.mf to i32
  %i.mh = add nsw i32 %i.mg, -1                   ; 3 uses
  %i.mi = invoke noundef double @_ZN4absl12lts_2026052615random_internal14ChiSquareValueEid(i32 noundef %i.mh, double noundef 9.999000e-01)
          to label %bb.cw unwind label %bb.da     ; 2 uses

.lr.ph459:                                        ; preds = %.lr.ph459.preheader588, %.lr.ph459
  %.sroa.0311.0457 = phi ptr [ %i.ml, %.lr.ph459 ], [ %.sroa.0311.0457.ph, %.lr.ph459.preheader588 ] ; 3 uses
  %i.mj = load double, ptr %.sroa.0311.0457, align 8, !tbaa !95
  %i.mk = fmul double %i.mj, %i.ln
  store double %i.mk, ptr %.sroa.0311.0457, align 8, !tbaa !95
  %i.ml = getelementptr inbounds nuw i8, ptr %.sroa.0311.0457, i64 8 ; 2 uses
  %.not385 = icmp eq ptr %i.ml, %.sroa.15.2
  br i1 %.not385, label %._crit_edge460, label %.lr.ph459, !llvm.loop !314

bb.cw:                                            ; preds = %._crit_edge460
  %i.mm = icmp ne ptr %.sroa.0316.0, %.sroa.13.0
  %19 = icmp ne ptr %.sroa.0334.2, %.sroa.15.2
  %or.cond16.i = select i1 %i.mm, i1 %19, i1 false
  br i1 %or.cond16.i, label %.lr.ph.i239, label %_ZN4absl12lts_2026052615random_internal9ChiSquareIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS4_IPdS6_IdSaIdEEEEEEdT_SE_T0_SF_.exit

.lr.ph.i239:                                      ; preds = %bb.cw, %.lr.ph.i239
  %.019.i = phi double [ %.1.i, %.lr.ph.i239 ], [ 0.000000e+00, %bb.cw ] ; 2 uses
  %.sroa.012.018.i = phi ptr [ %i.mv, %.lr.ph.i239 ], [ %.sroa.0316.0, %bb.cw ] ; 2 uses
  %.sroa.07.017.i = phi ptr [ %i.mw, %.lr.ph.i239 ], [ %.sroa.0334.2, %bb.cw ] ; 2 uses
  %i.mn = load double, ptr %.sroa.07.017.i, align 8, !tbaa !95 ; 2 uses
  %i.mo = load i64, ptr %.sroa.012.018.i, align 8, !tbaa !48
  %i.mp = sitofp i64 %i.mo to double
  %i.mq = fsub double %i.mp, %i.mn                ; 3 uses
  %i.mr = fcmp une double %i.mq, 0.000000e+00
  %i.ms = fmul double %i.mq, %i.mq
  %i.mt = fdiv double %i.ms, %i.mn
  %i.mu = fadd double %.019.i, %i.mt
  %.1.i = select i1 %i.mr, double %i.mu, double %.019.i ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.sroa.012.018.i, i64 8 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %.sroa.07.017.i, i64 8 ; 2 uses
  %i.mx = icmp ne ptr %i.mv, %.sroa.13.0
  %i.my = icmp ne ptr %i.mw, %.sroa.15.2
  %or.cond.i = select i1 %i.mx, i1 %i.my, i1 false
  br i1 %or.cond.i, label %.lr.ph.i239, label %_ZN4absl12lts_2026052615random_internal9ChiSquareIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS4_IPdS6_IdSaIdEEEEEEdT_SE_T0_SF_.exit, !llvm.loop !315

_ZN4absl12lts_2026052615random_internal9ChiSquareIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS4_IPdS6_IdSaIdEEEEEEdT_SE_T0_SF_.exit: ; preds = %.lr.ph.i239, %bb.cw
  %.0.lcssa.i238 = phi double [ 0.000000e+00, %bb.cw ], [ %.1.i, %.lr.ph.i239 ] ; 4 uses
  %i.mz = invoke noundef double @_ZN4absl12lts_2026052615random_internal15ChiSquarePValueEdi(double noundef %.0.lcssa.i238, i32 noundef %i.mh)
          to label %bb.cx unwind label %bb.db

bb.cx:                                            ; preds = %_ZN4absl12lts_2026052615random_internal9ChiSquareIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS4_IPdS6_IdSaIdEEEEEEdT_SE_T0_SF_.exit
  %i.na = fcmp ogt double %.0.lcssa.i238, %i.mi
  br i1 %i.na, label %bb.cy, label %bb.es

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull @.str.1, i32 noundef 305) #37
          to label %bb.cz unwind label %bb.dc

bb.cz:                                            ; preds = %bb.cy
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %11, i64 6, ptr nonnull @.str.24)
          to label %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi7EEERS2_RAT__Kc.exit unwind label %bb.dd

_ZN4absl12lts_2026052612log_internal10LogMessagelsILi7EEERS2_RAT__Kc.exit: ; preds = %bb.cz
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %11)
          to label %_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.dd

_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi7EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2026052612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  br i1 %.not385456, label %._crit_edge463, label %.lr.ph462

._crit_edge463:                                   ; preds = %_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit248, %_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #34
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull @.str.1, i32 noundef 309) #37
          to label %bb.dm unwind label %bb.ea

bb.da:                                            ; preds = %._crit_edge460
  %i.nb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ew

bb.db:                                            ; preds = %_ZN4absl12lts_2026052615random_internal9ChiSquareIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS4_IPdS6_IdSaIdEEEEEEdT_SE_T0_SF_.exit
  %i.nc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ew

bb.dc:                                            ; preds = %bb.cy
  %i.nd = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.dd:                                            ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi7EEERS2_RAT__Kc.exit, %bb.cz
  %i.ne = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2026052612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #38
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %.pn122 = phi { ptr, i32 } [ %i.ne, %bb.dd ], [ %i.nd, %bb.dc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  br label %bb.ew

.lr.ph462:                                        ; preds = %_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit, %_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit248
  %.0461 = phi i64 [ %i.no, %_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit248 ], [ 0, %_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull @.str.1, i32 noundef 307) #37
          to label %bb.df unwind label %bb.dj

bb.df:                                            ; preds = %.lr.ph462
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0354.3, i64 %.0461
  %i.ng = load i64, ptr %i.nf, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 %i.ng, ptr %i.j, align 8, !tbaa !48
  %i.nh = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052612log_internal10LogMessagelsImEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %bb.dg unwind label %bb.dk     ; 2 uses

bb.dg:                                            ; preds = %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.nh, i64 2, ptr nonnull @.str.25)
          to label %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi3EEERS2_RAT__Kc.exit unwind label %bb.dk

_ZN4absl12lts_2026052612log_internal10LogMessagelsILi3EEERS2_RAT__Kc.exit: ; preds = %bb.dg
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0316.0, i64 %.0461
  %i.nj = load i64, ptr %i.ni, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 %i.nj, ptr %i.i, align 8, !tbaa !48
  %i.nk = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052612log_internal10LogMessagelsIlEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.nh, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %bb.dh unwind label %bb.dk     ; 2 uses

bb.dh:                                            ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi3EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.nk, i64 7, ptr nonnull @.str.26)
          to label %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi8EEERS2_RAT__Kc.exit unwind label %bb.dk

_ZN4absl12lts_2026052612log_internal10LogMessagelsILi8EEERS2_RAT__Kc.exit: ; preds = %bb.dh
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0334.2, i64 %.0461
  %i.nm = load double, ptr %i.nl, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store double %i.nm, ptr %i.h, align 8, !tbaa !95
  %i.nn = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052612log_internal10LogMessagelsIdEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.nk, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.di unwind label %bb.dk

bb.di:                                            ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi8EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.nn)
          to label %_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit248 unwind label %bb.dk

_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit248: ; preds = %bb.di
  call void @_ZN4absl12lts_2026052612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  %i.no = add nuw i64 %.0461, 1                   ; 2 uses
  %exitcond485.not = icmp eq i64 %i.no, %i.mf
  br i1 %exitcond485.not, label %._crit_edge463, label %.lr.ph462, !llvm.loop !316

bb.dj:                                            ; preds = %.lr.ph462
  %i.np = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.dk:                                            ; preds = %bb.di, %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi8EEERS2_RAT__Kc.exit, %bb.dh, %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi3EEERS2_RAT__Kc.exit, %bb.dg, %bb.df
  %i.nq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2026052612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #38
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %.pn136 = phi { ptr, i32 } [ %i.nq, %bb.dk ], [ %i.np, %bb.dj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  br label %bb.ew

bb.dm:                                            ; preds = %._crit_edge463
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %13, i64 7, ptr nonnull @.str.27)
          to label %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi8EEERS2_RAT__Kc.exit250 unwind label %bb.eb

_ZN4absl12lts_2026052612log_internal10LogMessagelsILi8EEERS2_RAT__Kc.exit250: ; preds = %bb.dm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %i.gu, ptr %i.g, align 8, !tbaa !48
  %i.nr = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052612log_internal10LogMessagelsImEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.dn unwind label %bb.eb

bb.dn:                                            ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi8EEERS2_RAT__Kc.exit250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.nr)
          to label %_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit254 unwind label %bb.eb

_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit254: ; preds = %bb.dn
  call void @_ZN4absl12lts_2026052612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #34
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull @.str.1, i32 noundef 310) #37
          to label %bb.do unwind label %bb.ed

bb.do:                                            ; preds = %_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit254
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %14, i64 5, ptr nonnull @.str.28)
          to label %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi6EEERS2_RAT__Kc.exit unwind label %bb.ee

_ZN4absl12lts_2026052612log_internal10LogMessagelsILi6EEERS2_RAT__Kc.exit: ; preds = %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store double %i.lo, ptr %i.f, align 8, !tbaa !95
  %i.ns = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052612log_internal10LogMessagelsIdEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.dp unwind label %bb.ee     ; 2 uses

bb.dp:                                            ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi6EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ns, i64 14, ptr nonnull @.str.29)
          to label %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi15EEERS2_RAT__Kc.exit unwind label %bb.ee

_ZN4absl12lts_2026052612log_internal10LogMessagelsILi15EEERS2_RAT__Kc.exit: ; preds = %bb.dp
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val = load double, ptr %i.nt, align 16, !tbaa !321
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store double %.val, ptr %i.e, align 8, !tbaa !95
  %i.nu = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052612log_internal10LogMessagelsIdEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ns, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.dq unwind label %bb.ee

bb.dq:                                            ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi15EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.nu)
          to label %_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit262 unwind label %bb.ee

_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit262: ; preds = %bb.dq
  call void @_ZN4absl12lts_2026052612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #34
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull @.str.1, i32 noundef 311) #37
          to label %bb.dr unwind label %bb.eg

bb.dr:                                            ; preds = %_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit262
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %15, i64 11, ptr nonnull @_ZN4absl12lts_2026052615random_internalL11kChiSquaredE)
          to label %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit unwind label %bb.eh

_ZN4absl12lts_2026052612log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit: ; preds = %bb.dr
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %15, i64 7, ptr nonnull @.str.30)
          to label %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi8EEERS2_RAT__Kc.exit265 unwind label %bb.eh

_ZN4absl12lts_2026052612log_internal10LogMessagelsILi8EEERS2_RAT__Kc.exit265: ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 %i.mh, ptr %i.d, align 4, !tbaa !58
  %i.nv = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052612log_internal10LogMessagelsIiEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %bb.ds unwind label %bb.eh     ; 2 uses

bb.ds:                                            ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi8EEERS2_RAT__Kc.exit265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.nv, i64 4, ptr nonnull @.str.31)
          to label %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi5EEERS2_RAT__Kc.exit unwind label %bb.eh

_ZN4absl12lts_2026052612log_internal10LogMessagelsILi5EEERS2_RAT__Kc.exit: ; preds = %bb.ds
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store double %.0.lcssa.i238, ptr %i.c, align 8, !tbaa !95
  %i.nw = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052612log_internal10LogMessagelsIdEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.nv, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.dt unwind label %bb.eh     ; 2 uses

bb.dt:                                            ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi5EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.nw, i64 2, ptr nonnull @.str.32)
          to label %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi3EEERS2_RAT__Kc.exit271 unwind label %bb.eh

_ZN4absl12lts_2026052612log_internal10LogMessagelsILi3EEERS2_RAT__Kc.exit271: ; preds = %bb.dt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store double %i.mz, ptr %i.b, align 8, !tbaa !95
  %i.nx = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052612log_internal10LogMessagelsIdEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.nw, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.du unwind label %bb.eh     ; 2 uses

bb.du:                                            ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi3EEERS2_RAT__Kc.exit271
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.nx, i64 1, ptr nonnull @.str.33)
          to label %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit unwind label %bb.eh

_ZN4absl12lts_2026052612log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit: ; preds = %bb.du
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.nx)
end_hunk_1
