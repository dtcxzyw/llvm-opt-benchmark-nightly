Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/phasecorr_iterative?download=true
inline.NumInlined: 221
inline.NumDeleted: 73
begin_hunk_0_@_ZN2cv23phaseCorrelateIterativeERKNS_11_InputArrayES2_ii:bb.a
  %i.mf = extractelement <2 x i1> %i.md, i64 0
  %i.mg = select i1 %or.cond1.not.i, i1 true, i1 %i.mf
  br i1 %i.mg, label %bb.ch, label %.loopexit539

bb.ch:                                            ; preds = %scalar.ph489
  %i.mh = add nsw i32 %.0290, -2
  %i.mi = icmp sgt i32 %.0290, 4
  br i1 %i.mi, label %scalar.ph489, label %.loopexit540, !llvm.loop !40

.loopexit540:                                     ; preds = %bb.ch, %middle.block506
  %i.mj = insertelement <2 x i32> poison, i32 %.val119, i64 0
  %i.mk = insertelement <2 x i32> %i.mj, i32 %.val120.fr, i64 1
  %i.ml = sitofp <2 x i32> %i.mk to <2 x double>
  %i.mm = fsub <2 x double> %i.ml, %i.kv
  br label %bb.dg

bb.ci:                                            ; preds = %bb.ao, %bb.av, %bb.au
  %i.mn = landingpad { ptr, i32 }
          cleanup
  br label %.body185

.body185:                                         ; preds = %bb.ci, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i178
  %.pn72 = phi { ptr, i32 } [ %i.ci, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i178 ], [ %i.mn, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #15
  br label %bb.dl

bb.cj:                                            ; preds = %bb.aw
  %i.mo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #15
  br label %bb.dk

bb.ck:                                            ; preds = %bb.ax
  %i.mp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #15
  br label %bb.dk

bb.cl:                                            ; preds = %bb.ay
  %i.mq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #15
  br label %bb.dk

bb.cm:                                            ; preds = %bb.az
  %i.mr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #15
  br label %bb.dk

bb.cn:                                            ; preds = %bb.ba
  %i.ms = landingpad { ptr, i32 }
          cleanup
  br label %.body192

bb.co:                                            ; preds = %.loopexit
  %i.mt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #15
  br label %.body195

bb.cp:                                            ; preds = %bb.bi
  %i.mu = landingpad { ptr, i32 }
          cleanup
  br label %.body195

bb.cq:                                            ; preds = %bb.cf, %bb.ce
  %i.mv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #15
  br label %bb.dj

.loopexit539:                                     ; preds = %scalar.ph489, %vector.early.exit
  %.0290.lcssa = phi i32 [ %i.lx, %vector.early.exit ], [ %.0290, %scalar.ph489 ] ; 9 uses
  %.lcssa423 = phi i32 [ %i.ly, %vector.early.exit ], [ %i.lz, %scalar.ph489 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #15
  %i.mw = sub nsw i32 %.val119, %.lcssa423
  %i.mx = sub nsw i32 %.val120.fr, %.lcssa423
  store i32 %i.mw, ptr %60, align 4, !tbaa !85
  %i.my = getelementptr inbounds nuw i8, ptr %60, i64 4
  store i32 %i.mx, ptr %i.my, align 4, !tbaa !86
  %i.mz = getelementptr inbounds nuw i8, ptr %60, i64 8
  store i32 %.0290.lcssa, ptr %i.mz, align 4, !tbaa !87
  %i.na = getelementptr inbounds nuw i8, ptr %60, i64 12
  store i32 %.0290.lcssa, ptr %i.na, align 4, !tbaa !88
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %59, ptr noundef nonnull align 8 dereferenceable(208) %54, ptr noundef nonnull align 4 dereferenceable(16) %60)
          to label %bb.cr unwind label %bb.cx

bb.cr:                                            ; preds = %.loopexit539
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #15
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %61) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #15
  %i.nb = getelementptr inbounds nuw i8, ptr %62, i64 16
  store i32 0, ptr %i.nb, align 8, !tbaa !60
  %i.nc = getelementptr inbounds nuw i8, ptr %62, i64 20
  store i32 0, ptr %i.nc, align 4, !tbaa !61
  store i32 16842752, ptr %62, align 8, !tbaa !59
  %i.nd = getelementptr inbounds nuw i8, ptr %62, i64 8
  store ptr %59, ptr %i.nd, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #15
  %i.ne = getelementptr inbounds nuw i8, ptr %63, i64 8
  %i.nf = getelementptr inbounds nuw i8, ptr %63, i64 16
  store i64 0, ptr %i.nf, align 8
  store i32 33619968, ptr %63, align 8, !tbaa !59
  store ptr %61, ptr %i.ne, align 8, !tbaa !47
  invoke void @_ZN2cv6resizeERKNS_11_InputArrayERKNS_12_OutputArrayENS_5Size_IiEEddi(ptr noundef nonnull align 8 dereferenceable(24) %62, ptr noundef nonnull align 8 dereferenceable(24) %63, i64 957777707231, double noundef 0.000000e+00, double noundef 0.000000e+00, i32 noundef 1)
          to label %bb.cs unwind label %bb.cy

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #15
  %i.ng = getelementptr inbounds nuw i8, ptr %61, i64 12 ; 3 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %61, i64 8 ; 2 uses
  %i.ni = load <2 x i32>, ptr %i.nh, align 8, !tbaa !58
  %i.nj = load i32, ptr %i.ng, align 4, !tbaa !64
  %i.nk = sdiv <2 x i32> %i.ni, splat (i32 2)
  %i.nl = shufflevector <2 x i32> %i.nk, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.nm = sitofp <2 x i32> %i.nl to <2 x double>  ; 2 uses
  %i.nn = sitofp i32 %i.nj to double
  %i.no = fmul nnan double %i.nn, 4.500000e-01
  %i.np = call double @llvm.floor.f64(double %i.no)
  %i.nq = fptosi double %i.np to i32              ; 2 uses
  %i.nr = icmp slt i32 %i.nq, 0
  br i1 %i.nr, label %.thread299, label %.lr.ph325

