Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/featureselect?download=true
inline.NumInlined: 487
inline.NumDeleted: 234
begin_hunk_0_@_ZN2cv19goodFeaturesToTrackERKNS_11_InputArrayERKNS_12_OutputArrayEiddS2_S5_iibd:bb.a
  %.not.i17.i.i.i.us608 = icmp eq ptr %.sroa.0410.1577.us599, null
  br i1 %.not.i17.i.i.i.us608, label %_ZNSt6vectorIPKfSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.us609, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorIPKfSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i.us607
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0410.1577.us599, i64 noundef %i.ds) #22
  br label %_ZNSt6vectorIPKfSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.us609

_ZNSt6vectorIPKfSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.us609: ; preds = %bb.bc, %_ZNSt6vectorIPKfSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i.us607
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.dy
  br label %_ZNSt6vectorIPKfSaIS1_EE9push_backEOS1_.exit.us610

_ZNSt6vectorIPKfSaIS1_EE9push_backEOS1_.exit.us610: ; preds = %_ZNSt6vectorIPKfSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.us609, %bb.az, %bb.ax, %bb.aw, %.lr.ph.split.us597
  %.sroa.19.2.us611 = phi ptr [ %.sroa.19.1575.us601, %.lr.ph.split.us597 ], [ %.sroa.19.1575.us601, %bb.ax ], [ %.sroa.19.1575.us601, %bb.aw ], [ %i.ee, %_ZNSt6vectorIPKfSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.us609 ], [ %.sroa.19.1575.us601, %bb.az ] ; 2 uses
  %.sroa.14.2.us612 = phi ptr [ %.sroa.14.1576.us600, %.lr.ph.split.us597 ], [ %.sroa.14.1576.us600, %bb.ax ], [ %.sroa.14.1576.us600, %bb.aw ], [ %i.ed, %_ZNSt6vectorIPKfSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.us609 ], [ %i.dp, %bb.az ] ; 2 uses
  %.sroa.0410.2.us613 = phi ptr [ %.sroa.0410.1577.us599, %.lr.ph.split.us597 ], [ %.sroa.0410.1577.us599, %bb.ax ], [ %.sroa.0410.1577.us599, %bb.aw ], [ %i.ea, %_ZNSt6vectorIPKfSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.us609 ], [ %.sroa.0410.1577.us599, %bb.az ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %.lr.ph.split.us597, !llvm.loop !44

.lr.ph.split.us.us:                               ; preds = %.lr.ph.us, %_ZNSt6vectorIPKfSaIS1_EE9push_backEOS1_.exit.us.us
  %indvars.iv757 = phi i64 [ %indvars.iv.next758, %_ZNSt6vectorIPKfSaIS1_EE9push_backEOS1_.exit.us.us ], [ 1, %.lr.ph.us ] ; 3 uses
  %.sroa.0410.1577.us.us = phi ptr [ %.sroa.0410.2.us.us, %_ZNSt6vectorIPKfSaIS1_EE9push_backEOS1_.exit.us.us ], [ %.sroa.0410.0590.us, %.lr.ph.us ] ; 9 uses
  %.sroa.14.1576.us.us = phi ptr [ %.sroa.14.2.us.us, %_ZNSt6vectorIPKfSaIS1_EE9push_backEOS1_.exit.us.us ], [ %.sroa.14.0589.us, %.lr.ph.us ] ; 8 uses
  %.sroa.19.1575.us.us = phi ptr [ %.sroa.19.2.us.us, %_ZNSt6vectorIPKfSaIS1_EE9push_backEOS1_.exit.us.us ], [ %.sroa.19.0588.us, %.lr.ph.us ] ; 4 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv757 ; 3 uses
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !20 ; 2 uses
  %i.eh = fcmp une float %i.eg, 0.000000e+00
  br i1 %i.eh, label %bb.bd, label %_ZNSt6vectorIPKfSaIS1_EE9push_backEOS1_.exit.us.us

bb.bd:                                            ; preds = %.lr.ph.split.us.us
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv757
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !20
  %i.ek = fcmp oeq float %i.eg, %i.ej
  br i1 %i.ek, label %bb.be, label %_ZNSt6vectorIPKfSaIS1_EE9push_backEOS1_.exit.us.us

bb.be:                                            ; preds = %bb.bd
  %.not.i.i.us.us = icmp eq ptr %.sroa.14.1576.us.us, %.sroa.19.1575.us.us
  br i1 %.not.i.i.us.us, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  store ptr %i.ef, ptr %.sroa.14.1576.us.us, align 8, !tbaa !22
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.14.1576.us.us, i64 8
  br label %_ZNSt6vectorIPKfSaIS1_EE9push_backEOS1_.exit.us.us

bb.bg:                                            ; preds = %bb.be
  %i.em = ptrtoint ptr %.sroa.14.1576.us.us to i64
  %i.en = ptrtoint ptr %.sroa.0410.1577.us.us to i64
  %i.eo = sub i64 %i.em, %i.en                    ; 6 uses
  %i.ep = icmp eq i64 %i.eo, 9223372036854775800
  br i1 %i.ep, label %.split.us, label %_ZNKSt6vectorIPKfSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.us.us

_ZNKSt6vectorIPKfSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.us.us: ; preds = %bb.bg
  %i.eq = ashr exact i64 %i.eo, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.us.us = call i64 @llvm.umax.i64(i64 %i.eq, i64 1)
  %i.er = add nsw i64 %.sroa.speculated.i.i.i.i.us.us, %i.eq ; 2 uses
  %i.es = icmp ult i64 %i.er, %i.eq
  %i.et = call i64 @llvm.umin.i64(i64 %i.er, i64 1152921504606846975)
  %i.eu = select i1 %i.es, i64 1152921504606846975, i64 %i.et ; 3 uses
  %.not.i.i.i.i.us.us = icmp ne i64 %i.eu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.us.us)
  %i.ev = shl nuw nsw i64 %i.eu, 3
  %i.ew = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ev) #23
          to label %.noexc262.us.us unwind label %.loopexit494.split.us.split.us ; 4 uses

.noexc262.us.us:                                  ; preds = %_ZNKSt6vectorIPKfSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.us.us
  %i.ex = getelementptr inbounds i8, ptr %i.ew, i64 %i.eo ; 2 uses
  store ptr %i.ef, ptr %i.ex, align 8, !tbaa !22
  %i.ey = icmp sgt i64 %i.eo, 0
  br i1 %i.ey, label %bb.bh, label %_ZNSt6vectorIPKfSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i.us.us

bb.bh:                                            ; preds = %.noexc262.us.us
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ew, ptr align 8 %.sroa.0410.1577.us.us, i64 %i.eo, i1 false)
  br label %_ZNSt6vectorIPKfSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i.us.us

