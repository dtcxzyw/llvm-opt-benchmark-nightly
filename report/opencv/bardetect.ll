Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/bardetect?download=true
inline.NumInlined: 949
inline.NumDeleted: 380
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN2cv7barcode6Detect27computeTransformationPointsEv:bb.a
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ae
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.pn17.i.i.i = phi { ptr, i32 } [ %i.gm, %bb.ah ], [ %i.gl, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.al

bb.aj:                                            ; preds = %bb.af, %bb.ab, %bb.z
  %i.gn = phi ptr [ %.pre.i.i.i, %bb.af ], [ %i.fl, %bb.z ], [ %i.fl, %bb.ab ] ; 3 uses
  %.014.i.i.i = phi i1 [ %i.gk, %bb.af ], [ true, %bb.z ], [ false, %bb.ab ] ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.gn, null
  br i1 %.not.i.i.i.i.i.i, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.go = load ptr, ptr %i.eo, align 8, !tbaa !82
  %i.gp = ptrtoint ptr %i.go to i64
  %i.gq = ptrtoint ptr %i.gn to i64
  %i.gr = sub i64 %i.gp, %i.gq
  call void @_ZdlPvm(ptr noundef nonnull %i.gn, i64 noundef %i.gr) #22
  br label %bb.an

bb.al:                                            ; preds = %bb.ai, %bb.aa
  %.pn17.pn.i.i.i = phi { ptr, i32 } [ %.pn17.i.i.i, %bb.ai ], [ %i.fp, %bb.aa ]
  %i.gs = load ptr, ptr %1, align 8, !tbaa !81    ; 3 uses
  %.not.i.i.i20.i.i.i = icmp eq ptr %i.gs, null
  br i1 %.not.i.i.i20.i.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit21.i.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gt = load ptr, ptr %i.eo, align 8, !tbaa !82
  %i.gu = ptrtoint ptr %i.gt to i64
  %i.gv = ptrtoint ptr %i.gs to i64
  %i.gw = sub i64 %i.gu, %i.gv
  call void @_ZdlPvm(ptr noundef nonnull %i.gs, i64 noundef %i.gw) #22
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit21.i.i.i

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit21.i.i.i: ; preds = %bb.am, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %.body.i.i

bb.an:                                            ; preds = %bb.ak, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.gx = load ptr, ptr %i.c, align 8, !tbaa !174 ; 4 uses
  %i.gy = load ptr, ptr %i.a, align 8, !tbaa !173 ; 4 uses
  %i.gz = ptrtoint ptr %i.gx to i64
  %i.ha = ptrtoint ptr %i.gy to i64               ; 2 uses
  %i.hb = sub i64 %i.gz, %i.ha                    ; 3 uses
  %i.hc = shl i64 %i.hb, 30
  %i.hd = ashr i64 %i.hc, 32
  %i.he = icmp slt i64 %indvars.iv.next.i.i, %i.hd
  %i.hf = and i1 %.014.i.i.i, %i.he
  br i1 %i.hf, label %bb.y, label %._crit_edge.i.i, !llvm.loop !171

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %.backedge.i.i
  %.lcssa102.i.i = phi i64 [ %i.fc, %._crit_edge.i.i ], [ %i.ey, %.backedge.i.i ] ; 3 uses
  %.lcssa22101.i.i = phi i64 [ %i.hb, %._crit_edge.i.i ], [ %i.ex, %.backedge.i.i ] ; 4 uses
  %.lcssa26100.i.i = phi i64 [ %i.ha, %._crit_edge.i.i ], [ %i.ew, %.backedge.i.i ]
  %i.hg = phi ptr [ %i.gx, %._crit_edge.i.i ], [ %i.er, %.backedge.i.i ] ; 3 uses
  %i.hh = phi ptr [ %i.gy, %._crit_edge.i.i ], [ %i.eq, %.backedge.i.i ] ; 4 uses
  %i.hi = load ptr, ptr %i.ep, align 8, !tbaa !181
  %.not.i54.i.i = icmp eq ptr %i.hg, %i.hi
  br i1 %.not.i54.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge.thread.i.i
  store i32 %i.eu, ptr %i.hg, align 4, !tbaa !28
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hg, i64 4 ; 2 uses
  store ptr %i.hj, ptr %i.c, align 8, !tbaa !174
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i.i

bb.ap:                                            ; preds = %._crit_edge.thread.i.i
  %i.hk = icmp eq i64 %.lcssa22101.i.i, 9223372036854775804
  br i1 %i.hk, label %bb.aq, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #21
          to label %.noexc.i.i unwind label %.loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.aq
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.ap
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %.lcssa102.i.i, i64 1)
  %i.hl = add nsw i64 %.sroa.speculated.i.i.i.i.i, %.lcssa102.i.i ; 2 uses
  %i.hm = icmp ult i64 %i.hl, %.lcssa102.i.i
  %i.hn = call i64 @llvm.umin.i64(i64 %i.hl, i64 2305843009213693951)
  %i.ho = select i1 %i.hm, i64 2305843009213693951, i64 %i.hn ; 3 uses
  %.not.i.i.i55.i.i = icmp ne i64 %i.ho, 0
  call void @llvm.assume(i1 %.not.i.i.i55.i.i)
  %i.hp = shl nuw nsw i64 %i.ho, 2
  %i.hq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hp) #23
          to label %.noexc56.i.i unwind label %.loopexit.i.i ; 5 uses

