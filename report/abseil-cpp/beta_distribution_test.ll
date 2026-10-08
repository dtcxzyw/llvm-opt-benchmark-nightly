Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/beta_distribution_test?download=true
inline.NumInlined: 4806
inline.NumDeleted: 2042
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN12_GLOBAL__N_146BetaDistributionTest_TestSampleStatistics_Test8TestBodyEv:bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #38
          to label %.noexc.i unwind label %.loopexit.split-lp.i39

.noexc.i:                                         ; preds = %bb.cw
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i35: ; preds = %bb.cv
  %i.pq = ashr exact i64 %i.po, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i36 = call i64 @llvm.umax.i64(i64 %i.pq, i64 1)
  %i.pr = add nsw i64 %.sroa.speculated.i.i.i.i36, %i.pq ; 2 uses
  %i.ps = icmp ult i64 %i.pr, %i.pq
  %i.pt = call i64 @llvm.umin.i64(i64 %i.pr, i64 1152921504606846975)
  %i.pu = select i1 %i.ps, i64 1152921504606846975, i64 %i.pt ; 3 uses
  %.not.i.i.i.i37 = icmp ne i64 %i.pu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i37)
  %i.pv = shl nuw nsw i64 %i.pu, 3
  %i.pw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pv) #40
          to label %.noexc80.i unwind label %.loopexit240.i ; 4 uses

.noexc80.i:                                       ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i35
  %i.px = getelementptr inbounds i8, ptr %i.pw, i64 %i.po ; 2 uses
  store double %i.pe, ptr %i.px, align 8, !tbaa !100
  %i.py = icmp sgt i64 %i.po, 0
  br i1 %i.py, label %bb.cx, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

bb.cx:                                            ; preds = %.noexc80.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.pw, ptr align 8 %.sroa.0192.0289.i, i64 %i.po, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.cx, %.noexc80.i
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0192.0289.i, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i38, label %bb.cy

bb.cy:                                            ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0192.0289.i, i64 noundef %i.po) #37
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i38

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i38: ; preds = %bb.cy, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  %i.pz = getelementptr inbounds nuw [8 x i8], ptr %i.pw, i64 %i.pu
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit.i33

_ZNSt6vectorIdSaIdEE9push_backERKd.exit.i33:      ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i38, %bb.cu
  %.sroa.33.5.i = phi ptr [ %i.pz, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i38 ], [ %.sroa.33.0287.i, %bb.cu ] ; 4 uses
  %.pn239.i = phi ptr [ %i.px, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i38 ], [ %.sroa.19205.0288.i, %bb.cu ]
  %.sroa.0192.5.i = phi ptr [ %i.pw, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i38 ], [ %.sroa.0192.0289.i, %bb.cu ] ; 4 uses
  %.sroa.19205.3.i = getelementptr inbounds nuw i8, ptr %.pn239.i, i64 8 ; 2 uses
  %i.qa = add nsw i32 %.045290.i, 1
  %i.qb = sitofp i32 %i.qa to double
  %i.qc = fmul nnan double %i.qb, 1.000000e-02
  %i.qd = fmul nnan double %i.qc, 1.000000e+04    ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %.sroa.12.0285.i, %.sroa.19.0286.i
  br i1 %.not.i.i.i34, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %_ZNSt6vectorIdSaIdEE9push_backERKd.exit.i33
  store double %i.qd, ptr %.sroa.12.0285.i, align 8, !tbaa !100
  %i.qe = getelementptr inbounds nuw i8, ptr %.sroa.12.0285.i, i64 8
  br label %bb.de

bb.da:                                            ; preds = %_ZNSt6vectorIdSaIdEE9push_backERKd.exit.i33
  %i.qf = ptrtoint ptr %.sroa.19.0286.i to i64
  %i.qg = ptrtoint ptr %.sroa.0179.0284.i to i64
  %i.qh = sub i64 %i.qf, %i.qg                    ; 6 uses
  %i.qi = icmp eq i64 %i.qh, 9223372036854775800
  br i1 %i.qi, label %bb.db, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.db:                                            ; preds = %bb.da
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #38
          to label %.noexc81.i unwind label %.loopexit.split-lp242.i

