inline.NumInlined: 1486
inline.NumDeleted: 467
begin_hunk_0_@_ZNK16OpenColorIO_v2_523GradingBSplineCurveImpl31computeKnotsAndCoefsForRGBCurveERNS0_10KnotsCoefsEi:bb.a
.noexc117.i:                                      ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i110.i
  %i.gw = getelementptr inbounds i8, ptr %i.gv, i64 %i.gn ; 2 uses
  %.sroa.speculated138.i = select i1 %i.gj, float %i.gi, float f0x3C23D70A
  store float %.sroa.speculated138.i, ptr %i.gw, align 4, !tbaa !58
  %i.gx = icmp sgt i64 %i.gn, 0
  br i1 %i.gx, label %bb.ao, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i115.i

bb.ao:                                            ; preds = %.noexc117.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.gv, ptr nonnull align 4 %i.gd, i64 %i.gn, i1 false)
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i115.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i115.i: ; preds = %bb.ao, %.noexc117.i
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 4
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gd, i64 noundef %i.gn) #24
  store ptr %i.gv, ptr %7, align 8, !tbaa !54
  store ptr %i.gy, ptr %i.fb, align 8, !tbaa !60
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %i.gt
  store ptr %i.gz, ptr %i.fd, align 8, !tbaa !57
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit98.thread.i

bb.ap:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i100.i, %bb.ai
  %i.ha = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.lr.ph259.i:                                      ; preds = %.lr.ph259.i.preheader, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit128.i
  %i.hb = phi ptr [ %i.ih, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit128.i ], [ %.promoted, %.lr.ph259.i.preheader ] ; 5 uses
  %i.hc = phi ptr [ %i.ii, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit128.i ], [ %i.fw, %.lr.ph259.i.preheader ] ; 3 uses
  %i.hd = phi ptr [ %i.ij, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit128.i ], [ %i.fx, %.lr.ph259.i.preheader ] ; 3 uses
  %.0258.i = phi i64 [ %i.ik, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit128.i ], [ 1, %.lr.ph259.i.preheader ] ; 4 uses
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.lcssa.i, i64 %.0258.i
  %i.hf = load float, ptr %i.he, align 4, !tbaa !58 ; 2 uses
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0164.0.lcssa.i, i64 %.0258.i
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !58
  %i.hi = add i64 %.0258.i, -1                    ; 2 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.lcssa.i, i64 %i.hi
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !58 ; 2 uses
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0164.0.lcssa.i, i64 %i.hi
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !58
  %i.hn = fmul float %i.hk, %i.hm
  %i.ho = tail call float @llvm.fmuladd.f32(float %i.hf, float %i.hh, float %i.hn)
  %i.hp = fadd float %i.hf, %i.hk
  %i.hq = fdiv float %i.ho, %i.hp                 ; 2 uses
  %.not.i119.i = icmp eq ptr %i.hd, %i.hc
  br i1 %.not.i119.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph259.i
  store float %i.hq, ptr %i.hd, align 4, !tbaa !58
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hd, i64 4 ; 2 uses
  store ptr %i.hr, ptr %i.fb, align 8, !tbaa !60
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit128.i

bb.ar:                                            ; preds = %.lr.ph259.i
  %i.hs = ptrtoint ptr %i.hc to i64
  %i.ht = ptrtoint ptr %i.hb to i64
  %i.hu = sub i64 %i.hs, %i.ht                    ; 6 uses
  %i.hv = icmp eq i64 %i.hu, 9223372036854775804
  br i1 %i.hv, label %bb.as, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i120.i

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.92) #22
          to label %.noexc126.i unwind label %.thread.loopexit.split-lp.i

.noexc126.i:                                      ; preds = %bb.as
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i120.i: ; preds = %bb.ar
  %i.hw = ashr exact i64 %i.hu, 2                 ; 3 uses
  %.sroa.speculated.i.i.i121.i = tail call i64 @llvm.umax.i64(i64 %i.hw, i64 1)
  %i.hx = add nsw i64 %.sroa.speculated.i.i.i121.i, %i.hw ; 2 uses
  %i.hy = icmp ult i64 %i.hx, %i.hw
  %i.hz = tail call i64 @llvm.umin.i64(i64 %i.hx, i64 2305843009213693951)
  %i.ia = select i1 %i.hy, i64 2305843009213693951, i64 %i.hz ; 3 uses
  %.not.i.i.i122.i = icmp ne i64 %i.ia, 0
  tail call void @llvm.assume(i1 %.not.i.i.i122.i)
  %i.ib = shl nuw nsw i64 %i.ia, 2
  %i.ic = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ib) #23
          to label %.noexc127.i unwind label %.thread.loopexit.i ; 5 uses

.noexc127.i:                                      ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i120.i
  %i.id = getelementptr inbounds i8, ptr %i.ic, i64 %i.hu ; 2 uses
  store float %i.hq, ptr %i.id, align 4, !tbaa !58
  %i.ie = icmp sgt i64 %i.hu, 0
  br i1 %i.ie, label %bb.at, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i123.i

bb.at:                                            ; preds = %.noexc127.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ic, ptr align 4 %i.hb, i64 %i.hu, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i123.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i123.i: ; preds = %bb.at, %.noexc127.i
  %i.if = getelementptr inbounds nuw i8, ptr %i.id, i64 4 ; 2 uses
  %.not.i17.i.i124.i = icmp eq ptr %i.hb, null
  br i1 %.not.i17.i.i124.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i125.i, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i123.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.hb, i64 noundef %i.hu) #24
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i125.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i125.i: ; preds = %bb.au, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i123.i
  store ptr %i.ic, ptr %7, align 8, !tbaa !54
  store ptr %i.if, ptr %i.fb, align 8, !tbaa !60
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %i.ia ; 2 uses
  store ptr %i.ig, ptr %i.fd, align 8, !tbaa !57
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit128.i

_ZNSt6vectorIfSaIfEE9push_backERKf.exit128.i:     ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i125.i, %bb.aq
  %i.ih = phi ptr [ %i.ic, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i125.i ], [ %i.hb, %bb.aq ]
  %i.ii = phi ptr [ %i.ig, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i125.i ], [ %i.hc, %bb.aq ] ; 2 uses
  %i.ij = phi ptr [ %i.if, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i125.i ], [ %i.hr, %bb.aq ] ; 2 uses
  %i.ik = add nuw i64 %.0258.i, 1                 ; 2 uses
  %exitcond283.not.i = icmp eq i64 %i.ik, %i.ao
  br i1 %exitcond283.not.i, label %._crit_edge260.i, label %.lr.ph259.i, !llvm.loop !114

.thread.loopexit.i:                               ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i120.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.thread.loopexit.split-lp.i:                      ; preds = %bb.as
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

_ZNSt6vectorIfSaIfEE9push_backERKf.exit98.thread.i: ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i115.i, %bb.al
  %i.il = phi ptr [ %i.gv, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i115.i ], [ %i.gd, %bb.al ] ; 2 uses
  %i.im = load float, ptr %.sroa.0164.0.lcssa.i, align 4, !tbaa !58
  %i.in = getelementptr inbounds nuw i8, ptr %i.il, i64 4
  %i.io = load float, ptr %i.in, align 4, !tbaa !58
  %i.ip = fneg float %i.io
  %i.iq = tail call float @llvm.fmuladd.f32(float %i.im, float 3.000000e+00, float %i.ip)
  %i.ir = fmul float %i.iq, 5.000000e-01          ; 2 uses
  %i.is = fcmp ogt float %i.ir, f0x3C23D70A
  %.sroa.speculated.i = select i1 %i.is, float %i.ir, float f0x3C23D70A
  store float %.sroa.speculated.i, ptr %i.il, align 4, !tbaa !58
  br label %bb.av

_ZNSt6vectorIfSaIfEE9push_backERKf.exit98.i:      ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i95.i, %bb.y
  %.not.i.i.i130.i = icmp eq ptr %.sroa.0.0.lcssa.i, null
  br i1 %.not.i.i.i130.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_117EstimateRGBSlopesERKSt6vectorINS_19GradingControlPointESaIS2_EERS1_IfSaIfEE.exit, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit98.i, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit98.thread.i
  %i.it = ptrtoint ptr %.sroa.18.0.lcssa.i to i64
  %i.iu = ptrtoint ptr %.sroa.0.0.lcssa.i to i64
  %i.iv = sub i64 %i.it, %i.iu
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0.lcssa.i, i64 noundef %i.iv) #24
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_117EstimateRGBSlopesERKSt6vectorINS_19GradingControlPointESaIS2_EERS1_IfSaIfEE.exit

bb.aw:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i110.i, %bb.an
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.ax:                                            ; preds = %bb.ac, %.loopexit.split-lp192.i, %.loopexit191.i, %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.18.0225.i = phi ptr [ %.sroa.15.0233.i, %.loopexit191.i ], [ %.sroa.18.0232.i, %.loopexit.split-lp.i ], [ %.sroa.18.0.lcssa.i, %bb.ac ], [ %.sroa.15.0233.i, %.loopexit.split-lp192.i ], [ %.sroa.18.0232.i, %.loopexit.i ]
  %.sroa.0.0216.i = phi ptr [ %.sroa.0.0234.i, %.loopexit191.i ], [ %.sroa.0.0234.i, %.loopexit.split-lp.i ], [ %.sroa.0.0.lcssa.i, %bb.ac ], [ %.sroa.0.0234.i, %.loopexit.split-lp192.i ], [ %.sroa.0.0234.i, %.loopexit.i ] ; 2 uses
  %.sroa.19.1.i = phi ptr [ %.sroa.19.2.i, %.loopexit191.i ], [ %.sroa.16.0236.i, %.loopexit.split-lp.i ], [ %.sroa.19.0.lcssa.i, %bb.ac ], [ %.sroa.19.2.i, %.loopexit.split-lp192.i ], [ %.sroa.16.0236.i, %.loopexit.i ] ; 2 uses
  %.sroa.0164.1.i = phi ptr [ %.sroa.0164.2.i, %.loopexit191.i ], [ %.sroa.0164.0237.i, %.loopexit.split-lp.i ], [ %.sroa.0164.0.lcssa.i, %bb.ac ], [ %.sroa.0164.2.i, %.loopexit.split-lp192.i ], [ %.sroa.0164.0237.i, %.loopexit.i ] ; 2 uses
  %.pn73.pn.i = phi { ptr, i32 } [ %lpad.loopexit193.i, %.loopexit191.i ], [ %lpad.loopexit.split-lp189.i, %.loopexit.split-lp.i ], [ %i.eb, %bb.ac ], [ %lpad.loopexit.split-lp194.i, %.loopexit.split-lp192.i ], [ %lpad.loopexit188.i, %.loopexit.i ] ; 2 uses
  %.not.i.i.i133.i = icmp eq ptr %.sroa.0.0216.i, null
  br i1 %.not.i.i.i133.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit134.i, label %.thread.i

