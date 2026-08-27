Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/featureselect?download=true
inline.NumInlined: 487
inline.NumDeleted: 234
begin_hunk_0_@_ZN2cv19goodFeaturesToTrackERKNS_11_InputArrayERKNS_12_OutputArrayEiddS2_S5_iibd:bb.a
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %.lr.ph.split.us645, !llvm.loop !47

._crit_edge.us:                                   ; preds = %_ZNSt6vectorIPKfSaIS1_EE9push_backEOS1_.exit.us637, %_ZNSt6vectorIPKfSaIS1_EE9push_backEOS1_.exit.us.us
  %.us-phi613.us = phi ptr [ %.sroa.19.2.us.us, %_ZNSt6vectorIPKfSaIS1_EE9push_backEOS1_.exit.us.us ], [ %.sroa.19.2.us638, %_ZNSt6vectorIPKfSaIS1_EE9push_backEOS1_.exit.us637 ] ; 14 uses
  %.us-phi614.us = phi ptr [ %.sroa.14.2.us.us, %_ZNSt6vectorIPKfSaIS1_EE9push_backEOS1_.exit.us.us ], [ %.sroa.14.2.us639, %_ZNSt6vectorIPKfSaIS1_EE9push_backEOS1_.exit.us637 ] ; 5 uses
  %.us-phi615.us = phi ptr [ %.sroa.0414.2.us.us, %_ZNSt6vectorIPKfSaIS1_EE9push_backEOS1_.exit.us.us ], [ %.sroa.0414.2.us640, %_ZNSt6vectorIPKfSaIS1_EE9push_backEOS1_.exit.us637 ] ; 20 uses
  %indvars.iv.next791 = add nuw nsw i64 %indvars.iv790, 1 ; 2 uses
  %exitcond794.not = icmp eq i64 %indvars.iv.next791, %wide.trip.count793
  br i1 %exitcond794.not, label %._crit_edge621, label %.lr.ph.us, !llvm.loop !49

.lr.ph.split.us.us:                               ; preds = %.lr.ph.us, %_ZNSt6vectorIPKfSaIS1_EE9push_backEOS1_.exit.us.us
  %indvars.iv785 = phi i64 [ %indvars.iv.next786, %_ZNSt6vectorIPKfSaIS1_EE9push_backEOS1_.exit.us.us ], [ 1, %.lr.ph.us ] ; 3 uses
  %.sroa.0414.1605.us.us = phi ptr [ %.sroa.0414.2.us.us, %_ZNSt6vectorIPKfSaIS1_EE9push_backEOS1_.exit.us.us ], [ %.sroa.0414.0618.us, %.lr.ph.us ] ; 9 uses
  %.sroa.14.1604.us.us = phi ptr [ %.sroa.14.2.us.us, %_ZNSt6vectorIPKfSaIS1_EE9push_backEOS1_.exit.us.us ], [ %.sroa.14.0617.us, %.lr.ph.us ] ; 8 uses
  %.sroa.19.1603.us.us = phi ptr [ %.sroa.19.2.us.us, %_ZNSt6vectorIPKfSaIS1_EE9push_backEOS1_.exit.us.us ], [ %.sroa.19.0616.us, %.lr.ph.us ] ; 4 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv785 ; 3 uses
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !43 ; 2 uses
  %i.eg = fcmp une float %i.ef, 0.000000e+00
  br i1 %i.eg, label %bb.bd, label %_ZNSt6vectorIPKfSaIS1_EE9push_backEOS1_.exit.us.us

bb.bd:                                            ; preds = %.lr.ph.split.us.us
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv785
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !43
  %i.ej = fcmp oeq float %i.ef, %i.ei
  br i1 %i.ej, label %bb.be, label %_ZNSt6vectorIPKfSaIS1_EE9push_backEOS1_.exit.us.us

bb.be:                                            ; preds = %bb.bd
  %.not.i.i.us.us = icmp eq ptr %.sroa.14.1604.us.us, %.sroa.19.1603.us.us
  br i1 %.not.i.i.us.us, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  store ptr %i.ee, ptr %.sroa.14.1604.us.us, align 8, !tbaa !45
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.14.1604.us.us, i64 8
  br label %_ZNSt6vectorIPKfSaIS1_EE9push_backEOS1_.exit.us.us

bb.bg:                                            ; preds = %bb.be
  %i.el = ptrtoint ptr %.sroa.14.1604.us.us to i64
  %i.em = ptrtoint ptr %.sroa.0414.1605.us.us to i64
  %i.en = sub i64 %i.el, %i.em                    ; 6 uses
  %i.eo = icmp eq i64 %i.en, 9223372036854775800
  br i1 %i.eo, label %.split.us, label %_ZNKSt6vectorIPKfSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.us.us

_ZNKSt6vectorIPKfSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.us.us: ; preds = %bb.bg
  %i.ep = ashr exact i64 %i.en, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.us.us = call i64 @llvm.umax.i64(i64 %i.ep, i64 1)
  %i.eq = add nsw i64 %.sroa.speculated.i.i.i.i.us.us, %i.ep ; 2 uses
  %i.er = icmp ult i64 %i.eq, %i.ep
  %i.es = call i64 @llvm.umin.i64(i64 %i.eq, i64 1152921504606846975)
  %i.et = select i1 %i.er, i64 1152921504606846975, i64 %i.es ; 3 uses
  %.not.i.i.i.i.us.us = icmp ne i64 %i.et, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.us.us)
  %i.eu = shl nuw nsw i64 %i.et, 3
  %i.ev = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eu) #23
          to label %.noexc264.us.us unwind label %.loopexit518.split.us.split.us ; 4 uses

.noexc264.us.us:                                  ; preds = %_ZNKSt6vectorIPKfSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.us.us
  %i.ew = getelementptr inbounds i8, ptr %i.ev, i64 %i.en ; 2 uses
  store ptr %i.ee, ptr %i.ew, align 8, !tbaa !45
  %i.ex = icmp sgt i64 %i.en, 0
  br i1 %i.ex, label %bb.bh, label %_ZNSt6vectorIPKfSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i.us.us

bb.bh:                                            ; preds = %.noexc264.us.us
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ev, ptr align 8 %.sroa.0414.1605.us.us, i64 %i.en, i1 false)
  br label %_ZNSt6vectorIPKfSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i.us.us

_ZNSt6vectorIPKfSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i.us.us: ; preds = %bb.bh, %.noexc264.us.us
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %.not.i17.i.i.i.us.us = icmp eq ptr %.sroa.0414.1605.us.us, null
  br i1 %.not.i17.i.i.i.us.us, label %_ZNSt6vectorIPKfSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.us.us, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt6vectorIPKfSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i.us.us
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0414.1605.us.us, i64 noundef %i.en) #22
  br label %_ZNSt6vectorIPKfSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.us.us

