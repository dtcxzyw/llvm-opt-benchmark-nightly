Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/lkdemo?download=true
inline.NumInlined: 323
inline.NumDeleted: 148
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@main:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #13
  br label %bb.ci

bb.ak:                                            ; preds = %bb.ah
  %i.fm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #13
  br label %bb.ci

bb.al:                                            ; preds = %bb.af
  %i.fn = load ptr, ptr %13, align 16, !tbaa !67
  %i.fo = load ptr, ptr %i.cu, align 8, !tbaa !67
  %i.fp = icmp eq ptr %i.fn, %i.fo
  br i1 %i.fp, label %bb.bo, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %24, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %25, i8 0, i64 24, i1 false)
  %i.fq = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %10)
          to label %bb.an unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.an:                                            ; preds = %bb.am
  br i1 %i.fq, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #13
  store i64 0, ptr %i.cw, align 8
  store i32 33619968, ptr %26, align 8, !tbaa !62
  store ptr %10, ptr %i.cv, align 8, !tbaa !63
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 8 dereferenceable(24) %26)
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #13
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.fr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #13
  br label %.loopexit.split-lp

bb.ar:                                            ; preds = %bb.ap, %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #13
  store i32 0, ptr %i.cx, align 8, !tbaa !64
  store i32 0, ptr %i.cy, align 4, !tbaa !65
  store i32 16842752, ptr %27, align 8, !tbaa !62
  store ptr %10, ptr %i.cz, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #13
  store i32 0, ptr %i.da, align 8, !tbaa !64
  store i32 0, ptr %i.db, align 4, !tbaa !65
  store i32 16842752, ptr %28, align 8, !tbaa !62
  store ptr %9, ptr %i.dc, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #13
  store i32 0, ptr %i.dd, align 8, !tbaa !64
  store i32 0, ptr %i.de, align 4, !tbaa !65
  %i.fs = load ptr, ptr %i.cu, align 8, !tbaa !69
  %i.ft = load ptr, ptr %13, align 16, !tbaa !70
  %i.fu = ptrtoint ptr %i.fs to i64
  %i.fv = ptrtoint ptr %i.ft to i64
  %i.fw = sub i64 %i.fu, %i.fv
  %i.fx = ashr exact i64 %i.fw, 3                 ; 2 uses
  %.not.i = icmp ugt i64 %i.fx, 2147483647
  br i1 %.not.i, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef %i.fx, i64 noundef 2147483647, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv11_InputArrayC1INS_6Point_IfEEEERKSt6vectorIT_SaIS5_EEE15__cv_check__174) #14
          to label %.noexc167 unwind label %bb.ax

.noexc167:                                        ; preds = %bb.as
  unreachable

