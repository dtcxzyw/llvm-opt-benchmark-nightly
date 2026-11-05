Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/multiview_calibration?download=true
inline.NumInlined: 2702
inline.NumDeleted: 898
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZN2cv18calibrateMultiviewERKNS_11_InputArrayERKSt6vectorIS3_INS_3MatESaIS4_EESaIS6_EERKS3_INS_5Size_IiEESaISC_EES2_S2_RKNS_17_InputOutputArrayESJ_SJ_SJ_RKNS_12_OutputArrayESM_SM_SM_S2_iNS_12TermCriteriaE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %148) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %147) #23
  br label %bb.pk

bb.pk:                                            ; preds = %bb.pj, %bb.pf
  %.pn130.pn.pn.pn.i = phi { ptr, i32 } [ %.pn130.pn.pn.i, %bb.pj ], [ %i.axd, %bb.pf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %147) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %146) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %145) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.aum) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.aun) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.auo) #23
  br label %bb.pl

bb.pl:                                            ; preds = %bb.pk, %bb.pe
  %.pn130.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn130.pn.pn.pn.i, %bb.pk ], [ %i.axc, %bb.pe ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %144) #23
  br label %bb.pm

bb.pm:                                            ; preds = %bb.pl, %bb.pd
  %.pn130.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn130.pn.pn.pn.pn.i, %bb.pl ], [ %i.axb, %bb.pd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %144) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %143) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %143) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %142) #23
  br label %bb.pp

bb.pn:                                            ; preds = %bb.pb, %bb.pa
  %i.axh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %149) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %141) #23
  br label %bb.pp

bb.po:                                            ; preds = %bb.pc
  %.071.i = add nsw i32 %.071225.i, -1            ; 2 uses
  %i.axi = icmp sgt i32 %.071.i, %.072226.i
  br i1 %i.axi, label %.lr.ph.i1090, label %._crit_edge.i1088

bb.pp:                                            ; preds = %bb.pn, %bb.pm
  %.pn137.pn.i = phi { ptr, i32 } [ %i.axh, %bb.pn ], [ %.pn130.pn.pn.pn.pn.pn.i, %bb.pm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %141) #23
  br label %.body1096

._crit_edge.i1088:                                ; preds = %bb.po, %.preheader.i
  %exitcond.not.i1089 = icmp eq i32 %i.awl, %i.jl
  br i1 %exitcond.not.i1089, label %.loopexit.i1087, label %.preheader.i, !llvm.loop !220

.preheader195._crit_edge.i:                       ; preds = %.preheader195.i, %.loopexit.i1087
  call void @llvm.lifetime.start.p0(ptr nonnull %150) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %151) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %150, ptr noundef nonnull @.str.49, ptr noundef nonnull align 1 dereferenceable(1) %151)
          to label %bb.pq unwind label %bb.ps

bb.pq:                                            ; preds = %.preheader195._crit_edge.i
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %150, ptr noundef nonnull @__func__._ZN2cv9multiviewL28thresholdPatternCameraAnglesEidRKSt6vectorINS_3MatESaIS2_EERKS1_IS1_INS_3VecIdLi3EEESaIS8_EESaISA_EERSC_RS1_IS1_IbSaIbEESaISH_EE, ptr noundef nonnull @.str.1, i32 noundef 245) #22
          to label %bb.pr unwind label %bb.pt

bb.pr:                                            ; preds = %bb.pq
  unreachable

bb.ps:                                            ; preds = %.preheader195._crit_edge.i
  %i.axj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1084

bb.pt:                                            ; preds = %bb.pq
  %i.axk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.axl = load ptr, ptr %150, align 8, !tbaa !36 ; 2 uses
  %i.axm = getelementptr inbounds nuw i8, ptr %150, i64 16 ; 2 uses
  %i.axn = icmp eq ptr %i.axl, %i.axm
  br i1 %i.axn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1084, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1085

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1085: ; preds = %bb.pt
  %i.axo = load i64, ptr %i.axm, align 8, !tbaa !37
  %i.axp = add i64 %i.axo, 1
  call void @_ZdlPvm(ptr noundef %i.axl, i64 noundef %i.axp) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1084

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1084: ; preds = %bb.pt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1085, %bb.ps
  %.pn154.i = phi { ptr, i32 } [ %i.axj, %bb.ps ], [ %i.axk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1085 ], [ %i.axk, %bb.pt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %151) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %150) #23
  br label %.body1096