.thread.i:                                        ; preds = %bb.ax, %bb.aw, %.thread.loopexit.split-lp.i, %.thread.loopexit.i, %bb.ap
  %.sroa.18.0224.i = phi ptr [ %.sroa.18.0225.i, %bb.ax ], [ %.sroa.18.0.lcssa.i, %.thread.loopexit.split-lp.i ], [ %.sroa.18.0.lcssa.i, %.thread.loopexit.i ], [ %.sroa.18.0.lcssa.i, %bb.aw ], [ %.sroa.18.0.lcssa.i, %bb.ap ]
  %.sroa.0.0219.i = phi ptr [ %.sroa.0.0216.i, %bb.ax ], [ %.sroa.0.0.lcssa.i, %.thread.loopexit.split-lp.i ], [ %.sroa.0.0.lcssa.i, %.thread.loopexit.i ], [ %.sroa.0.0.lcssa.i, %bb.aw ], [ %.sroa.0.0.lcssa.i, %bb.ap ] ; 2 uses
  %.pn73.pn185.i = phi { ptr, i32 } [ %.pn73.pn.i, %bb.ax ], [ %lpad.loopexit.split-lp.i, %.thread.loopexit.split-lp.i ], [ %lpad.loopexit.i, %.thread.loopexit.i ], [ %i.iw, %bb.aw ], [ %i.ha, %bb.ap ]
  %.sroa.0164.1183.i = phi ptr [ %.sroa.0164.1.i, %bb.ax ], [ %.sroa.0164.0.lcssa.i, %.thread.loopexit.split-lp.i ], [ %.sroa.0164.0.lcssa.i, %.thread.loopexit.i ], [ %.sroa.0164.0.lcssa.i, %bb.aw ], [ %.sroa.0164.0.lcssa.i, %bb.ap ]
  %.sroa.19.1181.i = phi ptr [ %.sroa.19.1.i, %bb.ax ], [ %.sroa.19.0.lcssa.i, %.thread.loopexit.split-lp.i ], [ %.sroa.19.0.lcssa.i, %.thread.loopexit.i ], [ %.sroa.19.0.lcssa.i, %bb.aw ], [ %.sroa.19.0.lcssa.i, %bb.ap ]
  %i.ix = ptrtoint ptr %.sroa.18.0224.i to i64
  %i.iy = ptrtoint ptr %.sroa.0.0219.i to i64
  %i.iz = sub i64 %i.ix, %i.iy
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0219.i, i64 noundef %i.iz) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit134.i

_ZNSt6vectorIfSaIfEED2Ev.exit134.i:               ; preds = %.thread.i, %bb.ax
  %.pn73.pn186.i = phi { ptr, i32 } [ %.pn73.pn.i, %bb.ax ], [ %.pn73.pn185.i, %.thread.i ] ; 2 uses
  %.sroa.0164.1184.i = phi ptr [ %.sroa.0164.1.i, %bb.ax ], [ %.sroa.0164.1183.i, %.thread.i ] ; 3 uses
  %.sroa.19.1182.i = phi ptr [ %.sroa.19.1.i, %bb.ax ], [ %.sroa.19.1181.i, %.thread.i ]
  %.not.i.i.i135.i = icmp eq ptr %.sroa.0164.1184.i, null
  br i1 %.not.i.i.i135.i, label %.body, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit134.i
  %i.ja = ptrtoint ptr %.sroa.19.1182.i to i64
  %i.jb = ptrtoint ptr %.sroa.0164.1184.i to i64
  %i.jc = sub i64 %i.ja, %i.jb
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0164.1184.i, i64 noundef %i.jc) #24
  br label %.body

_ZN16OpenColorIO_v2_512_GLOBAL__N_117EstimateRGBSlopesERKSt6vectorINS_19GradingControlPointESaIS2_EERS1_IfSaIfEE.exit: ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit98.i, %bb.av
  %i.jd = ptrtoint ptr %.sroa.19.0.lcssa.i to i64
  %i.je = ptrtoint ptr %.sroa.0164.0.lcssa.i to i64
  %i.jf = sub i64 %i.jd, %i.je
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0164.0.lcssa.i, i64 noundef %i.jf) #24
  br label %bb.az

bb.az:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_117EstimateRGBSlopesERKSt6vectorINS_19GradingControlPointESaIS2_EERS1_IfSaIfEE.exit, %bb.g
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_112FitRGBSplineERKSt6vectorINS_19GradingControlPointESaIS2_EERKS1_IfSaIfEERS8_SB_SB_SB_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.ba unwind label %bb.h

bb.ba:                                            ; preds = %bb.az
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %.val68 = load ptr, ptr %7, align 8             ; 4 uses
  %.val69 = load ptr, ptr %3, align 8, !tbaa !54  ; 7 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %.val70 = load ptr, ptr %i.jg, align 8, !tbaa !60 ; 3 uses
  %.not.i71 = icmp eq ptr %.val70, %.val69
  br i1 %.not.i71, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_115AdjustRGBSlopesERKSt6vectorINS_19GradingControlPointESaIS2_EERS1_IfSaIfEES9_.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.ba
  %i.jh = ptrtoint ptr %.val70 to i64
  %i.ji = ptrtoint ptr %.val69 to i64
  %i.jj = sub i64 %i.jh, %i.ji
  %i.jk = ashr exact i64 %i.jj, 2                 ; 2 uses
  br label %.lr.ph.i72.outer

.lr.ph.i72.outer:                                 ; preds = %.thread, %.lr.ph.preheader.i
  %.07.i.ph = phi i1 [ true, %.thread ], [ false, %.lr.ph.preheader.i ]
  %.0676.i.ph = phi i64 [ %i.jq, %.thread ], [ 0, %.lr.ph.preheader.i ]
  %.0695.i.ph = phi i64 [ %i.kq, %.thread ], [ 0, %.lr.ph.preheader.i ]
  br label %.lr.ph.i72

.lr.ph.i72:                                       ; preds = %.lr.ph.i72.outer, %bb.bc
  %.0676.i = phi i64 [ %.168.i, %bb.bc ], [ %.0676.i.ph, %.lr.ph.i72.outer ] ; 5 uses
  %.0695.i = phi i64 [ %i.ke, %bb.bc ], [ %.0695.i.ph, %.lr.ph.i72.outer ] ; 3 uses
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %.0676.i ; 2 uses
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !97 ; 3 uses
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %.val69, i64 %.0695.i
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !58 ; 3 uses
  %i.jp = fcmp une float %i.jm, %i.jo
  br i1 %i.jp, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.lr.ph.i72
  %i.jq = add i64 %.0676.i, 1                     ; 5 uses
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.jq ; 2 uses
  %i.js = load float, ptr %i.jr, align 4, !tbaa !97 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jl, i64 4
  %i.ju = load float, ptr %i.jt, align 4, !tbaa !100
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jr, i64 4
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !100
  %i.jx = fsub float %i.jw, %i.ju                 ; 2 uses
  %i.jy = fsub float %i.jo, %i.jm                 ; 2 uses
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %.val68, i64 %.0676.i
  %8 = load float, ptr %i.jz, align 4, !tbaa !58  ; 4 uses
  %9 = fneg float %8
  %10 = fmul float %i.jy, %9
  %11 = call float @llvm.fmuladd.f32(float %i.jx, float 2.000000e+00, float %10)
  %12 = fsub float %i.js, %i.jo                   ; 2 uses
  %13 = getelementptr inbounds nuw [4 x i8], ptr %.val68, i64 %i.jq
  %14 = load float, ptr %13, align 4, !tbaa !58   ; 4 uses
  %15 = fneg float %12
  %i.ka = call float @llvm.fmuladd.f32(float %15, float %14, float %11)
  %i.kb = fsub float %i.js, %i.jm                 ; 3 uses
  %i.kc = fdiv float %i.ka, %i.kb
  %i.kd = fcmp olt float %i.kc, 0.000000e+00
  br i1 %i.kd, label %.thread, label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.lr.ph.i72
  %.168.i = phi i64 [ %.0676.i, %.lr.ph.i72 ], [ %i.jq, %bb.bb ]
  %i.ke = add nuw i64 %.0695.i, 1                 ; 2 uses
  %exitcond.not.i73 = icmp eq i64 %i.ke, %i.jk
  br i1 %exitcond.not.i73, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_115AdjustRGBSlopesERKSt6vectorINS_19GradingControlPointESaIS2_EERS1_IfSaIfEES9_.exit, label %.lr.ph.i72, !llvm.loop !115

.thread:                                          ; preds = %bb.bb
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %.val68, i64 %.0676.i
  %16 = getelementptr inbounds nuw [4 x i8], ptr %.val68, i64 %i.jq
  %i.kg = fdiv float %i.jx, %i.kb                 ; 3 uses
  %i.kh = fmul float %12, %14
  %i.ki = call float @llvm.fmuladd.f32(float %i.jy, float %8, float %i.kh)
  %i.kj = fdiv float %i.ki, %i.kb
  %i.kk = fadd float %8, %14
  %i.kl = fmul float %i.kk, 5.000000e-03          ; 2 uses
  %i.km = fcmp ogt float %i.kl, %i.kg
  %.066.i = select i1 %i.km, float %i.kg, float %i.kl
  %i.kn = fneg float %.066.i
  %i.ko = call float @llvm.fmuladd.f32(float %i.kg, float 2.000000e+00, float %i.kn)
  %i.kp = fdiv float %i.ko, %i.kj                 ; 2 uses
  %17 = fmul float %8, %i.kp
  store float %17, ptr %i.kf, align 4, !tbaa !58
  %18 = fmul float %14, %i.kp
  store float %18, ptr %16, align 4, !tbaa !58
  %i.kq = add nuw i64 %.0695.i, 1                 ; 2 uses
  %exitcond.not.i73230 = icmp eq i64 %i.kq, %i.jk
  br i1 %exitcond.not.i73230, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i, label %.lr.ph.i72.outer, !llvm.loop !115