bb.at:                                            ; preds = %bb.ar
  store i32 -2130509787, ptr %29, align 8, !tbaa !62
  store ptr %13, ptr %i.df, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #13
  store i64 0, ptr %i.di, align 8
  store i32 -2096955355, ptr %30, align 8, !tbaa !62
  store ptr %i.dg, ptr %i.dh, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #13
  store i64 0, ptr %i.dk, align 8
  store i32 -2113732608, ptr %31, align 8, !tbaa !62
  store ptr %24, ptr %i.dj, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #13
  store i64 0, ptr %i.dm, align 8
  store i32 -2113732603, ptr %32, align 8, !tbaa !62
  store ptr %25, ptr %i.dl, align 8, !tbaa !63
  store i64 85899345923, ptr %33, align 8, !tbaa !71
  store double 3.000000e-02, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !73
  invoke void @_ZN2cv20calcOpticalFlowPyrLKERKNS_11_InputArrayES2_S2_RKNS_17_InputOutputArrayERKNS_12_OutputArrayES8_NS_5Size_IiEEiNS_12TermCriteriaEid(ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef nonnull align 8 dereferenceable(24) %29, ptr noundef nonnull align 8 dereferenceable(24) %30, ptr noundef nonnull align 8 dereferenceable(24) %31, ptr noundef nonnull align 8 dereferenceable(24) %32, i64 133143986207, i32 noundef 3, ptr noundef nonnull byval(%"class.cv::TermCriteria") align 8 %33, i32 noundef 0, double noundef 1.000000e-03)
          to label %bb.au unwind label %bb.ay

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #13
  %i.fy = load ptr, ptr %i.dn, align 16, !tbaa !69 ; 3 uses
  %i.fz = load ptr, ptr %i.dg, align 8, !tbaa !70 ; 3 uses
  %.not298 = icmp eq ptr %i.fy, %i.fz
  br i1 %.not298, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.au, %bb.bd
  %i.ga = phi ptr [ %i.hf, %bb.bd ], [ %i.fz, %bb.au ] ; 5 uses
  %i.gb = phi ptr [ %i.hg, %bb.bd ], [ %i.fy, %bb.au ] ; 2 uses
  %.058291 = phi i64 [ %.159, %bb.bd ], [ 0, %bb.au ] ; 4 uses
  %.060290 = phi i64 [ %i.hh, %bb.bd ], [ 0, %bb.au ] ; 4 uses
  %i.gc = load i8, ptr @addRemovePt, align 1, !tbaa !10, !range !74, !noundef !75
  %i.gd = trunc nuw i8 %i.gc to i1
  br i1 %i.gd, label %bb.av, label %bb.ba

bb.av:                                            ; preds = %.lr.ph
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %.060290
  %i.gf = load <2 x float>, ptr %i.ge, align 4, !tbaa !12
  %i.gg = load <2 x float>, ptr @point, align 8, !tbaa !12
  %i.gh = fsub <2 x float> %i.gg, %i.gf           ; 2 uses
  %i.gi = extractelement <2 x float> %i.gh, i64 0
  %i.gj = fpext float %i.gi to double             ; 2 uses
  %i.gk = extractelement <2 x float> %i.gh, i64 1
  %i.gl = fpext float %i.gk to double             ; 2 uses
  %i.gm = fmul double %i.gl, %i.gl
  %i.gn = call double @llvm.fmuladd.f64(double %i.gj, double %i.gj, double %i.gm)
  %sqrt.i = call noundef double @llvm.sqrt.f64(double %i.gn)
  %i.go = fcmp ugt double %sqrt.i, 5.000000e+00
  br i1 %i.go, label %bb.ba, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  store i8 0, ptr @addRemovePt, align 1, !tbaa !10
  br label %bb.bd

bb.ax:                                            ; preds = %bb.as
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ay:                                            ; preds = %bb.at
  %i.gq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #13
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.pn83.pn.pn.pn = phi { ptr, i32 } [ %i.gq, %bb.ay ], [ %i.gp, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #13
  br label %.loopexit.split-lp

bb.ba:                                            ; preds = %bb.av, %.lr.ph
  %i.gr = load ptr, ptr %24, align 8, !tbaa !77
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 %.060290
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !52
  %.not = icmp eq i8 %i.gt, 0
  br i1 %.not, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %.060290 ; 3 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %.058291
  %i.gw = load i64, ptr %i.gu, align 4, !tbaa !12
  store i64 %i.gw, ptr %i.gv, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #13
  store i64 0, ptr %i.dp, align 8
  store i32 50397184, ptr %34, align 8, !tbaa !62
  store ptr %11, ptr %i.do, align 8, !tbaa !63
  %i.gx = load float, ptr %i.gu, align 4, !tbaa !79
  %i.gy = insertelement <4 x float> poison, float %i.gx, i64 0
  %i.gz = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.gy)
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gu, i64 4
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !80
  %i.hc = insertelement <4 x float> poison, float %i.hb, i64 0
  %i.hd = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.hc)
  %.sroa.2.0.insert.ext.i = zext i32 %i.hd to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.gz to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #13
  store <2 x double> <double 0.000000e+00, double 2.550000e+02>, ptr %35, align 16, !tbaa !73
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.dq, i8 0, i64 16, i1 false)
  invoke void @_ZN2cv6circleERKNS_17_InputOutputArrayENS_6Point_IiEEiRKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %34, i64 %.sroa.0.0.insert.insert.i, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(32) %35, i32 noundef -1, i32 noundef 8, i32 noundef 0)
          to label %bb.bc unwind label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.he = add i64 %.058291, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #13
  %.pre = load ptr, ptr %i.dn, align 16, !tbaa !69
  %.pre311 = load ptr, ptr %i.dg, align 8, !tbaa !70
  br label %bb.bd