.noexc56.i.i:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.hr = getelementptr inbounds i8, ptr %i.hq, i64 %.lcssa22101.i.i ; 2 uses
  store i32 %i.eu, ptr %i.hr, align 4, !tbaa !28
  %i.hs = icmp sgt i64 %.lcssa22101.i.i, 0
  br i1 %i.hs, label %bb.ar, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i

bb.ar:                                            ; preds = %.noexc56.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hq, ptr align 4 %i.hh, i64 %.lcssa22101.i.i, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.ar, %.noexc56.i.i
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 4 ; 2 uses
  %.not.i17.i.i.i.i = icmp eq ptr %i.hh, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i
  %i.hu = load ptr, ptr %i.ep, align 8, !tbaa !181
  %i.hv = ptrtoint ptr %i.hu to i64
  %i.hw = sub i64 %i.hv, %.lcssa26100.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.hh, i64 noundef %i.hw) #22
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i: ; preds = %bb.as, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i
  store ptr %i.hq, ptr %i.a, align 8, !tbaa !173
  store ptr %i.ht, ptr %i.c, align 8, !tbaa !174
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %i.ho
  store ptr %i.hx, ptr %i.ep, align 8, !tbaa !181
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i.i

_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i.i:      ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i, %bb.ao
  %i.hy = phi ptr [ %i.hq, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i ], [ %i.hh, %bb.ao ] ; 2 uses
  %i.hz = phi ptr [ %i.ht, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i ], [ %i.hj, %bb.ao ] ; 3 uses
  %i.ia = ptrtoint ptr %i.hz to i64
  %i.ib = ptrtoint ptr %i.hy to i64
  %i.ic = sub i64 %i.ia, %i.ib
  %.not.i.i17 = icmp ult i64 %i.ic, 8589934588
  %i.id = add i64 %.03660.i.i, 1                  ; 2 uses
  %i.ie = icmp ult i64 %i.id, %i.eh
  %or.cond.i.i = and i1 %i.ie, %.not.i.i17
  br i1 %or.cond.i.i, label %.backedge.i.i.backedge, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit._crit_edge.i.i

.loopexit.i.i:                                    ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp.i.i:                           ; preds = %bb.aq
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.critedge.i.i:                                    ; preds = %._crit_edge.i.i
  %.old.i.i = add i64 %.03660.i.i, 1              ; 2 uses
  %.old65.i.i = icmp ult i64 %.old.i.i, %i.eh
  br i1 %.old65.i.i, label %.backedge.i.i.backedge, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit._crit_edge.i.i

.backedge.i.i.backedge:                           ; preds = %.critedge.i.i, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i.i
  %.be = phi ptr [ %i.gy, %.critedge.i.i ], [ %i.hy, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i.i ]
  %.be121 = phi ptr [ %i.gx, %.critedge.i.i ], [ %i.hz, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i.i ]
  %.03660.i.i.be = phi i64 [ %.old.i.i, %.critedge.i.i ], [ %i.id, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i.i ]
  br label %.backedge.i.i, !llvm.loop !172