_ZN16OpenColorIO_v2_512_GLOBAL__N_115AdjustRGBSlopesERKSt6vectorINS_19GradingControlPointESaIS2_EERS1_IfSaIfEES9_.exit: ; preds = %bb.bc
  br i1 %.07.i.ph, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_115AdjustRGBSlopesERKSt6vectorINS_19GradingControlPointESaIS2_EERS1_IfSaIfEES9_.exit.thread

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %.thread, %_ZN16OpenColorIO_v2_512_GLOBAL__N_115AdjustRGBSlopesERKSt6vectorINS_19GradingControlPointESaIS2_EERS1_IfSaIfEES9_.exit
  store ptr %.val69, ptr %i.jg, align 8, !tbaa !60
  %i.kr = load ptr, ptr %4, align 8, !tbaa !54    ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !60 ; 2 uses
  %.not.i.i76 = icmp eq ptr %i.kt, %i.kr
  %spec.store.select = select i1 %.not.i.i76, ptr %i.kt, ptr %i.kr
  store ptr %spec.store.select, ptr %i.ks, align 8
  %i.ku = load ptr, ptr %5, align 8, !tbaa !54    ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !60 ; 2 uses
  %.not.i.i79 = icmp eq ptr %i.kw, %i.ku
  %spec.store.select114 = select i1 %.not.i.i79, ptr %i.kw, ptr %i.ku
  store ptr %spec.store.select114, ptr %i.kv, align 8
  %i.kx = load ptr, ptr %6, align 8, !tbaa !54    ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !60 ; 2 uses
  %.not.i.i82 = icmp eq ptr %i.kz, %i.kx
  %spec.store.select113 = select i1 %.not.i.i82, ptr %i.kz, ptr %i.kx
  store ptr %spec.store.select113, ptr %i.ky, align 8
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_112FitRGBSplineERKSt6vectorINS_19GradingControlPointESaIS2_EERKS1_IfSaIfEERS8_SB_SB_SB_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.thread-pre-split_crit_edge unwind label %bb.bd

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.thread-pre-split_crit_edge: ; preds = %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i
  %.pr.pre = load ptr, ptr %3, align 8, !tbaa !54
  %.pre167.pre = load ptr, ptr %i.jg, align 8, !tbaa !60
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_115AdjustRGBSlopesERKSt6vectorINS_19GradingControlPointESaIS2_EERS1_IfSaIfEES9_.exit.thread

bb.bd:                                            ; preds = %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i
  %i.la = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN16OpenColorIO_v2_512_GLOBAL__N_115AdjustRGBSlopesERKSt6vectorINS_19GradingControlPointESaIS2_EERS1_IfSaIfEES9_.exit.thread: ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_115AdjustRGBSlopesERKSt6vectorINS_19GradingControlPointESaIS2_EERS1_IfSaIfEES9_.exit, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.thread-pre-split_crit_edge, %bb.ba
  %i.lb = phi ptr [ %.val69, %bb.ba ], [ %.pre167.pre, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.thread-pre-split_crit_edge ], [ %.val70, %_ZN16OpenColorIO_v2_512_GLOBAL__N_115AdjustRGBSlopesERKSt6vectorINS_19GradingControlPointESaIS2_EERS1_IfSaIfEES9_.exit ]
  %i.lc = phi ptr [ %.val69, %bb.ba ], [ %.pr.pre, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.thread-pre-split_crit_edge ], [ %.val69, %_ZN16OpenColorIO_v2_512_GLOBAL__N_115AdjustRGBSlopesERKSt6vectorINS_19GradingControlPointESaIS2_EERS1_IfSaIfEES9_.exit ] ; 5 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %1, i64 108 ; 3 uses
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !116 ; 3 uses
  %i.lf = ptrtoint ptr %i.lb to i64
  %i.lg = ptrtoint ptr %i.lc to i64               ; 2 uses
  %i.lh = sub i64 %i.lf, %i.lg                    ; 4 uses
  %i.li = lshr exact i64 %i.lh, 2
  %i.lj = trunc i64 %i.li to i32                  ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %i.ll = load i32, ptr %i.lk, align 8, !tbaa !122 ; 3 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !60
  %i.lo = load ptr, ptr %4, align 8, !tbaa !54    ; 5 uses
  %i.lp = ptrtoint ptr %i.ln to i64
  %i.lq = ptrtoint ptr %i.lo to i64               ; 2 uses
  %i.lr = sub i64 %i.lp, %i.lq                    ; 5 uses
  %i.ls = ashr exact i64 %i.lr, 2                 ; 2 uses
  %i.lt = trunc i64 %i.ls to i32
  %i.lu = mul i32 %i.lt, 3                        ; 3 uses
  %i.lv = add nsw i32 %i.le, %i.lj
  %i.lw = icmp sgt i32 %i.lv, 120
  %i.lx = add nsw i32 %i.lu, %i.ll
  %i.ly = icmp sgt i32 %i.lx, 360
  %or.cond = select i1 %i.lw, i1 true, i1 %i.ly
  br i1 %or.cond, label %bb.be, label %bb.bi

bb.be:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_115AdjustRGBSlopesERKSt6vectorINS_19GradingControlPointESaIS2_EERS1_IfSaIfEES9_.exit.thread
  %i.lz = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.lz, ptr noundef nonnull @.str.16)
          to label %bb.bf unwind label %bb.bg

bb.bf:                                            ; preds = %bb.be
  invoke void @__cxa_throw(ptr nonnull %i.lz, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #22
          to label %bb.cg unwind label %bb.bh

bb.bg:                                            ; preds = %bb.be
  %i.ma = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.lz) #21
  br label %.body

bb.bh:                                            ; preds = %bb.bf
  %i.mb = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bi:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_115AdjustRGBSlopesERKSt6vectorINS_19GradingControlPointESaIS2_EERS1_IfSaIfEES9_.exit.thread
  %i.mc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.md = shl nsw i32 %2, 1                       ; 2 uses
  %i.me = sext i32 %i.md to i64                   ; 2 uses
  %i.mf = load ptr, ptr %i.mc, align 8, !tbaa !107 ; 2 uses
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %i.me
  store i32 %i.le, ptr %i.mg, align 4, !tbaa !3
  %i.mh = or disjoint i32 %i.md, 1
  %i.mi = sext i32 %i.mh to i64                   ; 2 uses
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %i.mi
  store i32 %i.lj, ptr %i.mj, align 4, !tbaa !3
  %i.mk = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !107 ; 2 uses
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.ml, i64 %i.me
  store i32 %i.ll, ptr %i.mm, align 4, !tbaa !3
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.ml, i64 %i.mi
  store i32 %i.lu, ptr %i.mn, align 4, !tbaa !3
  %i.mo = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !123
  %i.mq = sext i32 %i.le to i64
  %i.mr = getelementptr inbounds [4 x i8], ptr %i.mp, i64 %i.mq ; 2 uses
  %i.ms = icmp sgt i64 %i.lh, 4
  br i1 %i.ms, label %bb.bj, label %bb.bk, !prof !82

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.mr, ptr align 4 %i.lc, i64 %i.lh, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES6_ET0_T_S8_S7_.exit

bb.bk:                                            ; preds = %bb.bi
  %i.mt = icmp eq i64 %i.lh, 4
  br i1 %i.mt, label %bb.bl, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES6_ET0_T_S8_S7_.exit

bb.bl:                                            ; preds = %bb.bk
  %i.mu = load float, ptr %i.lc, align 4, !tbaa !58
  store float %i.mu, ptr %i.mr, align 4, !tbaa !58
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES6_ET0_T_S8_S7_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES6_ET0_T_S8_S7_.exit: ; preds = %bb.bl, %bb.bk, %bb.bj
  %i.mv = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !123 ; 3 uses
  %i.mx = sext i32 %i.ll to i64                   ; 3 uses
  %i.my = getelementptr inbounds [4 x i8], ptr %i.mw, i64 %i.mx ; 2 uses
  %i.mz = icmp sgt i64 %i.lr, 4
  br i1 %i.mz, label %bb.bm, label %bb.bn, !prof !82

bb.bm:                                            ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES6_ET0_T_S8_S7_.exit
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.my, ptr align 4 %i.lo, i64 %i.lr, i1 false)
  %.pre168 = load ptr, ptr %i.mv, align 8, !tbaa !123
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES6_ET0_T_S8_S7_.exit85

bb.bn:                                            ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES6_ET0_T_S8_S7_.exit
  %i.na = icmp eq i64 %i.lr, 4
  br i1 %i.na, label %bb.bo, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES6_ET0_T_S8_S7_.exit85

bb.bo:                                            ; preds = %bb.bn
  %i.nb = load float, ptr %i.lo, align 4, !tbaa !58
  store float %i.nb, ptr %i.my, align 4, !tbaa !58
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES6_ET0_T_S8_S7_.exit85

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES6_ET0_T_S8_S7_.exit85: ; preds = %bb.bo, %bb.bn, %bb.bm
  %i.nc = phi ptr [ %i.mw, %bb.bo ], [ %i.mw, %bb.bn ], [ %.pre168, %bb.bm ] ; 3 uses
  %i.nd = load ptr, ptr %5, align 8, !tbaa !123   ; 5 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !123
  %i.ng = getelementptr inbounds [4 x i8], ptr %i.nc, i64 %i.mx
  %i.nh = and i64 %i.ls, 4294967295
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %i.nh ; 2 uses
  %i.nj = ptrtoint ptr %i.nf to i64
  %i.nk = ptrtoint ptr %i.nd to i64               ; 2 uses
  %i.nl = sub i64 %i.nj, %i.nk                    ; 3 uses
  %i.nm = icmp sgt i64 %i.nl, 4
  br i1 %i.nm, label %bb.bp, label %bb.bq, !prof !82

bb.bp:                                            ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES6_ET0_T_S8_S7_.exit85
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ni, ptr align 4 %i.nd, i64 %i.nl, i1 false)
  %.pre169 = load ptr, ptr %i.mv, align 8, !tbaa !123
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES6_ET0_T_S8_S7_.exit86

bb.bq:                                            ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES6_ET0_T_S8_S7_.exit85
  %i.nn = icmp eq i64 %i.nl, 4
  br i1 %i.nn, label %bb.br, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES6_ET0_T_S8_S7_.exit86

