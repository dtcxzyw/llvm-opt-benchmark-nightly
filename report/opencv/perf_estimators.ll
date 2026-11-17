Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/perf_estimators?download=true
inline.NumInlined: 1688
inline.NumDeleted: 839
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN11opencv_test21bundleAdjuster_affine12PerfTestBodyEv:.noexc.i
  invoke void @_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr null, ptr noundef nonnull align 8 dereferenceable(208) %4)
          to label %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit unwind label %bb.ct

_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt12__shared_ptrIN2cv6detail20AffineBasedEstimatorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.lx = load ptr, ptr %i.lv, align 8, !tbaa !95 ; 3 uses
  %i.ly = load ptr, ptr %i.lw, align 8, !tbaa !96
  %.not.i249 = icmp eq ptr %i.lx, %i.ly
  br i1 %.not.i249, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.lx, ptr noundef nonnull align 8 dereferenceable(208) %8)
          to label %.noexc250 unwind label %bb.ct

.noexc250:                                        ; preds = %bb.cf
  %i.lz = load ptr, ptr %i.lv, align 8, !tbaa !95
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 208
  store ptr %i.ma, ptr %i.lv, align 8, !tbaa !95
  br label %bb.ch

bb.cg:                                            ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit
  invoke void @_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr %i.lx, ptr noundef nonnull align 8 dereferenceable(208) %8)
          to label %bb.ch unwind label %bb.ct

bb.ch:                                            ; preds = %bb.cg, %.noexc250
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %24, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %25, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %26, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #29
  %i.mb = getelementptr inbounds nuw i8, ptr %27, i64 16
  store i32 0, ptr %i.mb, align 8, !tbaa !83
  %i.mc = getelementptr inbounds nuw i8, ptr %27, i64 20
  store i32 0, ptr %i.mc, align 4, !tbaa !84
  store i32 17104896, ptr %27, align 8, !tbaa !270
  %i.md = getelementptr inbounds nuw i8, ptr %27, i64 8
  store ptr %22, ptr %i.md, align 8, !tbaa !271
  %i.me = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.ci unwind label %bb.cu

bb.ci:                                            ; preds = %bb.ch
  invoke void @_ZN2cv6detail20computeImageFeaturesERKNS_3PtrINS_9Feature2DEEERKNS_11_InputArrayERSt6vectorINS0_13ImageFeaturesESaISA_EES8_(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(24) %i.me)
          to label %bb.cj unwind label %bb.cu

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #29
  %i.mf = load ptr, ptr %19, align 8, !tbaa !283  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #29
  call void @_ZN2cv4UMatC1ENS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184) %28, i32 noundef 0) #29
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !40
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 32
  %i.mi = load ptr, ptr %i.mh, align 8
  invoke void %i.mi(ptr noundef nonnull align 8 dereferenceable(9) %i.mf, ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull align 8 dereferenceable(184) %28)
          to label %_ZN2cv6detail15FeaturesMatcherclERKSt6vectorINS0_13ImageFeaturesESaIS3_EERS2_INS0_11MatchesInfoESaIS8_EERKNS_4UMatE.exit unwind label %bb.cv, !inline_history !261

_ZN2cv6detail15FeaturesMatcherclERKSt6vectorINS0_13ImageFeaturesESaIS3_EERS2_INS0_11MatchesInfoESaIS8_EERKNS_4UMatE.exit: ; preds = %bb.cj
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %28) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #29
  %i.mj = load ptr, ptr %i.lt, align 8, !tbaa !40
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 16
  %i.ml = load ptr, ptr %i.mk, align 8
  %i.mm = invoke noundef zeroext i1 %i.ml(ptr noundef nonnull align 8 dereferenceable(8) %i.lt, ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull align 8 dereferenceable(24) %25)
          to label %_ZN2cv6detail9EstimatorclERKSt6vectorINS0_13ImageFeaturesESaIS3_EERKS2_INS0_11MatchesInfoESaIS8_EERS2_INS0_12CameraParamsESaISD_EE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !262

_ZN2cv6detail9EstimatorclERKSt6vectorINS0_13ImageFeaturesESaIS3_EERKS2_INS0_11MatchesInfoESaIS8_EERS2_INS0_12CameraParamsESaISD_EE.exit: ; preds = %_ZN2cv6detail15FeaturesMatcherclERKSt6vectorINS0_13ImageFeaturesESaIS3_EERS2_INS0_11MatchesInfoESaIS8_EERKNS_4UMatE.exit
  br i1 %i.mm, label %.preheader463, label %bb.ck