_ZNSt6vectorIiSaIiEE9push_backERKi.exit._crit_edge.i.i: ; preds = %.critedge.i.i, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i.i, %_ZNSt6vectorIiSaIiEE5clearEv.exit.i.i
  %i.if = phi ptr [ %i.ed, %_ZNSt6vectorIiSaIiEE5clearEv.exit.i.i ], [ %i.gx, %.critedge.i.i ], [ %i.hz, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i.i ]
  %.not.i.i.i57.i.i = icmp eq ptr %.sroa.0.0.i.i, null
  br i1 %.not.i.i.i57.i.i, label %_ZN2cv7barcode12_GLOBAL__N_18NMSBoxesERKSt6vectorINS_11RotatedRectESaIS3_EERKS2_IfSaIfEEffRS2_IiSaIiEEfi.exit, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit._crit_edge.i.i
  %i.ig = ptrtoint ptr %.sroa.17.0.i.i to i64
  %i.ih = sub i64 %i.ig, %i.ef
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0.i.i, i64 noundef %i.ih) #22
  %.pre56 = load ptr, ptr %i.c, align 8, !tbaa !182
  br label %_ZN2cv7barcode12_GLOBAL__N_18NMSBoxesERKSt6vectorINS_11RotatedRectESaIS3_EERKS2_IfSaIfEEffRS2_IiSaIiEEfi.exit

.body.i.i:                                        ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit21.i.i.i, %.loopexit.split-lp15.i.i, %.loopexit14.i.i
  %.sroa.0.4.i.i = phi ptr [ %.sroa.0.0.i.i, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit21.i.i.i ], [ %.sroa.0.3.ph.i.i, %.loopexit.split-lp15.i.i ], [ %.sroa.0.1.i.i, %.loopexit14.i.i ], [ %.sroa.0.0.i.i, %.loopexit.split-lp.i.i ], [ %.sroa.0.0.i.i, %.loopexit.i.i ] ; 3 uses
  %.sroa.17.4.i.i = phi ptr [ %.sroa.17.0.i.i, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit21.i.i.i ], [ %.sroa.17.3.ph.i.i, %.loopexit.split-lp15.i.i ], [ %.sroa.11.1.i.i, %.loopexit14.i.i ], [ %.sroa.17.0.i.i, %.loopexit.split-lp.i.i ], [ %.sroa.17.0.i.i, %.loopexit.i.i ]
  %.pn47.pn.i.i = phi { ptr, i32 } [ %.pn17.pn.i.i.i, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit21.i.i.i ], [ %lpad.loopexit.split-lp17.i.i, %.loopexit.split-lp15.i.i ], [ %lpad.loopexit16.i.i, %.loopexit14.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ], [ %lpad.loopexit.i.i, %.loopexit.i.i ] ; 2 uses
  %.not.i.i.i58.i.i = icmp eq ptr %.sroa.0.4.i.i, null
  br i1 %.not.i.i.i58.i.i, label %common.resume, label %bb.au