bb.br:                                            ; preds = %bb.bq
  %i.no = load float, ptr %i.nd, align 4, !tbaa !58
  store float %i.no, ptr %i.ni, align 4, !tbaa !58
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES6_ET0_T_S8_S7_.exit86

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES6_ET0_T_S8_S7_.exit86: ; preds = %bb.br, %bb.bq, %bb.bp
  %i.np = phi ptr [ %i.nc, %bb.br ], [ %i.nc, %bb.bq ], [ %.pre169, %bb.bp ]
  %i.nq = load ptr, ptr %6, align 8, !tbaa !123   ; 5 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !123
  %i.nt = getelementptr inbounds [4 x i8], ptr %i.np, i64 %i.mx
  %i.nu = lshr exact i64 %i.lr, 1
  %i.nv = and i64 %i.nu, 4294967294
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.nt, i64 %i.nv ; 2 uses
  %i.nx = ptrtoint ptr %i.ns to i64
  %i.ny = ptrtoint ptr %i.nq to i64               ; 2 uses
  %i.nz = sub i64 %i.nx, %i.ny                    ; 3 uses
  %i.oa = icmp sgt i64 %i.nz, 4
  br i1 %i.oa, label %bb.bs, label %bb.bt, !prof !82

bb.bs:                                            ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES6_ET0_T_S8_S7_.exit86
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.nw, ptr align 4 %i.nq, i64 %i.nz, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES6_ET0_T_S8_S7_.exit87

bb.bt:                                            ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES6_ET0_T_S8_S7_.exit86
  %i.ob = icmp eq i64 %i.nz, 4
  br i1 %i.ob, label %bb.bu, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES6_ET0_T_S8_S7_.exit87

bb.bu:                                            ; preds = %bb.bt
  %i.oc = load float, ptr %i.nq, align 4, !tbaa !58
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_523GradingBSplineCurveImpl31computeKnotsAndCoefsForRGBCurveERNS0_10KnotsCoefsEi:bb.a
  %i.oy = sub i64 %i.ox, %i.lq
  call void @_ZdlPvm(ptr noundef nonnull %i.lo, i64 noundef %i.oy) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit94

_ZNSt6vectorIfSaIfEED2Ev.exit94:                  ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit92, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %.not.i.i.i95 = icmp eq ptr %i.lc, null
  br i1 %.not.i.i.i95, label %_ZNSt6vectorIfSaIfEED2Ev.exit96, label %bb.bz

bb.bz:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit94
  %i.oz = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !57
  %i.pb = ptrtoint ptr %i.pa to i64
  %i.pc = sub i64 %i.pb, %i.lg
  call void @_ZdlPvm(ptr noundef nonnull %i.lc, i64 noundef %i.pc) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit96

_ZNSt6vectorIfSaIfEED2Ev.exit96:                  ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit94, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.cf

.body:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit134.i, %bb.ay, %bb.h, %bb.bd, %bb.bh, %bb.bg
  %.pn63.pn.pn = phi { ptr, i32 } [ %.pn73.pn186.i, %_ZNSt6vectorIfSaIfEED2Ev.exit134.i ], [ %i.la, %bb.bd ], [ %i.mb, %bb.bh ], [ %i.ma, %bb.bg ], [ %.pn73.pn186.i, %bb.ay ], [ %i.an, %bb.h ]
  %i.pd = load ptr, ptr %7, align 8, !tbaa !54    ; 3 uses
  %.not.i.i.i97 = icmp eq ptr %i.pd, null
  br i1 %.not.i.i.i97, label %_ZNSt6vectorIfSaIfEED2Ev.exit98, label %bb.ca

bb.ca:                                            ; preds = %.body
  %i.pe = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !57
  %i.pg = ptrtoint ptr %i.pf to i64
  %i.ph = ptrtoint ptr %i.pd to i64
  %i.pi = sub i64 %i.pg, %i.ph
  call void @_ZdlPvm(ptr noundef nonnull %i.pd, i64 noundef %i.pi) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit98

_ZNSt6vectorIfSaIfEED2Ev.exit98:                  ; preds = %.body, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.pj = load ptr, ptr %6, align 8, !tbaa !54    ; 3 uses
  %.not.i.i.i99 = icmp eq ptr %i.pj, null
  br i1 %.not.i.i.i99, label %_ZNSt6vectorIfSaIfEED2Ev.exit100, label %bb.cb

bb.cb:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit98
  %i.pk = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !57
  %i.pm = ptrtoint ptr %i.pl to i64
  %i.pn = ptrtoint ptr %i.pj to i64
  %i.po = sub i64 %i.pm, %i.pn
  call void @_ZdlPvm(ptr noundef nonnull %i.pj, i64 noundef %i.po) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit100

_ZNSt6vectorIfSaIfEED2Ev.exit100:                 ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit98, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.pp = load ptr, ptr %5, align 8, !tbaa !54    ; 3 uses
  %.not.i.i.i101 = icmp eq ptr %i.pp, null
  br i1 %.not.i.i.i101, label %_ZNSt6vectorIfSaIfEED2Ev.exit102, label %bb.cc

bb.cc:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit100
  %i.pq = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !57
  %i.ps = ptrtoint ptr %i.pr to i64
  %i.pt = ptrtoint ptr %i.pp to i64
  %i.pu = sub i64 %i.ps, %i.pt
  call void @_ZdlPvm(ptr noundef nonnull %i.pp, i64 noundef %i.pu) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit102

_ZNSt6vectorIfSaIfEED2Ev.exit102:                 ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit100, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.pv = load ptr, ptr %4, align 8, !tbaa !54    ; 3 uses
  %.not.i.i.i103 = icmp eq ptr %i.pv, null
  br i1 %.not.i.i.i103, label %_ZNSt6vectorIfSaIfEED2Ev.exit104, label %bb.cd

bb.cd:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit102
  %i.pw = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !57
  %i.py = ptrtoint ptr %i.px to i64
  %i.pz = ptrtoint ptr %i.pv to i64
  %i.qa = sub i64 %i.py, %i.pz
  call void @_ZdlPvm(ptr noundef nonnull %i.pv, i64 noundef %i.qa) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit104

_ZNSt6vectorIfSaIfEED2Ev.exit104:                 ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit102, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.qb = load ptr, ptr %3, align 8, !tbaa !54    ; 3 uses
  %.not.i.i.i105 = icmp eq ptr %i.qb, null
  br i1 %.not.i.i.i105, label %_ZNSt6vectorIfSaIfEED2Ev.exit106, label %bb.ce

bb.ce:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit104
  %i.qc = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !57
  %i.qe = ptrtoint ptr %i.qd to i64
  %i.qf = ptrtoint ptr %i.qb to i64
  %i.qg = sub i64 %i.qe, %i.qf
  call void @_ZdlPvm(ptr noundef nonnull %i.qb, i64 noundef %i.qg) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit106

_ZNSt6vectorIfSaIfEED2Ev.exit106:                 ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit104, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %.pn63.pn.pn

bb.cf:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit96, %bb.c
  ret void

bb.cg:                                            ; preds = %bb.bf
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_112FitRGBSplineERKSt6vectorINS_19GradingControlPointESaIS2_EERKS1_IfSaIfEERS8_SB_SB_SB_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %4, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %5) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.c = load ptr, ptr %0, align 8, !tbaa !49     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 3
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !60   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !57
  %.not.i = icmp eq ptr %i.i, %i.k
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load float, ptr %i.c, align 4, !tbaa !58
  store float %i.l, ptr %i.i, align 4, !tbaa !58
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store ptr %i.m, ptr %i.h, align 8, !tbaa !60
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

bb.c:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %2, align 8, !tbaa !54     ; 4 uses
  %i.o = ptrtoint ptr %i.i to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 6 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775804
  br i1 %i.r, label %bb.d, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.92) #22
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.s = ashr exact i64 %i.q, 2                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.t = add nsw i64 %.sroa.speculated.i.i.i, %i.s ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.t, i64 2305843009213693951)
  %i.w = select i1 %i.u, i64 2305843009213693951, i64 %i.v ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.w, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.x = shl nuw nsw i64 %i.w, 2
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #23 ; 4 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 %i.q ; 2 uses
  %i.aa = load float, ptr %i.c, align 4, !tbaa !58
  store float %i.aa, ptr %i.z, align 4, !tbaa !58
  %i.ab = icmp sgt i64 %i.q, 0
  br i1 %i.ab, label %bb.e, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.y, ptr align 4 %i.n, i64 %i.q, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %.not.i17.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.q) #24
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i
  store ptr %i.y, ptr %2, align 8, !tbaa !54
  store ptr %i.ac, ptr %i.h, align 8, !tbaa !60
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.w
  store ptr %i.ad, ptr %i.j, align 8, !tbaa !57
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

_ZNSt6vectorIfSaIfEE9push_backERKf.exit:          ; preds = %bb.b, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i
  %i.ae = add nsw i64 %i.g, -1                    ; 2 uses
  %.not = icmp eq i64 %i.ae, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 9 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 9 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 9 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  br label %bb.g

._crit_edge:                                      ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit166, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit
  ret void

bb.g:                                             ; preds = %.lr.ph, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit166
  %.0196 = phi i64 [ 0, %.lr.ph ], [ %i.an, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit166 ] ; 7 uses
  %i.al = load ptr, ptr %0, align 8, !tbaa !49    ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.0196 ; 2 uses
  %6 = load float, ptr %i.am, align 4, !tbaa !97  ; 4 uses
  %i.an = add nuw i64 %.0196, 1                   ; 6 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.an ; 2 uses
  %7 = load float, ptr %i.ao, align 4, !tbaa !97  ; 6 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %9 = load float, ptr %8, align 4, !tbaa !100    ; 6 uses
  %10 = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %11 = load float, ptr %10, align 4, !tbaa !100
  %12 = fsub float %7, %6                         ; 5 uses
  %13 = fsub float %11, %9
  %i.ap = fdiv float %13, %12                     ; 4 uses
  %i.aq = load ptr, ptr %1, align 8, !tbaa !54    ; 4 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.0196
  %i.as = load float, ptr %i.ar, align 4, !tbaa !58 ; 5 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.an
  %i.au = load float, ptr %i.at, align 4, !tbaa !58 ; 5 uses
  %i.av = fadd float %i.as, %i.au
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.ap, float -2.000000e+00, float %i.av)
  %i.ax = tail call noundef float @llvm.fabs.f32(float %i.aw)
  %i.ay = fcmp olt float %i.ax, f0x358637BD
  br i1 %i.ay, label %bb.h, label %bb.x

bb.h:                                             ; preds = %bb.g
  %i.az = load ptr, ptr %i.af, align 8, !tbaa !60 ; 4 uses
  %i.ba = load ptr, ptr %i.ag, align 8, !tbaa !57
  %.not.i87 = icmp eq ptr %i.az, %i.ba
  br i1 %.not.i87, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store float %9, ptr %i.az, align 4, !tbaa !58
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  store ptr %i.bb, ptr %i.af, align 8, !tbaa !60
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit94