_ZNSt6vectorIPKfSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i.us.us: ; preds = %bb.bh, %.noexc262.us.us
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %.not.i17.i.i.i.us.us = icmp eq ptr %.sroa.0410.1577.us.us, null
  br i1 %.not.i17.i.i.i.us.us, label %_ZNSt6vectorIPKfSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.us.us, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt6vectorIPKfSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i.us.us
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0410.1577.us.us, i64 noundef %i.eo) #22
  br label %_ZNSt6vectorIPKfSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.us.us

_ZNSt6vectorIPKfSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.us.us: ; preds = %bb.bi, %_ZNSt6vectorIPKfSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i.us.us
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.eu
  br label %_ZNSt6vectorIPKfSaIS1_EE9push_backEOS1_.exit.us.us

_ZNSt6vectorIPKfSaIS1_EE9push_backEOS1_.exit.us.us: ; preds = %_ZNSt6vectorIPKfSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.us.us, %bb.bf, %bb.bd, %.lr.ph.split.us.us
  %.sroa.19.2.us.us = phi ptr [ %.sroa.19.1575.us.us, %.lr.ph.split.us.us ], [ %.sroa.19.1575.us.us, %bb.bf ], [ %.sroa.19.1575.us.us, %bb.bd ], [ %i.fa, %_ZNSt6vectorIPKfSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.us.us ] ; 2 uses
  %.sroa.14.2.us.us = phi ptr [ %.sroa.14.1576.us.us, %.lr.ph.split.us.us ], [ %i.el, %bb.bf ], [ %.sroa.14.1576.us.us, %bb.bd ], [ %i.ez, %_ZNSt6vectorIPKfSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.us.us ] ; 2 uses
  %.sroa.0410.2.us.us = phi ptr [ %.sroa.0410.1577.us.us, %.lr.ph.split.us.us ], [ %.sroa.0410.1577.us.us, %bb.bf ], [ %.sroa.0410.1577.us.us, %bb.bd ], [ %i.ew, %_ZNSt6vectorIPKfSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.us.us ] ; 2 uses
  %indvars.iv.next758 = add nuw nsw i64 %indvars.iv757, 1 ; 2 uses
  %exitcond761.not = icmp eq i64 %indvars.iv.next758, %wide.trip.count760
  br i1 %exitcond761.not, label %._crit_edge.us, label %.lr.ph.split.us.us, !llvm.loop !44

._crit_edge.us:                                   ; preds = %_ZNSt6vectorIPKfSaIS1_EE9push_backEOS1_.exit.us610, %_ZNSt6vectorIPKfSaIS1_EE9push_backEOS1_.exit.us.us
  %.us-phi585.us = phi ptr [ %.sroa.19.2.us.us, %_ZNSt6vectorIPKfSaIS1_EE9push_backEOS1_.exit.us.us ], [ %.sroa.19.2.us611, %_ZNSt6vectorIPKfSaIS1_EE9push_backEOS1_.exit.us610 ] ; 13 uses
  %.us-phi586.us = phi ptr [ %.sroa.14.2.us.us, %_ZNSt6vectorIPKfSaIS1_EE9push_backEOS1_.exit.us.us ], [ %.sroa.14.2.us612, %_ZNSt6vectorIPKfSaIS1_EE9push_backEOS1_.exit.us610 ] ; 5 uses
  %.us-phi587.us = phi ptr [ %.sroa.0410.2.us.us, %_ZNSt6vectorIPKfSaIS1_EE9push_backEOS1_.exit.us.us ], [ %.sroa.0410.2.us613, %_ZNSt6vectorIPKfSaIS1_EE9push_backEOS1_.exit.us610 ] ; 19 uses
  %indvars.iv.next763 = add nuw nsw i64 %indvars.iv762, 1 ; 2 uses
  %exitcond766.not = icmp eq i64 %indvars.iv.next763, %wide.trip.count765
  br i1 %exitcond766.not, label %._crit_edge593, label %.lr.ph.us, !llvm.loop !45

.loopexit494.split.split.us:                      ; preds = %_ZNKSt6vectorIPKfSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.us603
  %lpad.loopexit496.us624 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit494

.loopexit494.split.us.split.us:                   ; preds = %_ZNKSt6vectorIPKfSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.us.us
  %lpad.loopexit496.us.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit494

._crit_edge593:                                   ; preds = %._crit_edge.us
  %i.fb = ptrtoint ptr %.us-phi586.us to i64
  %i.fc = ptrtoint ptr %.us-phi587.us to i64      ; 4 uses
  %i.fd = sub i64 %i.fb, %i.fc
  %i.fe = ashr exact i64 %i.fd, 3                 ; 4 uses
  %i.ff = icmp eq ptr %.us-phi586.us, %.us-phi587.us
  br i1 %i.ff, label %._crit_edge593.thread, label %bb.bo

bb.bj:                                            ; preds = %bb.aj
  %i.fg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  br label %.body

bb.bk:                                            ; preds = %bb.ak
  %i.fh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20
  br label %.body

bb.bl:                                            ; preds = %bb.al
  %i.fi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %31) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #20
  br label %.body

bb.bm:                                            ; preds = %bb.an
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.thread467:                                       ; preds = %bb.at, %bb.au, %bb.av
  %i.fk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #20
  br label %.body

.split.us:                                        ; preds = %bb.ba, %bb.bg
  %.us-phi = phi ptr [ %.sroa.14.1576.us.us, %bb.bg ], [ %.sroa.14.1576.us600, %bb.ba ]
  %.us-phi581 = phi ptr [ %.sroa.0410.1577.us.us, %bb.bg ], [ %.sroa.0410.1577.us599, %bb.ba ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #21
          to label %.noexc261 unwind label %.loopexit.split-lp495

.noexc261:                                        ; preds = %.split.us
  unreachable

.loopexit.split-lp495:                            ; preds = %.split.us
  %lpad.loopexit.split-lp497 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit494

._crit_edge593.thread:                            ; preds = %.lr.ph592, %_ZNK2cv11_InputArray6getMatEi.exit260, %._crit_edge593
  %i.fl = phi i64 [ %i.fc, %._crit_edge593 ], [ 0, %_ZNK2cv11_InputArray6getMatEi.exit260 ], [ 0, %.lr.ph592 ]
  %.sroa.0410.0.lcssa827.a = phi ptr [ %.us-phi587.us, %._crit_edge593 ], [ null, %_ZNK2cv11_InputArray6getMatEi.exit260 ], [ null, %.lr.ph592 ] ; 3 uses
  %.sroa.19.0.lcssa823.a = phi ptr [ %.us-phi585.us, %._crit_edge593 ], [ null, %_ZNK2cv11_InputArray6getMatEi.exit260 ], [ null, %.lr.ph592 ] ; 3 uses
  invoke void @_ZNK2cv12_OutputArray7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.bn unwind label %.loopexit.split-lp

bb.bn:                                            ; preds = %._crit_edge593.thread
  invoke void @_ZNK2cv12_OutputArray7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit unwind label %.loopexit.split-lp

bb.bo:                                            ; preds = %._crit_edge593
  %i.fm = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.fe, i1 true)
  %i.fn = shl nuw nsw i64 %i.fm, 1
  %i.fo = xor i64 %i.fn, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPKfSt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIN2cv14greaterThanPtrEEEEvT_SE_T0_T1_(ptr %.us-phi587.us, ptr %.us-phi586.us, i64 noundef %i.fo)
          to label %.noexc264 unwind label %.loopexit.split-lp