bb.au:                                            ; preds = %.body.i.i
  %i.ii = ptrtoint ptr %.sroa.17.4.i.i to i64
  %i.ij = ptrtoint ptr %.sroa.0.4.i.i to i64
  %i.ik = sub i64 %i.ii, %i.ij
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.4.i.i, i64 noundef %i.ik) #22
  br label %common.resume

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i, %.body.i.i, %bb.au, %.body
  %common.resume.op = phi { ptr, i32 } [ %.pn, %.body ], [ %.pn47.pn.i.i, %.body.i.i ], [ %.pn47.pn.i.i, %bb.au ], [ %.pn22.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  resume { ptr, i32 } %common.resume.op

_ZN2cv7barcode12_GLOBAL__N_18NMSBoxesERKSt6vectorINS_11RotatedRectESaIS3_EERKS2_IfSaIfEEffRS2_IiSaIiEEfi.exit: ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit._crit_edge.i.i, %bb.at
  %i.il = phi ptr [ %i.if, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit._crit_edge.i.i ], [ %.pre56, %bb.at ] ; 2 uses
  %i.im = load ptr, ptr %i.a, align 8, !tbaa !182 ; 2 uses
  %.not2840 = icmp eq ptr %i.im, %i.il
  br i1 %.not2840, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2cv7barcode12_GLOBAL__N_18NMSBoxesERKSt6vectorINS_11RotatedRectESaIS3_EERKS2_IfSaIfEEffRS2_IiSaIiEEfi.exit
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ir = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.is = getelementptr inbounds nuw i8, ptr %10, i64 8
  br label %bb.av

._crit_edge:                                      ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit, %_ZN2cv7barcode12_GLOBAL__N_18NMSBoxesERKSt6vectorINS_11RotatedRectESaIS3_EERKS2_IfSaIfEEffRS2_IiSaIiEEfi.exit
  %i.it = load ptr, ptr %i.e, align 8, !tbaa !183
  %i.iu = load ptr, ptr %i.g, align 8, !tbaa !183
  %i.iv = icmp ne ptr %i.it, %i.iu
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  ret i1 %i.iv

bb.av:                                            ; preds = %.lr.ph, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit
  %.sroa.025.041 = phi ptr [ %i.im, %.lr.ph ], [ %i.km, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit ] ; 2 uses
  %i.iw = load i32, ptr %.sroa.025.041, align 4, !tbaa !28
  %i.ix = sext i32 %i.iw to i64
  %i.iy = load ptr, ptr %i.bq, align 8, !tbaa !66
  %i.iz = getelementptr inbounds nuw [20 x i8], ptr %i.iy, i64 %i.ix
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %8, ptr noundef nonnull align 4 dereferenceable(20) %i.iz, i64 20, i1 false), !tbaa.struct !89
  %i.ja = load i32, ptr %i.ax, align 8, !tbaa !56
  switch i32 %i.ja, label %bb.ay [
    i32 0, label %bb.aw
    i32 1, label %bb.ax
  ]

bb.aw:                                            ; preds = %bb.av
  %i.jb = load double, ptr %i.in, align 8, !tbaa !57 ; 2 uses
  %i.jc = load <2 x float>, ptr %8, align 8, !tbaa !71
  %i.jd = fpext <2 x float> %i.jc to <2 x double>
  %i.je = insertelement <2 x double> poison, double %i.jb, i64 0
  %i.jf = shufflevector <2 x double> %i.je, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jg = fdiv <2 x double> %i.jd, %i.jf
  %i.jh = fptrunc <2 x double> %i.jg to <2 x float>
  store <2 x float> %i.jh, ptr %8, align 8, !tbaa !71
  %i.ji = fptrunc double %i.jb to float
  %i.jj = load <2 x float>, ptr %i.io, align 8, !tbaa !71
  %i.jk = insertelement <2 x float> poison, float %i.ji, i64 0
  %i.jl = shufflevector <2 x float> %i.jk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jm = fdiv <2 x float> %i.jj, %i.jl           ; 2 uses
  %i.jn = extractelement <2 x float> %i.jm, i64 1
  store float %i.jn, ptr %i.ip, align 4, !tbaa !184
  %i.jo = extractelement <2 x float> %i.jm, i64 0
  br label %.sink.split

bb.ax:                                            ; preds = %bb.av
  %i.jp = load double, ptr %i.in, align 8, !tbaa !57 ; 2 uses
  %i.jq = load <2 x float>, ptr %8, align 8, !tbaa !71
  %i.jr = fpext <2 x float> %i.jq to <2 x double>
  %i.js = insertelement <2 x double> poison, double %i.jp, i64 0
  %i.jt = shufflevector <2 x double> %i.js, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ju = fmul <2 x double> %i.jt, %i.jr
  %i.jv = fptrunc <2 x double> %i.ju to <2 x float>
  store <2 x float> %i.jv, ptr %8, align 8, !tbaa !71
  %i.jw = fptrunc double %i.jp to float           ; 2 uses
  %11 = load float, ptr %i.ip, align 4, !tbaa !184
  %12 = fmul float %11, %i.jw
  store float %12, ptr %i.ip, align 4, !tbaa !184
  %13 = load float, ptr %i.io, align 8, !tbaa !185
  %14 = fmul float %13, %i.jw
  br label %.sink.split

.sink.split:                                      ; preds = %bb.aw, %bb.ax
  %.sink = phi float [ %14, %bb.ax ], [ %i.jo, %bb.aw ]
  store float %.sink, ptr %i.io, align 8, !tbaa !185
  br label %bb.ay