bb.bd:                                            ; preds = %bb.ba, %bb.bc, %bb.aw
  %i.hf = phi ptr [ %i.ga, %bb.aw ], [ %.pre311, %bb.bc ], [ %i.ga, %bb.ba ] ; 10 uses
  %i.hg = phi ptr [ %i.gb, %bb.aw ], [ %.pre, %bb.bc ], [ %i.gb, %bb.ba ] ; 8 uses
  %.159 = phi i64 [ %.058291, %bb.aw ], [ %i.he, %bb.bc ], [ %.058291, %bb.ba ] ; 4 uses
  %i.hh = add nuw i64 %.060290, 1                 ; 2 uses
  %i.hi = ptrtoint ptr %i.hg to i64               ; 2 uses
  %i.hj = ptrtoint ptr %i.hf to i64               ; 3 uses
  %i.hk = sub i64 %i.hi, %i.hj                    ; 2 uses
  %i.hl = ashr exact i64 %i.hk, 3                 ; 8 uses
  %i.hm = icmp ult i64 %i.hh, %i.hl
  br i1 %i.hm, label %.lr.ph, label %._crit_edge, !llvm.loop !16

bb.be:                                            ; preds = %bb.bb
  %i.hn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #13
  br label %.loopexit.split-lp

._crit_edge:                                      ; preds = %bb.bd
  %.lcssa269.pre-phi = ptrtoint ptr %i.hf to i64
  %i.ho = icmp ugt i64 %.159, %i.hl
  br i1 %i.ho, label %bb.bf, label %._crit_edge.thread

bb.bf:                                            ; preds = %._crit_edge
  %.lcssa271 = ptrtoint ptr %i.hg to i64
  %i.hp = sub nuw i64 %.159, %i.hl                ; 6 uses
  %i.hq = load ptr, ptr %i.dr, align 8, !tbaa !82
  %i.hr = ptrtoint ptr %i.hq to i64
  %i.hs = sub i64 %i.hr, %.lcssa271
  %i.ht = ashr exact i64 %i.hs, 3                 ; 2 uses
  %i.hu = icmp ult i64 %i.hl, 1152921504606846976
  call void @llvm.assume(i1 %i.hu)
  %i.hv = xor i64 %i.hl, 1152921504606846975      ; 2 uses
  %i.hw = icmp ule i64 %i.ht, %i.hv
  call void @llvm.assume(i1 %i.hw)
  %.not28.i = icmp ult i64 %i.ht, %i.hp
  br i1 %.not28.i, label %bb.bg, label %_ZSt27__uninitialized_default_n_aIPN2cv6Point_IfEEmS2_ET_S4_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPN2cv6Point_IfEEmS2_ET_S4_T0_RSaIT1_E.exit.i: ; preds = %bb.bf
  %i.hx = shl nuw nsw i64 %i.hp, 3                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.hg, i8 0, i64 %i.hx, i1 false), !tbaa !12
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.hg, i64 %i.hx
  store ptr %scevgep.i.i.i.i, ptr %i.dn, align 16, !tbaa !69
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit

bb.bg:                                            ; preds = %bb.bf
  %i.hy = icmp ult i64 %i.hv, %i.hp
  br i1 %i.hy, label %bb.bh, label %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #14
          to label %.noexc224 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc224:                                        ; preds = %bb.bh
  unreachable

