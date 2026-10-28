Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/condition?download=true
inline.NumInlined: 671
inline.NumDeleted: 233
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN7CaDiCaL8Internal15condition_roundEl:bb.a
  %i.ip = getelementptr inbounds nuw i8, ptr %.pre1551, i64 %i.id
  %i.iq = or i8 %i.in, 1
  store i8 %i.iq, ptr %i.ip, align 1, !tbaa !168
  %.not.i.i = icmp eq ptr %.sroa.17.11189, %.sroa.30.11190
  br i1 %.not.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_ZNK7CaDiCaL8Internal22is_conditional_literalEi.exit.thread
  store i32 %i.ih, ptr %.sroa.17.11189, align 4, !tbaa !199
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.as:                                            ; preds = %_ZNK7CaDiCaL8Internal22is_conditional_literalEi.exit.thread
  %i.ir = ptrtoint ptr %.sroa.30.11190 to i64
  %i.is = ptrtoint ptr %.sroa.0609.11188 to i64
  %i.it = sub i64 %i.ir, %i.is                    ; 5 uses
  %i.iu = icmp eq i64 %i.it, 9223372036854775804
  br i1 %i.iu, label %bb.at, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.at:                                            ; preds = %bb.as
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #13
          to label %.noexc459 unwind label %.loopexit.split-lp787.loopexit.split-lp

.noexc459:                                        ; preds = %bb.at
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.as
  %i.iv = ashr exact i64 %i.it, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.iv, i64 1)
  %i.iw = add nsw i64 %.sroa.speculated.i.i.i.i, %i.iv ; 2 uses
  %i.ix = icmp ult i64 %i.iw, %i.iv
  %i.iy = tail call i64 @llvm.umin.i64(i64 %i.iw, i64 2305843009213693951)
  %i.iz = select i1 %i.ix, i64 2305843009213693951, i64 %i.iy ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.iz, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ja = shl nuw nsw i64 %i.iz, 2
  %i.jb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ja) #14
          to label %.noexc460 unwind label %.loopexit.split-lp787.loopexit.split-lp ; 4 uses

.noexc460:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.jc = getelementptr inbounds i8, ptr %i.jb, i64 %i.it ; 2 uses
  store i32 %i.ih, ptr %i.jc, align 4, !tbaa !199
  %i.jd = icmp sgt i64 %i.it, 0
  br i1 %i.jd, label %bb.au, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.au:                                            ; preds = %.noexc460
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.jb, ptr align 4 %.sroa.0609.11188, i64 %i.it, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.au, %.noexc460
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0609.11188, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0609.11188) #15
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.av, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %i.iz
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.ar
  %.sroa.0609.25 = phi ptr [ %i.jb, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.0609.11188, %bb.ar ]
  %.pn750 = phi ptr [ %i.jc, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.17.11189, %bb.ar ]
  %.sroa.30.15 = phi ptr [ %i.je, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.30.11190, %bb.ar ]
  %.sroa.17.17 = getelementptr inbounds nuw i8, ptr %.pn750, i64 4
  %i.jf = add i64 %.02901191, 1
  %.pre1553 = load ptr, ptr %.sroa.0585.01207, align 8, !tbaa !173
  br label %bb.aw