.noexc81.i:                                       ; preds = %bb.db
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.da
  %i.qj = ashr exact i64 %i.qh, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.qj, i64 1)
  %i.qk = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.qj ; 2 uses
  %i.ql = icmp ult i64 %i.qk, %i.qj
  %i.qm = call i64 @llvm.umin.i64(i64 %i.qk, i64 1152921504606846975)
  %i.qn = select i1 %i.ql, i64 1152921504606846975, i64 %i.qm ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.qn, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.qo = shl nuw nsw i64 %i.qn, 3
  %i.qp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qo) #40
          to label %.noexc82.i unwind label %.loopexit241.i ; 4 uses

.noexc82.i:                                       ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.qq = getelementptr inbounds i8, ptr %i.qp, i64 %i.qh ; 2 uses
  store double %i.qd, ptr %i.qq, align 8, !tbaa !100
  %i.qr = icmp sgt i64 %i.qh, 0
  br i1 %i.qr, label %bb.dc, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i.i

bb.dc:                                            ; preds = %.noexc82.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.qp, ptr align 8 %.sroa.0179.0284.i, i64 %i.qh, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.dc, %.noexc82.i
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qq, i64 8
  %.not.i17.i.i.i.i = icmp eq ptr %.sroa.0179.0284.i, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i.i, label %bb.dd

bb.dd:                                            ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0179.0284.i, i64 noundef %i.qh) #37
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i.i: ; preds = %bb.dd, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i.i
  %i.qt = getelementptr inbounds nuw [8 x i8], ptr %i.qp, i64 %i.qn
  br label %bb.de

bb.de:                                            ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i.i, %bb.cz, %bb.cr
  %.sroa.0179.1.ph.i = phi ptr [ %.sroa.0179.0284.i, %bb.cz ], [ %i.qp, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i.i ], [ %.sroa.0179.0284.i, %bb.cr ] ; 2 uses
  %.sroa.12.1.ph.i = phi ptr [ %i.qe, %bb.cz ], [ %i.qs, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i.i ], [ %.sroa.12.0285.i, %bb.cr ] ; 2 uses
  %.sroa.19.1.ph.i = phi ptr [ %.sroa.19.0286.i, %bb.cz ], [ %i.qt, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i.i ], [ %.sroa.19.0286.i, %bb.cr ] ; 2 uses
  %.sroa.33.1.ph.i = phi ptr [ %.sroa.33.5.i, %bb.cz ], [ %.sroa.33.5.i, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i.i ], [ %.sroa.33.0287.i, %bb.cr ] ; 2 uses
  %.sroa.19205.1.ph.i = phi ptr [ %.sroa.19205.3.i, %bb.cz ], [ %.sroa.19205.3.i, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i.i ], [ %.sroa.19205.0288.i, %bb.cr ] ; 2 uses
  %.sroa.0192.1.ph.i = phi ptr [ %.sroa.0192.5.i, %bb.cz ], [ %.sroa.0192.5.i, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i.i ], [ %.sroa.0192.0289.i, %bb.cr ] ; 2 uses
  %.1.ph.i = phi i32 [ 0, %bb.cz ], [ 0, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i.i ], [ %i.pk, %bb.cr ]
  %i.qu = add nuw nsw i32 %.044291.i, 1           ; 2 uses
  %exitcond.not.i12 = icmp eq i32 %i.qu, 100
  br i1 %exitcond.not.i12, label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit.i, label %bb.cn, !llvm.loop !343

.loopexit241.i:                                   ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit243.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

.loopexit.split-lp242.i:                          ; preds = %bb.db
  %lpad.loopexit.split-lp244.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

_ZNSt6vectorIdSaIdEE9push_backEOd.exit.i:         ; preds = %bb.de, %bb.cs
  %.044.lcssa.i = phi i32 [ %.044291.i, %bb.cs ], [ 100, %bb.de ]
  %.sroa.0179.0.lcssa.i = phi ptr [ %.sroa.0179.0284.i, %bb.cs ], [ %.sroa.0179.1.ph.i, %bb.de ] ; 9 uses
  %.sroa.12.0.lcssa.i = phi ptr [ %.sroa.12.0285.i, %bb.cs ], [ %.sroa.12.1.ph.i, %bb.de ] ; 6 uses
  %.sroa.19.0.lcssa.i = phi ptr [ %.sroa.19.0286.i, %bb.cs ], [ %.sroa.19.1.ph.i, %bb.de ] ; 4 uses
  %.sroa.33.0.lcssa.i = phi ptr [ %.sroa.33.0287.i, %bb.cs ], [ %.sroa.33.1.ph.i, %bb.de ] ; 5 uses
  %.sroa.19205.0.lcssa.i = phi ptr [ %.sroa.19205.0288.i, %bb.cs ], [ %.sroa.19205.1.ph.i, %bb.de ] ; 3 uses
  %.sroa.0192.0.lcssa.i = phi ptr [ %.sroa.0192.0289.i, %bb.cs ], [ %.sroa.0192.1.ph.i, %bb.de ] ; 7 uses
  %i.qv = zext nneg i32 %.044.lcssa.i to i64
  %.not.i.i83.i = icmp eq ptr %.sroa.19205.0.lcssa.i, %.sroa.33.0.lcssa.i
  br i1 %.not.i.i83.i, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit.i
  store double +inf, ptr %.sroa.19205.0.lcssa.i, align 8, !tbaa !100
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit92.i