_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.bg
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.hl, i64 %i.hp)
  %i.hz = add nuw nsw i64 %.sroa.speculated.i.i, %i.hl
  %i.ia = call i64 @llvm.umin.i64(i64 %i.hz, i64 1152921504606846975) ; 2 uses
  %i.ib = shl nuw nsw i64 %i.ia, 3
  %i.ic = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ib) #16
          to label %.noexc225 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 7 uses

.noexc225:                                        ; preds = %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.hk ; 2 uses
  %i.ie = shl nuw nsw i64 %i.hp, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.id, i8 0, i64 %i.ie, i1 false), !tbaa !12
  %.not10.i.i.i.i = icmp eq ptr %i.hf, %i.hg
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc225
  %i.if = ptrtoaddr ptr %i.ic to i64
  %i.ig = add i64 %i.hi, -8
  %i.ih = sub i64 %i.ig, %i.hj                    ; 2 uses
  %i.ii = lshr i64 %i.ih, 3
  %i.ij = add nuw nsw i64 %i.ii, 1                ; 2 uses
  %min.iters.check403 = icmp ult i64 %i.ih, 24
  %i.ik = sub i64 %i.hj, %i.if
  %diff.check405 = icmp ugt i64 %i.ik, -32
  %or.cond = or i1 %min.iters.check403, %diff.check405
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader423, label %vector.ph406

vector.ph406:                                     ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec407 = and i64 %i.ij, 4611686018427387900  ; 3 uses
  %i.il = shl i64 %n.vec407, 3                    ; 2 uses
  %i.im = getelementptr i8, ptr %i.ic, i64 %i.il
  %i.in = getelementptr i8, ptr %i.hf, i64 %i.il
  br label %vector.body408

vector.body408:                                   ; preds = %vector.body408, %vector.ph406
  %index409 = phi i64 [ 0, %vector.ph406 ], [ %index.next414, %vector.body408 ] ; 2 uses
  %i.io = shl i64 %index409, 3                    ; 2 uses
  %next.gep410 = getelementptr i8, ptr %i.ic, i64 %i.io ; 2 uses
  %next.gep411 = getelementptr i8, ptr %i.hf, i64 %i.io ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !83)
  call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %i.ip = getelementptr i8, ptr %next.gep411, i64 16
  %wide.load412 = load <2 x i64>, ptr %next.gep411, align 4, !tbaa !12, !alias.scope !84
  %wide.load413 = load <2 x i64>, ptr %i.ip, align 4, !tbaa !12, !alias.scope !84
  %i.iq = getelementptr i8, ptr %next.gep410, i64 16
  store <2 x i64> %wide.load412, ptr %next.gep410, align 4, !tbaa !12, !alias.scope !83
  store <2 x i64> %wide.load413, ptr %i.iq, align 4, !tbaa !12, !alias.scope !83
  %index.next414 = add nuw i64 %index409, 4       ; 2 uses
  %i.ir = icmp eq i64 %index.next414, %n.vec407
  br i1 %i.ir, label %middle.block415, label %vector.body408, !llvm.loop !20

middle.block415:                                  ; preds = %vector.body408
  %cmp.n416 = icmp eq i64 %i.ij, %n.vec407
  br i1 %cmp.n416, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i.preheader423