bb.j:                                             ; preds = %bb.h
  %i.bc = load ptr, ptr %5, align 8, !tbaa !54    ; 4 uses
  %i.bd = ptrtoint ptr %i.az to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be                    ; 6 uses
  %i.bg = icmp eq i64 %i.bf, 9223372036854775804
  br i1 %i.bg, label %bb.k, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i88

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.92) #22
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i88: ; preds = %bb.j
  %i.bh = ashr exact i64 %i.bf, 2                 ; 3 uses
  %.sroa.speculated.i.i.i89 = tail call i64 @llvm.umax.i64(i64 %i.bh, i64 1)
  %i.bi = add nsw i64 %.sroa.speculated.i.i.i89, %i.bh ; 2 uses
  %i.bj = icmp ult i64 %i.bi, %i.bh
  %i.bk = tail call i64 @llvm.umin.i64(i64 %i.bi, i64 2305843009213693951)
  %i.bl = select i1 %i.bj, i64 2305843009213693951, i64 %i.bk ; 3 uses
  %.not.i.i.i90 = icmp ne i64 %i.bl, 0
  tail call void @llvm.assume(i1 %.not.i.i.i90)
  %i.bm = shl nuw nsw i64 %i.bl, 2
  %i.bn = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bm) #23 ; 4 uses
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 %i.bf ; 2 uses
  store float %9, ptr %i.bo, align 4, !tbaa !58
  %i.bp = icmp sgt i64 %i.bf, 0
  br i1 %i.bp, label %bb.l, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i91

bb.l:                                             ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i88
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bn, ptr align 4 %i.bc, i64 %i.bf, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i91

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i91: ; preds = %bb.l, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i88
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %.not.i17.i.i92 = icmp eq ptr %i.bc, null
  br i1 %.not.i17.i.i92, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i93, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i91
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bf) #24
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i93

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i93: ; preds = %bb.m, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i91
  store ptr %i.bn, ptr %5, align 8, !tbaa !54
  store ptr %i.bq, ptr %i.af, align 8, !tbaa !60
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bl
  store ptr %i.br, ptr %i.ag, align 8, !tbaa !57
  %.pre197 = load ptr, ptr %1, align 8, !tbaa !54
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit94

_ZNSt6vectorIfSaIfEE9push_backERKf.exit94:        ; preds = %bb.i, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i93
  %i.bs = phi ptr [ %i.aq, %bb.i ], [ %.pre197, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i93 ] ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %.0196 ; 2 uses
  %i.bu = load ptr, ptr %i.ah, align 8, !tbaa !60 ; 4 uses
  %i.bv = load ptr, ptr %i.ai, align 8, !tbaa !57
  %.not.i95 = icmp eq ptr %i.bu, %i.bv
  br i1 %.not.i95, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit94
  %i.bw = load float, ptr %i.bt, align 4, !tbaa !58 ; 2 uses
  store float %i.bw, ptr %i.bu, align 4, !tbaa !58
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  store ptr %i.bx, ptr %i.ah, align 8, !tbaa !60
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit102

bb.o:                                             ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit94
  %i.by = load ptr, ptr %4, align 8, !tbaa !54    ; 4 uses
  %i.bz = ptrtoint ptr %i.bu to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bz, %i.ca                    ; 6 uses
  %i.cc = icmp eq i64 %i.cb, 9223372036854775804
  br i1 %i.cc, label %bb.p, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i96

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.92) #22
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i96: ; preds = %bb.o
  %i.cd = ashr exact i64 %i.cb, 2                 ; 3 uses
  %.sroa.speculated.i.i.i97 = tail call i64 @llvm.umax.i64(i64 %i.cd, i64 1)
  %i.ce = add nsw i64 %.sroa.speculated.i.i.i97, %i.cd ; 2 uses
  %i.cf = icmp ult i64 %i.ce, %i.cd
  %i.cg = tail call i64 @llvm.umin.i64(i64 %i.ce, i64 2305843009213693951)
  %i.ch = select i1 %i.cf, i64 2305843009213693951, i64 %i.cg ; 3 uses
  %.not.i.i.i98 = icmp ne i64 %i.ch, 0
  tail call void @llvm.assume(i1 %.not.i.i.i98)
  %i.ci = shl nuw nsw i64 %i.ch, 2
  %i.cj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ci) #23 ; 4 uses
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 %i.cb ; 2 uses
  %i.cl = load float, ptr %i.bt, align 4, !tbaa !58
  store float %i.cl, ptr %i.ck, align 4, !tbaa !58
  %i.cm = icmp sgt i64 %i.cb, 0
  br i1 %i.cm, label %bb.q, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i99

bb.q:                                             ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i96
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cj, ptr align 4 %i.by, i64 %i.cb, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i99

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i99: ; preds = %bb.q, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i96
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %.not.i17.i.i100 = icmp eq ptr %i.by, null
  br i1 %.not.i17.i.i100, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i101, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i99
  tail call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.cb) #24
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i101

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i101: ; preds = %bb.r, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i99
  store ptr %i.cj, ptr %4, align 8, !tbaa !54
  store ptr %i.cn, ptr %i.ah, align 8, !tbaa !60
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.ch
  store ptr %i.co, ptr %i.ai, align 8, !tbaa !57
  %.pre198 = load ptr, ptr %1, align 8, !tbaa !54 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %.pre198, i64 %.0196
  %.pre199 = load float, ptr %.phi.trans.insert, align 4, !tbaa !58
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit102

_ZNSt6vectorIfSaIfEE9push_backERKf.exit102:       ; preds = %bb.n, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i101
  %i.cp = phi float [ %i.bw, %bb.n ], [ %.pre199, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i101 ]
  %i.cq = phi ptr [ %i.bs, %bb.n ], [ %.pre198, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i101 ]
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.an
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !58
  %i.ct = fsub float %i.cs, %i.cp
  %i.cu = fmul float %i.ct, 5.000000e-01
  %i.cv = fdiv float %i.cu, %12                   ; 2 uses
  %i.cw = load ptr, ptr %i.aj, align 8, !tbaa !60 ; 4 uses
  %i.cx = load ptr, ptr %i.ak, align 8, !tbaa !57
  %.not.i.i = icmp eq ptr %i.cw, %i.cx
  br i1 %.not.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit102
  store float %i.cv, ptr %i.cw, align 4, !tbaa !58
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  store ptr %i.cy, ptr %i.aj, align 8, !tbaa !60
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit

bb.t:                                             ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit102
  %i.cz = load ptr, ptr %3, align 8, !tbaa !54    ; 4 uses
  %i.da = ptrtoint ptr %i.cw to i64
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = sub i64 %i.da, %i.db                    ; 6 uses
  %i.dd = icmp eq i64 %i.dc, 9223372036854775804
  br i1 %i.dd, label %bb.u, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i

bb.u:                                             ; preds = %bb.t
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.92) #22
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.t
  %i.de = ashr exact i64 %i.dc, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.de, i64 1)
  %i.df = add nsw i64 %.sroa.speculated.i.i.i.i, %i.de ; 2 uses
  %i.dg = icmp ult i64 %i.df, %i.de
  %i.dh = tail call i64 @llvm.umin.i64(i64 %i.df, i64 2305843009213693951)
  %i.di = select i1 %i.dg, i64 2305843009213693951, i64 %i.dh ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.di, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.dj = shl nuw nsw i64 %i.di, 2
  %i.dk = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dj) #23 ; 4 uses
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 %i.dc ; 2 uses
  store float %i.cv, ptr %i.dl, align 4, !tbaa !58
  %i.dm = icmp sgt i64 %i.dc, 0
  br i1 %i.dm, label %bb.v, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i

bb.v:                                             ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dk, ptr align 4 %i.cz, i64 %i.dc, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.v, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef %i.dc) #24
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i: ; preds = %bb.w, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i
  store ptr %i.dk, ptr %3, align 8, !tbaa !54
  store ptr %i.dn, ptr %i.aj, align 8, !tbaa !60
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.di
  store ptr %i.do, ptr %i.ak, align 8, !tbaa !57
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit

bb.x:                                             ; preds = %bb.g
  %i.dp = fsub float %i.as, %i.ap                 ; 3 uses
  %i.dq = fsub float %i.au, %i.ap                 ; 3 uses
  %i.dr = fmul float %i.dp, %i.dq
  %i.ds = fcmp ult float %i.dr, 0.000000e+00
  br i1 %i.ds, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %14 = fadd float %6, %7
  %i.dt = fmul float %14, 5.000000e-01
  %.pre200 = fsub float %i.au, %i.as
  br label %bb.ac

bb.z:                                             ; preds = %bb.x
  %i.du = tail call noundef float @llvm.fabs.f32(float %i.dp)
  %i.dv = tail call noundef float @llvm.fabs.f32(float %i.dq)
  %i.dw = fcmp ogt float %i.du, %i.dv
  %i.dx = fsub float %i.au, %i.as                 ; 4 uses
  br i1 %i.dw, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dy = fmul float %12, %i.dp
  %i.dz = fdiv float %i.dy, %i.dx
  %i.ea = fadd float %7, %i.dz
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.eb = fmul float %12, %i.dq
  %i.ec = fdiv float %i.eb, %i.dx
  %i.ed = fadd float %6, %i.ec
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab, %bb.y
  %.pre-phi = phi float [ %i.dx, %bb.aa ], [ %i.dx, %bb.ab ], [ %.pre200, %bb.y ]
  %.0195 = phi float [ %i.ea, %bb.aa ], [ %i.ed, %bb.ab ], [ %i.dt, %bb.y ] ; 4 uses
  %i.ee = fneg float %i.au
  %i.ef = tail call float @llvm.fmuladd.f32(float %i.ap, float 2.000000e+00, float %i.ee)
  %i.eg = fsub float %.0195, %6                   ; 5 uses
  %i.eh = fmul float %.pre-phi, %i.eg
  %i.ei = fdiv float %i.eh, %12
  %i.ej = fadd float %i.ef, %i.ei                 ; 4 uses
  %i.ek = fsub float %i.ej, %i.as
  %i.el = fdiv float %i.ek, %i.eg
  %i.em = load ptr, ptr %i.af, align 8, !tbaa !60 ; 4 uses
  %i.en = load ptr, ptr %i.ag, align 8, !tbaa !57
  %.not.i103 = icmp eq ptr %i.em, %i.en
  br i1 %.not.i103, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store float %9, ptr %i.em, align 4, !tbaa !58
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  store ptr %i.eo, ptr %i.af, align 8, !tbaa !60
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit110