_ZNSt6vectorIPKfSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.us.us: ; preds = %bb.bi, %_ZNSt6vectorIPKfSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i.us.us
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %i.et
  br label %_ZNSt6vectorIPKfSaIS1_EE9push_backEOS1_.exit.us.us

_ZNSt6vectorIPKfSaIS1_EE9push_backEOS1_.exit.us.us: ; preds = %_ZNSt6vectorIPKfSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.us.us, %bb.bf, %bb.bd, %.lr.ph.split.us.us
  %.sroa.19.2.us.us = phi ptr [ %.sroa.19.1603.us.us, %.lr.ph.split.us.us ], [ %.sroa.19.1603.us.us, %bb.bf ], [ %.sroa.19.1603.us.us, %bb.bd ], [ %i.ez, %_ZNSt6vectorIPKfSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.us.us ] ; 2 uses
  %.sroa.14.2.us.us = phi ptr [ %.sroa.14.1604.us.us, %.lr.ph.split.us.us ], [ %i.ek, %bb.bf ], [ %.sroa.14.1604.us.us, %bb.bd ], [ %i.ey, %_ZNSt6vectorIPKfSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.us.us ] ; 2 uses
  %.sroa.0414.2.us.us = phi ptr [ %.sroa.0414.1605.us.us, %.lr.ph.split.us.us ], [ %.sroa.0414.1605.us.us, %bb.bf ], [ %.sroa.0414.1605.us.us, %bb.bd ], [ %i.ev, %_ZNSt6vectorIPKfSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.us.us ] ; 2 uses
  %indvars.iv.next786 = add nuw nsw i64 %indvars.iv785, 1 ; 2 uses
  %exitcond789.not = icmp eq i64 %indvars.iv.next786, %wide.trip.count788
  br i1 %exitcond789.not, label %._crit_edge.us, label %.lr.ph.split.us.us, !llvm.loop !47

.loopexit518.split.split.us:                      ; preds = %_ZNKSt6vectorIPKfSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.us630
  %lpad.loopexit520.us652 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit518

.loopexit518.split.us.split.us:                   ; preds = %_ZNKSt6vectorIPKfSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.us.us
  %lpad.loopexit520.us.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit518

._crit_edge621:                                   ; preds = %._crit_edge.us
  %i.fa = ptrtoint ptr %.us-phi614.us to i64
  %i.fb = ptrtoint ptr %.us-phi615.us to i64      ; 4 uses
  %i.fc = sub i64 %i.fa, %i.fb
  %i.fd = ashr exact i64 %i.fc, 3                 ; 4 uses
  %i.fe = icmp eq ptr %.us-phi614.us, %.us-phi615.us
  br i1 %i.fe, label %._crit_edge621.thread, label %bb.bo

bb.bj:                                            ; preds = %bb.aj
  %i.ff = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  br label %.body

bb.bk:                                            ; preds = %bb.ak
  %i.fg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20
  br label %.body

bb.bl:                                            ; preds = %bb.al
  %i.fh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %31) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #20
  br label %.body

bb.bm:                                            ; preds = %bb.an
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %.body

.thread486:                                       ; preds = %bb.at, %bb.au, %bb.av
  %i.fj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #20
  br label %.body

.split.us:                                        ; preds = %bb.ba, %bb.bg
  %.us-phi = phi ptr [ %.sroa.14.1604.us.us, %bb.bg ], [ %.sroa.14.1604.us627, %bb.ba ]
  %.us-phi609 = phi ptr [ %.sroa.0414.1605.us.us, %bb.bg ], [ %.sroa.0414.1605.us626, %bb.ba ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #21
          to label %.noexc263 unwind label %.loopexit.split-lp519

.noexc263:                                        ; preds = %.split.us
  unreachable

.loopexit.split-lp519:                            ; preds = %.split.us
  %lpad.loopexit.split-lp521 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit518

._crit_edge621.thread:                            ; preds = %.lr.ph620, %_ZNK2cv11_InputArray6getMatEi.exit262, %._crit_edge621
  %i.fk = phi i64 [ %i.fb, %._crit_edge621 ], [ 0, %_ZNK2cv11_InputArray6getMatEi.exit262 ], [ 0, %.lr.ph620 ]
  %.sroa.0414.0.lcssa853.a = phi ptr [ %.us-phi615.us, %._crit_edge621 ], [ null, %_ZNK2cv11_InputArray6getMatEi.exit262 ], [ null, %.lr.ph620 ] ; 3 uses
  %.sroa.19.0.lcssa849.a = phi ptr [ %.us-phi613.us, %._crit_edge621 ], [ null, %_ZNK2cv11_InputArray6getMatEi.exit262 ], [ null, %.lr.ph620 ] ; 3 uses
  invoke void @_ZNK2cv12_OutputArray7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.bn unwind label %.loopexit.split-lp

bb.bn:                                            ; preds = %._crit_edge621.thread
  invoke void @_ZNK2cv12_OutputArray7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit unwind label %.loopexit.split-lp

.loopexit495:                                     ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i300
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

.loopexit.split-lp:                               ; preds = %._crit_edge621.thread, %bb.bn, %bb.dc, %bb.bo, %.noexc266, %bb.cq
  %.sroa.0414.0.lcssa852.a = phi ptr [ %.us-phi615.us, %.noexc266 ], [ %.us-phi615.us, %bb.bo ], [ %.us-phi615.us, %bb.dc ], [ %.us-phi615.us, %bb.cq ], [ %.sroa.0414.0.lcssa853.a, %._crit_edge621.thread ], [ %.sroa.0414.0.lcssa853.a, %bb.bn ]
  %.sroa.19.0.lcssa848.a = phi ptr [ %.us-phi613.us, %.noexc266 ], [ %.us-phi613.us, %bb.bo ], [ %.us-phi613.us, %bb.dc ], [ %.us-phi613.us, %bb.cq ], [ %.sroa.19.0.lcssa849.a, %._crit_edge621.thread ], [ %.sroa.19.0.lcssa849.a, %bb.bn ]
  %.sroa.22.0.ph = phi ptr [ null, %.noexc266 ], [ null, %bb.bo ], [ %.sroa.22.6, %bb.dc ], [ %.sroa.22.5695, %bb.cq ], [ null, %._crit_edge621.thread ], [ null, %bb.bn ]
  %.sroa.0382.0.ph = phi ptr [ null, %.noexc266 ], [ null, %bb.bo ], [ %.sroa.0382.7, %bb.dc ], [ %.sroa.0382.6696, %bb.cq ], [ null, %._crit_edge621.thread ], [ null, %bb.bn ]
  %.sroa.20.0.ph = phi ptr [ null, %.noexc266 ], [ null, %bb.bo ], [ %.sroa.20.7, %bb.dc ], [ %.sroa.20.6698, %bb.cq ], [ null, %._crit_edge621.thread ], [ null, %bb.bn ]
  %.sroa.0396.0.ph = phi ptr [ null, %.noexc266 ], [ null, %bb.bo ], [ %.sroa.0396.6, %bb.dc ], [ %.sroa.0396.5699, %bb.cq ], [ null, %._crit_edge621.thread ], [ null, %bb.bn ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

bb.bo:                                            ; preds = %._crit_edge621
  %i.fl = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.fd, i1 true)
  %i.fm = shl nuw nsw i64 %i.fl, 1
  %i.fn = xor i64 %i.fm, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPKfSt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIN2cv14greaterThanPtrEEEEvT_SE_T0_T1_(ptr %.us-phi615.us, ptr %.us-phi614.us, i64 noundef %i.fn)
          to label %.noexc266 unwind label %.loopexit.split-lp

.noexc266:                                        ; preds = %bb.bo
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKfSt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIN2cv14greaterThanPtrEEEEvT_SE_T0_(ptr %.us-phi615.us, ptr %.us-phi614.us)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPKfSt6vectorIS3_SaIS3_EEEEN2cv14greaterThanPtrEEvT_SB_T0_.exit unwind label %.loopexit.split-lp

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPKfSt6vectorIS3_SaIS3_EEEEN2cv14greaterThanPtrEEvT_SB_T0_.exit: ; preds = %.noexc266
  %i.fo = fcmp ult double %4, 1.000000e+00
  br i1 %i.fo, label %.lr.ph702, label %bb.bp

.lr.ph702:                                        ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPKfSt6vectorIS3_SaIS3_EEEEN2cv14greaterThanPtrEEvT_SB_T0_.exit
  %i.fp = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.fq = getelementptr inbounds nuw i8, ptr %19, i64 128
  %i.fr = icmp sgt i32 %2, 0
  br label %bb.cn

bb.bp:                                            ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPKfSt6vectorIS3_SaIS3_EEEEN2cv14greaterThanPtrEEvT_SB_T0_.exit
  %i.fs = getelementptr inbounds nuw i8, ptr %18, i64 12
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !50
  %i.fu = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !51
  %i.fw = insertelement <2 x double> poison, double %4, i64 0
  %i.fx = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.fw) ; 5 uses
  %i.fy = add i32 %i.fx, -1                       ; 2 uses
  %i.fz = add i32 %i.fy, %i.ft
  %i.ga = sdiv i32 %i.fz, %i.fx                   ; 4 uses
  %i.gb = add i32 %i.fy, %i.fv
  %i.gc = sdiv i32 %i.gb, %i.fx                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #20
  %i.gd = mul nsw i32 %i.gc, %i.ga                ; 3 uses
  %i.ge = sext i32 %i.gd to i64                   ; 2 uses
  %i.gf = icmp slt i32 %i.gd, 0
  br i1 %i.gf, label %bb.bq, label %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i