.preheader463:                                    ; preds = %_ZN2cv6detail9EstimatorclERKSt6vectorINS0_13ImageFeaturesESaIS3_EERKS2_INS0_11MatchesInfoESaIS8_EERS2_INS0_12CameraParamsESaISD_EE.exit
  %i.mn = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 3 uses
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !99
  %i.mp = load ptr, ptr %25, align 8, !tbaa !100
  %.not = icmp eq ptr %i.mo, %i.mp
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader463
  %i.mq = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.mr = getelementptr inbounds nuw i8, ptr %32, i64 16
  br label %bb.dd

bb.ck:                                            ; preds = %_ZN2cv6detail9EstimatorclERKSt6vectorINS0_13ImageFeaturesESaIS3_EERKS2_INS0_11MatchesInfoESaIS8_EERS2_INS0_12CameraParamsESaISD_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %bb.cl unwind label %bb.cw

bb.cl:                                            ; preds = %bb.ck
  %i.ms = load ptr, ptr %29, align 8, !tbaa !103
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 16
  %i.mu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.mt, ptr noundef nonnull @.str.30, i64 noundef 44)
          to label %_ZN7testing7MessagelsIA45_cEERS0_RKT_.exit unwind label %bb.cx ; 0 uses

_ZN7testing7MessagelsIA45_cEERS0_RKT_.exit:       ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #29
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %30, i32 noundef 2, ptr noundef nonnull @.str.21, i32 noundef 56, ptr noundef nonnull @.str.31)
          to label %bb.cm unwind label %bb.cy

bb.cm:                                            ; preds = %_ZN7testing7MessagelsIA45_cEERS0_RKT_.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %bb.cn unwind label %bb.cz

bb.cn:                                            ; preds = %bb.cm
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %30) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #29
  %i.mv = load ptr, ptr %29, align 8, !tbaa !103
  %.not.i.i.i256 = icmp eq ptr %i.mv, null
  br i1 %.not.i.i.i256, label %_ZN7testing7MessageD2Ev.exit, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.mw = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.cr

.noexc.i.i:                                       ; preds = %bb.co
  br i1 %i.mw, label %bb.cp, label %_ZN7testing7MessageD2Ev.exit

bb.cp:                                            ; preds = %.noexc.i.i
  %i.mx = load ptr, ptr %29, align 8, !tbaa !103  ; 3 uses
  %i.my = icmp eq ptr %i.mx, null
  br i1 %i.my, label %_ZN7testing7MessageD2Ev.exit, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.mz = load ptr, ptr %i.mx, align 8, !tbaa !40
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 8
  %i.nb = load ptr, ptr %i.na, align 8
  call void %i.nb(ptr noundef nonnull align 8 dereferenceable(128) %i.mx) #29, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

bb.cr:                                            ; preds = %bb.co
  %i.nc = landingpad { ptr, i32 }
          catch ptr null
  %i.nd = extractvalue { ptr, i32 } %i.nc, 0
  call void @__clang_call_terminate(ptr %i.nd) #32
  unreachable

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.cn, %.noexc.i.i, %bb.cp, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #29
  br label %bb.jg

bb.cs:                                            ; preds = %_ZNSt12__shared_ptrIN2cv6detail27BundleAdjusterAffinePartialELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ne = landingpad { ptr, i32 }
          cleanup
  br label %bb.kt

bb.ct:                                            ; preds = %bb.cg, %bb.cf, %_ZNSt12__shared_ptrIN2cv6detail20AffineBasedEstimatorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.nf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ks

bb.cu:                                            ; preds = %bb.ci, %bb.ch
  %i.ng = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #29
  br label %.loopexit.split-lp

bb.cv:                                            ; preds = %bb.cj
  %i.nh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %28) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #29
  br label %.loopexit.split-lp

bb.cw:                                            ; preds = %bb.ck
  %i.ni = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