bb.ae:                                            ; preds = %bb.ac
  %i.ep = load ptr, ptr %5, align 8, !tbaa !54    ; 4 uses
  %i.eq = ptrtoint ptr %i.em to i64
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = sub i64 %i.eq, %i.er                    ; 6 uses
  %i.et = icmp eq i64 %i.es, 9223372036854775804
  br i1 %i.et, label %bb.af, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i104

bb.af:                                            ; preds = %bb.ae
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.92) #22
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i104: ; preds = %bb.ae
  %i.eu = ashr exact i64 %i.es, 2                 ; 3 uses
  %.sroa.speculated.i.i.i105 = tail call i64 @llvm.umax.i64(i64 %i.eu, i64 1)
  %i.ev = add nsw i64 %.sroa.speculated.i.i.i105, %i.eu ; 2 uses
  %i.ew = icmp ult i64 %i.ev, %i.eu
  %i.ex = tail call i64 @llvm.umin.i64(i64 %i.ev, i64 2305843009213693951)
  %i.ey = select i1 %i.ew, i64 2305843009213693951, i64 %i.ex ; 3 uses
  %.not.i.i.i106 = icmp ne i64 %i.ey, 0
  tail call void @llvm.assume(i1 %.not.i.i.i106)
  %i.ez = shl nuw nsw i64 %i.ey, 2
  %i.fa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ez) #23 ; 4 uses
  %i.fb = getelementptr inbounds i8, ptr %i.fa, i64 %i.es ; 2 uses
  store float %9, ptr %i.fb, align 4, !tbaa !58
  %i.fc = icmp sgt i64 %i.es, 0
  br i1 %i.fc, label %bb.ag, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i107

bb.ag:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i104
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fa, ptr align 4 %i.ep, i64 %i.es, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i107

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i107: ; preds = %bb.ag, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i104
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  %.not.i17.i.i108 = icmp eq ptr %i.ep, null
  br i1 %.not.i17.i.i108, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i109, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i107
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ep, i64 noundef %i.es) #24
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i109

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i109: ; preds = %bb.ah, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i107
  store ptr %i.fa, ptr %5, align 8, !tbaa !54
  store ptr %i.fd, ptr %i.af, align 8, !tbaa !60
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %i.ey
  store ptr %i.fe, ptr %i.ag, align 8, !tbaa !57
  %.pre = load ptr, ptr %1, align 8, !tbaa !54
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit110

_ZNSt6vectorIfSaIfEE9push_backERKf.exit110:       ; preds = %bb.ad, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i109
  %i.ff = phi ptr [ %i.aq, %bb.ad ], [ %.pre, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i109 ]
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %.0196 ; 2 uses
  %i.fh = load ptr, ptr %i.ah, align 8, !tbaa !60 ; 4 uses
  %i.fi = load ptr, ptr %i.ai, align 8, !tbaa !57
  %.not.i111 = icmp eq ptr %i.fh, %i.fi
  br i1 %.not.i111, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit110
  %i.fj = load float, ptr %i.fg, align 4, !tbaa !58
  store float %i.fj, ptr %i.fh, align 4, !tbaa !58
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 4
  store ptr %i.fk, ptr %i.ah, align 8, !tbaa !60
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit118

bb.aj:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit110
  %i.fl = load ptr, ptr %4, align 8, !tbaa !54    ; 4 uses
  %i.fm = ptrtoint ptr %i.fh to i64
  %i.fn = ptrtoint ptr %i.fl to i64
  %i.fo = sub i64 %i.fm, %i.fn                    ; 6 uses
  %i.fp = icmp eq i64 %i.fo, 9223372036854775804
  br i1 %i.fp, label %bb.ak, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i112

bb.ak:                                            ; preds = %bb.aj
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.92) #22
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i112: ; preds = %bb.aj
  %i.fq = ashr exact i64 %i.fo, 2                 ; 3 uses
  %.sroa.speculated.i.i.i113 = tail call i64 @llvm.umax.i64(i64 %i.fq, i64 1)
  %i.fr = add nsw i64 %.sroa.speculated.i.i.i113, %i.fq ; 2 uses
  %i.fs = icmp ult i64 %i.fr, %i.fq
  %i.ft = tail call i64 @llvm.umin.i64(i64 %i.fr, i64 2305843009213693951)
  %i.fu = select i1 %i.fs, i64 2305843009213693951, i64 %i.ft ; 3 uses
  %.not.i.i.i114 = icmp ne i64 %i.fu, 0
  tail call void @llvm.assume(i1 %.not.i.i.i114)
  %i.fv = shl nuw nsw i64 %i.fu, 2
  %i.fw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fv) #23 ; 4 uses
  %i.fx = getelementptr inbounds i8, ptr %i.fw, i64 %i.fo ; 2 uses
  %i.fy = load float, ptr %i.fg, align 4, !tbaa !58
  store float %i.fy, ptr %i.fx, align 4, !tbaa !58
  %i.fz = icmp sgt i64 %i.fo, 0
  br i1 %i.fz, label %bb.al, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i115

bb.al:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i112
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fw, ptr align 4 %i.fl, i64 %i.fo, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i115

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i115: ; preds = %bb.al, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i112
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 4
  %.not.i17.i.i116 = icmp eq ptr %i.fl, null
  br i1 %.not.i17.i.i116, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i117, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i115
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fl, i64 noundef %i.fo) #24
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i117

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i117: ; preds = %bb.am, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i115
  store ptr %i.fw, ptr %4, align 8, !tbaa !54
  store ptr %i.ga, ptr %i.ah, align 8, !tbaa !60
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %i.fu
  store ptr %i.gb, ptr %i.ai, align 8, !tbaa !57
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit118

_ZNSt6vectorIfSaIfEE9push_backERKf.exit118:       ; preds = %bb.ai, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i117
  %i.gc = fmul float %i.el, 5.000000e-01          ; 3 uses
  %i.gd = load ptr, ptr %i.aj, align 8, !tbaa !60 ; 4 uses
  %i.ge = load ptr, ptr %i.ak, align 8, !tbaa !57
  %.not.i.i119 = icmp eq ptr %i.gd, %i.ge
  br i1 %.not.i.i119, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit118
  store float %i.gc, ptr %i.gd, align 4, !tbaa !58
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 4
  store ptr %i.gf, ptr %i.aj, align 8, !tbaa !60
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit126

bb.ao:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit118
  %i.gg = load ptr, ptr %3, align 8, !tbaa !54    ; 4 uses
  %i.gh = ptrtoint ptr %i.gd to i64
  %i.gi = ptrtoint ptr %i.gg to i64
  %i.gj = sub i64 %i.gh, %i.gi                    ; 6 uses
  %i.gk = icmp eq i64 %i.gj, 9223372036854775804
  br i1 %i.gk, label %bb.ap, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i120

bb.ap:                                            ; preds = %bb.ao
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.92) #22
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i120: ; preds = %bb.ao
  %i.gl = ashr exact i64 %i.gj, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i121 = tail call i64 @llvm.umax.i64(i64 %i.gl, i64 1)
  %i.gm = add nsw i64 %.sroa.speculated.i.i.i.i121, %i.gl ; 2 uses
  %i.gn = icmp ult i64 %i.gm, %i.gl
  %i.go = tail call i64 @llvm.umin.i64(i64 %i.gm, i64 2305843009213693951)
  %i.gp = select i1 %i.gn, i64 2305843009213693951, i64 %i.go ; 3 uses
  %.not.i.i.i.i122 = icmp ne i64 %i.gp, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i122)
  %i.gq = shl nuw nsw i64 %i.gp, 2
  %i.gr = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gq) #23 ; 4 uses
  %i.gs = getelementptr inbounds i8, ptr %i.gr, i64 %i.gj ; 2 uses
  store float %i.gc, ptr %i.gs, align 4, !tbaa !58
  %i.gt = icmp sgt i64 %i.gj, 0
  br i1 %i.gt, label %bb.aq, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i123

bb.aq:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i120
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.gr, ptr align 4 %i.gg, i64 %i.gj, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i123

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i123: ; preds = %bb.aq, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i120
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 4
  %.not.i17.i.i.i124 = icmp eq ptr %i.gg, null
  br i1 %.not.i17.i.i.i124, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i125, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i123
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gg, i64 noundef %i.gj) #24
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i125

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i125: ; preds = %bb.ar, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i123
  store ptr %i.gr, ptr %3, align 8, !tbaa !54
  store ptr %i.gu, ptr %i.aj, align 8, !tbaa !60
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.gp
  store ptr %i.gv, ptr %i.ak, align 8, !tbaa !57
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit126

_ZNSt6vectorIfSaIfEE9push_backEOf.exit126:        ; preds = %bb.an, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i125
  %i.gw = load ptr, ptr %1, align 8, !tbaa !54
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %.0196
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !58
  %i.gz = tail call float @llvm.fmuladd.f32(float %i.gy, float %i.eg, float %9)
  %i.ha = fmul float %i.eg, %i.gc
  %i.hb = tail call float @llvm.fmuladd.f32(float %i.ha, float %i.eg, float %i.gz) ; 2 uses
  %i.hc = load ptr, ptr %i.af, align 8, !tbaa !60 ; 4 uses
  %i.hd = load ptr, ptr %i.ag, align 8, !tbaa !57
  %.not.i.i127 = icmp eq ptr %i.hc, %i.hd
  br i1 %.not.i.i127, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit126
  store float %i.hb, ptr %i.hc, align 4, !tbaa !58
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 4
  store ptr %i.he, ptr %i.af, align 8, !tbaa !60
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit134

bb.at:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit126
  %i.hf = load ptr, ptr %5, align 8, !tbaa !54    ; 4 uses
  %i.hg = ptrtoint ptr %i.hc to i64
  %i.hh = ptrtoint ptr %i.hf to i64
  %i.hi = sub i64 %i.hg, %i.hh                    ; 6 uses
  %i.hj = icmp eq i64 %i.hi, 9223372036854775804
  br i1 %i.hj, label %bb.au, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i128

bb.au:                                            ; preds = %bb.at
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.92) #22
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i128: ; preds = %bb.at
  %i.hk = ashr exact i64 %i.hi, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i129 = tail call i64 @llvm.umax.i64(i64 %i.hk, i64 1)
  %i.hl = add nsw i64 %.sroa.speculated.i.i.i.i129, %i.hk ; 2 uses
  %i.hm = icmp ult i64 %i.hl, %i.hk
  %i.hn = tail call i64 @llvm.umin.i64(i64 %i.hl, i64 2305843009213693951)
  %i.ho = select i1 %i.hm, i64 2305843009213693951, i64 %i.hn ; 3 uses
  %.not.i.i.i.i130 = icmp ne i64 %i.ho, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i130)
  %i.hp = shl nuw nsw i64 %i.ho, 2
  %i.hq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hp) #23 ; 4 uses
  %i.hr = getelementptr inbounds i8, ptr %i.hq, i64 %i.hi ; 2 uses
  store float %i.hb, ptr %i.hr, align 4, !tbaa !58
  %i.hs = icmp sgt i64 %i.hi, 0
  br i1 %i.hs, label %bb.av, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i131