bb.bq:                                            ; preds = %bb.bp
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #21
          to label %.noexc269 unwind label %bb.bs

.noexc269:                                        ; preds = %bb.bq
  unreachable

_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i: ; preds = %bb.bp
  store i64 0, ptr %34, align 8
  %.not.i.i.i.i268 = icmp eq i32 %i.gd, 0
  br i1 %.not.i.i.i.i268, label %.lr.ph680, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i
  %i.gg = mul nuw nsw i64 %i.ge, 24               ; 3 uses
  %i.gh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gg) #23
          to label %.noexc270 unwind label %bb.bs ; 4 uses

.noexc270:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.gh, ptr %34, align 8, !tbaa !52
  %i.gi = getelementptr inbounds nuw [24 x i8], ptr %i.gh, i64 %i.ge
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.gh, i8 0, i64 %i.gg, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.gh, i64 %i.gg
  br label %.lr.ph680

.lr.ph680:                                        ; preds = %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i, %.noexc270
  %.sink.i = phi ptr [ %i.gi, %.noexc270 ], [ null, %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %.noexc270 ], [ null, %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i ]
  %i.gj = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  store ptr %.sink.i, ptr %i.gk, align 8, !tbaa !55
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.gj, align 8, !tbaa !56
  %i.gl = fmul double %4, %4
  %i.gm = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.gn = getelementptr inbounds nuw i8, ptr %19, i64 128
  %i.go = add i32 %i.ga, -1
  %i.gp = add nsw i32 %i.gc, -1
  %i.gq = icmp sgt i32 %2, 0
  %i.gr = sext i32 %i.ga to i64
  br label %bb.br

bb.br:                                            ; preds = %.lr.ph680, %.thread439
  %.0152677 = phi i64 [ 0, %.lr.ph680 ], [ %.2154.ph, %.thread439 ] ; 2 uses
  %.0159676 = phi i64 [ 0, %.lr.ph680 ], [ %i.me, %.thread439 ] ; 2 uses
  %.sroa.0396.1675 = phi ptr [ null, %.lr.ph680 ], [ %.sroa.0396.2.ph, %.thread439 ] ; 10 uses
  %.sroa.20.1674 = phi ptr [ null, %.lr.ph680 ], [ %.sroa.20.2.ph, %.thread439 ] ; 8 uses
  %.sroa.12.0673 = phi ptr [ null, %.lr.ph680 ], [ %.sroa.12.1.ph, %.thread439 ] ; 4 uses
  %.sroa.0382.1672 = phi ptr [ null, %.lr.ph680 ], [ %.sroa.0382.2.ph, %.thread439 ] ; 10 uses
  %.sroa.22.1671 = phi ptr [ null, %.lr.ph680 ], [ %.sroa.22.2.ph, %.thread439 ] ; 7 uses
  %.sroa.12402.0670 = phi ptr [ null, %.lr.ph680 ], [ %.sroa.12402.1.ph, %.thread439 ] ; 5 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %.us-phi615.us, i64 %.0159676 ; 2 uses
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !45
  %i.gu = load ptr, ptr %i.gm, align 8, !tbaa !37
  %i.gv = ptrtoint ptr %i.gt to i64
  %i.gw = ptrtoint ptr %i.gu to i64
  %i.gx = sub i64 %i.gv, %i.gw
  %sext221 = shl i64 %i.gx, 32
  %i.gy = ashr exact i64 %sext221, 32             ; 2 uses
  %i.gz = load i64, ptr %i.gn, align 8, !tbaa !42 ; 2 uses
  %i.ha = udiv i64 %i.gy, %i.gz                   ; 2 uses
  %i.hb = trunc i64 %i.ha to i32                  ; 3 uses
  %sext222 = shl i64 %i.ha, 32
  %i.hc = ashr exact i64 %sext222, 32
  %i.hd = mul i64 %i.hc, %i.gz
  %i.he = sub i64 %i.gy, %i.hd
  %i.hf = lshr i64 %i.he, 2
  %i.hg = trunc i64 %i.hf to i32                  ; 3 uses
  %i.hh = sdiv i32 %i.hg, %i.fx                   ; 3 uses
  %i.hi = sdiv i32 %i.hb, %i.fx                   ; 3 uses
  %i.hj = add i32 %i.hh, 1
  %i.hk = add nsw i32 %i.hi, 1
  %i.hl = call i32 @llvm.smax.i32(i32 %i.hh, i32 1) ; 2 uses
  %i.hm = call i32 @llvm.smax.i32(i32 %i.hi, i32 1) ; 2 uses
  %.sroa.speculated362 = add nsw i32 %i.hm, -1
  %.sroa.speculated358 = call i32 @llvm.smin.i32(i32 %i.hj, i32 %i.go) ; 2 uses
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.hk, i32 %i.gp) ; 2 uses
  %.not668 = icmp sgt i32 %.sroa.speculated362, %.sroa.speculated
  %.pre = load ptr, ptr %34, align 8              ; 2 uses
  br i1 %.not668, label %..critedge.loopexit_crit_edge, label %.preheader502.lr.ph