bb.cx:                                            ; preds = %bb.cl
  %i.nj = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.cy:                                            ; preds = %_ZN7testing7MessagelsIA45_cEERS0_RKT_.exit
  %i.nk = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.cz:                                            ; preds = %bb.cm
  %i.nl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %30) #29
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %.pn83 = phi { ptr, i32 } [ %i.nl, %bb.cz ], [ %i.nk, %bb.cy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #29
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cx
  %.pn83.pn = phi { ptr, i32 } [ %.pn83, %bb.da ], [ %i.nj, %bb.cx ]
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %29) #29
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.cw
  %.pn83.pn.pn = phi { ptr, i32 } [ %.pn83.pn, %bb.db ], [ %i.ni, %bb.cw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #29
  br label %.loopexit.split-lp

._crit_edge:                                      ; preds = %bb.df, %.preheader463
  %i.nm = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN2cv6detail12CameraParamsESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef nonnull align 8 dereferenceable(24) %25)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.preheader:                                       ; preds = %._crit_edge
  %69 = load ptr, ptr %20, align 8                ; 2 uses
  br label %.preheader.a

bb.dd:                                            ; preds = %.lr.ph, %bb.df
  %.0467 = phi i64 [ 0, %.lr.ph ], [ %i.nu, %bb.df ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #29
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %31) #29
  %i.nn = load ptr, ptr %25, align 8, !tbaa !100
  %i.no = getelementptr inbounds nuw [448 x i8], ptr %i.nn, i64 %.0467
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #29
  store i64 0, ptr %i.mr, align 8
  store i32 33619968, ptr %32, align 8, !tbaa !270
  store ptr %31, ptr %i.mq, align 8, !tbaa !271
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 32
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %i.np, ptr noundef nonnull align 8 dereferenceable(24) %32, i32 noundef 5, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.de unwind label %bb.dg

bb.de:                                            ; preds = %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #29
  %i.nq = load ptr, ptr %25, align 8, !tbaa !100
  %i.nr = getelementptr inbounds nuw [448 x i8], ptr %i.nq, i64 %.0467
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 32
  %i.nt = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.ns, ptr noundef nonnull align 8 dereferenceable(208) %31)
          to label %bb.df unwind label %bb.dh     ; 0 uses

bb.df:                                            ; preds = %bb.de
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %31) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #29
  %i.nu = add nuw i64 %.0467, 1                   ; 2 uses
  %i.nv = load ptr, ptr %i.mn, align 8, !tbaa !99
  %i.nw = load ptr, ptr %25, align 8, !tbaa !100
  %i.nx = ptrtoint ptr %i.nv to i64
  %i.ny = ptrtoint ptr %i.nw to i64
  %i.nz = sub i64 %i.nx, %i.ny
  %i.oa = sdiv exact i64 %i.nz, 448
  %i.ob = icmp ult i64 %i.nu, %i.oa
  br i1 %i.ob, label %bb.dd, label %._crit_edge, !llvm.loop !263

bb.dg:                                            ; preds = %bb.dd
  %i.oc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #29
  br label %bb.di

bb.dh:                                            ; preds = %bb.de
  %i.od = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %.pn132 = phi { ptr, i32 } [ %i.od, %bb.dh ], [ %i.oc, %bb.dg ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %31) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #29
  br label %.loopexit.split-lp

.preheader.a:                                     ; preds = %.preheader, %_ZN2cv6detail9EstimatorclERKSt6vectorINS0_13ImageFeaturesESaIS3_EERKS2_INS0_11MatchesInfoESaIS8_EERS2_INS0_12CameraParamsESaISD_EE.exit258
  %.0452 = phi i8 [ %i.ol, %_ZN2cv6detail9EstimatorclERKSt6vectorINS0_13ImageFeaturesESaIS3_EERKS2_INS0_11MatchesInfoESaIS8_EERS2_INS0_12CameraParamsESaISD_EE.exit258 ], [ 1, %.preheader ] ; 2 uses
  %i.oe = invoke noundef zeroext i1 @_ZN4perf8TestBase4nextEv(ptr noundef nonnull align 8 dereferenceable(248) %0)
          to label %bb.dj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dj:                                            ; preds = %.preheader.a
  br i1 %i.oe, label %bb.dk, label %bb.dn