cdce.end.i:                                       ; preds = %bb.pc, %._crit_edge276.i
  %.pre-phi280.i = phi i32 [ %.pre279.i, %._crit_edge276.i ], [ %i.awi, %bb.pc ] ; 2 uses
  %.pre-phi278.i = phi i32 [ %.pre277.i, %._crit_edge276.i ], [ %i.awl, %bb.pc ]
  %.894.i = phi i32 [ %.086234.i, %._crit_edge276.i ], [ %.073227.i, %bb.pc ] ; 3 uses
  %.885.i = phi i32 [ %.077235.i, %._crit_edge276.i ], [ %.072226.i, %bb.pc ] ; 2 uses
  %.8.i = phi i32 [ %.076236.i, %._crit_edge276.i ], [ %.071225.i, %bb.pc ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %152) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %153) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %154) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %155) #23
  %i.axq = load ptr, ptr %242, align 8, !tbaa !54
  %i.axr = getelementptr inbounds nuw [208 x i8], ptr %i.axq, i64 %indvars.iv271.i
  call void @llvm.lifetime.start.p0(ptr nonnull %128) #23, !noalias !356
  store i32 %.885.i, ptr %128, align 4, !tbaa !50, !noalias !356
  store i32 %.pre-phi278.i, ptr %i.aus, align 4, !tbaa !51, !noalias !356
  call void @llvm.lifetime.start.p0(ptr nonnull %129) #23, !noalias !356
  store i64 9223372034707292160, ptr %129, align 8, !noalias !356
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %155, ptr noundef nonnull align 8 dereferenceable(208) %i.axr, ptr noundef nonnull align 4 dereferenceable(8) %128, ptr noundef nonnull align 4 dereferenceable(8) %129)
          to label %.noexc1093 unwind label %.loopexit.split-lp1867.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1093:                                       ; preds = %cdce.end.i
  call void @llvm.lifetime.end.p0(ptr nonnull %129) #23, !noalias !356
  call void @llvm.lifetime.end.p0(ptr nonnull %128) #23, !noalias !356
  call void @llvm.lifetime.start.p0(ptr nonnull %156) #23
  %i.axs = load ptr, ptr %242, align 8, !tbaa !54
  %i.axt = getelementptr inbounds nuw [208 x i8], ptr %i.axs, i64 %indvars.iv271.i
  call void @llvm.lifetime.start.p0(ptr nonnull %126) #23, !noalias !357
  store i32 %.894.i, ptr %126, align 4, !tbaa !50, !noalias !357
  store i32 %.pre-phi280.i, ptr %i.aut, align 4, !tbaa !51, !noalias !357
  call void @llvm.lifetime.start.p0(ptr nonnull %127) #23, !noalias !357
  store i64 9223372034707292160, ptr %127, align 8, !noalias !357
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %156, ptr noundef nonnull align 8 dereferenceable(208) %i.axt, ptr noundef nonnull align 4 dereferenceable(8) %126, ptr noundef nonnull align 4 dereferenceable(8) %127)
          to label %bb.pu unwind label %bb.qb

bb.pu:                                            ; preds = %.noexc1093
  call void @llvm.lifetime.end.p0(ptr nonnull %127) #23, !noalias !357
  call void @llvm.lifetime.end.p0(ptr nonnull %126) #23, !noalias !357
  invoke void @_ZN2cvmiERKNS_3MatES2_(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %154, ptr noundef nonnull align 8 dereferenceable(208) %155, ptr noundef nonnull align 8 dereferenceable(208) %156)
          to label %bb.pv unwind label %bb.qc