..critedge.loopexit_crit_edge:                    ; preds = %bb.br
  %.pre813.a = sitofp i32 %i.hg to float
  %.pre814 = sitofp i32 %i.hb to float
  br label %.critedge.loopexit

.preheader502.lr.ph:                              ; preds = %bb.br
  %.sroa.speculated366 = add nsw i32 %i.hl, -1
  %.not223665 = icmp sgt i32 %.sroa.speculated366, %.sroa.speculated358
  %i.hn = sitofp i32 %i.hg to float               ; 3 uses
  %i.ho = sitofp i32 %i.hb to float               ; 3 uses
  br i1 %.not223665, label %.critedge.loopexit, label %.preheader502.preheader

.preheader502.preheader:                          ; preds = %.preheader502.lr.ph
  %i.hp = zext nneg i32 %i.hl to i64
  %i.hq = add nsw i64 %i.hp, -1
  %i.hr = add nuw i32 %.sroa.speculated358, 1
  %i.hs = zext nneg i32 %i.hm to i64
  %i.ht = add nsw i64 %i.hs, -1
  %i.hu = add nuw nsw i32 %.sroa.speculated, 1
  %wide.trip.count804 = zext nneg i32 %i.hu to i64
  %wide.trip.count799 = zext i32 %i.hr to i64
  br label %.preheader502

.preheader502:                                    ; preds = %.preheader502.preheader, %._crit_edge
  %indvars.iv801 = phi i64 [ %i.ht, %.preheader502.preheader ], [ %indvars.iv.next802, %._crit_edge ] ; 2 uses
  %i.hv = mul nsw i64 %indvars.iv801, %i.gr
  %invariant.gep = getelementptr [24 x i8], ptr %.pre, i64 %i.hv
  br label %bb.bt

bb.bs:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.bq
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.bt:                                            ; preds = %.preheader502, %.thread
  %indvars.iv796 = phi i64 [ %i.hq, %.preheader502 ], [ %indvars.iv.next797, %.thread ] ; 2 uses
  %gep = getelementptr [24 x i8], ptr %invariant.gep, i64 %indvars.iv796 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !57 ; 2 uses
  %i.hz = load ptr, ptr %gep, align 8, !tbaa !60  ; 3 uses
  %.not718 = icmp eq ptr %i.hy, %i.hz
  br i1 %.not718, label %.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.bt
  %i.ia = ptrtoint ptr %i.hy to i64
  %i.ib = ptrtoint ptr %i.hz to i64
  %i.ic = sub i64 %i.ia, %i.ib
  %i.id = ashr exact i64 %i.ic, 3
  br label %.lr.ph