bb.dk:                                            ; preds = %bb.dj
  %i.of = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN2cv6detail12CameraParamsESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %25, ptr noundef nonnull align 8 dereferenceable(24) %26)
          to label %bb.dl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.dl:                                            ; preds = %bb.dk
  %i.og = invoke noundef zeroext i1 @_ZN4perf8TestBase10startTimerEv(ptr noundef nonnull align 8 dereferenceable(248) %0)
          to label %bb.dm unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.dm:                                            ; preds = %bb.dl
  %i.oh = load ptr, ptr %69, align 8, !tbaa !40
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 16
  %i.oj = load ptr, ptr %i.oi, align 8
  %i.ok = invoke noundef zeroext i1 %i.oj(ptr noundef nonnull align 8 dereferenceable(8) %69, ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull align 8 dereferenceable(24) %25)
          to label %_ZN2cv6detail9EstimatorclERKSt6vectorINS0_13ImageFeaturesESaIS3_EERKS2_INS0_11MatchesInfoESaIS8_EERS2_INS0_12CameraParamsESaISD_EE.exit258 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !262

_ZN2cv6detail9EstimatorclERKSt6vectorINS0_13ImageFeaturesESaIS3_EERKS2_INS0_11MatchesInfoESaIS8_EERS2_INS0_12CameraParamsESaISD_EE.exit258: ; preds = %bb.dm
  %i.ol = zext i1 %i.ok to i8
  invoke void @_ZN4perf8TestBase9stopTimerEv(ptr noundef nonnull align 8 dereferenceable(248) %0)
          to label %.preheader.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !llvm.loop !264

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.dm, %_ZN2cv6detail9EstimatorclERKSt6vectorINS0_13ImageFeaturesESaIS3_EERKS2_INS0_11MatchesInfoESaIS8_EERS2_INS0_12CameraParamsESaISD_EE.exit258, %bb.dl, %bb.dk, %.preheader.a, %._crit_edge, %_ZN2cv6detail15FeaturesMatcherclERKSt6vectorINS0_13ImageFeaturesESaIS3_EERS2_INS0_11MatchesInfoESaIS8_EERKNS_4UMatE.exit
  %lpad.loopexit.split-lp588 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.dn:                                            ; preds = %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #29
  store i8 %.0452, ptr %33, align 8, !tbaa !295
  %i.om = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 3 uses
  store ptr null, ptr %i.om, align 8, !tbaa !106
  %i.on = trunc nuw i8 %.0452 to i1
  br i1 %i.on, label %.thread, label %bb.do

bb.do:                                            ; preds = %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %34)
          to label %bb.dp unwind label %bb.dx

bb.dp:                                            ; preds = %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #29
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %36, ptr noundef nonnull align 8 dereferenceable(16) %33, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34)
          to label %bb.dq unwind label %bb.dy

bb.dq:                                            ; preds = %bb.dp
  %i.oo = load ptr, ptr %36, align 8, !tbaa !34
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %35, i32 noundef 1, ptr noundef nonnull @.str.21, i32 noundef 75, ptr noundef %i.oo)
          to label %bb.dr unwind label %bb.dz

bb.dr:                                            ; preds = %bb.dq
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %35, ptr noundef nonnull align 8 dereferenceable(8) %34)
          to label %bb.ds unwind label %bb.ea

bb.ds:                                            ; preds = %bb.dr
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %35) #29
  %i.op = load ptr, ptr %36, align 8, !tbaa !34   ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 2 uses
  %i.or = icmp eq ptr %i.op, %i.oq
  br i1 %i.or, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i259

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i259: ; preds = %bb.ds
  %i.os = load i64, ptr %i.oq, align 8, !tbaa !35
  %i.ot = add i64 %i.os, 1
  call void @_ZdlPvm(ptr noundef %i.op, i64 noundef %i.ot) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261: ; preds = %bb.ds, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i259
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #29
  %i.ou = load ptr, ptr %34, align 8, !tbaa !103
  %.not.i.i.i262 = icmp eq ptr %i.ou, null
  br i1 %.not.i.i.i262, label %bb.ed, label %bb.dt

bb.dt:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261
  %i.ov = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i263 unwind label %bb.dw

.noexc.i.i263:                                    ; preds = %bb.dt
  br i1 %i.ov, label %bb.du, label %bb.ed

bb.du:                                            ; preds = %.noexc.i.i263
  %i.ow = load ptr, ptr %34, align 8, !tbaa !103  ; 3 uses
  %i.ox = icmp eq ptr %i.ow, null
  br i1 %i.ox, label %bb.ed, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.oy = load ptr, ptr %i.ow, align 8, !tbaa !40
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 8
  %i.pa = load ptr, ptr %i.oz, align 8
  call void %i.pa(ptr noundef nonnull align 8 dereferenceable(128) %i.ow) #29, !inline_history !0
  br label %bb.ed