bb.ay:                                            ; preds = %.sink.split, %bb.av
  call void @_ZNK2cv11RotatedRect6pointsEPNS_6Point_IfEE(ptr noundef nonnull align 4 dereferenceable(20) %8, ptr noundef nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.jx = load <2 x i64>, ptr %9, align 16, !tbaa !71
  %i.jy = load <2 x i64>, ptr %i.iq, align 16, !tbaa !71
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.jz = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #23
          to label %bb.ba unwind label %bb.az     ; 5 uses

bb.az:                                            ; preds = %bb.ay
  %i.ka = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kb = load ptr, ptr %10, align 8, !tbaa !81   ; 2 uses
  %.not.i.i4.i = icmp eq ptr %i.kb, null
  br i1 %.not.i.i4.i, label %.body, label %.body.sink.split

bb.ba:                                            ; preds = %bb.ay
  store ptr %i.jz, ptr %10, align 8, !tbaa !81
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jz, i64 32 ; 4 uses
  store ptr %i.kc, ptr %i.ir, align 8, !tbaa !82
  store <2 x i64> %i.jx, ptr %i.jz, align 4, !tbaa !71
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  store <2 x i64> %i.jy, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !71
  store ptr %i.kc, ptr %i.is, align 8, !tbaa !83
  %i.kd = load ptr, ptr %i.g, align 8, !tbaa !91  ; 6 uses
  %i.ke = load ptr, ptr %i.w, align 8, !tbaa !92
  %.not.i = icmp eq ptr %i.kd, %i.ke
  br i1 %.not.i, label %bb.bb, label %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit.thread

_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit.thread: ; preds = %bb.ba
  store ptr %i.jz, ptr %i.kd, align 8, !tbaa !81
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  store ptr %i.kc, ptr %i.kf, align 8, !tbaa !83
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kd, i64 16
  store ptr %i.kc, ptr %i.kg, align 8, !tbaa !82
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kd, i64 24
  store ptr %i.kh, ptr %i.g, align 8, !tbaa !91
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit

bb.bb:                                            ; preds = %bb.ba
  invoke void @_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr %i.kd, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit unwind label %bb.bd

_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit: ; preds = %bb.bb
  %.pr = load ptr, ptr %10, align 8, !tbaa !81    ; 3 uses
  %.not.i.i.i18 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i18, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit
  %i.ki = load ptr, ptr %i.ir, align 8, !tbaa !82
  %i.kj = ptrtoint ptr %i.ki to i64
  %i.kk = ptrtoint ptr %.pr to i64
  %i.kl = sub i64 %i.kj, %i.kk
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.kl) #22
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit:    ; preds = %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit.thread, %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  %i.km = getelementptr inbounds nuw i8, ptr %.sroa.025.041, i64 4 ; 2 uses
  %.not28 = icmp eq ptr %i.km, %i.il
  br i1 %.not28, label %._crit_edge, label %bb.av

bb.bd:                                            ; preds = %bb.bb
  %i.kn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ko = load ptr, ptr %10, align 8, !tbaa !81   ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ko, null
  br i1 %.not.i.i.i20, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.bd, %bb.az
  %.sink108 = phi ptr [ %i.kb, %bb.az ], [ %i.ko, %bb.bd ] ; 2 uses
  %.pn.ph = phi { ptr, i32 } [ %i.ka, %bb.az ], [ %i.kn, %bb.bd ]
  %i.kp = load ptr, ptr %i.ir, align 8, !tbaa !82
  %i.kq = ptrtoint ptr %i.kp to i64
  %i.kr = ptrtoint ptr %.sink108 to i64
  %i.ks = sub i64 %i.kq, %i.kr
  call void @_ZdlPvm(ptr noundef nonnull %.sink108, i64 noundef %i.ks) #22
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.bd, %bb.az
  %.pn = phi { ptr, i32 } [ %i.ka, %bb.az ], [ %i.kn, %bb.bd ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %common.resume
}