bb.dg:                                            ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit.i
  %i.qw = ptrtoint ptr %.sroa.33.0.lcssa.i to i64
  %i.qx = ptrtoint ptr %.sroa.0192.0.lcssa.i to i64
  %i.qy = sub i64 %i.qw, %i.qx                    ; 6 uses
  %i.qz = icmp eq i64 %i.qy, 9223372036854775800
  br i1 %i.qz, label %bb.dh, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i84.i

bb.dh:                                            ; preds = %bb.dg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #38
          to label %.noexc90.i unwind label %.loopexit.split-lp

.noexc90.i:                                       ; preds = %bb.dh
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i84.i: ; preds = %bb.dg
  %i.ra = ashr exact i64 %i.qy, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i85.i = call i64 @llvm.umax.i64(i64 %i.ra, i64 1)
  %i.rb = add nsw i64 %.sroa.speculated.i.i.i.i85.i, %i.ra ; 2 uses
  %i.rc = icmp ult i64 %i.rb, %i.ra
  %i.rd = call i64 @llvm.umin.i64(i64 %i.rb, i64 1152921504606846975)
  %i.re = select i1 %i.rc, i64 1152921504606846975, i64 %i.rd ; 3 uses
  %.not.i.i.i.i86.i = icmp ne i64 %i.re, 0
  call void @llvm.assume(i1 %.not.i.i.i.i86.i)
  %i.rf = shl nuw nsw i64 %i.re, 3
  %i.rg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rf) #40
          to label %.noexc91.i unwind label %.loopexit ; 4 uses

.noexc91.i:                                       ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i84.i
  %i.rh = getelementptr inbounds i8, ptr %i.rg, i64 %i.qy ; 2 uses
  store double +inf, ptr %i.rh, align 8, !tbaa !100
  %i.ri = icmp sgt i64 %i.qy, 0
  br i1 %i.ri, label %bb.di, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i87.i

bb.di:                                            ; preds = %.noexc91.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.rg, ptr align 8 %.sroa.0192.0.lcssa.i, i64 %i.qy, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i87.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i87.i: ; preds = %bb.di, %.noexc91.i
  %.not.i17.i.i.i88.i = icmp eq ptr %.sroa.0192.0.lcssa.i, null
  br i1 %.not.i17.i.i.i88.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i89.i, label %bb.dj

bb.dj:                                            ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i87.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0192.0.lcssa.i, i64 noundef %i.qy) #37
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i89.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i89.i: ; preds = %bb.dj, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i87.i
  %i.rj = getelementptr inbounds nuw [8 x i8], ptr %i.rg, i64 %i.re
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit92.i

_ZNSt6vectorIdSaIdEE9push_backEOd.exit92.i:       ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i89.i, %bb.df
  %.sroa.33.6.i = phi ptr [ %i.rj, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i89.i ], [ %.sroa.33.0.lcssa.i, %bb.df ] ; 5 uses
  %.pn.i13 = phi ptr [ %i.rh, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i89.i ], [ %.sroa.19205.0.lcssa.i, %bb.df ]
  %.sroa.0192.6.i = phi ptr [ %i.rg, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i89.i ], [ %.sroa.0192.0.lcssa.i, %bb.df ] ; 10 uses
  %.sroa.19205.4.i = getelementptr inbounds nuw i8, ptr %.pn.i13, i64 8 ; 2 uses
  %i.rk = sub nuw nsw i64 101, %i.qv
  %i.rl = uitofp nneg i64 %i.rk to double
  %i.rm = fmul nnan double %i.rl, 1.000000e-02
  %i.rn = fmul nnan double %i.rm, 1.000000e+04    ; 2 uses
  %.not.i.i93.i = icmp eq ptr %.sroa.12.0.lcssa.i, %.sroa.19.0.lcssa.i
  br i1 %.not.i.i93.i, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit92.i
  store double %i.rn, ptr %.sroa.12.0.lcssa.i, align 8, !tbaa !100
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit102.i