.noexc264:                                        ; preds = %bb.bo
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKfSt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIN2cv14greaterThanPtrEEEEvT_SE_T0_(ptr %.us-phi587.us, ptr %.us-phi586.us)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPKfSt6vectorIS3_SaIS3_EEEEN2cv14greaterThanPtrEEvT_SB_T0_.exit unwind label %.loopexit.split-lp

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPKfSt6vectorIS3_SaIS3_EEEEN2cv14greaterThanPtrEEvT_SB_T0_.exit: ; preds = %.noexc264
  %i.fp = fcmp ult double %4, 1.000000e+00
  br i1 %i.fp, label %.lr.ph674, label %bb.bp

.lr.ph674:                                        ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPKfSt6vectorIS3_SaIS3_EEEEN2cv14greaterThanPtrEEvT_SB_T0_.exit
  %i.fq = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.fr = getelementptr inbounds nuw i8, ptr %19, i64 128
  %i.fs = icmp sgt i32 %2, 0
  %sext780 = zext nneg i32 %2 to i64              ; 2 uses
  br label %bb.cl

bb.bp:                                            ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPKfSt6vectorIS3_SaIS3_EEEEN2cv14greaterThanPtrEEvT_SB_T0_.exit
  %i.ft = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.fu = insertelement <2 x double> poison, double %4, i64 0
  %i.fv = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.fu) ; 4 uses
  %i.fw = add i32 %i.fv, -1
  %i.fx = load <2 x i32>, ptr %i.ft, align 8, !tbaa !74
  %i.fy = insertelement <2 x i32> poison, i32 %i.fw, i64 0
  %i.fz = shufflevector <2 x i32> %i.fy, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ga = add <2 x i32> %i.fz, %i.fx
  %i.gb = insertelement <2 x i32> poison, i32 %i.fv, i64 0
  %i.gc = shufflevector <2 x i32> %i.gb, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.gd = sdiv <2 x i32> %i.ga, %i.gc             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #20
  %i.ge = extractelement <2 x i32> %i.gd, i64 0   ; 2 uses
  %i.gf = extractelement <2 x i32> %i.gd, i64 1   ; 4 uses
  %i.gg = mul nsw i32 %i.ge, %i.gf                ; 3 uses
  %i.gh = sext i32 %i.gg to i64                   ; 2 uses
  %i.gi = icmp slt i32 %i.gg, 0
  br i1 %i.gi, label %bb.bq, label %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i

bb.bq:                                            ; preds = %bb.bp
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #21
          to label %.noexc267 unwind label %bb.bs

.noexc267:                                        ; preds = %bb.bq
  unreachable

_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i: ; preds = %bb.bp
  store i64 0, ptr %34, align 8
  %.not.i.i.i.i266 = icmp eq i32 %i.gg, 0
  br i1 %.not.i.i.i.i266, label %.lr.ph652, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i
  %i.gj = mul nuw nsw i64 %i.gh, 24               ; 3 uses
  %i.gk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gj) #23
          to label %.noexc268 unwind label %bb.bs ; 4 uses

.noexc268:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.gk, ptr %34, align 8, !tbaa !26
  %i.gl = getelementptr inbounds nuw [24 x i8], ptr %i.gk, i64 %i.gh
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.gk, i8 0, i64 %i.gj, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.gk, i64 %i.gj
  br label %.lr.ph652

.lr.ph652:                                        ; preds = %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i, %.noexc268
  %.sink.i = phi ptr [ %i.gl, %.noexc268 ], [ null, %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %.noexc268 ], [ null, %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i ]
  %i.gm = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  store ptr %.sink.i, ptr %i.gn, align 8, !tbaa !27
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.gm, align 8, !tbaa !28
  %i.go = fmul double %4, %4
  %i.gp = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.gq = getelementptr inbounds nuw i8, ptr %19, i64 128
  %i.gr = add i32 %i.gf, -1
  %i.gs = add nsw i32 %i.ge, -1
  %i.gt = icmp sgt i32 %2, 0
  %i.gu = sext i32 %i.gf to i64
  br label %bb.br

bb.br:                                            ; preds = %.lr.ph652, %.thread435
  %.0152649 = phi i64 [ 0, %.lr.ph652 ], [ %.2154.ph, %.thread435 ] ; 2 uses
  %.0159648 = phi i64 [ 0, %.lr.ph652 ], [ %i.lh, %.thread435 ] ; 2 uses
  %.sroa.0393.0647 = phi ptr [ null, %.lr.ph652 ], [ %.sroa.0393.2.ph, %.thread435 ] ; 8 uses
  %.sroa.20.0646 = phi ptr [ null, %.lr.ph652 ], [ %.sroa.20.2.ph, %.thread435 ] ; 5 uses
  %.sroa.12.0645 = phi ptr [ null, %.lr.ph652 ], [ %.sroa.12.1.ph, %.thread435 ] ; 4 uses
  %.sroa.0379.0644 = phi ptr [ null, %.lr.ph652 ], [ %.sroa.0379.2.ph, %.thread435 ] ; 7 uses
  %.sroa.20403.0643 = phi ptr [ null, %.lr.ph652 ], [ %.sroa.20403.2.ph, %.thread435 ] ; 7 uses
  %.sroa.12399.0642 = phi ptr [ null, %.lr.ph652 ], [ %.sroa.12399.1.ph, %.thread435 ] ; 5 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %.us-phi587.us, i64 %.0159648 ; 2 uses
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !22 ; 2 uses
  %i.gx = load ptr, ptr %i.gp, align 8, !tbaa !80
  %i.gy = ptrtoint ptr %i.gw to i64
  %i.gz = ptrtoint ptr %i.gx to i64
  %i.ha = sub i64 %i.gy, %i.gz
  %i.hb = shl i64 %i.ha, 32
  %i.hc = ashr exact i64 %i.hb, 32                ; 2 uses
  %i.hd = load i64, ptr %i.gq, align 8, !tbaa !18 ; 2 uses
  %i.he = udiv i64 %i.hc, %i.hd                   ; 2 uses
  %i.hf = trunc i64 %i.he to i32                  ; 3 uses
  %sext220 = shl i64 %i.he, 32
  %i.hg = ashr exact i64 %sext220, 32
  %i.hh = mul i64 %i.hg, %i.hd
  %i.hi = sub i64 %i.hc, %i.hh
  %i.hj = lshr i64 %i.hi, 2
  %i.hk = trunc i64 %i.hj to i32                  ; 3 uses
  %i.hl = sdiv i32 %i.hk, %i.fv                   ; 3 uses
  %i.hm = sdiv i32 %i.hf, %i.fv                   ; 3 uses
  %i.hn = add i32 %i.hl, 1
  %i.ho = add nsw i32 %i.hm, 1
  %i.hp = call i32 @llvm.smax.i32(i32 %i.hl, i32 1) ; 2 uses
  %i.hq = call i32 @llvm.smax.i32(i32 %i.hm, i32 1) ; 2 uses
  %.sroa.speculated359 = add nsw i32 %i.hq, -1
  %.sroa.speculated355 = call i32 @llvm.smin.i32(i32 %i.hn, i32 %i.gr) ; 2 uses
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ho, i32 %i.gs) ; 2 uses
  %.not640 = icmp sgt i32 %.sroa.speculated359, %.sroa.speculated
  %.pre = load ptr, ptr %34, align 8              ; 2 uses
  br i1 %.not640, label %..critedge.loopexit_crit_edge, label %.preheader483.lr.ph

