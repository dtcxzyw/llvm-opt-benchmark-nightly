Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/condition?download=true
inline.NumInlined: 658
inline.NumDeleted: 230
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN7CaDiCaL8Internal15condition_roundEl:bb.a
  %i.if = load ptr, ptr %.sroa.0530.01043, align 8, !tbaa !169
  store ptr %i.if, ptr %i.ie, align 8, !tbaa !169
  %i.ig = icmp sgt i64 %i.hv, 0
  br i1 %i.ig, label %bb.ai, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i398

bb.ai:                                            ; preds = %.noexc402
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.id, ptr align 8 %i.hs, i64 %i.hv, i1 false)
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i398

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i398: ; preds = %bb.ai, %.noexc402
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %.not.i17.i.i399 = icmp eq ptr %i.hs, null
  br i1 %.not.i17.i.i399, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i400, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i398
  tail call void @_ZdlPv(ptr noundef nonnull %i.hs) #15
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i400

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i400: ; preds = %bb.aj, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i398
  store ptr %i.id, ptr %i.hm, align 8, !tbaa !168
  store ptr %i.ih, ptr %i.hn, align 8, !tbaa !167
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %i.ib
  store ptr %i.ii, ptr %i.hp, align 8, !tbaa !171
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit403.thread

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit403: ; preds = %.critedge
  %i.ij = icmp slt i32 %.02711019.ph1464.lcssa, 1
  br i1 %i.ij, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit403.thread, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit403
  %.not3641023 = icmp eq i32 %i.fh, 0
  br i1 %.not3641023, label %._crit_edge1031, label %.lr.ph1030

._crit_edge1031:                                  ; preds = %bb.as, %bb.ak
  %.sroa.0544.1.lcssa = phi ptr [ %.sroa.0544.01037, %bb.ak ], [ %.sroa.0544.2, %bb.as ]
  %.sroa.17.1.lcssa = phi ptr [ %.sroa.17.05731038, %bb.ak ], [ %.sroa.17.2, %bb.as ]
  %.sroa.30.1.lcssa = phi ptr [ %.sroa.30.01039, %bb.ak ], [ %.sroa.30.2, %bb.as ]
  %.0260.lcssa = phi i64 [ 0, %bb.ak ], [ %.1261, %bb.as ] ; 2 uses
  %i.ik = add i64 %.0260.lcssa, %.sroa.10.01045
  %i.il = sub i64 %.sroa.17.01044, %.0260.lcssa
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit403.thread

.lr.ph1030:                                       ; preds = %bb.ak, %bb.as
  %i.im = phi ptr [ %i.jw, %bb.as ], [ %i.fb, %bb.ak ] ; 3 uses
  %.02591028 = phi ptr [ %i.jx, %bb.as ], [ %i.ff, %bb.ak ] ; 2 uses
  %.02601027 = phi i64 [ %.1261, %bb.as ], [ 0, %bb.ak ] ; 4 uses
  %.sroa.30.11026 = phi ptr [ %.sroa.30.2, %bb.as ], [ %.sroa.30.01039, %bb.ak ] ; 6 uses
  %.sroa.17.11025 = phi ptr [ %.sroa.17.2, %bb.as ], [ %.sroa.17.05731038, %bb.ak ] ; 6 uses
  %.sroa.0544.11024 = phi ptr [ %.sroa.0544.2, %bb.as ], [ %.sroa.0544.01037, %bb.ak ] ; 9 uses
  %i.in = load i32, ptr %.02591028, align 4, !tbaa !195 ; 3 uses
  %i.io = load ptr, ptr %i.dq, align 8, !tbaa !165 ; 2 uses
  %i.ip = sext i32 %i.in to i64
  %i.iq = getelementptr inbounds i8, ptr %i.io, i64 %i.ip
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !166
  %.not365 = icmp eq i8 %i.ir, 0
  br i1 %.not365, label %bb.as, label %bb.al