bb.bu:                                            ; preds = %.lr.ph
  %i.ie = add nuw i64 %.0158664, 1                ; 2 uses
  %exitcond795.not = icmp eq i64 %i.ie, %i.id
  br i1 %exitcond795.not, label %.thread, label %.lr.ph, !llvm.loop !61

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.bu
  %.0158664 = phi i64 [ %i.ie, %bb.bu ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %.0158664 ; 2 uses
  %i.ig = load float, ptr %i.if, align 4, !tbaa !62
  %i.ih = fsub float %i.hn, %i.ig                 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.if, i64 4
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !64
  %i.ik = fsub float %i.ho, %i.ij                 ; 2 uses
  %i.il = fmul float %i.ik, %i.ik
  %i.im = call float @llvm.fmuladd.f32(float %i.ih, float %i.ih, float %i.il)
  %i.in = fpext float %i.im to double
  %i.io = fcmp ule double %i.gl, %i.in
  br i1 %i.io, label %bb.bu, label %.thread439

.thread:                                          ; preds = %bb.bu, %bb.bt
  %indvars.iv.next797 = add nuw nsw i64 %indvars.iv796, 1 ; 2 uses
  %exitcond800.not = icmp eq i64 %indvars.iv.next797, %wide.trip.count799
  br i1 %exitcond800.not, label %._crit_edge, label %bb.bt, !llvm.loop !65

._crit_edge:                                      ; preds = %.thread
  %indvars.iv.next802 = add nuw nsw i64 %indvars.iv801, 1 ; 2 uses
  %exitcond805.not = icmp eq i64 %indvars.iv.next802, %wide.trip.count804
  br i1 %exitcond805.not, label %.critedge.loopexit, label %.preheader502, !llvm.loop !66

.critedge.loopexit:                               ; preds = %._crit_edge, %.preheader502.lr.ph, %..critedge.loopexit_crit_edge
  %.pre-phi815 = phi float [ %.pre814, %..critedge.loopexit_crit_edge ], [ %i.ho, %.preheader502.lr.ph ], [ %i.ho, %._crit_edge ] ; 4 uses
  %.pre-phi = phi float [ %.pre813.a, %..critedge.loopexit_crit_edge ], [ %i.hn, %.preheader502.lr.ph ], [ %i.hn, %._crit_edge ] ; 4 uses
  %i.ip = mul nsw i32 %i.hi, %i.ga
  %i.iq = add nsw i32 %i.ip, %i.hh
  %i.ir = sext i32 %i.iq to i64
  %i.is = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %i.ir ; 4 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 8 ; 4 uses
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !57 ; 6 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.is, i64 16 ; 3 uses
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !67
  %.not.i.i274 = icmp eq ptr %i.iu, %i.iw
  br i1 %.not.i.i274, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %.critedge.loopexit
  store float %.pre-phi, ptr %i.iu, align 4
  %.sroa_idx349 = getelementptr inbounds nuw i8, ptr %i.iu, i64 4
  store float %.pre-phi815, ptr %.sroa_idx349, align 4
  %i.ix = load ptr, ptr %i.it, align 8, !tbaa !57
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  store ptr %i.iy, ptr %i.it, align 8, !tbaa !57
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backEOS2_.exit
end_hunk_0
begin_hunk_1_@_ZN2cv19goodFeaturesToTrackERKNS_11_InputArrayERKNS_12_OutputArrayEiddS2_S5_iibd:bb.a
  br i1 %.not.i299, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ms = load float, ptr %i.mr, align 4, !tbaa !43
  store float %i.ms, ptr %.sroa.12.3697, align 4, !tbaa !43
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit308

bb.cp:                                            ; preds = %bb.cn
  %i.mt = ptrtoint ptr %.sroa.20.6698 to i64
  %i.mu = ptrtoint ptr %.sroa.0382.6696 to i64
  %i.mv = sub i64 %i.mt, %i.mu                    ; 6 uses
  %i.mw = icmp eq i64 %i.mv, 9223372036854775804
  br i1 %i.mw, label %bb.cq, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i300

bb.cq:                                            ; preds = %bb.cp
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #21
          to label %.noexc306 unwind label %.loopexit.split-lp

.noexc306:                                        ; preds = %bb.cq
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i300: ; preds = %bb.cp
  %i.mx = ashr exact i64 %i.mv, 2                 ; 3 uses
  %.sroa.speculated.i.i.i301 = call i64 @llvm.umax.i64(i64 %i.mx, i64 1)
  %i.my = add nsw i64 %.sroa.speculated.i.i.i301, %i.mx ; 2 uses
  %i.mz = icmp ult i64 %i.my, %i.mx
  %i.na = call i64 @llvm.umin.i64(i64 %i.my, i64 2305843009213693951)
  %i.nb = select i1 %i.mz, i64 2305843009213693951, i64 %i.na ; 3 uses
  %.not.i.i.i302 = icmp ne i64 %i.nb, 0
  call void @llvm.assume(i1 %.not.i.i.i302)
  %i.nc = shl nuw nsw i64 %i.nb, 2
  %i.nd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nc) #23
          to label %.noexc307 unwind label %.loopexit495 ; 4 uses

.noexc307:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i300
  %i.ne = getelementptr inbounds i8, ptr %i.nd, i64 %i.mv ; 2 uses
  %i.nf = load float, ptr %i.mr, align 4, !tbaa !43
  store float %i.nf, ptr %i.ne, align 4, !tbaa !43
  %i.ng = icmp sgt i64 %i.mv, 0
  br i1 %i.ng, label %bb.cr, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i303

bb.cr:                                            ; preds = %.noexc307
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.nd, ptr align 4 %.sroa.0382.6696, i64 %i.mv, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i303

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i303: ; preds = %bb.cr, %.noexc307
  %.not.i17.i.i304 = icmp eq ptr %.sroa.0382.6696, null
  br i1 %.not.i17.i.i304, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i305, label %bb.cs

bb.cs:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i303
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0382.6696, i64 noundef %i.mv) #22
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i305

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i305: ; preds = %bb.cs, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i303
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.nd, i64 %i.nb
  %.pre812 = load ptr, ptr %i.mq, align 8, !tbaa !45
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit308

_ZNSt6vectorIfSaIfEE9push_backERKf.exit308:       ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i305, %bb.co
  %i.ni = phi ptr [ %.pre812, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i305 ], [ %i.mr, %bb.co ]
  %.sroa.0382.11 = phi ptr [ %i.nd, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i305 ], [ %.sroa.0382.6696, %bb.co ] ; 5 uses
  %.pn493 = phi ptr [ %i.ne, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i305 ], [ %.sroa.12.3697, %bb.co ]
  %.sroa.20.11 = phi ptr [ %i.nh, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i305 ], [ %.sroa.20.6698, %bb.co ] ; 5 uses
  %.sroa.12.6 = getelementptr inbounds nuw i8, ptr %.pn493, i64 4 ; 3 uses
  %i.nj = load ptr, ptr %i.fp, align 8, !tbaa !37
  %i.nk = ptrtoint ptr %i.ni to i64
  %i.nl = ptrtoint ptr %i.nj to i64
  %i.nm = sub i64 %i.nk, %i.nl
  %sext = shl i64 %i.nm, 32
  %i.nn = ashr exact i64 %sext, 32                ; 2 uses
  %i.no = load i64, ptr %i.fq, align 8, !tbaa !42 ; 2 uses
  %i.np = udiv i64 %i.nn, %i.no                   ; 2 uses
  %i.nq = trunc i64 %i.np to i32
  %sext220 = shl i64 %i.np, 32
  %i.nr = ashr exact i64 %sext220, 32
  %i.ns = mul i64 %i.nr, %i.no
  %i.nt = sub i64 %i.nn, %i.ns
  %i.nu = lshr i64 %i.nt, 2
  %i.nv = trunc i64 %i.nu to i32
  %i.nw = sitofp i32 %i.nv to float               ; 2 uses
  %i.nx = sitofp i32 %i.nq to float               ; 2 uses
  %.not.i.i309 = icmp eq ptr %.sroa.12402.3694, %.sroa.22.5695
  br i1 %.not.i.i309, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit308
  store float %i.nw, ptr %.sroa.12402.3694, align 4
  %.sroa_idx337 = getelementptr inbounds nuw i8, ptr %.sroa.12402.3694, i64 4
  store float %i.nx, ptr %.sroa_idx337, align 4
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backEOS2_.exit324

bb.cu:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit308
  %i.ny = ptrtoint ptr %.sroa.22.5695 to i64      ; 2 uses
  %i.nz = ptrtoint ptr %.sroa.0396.5699 to i64    ; 3 uses
  %i.oa = sub i64 %i.ny, %i.nz                    ; 4 uses
  %i.ob = icmp eq i64 %i.oa, 9223372036854775800
  br i1 %i.ob, label %bb.cv, label %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i310

bb.cv:                                            ; preds = %bb.cu
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #21
          to label %.noexc322 unwind label %.loopexit.split-lp497

.noexc322:                                        ; preds = %bb.cv
  unreachable