.lr.ph325:                                        ; preds = %bb.cs
  %i.ns = icmp sgt i32 %3, 0
  %i.nt = getelementptr inbounds nuw i8, ptr %65, i64 8
  %i.nu = getelementptr inbounds nuw i8, ptr %65, i64 12
  %i.nv = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.nw = getelementptr inbounds nuw i8, ptr %9, i64 20
  %i.nx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ny = getelementptr inbounds nuw i8, ptr %8, i64 8
  br i1 %i.ns, label %.lr.ph.us, label %.thread299

.lr.ph.us:                                        ; preds = %.lr.ph325, %._crit_edge.us
  %i.nz = phi i32 [ %i.pe, %._crit_edge.us ], [ %i.nq, %.lr.ph325 ] ; 2 uses
  %.027323.us = phi double [ %i.pa, %._crit_edge.us ], [ 4.500000e-01, %.lr.ph325 ]
  %i.oa = or i32 %i.nz, 1                         ; 2 uses
  %i.ob = lshr i32 %i.nz, 1                       ; 5 uses
  %i.oc = uitofp nneg i32 %i.ob to double
  %i.od = insertelement <2 x double> poison, double %i.oc, i64 0
  %i.oe = shufflevector <2 x double> %i.od, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  br label %bb.ct

bb.ct:                                            ; preds = %.lr.ph.us, %bb.cw
  %.0321.us = phi i32 [ 0, %.lr.ph.us ], [ %i.oy, %bb.cw ]
  %.sroa.0255.0320.us = phi <2 x double> [ %i.nm, %.lr.ph.us ], [ %i.ow, %bb.cw ] ; 4 uses
  %i.of = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %.sroa.0255.0320.us) ; 2 uses
  %i.og = shufflevector <2 x double> %.sroa.0255.0320.us, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.oh = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.og) ; 2 uses
  %.val117.us = load i32, ptr %i.nh, align 8
  %.val118.us = load i32, ptr %i.ng, align 4      ; 2 uses
  %i.oi = icmp slt i32 %i.of, %i.ob
  %i.oj = icmp slt i32 %i.oh, %i.ob
  %or.cond.not4.not7.i204.us = or i1 %i.oi, %i.oj
  %i.ok = add nsw i32 %i.of, %i.ob
  %.not.i205.us = icmp sge i32 %i.ok, %.val118.us
  %or.cond1.not.i206.us = select i1 %or.cond.not4.not7.i204.us, i1 true, i1 %.not.i205.us
  %i.ol = add nsw i32 %i.oh, %i.ob
  %i.om = icmp sge i32 %i.ol, %.val117.us
  %i.on = select i1 %or.cond1.not.i206.us, i1 true, i1 %i.om
  br i1 %i.on, label %._crit_edge.us, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #15
  %i.oo = fsub <2 x double> %.sroa.0255.0320.us, %i.oe
  %i.op = fptosi <2 x double> %i.oo to <2 x i32>
  store <2 x i32> %i.op, ptr %65, align 8, !tbaa !58
  store i32 %i.oa, ptr %i.nt, align 8, !tbaa !87
  store i32 %i.oa, ptr %i.nu, align 4, !tbaa !88
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %64, ptr noundef nonnull align 8 dereferenceable(208) %61, ptr noundef nonnull align 4 dereferenceable(16) %65)
          to label %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit208.us unwind label %.split.us