..critedge.loopexit_crit_edge:                    ; preds = %bb.br
  %.pre787.a = sitofp i32 %i.hk to float
  %.pre788 = sitofp i32 %i.hf to float
  br label %.critedge.loopexit

.preheader483.lr.ph:                              ; preds = %bb.br
  %.sroa.speculated363 = add nsw i32 %i.hp, -1
  %.not221637 = icmp sgt i32 %.sroa.speculated363, %.sroa.speculated355
  %i.hr = sitofp i32 %i.hk to float               ; 3 uses
  %i.hs = sitofp i32 %i.hf to float               ; 3 uses
  br i1 %.not221637, label %.critedge.loopexit, label %.preheader483.preheader

.preheader483.preheader:                          ; preds = %.preheader483.lr.ph
  %i.ht = zext nneg i32 %i.hp to i64
  %i.hu = add nsw i64 %i.ht, -1
  %i.hv = add nuw i32 %.sroa.speculated355, 1
  %i.hw = zext nneg i32 %i.hq to i64
  %i.hx = add nsw i64 %i.hw, -1
  %i.hy = add nuw nsw i32 %.sroa.speculated, 1
  %wide.trip.count776 = zext nneg i32 %i.hy to i64
  %wide.trip.count771 = zext i32 %i.hv to i64
  br label %.preheader483

.preheader483:                                    ; preds = %.preheader483.preheader, %._crit_edge
  %indvars.iv773 = phi i64 [ %i.hx, %.preheader483.preheader ], [ %indvars.iv.next774, %._crit_edge ] ; 2 uses
  %i.hz = mul nsw i64 %indvars.iv773, %i.gu
  %invariant.gep = getelementptr [24 x i8], ptr %.pre, i64 %i.hz
  br label %bb.bt

.loopexit476:                                     ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i297
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