bb.av:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i128
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hq, ptr align 4 %i.hf, i64 %i.hi, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i131

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i131: ; preds = %bb.av, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i128
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 4
  %.not.i17.i.i.i132 = icmp eq ptr %i.hf, null
  br i1 %.not.i17.i.i.i132, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i133, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i131
  tail call void @_ZdlPvm(ptr noundef nonnull %i.hf, i64 noundef %i.hi) #24
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i133

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i133: ; preds = %bb.aw, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i131
  store ptr %i.hq, ptr %5, align 8, !tbaa !54
  store ptr %i.ht, ptr %i.af, align 8, !tbaa !60
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %i.ho
  store ptr %i.hu, ptr %i.ag, align 8, !tbaa !57
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit134

_ZNSt6vectorIfSaIfEE9push_backEOf.exit134:        ; preds = %bb.as, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i133
  %i.hv = load ptr, ptr %i.ah, align 8, !tbaa !60 ; 4 uses
  %i.hw = load ptr, ptr %i.ai, align 8, !tbaa !57
  %.not.i135 = icmp eq ptr %i.hv, %i.hw
  br i1 %.not.i135, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit134
  store float %i.ej, ptr %i.hv, align 4, !tbaa !58
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 4
  store ptr %i.hx, ptr %i.ah, align 8, !tbaa !60
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit142

bb.ay:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit134
  %i.hy = load ptr, ptr %4, align 8, !tbaa !54    ; 4 uses
  %i.hz = ptrtoint ptr %i.hv to i64
  %i.ia = ptrtoint ptr %i.hy to i64
  %i.ib = sub i64 %i.hz, %i.ia                    ; 6 uses
  %i.ic = icmp eq i64 %i.ib, 9223372036854775804
  br i1 %i.ic, label %bb.az, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i136

bb.az:                                            ; preds = %bb.ay
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.92) #22
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i136: ; preds = %bb.ay
  %i.id = ashr exact i64 %i.ib, 2                 ; 3 uses
  %.sroa.speculated.i.i.i137 = tail call i64 @llvm.umax.i64(i64 %i.id, i64 1)
  %i.ie = add nsw i64 %.sroa.speculated.i.i.i137, %i.id ; 2 uses
  %i.if = icmp ult i64 %i.ie, %i.id
  %i.ig = tail call i64 @llvm.umin.i64(i64 %i.ie, i64 2305843009213693951)
  %i.ih = select i1 %i.if, i64 2305843009213693951, i64 %i.ig ; 3 uses
  %.not.i.i.i138 = icmp ne i64 %i.ih, 0
  tail call void @llvm.assume(i1 %.not.i.i.i138)
  %i.ii = shl nuw nsw i64 %i.ih, 2
  %i.ij = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ii) #23 ; 4 uses
  %i.ik = getelementptr inbounds i8, ptr %i.ij, i64 %i.ib ; 2 uses
  store float %i.ej, ptr %i.ik, align 4, !tbaa !58
  %i.il = icmp sgt i64 %i.ib, 0
  br i1 %i.il, label %bb.ba, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i139

bb.ba:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i136
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ij, ptr align 4 %i.hy, i64 %i.ib, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i139

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i139: ; preds = %bb.ba, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i136
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 4
  %.not.i17.i.i140 = icmp eq ptr %i.hy, null
  br i1 %.not.i17.i.i140, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i141, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i139
  tail call void @_ZdlPvm(ptr noundef nonnull %i.hy, i64 noundef %i.ib) #24
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i141

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i141: ; preds = %bb.bb, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i139
  store ptr %i.ij, ptr %4, align 8, !tbaa !54
  store ptr %i.im, ptr %i.ah, align 8, !tbaa !60
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %i.ih
  store ptr %i.in, ptr %i.ai, align 8, !tbaa !57
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit142

_ZNSt6vectorIfSaIfEE9push_backERKf.exit142:       ; preds = %bb.ax, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i141
  %i.io = load ptr, ptr %1, align 8, !tbaa !54
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %i.an
  %i.iq = load float, ptr %i.ip, align 4, !tbaa !58
  %i.ir = fsub float %i.iq, %i.ej
  %i.is = fmul float %i.ir, 5.000000e-01
  %i.it = fsub float %7, %.0195
  %i.iu = fdiv float %i.is, %i.it                 ; 2 uses
  %i.iv = load ptr, ptr %i.aj, align 8, !tbaa !60 ; 4 uses
  %i.iw = load ptr, ptr %i.ak, align 8, !tbaa !57
  %.not.i.i143 = icmp eq ptr %i.iv, %i.iw
  br i1 %.not.i.i143, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit142
  store float %i.iu, ptr %i.iv, align 4, !tbaa !58
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iv, i64 4
  store ptr %i.ix, ptr %i.aj, align 8, !tbaa !60
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit150

bb.bd:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit142
  %i.iy = load ptr, ptr %3, align 8, !tbaa !54    ; 4 uses
  %i.iz = ptrtoint ptr %i.iv to i64
  %i.ja = ptrtoint ptr %i.iy to i64
  %i.jb = sub i64 %i.iz, %i.ja                    ; 6 uses
  %i.jc = icmp eq i64 %i.jb, 9223372036854775804
  br i1 %i.jc, label %bb.be, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i144

bb.be:                                            ; preds = %bb.bd
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.92) #22
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i144: ; preds = %bb.bd
  %i.jd = ashr exact i64 %i.jb, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i145 = tail call i64 @llvm.umax.i64(i64 %i.jd, i64 1)
  %i.je = add nsw i64 %.sroa.speculated.i.i.i.i145, %i.jd ; 2 uses
  %i.jf = icmp ult i64 %i.je, %i.jd
  %i.jg = tail call i64 @llvm.umin.i64(i64 %i.je, i64 2305843009213693951)
  %i.jh = select i1 %i.jf, i64 2305843009213693951, i64 %i.jg ; 3 uses
  %.not.i.i.i.i146 = icmp ne i64 %i.jh, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i146)
  %i.ji = shl nuw nsw i64 %i.jh, 2
  %i.jj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ji) #23 ; 4 uses
  %i.jk = getelementptr inbounds i8, ptr %i.jj, i64 %i.jb ; 2 uses
  store float %i.iu, ptr %i.jk, align 4, !tbaa !58
  %i.jl = icmp sgt i64 %i.jb, 0
  br i1 %i.jl, label %bb.bf, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i147

bb.bf:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i144
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.jj, ptr align 4 %i.iy, i64 %i.jb, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i147

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i147: ; preds = %bb.bf, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i144
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jk, i64 4
  %.not.i17.i.i.i148 = icmp eq ptr %i.iy, null
  br i1 %.not.i17.i.i.i148, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i149, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i147
  tail call void @_ZdlPvm(ptr noundef nonnull %i.iy, i64 noundef %i.jb) #24
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i149

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i149: ; preds = %bb.bg, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i147
  store ptr %i.jj, ptr %3, align 8, !tbaa !54
  store ptr %i.jm, ptr %i.aj, align 8, !tbaa !60
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %i.jh
  store ptr %i.jn, ptr %i.ak, align 8, !tbaa !57
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit150

_ZNSt6vectorIfSaIfEE9push_backEOf.exit150:        ; preds = %bb.bc, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i149
  %i.jo = load ptr, ptr %i.h, align 8, !tbaa !60  ; 4 uses
  %i.jp = load ptr, ptr %i.j, align 8, !tbaa !57
  %.not.i151 = icmp eq ptr %i.jo, %i.jp
  br i1 %.not.i151, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit150
  store float %.0195, ptr %i.jo, align 4, !tbaa !58
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jo, i64 4
  store ptr %i.jq, ptr %i.h, align 8, !tbaa !60
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit

bb.bi:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit150
  %i.jr = load ptr, ptr %2, align 8, !tbaa !54    ; 4 uses
  %i.js = ptrtoint ptr %i.jo to i64
  %i.jt = ptrtoint ptr %i.jr to i64
  %i.ju = sub i64 %i.js, %i.jt                    ; 6 uses
  %i.jv = icmp eq i64 %i.ju, 9223372036854775804
  br i1 %i.jv, label %bb.bj, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i152

bb.bj:                                            ; preds = %bb.bi
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.92) #22
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i152: ; preds = %bb.bi
  %i.jw = ashr exact i64 %i.ju, 2                 ; 3 uses
  %.sroa.speculated.i.i.i153 = tail call i64 @llvm.umax.i64(i64 %i.jw, i64 1)
  %i.jx = add nsw i64 %.sroa.speculated.i.i.i153, %i.jw ; 2 uses
  %i.jy = icmp ult i64 %i.jx, %i.jw
  %i.jz = tail call i64 @llvm.umin.i64(i64 %i.jx, i64 2305843009213693951)
  %i.ka = select i1 %i.jy, i64 2305843009213693951, i64 %i.jz ; 3 uses
  %.not.i.i.i154 = icmp ne i64 %i.ka, 0
  tail call void @llvm.assume(i1 %.not.i.i.i154)
  %i.kb = shl nuw nsw i64 %i.ka, 2
  %i.kc = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kb) #23 ; 4 uses
  %i.kd = getelementptr inbounds i8, ptr %i.kc, i64 %i.ju ; 2 uses
  store float %.0195, ptr %i.kd, align 4, !tbaa !58
  %i.ke = icmp sgt i64 %i.ju, 0
  br i1 %i.ke, label %bb.bk, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i155

bb.bk:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i152
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.kc, ptr align 4 %i.jr, i64 %i.ju, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i155

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i155: ; preds = %bb.bk, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i152
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kd, i64 4
  %.not.i17.i.i156 = icmp eq ptr %i.jr, null
  br i1 %.not.i17.i.i156, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i157, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i155
  tail call void @_ZdlPvm(ptr noundef nonnull %i.jr, i64 noundef %i.ju) #24
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i157

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i157: ; preds = %bb.bl, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i155
  store ptr %i.kc, ptr %2, align 8, !tbaa !54
  store ptr %i.kf, ptr %i.h, align 8, !tbaa !60
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.kc, i64 %i.ka
  store ptr %i.kg, ptr %i.j, align 8, !tbaa !57
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit

_ZNSt6vectorIfSaIfEE9push_backEOf.exit:           ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i157, %bb.bh, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i, %bb.s
  %i.kh = load ptr, ptr %i.h, align 8, !tbaa !60  ; 4 uses
  %i.ki = load ptr, ptr %i.j, align 8, !tbaa !57
  %.not.i159 = icmp eq ptr %i.kh, %i.ki
  br i1 %.not.i159, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit
  store float %7, ptr %i.kh, align 4, !tbaa !58
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kh, i64 4
  store ptr %i.kj, ptr %i.h, align 8, !tbaa !60
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit166

bb.bn:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit
  %i.kk = load ptr, ptr %2, align 8, !tbaa !54    ; 4 uses
  %i.kl = ptrtoint ptr %i.kh to i64
  %i.km = ptrtoint ptr %i.kk to i64
  %i.kn = sub i64 %i.kl, %i.km                    ; 6 uses
  %i.ko = icmp eq i64 %i.kn, 9223372036854775804
  br i1 %i.ko, label %bb.bo, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i160

bb.bo:                                            ; preds = %bb.bn
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.92) #22
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i160: ; preds = %bb.bn
  %i.kp = ashr exact i64 %i.kn, 2                 ; 3 uses
  %.sroa.speculated.i.i.i161 = tail call i64 @llvm.umax.i64(i64 %i.kp, i64 1)
  %i.kq = add nsw i64 %.sroa.speculated.i.i.i161, %i.kp ; 2 uses
  %i.kr = icmp ult i64 %i.kq, %i.kp
  %i.ks = tail call i64 @llvm.umin.i64(i64 %i.kq, i64 2305843009213693951)
  %i.kt = select i1 %i.kr, i64 2305843009213693951, i64 %i.ks ; 3 uses
  %.not.i.i.i162 = icmp ne i64 %i.kt, 0
  tail call void @llvm.assume(i1 %.not.i.i.i162)
  %i.ku = shl nuw nsw i64 %i.kt, 2
  %i.kv = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ku) #23 ; 4 uses
  %i.kw = getelementptr inbounds i8, ptr %i.kv, i64 %i.kn ; 2 uses
  store float %7, ptr %i.kw, align 4, !tbaa !58
  %i.kx = icmp sgt i64 %i.kn, 0
  br i1 %i.kx, label %bb.bp, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i163

bb.bp:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i160
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.kv, ptr align 4 %i.kk, i64 %i.kn, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i163

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i163: ; preds = %bb.bp, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i160
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kw, i64 4
  %.not.i17.i.i164 = icmp eq ptr %i.kk, null
  br i1 %.not.i17.i.i164, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i165, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i163
  tail call void @_ZdlPvm(ptr noundef nonnull %i.kk, i64 noundef %i.kn) #24
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i165

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i165: ; preds = %bb.bq, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i163
  store ptr %i.kv, ptr %2, align 8, !tbaa !54
  store ptr %i.ky, ptr %i.h, align 8, !tbaa !60
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %i.kt
  store ptr %i.kz, ptr %i.j, align 8, !tbaa !57
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit166

_ZNSt6vectorIfSaIfEE9push_backERKf.exit166:       ; preds = %bb.bm, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i165
  %exitcond.not = icmp eq i64 %i.an, %i.ae
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !124
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_523GradingBSplineCurveImpl31computeKnotsAndCoefsForHueCurveERNS0_10KnotsCoefsEib(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.OpenColorIO_v2_5::GradingControlPoint", align 4 ; 5 uses
  %5 = alloca %"class.std::vector", align 8       ; 27 uses
  %6 = alloca %"class.std::vector.3", align 8     ; 38 uses
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !53
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !49
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ult i64 %i.h, 9
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_ZNK16OpenColorIO_v2_523GradingBSplineCurveImpl10isIdentityEv(ptr noundef nonnull align 8 dereferenceable(60) %0)
  br i1 %i.j, label %bb.c, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b, %bb.a
  br i1 %3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = shl nsw i32 %2, 1                        ; 2 uses
  %i.m = sext i32 %i.l to i64                     ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !107  ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.m
  store i32 -1, ptr %i.o, align 4, !tbaa !3
  %i.p = or disjoint i32 %i.l, 1
  %i.q = sext i32 %i.p to i64                     ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.q
  store i32 0, ptr %i.r, align 4, !tbaa !3
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !107  ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.m
  store i32 -1, ptr %i.u, align 4, !tbaa !3
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.q
  store i32 0, ptr %i.v, align 4, !tbaa !3
  br label %bb.fx

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.x = load i32, ptr %i.w, align 4, !tbaa !116  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 4 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !122
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = shl nsw i32 %2, 1                       ; 2 uses
  %i.ac = sext i32 %i.ab to i64                   ; 2 uses
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !107 ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ac
  store i32 %i.x, ptr %i.ae, align 4, !tbaa !3
  %i.af = or disjoint i32 %i.ab, 1
  %i.ag = sext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ag
  store i32 2, ptr %i.ah, align 4, !tbaa !3
  %i.ai = load i32, ptr %i.y, align 8, !tbaa !122
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !107 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ac
  store i32 %i.ai, ptr %i.al, align 4, !tbaa !3
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ag
  store i32 3, ptr %i.am, align 4, !tbaa !3
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !123
  %i.ap = sext i32 %i.x to i64
  %i.aq = getelementptr [4 x i8], ptr %i.ao, i64 %i.ap
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.aq, align 4, !tbaa !58
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !123
  %i.at = sext i32 %i.z to i64
  %i.au = getelementptr [4 x i8], ptr %i.as, i64 %i.at ; 3 uses
  store float 0.000000e+00, ptr %i.au, align 4, !tbaa !58
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !61 ; 3 uses
  %i.ax = add i32 %i.aw, -1
  %i.ay = icmp ult i32 %i.ax, 2
  %i.az = select i1 %i.ay, float 1.000000e+00, float 0.000000e+00
  %i.ba = getelementptr i8, ptr %i.au, i64 4
  store float %i.az, ptr %i.ba, align 4, !tbaa !58
  %i.bb = icmp eq i32 %i.aw, 3
  %i.bc = icmp eq i32 %i.aw, 5
  %i.bd = or i1 %i.bb, %i.bc
  %i.be = select i1 %i.bd, float 1.000000e+00, float 0.000000e+00
  %i.bf = getelementptr i8, ptr %i.au, i64 8
  store float %i.be, ptr %i.bf, align 4, !tbaa !58
  %i.bg = load <2 x i32>, ptr %i.y, align 8, !tbaa !3
  %i.bh = add nsw <2 x i32> %i.bg, <i32 3, i32 2>
  store <2 x i32> %i.bh, ptr %i.y, align 8, !tbaa !3
  br label %bb.fx

.lr.ph.i:                                         ; preds = %bb.b
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !61 ; 2 uses
  %.off = add i32 %i.bj, -2
  %switch = icmp ult i32 %.off, 3                 ; 5 uses
  %i.bk = add i32 %i.bj, -3
  %switch114 = icmp ult i32 %i.bk, -2             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.bl = load ptr, ptr %i.c, align 8, !tbaa !53  ; 2 uses
  %i.bm = load ptr, ptr %i.b, align 8, !tbaa !49  ; 2 uses
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo                    ; 2 uses
  %i.bq = ashr exact i64 %i.bp, 3                 ; 4 uses
  %.not.i = icmp ne ptr %i.bl, %i.bm
  tail call void @llvm.assume(i1 %.not.i)
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 10 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backEOS1_.exit.i, %.lr.ph.i
  %i.bt = phi ptr [ null, %.lr.ph.i ], [ %i.gg, %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backEOS1_.exit.i ] ; 17 uses
  %i.bu = phi i64 [ 0, %.lr.ph.i ], [ %i.gi, %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backEOS1_.exit.i ]
  %.0166.i = phi i32 [ 0, %.lr.ph.i ], [ %i.gh, %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backEOS1_.exit.i ]
  %i.bv = load ptr, ptr %i.b, align 8, !tbaa !49
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bu
  %i.bx = load <2 x float>, ptr %i.bw, align 4, !tbaa !58 ; 4 uses
  %i.by = extractelement <2 x float> %i.bx, i64 1 ; 4 uses
  %i.bz = extractelement <2 x float> %i.bx, i64 0 ; 4 uses
  %i.ca = fcmp olt float %i.bz, 0.000000e+00
  %or.cond.i = select i1 %switch, i1 %i.ca, i1 false
  br i1 %or.cond.i, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.cb = fadd float %i.bz, 1.000000e+00          ; 2 uses
  %i.cc = fadd float %i.by, 1.000000e+00
  %i.cd = select i1 %switch114, float %i.by, float %i.cc ; 2 uses
  %i.ce = load ptr, ptr %i.bs, align 8, !tbaa !52
  %.not.i.i.i = icmp eq ptr %i.bt, %i.ce
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store float %i.cb, ptr %i.bt, align 4
  %.sroa_idx154.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  store float %i.cd, ptr %.sroa_idx154.i, align 4
  %i.cf = load ptr, ptr %i.br, align 8, !tbaa !53
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 2 uses
  store ptr %i.cg, ptr %i.br, align 8, !tbaa !53
  br label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backEOS1_.exit.i

bb.i:                                             ; preds = %bb.g
  %i.ch = load ptr, ptr %5, align 8, !tbaa !49    ; 7 uses
  %i.ci = ptrtoint ptr %i.bt to i64               ; 2 uses
  %i.cj = ptrtoint ptr %i.ch to i64               ; 3 uses
  %i.ck = sub i64 %i.ci, %i.cj                    ; 4 uses
  %i.cl = icmp eq i64 %i.ck, 9223372036854775800
  br i1 %i.cl, label %.invoke, label %_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i

.invoke:                                          ; preds = %bb.r, %bb.n, %bb.i, %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.92) #22
          to label %.cont unwind label %.loopexit.split-lp325

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.i
  %i.cm = ashr exact i64 %i.ck, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cm, i64 1)
  %i.cn = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.cm ; 2 uses
  %i.co = icmp ult i64 %i.cn, %i.cm
  %i.cp = tail call i64 @llvm.umin.i64(i64 %i.cn, i64 1152921504606846975)
  %i.cq = select i1 %i.co, i64 1152921504606846975, i64 %i.cp ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.cq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.cr = shl nuw nsw i64 %i.cq, 3
  %i.cs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cr) #23
          to label %.noexc116 unwind label %.loopexit324 ; 8 uses

end_hunk_1