bb.aw:                                            ; preds = %bb.aq, %bb.ap, %.lr.ph1194, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.jg = phi ptr [ %i.hw, %.lr.ph1194 ], [ %i.hw, %bb.ap ], [ %i.hw, %bb.aq ], [ %.pre1553, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 3 uses
  %.sroa.0609.2 = phi ptr [ %.sroa.0609.11188, %.lr.ph1194 ], [ %.sroa.0609.11188, %bb.ap ], [ %.sroa.0609.11188, %bb.aq ], [ %.sroa.0609.25, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %.sroa.17.2 = phi ptr [ %.sroa.17.11189, %.lr.ph1194 ], [ %.sroa.17.11189, %bb.ap ], [ %.sroa.17.11189, %bb.aq ], [ %.sroa.17.17, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %.sroa.30.2 = phi ptr [ %.sroa.30.11190, %.lr.ph1194 ], [ %.sroa.30.11190, %bb.ap ], [ %.sroa.30.11190, %bb.aq ], [ %.sroa.30.15, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %.1291 = phi i64 [ %.02901191, %.lr.ph1194 ], [ %.02901191, %bb.ap ], [ %.02901191, %bb.aq ], [ %i.jf, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.02891192, i64 4 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jg, i64 24
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  %i.jk = load i32, ptr %i.jj, align 8, !tbaa !199
  %i.jl = sext i32 %i.jk to i64
  %i.jm = getelementptr inbounds [4 x i8], ptr %i.ji, i64 %i.jl
  %.not419 = icmp eq ptr %i.jh, %i.jm
  br i1 %.not419, label %._crit_edge1195, label %.lr.ph1194, !llvm.loop !181

.loopexit.split-lp787.loopexit.split-lp:          ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i, %bb.at
  %lpad.loopexit.split-lp2728 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit519

.thread651:                                       ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit458, %.critedge432, %._crit_edge1195, %bb.an, %bb.w
  %.sroa.0609.3 = phi ptr [ %.sroa.0609.01201, %.critedge432 ], [ %.sroa.0609.01201, %bb.an ], [ %.sroa.0609.1.lcssa, %._crit_edge1195 ], [ %.sroa.0609.01201, %bb.w ], [ %.sroa.0609.01201, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit458 ], [ %.sroa.0609.01201, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %.sroa.17.3 = phi ptr [ %.sroa.17.01202, %.critedge432 ], [ %.sroa.17.01202, %bb.an ], [ %.sroa.17.1.lcssa, %._crit_edge1195 ], [ %.sroa.17.01202, %bb.w ], [ %.sroa.17.01202, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit458 ], [ %.sroa.17.01202, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %.sroa.30.3 = phi ptr [ %.sroa.30.01203, %.critedge432 ], [ %.sroa.30.01203, %bb.an ], [ %.sroa.30.1.lcssa, %._crit_edge1195 ], [ %.sroa.30.01203, %bb.w ], [ %.sroa.30.01203, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit458 ], [ %.sroa.30.01203, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %.sroa.0588.3 = phi ptr [ %.sroa.0588.01204, %.critedge432 ], [ %.sroa.0588.01204, %bb.an ], [ %.sroa.0588.01204, %._crit_edge1195 ], [ %.sroa.0588.01204, %bb.w ], [ %.sroa.0588.9, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit458 ], [ %.sroa.0588.9, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit ] ; 3 uses
  %.sroa.18.2 = phi ptr [ %.sroa.18.01205, %.critedge432 ], [ %.sroa.18.01205, %bb.an ], [ %.sroa.18.01205, %._crit_edge1195 ], [ %.sroa.18.01205, %bb.w ], [ %.sroa.18.3, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit458 ], [ %.sroa.18.3, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %.sroa.29.2 = phi ptr [ %.sroa.29.01206, %.critedge432 ], [ %.sroa.29.01206, %bb.an ], [ %.sroa.29.01206, %._crit_edge1195 ], [ %.sroa.29.01206, %bb.w ], [ %.sroa.29.3, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit458 ], [ %.sroa.29.3, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %.sroa.22.3 = phi i64 [ %.sroa.22.01208, %.critedge432 ], [ %.sroa.22.01208, %bb.an ], [ %i.hv, %._crit_edge1195 ], [ %.sroa.22.01208, %bb.w ], [ %.sroa.22.01208, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit458 ], [ %.sroa.22.01208, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %.sroa.13.3 = phi i64 [ %.sroa.13.01209, %.critedge432 ], [ %.sroa.13.01209, %bb.an ], [ %i.hu, %._crit_edge1195 ], [ %.sroa.13.01209, %bb.w ], [ %.sroa.13.01209, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit458 ], [ %.sroa.13.01209, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %.3342 = phi i64 [ %.03391210, %.critedge432 ], [ %.03391210, %bb.an ], [ %.03391210, %._crit_edge1195 ], [ %.03391210, %bb.w ], [ %i.hs, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit458 ], [ %.03391210, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %.3312 = phi i64 [ %.03091211, %.critedge432 ], [ %.03091211, %bb.an ], [ %.03091211, %._crit_edge1195 ], [ %.03091211, %bb.w ], [ %.1310, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit458 ], [ %.1310, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %.3308 = phi i64 [ %.03051212, %.critedge432 ], [ %.03051212, %bb.an ], [ %.03051212, %._crit_edge1195 ], [ %.03051212, %bb.w ], [ %.1306, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit458 ], [ %.1306, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.0585.01207, i64 8 ; 2 uses
  %.not735 = icmp eq ptr %i.jn, %i.ed
  br i1 %.not735, label %._crit_edge1215.loopexit, label %bb.w

bb.ax:                                            ; preds = %._crit_edge1215
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 4160 ; 4 uses
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !170
  %i.jq = ptrtoint ptr %.sroa.18.0.lcssa to i64
  %i.jr = ptrtoint ptr %.sroa.0588.0.lcssa to i64
  %i.js = sub i64 %i.jq, %i.jr
  %i.jt = ashr exact i64 %i.js, 3
  invoke void (ptr, ptr, i64, ptr, ...) @_ZN7CaDiCaL8Internal5phaseEPKclS2_z(ptr noundef nonnull align 8 dereferenceable(7288) %i.ej, ptr noundef nonnull @.str, i64 noundef %i.jp, ptr noundef nonnull @.str.2, i64 noundef %i.jt)
          to label %bb.az unwind label %bb.ay

bb.ay:                                            ; preds = %bb.u, %bb.bd, %bb.bc, %bb.ba, %bb.ax
  %.sroa.0609.5 = phi ptr [ %.sroa.0609.0.lcssa, %bb.bd ], [ %.sroa.0609.0.lcssa, %bb.bc ], [ %.sroa.0609.0.lcssa, %bb.ba ], [ %.sroa.0609.0.lcssa, %bb.ax ], [ null, %bb.u ]
  %.sroa.0588.5 = phi ptr [ %.sroa.0588.0.lcssa, %bb.bd ], [ %.sroa.0588.0.lcssa, %bb.bc ], [ %.sroa.0588.0.lcssa, %bb.ba ], [ %.sroa.0588.0.lcssa, %bb.ax ], [ null, %bb.u ]
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit519

bb.az:                                            ; preds = %bb.ax
  %.pr = load ptr, ptr %i.df, align 8, !tbaa !169 ; 2 uses
  %.not368 = icmp eq ptr %.pr, null
  br i1 %.not368, label %.thread668, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.jv = load i64, ptr %i.jo, align 8, !tbaa !170
  invoke void (ptr, ptr, i64, ptr, ...) @_ZN7CaDiCaL8Internal5phaseEPKclS2_z(ptr noundef nonnull align 8 dereferenceable(7288) %.pr, ptr noundef nonnull @.str, i64 noundef %i.jv, ptr noundef nonnull @.str.3, i64 noundef %.0339.lcssa)
          to label %bb.bb unwind label %bb.ay

bb.bb:                                            ; preds = %bb.ba
  %.pr662 = load ptr, ptr %i.df, align 8, !tbaa !169 ; 2 uses
  %.not369 = icmp eq ptr %.pr662, null
  br i1 %.not369, label %.thread668, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.jw = load i64, ptr %i.jo, align 8, !tbaa !170
  %i.jx = uitofp i64 %.sroa.13.0.lcssa to double
  %i.jy = uitofp i64 %.sroa.0208.0.lcssa to double ; 2 uses
  %i.jz = fmul nnan double %i.jx, 1.000000e+02
  %.not736 = icmp eq i64 %.sroa.0208.0.lcssa, 0   ; 2 uses
  %i.ka = fdiv double %i.jz, %i.jy
  %i.kb = select i1 %.not736, double 0.000000e+00, double %i.ka
  invoke void (ptr, ptr, i64, ptr, ...) @_ZN7CaDiCaL8Internal5phaseEPKclS2_z(ptr noundef nonnull align 8 dereferenceable(7288) %.pr662, ptr noundef nonnull @.str, i64 noundef %i.jw, ptr noundef nonnull @.str.4, i64 noundef %.sroa.13.0.lcssa, double noundef %i.kb)
          to label %.thread664 unwind label %bb.ay

.thread664:                                       ; preds = %bb.bc
  %.pr667.pr = load ptr, ptr %i.df, align 8, !tbaa !169 ; 2 uses
  %.not370 = icmp eq ptr %.pr667.pr, null
  br i1 %.not370, label %.thread668, label %bb.bd

bb.bd:                                            ; preds = %.thread664
  %i.kc = load i64, ptr %i.jo, align 8, !tbaa !170
  %i.kd = uitofp i64 %.sroa.22.0.lcssa to double
  %i.ke = fmul nnan double %i.kd, 1.000000e+02
  %i.kf = fdiv double %i.ke, %i.jy
  %i.kg = select i1 %.not736, double 0.000000e+00, double %i.kf
  invoke void (ptr, ptr, i64, ptr, ...) @_ZN7CaDiCaL8Internal5phaseEPKclS2_z(ptr noundef nonnull align 8 dereferenceable(7288) %.pr667.pr, ptr noundef nonnull @.str, i64 noundef %i.kc, ptr noundef nonnull @.str.5, i64 noundef %.sroa.22.0.lcssa, double noundef %i.kg)
          to label %.thread668 unwind label %bb.ay

.thread668:                                       ; preds = %bb.az, %._crit_edge1215, %bb.bb, %bb.bd, %.thread664
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 4080 ; 2 uses
  %i.ki = load i64, ptr %i.kh, align 8, !tbaa !210
  %i.kj = add i64 %i.ki, %.sroa.0208.0.lcssa
  store i64 %i.kj, ptr %i.kh, align 8, !tbaa !210
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 4136 ; 2 uses
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !211
  %i.km = add i64 %i.kl, %.sroa.13.0.lcssa
  store i64 %i.km, ptr %i.kk, align 8, !tbaa !211
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 4112 ; 2 uses
  %i.ko = load i64, ptr %i.kn, align 8, !tbaa !212
  %i.kp = add i64 %i.ko, %.sroa.22.0.lcssa
  store i64 %i.kp, ptr %i.kn, align 8, !tbaa !212
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 5544
  %i.kr = load i64, ptr %i.kq, align 8, !tbaa !166
  %i.ks = shl i64 %i.kr, 32
  %i.kt = ashr exact i64 %i.ks, 32
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 4104 ; 2 uses
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !213
  %i.kw = add nsw i64 %i.kt, %i.kv
  store i64 %i.kw, ptr %i.ku, align 8, !tbaa !213
  %i.kx = load ptr, ptr %i.c, align 8, !tbaa !214 ; 2 uses
  %i.ky = load ptr, ptr %i.d, align 8, !tbaa !214 ; 2 uses
  %.not7381227 = icmp eq ptr %i.kx, %i.ky
  br i1 %.not7381227, label %._crit_edge1230, label %.lr.ph1229

.lr.ph1229:                                       ; preds = %.thread668
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 3 uses
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 712
  %.pre1555.a = load ptr, ptr %i.kz, align 8, !tbaa !167
  br label %bb.be

._crit_edge1230:                                  ; preds = %bb.bh, %.thread668
  %i.lb = icmp ne i64 %.0309.lcssa, 0             ; 2 uses
  %i.lc = icmp ne i64 %.0305.lcssa, 0             ; 2 uses
  %or.cond8 = select i1 %i.lb, i1 %i.lc, i1 false
  br i1 %or.cond8, label %bb.bi, label %bb.bq

bb.be:                                            ; preds = %.lr.ph1229, %bb.bh
  %i.ld = phi ptr [ %.pre1555.a, %.lr.ph1229 ], [ %2, %bb.bh ] ; 4 uses
  %.sroa.0579.01228 = phi ptr [ %i.kx, %.lr.ph1229 ], [ %i.ls, %bb.bh ] ; 2 uses
  %i.le = load i32, ptr %.sroa.0579.01228, align 4, !tbaa !199 ; 3 uses
  %i.lf = tail call noundef i32 @llvm.abs.i32(i32 %i.le, i1 true)
  %i.lg = zext nneg i32 %i.lf to i64              ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.lg
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !168
  %.not.i461 = icmp eq i8 %i.li, 0
  br i1 %.not.i461, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.lj = load ptr, ptr %i.la, align 8, !tbaa !200
  %i.lk = getelementptr inbounds nuw [16 x i8], ptr %i.lj, i64 %i.lg
  %i.ll = load i32, ptr %i.lk, align 8, !tbaa !202
  %.not9.i = icmp eq i32 %i.ll, 0
  br i1 %.not9.i, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.lm = sext i32 %i.le to i64
  %i.ln = getelementptr inbounds i8, ptr %i.ld, i64 %i.lm
  store i8 0, ptr %i.ln, align 1, !tbaa !168
  %i.lo = load ptr, ptr %i.kz, align 8, !tbaa !167
  %i.lp = sub nsw i32 0, %i.le
  %i.lq = sext i32 %i.lp to i64
  %i.lr = getelementptr inbounds i8, ptr %i.lo, i64 %i.lq
  store i8 0, ptr %i.lr, align 1, !tbaa !168
  %.pre1554 = load ptr, ptr %i.kz, align 8, !tbaa !167
  br label %bb.bh

bb.bh:                                            ; preds = %bb.be, %bb.bg, %bb.bf
  %2 = phi ptr [ %i.ld, %bb.be ], [ %.pre1554, %bb.bg ], [ %i.ld, %bb.bf ]
  %i.ls = getelementptr inbounds nuw i8, ptr %.sroa.0579.01228, i64 4 ; 2 uses
  %.not738 = icmp eq ptr %i.ls, %i.ky
  br i1 %.not738, label %._crit_edge1230, label %bb.be

bb.bi:                                            ; preds = %._crit_edge1230
  %i.lt = icmp eq ptr %.sroa.0588.0.lcssa, %.sroa.18.0.lcssa ; 2 uses
  br i1 %i.lt, label %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS2_16less_conditionedEEvT_SB_T0_.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.lu = ptrtoint ptr %.sroa.18.0.lcssa to i64
  %i.lv = ptrtoint ptr %.sroa.0588.0.lcssa to i64
  %i.lw = sub i64 %i.lu, %i.lv
  %i.lx = ashr exact i64 %i.lw, 3                 ; 2 uses
  %i.ly = add nsw i64 %i.lx, 1
  %i.lz = sdiv i64 %i.ly, 2                       ; 3 uses
  %i.ma = icmp sgt i64 %i.lx, 0
  br i1 %i.ma, label %.lr.ph.i.i.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.bj, %select.unfold.i.i.i.i
  %.010.i.i.i.i = phi i64 [ %i.mf, %select.unfold.i.i.i.i ], [ %i.lz, %bb.bj ] ; 4 uses
  %i.mb = shl nuw nsw i64 %.010.i.i.i.i, 3
  %i.mc = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.mb, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #16 ; 2 uses
  %.not.i.i.i.i462 = icmp eq ptr %i.mc, null
  br i1 %.not.i.i.i.i462, label %select.unfold.i.i.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit.i.i

select.unfold.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i
  %i.md = icmp eq i64 %.010.i.i.i.i, 1
  %i.me = add nuw nsw i64 %.010.i.i.i.i, 1
  %i.mf = lshr i64 %i.me, 1
  br i1 %i.md, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !182

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit.i.i: ; preds = %select.unfold.i.i.i.i, %.lr.ph.i.i.i.i, %bb.bj
  %.sroa.5.0.i.i = phi i64 [ 0, %bb.bj ], [ %.010.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %select.unfold.i.i.i.i ] ; 2 uses
  %.sroa.10.0.i.i = phi ptr [ null, %bb.bj ], [ %i.mc, %.lr.ph.i.i.i.i ], [ null, %select.unfold.i.i.i.i ] ; 5 uses
  %i.mg = icmp eq i64 %i.lz, %.sroa.5.0.i.i
  br i1 %i.mg, label %bb.bk, label %bb.bl, !prof !176

bb.bk:                                            ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit.i.i
  %i.mh = getelementptr inbounds [8 x i8], ptr %.sroa.0588.0.lcssa, i64 %i.lz
  invoke void @_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterINS2_16less_conditionedEEEEvT_SE_SE_T0_T1_(ptr %.sroa.0588.0.lcssa, ptr %i.mh, ptr %.sroa.18.0.lcssa, ptr noundef %.sroa.10.0.i.i)
          to label %bb.bo unwind label %.body.thread

.body.thread:                                     ; preds = %bb.bk, %bb.bm, %bb.bn
  %i.mi = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %.sroa.10.0.i.i) #17
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit519

bb.bl:                                            ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit.i.i
  %i.mj = icmp eq ptr %.sroa.10.0.i.i, null
  br i1 %i.mj, label %bb.bm, label %bb.bn, !prof !215

bb.bm:                                            ; preds = %bb.bl
  invoke void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS2_16less_conditionedEEEEvT_SE_T0_(ptr %.sroa.0588.0.lcssa, ptr %.sroa.18.0.lcssa)
          to label %bb.bo unwind label %.body.thread

bb.bn:                                            ; preds = %bb.bl
  invoke void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_comp_iterINS2_16less_conditionedEEEEvT_SE_T0_T1_T2_(ptr %.sroa.0588.0.lcssa, ptr %.sroa.18.0.lcssa, ptr noundef nonnull %.sroa.10.0.i.i, i64 noundef %.sroa.5.0.i.i)
          to label %bb.bo unwind label %.body.thread

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %bb.bk
  tail call void @_ZdlPv(ptr noundef %.sroa.10.0.i.i) #17
  br label %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS2_16less_conditionedEEvT_SB_T0_.exit

_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS2_16less_conditionedEEvT_SB_T0_.exit: ; preds = %bb.bo, %bb.bi
  %i.mk = load ptr, ptr %i.df, align 8, !tbaa !169 ; 2 uses
  %.not373 = icmp eq ptr %i.mk, null
  br i1 %.not373, label %bb.bs, label %bb.bp

bb.bp:                                            ; preds = %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS2_16less_conditionedEEvT_SB_T0_.exit
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 4160
  %i.mm = load i64, ptr %i.ml, align 8, !tbaa !170
  %i.mn = uitofp i64 %.0305.lcssa to double
  %i.mo = ptrtoint ptr %.sroa.18.0.lcssa to i64
  %i.mp = ptrtoint ptr %.sroa.0588.0.lcssa to i64
  %i.mq = sub i64 %i.mo, %i.mp
  %i.mr = ashr exact i64 %i.mq, 3
  %i.ms = uitofp i64 %i.mr to double
  %i.mt = fmul nnan double %i.mn, 1.000000e+02
  %i.mu = fdiv double %i.mt, %i.ms
  %i.mv = select i1 %i.lt, double 0.000000e+00, double %i.mu
  invoke void (ptr, ptr, i64, ptr, ...) @_ZN7CaDiCaL8Internal5phaseEPKclS2_z(ptr noundef nonnull align 8 dereferenceable(7288) %i.mk, ptr noundef nonnull @.str, i64 noundef %i.mm, ptr noundef nonnull @.str.6, i64 noundef %.0305.lcssa, double noundef %i.mv)
          to label %bb.bs unwind label %bb.ee

bb.bq:                                            ; preds = %._crit_edge1230
  %.not1556 = xor i1 %i.lb, true
  %or.cond10 = select i1 %.not1556, i1 true, i1 %i.lc
  br i1 %or.cond10, label %bb.br, label %.preheader785

.preheader785:                                    ; preds = %bb.bq
  %.not7391231 = icmp eq ptr %.sroa.0588.0.lcssa, %.sroa.18.0.lcssa
  br i1 %.not7391231, label %._crit_edge1234, label %.lr.ph1233

._crit_edge1234:                                  ; preds = %.lr.ph1233, %.preheader785
  %i.mw = load ptr, ptr %i.df, align 8, !tbaa !169 ; 2 uses
  %.not371 = icmp eq ptr %i.mw, null
  br i1 %.not371, label %bb.bs, label %.invoke

.lr.ph1233:                                       ; preds = %.preheader785, %.lr.ph1233
  %.sroa.0561.01232 = phi ptr [ %i.nb, %.lr.ph1233 ], [ %.sroa.0588.0.lcssa, %.preheader785 ] ; 2 uses
  %i.mx = load ptr, ptr %.sroa.0561.01232, align 8, !tbaa !173
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 8 ; 2 uses
  %i.mz = load i32, ptr %i.my, align 8
  %i.na = and i32 %i.mz, -2
  store i32 %i.na, ptr %i.my, align 8
  %i.nb = getelementptr inbounds nuw i8, ptr %.sroa.0561.01232, i64 8 ; 2 uses
  %.not739 = icmp eq ptr %i.nb, %.sroa.18.0.lcssa
  br i1 %.not739, label %._crit_edge1234, label %.lr.ph1233

.invoke:                                          ; preds = %._crit_edge1234, %bb.br
  %i.nc = phi ptr [ %i.nh, %bb.br ], [ %i.mw, %._crit_edge1234 ]
  %i.nd = phi ptr [ @.str.8, %bb.br ], [ @.str.7, %._crit_edge1234 ]
  %i.ne = phi i64 [ %.0305.lcssa, %bb.br ], [ %.0309.lcssa, %._crit_edge1234 ]
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 4160
  %i.ng = load i64, ptr %i.nf, align 8, !tbaa !170
  invoke void (ptr, ptr, i64, ptr, ...) @_ZN7CaDiCaL8Internal5phaseEPKclS2_z(ptr noundef nonnull align 8 dereferenceable(7288) %i.nc, ptr noundef nonnull @.str, i64 noundef %i.ng, ptr noundef nonnull %i.nd, i64 noundef %i.ne)
          to label %bb.bs unwind label %bb.ee

bb.br:                                            ; preds = %bb.bq
  %i.nh = load ptr, ptr %i.df, align 8, !tbaa !169 ; 2 uses
  %.not372 = icmp eq ptr %i.nh, null
  br i1 %.not372, label %bb.bs, label %.invoke

bb.bs:                                            ; preds = %.invoke, %._crit_edge1234, %bb.br, %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS2_16less_conditionedEEvT_SB_T0_.exit, %bb.bp
  %i.ni = ptrtoint ptr %.sroa.18.0.lcssa to i64
  %i.nj = ptrtoint ptr %.sroa.0588.0.lcssa to i64
  %i.nk = sub i64 %i.ni, %i.nj
  %i.nl = ashr exact i64 %i.nk, 3                 ; 3 uses
  %i.nm = icmp eq i64 %.sroa.22.0.lcssa, 0
  %i.nn = icmp eq ptr %.sroa.0588.0.lcssa, %.sroa.18.0.lcssa ; 2 uses
  %or.cond7291312 = select i1 %i.nn, i1 true, i1 %i.nm
  br i1 %or.cond7291312, label %.thread675, label %.lr.ph1324

.lr.ph1324:                                       ; preds = %bb.bs
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 7264 ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 2960 ; 3 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 2964 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 7256 ; 4 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 3804
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 10 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 9 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 4128 ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 4152 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 3104
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 4096 ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 4144 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 4120 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 4088 ; 2 uses
  %i.od = insertelement <2 x i64> poison, i64 %.sroa.22.0.lcssa, i64 0
  %i.oe = insertelement <2 x i64> %i.od, i64 %.sroa.13.0.lcssa, i64 1
  br label %bb.bt

bb.bt:                                            ; preds = %.lr.ph1324, %.loopexit766
  %.02621322 = phi i64 [ 0, %.lr.ph1324 ], [ %.6, %.loopexit766 ] ; 6 uses
  %.02801321 = phi i64 [ %i.nl, %.lr.ph1324 ], [ %.2282, %.loopexit766 ] ; 4 uses
  %.02831320 = phi i64 [ 0, %.lr.ph1324 ], [ %.4287, %.loopexit766 ] ; 9 uses
  %.sroa.0557.01319 = phi ptr [ %.sroa.0588.0.lcssa, %.lr.ph1324 ], [ %i.aco, %.loopexit766 ] ; 13 uses
  %.sroa.23.01318 = phi ptr [ null, %.lr.ph1324 ], [ %.sroa.23.3, %.loopexit766 ] ; 7 uses
  %.sroa.14.01317 = phi ptr [ null, %.lr.ph1324 ], [ %.sroa.14.5, %.loopexit766 ] ; 5 uses
  %.sroa.0564.01316 = phi ptr [ null, %.lr.ph1324 ], [ %.sroa.0564.5, %.loopexit766 ] ; 9 uses
  %.sroa.30.41315 = phi ptr [ %.sroa.30.0.lcssa, %.lr.ph1324 ], [ %.sroa.30.13, %.loopexit766 ] ; 7 uses
  %.sroa.17.41314 = phi ptr [ %.sroa.17.0.lcssa, %.lr.ph1324 ], [ %.sroa.17.15, %.loopexit766 ] ; 7 uses
  %.sroa.0609.61313 = phi ptr [ %.sroa.0609.0.lcssa, %.lr.ph1324 ], [ %.sroa.0609.19, %.loopexit766 ] ; 9 uses
  %i.of = load ptr, ptr %.sroa.0557.01319, align 8, !tbaa !173
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 8
  %i.oh = load i32, ptr %i.og, align 8
  %i.oi = and i32 %i.oh, 1024
  %.not374 = icmp eq i32 %i.oi, 0
  br i1 %.not374, label %bb.bu, label %.loopexit766

bb.bu:                                            ; preds = %bb.bt
  %i.oj = load volatile i8, ptr %i.no, align 8, !tbaa !216, !range !160, !noundef !161
  %i.ok = trunc nuw i8 %i.oj to i1
  br i1 %i.ok, label %.critedge436, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ol = load i32, ptr %i.nq, align 4, !tbaa !217 ; 3 uses
  %.not.i463 = icmp eq i32 %i.ol, 0
  br i1 %.not.i463, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.om = add nsw i32 %i.ol, -1
  store i32 %i.om, ptr %i.nq, align 4, !tbaa !217
  %i.on = icmp eq i32 %i.ol, 1
  br i1 %i.on, label %.sink.split.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.oo = load ptr, ptr %i.nr, align 8, !tbaa !218
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 360
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !237 ; 3 uses
  %.not3.i = icmp eq ptr %i.oq, null
  br i1 %.not3.i, label %bb.ca, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.or = load i32, ptr %i.np, align 8, !tbaa !238 ; 2 uses
  %i.os = add nsw i32 %i.or, -1
  store i32 %i.os, ptr %i.np, align 8, !tbaa !238
  %.not4.i = icmp eq i32 %i.or, 0
  br i1 %.not4.i, label %bb.bz, label %bb.ca
end_hunk_0