bb.dw:                                            ; preds = %bb.dt
  %i.pb = landingpad { ptr, i32 }
          catch ptr null
  %i.pc = extractvalue { ptr, i32 } %i.pb, 0
  call void @__clang_call_terminate(ptr %i.pc) #32
  unreachable

bb.dx:                                            ; preds = %bb.do
  %i.pd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

bb.dy:                                            ; preds = %bb.dp
  %i.pe = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267

bb.dz:                                            ; preds = %bb.dq
  %i.pf = landingpad { ptr, i32 }
          cleanup
  br label %bb.eb

bb.ea:                                            ; preds = %bb.dr
  %i.pg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %35) #29
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %.pn87 = phi { ptr, i32 } [ %i.pg, %bb.ea ], [ %i.pf, %bb.dz ] ; 2 uses
  %i.ph = load ptr, ptr %36, align 8, !tbaa !34   ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 2 uses
  %i.pj = icmp eq ptr %i.ph, %i.pi
  br i1 %i.pj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i265

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i265: ; preds = %bb.eb
  %i.pk = load i64, ptr %i.pi, align 8, !tbaa !35
  %i.pl = add i64 %i.pk, 1
  call void @_ZdlPvm(ptr noundef %i.ph, i64 noundef %i.pl) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267: ; preds = %bb.eb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i265, %bb.dy
  %.pn87.pn = phi { ptr, i32 } [ %i.pe, %bb.dy ], [ %.pn87, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i265 ], [ %.pn87, %bb.eb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #29
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %34) #29
  br label %bb.ec

bb.ec:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267, %bb.dx
  %.pn87.pn.pn = phi { ptr, i32 } [ %.pn87.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267 ], [ %i.pd, %bb.dx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %33) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #29
  br label %.loopexit.split-lp

bb.ed:                                            ; preds = %bb.dv, %bb.du, %.noexc.i.i263, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #29
  %.pr = load ptr, ptr %i.om, align 8, !tbaa !106
  %.not.i.i.i268 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i268, label %.thread, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.pm = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i269 unwind label %bb.eh

.noexc.i.i269:                                    ; preds = %bb.ee
  br i1 %i.pm, label %bb.ef, label %.thread

bb.ef:                                            ; preds = %.noexc.i.i269
  %i.pn = load ptr, ptr %i.om, align 8, !tbaa !106 ; 4 uses
  %i.po = icmp eq ptr %i.pn, null
  br i1 %i.po, label %.thread, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.pp = load ptr, ptr %i.pn, align 8, !tbaa !34 ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pn, i64 16 ; 2 uses
  %i.pr = icmp eq ptr %i.pp, %i.pq
  br i1 %i.pr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.eg
  %i.ps = load i64, ptr %i.pq, align 8, !tbaa !35
  %i.pt = add i64 %i.ps, 1
  call void @_ZdlPvm(ptr noundef %i.pp, i64 noundef %i.pt) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.eg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.pn, i64 noundef 32) #31
  br label %.thread

bb.eh:                                            ; preds = %bb.ee
  %i.pu = landingpad { ptr, i32 }
          catch ptr null
  %i.pv = extractvalue { ptr, i32 } %i.pu, 0
  call void @__clang_call_terminate(ptr %i.pv) #32
  unreachable

.thread:                                          ; preds = %bb.dn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %bb.ef, %.noexc.i.i269, %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #29
  %i.pw = load ptr, ptr %i.mn, align 8, !tbaa !99
  %i.px = load ptr, ptr %25, align 8, !tbaa !100
  %i.py = ptrtoint ptr %i.pw to i64
  %i.pz = ptrtoint ptr %i.px to i64
  %i.qa = sub i64 %i.py, %i.pz
  %i.qb = icmp eq i64 %i.qa, 896                  ; 2 uses
  %i.qc = zext i1 %i.qb to i8
  store i8 %i.qc, ptr %37, align 8, !tbaa !295
  %i.qd = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 3 uses
  store ptr null, ptr %i.qd, align 8, !tbaa !106
  br i1 %i.qb, label %_ZN7testing15AssertionResultD2Ev.exit284, label %bb.ei

bb.ei:                                            ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %38)
          to label %bb.ej unwind label %bb.er

bb.ej:                                            ; preds = %bb.ei
end_hunk_0