.lr.ph.i.i.i.i.preheader423:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block415
  %.012.i.i.i.i.ph = phi ptr [ %i.ic, %.lr.ph.i.i.i.i.preheader ], [ %i.im, %middle.block415 ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.hf, %.lr.ph.i.i.i.i.preheader ], [ %i.in, %middle.block415 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader423, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.iu, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader423 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.it, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader423 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !83)
  call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %i.is = load i64, ptr %.0911.i.i.i.i, align 4, !tbaa !12, !alias.scope !84
  store i64 %i.is, ptr %.012.i.i.i.i, align 4, !tbaa !12, !alias.scope !83
  %i.it = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i223 = icmp eq ptr %i.it, %i.hg
  br i1 %.not.i.i.i.i223, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !21

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block415, %.noexc225
  %.not.i36.i = icmp eq ptr %i.hf, null
  br i1 %.not.i36.i, label %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE13_M_deallocateEPS2_m.exit37.i, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  %i.iv = load ptr, ptr %i.dr, align 8, !tbaa !82
  %i.iw = ptrtoint ptr %i.iv to i64
  %i.ix = sub i64 %i.iw, %.lcssa269.pre-phi
  call void @_ZdlPvm(ptr noundef nonnull %i.hf, i64 noundef %i.ix) #15
  br label %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE13_M_deallocateEPS2_m.exit37.i

_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE13_M_deallocateEPS2_m.exit37.i: ; preds = %bb.bi, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  store ptr %i.ic, ptr %i.dg, align 8, !tbaa !70
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %i.hp
  store ptr %i.iy, ptr %i.dn, align 16, !tbaa !69
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %i.ia
  store ptr %i.iz, ptr %i.dr, align 8, !tbaa !82
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit

._crit_edge.thread:                               ; preds = %bb.au, %._crit_edge
  %.lcssa372 = phi i64 [ %i.hl, %._crit_edge ], [ 0, %bb.au ]
  %.lcssa273371 = phi ptr [ %i.hf, %._crit_edge ], [ %i.fz, %bb.au ]
  %.lcssa275370 = phi ptr [ %i.hg, %._crit_edge ], [ %i.fy, %bb.au ]
  %.058.lcssa369 = phi i64 [ %.159, %._crit_edge ], [ 0, %bb.au ] ; 2 uses
  %i.ja = icmp ult i64 %.058.lcssa369, %.lcssa372
  br i1 %i.ja, label %bb.bj, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit

bb.bj:                                            ; preds = %._crit_edge.thread
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %.lcssa273371, i64 %.058.lcssa369 ; 2 uses
  %.not.i.i = icmp eq ptr %.lcssa275370, %i.jb
  br i1 %.not.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit, label %_ZSt8_DestroyIPN2cv6Point_IfEES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv6Point_IfEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.bj
  store ptr %i.jb, ptr %i.dn, align 16, !tbaa !69
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPN2cv6Point_IfEES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.bj, %._crit_edge.thread, %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE13_M_deallocateEPS2_m.exit37.i, %_ZSt27__uninitialized_default_n_aIPN2cv6Point_IfEEmS2_ET_S4_T0_RSaIT1_E.exit.i
  %i.jc = load ptr, ptr %25, align 8, !tbaa !89   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.jc, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.bk