.loopexit693:                                     ; preds = %.critedge377, %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i395
  %.sroa.0533.2.ph = phi ptr [ %.sroa.0533.01040, %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.0533.7, %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i395 ], [ %.sroa.0533.01040, %.critedge377 ]
  %lpad.loopexit696 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit464

.loopexit.split-lp694:                            ; preds = %bb.ab, %bb.ah
  %.sroa.0533.2.ph695 = phi ptr [ %.sroa.0533.01040, %bb.ab ], [ %.sroa.0533.7, %bb.ah ]
  %lpad.loopexit.split-lp697 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit464

bb.al:                                            ; preds = %.lr.ph1030
  %i.is = tail call i32 @llvm.abs.i32(i32 %i.in, i1 true)
  %i.it = zext nneg i32 %i.is to i64              ; 3 uses
  %i.iu = load ptr, ptr %i.dr, align 8, !tbaa !196
  %i.iv = getelementptr inbounds nuw [16 x i8], ptr %i.iu, i64 %i.it
  %i.iw = load i32, ptr %i.iv, align 8, !tbaa !198
  %.not366 = icmp eq i32 %i.iw, 0
  br i1 %.not366, label %bb.as, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ix = sub nsw i32 0, %i.in                    ; 3 uses
  %i.iy = sext i32 %i.ix to i64
  %i.iz = getelementptr inbounds i8, ptr %i.io, i64 %i.iy
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !166
  %i.jb = icmp sgt i8 %i.ja, 0
  %.pre1351 = load ptr, ptr %i.dt, align 8, !tbaa !210 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.pre1351, i64 %i.it
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !166 ; 2 uses
  %i.je = trunc i8 %i.jd to i1
  %or.cond1742 = select i1 %i.jb, i1 %i.je, i1 false
  br i1 %or.cond1742, label %bb.as, label %_ZNK7CaDiCaL8Internal22is_conditional_literalEi.exit.thread

_ZNK7CaDiCaL8Internal22is_conditional_literalEi.exit.thread: ; preds = %bb.am
  %i.jf = getelementptr inbounds nuw i8, ptr %.pre1351, i64 %i.it
  %i.jg = or i8 %i.jd, 1
  store i8 %i.jg, ptr %i.jf, align 1, !tbaa !166
  %.not.i.i = icmp eq ptr %.sroa.17.11025, %.sroa.30.11026
  br i1 %.not.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZNK7CaDiCaL8Internal22is_conditional_literalEi.exit.thread
  store i32 %i.ix, ptr %.sroa.17.11025, align 4, !tbaa !195
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.ao:                                            ; preds = %_ZNK7CaDiCaL8Internal22is_conditional_literalEi.exit.thread
  %i.jh = ptrtoint ptr %.sroa.30.11026 to i64
  %i.ji = ptrtoint ptr %.sroa.0544.11024 to i64
  %i.jj = sub i64 %i.jh, %i.ji                    ; 5 uses
  %i.jk = icmp eq i64 %i.jj, 9223372036854775804
  br i1 %i.jk, label %bb.ap, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #13
          to label %.noexc404 unwind label %.loopexit.split-lp689.loopexit.split-lp

.noexc404:                                        ; preds = %bb.ap
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ao
  %i.jl = ashr exact i64 %i.jj, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.jl, i64 1)
  %i.jm = add nsw i64 %.sroa.speculated.i.i.i.i, %i.jl ; 2 uses
  %i.jn = icmp ult i64 %i.jm, %i.jl
  %i.jo = tail call i64 @llvm.umin.i64(i64 %i.jm, i64 2305843009213693951)
  %i.jp = select i1 %i.jn, i64 2305843009213693951, i64 %i.jo ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.jp, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.jq = shl nuw nsw i64 %i.jp, 2
  %i.jr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jq) #14
          to label %.noexc405 unwind label %.loopexit.split-lp689.loopexit.split-lp ; 4 uses