declare void @_ZNK2cv11RotatedRect6pointsEPNS_6Point_IfEE(ptr noundef nonnull align 4 dereferenceable(20), ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #3

declare void @_ZN2cv6ScharrERKNS_11_InputArrayERKNS_12_OutputArrayEiiiddi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i32 noundef, double noundef, double noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN2cv9magnitudeERKNS_11_InputArrayES2_RKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare noundef double @_ZN2cv9thresholdERKNS_11_InputArrayERKNS_12_OutputArrayEddi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), double noundef, double noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, double noundef, double noundef) local_unnamed_addr #2

declare void @_ZN2cv8integralERKNS_11_InputArrayERKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

declare void @_ZN2cv8integralERKNS_11_InputArrayERKNS_12_OutputArrayES5_ii(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZNK2cv3Mat3mulERKNS_11_InputArrayEd(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), double noundef) local_unnamed_addr #2

declare void @_ZN2cv11_InputArrayC1ERKNS_7MatExprE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(688)) unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.c) #20
  ret void
}

declare void @_ZN2cv3MatC1ENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208), i64, i32 noundef) unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #7

declare void @_ZN2cv11minAreaRectERKNS_11_InputArrayE(ptr dead_on_unwind writable sret(%"class.cv::RotatedRect") align 4, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(832) ptr @_ZN2cv7barcode21getStructuringElementEv() local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.cv::Mat_", align 8          ; 8 uses
  %i.a = alloca [2 x i32], align 4                ; 7 uses
  %i.b = alloca [9 x i8], align 1                 ; 8 uses
  %1 = alloca %"class.cv::Mat_", align 8          ; 7 uses
  %i.c = alloca [2 x i32], align 4                ; 6 uses
  %i.d = alloca [9 x i8], align 8                 ; 6 uses
  %2 = alloca %"class.cv::Mat_", align 8          ; 7 uses
  %i.e = alloca [2 x i32], align 4                ; 6 uses
  %i.f = alloca [9 x i8], align 8                 ; 6 uses
  %3 = alloca %"class.cv::Mat_", align 8          ; 6 uses
  %i.g = alloca [2 x i32], align 4                ; 6 uses
  %i.h = alloca [9 x i8], align 1                 ; 9 uses
  %i.i = load atomic i8, ptr @_ZGVZN2cv7barcode21getStructuringElementEvE18structuringElement acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.d, !prof !75

bb.b:                                             ; preds = %bb.a
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv7barcode21getStructuringElementEvE18structuringElement) #20
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 3, ptr %i.a, align 4, !tbaa !28
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 3, ptr %i.l, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i8 -1, ptr %i.b, align 1, !tbaa !27
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.m, i8 0, i64 7, i1 false)
  store i8 -1, ptr %i.n, align 1, !tbaa !27
  invoke void @_ZN2cv3MatC2IhEESt16initializer_listIiES2_IT_E(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr nonnull %i.a, i64 2, ptr nonnull %i.b, i64 9)
          to label %_ZN2cv4Mat_IhEC2ESt16initializer_listIiES2_IhE.exit unwind label %.thread

_ZN2cv4Mat_IhEC2ESt16initializer_listIiES2_IhE.exit: ; preds = %bb.c
  call void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208) @_ZZN2cv7barcode21getStructuringElementEvE18structuringElement, ptr noundef nonnull align 8 dereferenceable(208) %0) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i32 3, ptr %i.c, align 4, !tbaa !28
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 3, ptr %i.o, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store <8 x i8> <i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i8 -1, i8 0>, ptr %i.d, align 8, !tbaa !27
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i8 0, ptr %i.p, align 8, !tbaa !27
  invoke void @_ZN2cv3MatC2IhEESt16initializer_listIiES2_IT_E(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr nonnull %i.c, i64 2, ptr nonnull %i.d, i64 9)
          to label %_ZN2cv4Mat_IhEC2ESt16initializer_listIiES2_IhE.exit27 unwind label %bb.e

_ZN2cv4Mat_IhEC2ESt16initializer_listIiES2_IhE.exit27: ; preds = %_ZN2cv4Mat_IhEC2ESt16initializer_listIiES2_IhE.exit
  call void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208) getelementptr inbounds nuw (i8, ptr @_ZZN2cv7barcode21getStructuringElementEvE18structuringElement, i64 208), ptr noundef nonnull align 8 dereferenceable(208) %1) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  store i32 3, ptr %i.e, align 4, !tbaa !28
end_hunk_0