.loopexit.split-lp:                               ; preds = %bb.da, %bb.bn, %._crit_edge593.thread, %bb.bo, %.noexc264, %bb.co
  %.sroa.0410.0.lcssa826.a = phi ptr [ %.us-phi587.us, %.noexc264 ], [ %.us-phi587.us, %bb.bo ], [ %.us-phi587.us, %bb.da ], [ %.us-phi587.us, %bb.co ], [ %.sroa.0410.0.lcssa827.a, %._crit_edge593.thread ], [ %.sroa.0410.0.lcssa827.a, %bb.bn ]
  %.sroa.19.0.lcssa822.a = phi ptr [ %.us-phi585.us, %.noexc264 ], [ %.us-phi585.us, %bb.bo ], [ %.us-phi585.us, %bb.da ], [ %.us-phi585.us, %bb.co ], [ %.sroa.19.0.lcssa823.a, %._crit_edge593.thread ], [ %.sroa.19.0.lcssa823.a, %bb.bn ]
  %.sroa.20403.1.ph = phi ptr [ null, %.noexc264 ], [ null, %bb.bo ], [ %.sroa.20403.6, %bb.da ], [ %.sroa.20403.5667, %bb.co ], [ null, %._crit_edge593.thread ], [ null, %bb.bn ]
  %.sroa.0379.1.ph = phi ptr [ null, %.noexc264 ], [ null, %bb.bo ], [ %.sroa.0379.7, %bb.da ], [ %.sroa.0379.6668, %bb.co ], [ null, %._crit_edge593.thread ], [ null, %bb.bn ]
  %.sroa.20.1.ph = phi ptr [ null, %.noexc264 ], [ null, %bb.bo ], [ %.sroa.20.7, %bb.da ], [ %.sroa.20.6670, %bb.co ], [ null, %._crit_edge593.thread ], [ null, %bb.bn ]
  %.sroa.0393.1.ph = phi ptr [ null, %.noexc264 ], [ null, %bb.bo ], [ %.sroa.0393.6, %bb.da ], [ %.sroa.0393.5671, %bb.co ], [ null, %._crit_edge593.thread ], [ null, %bb.bn ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

bb.bs:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.bq
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.bt:                                            ; preds = %.preheader483, %.thread
  %indvars.iv768 = phi i64 [ %i.hu, %.preheader483 ], [ %indvars.iv.next769, %.thread ] ; 2 uses
  %gep = getelementptr [24 x i8], ptr %invariant.gep, i64 %indvars.iv768 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !81 ; 2 uses
  %i.id = load ptr, ptr %gep, align 8, !tbaa !31  ; 3 uses
  %.not690 = icmp eq ptr %i.ic, %i.id
  br i1 %.not690, label %.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.bt
  %i.ie = ptrtoint ptr %i.ic to i64
  %i.if = ptrtoint ptr %i.id to i64
  %i.ig = sub i64 %i.ie, %i.if
  %i.ih = ashr exact i64 %i.ig, 3
  br label %.lr.ph

bb.bu:                                            ; preds = %.lr.ph
  %i.ii = add nuw i64 %.0158636, 1                ; 2 uses
  %exitcond767.not = icmp eq i64 %i.ii, %i.ih
  br i1 %exitcond767.not, label %.thread, label %.lr.ph, !llvm.loop !46

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.bu
  %.0158636 = phi i64 [ %i.ii, %bb.bu ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %.0158636 ; 2 uses
  %i.ik = load float, ptr %i.ij, align 4, !tbaa !83
  %i.il = fsub float %i.hr, %i.ik                 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 4
  %i.in = load float, ptr %i.im, align 4, !tbaa !84
  %i.io = fsub float %i.hs, %i.in                 ; 2 uses
  %i.ip = fmul float %i.io, %i.io
  %i.iq = call float @llvm.fmuladd.f32(float %i.il, float %i.il, float %i.ip)
  %i.ir = fpext float %i.iq to double
  %i.is = fcmp ule double %i.go, %i.ir
  br i1 %i.is, label %bb.bu, label %.thread435

.thread:                                          ; preds = %bb.bu, %bb.bt
  %indvars.iv.next769 = add nuw nsw i64 %indvars.iv768, 1 ; 2 uses
  %exitcond772.not = icmp eq i64 %indvars.iv.next769, %wide.trip.count771
  br i1 %exitcond772.not, label %._crit_edge, label %bb.bt, !llvm.loop !47

._crit_edge:                                      ; preds = %.thread
  %indvars.iv.next774 = add nuw nsw i64 %indvars.iv773, 1 ; 2 uses
  %exitcond777.not = icmp eq i64 %indvars.iv.next774, %wide.trip.count776
  br i1 %exitcond777.not, label %.critedge.loopexit, label %.preheader483, !llvm.loop !48

.critedge.loopexit:                               ; preds = %._crit_edge, %.preheader483.lr.ph, %..critedge.loopexit_crit_edge
  %.pre-phi789 = phi float [ %.pre788, %..critedge.loopexit_crit_edge ], [ %i.hs, %.preheader483.lr.ph ], [ %i.hs, %._crit_edge ] ; 4 uses
  %.pre-phi = phi float [ %.pre787.a, %..critedge.loopexit_crit_edge ], [ %i.hr, %.preheader483.lr.ph ], [ %i.hr, %._crit_edge ] ; 4 uses
  %i.it = mul nsw i32 %i.hm, %i.gf
end_hunk_0
begin_hunk_1_@_ZN2cv19goodFeaturesToTrackERKNS_11_InputArrayERKNS_12_OutputArrayEiddS2_S5_iibd:bb.a
_ZSt8_DestroyISt6vectorIN2cv6Point_IfEESaIS3_EEEvPT_.exit.i.i.i: ; preds = %bb.ch, %.lr.ph.i.i.i
  %i.lo = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i295 = icmp eq ptr %i.lo, %.pre785
  br i1 %.not.i.i.i295, label %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IfEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorIN2cv6Point_IfEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorIN2cv6Point_IfEESaIS3_EEEvPT_.exit.i.i.i, %select.unfold
  %.not.i.i1.i = icmp eq ptr %.pre784, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EED2Ev.exit, label %bb.ci

bb.ci:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IfEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i
  %i.lp = load ptr, ptr %i.gn, align 8, !tbaa !27
  %i.lq = ptrtoint ptr %i.lp to i64
  %i.lr = ptrtoint ptr %.pre784 to i64
  %i.ls = sub i64 %i.lq, %i.lr
  call void @_ZdlPvm(ptr noundef nonnull %.pre784, i64 noundef %i.ls) #22
  br label %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EED2Ev.exit

_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IfEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #20
  br label %.loopexit

bb.cj:                                            ; preds = %bb.cg, %bb.bs
  %.sroa.20403.4 = phi ptr [ null, %bb.bs ], [ %.sroa.20403.0643, %bb.cg ]
  %.sroa.0379.5 = phi ptr [ null, %bb.bs ], [ %.sroa.0379.3, %bb.cg ]
  %.sroa.20.5 = phi ptr [ null, %bb.bs ], [ %.sroa.20.3, %bb.cg ]
  %.sroa.0393.4 = phi ptr [ null, %bb.bs ], [ %.sroa.0393.0647, %bb.cg ]
  %.pn223.pn = phi { ptr, i32 } [ %i.ia, %bb.bs ], [ %.pn223, %bb.cg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #20
  br label %bb.ea

bb.ck:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backEOS2_.exit321
  %exitcond781.not = icmp eq i64 %i.ns, %i.fe
  br i1 %exitcond781.not, label %.loopexit, label %bb.cl, !llvm.loop !57

bb.cl:                                            ; preds = %.lr.ph674, %bb.ck
  %.4156673 = phi i64 [ 0, %.lr.ph674 ], [ %i.ns, %bb.ck ] ; 2 uses
  %.sroa.0393.5671 = phi ptr [ null, %.lr.ph674 ], [ %.sroa.0393.10, %bb.ck ] ; 9 uses
  %.sroa.20.6670 = phi ptr [ null, %.lr.ph674 ], [ %.sroa.20.11, %bb.ck ] ; 5 uses
  %.sroa.12.3669 = phi ptr [ null, %.lr.ph674 ], [ %.sroa.12.6, %bb.ck ] ; 3 uses
  %.sroa.0379.6668 = phi ptr [ null, %.lr.ph674 ], [ %.sroa.0379.11, %bb.ck ] ; 7 uses
  %.sroa.20403.5667 = phi ptr [ null, %.lr.ph674 ], [ %.sroa.20403.10, %bb.ck ] ; 8 uses
  %.sroa.12399.3666 = phi ptr [ null, %.lr.ph674 ], [ %.sroa.12399.6, %bb.ck ] ; 4 uses
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %.us-phi587.us, i64 %.4156673 ; 2 uses
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !22 ; 3 uses
  %.not.i296 = icmp eq ptr %.sroa.12.3669, %.sroa.20.6670
  br i1 %.not.i296, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.lv = load float, ptr %i.lu, align 4, !tbaa !20
  store float %i.lv, ptr %.sroa.12.3669, align 4, !tbaa !20
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit305

bb.cn:                                            ; preds = %bb.cl
  %i.lw = ptrtoint ptr %.sroa.20.6670 to i64
  %i.lx = ptrtoint ptr %.sroa.0379.6668 to i64
  %i.ly = sub i64 %i.lw, %i.lx                    ; 6 uses
  %i.lz = icmp eq i64 %i.ly, 9223372036854775804
  br i1 %i.lz, label %bb.co, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i297

bb.co:                                            ; preds = %bb.cn
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #21
          to label %.noexc303 unwind label %.loopexit.split-lp

.noexc303:                                        ; preds = %bb.co
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i297: ; preds = %bb.cn
  %i.ma = ashr exact i64 %i.ly, 2                 ; 3 uses
  %.sroa.speculated.i.i.i298 = call i64 @llvm.umax.i64(i64 %i.ma, i64 1)
  %i.mb = add nsw i64 %.sroa.speculated.i.i.i298, %i.ma ; 2 uses
  %i.mc = icmp ult i64 %i.mb, %i.ma
  %i.md = call i64 @llvm.umin.i64(i64 %i.mb, i64 2305843009213693951)
  %i.me = select i1 %i.mc, i64 2305843009213693951, i64 %i.md ; 3 uses
  %.not.i.i.i299 = icmp ne i64 %i.me, 0
  call void @llvm.assume(i1 %.not.i.i.i299)
  %i.mf = shl nuw nsw i64 %i.me, 2
  %i.mg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mf) #23
          to label %.noexc304 unwind label %.loopexit476 ; 4 uses

.noexc304:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i297
  %i.mh = getelementptr inbounds i8, ptr %i.mg, i64 %i.ly ; 2 uses
  %i.mi = load float, ptr %i.lu, align 4, !tbaa !20
  store float %i.mi, ptr %i.mh, align 4, !tbaa !20
  %i.mj = icmp sgt i64 %i.ly, 0
  br i1 %i.mj, label %bb.cp, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i300

bb.cp:                                            ; preds = %.noexc304
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.mg, ptr align 4 %.sroa.0379.6668, i64 %i.ly, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i300

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i300: ; preds = %bb.cp, %.noexc304
  %.not.i17.i.i301 = icmp eq ptr %.sroa.0379.6668, null
  br i1 %.not.i17.i.i301, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i302, label %bb.cq

bb.cq:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i300
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0379.6668, i64 noundef %i.ly) #22
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i302

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i302: ; preds = %bb.cq, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i300
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %i.me
  %.pre786 = load ptr, ptr %i.lt, align 8, !tbaa !22
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit305

_ZNSt6vectorIfSaIfEE9push_backERKf.exit305:       ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i302, %bb.cm
  %i.ml = phi ptr [ %.pre786, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i302 ], [ %i.lu, %bb.cm ]
  %.sroa.0379.11 = phi ptr [ %i.mg, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i302 ], [ %.sroa.0379.6668, %bb.cm ] ; 4 uses
  %.pn474 = phi ptr [ %i.mh, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i302 ], [ %.sroa.12.3669, %bb.cm ]
  %.sroa.20.11 = phi ptr [ %i.mk, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i302 ], [ %.sroa.20.6670, %bb.cm ] ; 4 uses
  %.sroa.12.6 = getelementptr inbounds nuw i8, ptr %.pn474, i64 4 ; 3 uses
  %i.mm = load ptr, ptr %i.fq, align 8, !tbaa !80
  %i.mn = ptrtoint ptr %i.ml to i64
  %i.mo = ptrtoint ptr %i.mm to i64
  %i.mp = sub i64 %i.mn, %i.mo
  %i.mq = shl i64 %i.mp, 32
  %i.mr = ashr exact i64 %i.mq, 32                ; 2 uses
  %i.ms = load i64, ptr %i.fr, align 8, !tbaa !18 ; 2 uses
  %i.mt = udiv i64 %i.mr, %i.ms                   ; 2 uses
  %i.mu = trunc i64 %i.mt to i32
  %sext = shl i64 %i.mt, 32
  %i.mv = ashr exact i64 %sext, 32
  %i.mw = mul i64 %i.mv, %i.ms
  %i.mx = sub i64 %i.mr, %i.mw
  %i.my = lshr i64 %i.mx, 2
  %i.mz = trunc i64 %i.my to i32
  %i.na = sitofp i32 %i.mz to float               ; 2 uses
  %i.nb = sitofp i32 %i.mu to float               ; 2 uses
  %.not.i.i306 = icmp eq ptr %.sroa.12399.3666, %.sroa.20403.5667
  br i1 %.not.i.i306, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit305
  store float %i.na, ptr %.sroa.12399.3666, align 4, !tbaa !20
  %.sroa_idx334 = getelementptr inbounds nuw i8, ptr %.sroa.12399.3666, i64 4
  store float %i.nb, ptr %.sroa_idx334, align 4, !tbaa !20
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backEOS2_.exit321

bb.cs:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit305
  %i.nc = ptrtoint ptr %.sroa.20403.5667 to i64
  %i.nd = ptrtoint ptr %.sroa.0393.5671 to i64
  %i.ne = sub i64 %i.nc, %i.nd                    ; 4 uses
  %i.nf = icmp eq i64 %i.ne, 9223372036854775800
  br i1 %i.nf, label %bb.ct, label %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i307

bb.ct:                                            ; preds = %bb.cs
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #21
          to label %.noexc319 unwind label %.loopexit.split-lp478.loopexit.split-lp

.noexc319:                                        ; preds = %bb.ct
  unreachable

_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i307: ; preds = %bb.cs
  %i.ng = ashr exact i64 %i.ne, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i308 = call i64 @llvm.umax.i64(i64 %i.ng, i64 1)
  %i.nh = add nsw i64 %.sroa.speculated.i.i.i.i308, %i.ng ; 2 uses
  %i.ni = icmp ult i64 %i.nh, %i.ng
  %i.nj = call i64 @llvm.umin.i64(i64 %i.nh, i64 1152921504606846975)
  %i.nk = select i1 %i.ni, i64 1152921504606846975, i64 %i.nj ; 3 uses
  %.not.i.i.i.i309 = icmp ne i64 %i.nk, 0
  call void @llvm.assume(i1 %.not.i.i.i.i309)
  %i.nl = shl nuw nsw i64 %i.nk, 3
  %i.nm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nl) #23
          to label %.noexc320 unwind label %.loopexit.split-lp478.loopexit.split-lp ; 5 uses