.noexc405:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.js = getelementptr inbounds i8, ptr %i.jr, i64 %i.jj ; 2 uses
  store i32 %i.ix, ptr %i.js, align 4, !tbaa !195
  %i.jt = icmp sgt i64 %i.jj, 0
  br i1 %i.jt, label %bb.aq, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.aq:                                            ; preds = %.noexc405
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.jr, ptr align 4 %.sroa.0544.11024, i64 %i.jj, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.aq, %.noexc405
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0544.11024, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0544.11024) #15
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.ar, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %i.jp
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.an
  %.sroa.0544.23 = phi ptr [ %i.jr, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.0544.11024, %bb.an ]
  %.pn658 = phi ptr [ %i.js, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.17.11025, %bb.an ]
  %.sroa.30.15 = phi ptr [ %i.ju, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.30.11026, %bb.an ]
  %.sroa.17.17 = getelementptr inbounds nuw i8, ptr %.pn658, i64 4
  %i.jv = add i64 %.02601027, 1
  %.pre1353 = load ptr, ptr %.sroa.0530.01043, align 8, !tbaa !169
  br label %bb.as

bb.as:                                            ; preds = %bb.am, %bb.al, %.lr.ph1030, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.jw = phi ptr [ %i.im, %.lr.ph1030 ], [ %i.im, %bb.al ], [ %i.im, %bb.am ], [ %.pre1353, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 3 uses
  %.sroa.0544.2 = phi ptr [ %.sroa.0544.11024, %.lr.ph1030 ], [ %.sroa.0544.11024, %bb.al ], [ %.sroa.0544.11024, %bb.am ], [ %.sroa.0544.23, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %.sroa.17.2 = phi ptr [ %.sroa.17.11025, %.lr.ph1030 ], [ %.sroa.17.11025, %bb.al ], [ %.sroa.17.11025, %bb.am ], [ %.sroa.17.17, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %.sroa.30.2 = phi ptr [ %.sroa.30.11026, %.lr.ph1030 ], [ %.sroa.30.11026, %bb.al ], [ %.sroa.30.11026, %bb.am ], [ %.sroa.30.15, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %.1261 = phi i64 [ %.02601027, %.lr.ph1030 ], [ %.02601027, %bb.al ], [ %.02601027, %bb.am ], [ %i.jv, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.02591028, i64 4 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jw, i64 24
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  %i.ka = load i32, ptr %i.jz, align 8, !tbaa !195
  %i.kb = sext i32 %i.ka to i64
  %i.kc = getelementptr inbounds [4 x i8], ptr %i.jy, i64 %i.kb
  %.not364 = icmp eq ptr %i.jx, %i.kc
  br i1 %.not364, label %._crit_edge1031, label %.lr.ph1030, !llvm.loop !177

.loopexit.split-lp689.loopexit.split-lp:          ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i, %bb.ap
  %lpad.loopexit.split-lp2349 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit464

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit403.thread: ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit, %bb.af, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i400, %.critedge377, %._crit_edge1031, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit403, %bb.t
  %.sroa.0544.3 = phi ptr [ %.sroa.0544.01037, %.critedge377 ], [ %.sroa.0544.01037, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit403 ], [ %.sroa.0544.1.lcssa, %._crit_edge1031 ], [ %.sroa.0544.01037, %bb.t ], [ %.sroa.0544.01037, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i400 ], [ %.sroa.0544.01037, %bb.af ], [ %.sroa.0544.01037, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %.sroa.17.3574 = phi ptr [ %.sroa.17.05731038, %.critedge377 ], [ %.sroa.17.05731038, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit403 ], [ %.sroa.17.1.lcssa, %._crit_edge1031 ], [ %.sroa.17.05731038, %bb.t ], [ %.sroa.17.05731038, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i400 ], [ %.sroa.17.05731038, %bb.af ], [ %.sroa.17.05731038, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %.sroa.30.3 = phi ptr [ %.sroa.30.01039, %.critedge377 ], [ %.sroa.30.01039, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit403 ], [ %.sroa.30.1.lcssa, %._crit_edge1031 ], [ %.sroa.30.01039, %bb.t ], [ %.sroa.30.01039, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i400 ], [ %.sroa.30.01039, %bb.af ], [ %.sroa.30.01039, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %.sroa.0533.3 = phi ptr [ %.sroa.0533.01040, %.critedge377 ], [ %.sroa.0533.01040, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit403 ], [ %.sroa.0533.01040, %._crit_edge1031 ], [ %.sroa.0533.01040, %bb.t ], [ %.sroa.0533.7, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i400 ], [ %.sroa.0533.7, %bb.af ], [ %.sroa.0533.7, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit ] ; 3 uses
  %.sroa.13.2 = phi ptr [ %.sroa.13.01041, %.critedge377 ], [ %.sroa.13.01041, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit403 ], [ %.sroa.13.01041, %._crit_edge1031 ], [ %.sroa.13.01041, %bb.t ], [ %.sroa.13.3, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i400 ], [ %.sroa.13.3, %bb.af ], [ %.sroa.13.3, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %.sroa.19.2 = phi ptr [ %.sroa.19.01042, %.critedge377 ], [ %.sroa.19.01042, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit403 ], [ %.sroa.19.01042, %._crit_edge1031 ], [ %.sroa.19.01042, %bb.t ], [ %.sroa.19.3, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i400 ], [ %.sroa.19.3, %bb.af ], [ %.sroa.19.3, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %.sroa.17.3 = phi i64 [ %.sroa.17.01044, %.critedge377 ], [ %.sroa.17.01044, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit403 ], [ %i.il, %._crit_edge1031 ], [ %.sroa.17.01044, %bb.t ], [ %.sroa.17.01044, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i400 ], [ %.sroa.17.01044, %bb.af ], [ %.sroa.17.01044, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %.sroa.10.3 = phi i64 [ %.sroa.10.01045, %.critedge377 ], [ %.sroa.10.01045, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit403 ], [ %i.ik, %._crit_edge1031 ], [ %.sroa.10.01045, %bb.t ], [ %.sroa.10.01045, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i400 ], [ %.sroa.10.01045, %bb.af ], [ %.sroa.10.01045, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %.3282 = phi i64 [ %.02791046, %.critedge377 ], [ %.02791046, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit403 ], [ %.02791046, %._crit_edge1031 ], [ %.02791046, %bb.t ], [ %.1280, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i400 ], [ %.1280, %bb.af ], [ %.1280, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %.3278 = phi i64 [ %.02751047, %.critedge377 ], [ %.02751047, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit403 ], [ %.02751047, %._crit_edge1031 ], [ %.02751047, %bb.t ], [ %.1276, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i400 ], [ %.1276, %bb.af ], [ %.1276, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %.sroa.0530.01043, i64 8 ; 2 uses
  %.not648 = icmp eq ptr %i.kd, %i.dp
  br i1 %.not648, label %._crit_edge1050.loopexit, label %bb.t

._crit_edge1065:                                  ; preds = %bb.aw, %._crit_edge1050
  %or.cond8 = select i1 %.0279.lcssa, i1 %.0275.lcssa, i1 false
  br i1 %or.cond8, label %bb.ax, label %bb.be

bb.at:                                            ; preds = %.lr.ph1064, %bb.aw
  %i.ke = phi ptr [ %.pre1355.a, %.lr.ph1064 ], [ %5, %bb.aw ] ; 3 uses
  %.sroa.0524.01062 = phi ptr [ %i.ex, %.lr.ph1064 ], [ %i.kt, %bb.aw ] ; 2 uses
  %i.kf = load i32, ptr %.sroa.0524.01062, align 4, !tbaa !195 ; 4 uses
  %i.kg = tail call noundef i32 @llvm.abs.i32(i32 %i.kf, i1 true)
  %i.kh = zext nneg i32 %i.kg to i64              ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ke, i64 %i.kh
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !166 ; 2 uses
  %.not.i406 = icmp eq i8 %i.kj, 0
  br i1 %.not.i406, label %_ZN7CaDiCaL8Internal5fixedEi.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %2 = sext i8 %i.kj to i32
  %i.kk = load ptr, ptr %i.fa, align 8, !tbaa !196
  %i.kl = getelementptr inbounds nuw [16 x i8], ptr %i.kk, i64 %i.kh
  %i.km = load i32, ptr %i.kl, align 8, !tbaa !198
  %.not9.i = icmp eq i32 %i.km, 0
  %spec.select.i = select i1 %.not9.i, i32 %2, i32 0
  br label %_ZN7CaDiCaL8Internal5fixedEi.exit

_ZN7CaDiCaL8Internal5fixedEi.exit:                ; preds = %bb.at, %bb.au
  %.0.i = phi i32 [ 0, %bb.at ], [ %spec.select.i, %bb.au ] ; 2 uses
  %3 = icmp slt i32 %i.kf, 0
  %4 = sub nsw i32 0, %.0.i
  %spec.select10.i = select i1 %3, i32 %4, i32 %.0.i
  %.not355 = icmp eq i32 %spec.select10.i, 0
  br i1 %.not355, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %_ZN7CaDiCaL8Internal5fixedEi.exit
  %i.kn = sext i32 %i.kf to i64
  %i.ko = getelementptr inbounds i8, ptr %i.ke, i64 %i.kn
  store i8 0, ptr %i.ko, align 1, !tbaa !166
  %i.kp = load ptr, ptr %i.ez, align 8, !tbaa !165
  %i.kq = sub nsw i32 0, %i.kf
  %i.kr = sext i32 %i.kq to i64
  %i.ks = getelementptr inbounds i8, ptr %i.kp, i64 %i.kr
  store i8 0, ptr %i.ks, align 1, !tbaa !166
  %.pre1354 = load ptr, ptr %i.ez, align 8, !tbaa !165
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %_ZN7CaDiCaL8Internal5fixedEi.exit
  %5 = phi ptr [ %.pre1354, %bb.av ], [ %i.ke, %_ZN7CaDiCaL8Internal5fixedEi.exit ]
  %i.kt = getelementptr inbounds nuw i8, ptr %.sroa.0524.01062, i64 4 ; 2 uses
  %.not649 = icmp eq ptr %i.kt, %i.ey
  br i1 %.not649, label %._crit_edge1065, label %bb.at

bb.ax:                                            ; preds = %._crit_edge1065
  %i.ku = icmp eq ptr %.sroa.0533.0.lcssa, %.sroa.13.0.lcssa
  br i1 %i.ku, label %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS2_16less_conditionedEEvT_SB_T0_.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.kv = ptrtoint ptr %.sroa.13.0.lcssa to i64
  %i.kw = ptrtoint ptr %.sroa.0533.0.lcssa to i64
  %i.kx = sub i64 %i.kv, %i.kw
  %i.ky = ashr exact i64 %i.kx, 3                 ; 2 uses
  %i.kz = add nsw i64 %i.ky, 1
  %i.la = sdiv i64 %i.kz, 2                       ; 3 uses
  %i.lb = icmp sgt i64 %i.ky, 0
  br i1 %i.lb, label %.lr.ph.i.i.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ay, %select.unfold.i.i.i.i
  %.010.i.i.i.i = phi i64 [ %i.lg, %select.unfold.i.i.i.i ], [ %i.la, %bb.ay ] ; 4 uses
  %i.lc = shl nuw nsw i64 %.010.i.i.i.i, 3
  %i.ld = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.lc, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #16 ; 2 uses
  %.not.i.i.i.i407 = icmp eq ptr %i.ld, null
  br i1 %.not.i.i.i.i407, label %select.unfold.i.i.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit.i.i

select.unfold.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i
  %i.le = icmp eq i64 %.010.i.i.i.i, 1
  %i.lf = add nuw nsw i64 %.010.i.i.i.i, 1
  %i.lg = lshr i64 %i.lf, 1
  br i1 %i.le, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !178

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit.i.i: ; preds = %select.unfold.i.i.i.i, %.lr.ph.i.i.i.i, %bb.ay
  %.sroa.5.0.i.i = phi i64 [ 0, %bb.ay ], [ %.010.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %select.unfold.i.i.i.i ] ; 2 uses
  %.sroa.10.0.i.i = phi ptr [ null, %bb.ay ], [ %i.ld, %.lr.ph.i.i.i.i ], [ null, %select.unfold.i.i.i.i ] ; 5 uses
  %i.lh = icmp eq i64 %i.la, %.sroa.5.0.i.i
  br i1 %i.lh, label %bb.az, label %bb.ba, !prof !172

bb.az:                                            ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit.i.i
  %i.li = getelementptr inbounds [8 x i8], ptr %.sroa.0533.0.lcssa, i64 %i.la
  invoke void @_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterINS2_16less_conditionedEEEEvT_SE_SE_T0_T1_(ptr %.sroa.0533.0.lcssa, ptr %i.li, ptr %.sroa.13.0.lcssa, ptr noundef %.sroa.10.0.i.i)
          to label %bb.bd unwind label %.body.thread

.body.thread:                                     ; preds = %bb.az, %bb.bb, %bb.bc
  %i.lj = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %.sroa.10.0.i.i) #17
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit464

bb.ba:                                            ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit.i.i
  %i.lk = icmp eq ptr %.sroa.10.0.i.i, null
  br i1 %i.lk, label %bb.bb, label %bb.bc, !prof !211

bb.bb:                                            ; preds = %bb.ba
  invoke void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS2_16less_conditionedEEEEvT_SE_T0_(ptr %.sroa.0533.0.lcssa, ptr %.sroa.13.0.lcssa)
          to label %bb.bd unwind label %.body.thread

bb.bc:                                            ; preds = %bb.ba
  invoke void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_comp_iterINS2_16less_conditionedEEEEvT_SE_T0_T1_T2_(ptr %.sroa.0533.0.lcssa, ptr %.sroa.13.0.lcssa, ptr noundef nonnull %.sroa.10.0.i.i, i64 noundef %.sroa.5.0.i.i)
          to label %bb.bd unwind label %.body.thread

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %bb.az
  tail call void @_ZdlPv(ptr noundef %.sroa.10.0.i.i) #17
  br label %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS2_16less_conditionedEEvT_SB_T0_.exit

bb.be:                                            ; preds = %._crit_edge1065
  %.not1356 = xor i1 %.0279.lcssa, true
  %or.cond10 = select i1 %.not1356, i1 true, i1 %.0275.lcssa
  %.not6501066 = icmp eq ptr %.sroa.0533.0.lcssa, %.sroa.13.0.lcssa
  %or.cond1184.a = select i1 %or.cond10, i1 true, i1 %.not6501066
  br i1 %or.cond1184.a, label %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS2_16less_conditionedEEvT_SB_T0_.exit, label %.lr.ph1068

.lr.ph1068:                                       ; preds = %bb.be, %.lr.ph1068
  %.sroa.0506.01067 = phi ptr [ %i.lp, %.lr.ph1068 ], [ %.sroa.0533.0.lcssa, %bb.be ] ; 2 uses
  %i.ll = load ptr, ptr %.sroa.0506.01067, align 8, !tbaa !169
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 8 ; 2 uses
  %i.ln = load i32, ptr %i.lm, align 8
  %i.lo = and i32 %i.ln, -2
  store i32 %i.lo, ptr %i.lm, align 8
  %i.lp = getelementptr inbounds nuw i8, ptr %.sroa.0506.01067, i64 8 ; 2 uses
  %.not650 = icmp eq ptr %i.lp, %.sroa.13.0.lcssa
  br i1 %.not650, label %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS2_16less_conditionedEEvT_SB_T0_.exit, label %.lr.ph1068

_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS2_16less_conditionedEEvT_SB_T0_.exit: ; preds = %.lr.ph1068, %bb.bd, %bb.ax, %bb.be
  %i.lq = icmp eq i64 %.sroa.17.0.lcssa, 0
  %i.lr = icmp eq ptr %.sroa.0533.0.lcssa, %.sroa.13.0.lcssa
  %or.cond6421144 = select i1 %i.lr, i1 true, i1 %i.lq
  br i1 %or.cond6421144, label %.critedge381.thread, label %.lr.ph1153

.lr.ph1153:                                       ; preds = %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS2_16less_conditionedEEvT_SB_T0_.exit
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 5680 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 2960 ; 3 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 2964 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 5672 ; 4 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 3800
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 10 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 9 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 4120 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 4144 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 3104
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 4088 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 4136 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 4112 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 4080 ; 2 uses
  %i.mh = insertelement <2 x i64> poison, i64 %.sroa.17.0.lcssa, i64 0
  %i.mi = insertelement <2 x i64> %i.mh, i64 %.sroa.10.0.lcssa, i64 1
  br label %bb.bf

bb.bf:                                            ; preds = %.lr.ph1153, %.critedge381
  %.02531152 = phi i64 [ 0, %.lr.ph1153 ], [ %.4257, %.critedge381 ] ; 10 uses
  %.sroa.0502.01151 = phi ptr [ %.sroa.0533.0.lcssa, %.lr.ph1153 ], [ %i.aak, %.critedge381 ] ; 13 uses
  %.sroa.23.01150 = phi ptr [ null, %.lr.ph1153 ], [ %.sroa.23.3, %.critedge381 ] ; 8 uses
  %.sroa.14.01149 = phi ptr [ null, %.lr.ph1153 ], [ %.sroa.14.5, %.critedge381 ] ; 5 uses
  %.sroa.0509.01148 = phi ptr [ null, %.lr.ph1153 ], [ %.sroa.0509.5, %.critedge381 ] ; 9 uses
  %.sroa.30.41147 = phi ptr [ %.sroa.30.0.lcssa, %.lr.ph1153 ], [ %.sroa.30.13, %.critedge381 ] ; 8 uses
  %.sroa.17.41146 = phi ptr [ %.sroa.17.0573.lcssa, %.lr.ph1153 ], [ %.sroa.17.15, %.critedge381 ] ; 8 uses
  %.sroa.0544.51145 = phi ptr [ %.sroa.0544.0.lcssa, %.lr.ph1153 ], [ %.sroa.0544.18, %.critedge381 ] ; 9 uses
  %i.mj = load ptr, ptr %.sroa.0502.01151, align 8, !tbaa !169
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  %i.ml = load i32, ptr %i.mk, align 8
  %i.mm = and i32 %i.ml, 1024
  %.not = icmp eq i32 %i.mm, 0
  br i1 %.not, label %bb.bg, label %.critedge381

bb.bg:                                            ; preds = %bb.bf
  %i.mn = load volatile i8, ptr %i.ls, align 8, !tbaa !212, !range !158, !noundef !159
  %i.mo = trunc nuw i8 %i.mn to i1
  br i1 %i.mo, label %.critedge381.thread, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.mp = load i32, ptr %i.lu, align 4, !tbaa !213 ; 3 uses
  %.not.i408 = icmp eq i32 %i.mp, 0
  br i1 %.not.i408, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.mq = add nsw i32 %i.mp, -1
  store i32 %i.mq, ptr %i.lu, align 4, !tbaa !213
  %i.mr = icmp eq i32 %i.mp, 1
  br i1 %i.mr, label %.sink.split.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.ms = load ptr, ptr %i.lv, align 8, !tbaa !214
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 360
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !233 ; 3 uses
  %.not3.i = icmp eq ptr %i.mu, null
  br i1 %.not3.i, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.mv = load i32, ptr %i.lt, align 8, !tbaa !234 ; 2 uses
  %i.mw = add nsw i32 %i.mv, -1
  store i32 %i.mw, ptr %i.lt, align 8, !tbaa !234
  %.not4.i = icmp eq i32 %i.mv, 0
  br i1 %.not4.i, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.mx = load i32, ptr %i.lw, align 8, !tbaa !235
  store i32 %i.mx, ptr %i.lt, align 8, !tbaa !234
  %i.my = load ptr, ptr %i.mu, align 8, !tbaa !237
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 16
  %i.na = load ptr, ptr %i.mz, align 8
  %i.nb = invoke noundef zeroext i1 %i.na(ptr noundef nonnull align 8 dereferenceable(8) %i.mu)
          to label %.noexc410 unwind label %bb.db, !inline_history !179

.noexc410:                                        ; preds = %bb.bl
  br i1 %i.nb, label %.sink.split.i, label %bb.bm

.sink.split.i:                                    ; preds = %.noexc410, %bb.bi
  store volatile i8 1, ptr %i.ls, align 8, !tbaa !212
  br label %.critedge381.thread

bb.bm:                                            ; preds = %bb.bk, %bb.bj, %.noexc410
  %i.nc = load i64, ptr %i.a, align 8, !tbaa !190
  %.not323.not = icmp slt i64 %i.nc, %.0239
  br i1 %.not323.not, label %bb.bn, label %.critedge381.thread

bb.bn:                                            ; preds = %bb.bm
  %i.nd = load ptr, ptr %.sroa.0502.01151, align 8, !tbaa !169
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 8 ; 2 uses
  %i.nf = load i32, ptr %i.ne, align 8
  %i.ng = or i32 %i.nf, 1
  store i32 %i.ng, ptr %i.ne, align 8
  %i.nh = load ptr, ptr %.sroa.0502.01151, align 8, !tbaa !169 ; 3 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 24 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nh, i64 16
  %i.nk = load i32, ptr %i.nj, align 8, !tbaa !195
  %.not3241069 = icmp eq i32 %i.nk, 0
  br i1 %.not3241069, label %.preheader673, label %.lr.ph1073

._crit_edge1074:                                  ; preds = %_ZNK7CaDiCaL8Internal18is_autarky_literalEi.exit.thread
  %i.nl = sext i32 %i.om to i64
  %.not325 = icmp eq i32 %.1249, 0
  br i1 %.not325, label %.preheader673, label %bb.bp

.preheader673:                                    ; preds = %bb.bn, %._crit_edge1074.thread1424, %._crit_edge1074
  %.lcssa1420 = phi ptr [ %i.or, %._crit_edge1074.thread1424 ], [ %i.ok, %._crit_edge1074 ], [ %i.ni, %bb.bn ] ; 2 uses
  %i.nm = phi ptr [ %i.oq, %._crit_edge1074.thread1424 ], [ %i.oj, %._crit_edge1074 ], [ %i.nh, %bb.bn ]
  %i.nn = phi i64 [ %i.ow, %._crit_edge1074.thread1424 ], [ %i.nl, %._crit_edge1074 ], [ 0, %bb.bn ]
  %i.no = getelementptr inbounds nuw i8, ptr %i.nm, i64 24
  %i.np = getelementptr inbounds [4 x i8], ptr %i.no, i64 %i.nn
  %.not3261141 = icmp eq ptr %.lcssa1420, %i.np
end_hunk_0