_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i310: ; preds = %bb.cu
  %i.oc = ashr exact i64 %i.oa, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i311 = call i64 @llvm.umax.i64(i64 %i.oc, i64 1)
  %i.od = add nsw i64 %.sroa.speculated.i.i.i.i311, %i.oc ; 2 uses
  %i.oe = icmp ult i64 %i.od, %i.oc
  %i.of = call i64 @llvm.umin.i64(i64 %i.od, i64 1152921504606846975)
  %i.og = select i1 %i.oe, i64 1152921504606846975, i64 %i.of ; 3 uses
  %.not.i.i.i.i312 = icmp ne i64 %i.og, 0
  call void @llvm.assume(i1 %.not.i.i.i.i312)
  %i.oh = shl nuw nsw i64 %i.og, 3
  %i.oi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.oh) #23
          to label %.noexc323 unwind label %.loopexit496 ; 8 uses

.noexc323:                                        ; preds = %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i310
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 %i.oa ; 2 uses
  store float %i.nw, ptr %i.oj, align 4
  %.sroa_idx339 = getelementptr inbounds nuw i8, ptr %i.oj, i64 4
  store float %i.nx, ptr %.sroa_idx339, align 4
  %.not10.i.i.i.i.i.i313 = icmp eq ptr %.sroa.0396.5699, %.sroa.22.5695
  br i1 %.not10.i.i.i.i.i.i313, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i318, label %.lr.ph.i.i.i.i.i.i314.preheader

.lr.ph.i.i.i.i.i.i314.preheader:                  ; preds = %.noexc323
  %i.ok = ptrtoaddr ptr %i.oi to i64
  %i.ol = add i64 %i.ny, -8
  %i.om = sub i64 %i.ol, %i.nz                    ; 2 uses
  %i.on = lshr i64 %i.om, 3
  %i.oo = add nuw nsw i64 %i.on, 1                ; 2 uses
  %min.iters.check1002 = icmp ult i64 %i.om, 24
  %i.op = sub i64 %i.nz, %i.ok
  %diff.check1000 = icmp ugt i64 %i.op, -32
  %or.cond1018 = or i1 %min.iters.check1002, %diff.check1000
  br i1 %or.cond1018, label %.lr.ph.i.i.i.i.i.i314.preheader1019, label %vector.ph1003

vector.ph1003:                                    ; preds = %.lr.ph.i.i.i.i.i.i314.preheader
  %n.vec1004 = and i64 %i.oo, 4611686018427387900 ; 3 uses
  %i.oq = shl i64 %n.vec1004, 3                   ; 2 uses
  %i.or = getelementptr i8, ptr %i.oi, i64 %i.oq  ; 2 uses
  %i.os = getelementptr i8, ptr %.sroa.0396.5699, i64 %i.oq
  br label %vector.body1005

vector.body1005:                                  ; preds = %vector.body1005, %vector.ph1003
  %index1006 = phi i64 [ 0, %vector.ph1003 ], [ %index.next1011, %vector.body1005 ] ; 2 uses
  %i.ot = shl i64 %index1006, 3                   ; 2 uses
  %next.gep1007 = getelementptr i8, ptr %i.oi, i64 %i.ot ; 2 uses
  %next.gep1008 = getelementptr i8, ptr %.sroa.0396.5699, i64 %i.ot ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !87)
  call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %i.ou = getelementptr i8, ptr %next.gep1008, i64 16
  %wide.load1009 = load <2 x i64>, ptr %next.gep1008, align 4, !alias.scope !90, !noalias !87
  %wide.load1010 = load <2 x i64>, ptr %i.ou, align 4, !alias.scope !90, !noalias !87
  %i.ov = getelementptr i8, ptr %next.gep1007, i64 16
  store <2 x i64> %wide.load1009, ptr %next.gep1007, align 4, !alias.scope !87, !noalias !90
  store <2 x i64> %wide.load1010, ptr %i.ov, align 4, !alias.scope !87, !noalias !90
  %index.next1011 = add nuw i64 %index1006, 4     ; 2 uses
  %i.ow = icmp eq i64 %index.next1011, %n.vec1004
  br i1 %i.ow, label %middle.block1012, label %vector.body1005, !llvm.loop !92

middle.block1012:                                 ; preds = %vector.body1005
  %cmp.n1013 = icmp eq i64 %i.oo, %n.vec1004
  br i1 %cmp.n1013, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i318, label %.lr.ph.i.i.i.i.i.i314.preheader1019

.lr.ph.i.i.i.i.i.i314.preheader1019:              ; preds = %.lr.ph.i.i.i.i.i.i314.preheader, %middle.block1012
  %.012.i.i.i.i.i.i315.ph = phi ptr [ %i.oi, %.lr.ph.i.i.i.i.i.i314.preheader ], [ %i.or, %middle.block1012 ]
  %.0911.i.i.i.i.i.i316.ph = phi ptr [ %.sroa.0396.5699, %.lr.ph.i.i.i.i.i.i314.preheader ], [ %i.os, %middle.block1012 ]
  br label %.lr.ph.i.i.i.i.i.i314

.lr.ph.i.i.i.i.i.i314:                            ; preds = %.lr.ph.i.i.i.i.i.i314.preheader1019, %.lr.ph.i.i.i.i.i.i314
  %.012.i.i.i.i.i.i315 = phi ptr [ %i.oz, %.lr.ph.i.i.i.i.i.i314 ], [ %.012.i.i.i.i.i.i315.ph, %.lr.ph.i.i.i.i.i.i314.preheader1019 ] ; 2 uses
  %.0911.i.i.i.i.i.i316 = phi ptr [ %i.oy, %.lr.ph.i.i.i.i.i.i314 ], [ %.0911.i.i.i.i.i.i316.ph, %.lr.ph.i.i.i.i.i.i314.preheader1019 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !87)
  call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %i.ox = load i64, ptr %.0911.i.i.i.i.i.i316, align 4, !alias.scope !90, !noalias !87
  store i64 %i.ox, ptr %.012.i.i.i.i.i.i315, align 4, !alias.scope !87, !noalias !90
  %i.oy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i316, i64 8 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i315, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i317 = icmp eq ptr %i.oy, %.sroa.22.5695
  br i1 %.not.i.i.i.i.i.i317, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i318, label %.lr.ph.i.i.i.i.i.i314, !llvm.loop !93

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i318: ; preds = %.lr.ph.i.i.i.i.i.i314, %middle.block1012, %.noexc323
  %.0.lcssa.i.i.i.i.i.i319 = phi ptr [ %i.oi, %.noexc323 ], [ %i.or, %middle.block1012 ], [ %i.oz, %.lr.ph.i.i.i.i.i.i314 ]
  %.not.i23.i.i.i320 = icmp eq ptr %.sroa.0396.5699, null
  br i1 %.not.i23.i.i.i320, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i321, label %bb.cw