_ZNK2cv3MatclERKNS_5Rect_IiEE.exit208.us:         ; preds = %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  store i32 0, ptr %i.nv, align 8, !tbaa !60
  store i32 0, ptr %i.nw, align 4, !tbaa !61
  store i32 16842752, ptr %9, align 8, !tbaa !59
  store ptr %64, ptr %i.nx, align 8, !tbaa !47
  invoke void @_ZN2cv7momentsERKNS_11_InputArrayEb(ptr dead_on_unwind nonnull writable sret(%"class.cv::Moments") align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %9, i1 noundef zeroext false)
          to label %bb.cv unwind label %.split327.us

bb.cv:                                            ; preds = %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit208.us
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  %i.oq = load <1 x double>, ptr %8, align 8
  %i.or = load <2 x double>, ptr %i.ny, align 8, !tbaa !76
  %i.os = shufflevector <1 x double> %i.oq, <1 x double> poison, <2 x i32> zeroinitializer
  %i.ot = fdiv <2 x double> %i.or, %i.os          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  %i.ou = fsub <2 x double> %i.ot, %i.oe
  %.fr556 = freeze <2 x double> %i.ou             ; 2 uses
  %i.ov = call <2 x double> @llvm.round.v2f64(<2 x double> %.fr556)
  %i.ow = fadd <2 x double> %.sroa.0255.0320.us, %i.ov ; 2 uses
  %i.ox = call <2 x double> @llvm.fabs.v2f64(<2 x double> %.fr556)
  %66 = fcmp uge <2 x double> %i.ox, splat (double 5.000000e-01)
  %67 = bitcast <2 x i1> %66 to i2
  %68 = icmp eq i2 %67, 0
  br i1 %68, label %.split330.us, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %64) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #15
  %i.oy = add nuw nsw i32 %.0321.us, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.oy, %3
  br i1 %exitcond.not, label %.._crit_edge.us_crit_edge, label %bb.ct, !llvm.loop !41

.._crit_edge.us_crit_edge:                        ; preds = %bb.cw
  %.pre354 = load i32, ptr %i.ng, align 4, !tbaa !64
  br label %._crit_edge.us, !llvm.loop !41

._crit_edge.us:                                   ; preds = %bb.ct, %.._crit_edge.us_crit_edge
  %i.oz = phi i32 [ %.pre354, %.._crit_edge.us_crit_edge ], [ %.val118.us, %bb.ct ]
  %i.pa = fadd double %.027323.us, -2.500000e-02  ; 2 uses
  %i.pb = sitofp i32 %i.oz to double
  %i.pc = fmul double %i.pa, %i.pb
  %i.pd = call double @llvm.floor.f64(double %i.pc)
  %i.pe = fptosi double %i.pd to i32              ; 2 uses
  %i.pf = icmp slt i32 %i.pe, 0
  br i1 %i.pf, label %.thread299, label %.lr.ph.us, !llvm.loop !42

.split.us:                                        ; preds = %bb.cu
  %i.pg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #15
  br label %bb.cz

.split327.us:                                     ; preds = %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit208.us
  %i.ph = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %64) #15
  br label %bb.cz

bb.cx:                                            ; preds = %.loopexit539
  %i.pi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #15
  br label %bb.df

bb.cy:                                            ; preds = %bb.cr
  %i.pj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #15
  br label %.body233

bb.cz:                                            ; preds = %.split327.us, %.split.us
  %.pn94.pn.pn = phi { ptr, i32 } [ %i.ph, %.split327.us ], [ %i.pg, %.split.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #15
  br label %.body233

.split330.us:                                     ; preds = %bb.cv
  %i.pk = fsub <2 x double> %i.ow, %i.nm
  %i.pl = sitofp i32 %.0290.lcssa to double
  %i.pm = fdiv double 2.230000e+02, %i.pl
  %i.pn = load <2 x i32>, ptr %57, align 8, !tbaa !58
  %i.po = sitofp <2 x i32> %i.pn to <2 x double>
  %i.pp = fsub <2 x double> %i.po, %i.kv
  %i.pq = fadd <2 x double> %i.ot, %i.pk
  %i.pr = fsub <2 x double> %i.pq, %i.oe
  %i.ps = insertelement <2 x double> poison, double %i.pm, i64 0
  %i.pt = shufflevector <2 x double> %i.ps, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pu = fdiv <2 x double> %i.pr, %i.pt
  %i.pv = fadd <2 x double> %i.pu, %i.pp
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %64) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #15
  br label %bb.de