bb.pv:                                            ; preds = %bb.pu
  call void @llvm.lifetime.start.p0(ptr nonnull %157) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %158) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %159) #23
  %i.axu = load ptr, ptr %242, align 8, !tbaa !54
  %i.axv = getelementptr inbounds nuw [208 x i8], ptr %i.axu, i64 %indvars.iv271.i
  call void @llvm.lifetime.start.p0(ptr nonnull %124) #23, !noalias !358
  %i.axw = add nsw i32 %.8.i, 1
  store i32 %.8.i, ptr %124, align 4, !tbaa !50, !noalias !358
  store i32 %i.axw, ptr %i.auu, align 4, !tbaa !51, !noalias !358
  call void @llvm.lifetime.start.p0(ptr nonnull %125) #23, !noalias !358
  store i64 9223372034707292160, ptr %125, align 8, !noalias !358
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %159, ptr noundef nonnull align 8 dereferenceable(208) %i.axv, ptr noundef nonnull align 4 dereferenceable(8) %124, ptr noundef nonnull align 4 dereferenceable(8) %125)
          to label %bb.pw unwind label %bb.qd

bb.pw:                                            ; preds = %bb.pv
  call void @llvm.lifetime.end.p0(ptr nonnull %125) #23, !noalias !358
  call void @llvm.lifetime.end.p0(ptr nonnull %124) #23, !noalias !358
  call void @llvm.lifetime.start.p0(ptr nonnull %160) #23
  %i.axx = load ptr, ptr %242, align 8, !tbaa !54
  %i.axy = getelementptr inbounds nuw [208 x i8], ptr %i.axx, i64 %indvars.iv271.i
  call void @llvm.lifetime.start.p0(ptr nonnull %122) #23, !noalias !359
  store i32 %.894.i, ptr %122, align 4, !tbaa !50, !noalias !359
  store i32 %.pre-phi280.i, ptr %i.auv, align 4, !tbaa !51, !noalias !359
  call void @llvm.lifetime.start.p0(ptr nonnull %123) #23, !noalias !359
  store i64 9223372034707292160, ptr %123, align 8, !noalias !359
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %160, ptr noundef nonnull align 8 dereferenceable(208) %i.axy, ptr noundef nonnull align 4 dereferenceable(8) %122, ptr noundef nonnull align 4 dereferenceable(8) %123)
          to label %bb.px unwind label %bb.qe

bb.px:                                            ; preds = %bb.pw
  call void @llvm.lifetime.end.p0(ptr nonnull %123) #23, !noalias !359
  call void @llvm.lifetime.end.p0(ptr nonnull %122) #23, !noalias !359
  invoke void @_ZN2cvmiERKNS_3MatES2_(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %158, ptr noundef nonnull align 8 dereferenceable(208) %159, ptr noundef nonnull align 8 dereferenceable(208) %160)
          to label %bb.py unwind label %bb.qf

bb.py:                                            ; preds = %bb.px
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %157) #23
  %i.axz = load ptr, ptr %158, align 8, !tbaa !75, !noalias !360 ; 2 uses
  %i.aya = load ptr, ptr %i.axz, align 8, !tbaa !77
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.aya, i64 24
  %i.ayc = load ptr, ptr %i.ayb, align 8
  invoke void %i.ayc(ptr noundef nonnull align 8 dereferenceable(8) %i.axz, ptr noundef nonnull align 8 dereferenceable(688) %158, ptr noundef nonnull align 8 dereferenceable(208) %157, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit171.i unwind label %bb.qg

_ZNK2cv7MatExprcvNS_3MatEEv.exit171.i:            ; preds = %bb.py
  invoke void @_ZNK2cv7MatExpr5crossERKNS_3MatE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %153, ptr noundef nonnull align 8 dereferenceable(688) %154, ptr noundef nonnull align 8 dereferenceable(208) %157)
          to label %bb.pz unwind label %bb.qg

bb.pz:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit171.i
  invoke void @_ZNK2cv3MatcvNS_3VecIT_XT0_EEEIdLi3EEEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Vec.55") align 8 %152, ptr noundef nonnull align 8 dereferenceable(208) %153)
          to label %bb.qa unwind label %bb.qh