.noexc320:                                        ; preds = %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i307
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 %i.ne ; 2 uses
  store float %i.na, ptr %i.nn, align 4, !tbaa !20
  %.sroa_idx336 = getelementptr inbounds nuw i8, ptr %i.nn, i64 4
  store float %i.nb, ptr %.sroa_idx336, align 4, !tbaa !20
  %.not10.i.i.i.i.i.i310 = icmp eq ptr %.sroa.0393.5671, %.sroa.20403.5667
  br i1 %.not10.i.i.i.i.i.i310, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i315, label %.lr.ph.i.i.i.i.i.i311

.lr.ph.i.i.i.i.i.i311:                            ; preds = %.noexc320, %.lr.ph.i.i.i.i.i.i311
  %.012.i.i.i.i.i.i312 = phi ptr [ %i.nq, %.lr.ph.i.i.i.i.i.i311 ], [ %i.nm, %.noexc320 ] ; 2 uses
  %.0911.i.i.i.i.i.i313 = phi ptr [ %i.np, %.lr.ph.i.i.i.i.i.i311 ], [ %.sroa.0393.5671, %.noexc320 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !89)
  call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %i.no = load i64, ptr %.0911.i.i.i.i.i.i313, align 4, !tbaa !20, !alias.scope !90
  store i64 %i.no, ptr %.012.i.i.i.i.i.i312, align 4, !tbaa !20, !alias.scope !89
  %i.np = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i313, i64 8 ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i312, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i314 = icmp eq ptr %i.np, %.sroa.20403.5667
  br i1 %.not.i.i.i.i.i.i314, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i315, label %.lr.ph.i.i.i.i.i.i311, !llvm.loop !52

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i315: ; preds = %.lr.ph.i.i.i.i.i.i311, %.noexc320
  %.0.lcssa.i.i.i.i.i.i316 = phi ptr [ %i.nm, %.noexc320 ], [ %i.nq, %.lr.ph.i.i.i.i.i.i311 ]
  %.not.i23.i.i.i317 = icmp eq ptr %.sroa.0393.5671, null
  br i1 %.not.i23.i.i.i317, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i318, label %bb.cu