.thread299:                                       ; preds = %._crit_edge.us, %.lr.ph325, %bb.cs
  %i.pw = load <2 x i32>, ptr %57, align 8, !tbaa !58
  %i.px = sitofp <2 x i32> %i.pw to <2 x double>  ; 5 uses
  %i.py = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.px) ; 3 uses
  %i.pz = shufflevector <2 x double> %i.px, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.qa = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.pz) ; 3 uses
  %i.qb = load <2 x i32>, ptr %i.jp, align 8      ; 3 uses
  %invariant.smin.i = call i32 @llvm.smin.i32(i32 %i.py, i32 %i.qa) ; 2 uses
  %i.qc = call i32 @llvm.smin.i32(i32 %.0290.lcssa, i32 4)
  %i.qd = add i32 %.0290.lcssa, 1
  %i.qe = sub i32 %i.qd, %i.qc                    ; 2 uses
  %i.qf = lshr i32 %i.qe, 1
  %i.qg = add nuw i32 %i.qf, 1                    ; 2 uses
  %min.iters.check510 = icmp ult i32 %i.qe, 30
  br i1 %min.iters.check510, label %scalar.ph509.preheader, label %vector.ph511

vector.ph511:                                     ; preds = %.thread299
  %n.vec512 = and i32 %i.qg, -16                  ; 3 uses
  %i.qh = shl i32 %n.vec512, 1
  %i.qi = sub i32 %.0290.lcssa, %i.qh
  %broadcast.splatinsert513 = insertelement <16 x i32> poison, i32 %i.py, i64 0
  %broadcast.splat514 = shufflevector <16 x i32> %broadcast.splatinsert513, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert515 = insertelement <16 x i32> poison, i32 %i.qa, i64 0
  %broadcast.splat516 = shufflevector <16 x i32> %broadcast.splatinsert515, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splat518 = shufflevector <2 x i32> %i.qb, <2 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splat520 = shufflevector <2 x i32> %i.qb, <2 x i32> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert521 = insertelement <16 x i32> poison, i32 %invariant.smin.i, i64 0
  %broadcast.splat522 = shufflevector <16 x i32> %broadcast.splatinsert521, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert523 = insertelement <16 x i32> poison, i32 %.0290.lcssa, i64 0
  %broadcast.splat524 = shufflevector <16 x i32> %broadcast.splatinsert523, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction525 = add nsw <16 x i32> %broadcast.splat524, <i32 0, i32 -2, i32 -4, i32 -6, i32 -8, i32 -10, i32 -12, i32 -14, i32 -16, i32 -18, i32 -20, i32 -22, i32 -24, i32 -26, i32 -28, i32 -30>
  br label %vector.body526

vector.body526:                                   ; preds = %vector.body.interim531, %vector.ph511
  %index527 = phi i32 [ 0, %vector.ph511 ], [ %index.next529, %vector.body.interim531 ] ; 2 uses
  %vec.ind528 = phi <16 x i32> [ %induction525, %vector.ph511 ], [ %vec.ind.next530, %vector.body.interim531 ] ; 2 uses
  %i.qj = sdiv <16 x i32> %vec.ind528, splat (i32 2) ; 4 uses
  %i.qk = icmp sle <16 x i32> %i.qj, %broadcast.splat522
  %i.ql = add nsw <16 x i32> %i.qj, %broadcast.splat514
  %i.qm = icmp slt <16 x i32> %i.ql, %broadcast.splat520
  %.not551 = select <16 x i1> %i.qk, <16 x i1> %i.qm, <16 x i1> zeroinitializer
  %i.qn = add nsw <16 x i32> %i.qj, %broadcast.splat516
  %i.qo = icmp slt <16 x i32> %i.qn, %broadcast.splat518
  %.not548 = select <16 x i1> %.not551, <16 x i1> %i.qo, <16 x i1> zeroinitializer
  %i.qp = freeze <16 x i1> %.not548               ; 2 uses
  %i.qq = bitcast <16 x i1> %i.qp to i16
  %.not552 = icmp eq i16 %i.qq, 0
  br i1 %.not552, label %vector.body.interim531, label %vector.early.exit534

vector.body.interim531:                           ; preds = %vector.body526
  %vec.ind.next530 = add nsw <16 x i32> %vec.ind528, splat (i32 -32)
  %index.next529 = add nuw i32 %index527, 16      ; 2 uses
  %i.qr = icmp eq i32 %index.next529, %n.vec512
  br i1 %i.qr, label %middle.block532, label %vector.body526, !llvm.loop !43