bb.qa:                                            ; preds = %bb.pz
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %153) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %157) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.auw) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.aux) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.auy) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %160) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %160) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %159) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %159) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %158) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %157) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.auz) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ava) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.avb) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %156) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %156) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %155) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %155) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %154) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %153) #23
  %i.ayd = load double, ptr %i.avd, align 16, !tbaa !108 ; 3 uses
  %i.aye = load <2 x double>, ptr %152, align 16, !tbaa !108 ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %i.aye, %i.aye
  %343 = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ayf = extractelement <2 x double> %i.aye, i64 1 ; 2 uses
  %i.ayg = call double @llvm.fmuladd.f64(double %i.ayf, double %i.ayf, double %343)
  %i.ayh = call noundef double @llvm.fmuladd.f64(double %i.ayd, double %i.ayd, double %i.ayg)
  %sqrt.i.i = call noundef double @llvm.sqrt.f64(double %i.ayh)
  %i.ayi = fdiv double 1.000000e+00, %sqrt.i.i    ; 2 uses
  %i.ayj = insertelement <2 x double> poison, double %i.ayi, i64 0
  %i.ayk = shufflevector <2 x double> %i.ayj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ayl = fmul <2 x double> %i.aye, %i.ayk
  store <2 x double> %i.ayl, ptr %152, align 16, !tbaa !108
  %i.aym = fmul double %i.ayd, %i.ayi
  store double %i.aym, ptr %i.avd, align 16, !tbaa !108
  br i1 %i.ave, label %.lr.ph232.i, label %._crit_edge233.i

.lr.ph232.i:                                      ; preds = %bb.qa
  %i.ayn = lshr i64 %indvars.iv271.i, 6
  %i.ayo = and i64 %indvars.iv271.i, 63
  %i.ayp = shl nuw i64 1, %i.ayo                  ; 2 uses
  %i.ayq = xor i64 %i.ayp, -1
  br label %bb.qn

._crit_edge233.i:                                 ; preds = %_ZNK2cv3MatcvNS_3VecIT_XT0_EEEIdLi3EEEv.exit.i, %bb.qa
  call void @llvm.lifetime.end.p0(ptr nonnull %152) #23
  %indvars.iv.next272.i = add nuw nsw i64 %indvars.iv271.i, 1 ; 2 uses
  %exitcond275.not.i = icmp eq i64 %indvars.iv.next272.i, %wide.trip.count274.i
  br i1 %exitcond275.not.i, label %_ZN2cv9multiviewL28thresholdPatternCameraAnglesEidRKSt6vectorINS_3MatESaIS2_EERKS1_IS1_INS_3VecIdLi3EEESaIS8_EESaISA_EERSC_RS1_IS1_IbSaIbEESaISH_EE.exit, label %bb.ou, !llvm.loop !231

bb.qb:                                            ; preds = %.noexc1093
  %i.ayr = landingpad { ptr, i32 }
          cleanup
  br label %bb.qm

bb.qc:                                            ; preds = %bb.pu
  %i.ays = landingpad { ptr, i32 }
          cleanup
  br label %bb.ql

bb.qd:                                            ; preds = %bb.pv
  %i.ayt = landingpad { ptr, i32 }
          cleanup
  br label %bb.qk

bb.qe:                                            ; preds = %bb.pw
  %i.ayu = landingpad { ptr, i32 }
          cleanup
  br label %bb.qj

bb.qf:                                            ; preds = %bb.px
  %i.ayv = landingpad { ptr, i32 }
          cleanup
  br label %bb.qi

bb.qg:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit171.i, %bb.py
  %i.ayw = landingpad { ptr, i32 }
          cleanup
  br label %.body169.i

bb.qh:                                            ; preds = %bb.pz
  %i.ayx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %153) #23
  br label %.body169.i

.body169.i:                                       ; preds = %bb.qh, %bb.qg
  %.pn141.pn.i = phi { ptr, i32 } [ %i.ayw, %bb.qg ], [ %i.ayx, %bb.qh ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %157) #23
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %158) #23
  br label %bb.qi