bb.bk:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit
  %i.jd = load ptr, ptr %i.ds, align 8, !tbaa !90
  %i.je = ptrtoint ptr %i.jd to i64
  %i.jf = ptrtoint ptr %i.jc to i64
  %i.jg = sub i64 %i.je, %i.jf
  call void @_ZdlPvm(ptr noundef nonnull %i.jc, i64 noundef %i.jg) #15
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #13
  %i.jh = load ptr, ptr %24, align 8, !tbaa !77   ; 3 uses
  %.not.i.i.i169 = icmp eq ptr %i.jh, null
  br i1 %.not.i.i.i169, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.ji = load ptr, ptr %i.dt, align 8, !tbaa !91
  %i.jj = ptrtoint ptr %i.ji to i64
  %i.jk = ptrtoint ptr %i.jh to i64
  %i.jl = sub i64 %i.jj, %i.jk
  call void @_ZdlPvm(ptr noundef nonnull %i.jh, i64 noundef %i.jl) #15
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #13
  br label %bb.bo

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i, %bb.am, %bb.bh
  %lpad.loopexit.split-lp424 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.be, %bb.az, %bb.aq
  %.pn90.pn.pn.pn = phi { ptr, i32 } [ %i.hn, %bb.be ], [ %.pn83.pn.pn.pn, %bb.az ], [ %i.fr, %bb.aq ], [ %lpad.loopexit.split-lp424, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.jm = load ptr, ptr %25, align 8, !tbaa !89   ; 3 uses
  %.not.i.i.i170 = icmp eq ptr %i.jm, null
  br i1 %.not.i.i.i170, label %_ZNSt6vectorIfSaIfEED2Ev.exit171, label %bb.bm

bb.bm:                                            ; preds = %.loopexit.split-lp
  %i.jn = load ptr, ptr %i.ds, align 8, !tbaa !90
  %i.jo = ptrtoint ptr %i.jn to i64
  %i.jp = ptrtoint ptr %i.jm to i64
  %i.jq = sub i64 %i.jo, %i.jp
  call void @_ZdlPvm(ptr noundef nonnull %i.jm, i64 noundef %i.jq) #15
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit171

_ZNSt6vectorIfSaIfEED2Ev.exit171:                 ; preds = %.loopexit.split-lp, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #13
  %i.jr = load ptr, ptr %24, align 8, !tbaa !77   ; 3 uses
  %.not.i.i.i172 = icmp eq ptr %i.jr, null
  br i1 %.not.i.i.i172, label %_ZNSt6vectorIhSaIhEED2Ev.exit173, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit171
  %i.js = load ptr, ptr %i.dt, align 8, !tbaa !91
  %i.jt = ptrtoint ptr %i.js to i64
  %i.ju = ptrtoint ptr %i.jr to i64
  %i.jv = sub i64 %i.jt, %i.ju
  call void @_ZdlPvm(ptr noundef nonnull %i.jr, i64 noundef %i.jv) #15
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit173

_ZNSt6vectorIhSaIhEED2Ev.exit173:                 ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit171, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #13
  br label %bb.ci

bb.bo:                                            ; preds = %bb.al, %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.ai
  %i.jw = load i8, ptr @addRemovePt, align 1, !tbaa !10, !range !74, !noundef !75
  %i.jx = trunc nuw i8 %i.jw to i1
  br i1 %i.jx, label %bb.bp, label %._crit_edge.i.i197

bb.bp:                                            ; preds = %bb.bo
  %i.jy = load ptr, ptr %i.dn, align 16, !tbaa !69
  %i.jz = load ptr, ptr %i.dg, align 8, !tbaa !70
  %i.ka = ptrtoint ptr %i.jy to i64
  %i.kb = ptrtoint ptr %i.jz to i64
  %i.kc = sub i64 %i.ka, %i.kb
  %i.kd = icmp ult i64 %i.kc, 4000
  br i1 %i.kd, label %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i, label %._crit_edge.i.i197

_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %36, i8 0, i64 24, i1 false)
  %i.ke = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #16
          to label %.noexc177 unwind label %.loopexit.split-lp262.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc177:                                        ; preds = %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.kf = load i64, ptr @point, align 8, !tbaa !12
  store i64 %i.kf, ptr %i.ke, align 4, !tbaa !12
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ke, i64 8 ; 2 uses
  store ptr %i.ke, ptr %36, align 8, !tbaa !70
  store ptr %i.kg, ptr %i.eh, align 8, !tbaa !69
  store ptr %i.kg, ptr %i.ei, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #13
  store i32 0, ptr %i.ej, align 8, !tbaa !64
  store i32 0, ptr %i.ek, align 4, !tbaa !65
  store i32 16842752, ptr %37, align 8, !tbaa !62
  store ptr %9, ptr %i.el, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #13
  store i64 0, ptr %i.en, align 8
  store i32 -2096955355, ptr %38, align 8, !tbaa !62
  store ptr %36, ptr %i.em, align 8, !tbaa !63
  invoke void @_ZN2cv12cornerSubPixERKNS_11_InputArrayERKNS_17_InputOutputArrayENS_5Size_IiEES7_NS_12TermCriteriaE(ptr noundef nonnull align 8 dereferenceable(24) %37, ptr noundef nonnull align 8 dereferenceable(24) %38, i64 133143986207, i64 -1, i64 85899345923, double 3.000000e-02)
          to label %bb.bq unwind label %bb.bv