bb.dl:                                            ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit92.i
  %i.ro = ptrtoint ptr %.sroa.12.0.lcssa.i to i64
  %i.rp = ptrtoint ptr %.sroa.0179.0.lcssa.i to i64
  %i.rq = sub i64 %i.ro, %i.rp                    ; 6 uses
  %i.rr = icmp eq i64 %i.rq, 9223372036854775800
  br i1 %i.rr, label %bb.dm, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i94.i

bb.dm:                                            ; preds = %bb.dl
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #38
          to label %.noexc100.i unwind label %.loopexit.split-lp100

.noexc100.i:                                      ; preds = %bb.dm
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i94.i: ; preds = %bb.dl
  %i.rs = ashr exact i64 %i.rq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i95.i = call i64 @llvm.umax.i64(i64 %i.rs, i64 1)
  %i.rt = add nsw i64 %.sroa.speculated.i.i.i.i95.i, %i.rs ; 2 uses
  %i.ru = icmp ult i64 %i.rt, %i.rs
  %i.rv = call i64 @llvm.umin.i64(i64 %i.rt, i64 1152921504606846975)
  %i.rw = select i1 %i.ru, i64 1152921504606846975, i64 %i.rv ; 3 uses
  %.not.i.i.i.i96.i = icmp ne i64 %i.rw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i96.i)
  %i.rx = shl nuw nsw i64 %i.rw, 3
  %i.ry = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rx) #40
          to label %.noexc101.i unwind label %.loopexit99 ; 4 uses

.noexc101.i:                                      ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i94.i
  %i.rz = getelementptr inbounds i8, ptr %i.ry, i64 %i.rq ; 2 uses
  store double %i.rn, ptr %i.rz, align 8, !tbaa !100
  %i.sa = icmp sgt i64 %i.rq, 0
  br i1 %i.sa, label %bb.dn, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i97.i

bb.dn:                                            ; preds = %.noexc101.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ry, ptr align 8 %.sroa.0179.0.lcssa.i, i64 %i.rq, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i97.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i97.i: ; preds = %bb.dn, %.noexc101.i
  %.not.i17.i.i.i98.i = icmp eq ptr %.sroa.0179.0.lcssa.i, null
  br i1 %.not.i17.i.i.i98.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i99.i, label %bb.do

bb.do:                                            ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i97.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0179.0.lcssa.i, i64 noundef %i.rq) #37
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i99.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i99.i: ; preds = %bb.do, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i97.i
  %i.sb = getelementptr inbounds nuw [8 x i8], ptr %i.ry, i64 %i.rw
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit102.i

_ZNSt6vectorIdSaIdEE9push_backEOd.exit102.i:      ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i99.i, %bb.dk
  %.sroa.0179.5.i = phi ptr [ %i.ry, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i99.i ], [ %.sroa.0179.0.lcssa.i, %bb.dk ] ; 8 uses
  %.pn238.i = phi ptr [ %i.rz, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i99.i ], [ %.sroa.12.0.lcssa.i, %bb.dk ] ; 2 uses
  %.sroa.19.5.i = phi ptr [ %i.sb, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i99.i ], [ %.sroa.19.0.lcssa.i, %bb.dk ] ; 3 uses
  %.sroa.12.4.i = getelementptr inbounds nuw i8, ptr %.pn238.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #39
  %i.sc = ptrtoint ptr %.sroa.19205.4.i to i64
  %i.sd = ptrtoint ptr %.sroa.0192.6.i to i64     ; 4 uses
  %i.se = sub i64 %i.sc, %i.sd                    ; 2 uses
  %i.sf = ashr exact i64 %i.se, 3                 ; 7 uses
  store i64 %i.sf, ptr %i.i, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #39
  store i32 3, ptr %i.j, align 4, !tbaa !96
  %.not.i103.i = icmp ult i64 %i.sf, 3
  br i1 %.not.i103.i, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit102.i
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1)
          to label %_ZN7testing8internal11CmpHelperGEImiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit.i unwind label %bb.dr

bb.dq:                                            ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit102.i
  invoke void @_ZN7testing8internal18CmpHelperOpFailureImiEENS_15AssertionResultEPKcS4_RKT_RKT0_S4_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.j, ptr noundef nonnull @.str.40)
          to label %_ZN7testing8internal11CmpHelperGEImiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit.i unwind label %bb.dr