bb.qi:                                            ; preds = %.body169.i, %bb.qf
  %.pn141.pn.pn.i = phi { ptr, i32 } [ %.pn141.pn.i, %.body169.i ], [ %i.ayv, %bb.qf ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %160) #23
  br label %bb.qj

bb.qj:                                            ; preds = %bb.qi, %bb.qe
  %.pn141.pn.pn.pn.i = phi { ptr, i32 } [ %.pn141.pn.pn.i, %bb.qi ], [ %i.ayu, %bb.qe ]
  call void @llvm.lifetime.end.p0(ptr nonnull %160) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %159) #23
  br label %bb.qk

bb.qk:                                            ; preds = %bb.qj, %bb.qd
  %.pn141.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn141.pn.pn.pn.i, %bb.qj ], [ %i.ayt, %bb.qd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %159) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %158) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %157) #23
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %154) #23
  br label %bb.ql

bb.ql:                                            ; preds = %bb.qk, %bb.qc
  %.pn141.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn141.pn.pn.pn.pn.i, %bb.qk ], [ %i.ays, %bb.qc ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %156) #23
  br label %bb.qm

bb.qm:                                            ; preds = %bb.ql, %bb.qb
  %.pn141.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn141.pn.pn.pn.pn.pn.i, %bb.ql ], [ %i.ayr, %bb.qb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %156) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %155) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %155) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %154) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %153) #23
  br label %bb.rg

bb.qn:                                            ; preds = %_ZNK2cv3MatcvNS_3VecIT_XT0_EEEIdLi3EEEv.exit.i, %.lr.ph232.i
  %indvars.iv.i1080 = phi i64 [ 0, %.lr.ph232.i ], [ %indvars.iv.next.i1083, %_ZNK2cv3MatcvNS_3VecIT_XT0_EEEIdLi3EEEv.exit.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %161) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %161, i8 0, i64 72, i1 false), !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %162) #23
  %i.ayy = load ptr, ptr %258, align 8, !tbaa !113
  %i.ayz = getelementptr inbounds nuw [24 x i8], ptr %i.ayy, i64 %indvars.iv.i1080
  %i.aza = load ptr, ptr %i.ayz, align 8, !tbaa !107
  %i.azb = getelementptr inbounds nuw [24 x i8], ptr %i.aza, i64 %indvars.iv271.i
  store i32 -1056833530, ptr %162, align 8, !tbaa !104
  store ptr %i.azb, ptr %i.avg, align 8, !tbaa !24
  store i64 12884901889, ptr %i.avf, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %163) #23
  store i32 -1040056314, ptr %163, align 8, !tbaa !104
  store ptr %161, ptr %i.avh, align 8, !tbaa !24
  store i64 12884901891, ptr %i.avi, align 8, !tbaa !39
  %i.azc = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.qo unwind label %bb.rd

bb.qo:                                            ; preds = %bb.qn
  invoke void @_ZN2cv9RodriguesERKNS_11_InputArrayERKNS_12_OutputArrayES5_(ptr noundef nonnull align 8 dereferenceable(24) %162, ptr noundef nonnull align 8 dereferenceable(24) %163, ptr noundef nonnull align 8 dereferenceable(24) %i.azc)
          to label %bb.qp unwind label %bb.rd