bb.bq:                                            ; preds = %.noexc177
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #13
  %i.kh = load ptr, ptr %36, align 8, !tbaa !70   ; 3 uses
  %i.ki = load ptr, ptr %i.dn, align 16, !tbaa !69 ; 6 uses
  %i.kj = load ptr, ptr %i.dr, align 8, !tbaa !82
  %.not.i178 = icmp eq ptr %i.ki, %i.kj
  br i1 %.not.i178, label %bb.br, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit193.thread

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit193.thread: ; preds = %bb.bq
  %i.kk = load i64, ptr %i.kh, align 4, !tbaa !12
  store i64 %i.kk, ptr %i.ki, align 4, !tbaa !12
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  store ptr %i.kl, ptr %i.dn, align 16, !tbaa !69
  store i8 0, ptr @addRemovePt, align 1, !tbaa !10
  br label %bb.bu

bb.br:                                            ; preds = %bb.bq
  %i.km = load ptr, ptr %i.dg, align 8, !tbaa !70 ; 7 uses
  %i.kn = ptrtoint ptr %i.ki to i64               ; 2 uses
  %i.ko = ptrtoint ptr %i.km to i64               ; 4 uses
  %i.kp = sub i64 %i.kn, %i.ko                    ; 3 uses
  %i.kq = icmp eq i64 %i.kp, 9223372036854775800
  br i1 %i.kq, label %bb.bs, label %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i179

bb.bs:                                            ; preds = %bb.br
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #14
          to label %.noexc191 unwind label %.loopexit.split-lp262.loopexit.split-lp.loopexit.split-lp

.noexc191:                                        ; preds = %bb.bs
  unreachable

_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i179: ; preds = %bb.br
  %i.kr = ashr exact i64 %i.kp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i180 = call i64 @llvm.umax.i64(i64 %i.kr, i64 1)
  %i.ks = add nsw i64 %.sroa.speculated.i.i.i180, %i.kr ; 2 uses
  %i.kt = icmp ult i64 %i.ks, %i.kr
  %i.ku = call i64 @llvm.umin.i64(i64 %i.ks, i64 1152921504606846975)
  %i.kv = select i1 %i.kt, i64 1152921504606846975, i64 %i.ku ; 3 uses
  %.not.i.i.i181 = icmp ne i64 %i.kv, 0
  call void @llvm.assume(i1 %.not.i.i.i181)
  %i.kw = shl nuw nsw i64 %i.kv, 3
  %i.kx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kw) #16
          to label %.noexc192 unwind label %.loopexit.split-lp262.loopexit.split-lp.loopexit.split-lp ; 8 uses

.noexc192:                                        ; preds = %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i179
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 %i.kp
  %i.kz = load i64, ptr %i.kh, align 4, !tbaa !12
  store i64 %i.kz, ptr %i.ky, align 4, !tbaa !12
  %.not10.i.i.i.i.i182 = icmp eq ptr %i.km, %i.ki
  br i1 %.not10.i.i.i.i.i182, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i187, label %.lr.ph.i.i.i.i.i183.preheader

.lr.ph.i.i.i.i.i183.preheader:                    ; preds = %.noexc192
  %i.la = ptrtoaddr ptr %i.kx to i64
  %i.lb = add i64 %i.kn, -8
  %i.lc = sub i64 %i.lb, %i.ko                    ; 2 uses
  %i.ld = lshr i64 %i.lc, 3
  %i.le = add nuw nsw i64 %i.ld, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.lc, 24
  %i.lf = sub i64 %i.ko, %i.la
  %diff.check = icmp ugt i64 %i.lf, -32
  %or.cond421 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond421, label %.lr.ph.i.i.i.i.i183.preheader422, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i183.preheader
end_hunk_0