bb.cw:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i318
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0396.5699, i64 noundef %i.oa) #22
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i321

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i321: ; preds = %bb.cw, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i318
  %i.pa = getelementptr inbounds nuw [8 x i8], ptr %i.oi, i64 %i.og
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backEOS2_.exit324

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backEOS2_.exit324: ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i321, %bb.ct
  %.0.lcssa.i.i.i.i.i.i319.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i319, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i321 ], [ %.sroa.12402.3694, %bb.ct ]
  %.sroa.22.10 = phi ptr [ %i.pa, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i321 ], [ %.sroa.22.5695, %bb.ct ] ; 3 uses
  %.sroa.0396.10 = phi ptr [ %i.oi, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i321 ], [ %.sroa.0396.5699, %bb.ct ] ; 3 uses
  %.sroa.12402.6 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i319.pn, i64 8 ; 3 uses
  %i.pb = add nuw i64 %.4156701, 1                ; 4 uses
  %39 = trunc i64 %i.pb to i32
  %i.pc = icmp eq i32 %2, %39
  %or.cond252 = select i1 %i.fr, i1 %i.pc, i1 false
  br i1 %or.cond252, label %.loopexit, label %bb.cm

.loopexit496:                                     ; preds = %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i310
  %lpad.loopexit498 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

.loopexit.split-lp497:                            ; preds = %bb.cv
  %lpad.loopexit.split-lp499 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

.loopexit:                                        ; preds = %bb.cm, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backEOS2_.exit324, %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EED2Ev.exit
  %.sroa.12402.4 = phi ptr [ %.sroa.12402.2.ph, %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EED2Ev.exit ], [ %.sroa.12402.6, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backEOS2_.exit324 ], [ %.sroa.12402.6, %bb.cm ] ; 2 uses
  %.sroa.22.6 = phi ptr [ %.sroa.22.3.ph, %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EED2Ev.exit ], [ %.sroa.22.10, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backEOS2_.exit324 ], [ %.sroa.22.10, %bb.cm ] ; 4 uses
  %.sroa.0382.7 = phi ptr [ %.sroa.0382.4.ph, %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EED2Ev.exit ], [ %.sroa.0382.11, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backEOS2_.exit324 ], [ %.sroa.0382.11, %bb.cm ] ; 11 uses
  %.sroa.12.4 = phi ptr [ %.sroa.12.2.ph, %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EED2Ev.exit ], [ %.sroa.12.6, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backEOS2_.exit324 ], [ %.sroa.12.6, %bb.cm ] ; 2 uses
  %.sroa.20.7 = phi ptr [ %.sroa.20.4.ph, %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EED2Ev.exit ], [ %.sroa.20.11, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backEOS2_.exit324 ], [ %.sroa.20.11, %bb.cm ] ; 4 uses
  %.sroa.0396.6 = phi ptr [ %.sroa.0396.3.ph, %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EED2Ev.exit ], [ %.sroa.0396.10, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backEOS2_.exit324 ], [ %.sroa.0396.10, %bb.cm ] ; 10 uses
  %.5157 = phi i64 [ %.3155.ph, %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EED2Ev.exit ], [ %i.fd, %bb.cm ], [ %i.pb, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backEOS2_.exit324 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #20
  store i32 1124024357, ptr %36, align 8, !tbaa !94
  %i.pd = getelementptr inbounds nuw i8, ptr %36, i64 4
  store i32 1, ptr %i.pd, align 4, !tbaa !95
  %i.pe = getelementptr inbounds nuw i8, ptr %36, i64 8
  store i32 1, ptr %i.pe, align 8, !tbaa !51
  %i.pf = getelementptr inbounds nuw i8, ptr %36, i64 12 ; 2 uses
  %i.pg = ptrtoint ptr %.sroa.12402.4 to i64
  %i.ph = ptrtoint ptr %.sroa.0396.6 to i64       ; 2 uses
  %i.pi = sub i64 %i.pg, %i.ph
  %i.pj = lshr exact i64 %i.pi, 3
  %i.pk = trunc i64 %i.pj to i32
  store i32 %i.pk, ptr %i.pf, align 4, !tbaa !50
  %i.pl = getelementptr inbounds nuw i8, ptr %36, i64 16
  store i32 153, ptr %i.pl, align 8, !tbaa !96
  %i.pm = getelementptr inbounds nuw i8, ptr %36, i64 24 ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %36, i64 32
  %i.po = getelementptr inbounds nuw i8, ptr %36, i64 40
  %i.pp = getelementptr inbounds nuw i8, ptr %36, i64 48
  %i.pq = getelementptr inbounds nuw i8, ptr %36, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.pm, i8 0, i64 48, i1 false)
  invoke void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.pq, i64 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0)
          to label %.noexc325 unwind label %bb.dl

.noexc325:                                        ; preds = %.loopexit
  %i.pr = getelementptr inbounds nuw i8, ptr %36, i64 128
  %i.ps = getelementptr inbounds nuw i8, ptr %36, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ps, i8 0, i64 72, i1 false), !tbaa !42
  %i.pt = load i32, ptr %i.pf, align 4, !tbaa !50 ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %36, i64 84
  store i32 %i.pt, ptr %i.pu, align 4, !tbaa !97
  store i64 8, ptr %i.pr, align 8, !tbaa !42
  %i.pv = icmp eq ptr %.sroa.0396.6, %.sroa.12402.4
  br i1 %i.pv, label %_ZN2cv3MatC2INS_6Point_IfEEEERKSt6vectorIT_SaIS5_EEb.exit, label %bb.cx

bb.cx:                                            ; preds = %.noexc325
  store ptr %.sroa.0396.6, ptr %i.pm, align 8, !tbaa !37
  store ptr %.sroa.0396.6, ptr %i.pn, align 8, !tbaa !98
  %i.pw = sext i32 %i.pt to i64
  %i.px = shl nsw i64 %i.pw, 3
  %i.py = getelementptr inbounds nuw i8, ptr %.sroa.0396.6, i64 %i.px ; 2 uses
  store ptr %i.py, ptr %i.po, align 8, !tbaa !99
  store ptr %i.py, ptr %i.pp, align 8, !tbaa !100
  br label %_ZN2cv3MatC2INS_6Point_IfEEEERKSt6vectorIT_SaIS5_EEb.exit

_ZN2cv3MatC2INS_6Point_IfEEEERKSt6vectorIT_SaIS5_EEb.exit: ; preds = %bb.cx, %.noexc325
  %i.pz = trunc i64 %.5157 to i32                 ; 2 uses
  invoke void @_ZNK2cv3Mat7reshapeEii(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %35, ptr noundef nonnull align 8 dereferenceable(208) %36, i32 noundef 2, i32 noundef %i.pz)
          to label %bb.cy unwind label %bb.dm