_ZN7testing8internal11CmpHelperGEImiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit.i: ; preds = %bb.dq, %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #39
  %i.sg = load i8, ptr %1, align 8, !tbaa !109, !range !110, !noundef !111
  %i.sh = trunc nuw i8 %i.sg to i1
  br i1 %i.sh, label %bb.ed, label %bb.ds

.loopexit:                                        ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i84.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

.loopexit.split-lp:                               ; preds = %bb.dh
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

.loopexit99:                                      ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i94.i
  %lpad.loopexit101 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

.loopexit.split-lp100:                            ; preds = %bb.dm
  %lpad.loopexit.split-lp102 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %i.si = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #39
  br label %bb.ei

bb.ds:                                            ; preds = %_ZN7testing8internal11CmpHelperGEImiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #39
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.dt unwind label %bb.dx

bb.dt:                                            ; preds = %bb.ds
  %i.sj = load ptr, ptr %2, align 8, !tbaa !127
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 16
  %i.sl = load double, ptr %i.y, align 8, !tbaa !100
  %i.sm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.sk, double noundef %i.sl)
          to label %_ZN7testing7MessagelsIdEERS0_RKT_.exit.i unwind label %bb.dy ; 0 uses

_ZN7testing7MessagelsIdEERS0_RKT_.exit.i:         ; preds = %bb.dt
  %i.sn = load ptr, ptr %2, align 8, !tbaa !127
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 16
  %i.sp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.so, ptr noundef nonnull @.str.33, i64 noundef 2)
          to label %_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit.i unwind label %bb.dy ; 0 uses

_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit.i:      ; preds = %_ZN7testing7MessagelsIdEERS0_RKT_.exit.i
  %i.sq = load ptr, ptr %2, align 8, !tbaa !127
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 16
  %i.ss = load double, ptr %i.z, align 16, !tbaa !100
  %i.st = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.sr, double noundef %i.ss)
          to label %_ZN7testing7MessagelsIdEERS0_RKT_.exit109.i unwind label %bb.dy ; 0 uses

_ZN7testing7MessagelsIdEERS0_RKT_.exit109.i:      ; preds = %_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39
  %i.su = load ptr, ptr %i.at, align 8, !tbaa !128 ; 2 uses
  %.not.i.i110.i = icmp eq ptr %i.su, null
  br i1 %.not.i.i110.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit.i14, label %bb.du

bb.du:                                            ; preds = %_ZN7testing7MessagelsIdEERS0_RKT_.exit109.i
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !50
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit.i14

_ZNK7testing15AssertionResult15failure_messageEv.exit.i14: ; preds = %bb.du, %_ZN7testing7MessagelsIdEERS0_RKT_.exit109.i
  %i.sw = phi ptr [ %i.sv, %bb.du ], [ @.str, %_ZN7testing7MessagelsIdEERS0_RKT_.exit109.i ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 377, ptr noundef %i.sw)
          to label %bb.dv unwind label %bb.dz

bb.dv:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit.i14
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.dw unwind label %bb.ea

bb.dw:                                            ; preds = %bb.dv
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  %i.sx = load ptr, ptr %2, align 8, !tbaa !127   ; 3 uses
  %.not.i.i111.i = icmp eq ptr %i.sx, null
  br i1 %.not.i.i111.i, label %_ZN7testing7MessageD2Ev.exit.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i15

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i15: ; preds = %bb.dw
  %i.sy = load ptr, ptr %i.sx, align 8, !tbaa !58
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 8
  %i.ta = load ptr, ptr %i.sz, align 8
  call void %i.ta(ptr noundef nonnull align 8 dereferenceable(128) %i.sx) #39, !inline_history !344
  br label %_ZN7testing7MessageD2Ev.exit.i

_ZN7testing7MessageD2Ev.exit.i:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i15, %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  br label %bb.ed

bb.dx:                                            ; preds = %bb.ds
  %i.tb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit114.i

bb.dy:                                            ; preds = %_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit.i, %_ZN7testing7MessagelsIdEERS0_RKT_.exit.i, %bb.dt
  %i.tc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

bb.dz:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit.i14
  %i.td = landingpad { ptr, i32 }
          cleanup
  br label %bb.eb

bb.ea:                                            ; preds = %bb.dv
  %i.te = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #39
  br label %bb.eb

end_hunk_0