bb.cu:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i315
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0393.5671, i64 noundef %i.ne) #22
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i318

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i318: ; preds = %bb.cu, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i315
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %i.nm, i64 %i.nk
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backEOS2_.exit321

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backEOS2_.exit321: ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i318, %bb.cr
  %.0.lcssa.i.i.i.i.i.i316.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i316, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i318 ], [ %.sroa.12399.3666, %bb.cr ]
  %.sroa.20403.10 = phi ptr [ %i.nr, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i318 ], [ %.sroa.20403.5667, %bb.cr ] ; 3 uses
  %.sroa.0393.10 = phi ptr [ %i.nm, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i318 ], [ %.sroa.0393.5671, %bb.cr ] ; 3 uses
  %.sroa.12399.6 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i316.pn, i64 8 ; 3 uses
  %i.ns = add nuw i64 %.4156673, 1                ; 3 uses
  %i.nt = icmp eq i64 %i.ns, %sext780
  %or.cond250 = select i1 %i.fs, i1 %i.nt, i1 false
  br i1 %or.cond250, label %.loopexit, label %bb.ck

.loopexit.split-lp478.loopexit.split-lp:          ; preds = %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i307, %bb.ct
  %lpad.loopexit.split-lp954 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

.loopexit:                                        ; preds = %bb.ck, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backEOS2_.exit321, %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EED2Ev.exit
  %.sroa.12399.4 = phi ptr [ %.sroa.12399.2.ph, %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EED2Ev.exit ], [ %.sroa.12399.6, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backEOS2_.exit321 ], [ %.sroa.12399.6, %bb.ck ] ; 2 uses
  %.sroa.20403.6 = phi ptr [ %.sroa.20403.3.ph, %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EED2Ev.exit ], [ %.sroa.20403.10, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backEOS2_.exit321 ], [ %.sroa.20403.10, %bb.ck ] ; 4 uses
  %.sroa.0379.7 = phi ptr [ %.sroa.0379.4.ph, %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EED2Ev.exit ], [ %.sroa.0379.11, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backEOS2_.exit321 ], [ %.sroa.0379.11, %bb.ck ] ; 11 uses
  %.sroa.12.4 = phi ptr [ %.sroa.12.2.ph, %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EED2Ev.exit ], [ %.sroa.12.6, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backEOS2_.exit321 ], [ %.sroa.12.6, %bb.ck ] ; 2 uses
  %.sroa.20.7 = phi ptr [ %.sroa.20.4.ph, %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EED2Ev.exit ], [ %.sroa.20.11, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backEOS2_.exit321 ], [ %.sroa.20.11, %bb.ck ] ; 4 uses
  %.sroa.0393.6 = phi ptr [ %.sroa.0393.3.ph, %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EED2Ev.exit ], [ %.sroa.0393.10, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backEOS2_.exit321 ], [ %.sroa.0393.10, %bb.ck ] ; 10 uses
  %.5157 = phi i64 [ %.3155.ph, %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EED2Ev.exit ], [ %i.fe, %bb.ck ], [ %sext780, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backEOS2_.exit321 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #20
  store i32 1124024357, ptr %36, align 8, !tbaa !91
  %i.nu = getelementptr inbounds nuw i8, ptr %36, i64 4
  store i32 1, ptr %i.nu, align 4, !tbaa !92
  %i.nv = getelementptr inbounds nuw i8, ptr %36, i64 8
  store i32 1, ptr %i.nv, align 8, !tbaa !93
  %i.nw = getelementptr inbounds nuw i8, ptr %36, i64 12 ; 2 uses
  %i.nx = ptrtoint ptr %.sroa.12399.4 to i64
  %i.ny = ptrtoint ptr %.sroa.0393.6 to i64       ; 2 uses
  %i.nz = sub i64 %i.nx, %i.ny
  %i.oa = lshr exact i64 %i.nz, 3
  %i.ob = trunc i64 %i.oa to i32
  store i32 %i.ob, ptr %i.nw, align 4, !tbaa !94
  %i.oc = getelementptr inbounds nuw i8, ptr %36, i64 16
  store i32 153, ptr %i.oc, align 8, !tbaa !95
  %i.od = getelementptr inbounds nuw i8, ptr %36, i64 24 ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %36, i64 32
  %i.of = getelementptr inbounds nuw i8, ptr %36, i64 40
  %i.og = getelementptr inbounds nuw i8, ptr %36, i64 48
  %i.oh = getelementptr inbounds nuw i8, ptr %36, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.od, i8 0, i64 48, i1 false)
  invoke void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.oh, i64 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0)
          to label %.noexc322 unwind label %bb.dj

.noexc322:                                        ; preds = %.loopexit
  %i.oi = getelementptr inbounds nuw i8, ptr %36, i64 128
  %i.oj = getelementptr inbounds nuw i8, ptr %36, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.oj, i8 0, i64 72, i1 false), !tbaa !18
  %i.ok = load i32, ptr %i.nw, align 4, !tbaa !94 ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %36, i64 84
  store i32 %i.ok, ptr %i.ol, align 4, !tbaa !74
  store i64 8, ptr %i.oi, align 8, !tbaa !18
  %i.om = icmp eq ptr %.sroa.0393.6, %.sroa.12399.4
  br i1 %i.om, label %_ZN2cv3MatC2INS_6Point_IfEEEERKSt6vectorIT_SaIS5_EEb.exit, label %bb.cv

bb.cv:                                            ; preds = %.noexc322
  store ptr %.sroa.0393.6, ptr %i.od, align 8, !tbaa !80
  store ptr %.sroa.0393.6, ptr %i.oe, align 8, !tbaa !96
  %i.on = sext i32 %i.ok to i64
  %i.oo = shl nsw i64 %i.on, 3
  %i.op = getelementptr inbounds nuw i8, ptr %.sroa.0393.6, i64 %i.oo ; 2 uses
  store ptr %i.op, ptr %i.of, align 8, !tbaa !97
  store ptr %i.op, ptr %i.og, align 8, !tbaa !98
  br label %_ZN2cv3MatC2INS_6Point_IfEEEERKSt6vectorIT_SaIS5_EEb.exit

_ZN2cv3MatC2INS_6Point_IfEEEERKSt6vectorIT_SaIS5_EEb.exit: ; preds = %bb.cv, %.noexc322
  %i.oq = trunc i64 %.5157 to i32                 ; 2 uses
  invoke void @_ZNK2cv3Mat7reshapeEii(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %35, ptr noundef nonnull align 8 dereferenceable(208) %36, i32 noundef 2, i32 noundef %i.oq)
          to label %bb.cw unwind label %bb.dk