bb.cy:                                            ; preds = %_ZN2cv3MatC2INS_6Point_IfEEEERKSt6vectorIT_SaIS5_EEb.exit
  %i.qa = invoke noundef zeroext i1 @_ZNK2cv12_OutputArray9fixedTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.cz unwind label %bb.dn

bb.cz:                                            ; preds = %bb.cy
  br i1 %i.qa, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.qb = invoke noundef i32 @_ZNK2cv11_InputArray4typeEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.db unwind label %bb.dn

bb.db:                                            ; preds = %bb.cz, %bb.da
  %i.qc = phi i32 [ %i.qb, %bb.da ], [ 5, %bb.cz ]
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %35, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %i.qc, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.dc unwind label %bb.dn

bb.dc:                                            ; preds = %bb.db
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %35) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %36) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #20
  %i.qd = invoke noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.dd unwind label %.loopexit.split-lp

bb.dd:                                            ; preds = %bb.dc
  br i1 %i.qd, label %bb.de, label %bb.dv

bb.de:                                            ; preds = %bb.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #20
  store i32 1124024325, ptr %38, align 8, !tbaa !94
  %i.qe = getelementptr inbounds nuw i8, ptr %38, i64 4
  store i32 1, ptr %i.qe, align 4, !tbaa !95
  %i.qf = getelementptr inbounds nuw i8, ptr %38, i64 8
  store i32 1, ptr %i.qf, align 8, !tbaa !51
  %i.qg = getelementptr inbounds nuw i8, ptr %38, i64 12 ; 2 uses
  %i.qh = ptrtoint ptr %.sroa.12.4 to i64
  %i.qi = ptrtoint ptr %.sroa.0382.7 to i64
  %i.qj = sub i64 %i.qh, %i.qi
  %i.qk = lshr exact i64 %i.qj, 2
  %i.ql = trunc i64 %i.qk to i32
  store i32 %i.ql, ptr %i.qg, align 4, !tbaa !50
  %i.qm = getelementptr inbounds nuw i8, ptr %38, i64 16
  store i32 153, ptr %i.qm, align 8, !tbaa !96
  %i.qn = getelementptr inbounds nuw i8, ptr %38, i64 24 ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %38, i64 32
  %i.qp = getelementptr inbounds nuw i8, ptr %38, i64 40
  %i.qq = getelementptr inbounds nuw i8, ptr %38, i64 48
  %i.qr = getelementptr inbounds nuw i8, ptr %38, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.qn, i8 0, i64 48, i1 false)
  invoke void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.qr, i64 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0)
          to label %.noexc326 unwind label %bb.dq

.noexc326:                                        ; preds = %bb.de
  %i.qs = getelementptr inbounds nuw i8, ptr %38, i64 128
  %i.qt = getelementptr inbounds nuw i8, ptr %38, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.qt, i8 0, i64 72, i1 false), !tbaa !42
  %i.qu = load i32, ptr %i.qg, align 4, !tbaa !50 ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %38, i64 84
  store i32 %i.qu, ptr %i.qv, align 4, !tbaa !97
  store i64 4, ptr %i.qs, align 8, !tbaa !42
  %i.qw = icmp eq ptr %.sroa.0382.7, %.sroa.12.4
  br i1 %i.qw, label %_ZN2cv3MatC2IfEERKSt6vectorIT_SaIS3_EEb.exit, label %bb.df

bb.df:                                            ; preds = %.noexc326
  store ptr %.sroa.0382.7, ptr %i.qn, align 8, !tbaa !37
  store ptr %.sroa.0382.7, ptr %i.qo, align 8, !tbaa !98
  %i.qx = sext i32 %i.qu to i64
  %i.qy = shl nsw i64 %i.qx, 2
  %i.qz = getelementptr inbounds nuw i8, ptr %.sroa.0382.7, i64 %i.qy ; 2 uses
  store ptr %i.qz, ptr %i.qp, align 8, !tbaa !99
  store ptr %i.qz, ptr %i.qq, align 8, !tbaa !100
  br label %_ZN2cv3MatC2IfEERKSt6vectorIT_SaIS3_EEb.exit

_ZN2cv3MatC2IfEERKSt6vectorIT_SaIS3_EEb.exit:     ; preds = %bb.df, %.noexc326
  invoke void @_ZNK2cv3Mat7reshapeEii(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %37, ptr noundef nonnull align 8 dereferenceable(208) %38, i32 noundef 1, i32 noundef %i.pz)
          to label %bb.dg unwind label %bb.dr

bb.dg:                                            ; preds = %_ZN2cv3MatC2IfEERKSt6vectorIT_SaIS3_EEb.exit
  %i.ra = invoke noundef zeroext i1 @_ZNK2cv12_OutputArray9fixedTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.dh unwind label %bb.ds

bb.dh:                                            ; preds = %bb.dg
  br i1 %i.ra, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.rb = invoke noundef i32 @_ZNK2cv11_InputArray4typeEi(ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef -1)
          to label %bb.dj unwind label %bb.ds

bb.dj:                                            ; preds = %bb.dh, %bb.di
  %i.rc = phi i32 [ %i.rb, %bb.di ], [ 5, %bb.dh ]
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %37, ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef %i.rc, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.dk unwind label %bb.ds

bb.dk:                                            ; preds = %bb.dj
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %37) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %38) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #20
  br label %bb.dv

bb.dl:                                            ; preds = %.loopexit
  %i.rd = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.dm:                                            ; preds = %_ZN2cv3MatC2INS_6Point_IfEEEERKSt6vectorIT_SaIS5_EEb.exit
  %i.re = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.dn:                                            ; preds = %bb.db, %bb.da, %bb.cy
  %i.rf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %35) #20
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %.pn229 = phi { ptr, i32 } [ %i.rf, %bb.dn ], [ %i.re, %bb.dm ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %36) #20
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dl
  %.pn229.pn = phi { ptr, i32 } [ %.pn229, %bb.do ], [ %i.rd, %bb.dl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #20
  br label %bb.ec

bb.dq:                                            ; preds = %bb.de
  %i.rg = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

bb.dr:                                            ; preds = %_ZN2cv3MatC2IfEERKSt6vectorIT_SaIS3_EEb.exit
  %i.rh = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

bb.ds:                                            ; preds = %bb.dj, %bb.di, %bb.dg
  %i.ri = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %37) #20
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %.pn232 = phi { ptr, i32 } [ %i.ri, %bb.ds ], [ %i.rh, %bb.dr ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %38) #20
  br label %bb.du

end_hunk_1