middle.block532:                                  ; preds = %vector.body.interim531
  %cmp.n533 = icmp eq i32 %i.qg, %n.vec512
  br i1 %cmp.n533, label %.loopexit538, label %scalar.ph509.preheader

scalar.ph509.preheader:                           ; preds = %.thread299, %middle.block532
  %.0.i.ph = phi i32 [ %.0290.lcssa, %.thread299 ], [ %i.qi, %middle.block532 ]
  %i.qs = insertelement <2 x i32> poison, i32 %i.qa, i64 0
  %i.qt = insertelement <2 x i32> %i.qs, i32 %i.py, i64 1
  br label %scalar.ph509

vector.early.exit534:                             ; preds = %vector.body526
  %first.active.lane535 = call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.qp, i1 false) ; 2 uses
  %i.qu = trunc i64 %first.active.lane535 to i32
  %i.qv = add i32 %index527, %i.qu
  %i.qw = shl i32 %i.qv, 1
  %i.qx = sub i32 %.0290.lcssa, %i.qw
  %i.qy = extractelement <16 x i32> %i.qj, i64 %first.active.lane535
  br label %.loopexit537

scalar.ph509:                                     ; preds = %scalar.ph509.preheader, %bb.da
  %.0.i = phi i32 [ %i.rh, %bb.da ], [ %.0.i.ph, %scalar.ph509.preheader ] ; 4 uses
  %i.qz = sdiv i32 %.0.i, 2                       ; 3 uses
  %or.cond.not4.not7.i.i = icmp sgt i32 %i.qz, %invariant.smin.i
  %i.ra = insertelement <2 x i32> poison, i32 %i.qz, i64 0
  %i.rb = shufflevector <2 x i32> %i.ra, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.rc = add nsw <2 x i32> %i.rb, %i.qt
  %i.rd = icmp sge <2 x i32> %i.rc, %i.qb         ; 2 uses
  %i.re = extractelement <2 x i1> %i.rd, i64 1
  %or.cond1.not.i.i = select i1 %or.cond.not4.not7.i.i, i1 true, i1 %i.re
  %i.rf = extractelement <2 x i1> %i.rd, i64 0
  %i.rg = select i1 %or.cond1.not.i.i, i1 true, i1 %i.rf
  br i1 %i.rg, label %bb.da, label %.loopexit537

bb.da:                                            ; preds = %scalar.ph509
  %i.rh = add nsw i32 %.0.i, -2
  %i.ri = icmp sgt i32 %.0.i, 4
  br i1 %i.ri, label %scalar.ph509, label %.loopexit538, !llvm.loop !44

.loopexit538:                                     ; preds = %bb.da, %middle.block532
  %i.rj = fsub <2 x double> %i.px, %i.kv
  br label %bb.de

.loopexit537:                                     ; preds = %scalar.ph509, %vector.early.exit534
  %.0.i.lcssa = phi i32 [ %i.qx, %vector.early.exit534 ], [ %.0.i, %scalar.ph509 ] ; 2 uses
  %.lcssa = phi i32 [ %i.qy, %vector.early.exit534 ], [ %i.qz, %scalar.ph509 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.rk = sitofp i32 %.lcssa to double
  %i.rl = insertelement <2 x double> poison, double %i.rk, i64 0
  %i.rm = shufflevector <2 x double> %i.rl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rn = fsub <2 x double> %i.px, %i.rm
  %i.ro = fptosi <2 x double> %i.rn to <2 x i32>
  store <2 x i32> %i.ro, ptr %7, align 8, !tbaa !58
  %i.rp = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %.0.i.lcssa, ptr %i.rp, align 8, !tbaa !87
  %i.rq = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %.0.i.lcssa, ptr %i.rq, align 4, !tbaa !88
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(208) %54, ptr noundef nonnull align 4 dereferenceable(16) %7)
          to label %.noexc232 unwind label %bb.dd

.noexc232:                                        ; preds = %.loopexit537
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.rr = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.rr, align 8, !tbaa !60
  %i.rs = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 0, ptr %i.rs, align 4, !tbaa !61
  store i32 16842752, ptr %5, align 8, !tbaa !59
  %i.rt = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %6, ptr %i.rt, align 8, !tbaa !47
  invoke void @_ZN2cv7momentsERKNS_11_InputArrayEb(ptr dead_on_unwind nonnull writable sret(%"class.cv::Moments") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i1 noundef zeroext false)
          to label %bb.db unwind label %bb.dc

bb.db:                                            ; preds = %.noexc232
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
end_hunk_0