bb.qp:                                            ; preds = %bb.qo
  call void @llvm.lifetime.end.p0(ptr nonnull %163) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %162) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %164) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %165) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %166) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !361)
  %i.azd = load <2 x double>, ptr %i.avj, align 8, !tbaa !108, !noalias !361
  store <2 x double> %i.azd, ptr %166, align 16, !tbaa !108, !alias.scope !361
  %i.aze = load double, ptr %i.avk, align 8, !tbaa !108, !noalias !361
  store double %i.aze, ptr %i.avl, align 16, !tbaa !108, !alias.scope !361
  store <4 x i32> <i32 1124024326, i32 2, i32 1, i32 3>, ptr %165, align 16, !tbaa !39
  store i32 153, ptr %i.avp, align 16, !tbaa !350
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.avq, i8 0, i64 48, i1 false)
  invoke void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.avr, i64 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 0)
          to label %.noexc1094 unwind label %.loopexit.split-lp1867.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1094:                                       ; preds = %bb.qp
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.avs, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %120) #23
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %120, i32 noundef 1, i32 noundef 3, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(24) %166, i64 noundef 0)
          to label %.noexc1095 unwind label %.loopexit.split-lp1867.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1095:                                       ; preds = %.noexc1094
  call void @llvm.lifetime.start.p0(ptr nonnull %121) #23
  store i64 0, ptr %i.avu, align 8
  store i32 33619968, ptr %121, align 8, !tbaa !104
  store ptr %165, ptr %i.avt, align 8, !tbaa !24
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %120, ptr noundef nonnull align 8 dereferenceable(24) %121)
          to label %_ZN2cv3MatC2IdLi1ELi3EEERKNS_4MatxIT_XT0_EXT1_EEEb.exit.i unwind label %bb.qq

bb.qq:                                            ; preds = %.noexc1095
  %i.azf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %121) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %120) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %120) #23
  br label %.body1096

_ZN2cv3MatC2IdLi1ELi3EEERKNS_4MatxIT_XT0_EXT1_EEEb.exit.i: ; preds = %.noexc1095
  call void @llvm.lifetime.end.p0(ptr nonnull %121) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %120) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %120) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !362)
  %i.azg = load ptr, ptr %i.avq, align 8, !tbaa !40, !noalias !362 ; 3 uses
  %.not.i.i1081 = icmp ne ptr %i.azg, null
  %i.azh = load i32, ptr %i.avm, align 4, !noalias !362
  %i.azi = icmp slt i32 %i.azh, 3
  %or.cond.i.i = select i1 %.not.i.i1081, i1 %i.azi, i1 false
  br i1 %or.cond.i.i, label %bb.qr, label %bb.qt

bb.qr:                                            ; preds = %_ZN2cv3MatC2IdLi1ELi3EEERKNS_4MatxIT_XT0_EXT1_EEEb.exit.i
  %i.azj = load i32, ptr %i.avn, align 8, !tbaa !48, !noalias !362 ; 3 uses
  %i.azk = icmp eq i32 %i.azj, 1
  %i.azl = load i32, ptr %i.avo, align 4, !noalias !362 ; 3 uses
  %i.azm = icmp eq i32 %i.azl, 1
  %or.cond13.i.i = select i1 %i.azk, i1 true, i1 %i.azm
  %i.azn = add nsw i32 %i.azl, %i.azj
  %i.azo = icmp eq i32 %i.azn, 4
  %or.cond15.i.i = select i1 %or.cond13.i.i, i1 %i.azo, i1 false
  br i1 %or.cond15.i.i, label %bb.qs, label %bb.qt

bb.qs:                                            ; preds = %bb.qr
  %i.azp = load i32, ptr %165, align 16, !tbaa !32, !noalias !362 ; 2 uses
  %i.azq = and i32 %i.azp, 4064
  %i.azr = icmp eq i32 %i.azq, 0
  br i1 %i.azr, label %bb.qy, label %bb.qt

bb.qt:                                            ; preds = %bb.qs, %bb.qr, %_ZN2cv3MatC2IdLi1ELi3EEERKNS_4MatxIT_XT0_EXT1_EEEb.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %116) #23, !noalias !362
  call void @llvm.lifetime.start.p0(ptr nonnull %117) #23, !noalias !362
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %116, ptr noundef nonnull @.str.50, ptr noundef nonnull align 1 dereferenceable(1) %117)
          to label %bb.qu unwind label %bb.qw, !noalias !362

bb.qu:                                            ; preds = %bb.qt
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %116, ptr noundef nonnull @__func__._ZNK2cv3MatcvNS_3VecIT_XT0_EEEIdLi3EEEv, ptr noundef nonnull @.str.51, i32 noundef 1301) #22
          to label %bb.qv unwind label %bb.qx, !noalias !362

end_hunk_0