bb.cw:                                            ; preds = %_ZN2cv3MatC2INS_6Point_IfEEEERKSt6vectorIT_SaIS5_EEb.exit
  %i.or = invoke noundef zeroext i1 @_ZNK2cv12_OutputArray9fixedTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.cx unwind label %bb.dl

bb.cx:                                            ; preds = %bb.cw
  br i1 %i.or, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.os = invoke noundef i32 @_ZNK2cv11_InputArray4typeEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.cz unwind label %bb.dl

bb.cz:                                            ; preds = %bb.cx, %bb.cy
  %i.ot = phi i32 [ %i.os, %bb.cy ], [ 5, %bb.cx ]
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %35, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %i.ot, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.da unwind label %bb.dl

bb.da:                                            ; preds = %bb.cz
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %35) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %36) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #20
  %i.ou = invoke noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.db unwind label %.loopexit.split-lp

bb.db:                                            ; preds = %bb.da
  br i1 %i.ou, label %bb.dc, label %bb.dt

bb.dc:                                            ; preds = %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #20
  store i32 1124024325, ptr %38, align 8, !tbaa !91
  %i.ov = getelementptr inbounds nuw i8, ptr %38, i64 4
  store i32 1, ptr %i.ov, align 4, !tbaa !92
  %i.ow = getelementptr inbounds nuw i8, ptr %38, i64 8
  store i32 1, ptr %i.ow, align 8, !tbaa !93
  %i.ox = getelementptr inbounds nuw i8, ptr %38, i64 12 ; 2 uses
  %i.oy = ptrtoint ptr %.sroa.12.4 to i64
  %i.oz = ptrtoint ptr %.sroa.0379.7 to i64
  %i.pa = sub i64 %i.oy, %i.oz
  %i.pb = lshr exact i64 %i.pa, 2
  %i.pc = trunc i64 %i.pb to i32
  store i32 %i.pc, ptr %i.ox, align 4, !tbaa !94
  %i.pd = getelementptr inbounds nuw i8, ptr %38, i64 16
  store i32 153, ptr %i.pd, align 8, !tbaa !95
  %i.pe = getelementptr inbounds nuw i8, ptr %38, i64 24 ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %38, i64 32
  %i.pg = getelementptr inbounds nuw i8, ptr %38, i64 40
  %i.ph = getelementptr inbounds nuw i8, ptr %38, i64 48
  %i.pi = getelementptr inbounds nuw i8, ptr %38, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.pe, i8 0, i64 48, i1 false)
  invoke void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.pi, i64 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0)
          to label %.noexc323 unwind label %bb.do

.noexc323:                                        ; preds = %bb.dc
  %i.pj = getelementptr inbounds nuw i8, ptr %38, i64 128
  %i.pk = getelementptr inbounds nuw i8, ptr %38, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.pk, i8 0, i64 72, i1 false), !tbaa !18
  %i.pl = load i32, ptr %i.ox, align 4, !tbaa !94 ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %38, i64 84
  store i32 %i.pl, ptr %i.pm, align 4, !tbaa !74
  store i64 4, ptr %i.pj, align 8, !tbaa !18
  %i.pn = icmp eq ptr %.sroa.0379.7, %.sroa.12.4
  br i1 %i.pn, label %_ZN2cv3MatC2IfEERKSt6vectorIT_SaIS3_EEb.exit, label %bb.dd

bb.dd:                                            ; preds = %.noexc323
  store ptr %.sroa.0379.7, ptr %i.pe, align 8, !tbaa !80
  store ptr %.sroa.0379.7, ptr %i.pf, align 8, !tbaa !96
  %i.po = sext i32 %i.pl to i64
  %i.pp = shl nsw i64 %i.po, 2
  %i.pq = getelementptr inbounds nuw i8, ptr %.sroa.0379.7, i64 %i.pp ; 2 uses
  store ptr %i.pq, ptr %i.pg, align 8, !tbaa !97
  store ptr %i.pq, ptr %i.ph, align 8, !tbaa !98
  br label %_ZN2cv3MatC2IfEERKSt6vectorIT_SaIS3_EEb.exit

_ZN2cv3MatC2IfEERKSt6vectorIT_SaIS3_EEb.exit:     ; preds = %bb.dd, %.noexc323
  invoke void @_ZNK2cv3Mat7reshapeEii(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %37, ptr noundef nonnull align 8 dereferenceable(208) %38, i32 noundef 1, i32 noundef %i.oq)
          to label %bb.de unwind label %bb.dp

bb.de:                                            ; preds = %_ZN2cv3MatC2IfEERKSt6vectorIT_SaIS3_EEb.exit
  %i.pr = invoke noundef zeroext i1 @_ZNK2cv12_OutputArray9fixedTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.df unwind label %bb.dq

bb.df:                                            ; preds = %bb.de
  br i1 %i.pr, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.ps = invoke noundef i32 @_ZNK2cv11_InputArray4typeEi(ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef -1)
          to label %bb.dh unwind label %bb.dq

bb.dh:                                            ; preds = %bb.df, %bb.dg
  %i.pt = phi i32 [ %i.ps, %bb.dg ], [ 5, %bb.df ]
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %37, ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef %i.pt, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.di unwind label %bb.dq

bb.di:                                            ; preds = %bb.dh
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %37) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %38) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #20
  br label %bb.dt

bb.dj:                                            ; preds = %.loopexit
  %i.pu = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

bb.dk:                                            ; preds = %_ZN2cv3MatC2INS_6Point_IfEEEERKSt6vectorIT_SaIS5_EEb.exit
  %i.pv = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

bb.dl:                                            ; preds = %bb.cz, %bb.cy, %bb.cw
  %i.pw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %35) #20
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %.pn227 = phi { ptr, i32 } [ %i.pw, %bb.dl ], [ %i.pv, %bb.dk ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %36) #20
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dj
  %.pn227.pn = phi { ptr, i32 } [ %.pn227, %bb.dm ], [ %i.pu, %bb.dj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #20
  br label %bb.ea

bb.do:                                            ; preds = %bb.dc
  %i.px = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

bb.dp:                                            ; preds = %_ZN2cv3MatC2IfEERKSt6vectorIT_SaIS3_EEb.exit
  %i.py = landingpad { ptr, i32 }
          cleanup
  br label %bb.dr

bb.dq:                                            ; preds = %bb.dh, %bb.dg, %bb.de
  %i.pz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %37) #20
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %.pn230 = phi { ptr, i32 } [ %i.pz, %bb.dq ], [ %i.py, %bb.dp ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %38) #20
  br label %bb.ds

end_hunk_1
