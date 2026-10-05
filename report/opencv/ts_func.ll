Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/ts_func?download=true
inline.NumInlined: 3054
inline.NumDeleted: 870
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 703
loop-unroll.NumUnrolled: 777
begin_hunk_0_@_ZN6cvtest8filter2DERKN2cv3MatERS1_iS3_NS0_6Point_IiEEdiRKNS0_7Scalar_IdEE:bb.a
  %i.dl = icmp eq i64 %i.dk, 9223372036854775804
  br i1 %i.dl, label %bb.ad, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.121) #31
          to label %.noexc95 unwind label %.loopexit.split-lp

.noexc95:                                         ; preds = %bb.ad
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ac
  %i.dm = ashr exact i64 %i.dk, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dm, i64 1)
  %i.dn = add nsw i64 %.sroa.speculated.i.i.i.i, %i.dm ; 2 uses
  %i.do = icmp ult i64 %i.dn, %i.dm
  %i.dp = call i64 @llvm.umin.i64(i64 %i.dn, i64 2305843009213693951)
  %i.dq = select i1 %i.do, i64 2305843009213693951, i64 %i.dp ; 3 uses
  %.not.i.i.i.i94 = icmp ne i64 %i.dq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i94)
  %i.dr = shl nuw nsw i64 %i.dq, 2
  %i.ds = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dr) #33
          to label %.noexc96 unwind label %.loopexit315 ; 4 uses

.noexc96:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.dt = getelementptr inbounds i8, ptr %i.ds, i64 %i.dk ; 2 uses
  store i32 %i.dh, ptr %i.dt, align 4, !tbaa !27
  %i.du = icmp sgt i64 %i.dk, 0
  br i1 %i.du, label %bb.ae, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.ae:                                            ; preds = %.noexc96
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ds, ptr align 4 %.sroa.0266.1336, i64 %i.dk, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.ae, %.noexc96
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0266.1336, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0266.1336, i64 noundef %i.dk) #32
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.af, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.dq
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.ab
  %.sroa.0266.5 = phi ptr [ %i.ds, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.0266.1336, %bb.ab ] ; 2 uses
  %.pn300 = phi ptr [ %i.dt, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.15.1337, %bb.ab ]
  %.sroa.25.5 = phi ptr [ %i.dv, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.25.1338, %bb.ab ] ; 2 uses
  %.sroa.15.2 = getelementptr inbounds nuw i8, ptr %.pn300, i64 4 ; 2 uses
  %i.dw = add nuw nsw i32 %.0339, 1               ; 2 uses
  %i.dx = load i32, ptr %i.ag, align 4, !tbaa !81 ; 2 uses
  %i.dy = icmp slt i32 %i.dw, %i.dx
  br i1 %i.dy, label %bb.aa, label %._crit_edge.loopexit, !llvm.loop !1542

.loopexit315:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit258

.loopexit.split-lp:                               ; preds = %bb.ad
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit258

bb.ag:                                            ; preds = %._crit_edge346
  %i.dz = getelementptr inbounds nuw i8, ptr %10, i64 24
  %.val57 = load ptr, ptr %i.dz, align 8
  %.val58 = load i64, ptr %i.cb, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !81
  %i.ec = load i32, ptr %11, align 8, !tbaa !56
  %i.ed = lshr i32 %i.ec, 5
  %i.ee = and i32 %i.ed, 127
  %i.ef = add nuw nsw i32 %i.ee, 1
  %i.eg = mul i32 %i.ef, %i.eb                    ; 3 uses
  %i.eh = ptrtoint ptr %.sroa.0266.0.lcssa to i64
  %i.ei = sub i64 %.sroa.15.0.lcssa, %i.eh        ; 3 uses
  %i.ej = lshr i64 %i.ei, 2                       ; 3 uses
  %i.ek = trunc i64 %i.ej to i32
  %i.el = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.em = load i32, ptr %i.el, align 8, !tbaa !57 ; 4 uses
  %i.en = icmp sgt i32 %i.em, 0
  br i1 %i.en, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.ag
  %i.eo = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !58 ; 10 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %11, i64 128
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !28 ; 10 uses
  %i.es = icmp sgt i32 %i.eg, 0
  br i1 %i.es, label %.lr.ph.split.i, label %.loopexit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.et = icmp sgt i32 %i.ek, 0
  br i1 %i.et, label %.preheader.lr.ph.us.preheader.i, label %.preheader.lr.ph.preheader.i

.preheader.lr.ph.preheader.i:                     ; preds = %.lr.ph.split.i
  %i.eu = zext nneg i32 %i.eg to i64
  %i.ev = shl nuw nsw i64 %i.eu, 3                ; 9 uses
  %wide.trip.count.i = zext nneg i32 %i.em to i64 ; 2 uses
  %xtraiter562 = and i64 %wide.trip.count.i, 7    ; 3 uses
  %i.ew = icmp ult i32 %i.em, 8
  br i1 %i.ew, label %.preheader.lr.ph.i.epil.preheader, label %.preheader.lr.ph.preheader.i.new

.preheader.lr.ph.preheader.i.new:                 ; preds = %.preheader.lr.ph.preheader.i
  %unroll_iter566 = and i64 %wide.trip.count.i, 2147483640
  br label %.preheader.lr.ph.i

.preheader.lr.ph.us.preheader.i:                  ; preds = %.lr.ph.split.i
  %wide.trip.count26.i = zext nneg i32 %i.em to i64
  %wide.trip.count21.i = zext nneg i32 %i.eg to i64
  %i.ex = and i64 %i.ei, 8589934588
  %i.ey = icmp eq i64 %i.ex, 4
  %unroll_iter574 = and i64 %i.ej, 2147483646
  %i.ez = and i64 %i.ei, 4
  %lcmp.mod571.not = icmp eq i64 %i.ez, 0
  %lcmp.mod573 = trunc i64 %i.ej to i1
  br label %.preheader.lr.ph.us.i

.preheader.lr.ph.us.i:                            ; preds = %._crit_edge6.split.us.us.i, %.preheader.lr.ph.us.preheader.i
  %indvars.iv23.i = phi i64 [ 0, %.preheader.lr.ph.us.preheader.i ], [ %indvars.iv.next24.i, %._crit_edge6.split.us.us.i ] ; 3 uses
  %i.fa = mul i64 %indvars.iv23.i, %.val58
  %i.fb = getelementptr inbounds nuw i8, ptr %.val57, i64 %i.fa ; 3 uses
  %i.fc = mul i64 %indvars.iv23.i, %i.er
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.fc
  br label %.preheader.us.us.i

.preheader.us.us.i:                               ; preds = %._crit_edge.us.us.i, %.preheader.lr.ph.us.i
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %._crit_edge.us.us.i ], [ 0, %.preheader.lr.ph.us.i ] ; 3 uses
  %i.fe = trunc nuw nsw i64 %indvars.iv18.i to i32 ; 3 uses
  br i1 %i.ey, label %.epil.preheader568, label %.preheader.us.us.i.new

.preheader.us.us.i.new:                           ; preds = %.preheader.us.us.i, %.preheader.us.us.i.new
  %indvars.iv13.i = phi i64 [ %indvars.iv.next14.i.1, %.preheader.us.us.i.new ], [ 0, %.preheader.us.us.i ] ; 4 uses
  %.0273.us.us.i = phi double [ %i.fy, %.preheader.us.us.i.new ], [ 0.000000e+00, %.preheader.us.us.i ]
  %niter575 = phi i64 [ %niter575.next.1, %.preheader.us.us.i.new ], [ 0, %.preheader.us.us.i ]
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0266.0.lcssa, i64 %indvars.iv13.i
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !27
  %i.fh = add nsw i32 %i.fg, %i.fe
  %i.fi = sext i32 %i.fh to i64
  %i.fj = getelementptr inbounds i8, ptr %i.fb, i64 %i.fi
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !26
  %i.fl = uitofp i8 %i.fk to double
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv13.i
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !38
  %i.fo = call double @llvm.fmuladd.f64(double %i.fl, double %i.fn, double %.0273.us.us.i)
  %indvars.iv.next14.i = or disjoint i64 %indvars.iv13.i, 1 ; 2 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0266.0.lcssa, i64 %indvars.iv.next14.i
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !27
  %i.fr = add nsw i32 %i.fq, %i.fe
  %i.fs = sext i32 %i.fr to i64
  %i.ft = getelementptr inbounds i8, ptr %i.fb, i64 %i.fs
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !26
  %i.fv = uitofp i8 %i.fu to double
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.next14.i
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !38
  %i.fy = call double @llvm.fmuladd.f64(double %i.fv, double %i.fx, double %i.fo) ; 3 uses
  %indvars.iv.next14.i.1 = add nuw nsw i64 %indvars.iv13.i, 2 ; 2 uses
  %niter575.next.1 = add i64 %niter575, 2         ; 2 uses
  %niter575.ncmp.1 = icmp eq i64 %niter575.next.1, %unroll_iter574
  br i1 %niter575.ncmp.1, label %._crit_edge.us.us.i.unr-lcssa, label %.preheader.us.us.i.new, !llvm.loop !1543

._crit_edge.us.us.i.unr-lcssa:                    ; preds = %.preheader.us.us.i.new
  br i1 %lcmp.mod571.not, label %._crit_edge.us.us.i, label %.epil.preheader568

.epil.preheader568:                               ; preds = %._crit_edge.us.us.i.unr-lcssa, %.preheader.us.us.i
  %indvars.iv13.i.epil.init = phi i64 [ 0, %.preheader.us.us.i ], [ %indvars.iv.next14.i.1, %._crit_edge.us.us.i.unr-lcssa ] ; 2 uses
  %.0273.us.us.i.epil.init = phi double [ 0.000000e+00, %.preheader.us.us.i ], [ %i.fy, %._crit_edge.us.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod573)
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0266.0.lcssa, i64 %indvars.iv13.i.epil.init
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !27
  %i.gb = add nsw i32 %i.ga, %i.fe
  %i.gc = sext i32 %i.gb to i64
  %i.gd = getelementptr inbounds i8, ptr %i.fb, i64 %i.gc
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !26
  %i.gf = uitofp i8 %i.ge to double
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv13.i.epil.init
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !38
  %i.gi = call double @llvm.fmuladd.f64(double %i.gf, double %i.gh, double %.0273.us.us.i.epil.init)
  br label %._crit_edge.us.us.i

._crit_edge.us.us.i:                              ; preds = %._crit_edge.us.us.i.unr-lcssa, %.epil.preheader568
  %.lcssa = phi double [ %i.fy, %._crit_edge.us.us.i.unr-lcssa ], [ %i.gi, %.epil.preheader568 ]
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %indvars.iv18.i
  store double %.lcssa, ptr %i.gj, align 8, !tbaa !38
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1 ; 2 uses
  %exitcond22.not.i = icmp eq i64 %indvars.iv.next19.i, %wide.trip.count21.i
  br i1 %exitcond22.not.i, label %._crit_edge6.split.us.us.i, label %.preheader.us.us.i, !llvm.loop !1544

._crit_edge6.split.us.us.i:                       ; preds = %._crit_edge.us.us.i
  %indvars.iv.next24.i = add nuw nsw i64 %indvars.iv23.i, 1 ; 2 uses
  %exitcond27.not.i = icmp eq i64 %indvars.iv.next24.i, %wide.trip.count26.i
  br i1 %exitcond27.not.i, label %.loopexit, label %.preheader.lr.ph.us.i, !llvm.loop !1545

.preheader.lr.ph.i:                               ; preds = %.preheader.lr.ph.i, %.preheader.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.preheader.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.7, %.preheader.lr.ph.i ] ; 9 uses
  %niter567 = phi i64 [ 0, %.preheader.lr.ph.preheader.i.new ], [ %niter567.next.7, %.preheader.lr.ph.i ]
  %i.gk = mul i64 %indvars.iv.i, %i.er
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.gk
  call void @llvm.memset.p0.i64(ptr align 8 %i.gl, i8 0, i64 range(i64 0, 17179869177) %i.ev, i1 false), !tbaa !38
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1
  %i.gm = mul i64 %indvars.iv.next.i, %i.er
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.gm
  call void @llvm.memset.p0.i64(ptr align 8 %i.gn, i8 0, i64 range(i64 0, 17179869177) %i.ev, i1 false), !tbaa !38
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2
  %i.go = mul i64 %indvars.iv.next.i.1, %i.er
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.go
  call void @llvm.memset.p0.i64(ptr align 8 %i.gp, i8 0, i64 range(i64 0, 17179869177) %i.ev, i1 false), !tbaa !38
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3
  %i.gq = mul i64 %indvars.iv.next.i.2, %i.er
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.gq
  call void @llvm.memset.p0.i64(ptr align 8 %i.gr, i8 0, i64 range(i64 0, 17179869177) %i.ev, i1 false), !tbaa !38
  %indvars.iv.next.i.3 = or disjoint i64 %indvars.iv.i, 4
  %i.gs = mul i64 %indvars.iv.next.i.3, %i.er
  %i.gt = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.gs
  call void @llvm.memset.p0.i64(ptr align 8 %i.gt, i8 0, i64 range(i64 0, 17179869177) %i.ev, i1 false), !tbaa !38
  %indvars.iv.next.i.4 = or disjoint i64 %indvars.iv.i, 5
  %i.gu = mul i64 %indvars.iv.next.i.4, %i.er
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.gu
  call void @llvm.memset.p0.i64(ptr align 8 %i.gv, i8 0, i64 range(i64 0, 17179869177) %i.ev, i1 false), !tbaa !38
  %indvars.iv.next.i.5 = or disjoint i64 %indvars.iv.i, 6
  %i.gw = mul i64 %indvars.iv.next.i.5, %i.er
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.gw
  call void @llvm.memset.p0.i64(ptr align 8 %i.gx, i8 0, i64 range(i64 0, 17179869177) %i.ev, i1 false), !tbaa !38
  %indvars.iv.next.i.6 = or disjoint i64 %indvars.iv.i, 7
  %i.gy = mul i64 %indvars.iv.next.i.6, %i.er
  %i.gz = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.gy
  call void @llvm.memset.p0.i64(ptr align 8 %i.gz, i8 0, i64 range(i64 0, 17179869177) %i.ev, i1 false), !tbaa !38
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter567.next.7 = add i64 %niter567, 8         ; 2 uses
  %niter567.ncmp.7 = icmp eq i64 %niter567.next.7, %unroll_iter566
  br i1 %niter567.ncmp.7, label %.loopexit.loopexit460.unr-lcssa, label %.preheader.lr.ph.i, !llvm.loop !1545

bb.ah:                                            ; preds = %._crit_edge346
  %i.ha = getelementptr inbounds nuw i8, ptr %10, i64 24
  %.val62 = load ptr, ptr %i.ha, align 8
  %.val63 = load i64, ptr %i.cb, align 8
  %i.hb = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !81
  %i.hd = load i32, ptr %11, align 8, !tbaa !56
  %i.he = lshr i32 %i.hd, 5
  %i.hf = and i32 %i.he, 127
  %i.hg = add nuw nsw i32 %i.hf, 1
  %i.hh = mul i32 %i.hg, %i.hc                    ; 3 uses
  %i.hi = ptrtoint ptr %.sroa.0266.0.lcssa to i64
  %i.hj = sub i64 %.sroa.15.0.lcssa, %i.hi        ; 3 uses
  %i.hk = lshr i64 %i.hj, 2                       ; 3 uses
  %i.hl = trunc i64 %i.hk to i32
  %i.hm = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !57 ; 4 uses
  %i.ho = icmp sgt i32 %i.hn, 0
  br i1 %i.ho, label %.lr.ph.i97, label %.loopexit

.lr.ph.i97:                                       ; preds = %bb.ah
  %i.hp = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !58 ; 10 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %11, i64 128
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !28 ; 10 uses
  %i.ht = icmp sgt i32 %i.hh, 0
  br i1 %i.ht, label %.lr.ph.split.i98, label %.loopexit

.lr.ph.split.i98:                                 ; preds = %.lr.ph.i97
  %i.hu = icmp sgt i32 %i.hl, 0
  br i1 %i.hu, label %.preheader.lr.ph.us.preheader.i105, label %.preheader.lr.ph.preheader.i99

.preheader.lr.ph.preheader.i99:                   ; preds = %.lr.ph.split.i98
  %i.hv = zext nneg i32 %i.hh to i64
  %i.hw = shl nuw nsw i64 %i.hv, 3                ; 9 uses
  %wide.trip.count.i100 = zext nneg i32 %i.hn to i64 ; 2 uses
  %xtraiter548 = and i64 %wide.trip.count.i100, 7 ; 3 uses
  %i.hx = icmp ult i32 %i.hn, 8
  br i1 %i.hx, label %.preheader.lr.ph.i101.epil.preheader, label %.preheader.lr.ph.preheader.i99.new

.preheader.lr.ph.preheader.i99.new:               ; preds = %.preheader.lr.ph.preheader.i99
  %unroll_iter552 = and i64 %wide.trip.count.i100, 2147483640
  br label %.preheader.lr.ph.i101

.preheader.lr.ph.us.preheader.i105:               ; preds = %.lr.ph.split.i98
  %wide.trip.count26.i106 = zext nneg i32 %i.hn to i64
  %wide.trip.count21.i107 = zext nneg i32 %i.hh to i64
  %i.hy = and i64 %i.hj, 8589934588
  %i.hz = icmp eq i64 %i.hy, 4
  %unroll_iter560 = and i64 %i.hk, 2147483646
  %i.ia = and i64 %i.hj, 4
  %lcmp.mod557.not = icmp eq i64 %i.ia, 0
  %lcmp.mod559 = trunc i64 %i.hk to i1
  br label %.preheader.lr.ph.us.i109

.preheader.lr.ph.us.i109:                         ; preds = %._crit_edge6.split.us.us.i120, %.preheader.lr.ph.us.preheader.i105
  %indvars.iv23.i110 = phi i64 [ 0, %.preheader.lr.ph.us.preheader.i105 ], [ %indvars.iv.next24.i121, %._crit_edge6.split.us.us.i120 ] ; 3 uses
  %i.ib = mul i64 %indvars.iv23.i110, %.val63
  %i.ic = getelementptr inbounds nuw i8, ptr %.val62, i64 %i.ib ; 3 uses
  %i.id = mul i64 %indvars.iv23.i110, %i.hs
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.id
  br label %.preheader.us.us.i111

.preheader.us.us.i111:                            ; preds = %._crit_edge.us.us.i117, %.preheader.lr.ph.us.i109
  %indvars.iv18.i112 = phi i64 [ %indvars.iv.next19.i118, %._crit_edge.us.us.i117 ], [ 0, %.preheader.lr.ph.us.i109 ] ; 3 uses
  %i.if = trunc nuw nsw i64 %indvars.iv18.i112 to i32 ; 3 uses
  br i1 %i.hz, label %.epil.preheader554, label %.preheader.us.us.i111.new

.preheader.us.us.i111.new:                        ; preds = %.preheader.us.us.i111, %.preheader.us.us.i111.new
  %indvars.iv13.i113 = phi i64 [ %indvars.iv.next14.i115.1, %.preheader.us.us.i111.new ], [ 0, %.preheader.us.us.i111 ] ; 4 uses
  %.0273.us.us.i114 = phi double [ %i.iz, %.preheader.us.us.i111.new ], [ 0.000000e+00, %.preheader.us.us.i111 ]
  %niter561 = phi i64 [ %niter561.next.1, %.preheader.us.us.i111.new ], [ 0, %.preheader.us.us.i111 ]
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0266.0.lcssa, i64 %indvars.iv13.i113
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !27
  %i.ii = add nsw i32 %i.ih, %i.if
  %i.ij = sext i32 %i.ii to i64
  %i.ik = getelementptr inbounds i8, ptr %i.ic, i64 %i.ij
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !26
  %i.im = sitofp i8 %i.il to double
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv13.i113
  %i.io = load double, ptr %i.in, align 8, !tbaa !38
  %i.ip = call double @llvm.fmuladd.f64(double %i.im, double %i.io, double %.0273.us.us.i114)
  %indvars.iv.next14.i115 = or disjoint i64 %indvars.iv13.i113, 1 ; 2 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0266.0.lcssa, i64 %indvars.iv.next14.i115
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !27
  %i.is = add nsw i32 %i.ir, %i.if
  %i.it = sext i32 %i.is to i64
  %i.iu = getelementptr inbounds i8, ptr %i.ic, i64 %i.it
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !26
  %i.iw = sitofp i8 %i.iv to double
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.next14.i115
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !38
  %i.iz = call double @llvm.fmuladd.f64(double %i.iw, double %i.iy, double %i.ip) ; 3 uses
  %indvars.iv.next14.i115.1 = add nuw nsw i64 %indvars.iv13.i113, 2 ; 2 uses
  %niter561.next.1 = add i64 %niter561, 2         ; 2 uses
  %niter561.ncmp.1 = icmp eq i64 %niter561.next.1, %unroll_iter560
  br i1 %niter561.ncmp.1, label %._crit_edge.us.us.i117.unr-lcssa, label %.preheader.us.us.i111.new, !llvm.loop !1546

._crit_edge.us.us.i117.unr-lcssa:                 ; preds = %.preheader.us.us.i111.new
  br i1 %lcmp.mod557.not, label %._crit_edge.us.us.i117, label %.epil.preheader554

.epil.preheader554:                               ; preds = %._crit_edge.us.us.i117.unr-lcssa, %.preheader.us.us.i111
  %indvars.iv13.i113.epil.init = phi i64 [ 0, %.preheader.us.us.i111 ], [ %indvars.iv.next14.i115.1, %._crit_edge.us.us.i117.unr-lcssa ] ; 2 uses
  %.0273.us.us.i114.epil.init = phi double [ 0.000000e+00, %.preheader.us.us.i111 ], [ %i.iz, %._crit_edge.us.us.i117.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod559)
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0266.0.lcssa, i64 %indvars.iv13.i113.epil.init
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !27
  %i.jc = add nsw i32 %i.jb, %i.if
  %i.jd = sext i32 %i.jc to i64
  %i.je = getelementptr inbounds i8, ptr %i.ic, i64 %i.jd
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !26
  %i.jg = sitofp i8 %i.jf to double
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv13.i113.epil.init
  %i.ji = load double, ptr %i.jh, align 8, !tbaa !38
  %i.jj = call double @llvm.fmuladd.f64(double %i.jg, double %i.ji, double %.0273.us.us.i114.epil.init)
  br label %._crit_edge.us.us.i117

._crit_edge.us.us.i117:                           ; preds = %._crit_edge.us.us.i117.unr-lcssa, %.epil.preheader554
  %.lcssa462 = phi double [ %i.iz, %._crit_edge.us.us.i117.unr-lcssa ], [ %i.jj, %.epil.preheader554 ]
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %indvars.iv18.i112
  store double %.lcssa462, ptr %i.jk, align 8, !tbaa !38
  %indvars.iv.next19.i118 = add nuw nsw i64 %indvars.iv18.i112, 1 ; 2 uses
  %exitcond22.not.i119 = icmp eq i64 %indvars.iv.next19.i118, %wide.trip.count21.i107
  br i1 %exitcond22.not.i119, label %._crit_edge6.split.us.us.i120, label %.preheader.us.us.i111, !llvm.loop !1547

._crit_edge6.split.us.us.i120:                    ; preds = %._crit_edge.us.us.i117
  %indvars.iv.next24.i121 = add nuw nsw i64 %indvars.iv23.i110, 1 ; 2 uses
  %exitcond27.not.i122 = icmp eq i64 %indvars.iv.next24.i121, %wide.trip.count26.i106
  br i1 %exitcond27.not.i122, label %.loopexit, label %.preheader.lr.ph.us.i109, !llvm.loop !1548

.preheader.lr.ph.i101:                            ; preds = %.preheader.lr.ph.i101, %.preheader.lr.ph.preheader.i99.new
  %indvars.iv.i102 = phi i64 [ 0, %.preheader.lr.ph.preheader.i99.new ], [ %indvars.iv.next.i103.7, %.preheader.lr.ph.i101 ] ; 9 uses
  %niter553 = phi i64 [ 0, %.preheader.lr.ph.preheader.i99.new ], [ %niter553.next.7, %.preheader.lr.ph.i101 ]
  %i.jl = mul i64 %indvars.iv.i102, %i.hs
  %i.jm = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.jl
  call void @llvm.memset.p0.i64(ptr align 8 %i.jm, i8 0, i64 range(i64 0, 17179869177) %i.hw, i1 false), !tbaa !38
  %indvars.iv.next.i103 = or disjoint i64 %indvars.iv.i102, 1
  %i.jn = mul i64 %indvars.iv.next.i103, %i.hs
  %i.jo = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.jn
  call void @llvm.memset.p0.i64(ptr align 8 %i.jo, i8 0, i64 range(i64 0, 17179869177) %i.hw, i1 false), !tbaa !38
  %indvars.iv.next.i103.1 = or disjoint i64 %indvars.iv.i102, 2
  %i.jp = mul i64 %indvars.iv.next.i103.1, %i.hs
  %i.jq = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.jp
  call void @llvm.memset.p0.i64(ptr align 8 %i.jq, i8 0, i64 range(i64 0, 17179869177) %i.hw, i1 false), !tbaa !38
  %indvars.iv.next.i103.2 = or disjoint i64 %indvars.iv.i102, 3
  %i.jr = mul i64 %indvars.iv.next.i103.2, %i.hs
  %i.js = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.jr
  call void @llvm.memset.p0.i64(ptr align 8 %i.js, i8 0, i64 range(i64 0, 17179869177) %i.hw, i1 false), !tbaa !38
  %indvars.iv.next.i103.3 = or disjoint i64 %indvars.iv.i102, 4
  %i.jt = mul i64 %indvars.iv.next.i103.3, %i.hs
  %i.ju = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.jt
  call void @llvm.memset.p0.i64(ptr align 8 %i.ju, i8 0, i64 range(i64 0, 17179869177) %i.hw, i1 false), !tbaa !38
  %indvars.iv.next.i103.4 = or disjoint i64 %indvars.iv.i102, 5
  %i.jv = mul i64 %indvars.iv.next.i103.4, %i.hs
  %i.jw = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.jv
  call void @llvm.memset.p0.i64(ptr align 8 %i.jw, i8 0, i64 range(i64 0, 17179869177) %i.hw, i1 false), !tbaa !38
  %indvars.iv.next.i103.5 = or disjoint i64 %indvars.iv.i102, 6
  %i.jx = mul i64 %indvars.iv.next.i103.5, %i.hs
  %i.jy = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.jx
  call void @llvm.memset.p0.i64(ptr align 8 %i.jy, i8 0, i64 range(i64 0, 17179869177) %i.hw, i1 false), !tbaa !38
  %indvars.iv.next.i103.6 = or disjoint i64 %indvars.iv.i102, 7
  %i.jz = mul i64 %indvars.iv.next.i103.6, %i.hs
  %i.ka = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.jz
  call void @llvm.memset.p0.i64(ptr align 8 %i.ka, i8 0, i64 range(i64 0, 17179869177) %i.hw, i1 false), !tbaa !38
  %indvars.iv.next.i103.7 = add nuw nsw i64 %indvars.iv.i102, 8 ; 2 uses
  %niter553.next.7 = add i64 %niter553, 8         ; 2 uses
  %niter553.ncmp.7 = icmp eq i64 %niter553.next.7, %unroll_iter552
  br i1 %niter553.ncmp.7, label %.loopexit.loopexit463.unr-lcssa, label %.preheader.lr.ph.i101, !llvm.loop !1548

bb.ai:                                            ; preds = %._crit_edge346
  %i.kb = getelementptr inbounds nuw i8, ptr %10, i64 24
  %.val67 = load ptr, ptr %i.kb, align 8
  %.val68 = load i64, ptr %i.cb, align 8
  %i.kc = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !81
  %i.ke = load i32, ptr %11, align 8, !tbaa !56
  %i.kf = lshr i32 %i.ke, 5
  %i.kg = and i32 %i.kf, 127
  %i.kh = add nuw nsw i32 %i.kg, 1
  %i.ki = mul i32 %i.kh, %i.kd                    ; 3 uses
  %i.kj = ptrtoint ptr %.sroa.0266.0.lcssa to i64
  %i.kk = sub i64 %.sroa.15.0.lcssa, %i.kj        ; 3 uses
  %i.kl = lshr i64 %i.kk, 2                       ; 3 uses
  %i.km = trunc i64 %i.kl to i32
  %i.kn = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ko = load i32, ptr %i.kn, align 8, !tbaa !57 ; 4 uses
  %i.kp = icmp sgt i32 %i.ko, 0
  br i1 %i.kp, label %.lr.ph.i123, label %.loopexit

.lr.ph.i123:                                      ; preds = %bb.ai
  %i.kq = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !58 ; 10 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %11, i64 128
  %i.kt = load i64, ptr %i.ks, align 8, !tbaa !28 ; 10 uses
  %i.ku = icmp sgt i32 %i.ki, 0
  br i1 %i.ku, label %.lr.ph.split.i124, label %.loopexit

.lr.ph.split.i124:                                ; preds = %.lr.ph.i123
  %i.kv = icmp sgt i32 %i.km, 0
  br i1 %i.kv, label %.preheader.lr.ph.us.preheader.i131, label %.preheader.lr.ph.preheader.i125

.preheader.lr.ph.preheader.i125:                  ; preds = %.lr.ph.split.i124
  %i.kw = zext nneg i32 %i.ki to i64
  %i.kx = shl nuw nsw i64 %i.kw, 3                ; 9 uses
  %wide.trip.count.i126 = zext nneg i32 %i.ko to i64 ; 2 uses
  %xtraiter534 = and i64 %wide.trip.count.i126, 7 ; 3 uses
  %i.ky = icmp ult i32 %i.ko, 8
  br i1 %i.ky, label %.preheader.lr.ph.i127.epil.preheader, label %.preheader.lr.ph.preheader.i125.new

.preheader.lr.ph.preheader.i125.new:              ; preds = %.preheader.lr.ph.preheader.i125
  %unroll_iter538 = and i64 %wide.trip.count.i126, 2147483640
  br label %.preheader.lr.ph.i127

.preheader.lr.ph.us.preheader.i131:               ; preds = %.lr.ph.split.i124
  %wide.trip.count26.i132 = zext nneg i32 %i.ko to i64
  %wide.trip.count21.i133 = zext nneg i32 %i.ki to i64
  %i.kz = and i64 %i.kk, 8589934588
  %i.la = icmp eq i64 %i.kz, 4
  %unroll_iter546 = and i64 %i.kl, 2147483646
  %i.lb = and i64 %i.kk, 4
  %lcmp.mod543.not = icmp eq i64 %i.lb, 0
  %lcmp.mod545 = trunc i64 %i.kl to i1
  br label %.preheader.lr.ph.us.i135

.preheader.lr.ph.us.i135:                         ; preds = %._crit_edge6.split.us.us.i146, %.preheader.lr.ph.us.preheader.i131
  %indvars.iv23.i136 = phi i64 [ 0, %.preheader.lr.ph.us.preheader.i131 ], [ %indvars.iv.next24.i147, %._crit_edge6.split.us.us.i146 ] ; 3 uses
  %i.lc = mul i64 %indvars.iv23.i136, %.val68
  %i.ld = getelementptr inbounds nuw i8, ptr %.val67, i64 %i.lc ; 3 uses
  %i.le = mul i64 %indvars.iv23.i136, %i.kt
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.le
  br label %.preheader.us.us.i137

.preheader.us.us.i137:                            ; preds = %._crit_edge.us.us.i143, %.preheader.lr.ph.us.i135
  %indvars.iv18.i138 = phi i64 [ %indvars.iv.next19.i144, %._crit_edge.us.us.i143 ], [ 0, %.preheader.lr.ph.us.i135 ] ; 3 uses
  %i.lg = trunc nuw nsw i64 %indvars.iv18.i138 to i32 ; 3 uses
  br i1 %i.la, label %.epil.preheader540, label %.preheader.us.us.i137.new

.preheader.us.us.i137.new:                        ; preds = %.preheader.us.us.i137, %.preheader.us.us.i137.new
  %indvars.iv13.i139 = phi i64 [ %indvars.iv.next14.i141.1, %.preheader.us.us.i137.new ], [ 0, %.preheader.us.us.i137 ] ; 4 uses
  %.0273.us.us.i140 = phi double [ %i.ma, %.preheader.us.us.i137.new ], [ 0.000000e+00, %.preheader.us.us.i137 ]
  %niter547 = phi i64 [ %niter547.next.1, %.preheader.us.us.i137.new ], [ 0, %.preheader.us.us.i137 ]
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0266.0.lcssa, i64 %indvars.iv13.i139
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !27
  %i.lj = add nsw i32 %i.li, %i.lg
  %i.lk = sext i32 %i.lj to i64
  %i.ll = getelementptr inbounds [2 x i8], ptr %i.ld, i64 %i.lk
  %i.lm = load i16, ptr %i.ll, align 2, !tbaa !67
  %i.ln = uitofp i16 %i.lm to double
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv13.i139
  %i.lp = load double, ptr %i.lo, align 8, !tbaa !38
  %i.lq = call double @llvm.fmuladd.f64(double %i.ln, double %i.lp, double %.0273.us.us.i140)
  %indvars.iv.next14.i141 = or disjoint i64 %indvars.iv13.i139, 1 ; 2 uses
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0266.0.lcssa, i64 %indvars.iv.next14.i141
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !27
  %i.lt = add nsw i32 %i.ls, %i.lg
  %i.lu = sext i32 %i.lt to i64
  %i.lv = getelementptr inbounds [2 x i8], ptr %i.ld, i64 %i.lu
  %i.lw = load i16, ptr %i.lv, align 2, !tbaa !67
  %i.lx = uitofp i16 %i.lw to double
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.next14.i141
  %i.lz = load double, ptr %i.ly, align 8, !tbaa !38
  %i.ma = call double @llvm.fmuladd.f64(double %i.lx, double %i.lz, double %i.lq) ; 3 uses
  %indvars.iv.next14.i141.1 = add nuw nsw i64 %indvars.iv13.i139, 2 ; 2 uses
  %niter547.next.1 = add i64 %niter547, 2         ; 2 uses
  %niter547.ncmp.1 = icmp eq i64 %niter547.next.1, %unroll_iter546
  br i1 %niter547.ncmp.1, label %._crit_edge.us.us.i143.unr-lcssa, label %.preheader.us.us.i137.new, !llvm.loop !1549

._crit_edge.us.us.i143.unr-lcssa:                 ; preds = %.preheader.us.us.i137.new
  br i1 %lcmp.mod543.not, label %._crit_edge.us.us.i143, label %.epil.preheader540

.epil.preheader540:                               ; preds = %._crit_edge.us.us.i143.unr-lcssa, %.preheader.us.us.i137
  %indvars.iv13.i139.epil.init = phi i64 [ 0, %.preheader.us.us.i137 ], [ %indvars.iv.next14.i141.1, %._crit_edge.us.us.i143.unr-lcssa ] ; 2 uses
  %.0273.us.us.i140.epil.init = phi double [ 0.000000e+00, %.preheader.us.us.i137 ], [ %i.ma, %._crit_edge.us.us.i143.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod545)
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0266.0.lcssa, i64 %indvars.iv13.i139.epil.init
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !27
  %i.md = add nsw i32 %i.mc, %i.lg
  %i.me = sext i32 %i.md to i64
  %i.mf = getelementptr inbounds [2 x i8], ptr %i.ld, i64 %i.me
  %i.mg = load i16, ptr %i.mf, align 2, !tbaa !67
  %i.mh = uitofp i16 %i.mg to double
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv13.i139.epil.init
  %i.mj = load double, ptr %i.mi, align 8, !tbaa !38
  %i.mk = call double @llvm.fmuladd.f64(double %i.mh, double %i.mj, double %.0273.us.us.i140.epil.init)
  br label %._crit_edge.us.us.i143

._crit_edge.us.us.i143:                           ; preds = %._crit_edge.us.us.i143.unr-lcssa, %.epil.preheader540
  %.lcssa465 = phi double [ %i.ma, %._crit_edge.us.us.i143.unr-lcssa ], [ %i.mk, %.epil.preheader540 ]
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %indvars.iv18.i138
  store double %.lcssa465, ptr %i.ml, align 8, !tbaa !38
  %indvars.iv.next19.i144 = add nuw nsw i64 %indvars.iv18.i138, 1 ; 2 uses
  %exitcond22.not.i145 = icmp eq i64 %indvars.iv.next19.i144, %wide.trip.count21.i133
  br i1 %exitcond22.not.i145, label %._crit_edge6.split.us.us.i146, label %.preheader.us.us.i137, !llvm.loop !1550

._crit_edge6.split.us.us.i146:                    ; preds = %._crit_edge.us.us.i143
  %indvars.iv.next24.i147 = add nuw nsw i64 %indvars.iv23.i136, 1 ; 2 uses
  %exitcond27.not.i148 = icmp eq i64 %indvars.iv.next24.i147, %wide.trip.count26.i132
  br i1 %exitcond27.not.i148, label %.loopexit, label %.preheader.lr.ph.us.i135, !llvm.loop !1551

.preheader.lr.ph.i127:                            ; preds = %.preheader.lr.ph.i127, %.preheader.lr.ph.preheader.i125.new
  %indvars.iv.i128 = phi i64 [ 0, %.preheader.lr.ph.preheader.i125.new ], [ %indvars.iv.next.i129.7, %.preheader.lr.ph.i127 ] ; 9 uses
  %niter539 = phi i64 [ 0, %.preheader.lr.ph.preheader.i125.new ], [ %niter539.next.7, %.preheader.lr.ph.i127 ]
  %i.mm = mul i64 %indvars.iv.i128, %i.kt
  %i.mn = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.mm
  call void @llvm.memset.p0.i64(ptr align 8 %i.mn, i8 0, i64 range(i64 0, 17179869177) %i.kx, i1 false), !tbaa !38
  %indvars.iv.next.i129 = or disjoint i64 %indvars.iv.i128, 1
  %i.mo = mul i64 %indvars.iv.next.i129, %i.kt
  %i.mp = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.mo
  call void @llvm.memset.p0.i64(ptr align 8 %i.mp, i8 0, i64 range(i64 0, 17179869177) %i.kx, i1 false), !tbaa !38
  %indvars.iv.next.i129.1 = or disjoint i64 %indvars.iv.i128, 2
  %i.mq = mul i64 %indvars.iv.next.i129.1, %i.kt
  %i.mr = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.mq
  call void @llvm.memset.p0.i64(ptr align 8 %i.mr, i8 0, i64 range(i64 0, 17179869177) %i.kx, i1 false), !tbaa !38
  %indvars.iv.next.i129.2 = or disjoint i64 %indvars.iv.i128, 3
  %i.ms = mul i64 %indvars.iv.next.i129.2, %i.kt
  %i.mt = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.ms
  call void @llvm.memset.p0.i64(ptr align 8 %i.mt, i8 0, i64 range(i64 0, 17179869177) %i.kx, i1 false), !tbaa !38
  %indvars.iv.next.i129.3 = or disjoint i64 %indvars.iv.i128, 4
  %i.mu = mul i64 %indvars.iv.next.i129.3, %i.kt
  %i.mv = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.mu
  call void @llvm.memset.p0.i64(ptr align 8 %i.mv, i8 0, i64 range(i64 0, 17179869177) %i.kx, i1 false), !tbaa !38
  %indvars.iv.next.i129.4 = or disjoint i64 %indvars.iv.i128, 5
  %i.mw = mul i64 %indvars.iv.next.i129.4, %i.kt
  %i.mx = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.mw
  call void @llvm.memset.p0.i64(ptr align 8 %i.mx, i8 0, i64 range(i64 0, 17179869177) %i.kx, i1 false), !tbaa !38
  %indvars.iv.next.i129.5 = or disjoint i64 %indvars.iv.i128, 6
  %i.my = mul i64 %indvars.iv.next.i129.5, %i.kt
  %i.mz = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.my
  call void @llvm.memset.p0.i64(ptr align 8 %i.mz, i8 0, i64 range(i64 0, 17179869177) %i.kx, i1 false), !tbaa !38
  %indvars.iv.next.i129.6 = or disjoint i64 %indvars.iv.i128, 7
  %i.na = mul i64 %indvars.iv.next.i129.6, %i.kt
  %i.nb = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.na
  call void @llvm.memset.p0.i64(ptr align 8 %i.nb, i8 0, i64 range(i64 0, 17179869177) %i.kx, i1 false), !tbaa !38
  %indvars.iv.next.i129.7 = add nuw nsw i64 %indvars.iv.i128, 8 ; 2 uses
  %niter539.next.7 = add i64 %niter539, 8         ; 2 uses
  %niter539.ncmp.7 = icmp eq i64 %niter539.next.7, %unroll_iter538
  br i1 %niter539.ncmp.7, label %.loopexit.loopexit466.unr-lcssa, label %.preheader.lr.ph.i127, !llvm.loop !1551

bb.aj:                                            ; preds = %._crit_edge346
  %i.nc = getelementptr inbounds nuw i8, ptr %10, i64 24
  %.val72 = load ptr, ptr %i.nc, align 8
  %.val73 = load i64, ptr %i.cb, align 8
  %i.nd = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !81
  %i.nf = load i32, ptr %11, align 8, !tbaa !56
  %i.ng = lshr i32 %i.nf, 5
  %i.nh = and i32 %i.ng, 127
  %i.ni = add nuw nsw i32 %i.nh, 1
  %i.nj = mul i32 %i.ni, %i.ne                    ; 3 uses
  %i.nk = ptrtoint ptr %.sroa.0266.0.lcssa to i64
  %i.nl = sub i64 %.sroa.15.0.lcssa, %i.nk        ; 3 uses
  %i.nm = lshr i64 %i.nl, 2                       ; 3 uses
  %i.nn = trunc i64 %i.nm to i32
  %i.no = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.np = load i32, ptr %i.no, align 8, !tbaa !57 ; 4 uses
  %i.nq = icmp sgt i32 %i.np, 0
  br i1 %i.nq, label %.lr.ph.i149, label %.loopexit

.lr.ph.i149:                                      ; preds = %bb.aj
  %i.nr = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !58 ; 10 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %11, i64 128
  %i.nu = load i64, ptr %i.nt, align 8, !tbaa !28 ; 10 uses
  %i.nv = icmp sgt i32 %i.nj, 0
  br i1 %i.nv, label %.lr.ph.split.i150, label %.loopexit

.lr.ph.split.i150:                                ; preds = %.lr.ph.i149
  %i.nw = icmp sgt i32 %i.nn, 0
  br i1 %i.nw, label %.preheader.lr.ph.us.preheader.i157, label %.preheader.lr.ph.preheader.i151

.preheader.lr.ph.preheader.i151:                  ; preds = %.lr.ph.split.i150
  %i.nx = zext nneg i32 %i.nj to i64
  %i.ny = shl nuw nsw i64 %i.nx, 3                ; 9 uses
  %wide.trip.count.i152 = zext nneg i32 %i.np to i64 ; 2 uses
  %xtraiter520 = and i64 %wide.trip.count.i152, 7 ; 3 uses
  %i.nz = icmp ult i32 %i.np, 8
  br i1 %i.nz, label %.preheader.lr.ph.i153.epil.preheader, label %.preheader.lr.ph.preheader.i151.new

.preheader.lr.ph.preheader.i151.new:              ; preds = %.preheader.lr.ph.preheader.i151
  %unroll_iter524 = and i64 %wide.trip.count.i152, 2147483640
  br label %.preheader.lr.ph.i153

.preheader.lr.ph.us.preheader.i157:               ; preds = %.lr.ph.split.i150
  %wide.trip.count26.i158 = zext nneg i32 %i.np to i64
  %wide.trip.count21.i159 = zext nneg i32 %i.nj to i64
  %i.oa = and i64 %i.nl, 8589934588
  %i.ob = icmp eq i64 %i.oa, 4
  %unroll_iter532 = and i64 %i.nm, 2147483646
  %i.oc = and i64 %i.nl, 4
  %lcmp.mod529.not = icmp eq i64 %i.oc, 0
  %lcmp.mod531 = trunc i64 %i.nm to i1
  br label %.preheader.lr.ph.us.i161

.preheader.lr.ph.us.i161:                         ; preds = %._crit_edge6.split.us.us.i172, %.preheader.lr.ph.us.preheader.i157
  %indvars.iv23.i162 = phi i64 [ 0, %.preheader.lr.ph.us.preheader.i157 ], [ %indvars.iv.next24.i173, %._crit_edge6.split.us.us.i172 ] ; 3 uses
  %i.od = mul i64 %indvars.iv23.i162, %.val73
  %i.oe = getelementptr inbounds nuw i8, ptr %.val72, i64 %i.od ; 3 uses
  %i.of = mul i64 %indvars.iv23.i162, %i.nu
  %i.og = getelementptr inbounds nuw i8, ptr %i.ns, i64 %i.of
  br label %.preheader.us.us.i163

.preheader.us.us.i163:                            ; preds = %._crit_edge.us.us.i169, %.preheader.lr.ph.us.i161
  %indvars.iv18.i164 = phi i64 [ %indvars.iv.next19.i170, %._crit_edge.us.us.i169 ], [ 0, %.preheader.lr.ph.us.i161 ] ; 3 uses
  %i.oh = trunc nuw nsw i64 %indvars.iv18.i164 to i32 ; 3 uses
  br i1 %i.ob, label %.epil.preheader526, label %.preheader.us.us.i163.new

.preheader.us.us.i163.new:                        ; preds = %.preheader.us.us.i163, %.preheader.us.us.i163.new
  %indvars.iv13.i165 = phi i64 [ %indvars.iv.next14.i167.1, %.preheader.us.us.i163.new ], [ 0, %.preheader.us.us.i163 ] ; 4 uses
  %.0273.us.us.i166 = phi double [ %i.pb, %.preheader.us.us.i163.new ], [ 0.000000e+00, %.preheader.us.us.i163 ]
  %niter533 = phi i64 [ %niter533.next.1, %.preheader.us.us.i163.new ], [ 0, %.preheader.us.us.i163 ]
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0266.0.lcssa, i64 %indvars.iv13.i165
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !27
  %i.ok = add nsw i32 %i.oj, %i.oh
  %i.ol = sext i32 %i.ok to i64
  %i.om = getelementptr inbounds [2 x i8], ptr %i.oe, i64 %i.ol
  %i.on = load i16, ptr %i.om, align 2, !tbaa !67
  %i.oo = sitofp i16 %i.on to double
  %i.op = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv13.i165
  %i.oq = load double, ptr %i.op, align 8, !tbaa !38
  %i.or = call double @llvm.fmuladd.f64(double %i.oo, double %i.oq, double %.0273.us.us.i166)
  %indvars.iv.next14.i167 = or disjoint i64 %indvars.iv13.i165, 1 ; 2 uses
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0266.0.lcssa, i64 %indvars.iv.next14.i167
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !27
  %i.ou = add nsw i32 %i.ot, %i.oh
  %i.ov = sext i32 %i.ou to i64
  %i.ow = getelementptr inbounds [2 x i8], ptr %i.oe, i64 %i.ov
  %i.ox = load i16, ptr %i.ow, align 2, !tbaa !67
  %i.oy = sitofp i16 %i.ox to double
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.next14.i167
  %i.pa = load double, ptr %i.oz, align 8, !tbaa !38
  %i.pb = call double @llvm.fmuladd.f64(double %i.oy, double %i.pa, double %i.or) ; 3 uses
  %indvars.iv.next14.i167.1 = add nuw nsw i64 %indvars.iv13.i165, 2 ; 2 uses
  %niter533.next.1 = add i64 %niter533, 2         ; 2 uses
  %niter533.ncmp.1 = icmp eq i64 %niter533.next.1, %unroll_iter532
  br i1 %niter533.ncmp.1, label %._crit_edge.us.us.i169.unr-lcssa, label %.preheader.us.us.i163.new, !llvm.loop !1552

._crit_edge.us.us.i169.unr-lcssa:                 ; preds = %.preheader.us.us.i163.new
  br i1 %lcmp.mod529.not, label %._crit_edge.us.us.i169, label %.epil.preheader526

.epil.preheader526:                               ; preds = %._crit_edge.us.us.i169.unr-lcssa, %.preheader.us.us.i163
  %indvars.iv13.i165.epil.init = phi i64 [ 0, %.preheader.us.us.i163 ], [ %indvars.iv.next14.i167.1, %._crit_edge.us.us.i169.unr-lcssa ] ; 2 uses
  %.0273.us.us.i166.epil.init = phi double [ 0.000000e+00, %.preheader.us.us.i163 ], [ %i.pb, %._crit_edge.us.us.i169.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod531)
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0266.0.lcssa, i64 %indvars.iv13.i165.epil.init
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !27
  %i.pe = add nsw i32 %i.pd, %i.oh
  %i.pf = sext i32 %i.pe to i64
  %i.pg = getelementptr inbounds [2 x i8], ptr %i.oe, i64 %i.pf
  %i.ph = load i16, ptr %i.pg, align 2, !tbaa !67
  %i.pi = sitofp i16 %i.ph to double
  %i.pj = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv13.i165.epil.init
  %i.pk = load double, ptr %i.pj, align 8, !tbaa !38
  %i.pl = call double @llvm.fmuladd.f64(double %i.pi, double %i.pk, double %.0273.us.us.i166.epil.init)
  br label %._crit_edge.us.us.i169

._crit_edge.us.us.i169:                           ; preds = %._crit_edge.us.us.i169.unr-lcssa, %.epil.preheader526
  %.lcssa468 = phi double [ %i.pb, %._crit_edge.us.us.i169.unr-lcssa ], [ %i.pl, %.epil.preheader526 ]
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.og, i64 %indvars.iv18.i164
  store double %.lcssa468, ptr %i.pm, align 8, !tbaa !38
  %indvars.iv.next19.i170 = add nuw nsw i64 %indvars.iv18.i164, 1 ; 2 uses
  %exitcond22.not.i171 = icmp eq i64 %indvars.iv.next19.i170, %wide.trip.count21.i159
  br i1 %exitcond22.not.i171, label %._crit_edge6.split.us.us.i172, label %.preheader.us.us.i163, !llvm.loop !1553

._crit_edge6.split.us.us.i172:                    ; preds = %._crit_edge.us.us.i169
  %indvars.iv.next24.i173 = add nuw nsw i64 %indvars.iv23.i162, 1 ; 2 uses
  %exitcond27.not.i174 = icmp eq i64 %indvars.iv.next24.i173, %wide.trip.count26.i158
  br i1 %exitcond27.not.i174, label %.loopexit, label %.preheader.lr.ph.us.i161, !llvm.loop !1554

.preheader.lr.ph.i153:                            ; preds = %.preheader.lr.ph.i153, %.preheader.lr.ph.preheader.i151.new
  %indvars.iv.i154 = phi i64 [ 0, %.preheader.lr.ph.preheader.i151.new ], [ %indvars.iv.next.i155.7, %.preheader.lr.ph.i153 ] ; 9 uses
  %niter525 = phi i64 [ 0, %.preheader.lr.ph.preheader.i151.new ], [ %niter525.next.7, %.preheader.lr.ph.i153 ]
  %i.pn = mul i64 %indvars.iv.i154, %i.nu
  %i.po = getelementptr inbounds nuw i8, ptr %i.ns, i64 %i.pn
  call void @llvm.memset.p0.i64(ptr align 8 %i.po, i8 0, i64 range(i64 0, 17179869177) %i.ny, i1 false), !tbaa !38
  %indvars.iv.next.i155 = or disjoint i64 %indvars.iv.i154, 1
  %i.pp = mul i64 %indvars.iv.next.i155, %i.nu
  %i.pq = getelementptr inbounds nuw i8, ptr %i.ns, i64 %i.pp
  call void @llvm.memset.p0.i64(ptr align 8 %i.pq, i8 0, i64 range(i64 0, 17179869177) %i.ny, i1 false), !tbaa !38
  %indvars.iv.next.i155.1 = or disjoint i64 %indvars.iv.i154, 2
  %i.pr = mul i64 %indvars.iv.next.i155.1, %i.nu
  %i.ps = getelementptr inbounds nuw i8, ptr %i.ns, i64 %i.pr
  call void @llvm.memset.p0.i64(ptr align 8 %i.ps, i8 0, i64 range(i64 0, 17179869177) %i.ny, i1 false), !tbaa !38
  %indvars.iv.next.i155.2 = or disjoint i64 %indvars.iv.i154, 3
  %i.pt = mul i64 %indvars.iv.next.i155.2, %i.nu
  %i.pu = getelementptr inbounds nuw i8, ptr %i.ns, i64 %i.pt
  call void @llvm.memset.p0.i64(ptr align 8 %i.pu, i8 0, i64 range(i64 0, 17179869177) %i.ny, i1 false), !tbaa !38
  %indvars.iv.next.i155.3 = or disjoint i64 %indvars.iv.i154, 4
  %i.pv = mul i64 %indvars.iv.next.i155.3, %i.nu
  %i.pw = getelementptr inbounds nuw i8, ptr %i.ns, i64 %i.pv
  call void @llvm.memset.p0.i64(ptr align 8 %i.pw, i8 0, i64 range(i64 0, 17179869177) %i.ny, i1 false), !tbaa !38
  %indvars.iv.next.i155.4 = or disjoint i64 %indvars.iv.i154, 5
  %i.px = mul i64 %indvars.iv.next.i155.4, %i.nu
  %i.py = getelementptr inbounds nuw i8, ptr %i.ns, i64 %i.px
  call void @llvm.memset.p0.i64(ptr align 8 %i.py, i8 0, i64 range(i64 0, 17179869177) %i.ny, i1 false), !tbaa !38
  %indvars.iv.next.i155.5 = or disjoint i64 %indvars.iv.i154, 6
  %i.pz = mul i64 %indvars.iv.next.i155.5, %i.nu
  %i.qa = getelementptr inbounds nuw i8, ptr %i.ns, i64 %i.pz
  call void @llvm.memset.p0.i64(ptr align 8 %i.qa, i8 0, i64 range(i64 0, 17179869177) %i.ny, i1 false), !tbaa !38
  %indvars.iv.next.i155.6 = or disjoint i64 %indvars.iv.i154, 7
  %i.qb = mul i64 %indvars.iv.next.i155.6, %i.nu
  %i.qc = getelementptr inbounds nuw i8, ptr %i.ns, i64 %i.qb
  call void @llvm.memset.p0.i64(ptr align 8 %i.qc, i8 0, i64 range(i64 0, 17179869177) %i.ny, i1 false), !tbaa !38
  %indvars.iv.next.i155.7 = add nuw nsw i64 %indvars.iv.i154, 8 ; 2 uses
  %niter525.next.7 = add i64 %niter525, 8         ; 2 uses
  %niter525.ncmp.7 = icmp eq i64 %niter525.next.7, %unroll_iter524
  br i1 %niter525.ncmp.7, label %.loopexit.loopexit469.unr-lcssa, label %.preheader.lr.ph.i153, !llvm.loop !1554

bb.ak:                                            ; preds = %._crit_edge346
  %i.qd = getelementptr inbounds nuw i8, ptr %10, i64 24
  %.val77 = load ptr, ptr %i.qd, align 8
  %.val78 = load i64, ptr %i.cb, align 8
  %i.qe = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !81
  %i.qg = load i32, ptr %11, align 8, !tbaa !56
  %i.qh = lshr i32 %i.qg, 5
  %i.qi = and i32 %i.qh, 127
  %i.qj = add nuw nsw i32 %i.qi, 1
  %i.qk = mul i32 %i.qj, %i.qf                    ; 3 uses
  %i.ql = ptrtoint ptr %.sroa.0266.0.lcssa to i64
  %i.qm = sub i64 %.sroa.15.0.lcssa, %i.ql        ; 3 uses
  %i.qn = lshr i64 %i.qm, 2                       ; 3 uses
  %i.qo = trunc i64 %i.qn to i32
  %i.qp = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.qq = load i32, ptr %i.qp, align 8, !tbaa !57 ; 4 uses
  %i.qr = icmp sgt i32 %i.qq, 0
  br i1 %i.qr, label %.lr.ph.i175, label %.loopexit

.lr.ph.i175:                                      ; preds = %bb.ak
  %i.qs = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !58 ; 10 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %11, i64 128
  %i.qv = load i64, ptr %i.qu, align 8, !tbaa !28 ; 10 uses
  %i.qw = icmp sgt i32 %i.qk, 0
  br i1 %i.qw, label %.lr.ph.split.i176, label %.loopexit

.lr.ph.split.i176:                                ; preds = %.lr.ph.i175
  %i.qx = icmp sgt i32 %i.qo, 0
  br i1 %i.qx, label %.preheader.lr.ph.us.preheader.i183, label %.preheader.lr.ph.preheader.i177

.preheader.lr.ph.preheader.i177:                  ; preds = %.lr.ph.split.i176
  %i.qy = zext nneg i32 %i.qk to i64
  %i.qz = shl nuw nsw i64 %i.qy, 3                ; 9 uses
  %wide.trip.count.i178 = zext nneg i32 %i.qq to i64 ; 2 uses
  %xtraiter506 = and i64 %wide.trip.count.i178, 7 ; 3 uses
  %i.ra = icmp ult i32 %i.qq, 8
  br i1 %i.ra, label %.preheader.lr.ph.i179.epil.preheader, label %.preheader.lr.ph.preheader.i177.new

.preheader.lr.ph.preheader.i177.new:              ; preds = %.preheader.lr.ph.preheader.i177
  %unroll_iter510 = and i64 %wide.trip.count.i178, 2147483640
  br label %.preheader.lr.ph.i179

.preheader.lr.ph.us.preheader.i183:               ; preds = %.lr.ph.split.i176
  %wide.trip.count26.i184 = zext nneg i32 %i.qq to i64
  %wide.trip.count21.i185 = zext nneg i32 %i.qk to i64
  %i.rb = and i64 %i.qm, 8589934588
  %i.rc = icmp eq i64 %i.rb, 4
  %unroll_iter518 = and i64 %i.qn, 2147483646
  %i.rd = and i64 %i.qm, 4
  %lcmp.mod515.not = icmp eq i64 %i.rd, 0
  %lcmp.mod517 = trunc i64 %i.qn to i1
  br label %.preheader.lr.ph.us.i187

.preheader.lr.ph.us.i187:                         ; preds = %._crit_edge6.split.us.us.i198, %.preheader.lr.ph.us.preheader.i183
  %indvars.iv23.i188 = phi i64 [ 0, %.preheader.lr.ph.us.preheader.i183 ], [ %indvars.iv.next24.i199, %._crit_edge6.split.us.us.i198 ] ; 3 uses
  %i.re = mul i64 %indvars.iv23.i188, %.val78
  %i.rf = getelementptr inbounds nuw i8, ptr %.val77, i64 %i.re ; 3 uses
  %i.rg = mul i64 %indvars.iv23.i188, %i.qv
  %i.rh = getelementptr inbounds nuw i8, ptr %i.qt, i64 %i.rg
  br label %.preheader.us.us.i189

.preheader.us.us.i189:                            ; preds = %._crit_edge.us.us.i195, %.preheader.lr.ph.us.i187
  %indvars.iv18.i190 = phi i64 [ %indvars.iv.next19.i196, %._crit_edge.us.us.i195 ], [ 0, %.preheader.lr.ph.us.i187 ] ; 3 uses
  %i.ri = trunc nuw nsw i64 %indvars.iv18.i190 to i32 ; 3 uses
  br i1 %i.rc, label %.epil.preheader512, label %.preheader.us.us.i189.new

.preheader.us.us.i189.new:                        ; preds = %.preheader.us.us.i189, %.preheader.us.us.i189.new
  %indvars.iv13.i191 = phi i64 [ %indvars.iv.next14.i193.1, %.preheader.us.us.i189.new ], [ 0, %.preheader.us.us.i189 ] ; 4 uses
  %.0273.us.us.i192 = phi double [ %i.sc, %.preheader.us.us.i189.new ], [ 0.000000e+00, %.preheader.us.us.i189 ]
  %niter519 = phi i64 [ %niter519.next.1, %.preheader.us.us.i189.new ], [ 0, %.preheader.us.us.i189 ]
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0266.0.lcssa, i64 %indvars.iv13.i191
  %i.rk = load i32, ptr %i.rj, align 4, !tbaa !27
  %i.rl = add nsw i32 %i.rk, %i.ri
  %i.rm = sext i32 %i.rl to i64
  %i.rn = getelementptr inbounds [4 x i8], ptr %i.rf, i64 %i.rm
  %i.ro = load i32, ptr %i.rn, align 4, !tbaa !27
  %i.rp = sitofp i32 %i.ro to double
  %i.rq = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv13.i191
  %i.rr = load double, ptr %i.rq, align 8, !tbaa !38
  %i.rs = call double @llvm.fmuladd.f64(double %i.rp, double %i.rr, double %.0273.us.us.i192)
  %indvars.iv.next14.i193 = or disjoint i64 %indvars.iv13.i191, 1 ; 2 uses
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0266.0.lcssa, i64 %indvars.iv.next14.i193
  %i.ru = load i32, ptr %i.rt, align 4, !tbaa !27
  %i.rv = add nsw i32 %i.ru, %i.ri
  %i.rw = sext i32 %i.rv to i64
  %i.rx = getelementptr inbounds [4 x i8], ptr %i.rf, i64 %i.rw
  %i.ry = load i32, ptr %i.rx, align 4, !tbaa !27
  %i.rz = sitofp i32 %i.ry to double
  %i.sa = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.next14.i193
  %i.sb = load double, ptr %i.sa, align 8, !tbaa !38
  %i.sc = call double @llvm.fmuladd.f64(double %i.rz, double %i.sb, double %i.rs) ; 3 uses
  %indvars.iv.next14.i193.1 = add nuw nsw i64 %indvars.iv13.i191, 2 ; 2 uses
  %niter519.next.1 = add i64 %niter519, 2         ; 2 uses
  %niter519.ncmp.1 = icmp eq i64 %niter519.next.1, %unroll_iter518
  br i1 %niter519.ncmp.1, label %._crit_edge.us.us.i195.unr-lcssa, label %.preheader.us.us.i189.new, !llvm.loop !1555

._crit_edge.us.us.i195.unr-lcssa:                 ; preds = %.preheader.us.us.i189.new
  br i1 %lcmp.mod515.not, label %._crit_edge.us.us.i195, label %.epil.preheader512

.epil.preheader512:                               ; preds = %._crit_edge.us.us.i195.unr-lcssa, %.preheader.us.us.i189
  %indvars.iv13.i191.epil.init = phi i64 [ 0, %.preheader.us.us.i189 ], [ %indvars.iv.next14.i193.1, %._crit_edge.us.us.i195.unr-lcssa ] ; 2 uses
  %.0273.us.us.i192.epil.init = phi double [ 0.000000e+00, %.preheader.us.us.i189 ], [ %i.sc, %._crit_edge.us.us.i195.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod517)
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0266.0.lcssa, i64 %indvars.iv13.i191.epil.init
  %i.se = load i32, ptr %i.sd, align 4, !tbaa !27
  %i.sf = add nsw i32 %i.se, %i.ri
  %i.sg = sext i32 %i.sf to i64
  %i.sh = getelementptr inbounds [4 x i8], ptr %i.rf, i64 %i.sg
  %i.si = load i32, ptr %i.sh, align 4, !tbaa !27
  %i.sj = sitofp i32 %i.si to double
  %i.sk = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv13.i191.epil.init
  %i.sl = load double, ptr %i.sk, align 8, !tbaa !38
  %i.sm = call double @llvm.fmuladd.f64(double %i.sj, double %i.sl, double %.0273.us.us.i192.epil.init)
  br label %._crit_edge.us.us.i195

._crit_edge.us.us.i195:                           ; preds = %._crit_edge.us.us.i195.unr-lcssa, %.epil.preheader512
  %.lcssa471 = phi double [ %i.sc, %._crit_edge.us.us.i195.unr-lcssa ], [ %i.sm, %.epil.preheader512 ]
  %i.sn = getelementptr inbounds nuw [8 x i8], ptr %i.rh, i64 %indvars.iv18.i190
  store double %.lcssa471, ptr %i.sn, align 8, !tbaa !38
  %indvars.iv.next19.i196 = add nuw nsw i64 %indvars.iv18.i190, 1 ; 2 uses
  %exitcond22.not.i197 = icmp eq i64 %indvars.iv.next19.i196, %wide.trip.count21.i185
  br i1 %exitcond22.not.i197, label %._crit_edge6.split.us.us.i198, label %.preheader.us.us.i189, !llvm.loop !1556

._crit_edge6.split.us.us.i198:                    ; preds = %._crit_edge.us.us.i195
  %indvars.iv.next24.i199 = add nuw nsw i64 %indvars.iv23.i188, 1 ; 2 uses
  %exitcond27.not.i200 = icmp eq i64 %indvars.iv.next24.i199, %wide.trip.count26.i184
  br i1 %exitcond27.not.i200, label %.loopexit, label %.preheader.lr.ph.us.i187, !llvm.loop !1557

.preheader.lr.ph.i179:                            ; preds = %.preheader.lr.ph.i179, %.preheader.lr.ph.preheader.i177.new
  %indvars.iv.i180 = phi i64 [ 0, %.preheader.lr.ph.preheader.i177.new ], [ %indvars.iv.next.i181.7, %.preheader.lr.ph.i179 ] ; 9 uses
  %niter511 = phi i64 [ 0, %.preheader.lr.ph.preheader.i177.new ], [ %niter511.next.7, %.preheader.lr.ph.i179 ]
  %i.so = mul i64 %indvars.iv.i180, %i.qv
  %i.sp = getelementptr inbounds nuw i8, ptr %i.qt, i64 %i.so
  call void @llvm.memset.p0.i64(ptr align 8 %i.sp, i8 0, i64 range(i64 0, 17179869177) %i.qz, i1 false), !tbaa !38
  %indvars.iv.next.i181 = or disjoint i64 %indvars.iv.i180, 1
  %i.sq = mul i64 %indvars.iv.next.i181, %i.qv
  %i.sr = getelementptr inbounds nuw i8, ptr %i.qt, i64 %i.sq
  call void @llvm.memset.p0.i64(ptr align 8 %i.sr, i8 0, i64 range(i64 0, 17179869177) %i.qz, i1 false), !tbaa !38
  %indvars.iv.next.i181.1 = or disjoint i64 %indvars.iv.i180, 2
  %i.ss = mul i64 %indvars.iv.next.i181.1, %i.qv
  %i.st = getelementptr inbounds nuw i8, ptr %i.qt, i64 %i.ss
  call void @llvm.memset.p0.i64(ptr align 8 %i.st, i8 0, i64 range(i64 0, 17179869177) %i.qz, i1 false), !tbaa !38
  %indvars.iv.next.i181.2 = or disjoint i64 %indvars.iv.i180, 3
  %i.su = mul i64 %indvars.iv.next.i181.2, %i.qv
  %i.sv = getelementptr inbounds nuw i8, ptr %i.qt, i64 %i.su
  call void @llvm.memset.p0.i64(ptr align 8 %i.sv, i8 0, i64 range(i64 0, 17179869177) %i.qz, i1 false), !tbaa !38
  %indvars.iv.next.i181.3 = or disjoint i64 %indvars.iv.i180, 4
  %i.sw = mul i64 %indvars.iv.next.i181.3, %i.qv
  %i.sx = getelementptr inbounds nuw i8, ptr %i.qt, i64 %i.sw
  call void @llvm.memset.p0.i64(ptr align 8 %i.sx, i8 0, i64 range(i64 0, 17179869177) %i.qz, i1 false), !tbaa !38
  %indvars.iv.next.i181.4 = or disjoint i64 %indvars.iv.i180, 5
  %i.sy = mul i64 %indvars.iv.next.i181.4, %i.qv
  %i.sz = getelementptr inbounds nuw i8, ptr %i.qt, i64 %i.sy
  call void @llvm.memset.p0.i64(ptr align 8 %i.sz, i8 0, i64 range(i64 0, 17179869177) %i.qz, i1 false), !tbaa !38
  %indvars.iv.next.i181.5 = or disjoint i64 %indvars.iv.i180, 6
  %i.ta = mul i64 %indvars.iv.next.i181.5, %i.qv
  %i.tb = getelementptr inbounds nuw i8, ptr %i.qt, i64 %i.ta
  call void @llvm.memset.p0.i64(ptr align 8 %i.tb, i8 0, i64 range(i64 0, 17179869177) %i.qz, i1 false), !tbaa !38
  %indvars.iv.next.i181.6 = or disjoint i64 %indvars.iv.i180, 7
  %i.tc = mul i64 %indvars.iv.next.i181.6, %i.qv
  %i.td = getelementptr inbounds nuw i8, ptr %i.qt, i64 %i.tc
  call void @llvm.memset.p0.i64(ptr align 8 %i.td, i8 0, i64 range(i64 0, 17179869177) %i.qz, i1 false), !tbaa !38
  %indvars.iv.next.i181.7 = add nuw nsw i64 %indvars.iv.i180, 8 ; 2 uses
  %niter511.next.7 = add i64 %niter511, 8         ; 2 uses
  %niter511.ncmp.7 = icmp eq i64 %niter511.next.7, %unroll_iter510
  br i1 %niter511.ncmp.7, label %.loopexit.loopexit472.unr-lcssa, label %.preheader.lr.ph.i179, !llvm.loop !1557

bb.al:                                            ; preds = %._crit_edge346
  %i.te = getelementptr inbounds nuw i8, ptr %10, i64 24
  %.val82 = load ptr, ptr %i.te, align 8
  %.val83 = load i64, ptr %i.cb, align 8
  %i.tf = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.tg = load i32, ptr %i.tf, align 4, !tbaa !81
  %i.th = load i32, ptr %11, align 8, !tbaa !56
  %i.ti = lshr i32 %i.th, 5
  %i.tj = and i32 %i.ti, 127
  %i.tk = add nuw nsw i32 %i.tj, 1
  %i.tl = mul i32 %i.tk, %i.tg                    ; 3 uses
  %i.tm = ptrtoint ptr %.sroa.0266.0.lcssa to i64
  %i.tn = sub i64 %.sroa.15.0.lcssa, %i.tm        ; 3 uses
  %i.to = lshr i64 %i.tn, 2                       ; 3 uses
  %i.tp = trunc i64 %i.to to i32
  %i.tq = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.tr = load i32, ptr %i.tq, align 8, !tbaa !57 ; 4 uses
  %i.ts = icmp sgt i32 %i.tr, 0
  br i1 %i.ts, label %.lr.ph.i201, label %.loopexit

.lr.ph.i201:                                      ; preds = %bb.al
  %i.tt = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !58 ; 10 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %11, i64 128
  %i.tw = load i64, ptr %i.tv, align 8, !tbaa !28 ; 10 uses
  %i.tx = icmp sgt i32 %i.tl, 0
  br i1 %i.tx, label %.lr.ph.split.i202, label %.loopexit

.lr.ph.split.i202:                                ; preds = %.lr.ph.i201
  %i.ty = icmp sgt i32 %i.tp, 0
  br i1 %i.ty, label %.preheader.lr.ph.us.preheader.i209, label %.preheader.lr.ph.preheader.i203

.preheader.lr.ph.preheader.i203:                  ; preds = %.lr.ph.split.i202
  %i.tz = zext nneg i32 %i.tl to i64
  %i.ua = shl nuw nsw i64 %i.tz, 3                ; 9 uses
  %wide.trip.count.i204 = zext nneg i32 %i.tr to i64 ; 2 uses
  %xtraiter492 = and i64 %wide.trip.count.i204, 7 ; 3 uses
  %i.ub = icmp ult i32 %i.tr, 8
  br i1 %i.ub, label %.preheader.lr.ph.i205.epil.preheader, label %.preheader.lr.ph.preheader.i203.new

.preheader.lr.ph.preheader.i203.new:              ; preds = %.preheader.lr.ph.preheader.i203
  %unroll_iter496 = and i64 %wide.trip.count.i204, 2147483640
  br label %.preheader.lr.ph.i205

.preheader.lr.ph.us.preheader.i209:               ; preds = %.lr.ph.split.i202
  %wide.trip.count26.i210 = zext nneg i32 %i.tr to i64
  %wide.trip.count21.i211 = zext nneg i32 %i.tl to i64
  %i.uc = and i64 %i.tn, 8589934588
  %i.ud = icmp eq i64 %i.uc, 4
  %unroll_iter504 = and i64 %i.to, 2147483646
  %i.ue = and i64 %i.tn, 4
  %lcmp.mod501.not = icmp eq i64 %i.ue, 0
  %lcmp.mod503 = trunc i64 %i.to to i1
  br label %.preheader.lr.ph.us.i213

.preheader.lr.ph.us.i213:                         ; preds = %._crit_edge6.split.us.us.i224, %.preheader.lr.ph.us.preheader.i209
  %indvars.iv23.i214 = phi i64 [ 0, %.preheader.lr.ph.us.preheader.i209 ], [ %indvars.iv.next24.i225, %._crit_edge6.split.us.us.i224 ] ; 3 uses
  %i.uf = mul i64 %indvars.iv23.i214, %.val83
  %i.ug = getelementptr inbounds nuw i8, ptr %.val82, i64 %i.uf ; 3 uses
  %i.uh = mul i64 %indvars.iv23.i214, %i.tw
  %i.ui = getelementptr inbounds nuw i8, ptr %i.tu, i64 %i.uh
  br label %.preheader.us.us.i215

.preheader.us.us.i215:                            ; preds = %._crit_edge.us.us.i221, %.preheader.lr.ph.us.i213
  %indvars.iv18.i216 = phi i64 [ %indvars.iv.next19.i222, %._crit_edge.us.us.i221 ], [ 0, %.preheader.lr.ph.us.i213 ] ; 3 uses
  %i.uj = trunc nuw nsw i64 %indvars.iv18.i216 to i32 ; 3 uses
  br i1 %i.ud, label %.epil.preheader498, label %.preheader.us.us.i215.new

.preheader.us.us.i215.new:                        ; preds = %.preheader.us.us.i215, %.preheader.us.us.i215.new
  %indvars.iv13.i217 = phi i64 [ %indvars.iv.next14.i219.1, %.preheader.us.us.i215.new ], [ 0, %.preheader.us.us.i215 ] ; 4 uses
  %.0273.us.us.i218 = phi double [ %i.vd, %.preheader.us.us.i215.new ], [ 0.000000e+00, %.preheader.us.us.i215 ]
  %niter505 = phi i64 [ %niter505.next.1, %.preheader.us.us.i215.new ], [ 0, %.preheader.us.us.i215 ]
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0266.0.lcssa, i64 %indvars.iv13.i217
  %i.ul = load i32, ptr %i.uk, align 4, !tbaa !27
  %i.um = add nsw i32 %i.ul, %i.uj
  %i.un = sext i32 %i.um to i64
  %i.uo = getelementptr inbounds [4 x i8], ptr %i.ug, i64 %i.un
  %i.up = load float, ptr %i.uo, align 4, !tbaa !70
  %i.uq = fpext float %i.up to double
  %i.ur = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv13.i217
  %i.us = load double, ptr %i.ur, align 8, !tbaa !38
  %i.ut = call double @llvm.fmuladd.f64(double %i.uq, double %i.us, double %.0273.us.us.i218)
  %indvars.iv.next14.i219 = or disjoint i64 %indvars.iv13.i217, 1 ; 2 uses
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0266.0.lcssa, i64 %indvars.iv.next14.i219
  %i.uv = load i32, ptr %i.uu, align 4, !tbaa !27
  %i.uw = add nsw i32 %i.uv, %i.uj
  %i.ux = sext i32 %i.uw to i64
  %i.uy = getelementptr inbounds [4 x i8], ptr %i.ug, i64 %i.ux
  %i.uz = load float, ptr %i.uy, align 4, !tbaa !70
  %i.va = fpext float %i.uz to double
  %i.vb = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.next14.i219
  %i.vc = load double, ptr %i.vb, align 8, !tbaa !38
  %i.vd = call double @llvm.fmuladd.f64(double %i.va, double %i.vc, double %i.ut) ; 3 uses
  %indvars.iv.next14.i219.1 = add nuw nsw i64 %indvars.iv13.i217, 2 ; 2 uses
  %niter505.next.1 = add i64 %niter505, 2         ; 2 uses
  %niter505.ncmp.1 = icmp eq i64 %niter505.next.1, %unroll_iter504
  br i1 %niter505.ncmp.1, label %._crit_edge.us.us.i221.unr-lcssa, label %.preheader.us.us.i215.new, !llvm.loop !1558

._crit_edge.us.us.i221.unr-lcssa:                 ; preds = %.preheader.us.us.i215.new
  br i1 %lcmp.mod501.not, label %._crit_edge.us.us.i221, label %.epil.preheader498

.epil.preheader498:                               ; preds = %._crit_edge.us.us.i221.unr-lcssa, %.preheader.us.us.i215
  %indvars.iv13.i217.epil.init = phi i64 [ 0, %.preheader.us.us.i215 ], [ %indvars.iv.next14.i219.1, %._crit_edge.us.us.i221.unr-lcssa ] ; 2 uses
  %.0273.us.us.i218.epil.init = phi double [ 0.000000e+00, %.preheader.us.us.i215 ], [ %i.vd, %._crit_edge.us.us.i221.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod503)
  %i.ve = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0266.0.lcssa, i64 %indvars.iv13.i217.epil.init
  %i.vf = load i32, ptr %i.ve, align 4, !tbaa !27
  %i.vg = add nsw i32 %i.vf, %i.uj
  %i.vh = sext i32 %i.vg to i64
  %i.vi = getelementptr inbounds [4 x i8], ptr %i.ug, i64 %i.vh
  %i.vj = load float, ptr %i.vi, align 4, !tbaa !70
  %i.vk = fpext float %i.vj to double
  %i.vl = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv13.i217.epil.init
  %i.vm = load double, ptr %i.vl, align 8, !tbaa !38
  %i.vn = call double @llvm.fmuladd.f64(double %i.vk, double %i.vm, double %.0273.us.us.i218.epil.init)
  br label %._crit_edge.us.us.i221

._crit_edge.us.us.i221:                           ; preds = %._crit_edge.us.us.i221.unr-lcssa, %.epil.preheader498
  %.lcssa474 = phi double [ %i.vd, %._crit_edge.us.us.i221.unr-lcssa ], [ %i.vn, %.epil.preheader498 ]
  %i.vo = getelementptr inbounds nuw [8 x i8], ptr %i.ui, i64 %indvars.iv18.i216
  store double %.lcssa474, ptr %i.vo, align 8, !tbaa !38
  %indvars.iv.next19.i222 = add nuw nsw i64 %indvars.iv18.i216, 1 ; 2 uses
  %exitcond22.not.i223 = icmp eq i64 %indvars.iv.next19.i222, %wide.trip.count21.i211
  br i1 %exitcond22.not.i223, label %._crit_edge6.split.us.us.i224, label %.preheader.us.us.i215, !llvm.loop !1559

._crit_edge6.split.us.us.i224:                    ; preds = %._crit_edge.us.us.i221
  %indvars.iv.next24.i225 = add nuw nsw i64 %indvars.iv23.i214, 1 ; 2 uses
  %exitcond27.not.i226 = icmp eq i64 %indvars.iv.next24.i225, %wide.trip.count26.i210
  br i1 %exitcond27.not.i226, label %.loopexit, label %.preheader.lr.ph.us.i213, !llvm.loop !1560

.preheader.lr.ph.i205:                            ; preds = %.preheader.lr.ph.i205, %.preheader.lr.ph.preheader.i203.new
  %indvars.iv.i206 = phi i64 [ 0, %.preheader.lr.ph.preheader.i203.new ], [ %indvars.iv.next.i207.7, %.preheader.lr.ph.i205 ] ; 9 uses
  %niter497 = phi i64 [ 0, %.preheader.lr.ph.preheader.i203.new ], [ %niter497.next.7, %.preheader.lr.ph.i205 ]
  %i.vp = mul i64 %indvars.iv.i206, %i.tw
  %i.vq = getelementptr inbounds nuw i8, ptr %i.tu, i64 %i.vp
  call void @llvm.memset.p0.i64(ptr align 8 %i.vq, i8 0, i64 range(i64 0, 17179869177) %i.ua, i1 false), !tbaa !38
  %indvars.iv.next.i207 = or disjoint i64 %indvars.iv.i206, 1
  %i.vr = mul i64 %indvars.iv.next.i207, %i.tw
  %i.vs = getelementptr inbounds nuw i8, ptr %i.tu, i64 %i.vr
  call void @llvm.memset.p0.i64(ptr align 8 %i.vs, i8 0, i64 range(i64 0, 17179869177) %i.ua, i1 false), !tbaa !38
  %indvars.iv.next.i207.1 = or disjoint i64 %indvars.iv.i206, 2
  %i.vt = mul i64 %indvars.iv.next.i207.1, %i.tw
  %i.vu = getelementptr inbounds nuw i8, ptr %i.tu, i64 %i.vt
  call void @llvm.memset.p0.i64(ptr align 8 %i.vu, i8 0, i64 range(i64 0, 17179869177) %i.ua, i1 false), !tbaa !38
  %indvars.iv.next.i207.2 = or disjoint i64 %indvars.iv.i206, 3
  %i.vv = mul i64 %indvars.iv.next.i207.2, %i.tw
  %i.vw = getelementptr inbounds nuw i8, ptr %i.tu, i64 %i.vv
  call void @llvm.memset.p0.i64(ptr align 8 %i.vw, i8 0, i64 range(i64 0, 17179869177) %i.ua, i1 false), !tbaa !38
  %indvars.iv.next.i207.3 = or disjoint i64 %indvars.iv.i206, 4
  %i.vx = mul i64 %indvars.iv.next.i207.3, %i.tw
  %i.vy = getelementptr inbounds nuw i8, ptr %i.tu, i64 %i.vx
  call void @llvm.memset.p0.i64(ptr align 8 %i.vy, i8 0, i64 range(i64 0, 17179869177) %i.ua, i1 false), !tbaa !38
  %indvars.iv.next.i207.4 = or disjoint i64 %indvars.iv.i206, 5
  %i.vz = mul i64 %indvars.iv.next.i207.4, %i.tw
  %i.wa = getelementptr inbounds nuw i8, ptr %i.tu, i64 %i.vz
  call void @llvm.memset.p0.i64(ptr align 8 %i.wa, i8 0, i64 range(i64 0, 17179869177) %i.ua, i1 false), !tbaa !38
  %indvars.iv.next.i207.5 = or disjoint i64 %indvars.iv.i206, 6
  %i.wb = mul i64 %indvars.iv.next.i207.5, %i.tw
  %i.wc = getelementptr inbounds nuw i8, ptr %i.tu, i64 %i.wb
  call void @llvm.memset.p0.i64(ptr align 8 %i.wc, i8 0, i64 range(i64 0, 17179869177) %i.ua, i1 false), !tbaa !38
  %indvars.iv.next.i207.6 = or disjoint i64 %indvars.iv.i206, 7
  %i.wd = mul i64 %indvars.iv.next.i207.6, %i.tw
  %i.we = getelementptr inbounds nuw i8, ptr %i.tu, i64 %i.wd
  call void @llvm.memset.p0.i64(ptr align 8 %i.we, i8 0, i64 range(i64 0, 17179869177) %i.ua, i1 false), !tbaa !38
  %indvars.iv.next.i207.7 = add nuw nsw i64 %indvars.iv.i206, 8 ; 2 uses
  %niter497.next.7 = add i64 %niter497, 8         ; 2 uses
  %niter497.ncmp.7 = icmp eq i64 %niter497.next.7, %unroll_iter496
  br i1 %niter497.ncmp.7, label %.loopexit.loopexit475.unr-lcssa, label %.preheader.lr.ph.i205, !llvm.loop !1560

bb.am:                                            ; preds = %._crit_edge346
  %i.wf = getelementptr inbounds nuw i8, ptr %10, i64 24
  %.val87 = load ptr, ptr %i.wf, align 8
  %.val88 = load i64, ptr %i.cb, align 8
  %i.wg = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.wh = load i32, ptr %i.wg, align 4, !tbaa !81
  %i.wi = load i32, ptr %11, align 8, !tbaa !56
  %i.wj = lshr i32 %i.wi, 5
  %i.wk = and i32 %i.wj, 127
  %i.wl = add nuw nsw i32 %i.wk, 1
  %i.wm = mul i32 %i.wl, %i.wh                    ; 3 uses
  %i.wn = ptrtoint ptr %.sroa.0266.0.lcssa to i64
  %i.wo = sub i64 %.sroa.15.0.lcssa, %i.wn        ; 3 uses
  %i.wp = lshr i64 %i.wo, 2                       ; 3 uses
  %i.wq = trunc i64 %i.wp to i32
  %i.wr = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ws = load i32, ptr %i.wr, align 8, !tbaa !57 ; 4 uses
  %i.wt = icmp sgt i32 %i.ws, 0
  br i1 %i.wt, label %.lr.ph.i227, label %.loopexit

.lr.ph.i227:                                      ; preds = %bb.am
  %i.wu = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.wv = load ptr, ptr %i.wu, align 8, !tbaa !58 ; 10 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %11, i64 128
  %i.wx = load i64, ptr %i.ww, align 8, !tbaa !28 ; 10 uses
  %i.wy = icmp sgt i32 %i.wm, 0
  br i1 %i.wy, label %.lr.ph.split.i228, label %.loopexit

.lr.ph.split.i228:                                ; preds = %.lr.ph.i227
  %i.wz = icmp sgt i32 %i.wq, 0
  br i1 %i.wz, label %.preheader.lr.ph.us.preheader.i235, label %.preheader.lr.ph.preheader.i229

.preheader.lr.ph.preheader.i229:                  ; preds = %.lr.ph.split.i228
  %i.xa = zext nneg i32 %i.wm to i64
  %i.xb = shl nuw nsw i64 %i.xa, 3                ; 9 uses
  %wide.trip.count.i230 = zext nneg i32 %i.ws to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i230, 7    ; 3 uses
  %i.xc = icmp ult i32 %i.ws, 8
  br i1 %i.xc, label %.preheader.lr.ph.i231.epil.preheader, label %.preheader.lr.ph.preheader.i229.new

.preheader.lr.ph.preheader.i229.new:              ; preds = %.preheader.lr.ph.preheader.i229
  %unroll_iter = and i64 %wide.trip.count.i230, 2147483640
  br label %.preheader.lr.ph.i231

.preheader.lr.ph.us.preheader.i235:               ; preds = %.lr.ph.split.i228
  %wide.trip.count26.i236 = zext nneg i32 %i.ws to i64
  %wide.trip.count21.i237 = zext nneg i32 %i.wm to i64
  %i.xd = and i64 %i.wo, 8589934588
  %i.xe = icmp eq i64 %i.xd, 4
  %unroll_iter490 = and i64 %i.wp, 2147483646
  %i.xf = and i64 %i.wo, 4
  %lcmp.mod487.not = icmp eq i64 %i.xf, 0
  %lcmp.mod489 = trunc i64 %i.wp to i1
  br label %.preheader.lr.ph.us.i239

.preheader.lr.ph.us.i239:                         ; preds = %._crit_edge6.split.us.us.i250, %.preheader.lr.ph.us.preheader.i235
  %indvars.iv23.i240 = phi i64 [ 0, %.preheader.lr.ph.us.preheader.i235 ], [ %indvars.iv.next24.i251, %._crit_edge6.split.us.us.i250 ] ; 3 uses
  %i.xg = mul i64 %indvars.iv23.i240, %.val88
  %i.xh = getelementptr inbounds nuw i8, ptr %.val87, i64 %i.xg ; 3 uses
  %i.xi = mul i64 %indvars.iv23.i240, %i.wx
  %i.xj = getelementptr inbounds nuw i8, ptr %i.wv, i64 %i.xi
  br label %.preheader.us.us.i241

.preheader.us.us.i241:                            ; preds = %._crit_edge.us.us.i247, %.preheader.lr.ph.us.i239
  %indvars.iv18.i242 = phi i64 [ %indvars.iv.next19.i248, %._crit_edge.us.us.i247 ], [ 0, %.preheader.lr.ph.us.i239 ] ; 3 uses
  %i.xk = trunc nuw nsw i64 %indvars.iv18.i242 to i32 ; 3 uses
  br i1 %i.xe, label %.epil.preheader, label %.preheader.us.us.i241.new

.preheader.us.us.i241.new:                        ; preds = %.preheader.us.us.i241, %.preheader.us.us.i241.new
  %indvars.iv13.i243 = phi i64 [ %indvars.iv.next14.i245.1, %.preheader.us.us.i241.new ], [ 0, %.preheader.us.us.i241 ] ; 4 uses
  %.0273.us.us.i244 = phi double [ %i.yc, %.preheader.us.us.i241.new ], [ 0.000000e+00, %.preheader.us.us.i241 ]
  %niter491 = phi i64 [ %niter491.next.1, %.preheader.us.us.i241.new ], [ 0, %.preheader.us.us.i241 ]
  %i.xl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0266.0.lcssa, i64 %indvars.iv13.i243
  %i.xm = load i32, ptr %i.xl, align 4, !tbaa !27
  %i.xn = add nsw i32 %i.xm, %i.xk
  %i.xo = sext i32 %i.xn to i64
  %i.xp = getelementptr inbounds [8 x i8], ptr %i.xh, i64 %i.xo
  %i.xq = load double, ptr %i.xp, align 8, !tbaa !38
  %i.xr = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv13.i243
  %i.xs = load double, ptr %i.xr, align 8, !tbaa !38
  %i.xt = call double @llvm.fmuladd.f64(double %i.xq, double %i.xs, double %.0273.us.us.i244)
  %indvars.iv.next14.i245 = or disjoint i64 %indvars.iv13.i243, 1 ; 2 uses
  %i.xu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0266.0.lcssa, i64 %indvars.iv.next14.i245
  %i.xv = load i32, ptr %i.xu, align 4, !tbaa !27
  %i.xw = add nsw i32 %i.xv, %i.xk
  %i.xx = sext i32 %i.xw to i64
  %i.xy = getelementptr inbounds [8 x i8], ptr %i.xh, i64 %i.xx
  %i.xz = load double, ptr %i.xy, align 8, !tbaa !38
  %i.ya = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.next14.i245
  %i.yb = load double, ptr %i.ya, align 8, !tbaa !38
  %i.yc = call double @llvm.fmuladd.f64(double %i.xz, double %i.yb, double %i.xt) ; 3 uses
  %indvars.iv.next14.i245.1 = add nuw nsw i64 %indvars.iv13.i243, 2 ; 2 uses
  %niter491.next.1 = add i64 %niter491, 2         ; 2 uses
  %niter491.ncmp.1 = icmp eq i64 %niter491.next.1, %unroll_iter490
  br i1 %niter491.ncmp.1, label %._crit_edge.us.us.i247.unr-lcssa, label %.preheader.us.us.i241.new, !llvm.loop !1561

._crit_edge.us.us.i247.unr-lcssa:                 ; preds = %.preheader.us.us.i241.new
  br i1 %lcmp.mod487.not, label %._crit_edge.us.us.i247, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.i247.unr-lcssa, %.preheader.us.us.i241
  %indvars.iv13.i243.epil.init = phi i64 [ 0, %.preheader.us.us.i241 ], [ %indvars.iv.next14.i245.1, %._crit_edge.us.us.i247.unr-lcssa ] ; 2 uses
  %.0273.us.us.i244.epil.init = phi double [ 0.000000e+00, %.preheader.us.us.i241 ], [ %i.yc, %._crit_edge.us.us.i247.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod489)
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0266.0.lcssa, i64 %indvars.iv13.i243.epil.init
  %i.ye = load i32, ptr %i.yd, align 4, !tbaa !27
  %i.yf = add nsw i32 %i.ye, %i.xk
  %i.yg = sext i32 %i.yf to i64
  %i.yh = getelementptr inbounds [8 x i8], ptr %i.xh, i64 %i.yg
  %i.yi = load double, ptr %i.yh, align 8, !tbaa !38
  %i.yj = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv13.i243.epil.init
  %i.yk = load double, ptr %i.yj, align 8, !tbaa !38
  %i.yl = call double @llvm.fmuladd.f64(double %i.yi, double %i.yk, double %.0273.us.us.i244.epil.init)
  br label %._crit_edge.us.us.i247

._crit_edge.us.us.i247:                           ; preds = %._crit_edge.us.us.i247.unr-lcssa, %.epil.preheader
  %.lcssa477 = phi double [ %i.yc, %._crit_edge.us.us.i247.unr-lcssa ], [ %i.yl, %.epil.preheader ]
  %i.ym = getelementptr inbounds nuw [8 x i8], ptr %i.xj, i64 %indvars.iv18.i242
  store double %.lcssa477, ptr %i.ym, align 8, !tbaa !38
  %indvars.iv.next19.i248 = add nuw nsw i64 %indvars.iv18.i242, 1 ; 2 uses
  %exitcond22.not.i249 = icmp eq i64 %indvars.iv.next19.i248, %wide.trip.count21.i237
  br i1 %exitcond22.not.i249, label %._crit_edge6.split.us.us.i250, label %.preheader.us.us.i241, !llvm.loop !1562

._crit_edge6.split.us.us.i250:                    ; preds = %._crit_edge.us.us.i247
  %indvars.iv.next24.i251 = add nuw nsw i64 %indvars.iv23.i240, 1 ; 2 uses
  %exitcond27.not.i252 = icmp eq i64 %indvars.iv.next24.i251, %wide.trip.count26.i236
  br i1 %exitcond27.not.i252, label %.loopexit, label %.preheader.lr.ph.us.i239, !llvm.loop !1563

.preheader.lr.ph.i231:                            ; preds = %.preheader.lr.ph.i231, %.preheader.lr.ph.preheader.i229.new
  %indvars.iv.i232 = phi i64 [ 0, %.preheader.lr.ph.preheader.i229.new ], [ %indvars.iv.next.i233.7, %.preheader.lr.ph.i231 ] ; 9 uses
  %niter = phi i64 [ 0, %.preheader.lr.ph.preheader.i229.new ], [ %niter.next.7, %.preheader.lr.ph.i231 ]
  %i.yn = mul i64 %indvars.iv.i232, %i.wx
  %i.yo = getelementptr inbounds nuw i8, ptr %i.wv, i64 %i.yn
  call void @llvm.memset.p0.i64(ptr align 8 %i.yo, i8 0, i64 range(i64 0, 17179869177) %i.xb, i1 false), !tbaa !38
  %indvars.iv.next.i233 = or disjoint i64 %indvars.iv.i232, 1
  %i.yp = mul i64 %indvars.iv.next.i233, %i.wx
  %i.yq = getelementptr inbounds nuw i8, ptr %i.wv, i64 %i.yp
  call void @llvm.memset.p0.i64(ptr align 8 %i.yq, i8 0, i64 range(i64 0, 17179869177) %i.xb, i1 false), !tbaa !38
  %indvars.iv.next.i233.1 = or disjoint i64 %indvars.iv.i232, 2
  %i.yr = mul i64 %indvars.iv.next.i233.1, %i.wx
  %i.ys = getelementptr inbounds nuw i8, ptr %i.wv, i64 %i.yr
  call void @llvm.memset.p0.i64(ptr align 8 %i.ys, i8 0, i64 range(i64 0, 17179869177) %i.xb, i1 false), !tbaa !38
  %indvars.iv.next.i233.2 = or disjoint i64 %indvars.iv.i232, 3
  %i.yt = mul i64 %indvars.iv.next.i233.2, %i.wx
  %i.yu = getelementptr inbounds nuw i8, ptr %i.wv, i64 %i.yt
  call void @llvm.memset.p0.i64(ptr align 8 %i.yu, i8 0, i64 range(i64 0, 17179869177) %i.xb, i1 false), !tbaa !38
  %indvars.iv.next.i233.3 = or disjoint i64 %indvars.iv.i232, 4
  %i.yv = mul i64 %indvars.iv.next.i233.3, %i.wx
  %i.yw = getelementptr inbounds nuw i8, ptr %i.wv, i64 %i.yv
  call void @llvm.memset.p0.i64(ptr align 8 %i.yw, i8 0, i64 range(i64 0, 17179869177) %i.xb, i1 false), !tbaa !38
  %indvars.iv.next.i233.4 = or disjoint i64 %indvars.iv.i232, 5
  %i.yx = mul i64 %indvars.iv.next.i233.4, %i.wx
  %i.yy = getelementptr inbounds nuw i8, ptr %i.wv, i64 %i.yx
  call void @llvm.memset.p0.i64(ptr align 8 %i.yy, i8 0, i64 range(i64 0, 17179869177) %i.xb, i1 false), !tbaa !38
  %indvars.iv.next.i233.5 = or disjoint i64 %indvars.iv.i232, 6
  %i.yz = mul i64 %indvars.iv.next.i233.5, %i.wx
  %i.za = getelementptr inbounds nuw i8, ptr %i.wv, i64 %i.yz
  call void @llvm.memset.p0.i64(ptr align 8 %i.za, i8 0, i64 range(i64 0, 17179869177) %i.xb, i1 false), !tbaa !38
  %indvars.iv.next.i233.6 = or disjoint i64 %indvars.iv.i232, 7
  %i.zb = mul i64 %indvars.iv.next.i233.6, %i.wx
  %i.zc = getelementptr inbounds nuw i8, ptr %i.wv, i64 %i.zb
  call void @llvm.memset.p0.i64(ptr align 8 %i.zc, i8 0, i64 range(i64 0, 17179869177) %i.xb, i1 false), !tbaa !38
  %indvars.iv.next.i233.7 = add nuw nsw i64 %indvars.iv.i232, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.loopexit478.unr-lcssa, label %.preheader.lr.ph.i231, !llvm.loop !1563

bb.an:                                            ; preds = %._crit_edge346
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @.str.47, ptr noundef nonnull align 1 dereferenceable(1) %18)
          to label %bb.ao unwind label %bb.aq

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @__func__._ZN6cvtest8filter2DERKN2cv3MatERS1_iS3_NS0_6Point_IiEEdiRKNS0_7Scalar_IdEE, ptr noundef nonnull @.str.35, i32 noundef 939) #31
          to label %bb.ap unwind label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  unreachable

bb.aq:                                            ; preds = %bb.an
  %i.zd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255

bb.ar:                                            ; preds = %bb.ao
  %i.ze = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.zf = load ptr, ptr %17, align 8, !tbaa !29   ; 2 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.zh = icmp eq ptr %i.zf, %i.zg
  br i1 %i.zh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i253

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i253: ; preds = %bb.ar
  %i.zi = load i64, ptr %i.zg, align 8, !tbaa !26
  %i.zj = add i64 %i.zi, 1
  call void @_ZdlPvm(ptr noundef %i.zf, i64 noundef %i.zj) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i253, %bb.aq
  %.pn46 = phi { ptr, i32 } [ %i.zd, %bb.aq ], [ %i.ze, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i253 ], [ %i.ze, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit258

.loopexit.loopexit460.unr-lcssa:                  ; preds = %.preheader.lr.ph.i
  %lcmp.mod564.not = icmp eq i64 %xtraiter562, 0
  br i1 %lcmp.mod564.not, label %.loopexit, label %.preheader.lr.ph.i.epil.preheader

.preheader.lr.ph.i.epil.preheader:                ; preds = %.loopexit.loopexit460.unr-lcssa, %.preheader.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader.lr.ph.preheader.i ], [ %indvars.iv.next.i.7, %.loopexit.loopexit460.unr-lcssa ]
  %lcmp.mod565 = icmp ne i64 %xtraiter562, 0
  call void @llvm.assume(i1 %lcmp.mod565)
  br label %.preheader.lr.ph.i.epil

.preheader.lr.ph.i.epil:                          ; preds = %.preheader.lr.ph.i.epil, %.preheader.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.preheader.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.preheader.lr.ph.i.epil ] ; 2 uses
  %epil.iter563 = phi i64 [ 0, %.preheader.lr.ph.i.epil.preheader ], [ %epil.iter563.next, %.preheader.lr.ph.i.epil ]
  %i.zk = mul i64 %indvars.iv.i.epil, %i.er
  %i.zl = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.zk
  call void @llvm.memset.p0.i64(ptr align 8 %i.zl, i8 0, i64 range(i64 0, 17179869177) %i.ev, i1 false), !tbaa !38
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter563.next = add i64 %epil.iter563, 1   ; 2 uses
  %epil.iter563.cmp.not = icmp eq i64 %epil.iter563.next, %xtraiter562
  br i1 %epil.iter563.cmp.not, label %.loopexit, label %.preheader.lr.ph.i.epil, !llvm.loop !1564

.loopexit.loopexit463.unr-lcssa:                  ; preds = %.preheader.lr.ph.i101
  %lcmp.mod550.not = icmp eq i64 %xtraiter548, 0
  br i1 %lcmp.mod550.not, label %.loopexit, label %.preheader.lr.ph.i101.epil.preheader

.preheader.lr.ph.i101.epil.preheader:             ; preds = %.loopexit.loopexit463.unr-lcssa, %.preheader.lr.ph.preheader.i99
  %indvars.iv.i102.epil.init = phi i64 [ 0, %.preheader.lr.ph.preheader.i99 ], [ %indvars.iv.next.i103.7, %.loopexit.loopexit463.unr-lcssa ]
  %lcmp.mod551 = icmp ne i64 %xtraiter548, 0
  call void @llvm.assume(i1 %lcmp.mod551)
  br label %.preheader.lr.ph.i101.epil

.preheader.lr.ph.i101.epil:                       ; preds = %.preheader.lr.ph.i101.epil, %.preheader.lr.ph.i101.epil.preheader
  %indvars.iv.i102.epil = phi i64 [ %indvars.iv.i102.epil.init, %.preheader.lr.ph.i101.epil.preheader ], [ %indvars.iv.next.i103.epil, %.preheader.lr.ph.i101.epil ] ; 2 uses
  %epil.iter549 = phi i64 [ 0, %.preheader.lr.ph.i101.epil.preheader ], [ %epil.iter549.next, %.preheader.lr.ph.i101.epil ]
  %i.zm = mul i64 %indvars.iv.i102.epil, %i.hs
  %i.zn = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.zm
  call void @llvm.memset.p0.i64(ptr align 8 %i.zn, i8 0, i64 range(i64 0, 17179869177) %i.hw, i1 false), !tbaa !38
  %indvars.iv.next.i103.epil = add nuw nsw i64 %indvars.iv.i102.epil, 1
  %epil.iter549.next = add i64 %epil.iter549, 1   ; 2 uses
  %epil.iter549.cmp.not = icmp eq i64 %epil.iter549.next, %xtraiter548
  br i1 %epil.iter549.cmp.not, label %.loopexit, label %.preheader.lr.ph.i101.epil, !llvm.loop !1565

.loopexit.loopexit466.unr-lcssa:                  ; preds = %.preheader.lr.ph.i127
  %lcmp.mod536.not = icmp eq i64 %xtraiter534, 0
  br i1 %lcmp.mod536.not, label %.loopexit, label %.preheader.lr.ph.i127.epil.preheader

.preheader.lr.ph.i127.epil.preheader:             ; preds = %.loopexit.loopexit466.unr-lcssa, %.preheader.lr.ph.preheader.i125
  %indvars.iv.i128.epil.init = phi i64 [ 0, %.preheader.lr.ph.preheader.i125 ], [ %indvars.iv.next.i129.7, %.loopexit.loopexit466.unr-lcssa ]
  %lcmp.mod537 = icmp ne i64 %xtraiter534, 0
  call void @llvm.assume(i1 %lcmp.mod537)
  br label %.preheader.lr.ph.i127.epil

.preheader.lr.ph.i127.epil:                       ; preds = %.preheader.lr.ph.i127.epil, %.preheader.lr.ph.i127.epil.preheader
  %indvars.iv.i128.epil = phi i64 [ %indvars.iv.i128.epil.init, %.preheader.lr.ph.i127.epil.preheader ], [ %indvars.iv.next.i129.epil, %.preheader.lr.ph.i127.epil ] ; 2 uses
  %epil.iter535 = phi i64 [ 0, %.preheader.lr.ph.i127.epil.preheader ], [ %epil.iter535.next, %.preheader.lr.ph.i127.epil ]
  %i.zo = mul i64 %indvars.iv.i128.epil, %i.kt
  %i.zp = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.zo
  call void @llvm.memset.p0.i64(ptr align 8 %i.zp, i8 0, i64 range(i64 0, 17179869177) %i.kx, i1 false), !tbaa !38
  %indvars.iv.next.i129.epil = add nuw nsw i64 %indvars.iv.i128.epil, 1
  %epil.iter535.next = add i64 %epil.iter535, 1   ; 2 uses
  %epil.iter535.cmp.not = icmp eq i64 %epil.iter535.next, %xtraiter534
  br i1 %epil.iter535.cmp.not, label %.loopexit, label %.preheader.lr.ph.i127.epil, !llvm.loop !1566

.loopexit.loopexit469.unr-lcssa:                  ; preds = %.preheader.lr.ph.i153
  %lcmp.mod522.not = icmp eq i64 %xtraiter520, 0
  br i1 %lcmp.mod522.not, label %.loopexit, label %.preheader.lr.ph.i153.epil.preheader

.preheader.lr.ph.i153.epil.preheader:             ; preds = %.loopexit.loopexit469.unr-lcssa, %.preheader.lr.ph.preheader.i151
  %indvars.iv.i154.epil.init = phi i64 [ 0, %.preheader.lr.ph.preheader.i151 ], [ %indvars.iv.next.i155.7, %.loopexit.loopexit469.unr-lcssa ]
  %lcmp.mod523 = icmp ne i64 %xtraiter520, 0
  call void @llvm.assume(i1 %lcmp.mod523)
  br label %.preheader.lr.ph.i153.epil

.preheader.lr.ph.i153.epil:                       ; preds = %.preheader.lr.ph.i153.epil, %.preheader.lr.ph.i153.epil.preheader
  %indvars.iv.i154.epil = phi i64 [ %indvars.iv.i154.epil.init, %.preheader.lr.ph.i153.epil.preheader ], [ %indvars.iv.next.i155.epil, %.preheader.lr.ph.i153.epil ] ; 2 uses
  %epil.iter521 = phi i64 [ 0, %.preheader.lr.ph.i153.epil.preheader ], [ %epil.iter521.next, %.preheader.lr.ph.i153.epil ]
  %i.zq = mul i64 %indvars.iv.i154.epil, %i.nu
  %i.zr = getelementptr inbounds nuw i8, ptr %i.ns, i64 %i.zq
  call void @llvm.memset.p0.i64(ptr align 8 %i.zr, i8 0, i64 range(i64 0, 17179869177) %i.ny, i1 false), !tbaa !38
  %indvars.iv.next.i155.epil = add nuw nsw i64 %indvars.iv.i154.epil, 1
  %epil.iter521.next = add i64 %epil.iter521, 1   ; 2 uses
  %epil.iter521.cmp.not = icmp eq i64 %epil.iter521.next, %xtraiter520
  br i1 %epil.iter521.cmp.not, label %.loopexit, label %.preheader.lr.ph.i153.epil, !llvm.loop !1567

.loopexit.loopexit472.unr-lcssa:                  ; preds = %.preheader.lr.ph.i179
  %lcmp.mod508.not = icmp eq i64 %xtraiter506, 0
  br i1 %lcmp.mod508.not, label %.loopexit, label %.preheader.lr.ph.i179.epil.preheader

.preheader.lr.ph.i179.epil.preheader:             ; preds = %.loopexit.loopexit472.unr-lcssa, %.preheader.lr.ph.preheader.i177
  %indvars.iv.i180.epil.init = phi i64 [ 0, %.preheader.lr.ph.preheader.i177 ], [ %indvars.iv.next.i181.7, %.loopexit.loopexit472.unr-lcssa ]
  %lcmp.mod509 = icmp ne i64 %xtraiter506, 0
  call void @llvm.assume(i1 %lcmp.mod509)
  br label %.preheader.lr.ph.i179.epil

.preheader.lr.ph.i179.epil:                       ; preds = %.preheader.lr.ph.i179.epil, %.preheader.lr.ph.i179.epil.preheader
  %indvars.iv.i180.epil = phi i64 [ %indvars.iv.i180.epil.init, %.preheader.lr.ph.i179.epil.preheader ], [ %indvars.iv.next.i181.epil, %.preheader.lr.ph.i179.epil ] ; 2 uses
  %epil.iter507 = phi i64 [ 0, %.preheader.lr.ph.i179.epil.preheader ], [ %epil.iter507.next, %.preheader.lr.ph.i179.epil ]
  %i.zs = mul i64 %indvars.iv.i180.epil, %i.qv
  %i.zt = getelementptr inbounds nuw i8, ptr %i.qt, i64 %i.zs
  call void @llvm.memset.p0.i64(ptr align 8 %i.zt, i8 0, i64 range(i64 0, 17179869177) %i.qz, i1 false), !tbaa !38
  %indvars.iv.next.i181.epil = add nuw nsw i64 %indvars.iv.i180.epil, 1
  %epil.iter507.next = add i64 %epil.iter507, 1   ; 2 uses
  %epil.iter507.cmp.not = icmp eq i64 %epil.iter507.next, %xtraiter506
  br i1 %epil.iter507.cmp.not, label %.loopexit, label %.preheader.lr.ph.i179.epil, !llvm.loop !1568

.loopexit.loopexit475.unr-lcssa:                  ; preds = %.preheader.lr.ph.i205
  %lcmp.mod494.not = icmp eq i64 %xtraiter492, 0
  br i1 %lcmp.mod494.not, label %.loopexit, label %.preheader.lr.ph.i205.epil.preheader

.preheader.lr.ph.i205.epil.preheader:             ; preds = %.loopexit.loopexit475.unr-lcssa, %.preheader.lr.ph.preheader.i203
  %indvars.iv.i206.epil.init = phi i64 [ 0, %.preheader.lr.ph.preheader.i203 ], [ %indvars.iv.next.i207.7, %.loopexit.loopexit475.unr-lcssa ]
  %lcmp.mod495 = icmp ne i64 %xtraiter492, 0
  call void @llvm.assume(i1 %lcmp.mod495)
  br label %.preheader.lr.ph.i205.epil

.preheader.lr.ph.i205.epil:                       ; preds = %.preheader.lr.ph.i205.epil, %.preheader.lr.ph.i205.epil.preheader
  %indvars.iv.i206.epil = phi i64 [ %indvars.iv.i206.epil.init, %.preheader.lr.ph.i205.epil.preheader ], [ %indvars.iv.next.i207.epil, %.preheader.lr.ph.i205.epil ] ; 2 uses
  %epil.iter493 = phi i64 [ 0, %.preheader.lr.ph.i205.epil.preheader ], [ %epil.iter493.next, %.preheader.lr.ph.i205.epil ]
  %i.zu = mul i64 %indvars.iv.i206.epil, %i.tw
  %i.zv = getelementptr inbounds nuw i8, ptr %i.tu, i64 %i.zu
  call void @llvm.memset.p0.i64(ptr align 8 %i.zv, i8 0, i64 range(i64 0, 17179869177) %i.ua, i1 false), !tbaa !38
  %indvars.iv.next.i207.epil = add nuw nsw i64 %indvars.iv.i206.epil, 1
  %epil.iter493.next = add i64 %epil.iter493, 1   ; 2 uses
  %epil.iter493.cmp.not = icmp eq i64 %epil.iter493.next, %xtraiter492
  br i1 %epil.iter493.cmp.not, label %.loopexit, label %.preheader.lr.ph.i205.epil, !llvm.loop !1569

.loopexit.loopexit478.unr-lcssa:                  ; preds = %.preheader.lr.ph.i231
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.preheader.lr.ph.i231.epil.preheader

.preheader.lr.ph.i231.epil.preheader:             ; preds = %.loopexit.loopexit478.unr-lcssa, %.preheader.lr.ph.preheader.i229
  %indvars.iv.i232.epil.init = phi i64 [ 0, %.preheader.lr.ph.preheader.i229 ], [ %indvars.iv.next.i233.7, %.loopexit.loopexit478.unr-lcssa ]
  %lcmp.mod484 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod484)
  br label %.preheader.lr.ph.i231.epil

.preheader.lr.ph.i231.epil:                       ; preds = %.preheader.lr.ph.i231.epil, %.preheader.lr.ph.i231.epil.preheader
  %indvars.iv.i232.epil = phi i64 [ %indvars.iv.i232.epil.init, %.preheader.lr.ph.i231.epil.preheader ], [ %indvars.iv.next.i233.epil, %.preheader.lr.ph.i231.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader.lr.ph.i231.epil.preheader ], [ %epil.iter.next, %.preheader.lr.ph.i231.epil ]
  %i.zw = mul i64 %indvars.iv.i232.epil, %i.wx
  %i.zx = getelementptr inbounds nuw i8, ptr %i.wv, i64 %i.zw
  call void @llvm.memset.p0.i64(ptr align 8 %i.zx, i8 0, i64 range(i64 0, 17179869177) %i.xb, i1 false), !tbaa !38
  %indvars.iv.next.i233.epil = add nuw nsw i64 %indvars.iv.i232.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.preheader.lr.ph.i231.epil, !llvm.loop !1570

.loopexit:                                        ; preds = %.loopexit.loopexit478.unr-lcssa, %.preheader.lr.ph.i231.epil, %._crit_edge6.split.us.us.i250, %.loopexit.loopexit475.unr-lcssa, %.preheader.lr.ph.i205.epil, %._crit_edge6.split.us.us.i224, %.loopexit.loopexit472.unr-lcssa, %.preheader.lr.ph.i179.epil, %._crit_edge6.split.us.us.i198, %.loopexit.loopexit469.unr-lcssa, %.preheader.lr.ph.i153.epil, %._crit_edge6.split.us.us.i172, %.loopexit.loopexit466.unr-lcssa, %.preheader.lr.ph.i127.epil, %._crit_edge6.split.us.us.i146, %.loopexit.loopexit463.unr-lcssa, %.preheader.lr.ph.i101.epil, %._crit_edge6.split.us.us.i120, %.loopexit.loopexit460.unr-lcssa, %.preheader.lr.ph.i.epil, %._crit_edge6.split.us.us.i, %bb.ag, %.lr.ph.i, %bb.ah, %.lr.ph.i97, %bb.ai, %.lr.ph.i123, %bb.aj, %.lr.ph.i149, %bb.ak, %.lr.ph.i175, %bb.al, %.lr.ph.i201, %bb.am, %.lr.ph.i227
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #30
  %i.zy = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.zz = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i64 0, ptr %i.zz, align 8
  store i32 33619968, ptr %19, align 8, !tbaa !41
  store ptr %1, ptr %i.zy, align 8, !tbaa !42
  invoke void @_ZN6cvtest7convertERKN2cv3MatERKNS0_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %11, ptr noundef nonnull align 8 dereferenceable(24) %19, i32 noundef %2, double noundef 1.000000e+00, double noundef %5)
          to label %_ZNSt6vectorIdSaIdEED2Ev.exit unwind label %bb.at

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bq) #32
  %.not.i.i.i256 = icmp eq ptr %.sroa.0266.0.lcssa, null
  br i1 %.not.i.i.i256, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.aaa = ptrtoint ptr %.sroa.25.0.lcssa to i64
  %i.aab = ptrtoint ptr %.sroa.0266.0.lcssa to i64
  %i.aac = sub i64 %i.aaa, %i.aab
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0266.0.lcssa, i64 noundef %i.aac) #32
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  ret void

bb.at:                                            ; preds = %.loopexit
  %i.aad = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit258

_ZNSt6vectorIdSaIdEED2Ev.exit258.thread407:       ; preds = %.thread, %.thread290
  %.pn48.pn.pn288.ph = phi { ptr, i32 } [ %i.db, %.thread290 ], [ %i.da, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bq) #32
  br label %.body

_ZNSt6vectorIdSaIdEED2Ev.exit258:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255, %bb.at, %.loopexit.split-lp, %.loopexit315
  %.sroa.0266.2 = phi ptr [ %.sroa.0266.0.lcssa, %bb.at ], [ %.sroa.0266.0.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255 ], [ %.sroa.0266.1336, %.loopexit315 ], [ %.sroa.0266.1336, %.loopexit.split-lp ] ; 3 uses
  %.sroa.25.2 = phi ptr [ %.sroa.25.0.lcssa, %bb.at ], [ %.sroa.25.0.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255 ], [ %.sroa.25.1338, %.loopexit315 ], [ %.sroa.25.1338, %.loopexit.split-lp ]
  %.pn48.pn = phi { ptr, i32 } [ %i.aad, %bb.at ], [ %.pn46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255 ], [ %lpad.loopexit, %.loopexit315 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bq) #32
  %.not.i.i.i259 = icmp eq ptr %.sroa.0266.2, null
  br i1 %.not.i.i.i259, label %.body, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit258
  %i.aae = ptrtoint ptr %.sroa.25.2 to i64
  %i.aaf = ptrtoint ptr %.sroa.0266.2 to i64
  %i.aag = sub i64 %i.aae, %i.aaf
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0266.2, i64 noundef %i.aag) #32
  br label %.body

.body:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit258.thread407, %bb.au, %_ZNSt6vectorIdSaIdEED2Ev.exit258, %_ZNSt6vectorIdSaIdEED2Ev.exit258.thread, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn48.pn.pn.pn.pn = phi { ptr, i32 } [ %i.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ab, %bb.m ], [ %i.h, %bb.b ], [ %i.cz, %_ZNSt6vectorIdSaIdEED2Ev.exit258.thread ], [ %.pn48.pn, %_ZNSt6vectorIdSaIdEED2Ev.exit258 ], [ %.pn48.pn, %bb.au ], [ %.pn48.pn.pn288.ph, %_ZNSt6vectorIdSaIdEED2Ev.exit258.thread407 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  resume { ptr, i32 } %.pn48.pn.pn.pn.pn
}

declare void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) unnamed_addr #10

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZN6cvtestL17borderInterpolateEiii(i32 noundef %0, i32 noundef %1, i32 noundef range(i32 1, 0) %2) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = icmp ult i32 %0, %1
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %2, label %bb.m [
    i32 1, label %bb.c
    i32 4, label %bb.d
    i32 2, label %bb.d
    i32 3, label %bb.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = icmp slt i32 %0, 0
  %i.c = add nsw i32 %1, -1
  %i.d = select i1 %i.b, i32 0, i32 %i.c
  br label %.loopexit

bb.d:                                             ; preds = %bb.b, %bb.b
  %i.e = icmp eq i32 %2, 4
  %i.f = zext i1 %i.e to i32                      ; 2 uses
  %.not47 = icmp eq i32 %1, 1
  br i1 %.not47, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.d
  %reass.add = shl i32 %1, 1
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %bb.h
  %.038 = phi i32 [ %.139, %bb.h ], [ %0, %.preheader ] ; 3 uses
  %i.g = icmp slt i32 %.038, 0
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = xor i32 %.038, -1
  %i.i = add nuw nsw i32 %i.h, %i.f
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.j = add nuw i32 %.038, %i.f
  %i.k = xor i32 %i.j, -1
  %i.l = add i32 %reass.add, %i.k
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.139 = phi i32 [ %i.i, %bb.f ], [ %i.l, %bb.g ] ; 3 uses
  %.not46 = icmp ult i32 %.139, %1
  br i1 %.not46, label %.loopexit, label %bb.e, !llvm.loop !1571

bb.i:                                             ; preds = %bb.b
  %i.m = icmp slt i32 %0, 0
  br i1 %i.m, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.n = sub nuw nsw i32 %0, %1                   ; 2 uses
  %i.o = add nsw i32 %i.n, 1
  %i.p = srem i32 %i.o, %1
  %.neg48 = xor i32 %i.n, -1
  %.neg = add i32 %0, %.neg48
  %i.q = add i32 %.neg, %i.p
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.3 = phi i32 [ %i.q, %bb.j ], [ %0, %bb.i ]    ; 3 uses
  %.not = icmp slt i32 %.3, %1
  br i1 %.not, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.r = srem i32 %.3, %1
  br label %.loopexit

bb.m:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.110, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN6cvtestL17borderInterpolateEiii, ptr noundef nonnull @.str.35, i32 noundef 976) #31
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %3, align 8, !tbaa !29     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.w = load i64, ptr %i.u, align 8, !tbaa !26
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %i.s

.loopexit:                                        ; preds = %bb.h, %bb.d, %bb.a, %bb.k, %bb.l, %bb.c
  %.1 = phi i32 [ %.3, %bb.k ], [ %0, %bb.a ], [ %i.d, %bb.c ], [ %i.r, %bb.l ], [ 0, %bb.d ], [ %.139, %bb.h ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6cvtest9minMaxLocERKN2cv3MatEPdS4_PSt6vectorIiSaIiEES8_S3_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(208) %5) local_unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = alloca [3 x ptr], align 16               ; 7 uses
  %8 = alloca [2 x %"class.cv::Mat"], align 16    ; 13 uses
  %9 = alloca %"class.cv::NAryMatIterator", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.b = load i32, ptr %0, align 8, !tbaa !56
  %i.c = and i32 %i.b, 4064
end_hunk_0
begin_hunk_1_@_ZN6cvtest9minMaxLocERKN2cv3MatEPdS4_PSt6vectorIiSaIiEES8_S3_:bb.a
  %i.vn = add i64 %.073611, %i.n
  %exitcond.not = icmp eq i64 %i.vm, %i.p
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !1596

.loopexit:                                        ; preds = %_ZN6cvtestL10minMaxLoc_IddEEvPKT_mmPdS4_PmS5_PKh.exit
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

.loopexit.split-lp:                               ; preds = %bb.cu, %bb.cw
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

._crit_edge:                                      ; preds = %bb.cp, %bb.i
  %.0584.lcssa = phi double [ 0.000000e+00, %bb.i ], [ %.1585, %bb.cp ]
  %.0582.lcssa = phi double [ 0.000000e+00, %bb.i ], [ %.1583, %bb.cp ]
  %.0580.lcssa = phi i64 [ 0, %bb.i ], [ %.1581, %bb.cp ]
  %.0579.lcssa = phi i64 [ 0, %bb.i ], [ %.1, %bb.cp ]
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %._crit_edge
  store double %.0582.lcssa, ptr %2, align 8, !tbaa !38
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %._crit_edge
  %.not89 = icmp eq ptr %1, null
  br i1 %.not89, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  store double %.0584.lcssa, ptr %1, align 8, !tbaa !38
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %.not90 = icmp eq ptr %4, null
  br i1 %.not90, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  invoke fastcc void @_ZN6cvtestL6setposERKN2cv3MatERSt6vectorIiSaIiEEm(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %.0580.lcssa)
          to label %bb.cv unwind label %.loopexit.split-lp

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %.not91 = icmp eq ptr %3, null
  br i1 %.not91, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  invoke fastcc void @_ZN6cvtestL6setposERKN2cv3MatERSt6vectorIiSaIiEEm(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %.0579.lcssa)
          to label %bb.cx unwind label %.loopexit.split-lp

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  %i.vo = getelementptr inbounds nuw i8, ptr %8, i64 208
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.vo) #30
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void

bb.cy:                                            ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit524, %bb.k, %bb.j
  %.pn92.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ag, %bb.j ], [ %i.ah, %bb.k ], [ %.pn92, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit524 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  %i.vp = getelementptr inbounds nuw i8, ptr %8, i64 208
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.vp) #30
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn92.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn92.pn.pn.pn.pn, %bb.cy ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn92.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6cvtestL6setposERKN2cv3MatERSt6vectorIiSaIiEEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !80
  %i.c = sext i32 %i.b to i64                     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35   ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !36     ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  %i.k = icmp ult i64 %i.j, %i.c
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = sub nuw nsw i64 %i.c, %i.j
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.l)
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %i.j, %i.c
  br i1 %i.m, label %bb.d, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.c ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, %i.n
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
  store ptr %i.n, ptr %i.d, align 8, !tbaa !35
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %.not = icmp eq i64 %2, 0
  %i.o = load i32, ptr %i.a, align 4, !tbaa !80   ; 3 uses
  %i.p = icmp sgt i32 %i.o, 0                     ; 2 uses
  br i1 %.not, label %bb.l, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  br i1 %i.p, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.e
  %i.q = add i64 %2, -1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.t = zext nneg i32 %i.o to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ %i.t, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 3 uses
  %.02327 = phi i64 [ %i.q, %.lr.ph ], [ %i.at, %bb.k ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 4 uses
  %i.u = load i32, ptr %i.r, align 8, !tbaa !91
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.u, i32 1)
  %i.v = zext nneg i32 %narrow.i to i64
  %i.w = icmp ult i64 %indvars.iv.next, %i.v
  br i1 %i.w, label %_ZNK2cv8MatShapeixEm.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.115, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.109, i32 noundef 103) #31
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %3, align 8, !tbaa !29     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.i
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !26
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %i.x

_ZNK2cv8MatShapeixEm.exit:                        ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.next
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !27 ; 2 uses
  %i.af = load i32, ptr %i.a, align 4, !tbaa !80
  %i.ag = zext i32 %i.af to i64
  %i.ah = icmp eq i64 %indvars.iv, %i.ag
  br i1 %i.ah, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit
  %i.ai = load i32, ptr %0, align 8, !tbaa !56
  %i.aj = lshr i32 %i.ai, 5
  %i.ak = and i32 %i.aj, 127
  %i.al = add nuw nsw i32 %i.ak, 1
  %i.am = mul nsw i32 %i.al, %i.ae
  br label %bb.k

bb.k:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit, %bb.j
  %i.an = phi i32 [ %i.am, %bb.j ], [ %i.ae, %_ZNK2cv8MatShapeixEm.exit ]
  %i.ao = sext i32 %i.an to i64                   ; 2 uses
  %i.ap = urem i64 %.02327, %i.ao
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = load ptr, ptr %1, align 8, !tbaa !36
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.next
  store i32 %i.aq, ptr %i.as, align 4, !tbaa !27
  %i.at = udiv i64 %.02327, %i.ao
  %i.au = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.au, label %bb.f, label %.loopexit, !llvm.loop !1597

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  br i1 %i.p, label %.lr.ph31, label %.loopexit

.lr.ph31:                                         ; preds = %bb.l
  %i.av = load ptr, ptr %1, align 8, !tbaa !36
  %i.aw = zext nneg i32 %i.o to i64
  %i.ax = shl nuw nsw i64 %i.aw, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.av, i8 -1, i64 range(i64 0, 8589934589) %i.ax, i1 false), !tbaa !27
  br label %.loopexit

.loopexit:                                        ; preds = %bb.k, %.lr.ph31, %bb.e, %bb.l
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef double @_ZN6cvtest4normERKN2cv11_InputArrayEiS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::Mat", align 8           ; 15 uses
  %4 = alloca %"class.cv::Mat", align 8           ; 13 uses
  %5 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %6 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %7 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %8 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %9 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %10 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %11 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %12 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %13 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %14 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.a = alloca [2 x ptr], align 16               ; 6 uses
  %17 = alloca [1 x %"class.cv::Mat"], align 16   ; 9 uses
  %18 = alloca %"class.cv::NAryMatIterator", align 8 ; 7 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %20 = alloca %"class.std::allocator", align 1   ; 3 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %22 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.b = alloca [3 x ptr], align 16               ; 7 uses
  %23 = alloca [2 x %"class.cv::Mat"], align 16   ; 14 uses
  %24 = alloca %"class.cv::NAryMatIterator", align 8 ; 6 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %26 = alloca %"class.std::allocator", align 1   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.c = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %0), !noalias !1743
  %i.d = icmp eq i32 %i.c, 65536
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !42, !noalias !1743
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(208) %i.f)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.g = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.h = icmp eq i32 %i.g, 65536
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !42, !noalias !1744
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(208) %i.j)
          to label %_ZNK2cv11_InputArray6getMatEi.exit176 unwind label %bb.i

bb.e:                                             ; preds = %.noexc
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit176 unwind label %bb.i

_ZNK2cv11_InputArray6getMatEi.exit176:            ; preds = %bb.d, %bb.e
  %i.k = load i32, ptr %3, align 8, !tbaa !56
  %i.l = and i32 %i.k, 31
  %i.m = icmp eq i32 %i.l, 7
  br i1 %i.m, label %bb.f, label %bb.n

bb.f:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit176
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %5) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 0, ptr %i.o, align 8
  store i32 33619968, ptr %6, align 8, !tbaa !41
  store ptr %5, ptr %i.n, align 8, !tbaa !42
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef 5, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 0, ptr %i.p, align 8, !tbaa !92
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 0, ptr %i.q, align 4, !tbaa !93
  store i32 16842752, ptr %7, align 8, !tbaa !41
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %5, ptr %i.r, align 8, !tbaa !42
  %i.s = invoke noundef double @_ZN6cvtest4normERKN2cv11_InputArrayEiS3_(ptr noundef nonnull align 8 dereferenceable(24) %7, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.kw

bb.i:                                             ; preds = %bb.e, %bb.d, %_ZNK2cv11_InputArray6getMatEi.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.ky

bb.j:                                             ; preds = %bb.o
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.kx

bb.k:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.m

bb.l:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn169.pn = phi { ptr, i32 } [ %i.w, %bb.l ], [ %i.v, %bb.k ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.kx

bb.n:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit176
  %i.x = icmp eq i32 %1, 6                        ; 2 uses
  %i.y = and i32 %1, -2
  %or.cond = icmp eq i32 %i.y, 6
  br i1 %or.cond, label %bb.o, label %bb.aj

bb.o:                                             ; preds = %bb.n
  %i.z = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %4)
          to label %bb.p unwind label %bb.j

bb.p:                                             ; preds = %bb.o
  br i1 %i.z, label %bb.x, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %8) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 0, ptr %i.aa, align 8, !tbaa !92
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i32 0, ptr %i.ab, align 4, !tbaa !93
  store i32 16842752, ptr %9, align 8, !tbaa !41
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %3, ptr %i.ac, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 0, ptr %i.ad, align 8, !tbaa !92
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 20
  store i32 0, ptr %i.ae, align 4, !tbaa !93
  store i32 16842752, ptr %10, align 8, !tbaa !41
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %4, ptr %i.af, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 0, ptr %i.ah, align 8
  store i32 33619968, ptr %11, align 8, !tbaa !41
  store ptr %8, ptr %i.ag, align 8, !tbaa !42
  %i.ai = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN2cv11bitwise_andERKNS_11_InputArrayES2_RKNS_12_OutputArrayES2_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  %i.aj = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 0, ptr %i.aj, align 8, !tbaa !92
  %i.ak = getelementptr inbounds nuw i8, ptr %12, i64 20
  store i32 0, ptr %i.ak, align 4, !tbaa !93
  store i32 16842752, ptr %12, align 8, !tbaa !41
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %8, ptr %i.al, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %14) #30
  %i.am = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i32 0, ptr %i.am, align 8, !tbaa !92
  %i.an = getelementptr inbounds nuw i8, ptr %13, i64 20
  store i32 0, ptr %i.an, align 4, !tbaa !93
  store i32 16842752, ptr %13, align 8, !tbaa !41
  %i.ao = getelementptr inbounds nuw i8, ptr %13, i64 8
end_hunk_1
begin_hunk_2_@_ZN6cvtest9transformERKN2cv3MatERS1_S3_S3_:bb.a
.preheader270:                                    ; preds = %bb.m
  br i1 %i.al, label %.lr.ph281, label %.loopexit

.lr.ph281:                                        ; preds = %.preheader270
  %i.am = add nuw nsw i32 %i.e, 2
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !81 ; 2 uses
  %i.ap = icmp sgt i32 %i.ao, 0
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.au = load i32, ptr %i.at, align 4
  %i.av = icmp slt i32 %i.au, 2
  %i.aw = load i32, ptr %4, align 8
  %i.ax = and i32 %i.aw, 16384
  %i.ay = icmp ne i32 %i.ax, 0
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 84
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = icmp eq i32 %i.ba, 1
  %or.cond.i127 = select i1 %i.ay, i1 true, i1 %i.bb
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.bd = load i32, ptr %i.bc, align 8
  %i.be = icmp eq i32 %i.bd, 1
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.bg = load i32, ptr %i.bf, align 4            ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8            ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.bk = load i64, ptr %i.bj, align 8            ; 2 uses
  %i.bl = shl nuw nsw i32 %i.d, 3
  %i.bm = and i32 %i.bl, 1016
  %narrow = add nuw nsw i32 %i.bm, 16
  %i.bn = zext nneg i32 %narrow to i64
  %i.bo = zext nneg i32 %i.ao to i64
  %i.bp = shl nuw nsw i64 %i.bo, 3
  %i.bq = zext nneg i32 %i.am to i64
  %i.br = zext nneg i32 %i.f to i64
  %wide.trip.count = zext nneg i32 %i.ak to i64
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.br
  br label %bb.w

.preheader:                                       ; preds = %bb.m
  br i1 %i.al, label %.lr.ph288, label %.loopexit

.lr.ph288:                                        ; preds = %.preheader
  %i.bs = add nuw nsw i32 %i.e, 2
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !81 ; 3 uses
  %i.bv = icmp sgt i32 %i.bu, 0
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ca = load i32, ptr %i.bz, align 4
  %i.cb = icmp slt i32 %i.ca, 2
  %i.cc = load i32, ptr %4, align 8
  %i.cd = and i32 %i.cc, 16384
  %i.ce = icmp ne i32 %i.cd, 0
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 84
  %i.cg = load i32, ptr %i.cf, align 4
  %i.ch = icmp eq i32 %i.cg, 1
  %or.cond.i = select i1 %i.ce, i1 true, i1 %i.ch
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.cj = load i32, ptr %i.ci, align 8
  %i.ck = icmp eq i32 %i.cj, 1
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.cm = load i32, ptr %i.cl, align 4            ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.co = load ptr, ptr %i.cn, align 8            ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.cq = load i64, ptr %i.cp, align 8            ; 2 uses
  %i.cr = zext nneg i32 %i.bs to i64
  %i.cs = zext nneg i32 %i.f to i64
  %wide.trip.count310 = zext nneg i32 %i.ak to i64
  %invariant.gep357 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.cs
  %wide.trip.count305 = zext i32 %i.bu to i64     ; 3 uses
  %min.iters.check = icmp ult i32 %i.bu, 4
  %n.vec = and i64 %wide.trip.count305, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count305
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph288, %bb.v
  %indvars.iv307 = phi i64 [ 0, %.lr.ph288 ], [ %indvars.iv.next308, %bb.v ] ; 7 uses
  %i.ct = mul nuw nsw i64 %indvars.iv307, %i.cr   ; 2 uses
  %gep358 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep357, i64 %i.ct ; 2 uses
  store double 0.000000e+00, ptr %gep358, align 8, !tbaa !38
  br i1 %i.bv, label %.lr.ph284, label %._crit_edge285

.lr.ph284:                                        ; preds = %bb.n
  %i.cu = load i32, ptr %i.bw, align 4, !tbaa !80
  %i.cv = icmp slt i32 %i.cu, 2
  %i.cw = load ptr, ptr %i.bx, align 8, !tbaa !58
  %i.cx = load i64, ptr %i.by, align 8
  %i.cy = mul i64 %i.cx, %indvars.iv307
  %.sink.idx.i = select i1 %i.cv, i64 0, i64 %i.cy
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.sink.idx.i ; 2 uses
  %invariant.gep355 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ct ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph284, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph284 ] ; 3 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %.sink.i, i64 %index ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %wide.load = load <2 x float>, ptr %i.cz, align 4, !tbaa !70
  %wide.load377 = load <2 x float>, ptr %i.da, align 4, !tbaa !70
  %i.db = fpext <2 x float> %wide.load to <2 x double>
  %i.dc = fpext <2 x float> %wide.load377 to <2 x double>
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep355, i64 %index ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store <2 x double> %i.db, ptr %i.dd, align 8, !tbaa !38
  store <2 x double> %i.dc, ptr %i.de, align 8, !tbaa !38
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.df = icmp eq i64 %index.next, %n.vec
  br i1 %i.df, label %middle.block, label %vector.body, !llvm.loop !3080

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge285, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph284, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph284 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge285:                                   ; preds = %scalar.ph, %middle.block, %bb.n
  br i1 %i.n, label %bb.v, label %bb.o

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %.sink.i, i64 %indvars.iv
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !70
  %i.di = fpext float %i.dh to double
  %gep356 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep355, i64 %indvars.iv
  store double %i.di, ptr %gep356, align 8, !tbaa !38
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond306.not = icmp eq i64 %indvars.iv.next, %wide.trip.count305
  br i1 %exitcond306.not, label %._crit_edge285, label %scalar.ph, !llvm.loop !3081

bb.o:                                             ; preds = %._crit_edge285
  br i1 %i.cb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv307
  br label %_ZN2cv3Mat2atIfEERT_i.exit

bb.q:                                             ; preds = %bb.o
  br i1 %or.cond.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv307
  br label %_ZN2cv3Mat2atIfEERT_i.exit

bb.s:                                             ; preds = %bb.q
  br i1 %i.ck, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dl = mul i64 %i.cq, %indvars.iv307
  %i.dm = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.dl
  br label %_ZN2cv3Mat2atIfEERT_i.exit

bb.u:                                             ; preds = %bb.s
  %i.dn = trunc nuw nsw i64 %indvars.iv307 to i32 ; 2 uses
  %i.do = sdiv i32 %i.dn, %i.cm                   ; 2 uses
  %i.dp = mul nsw i32 %i.do, %i.cm                ; 0 uses
  %.recomposed = srem i32 %i.dn, %i.cm
  %i.dq = sext i32 %i.do to i64
  %i.dr = mul i64 %i.cq, %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.dr
  %i.dt = sext i32 %.recomposed to i64
  %i.du = getelementptr inbounds [4 x i8], ptr %i.ds, i64 %i.dt
  br label %_ZN2cv3Mat2atIfEERT_i.exit

_ZN2cv3Mat2atIfEERT_i.exit:                       ; preds = %bb.p, %bb.r, %bb.t, %bb.u
  %.0.i = phi ptr [ %i.dj, %bb.p ], [ %i.dk, %bb.r ], [ %i.dm, %bb.t ], [ %i.du, %bb.u ]
  %i.dv = load float, ptr %.0.i, align 4, !tbaa !70
  %i.dw = fpext float %i.dv to double
  store double %i.dw, ptr %gep358, align 8, !tbaa !38
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge285, %_ZN2cv3Mat2atIfEERT_i.exit
  %indvars.iv.next308 = add nuw nsw i64 %indvars.iv307, 1 ; 2 uses
  %exitcond311.not = icmp eq i64 %indvars.iv.next308, %wide.trip.count310
  br i1 %exitcond311.not, label %.loopexit, label %bb.n, !llvm.loop !3082

bb.w:                                             ; preds = %.lr.ph281, %bb.ae
  %indvar = phi i64 [ 0, %.lr.ph281 ], [ %indvar.next, %bb.ae ] ; 8 uses
  %i.dx = mul nuw nsw i64 %indvar, %i.bq
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.dx ; 2 uses
  store double 0.000000e+00, ptr %gep, align 8, !tbaa !38
  br i1 %i.ap, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.w
  %i.dy = mul nuw nsw i64 %indvar, %i.bn
  %scevgep = getelementptr i8, ptr %i.a, i64 %i.dy
  %i.dz = load i32, ptr %i.aq, align 4, !tbaa !80
  %i.ea = icmp slt i32 %i.dz, 2
  %i.eb = load ptr, ptr %i.ar, align 8, !tbaa !58
  %i.ec = load i64, ptr %i.as, align 8
  %i.ed = mul i64 %i.ec, %indvar
  %.sink.idx.i125 = select i1 %i.ea, i64 0, i64 %i.ed
  %.sink.i126 = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.sink.idx.i125
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %scevgep, ptr align 8 %.sink.i126, i64 range(i64 0, 17179869177) %i.bp, i1 false), !tbaa !38
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.w
  br i1 %i.n, label %bb.ae, label %bb.x

bb.x:                                             ; preds = %._crit_edge
  br i1 %i.av, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvar
  br label %_ZN2cv3Mat2atIdEERT_i.exit

bb.z:                                             ; preds = %bb.x
  br i1 %or.cond.i127, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvar
  br label %_ZN2cv3Mat2atIdEERT_i.exit

bb.ab:                                            ; preds = %bb.z
  br i1 %i.be, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.eg = mul i64 %i.bk, %indvar
  %i.eh = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.eg
  br label %_ZN2cv3Mat2atIdEERT_i.exit

bb.ad:                                            ; preds = %bb.ab
  %i.ei = trunc nuw nsw i64 %indvar to i32        ; 2 uses
  %i.ej = sdiv i32 %i.ei, %i.bg                   ; 2 uses
  %i.ek = mul nsw i32 %i.ej, %i.bg                ; 0 uses
  %.recomposed455 = srem i32 %i.ei, %i.bg
  %i.el = sext i32 %i.ej to i64
  %i.em = mul i64 %i.bk, %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.em
  %i.eo = sext i32 %.recomposed455 to i64
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.en, i64 %i.eo
  br label %_ZN2cv3Mat2atIdEERT_i.exit

_ZN2cv3Mat2atIdEERT_i.exit:                       ; preds = %bb.y, %bb.aa, %bb.ac, %bb.ad
  %.0.i128 = phi ptr [ %i.ee, %bb.y ], [ %i.ef, %bb.aa ], [ %i.eh, %bb.ac ], [ %i.ep, %bb.ad ]
  %i.eq = load double, ptr %.0.i128, align 8, !tbaa !38
  store double %i.eq, ptr %gep, align 8, !tbaa !38
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge, %_ZN2cv3Mat2atIdEERT_i.exit
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %indvar.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.w, !llvm.loop !3083

.loopexit:                                        ; preds = %bb.ae, %bb.v, %.preheader270, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store ptr %0, ptr %i.b, align 16, !tbaa !44
  %i.er = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %1, ptr %i.er, align 8, !tbaa !44
  %i.es = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr null, ptr %i.es, align 16, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %7) #30
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %7, i64 208
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %.ptr.1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  invoke void @_ZN2cv15NAryMatIteratorC1EPPKNS_3MatEPS1_i(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull %i.b, ptr noundef nonnull %7, i32 noundef -1)
          to label %bb.af unwind label %bb.ai

bb.af:                                            ; preds = %.loopexit
  %i.et = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %7)
          to label %bb.ag unwind label %bb.aj     ; 8 uses

bb.ag:                                            ; preds = %bb.af
  %i.eu = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !49 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ex = getelementptr inbounds nuw i8, ptr %7, i64 232
  %.not.i239 = icmp eq i64 %i.et, 0               ; 7 uses
  %i.ey = add nuw nsw i32 %i.e, 2
  %i.ez = zext nneg i32 %i.f to i64               ; 22 uses
  %i.fa = zext nneg i32 %i.j to i64               ; 14 uses
  %i.fb = zext nneg i32 %i.ey to i64              ; 7 uses
  %invariant.gep65.i242 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ez ; 7 uses
  %exitcond312.not372 = icmp eq i64 %i.ev, 0
  br i1 %exitcond312.not372, label %._crit_edge376, label %.lr.ph375.preheader

.lr.ph375.preheader:                              ; preds = %bb.ag
  %i.fc = and i32 %i.d, 127                       ; 7 uses
  %xtraiter = and i64 %i.ez, 3                    ; 3 uses
  %i.fd = icmp samesign ult i32 %i.fc, 3
  %unroll_iter = and i64 %i.ez, 252
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod392 = icmp ne i64 %xtraiter, 0
  %xtraiter394 = and i64 %i.ez, 3                 ; 3 uses
  %i.fe = icmp samesign ult i32 %i.fc, 3
  %unroll_iter399 = and i64 %i.ez, 252
  %lcmp.mod396.not = icmp eq i64 %xtraiter394, 0
  %lcmp.mod398 = icmp ne i64 %xtraiter394, 0
  %xtraiter402 = and i64 %i.ez, 3                 ; 3 uses
  %i.ff = icmp samesign ult i32 %i.fc, 3
  %unroll_iter407 = and i64 %i.ez, 252
  %lcmp.mod404.not = icmp eq i64 %xtraiter402, 0
  %lcmp.mod406 = icmp ne i64 %xtraiter402, 0
  %xtraiter410 = and i64 %i.ez, 3                 ; 3 uses
  %i.fg = icmp samesign ult i32 %i.fc, 3
  %unroll_iter415 = and i64 %i.ez, 252
  %lcmp.mod412.not = icmp eq i64 %xtraiter410, 0
  %lcmp.mod414 = icmp ne i64 %xtraiter410, 0
  %xtraiter418 = and i64 %i.ez, 3                 ; 3 uses
  %i.fh = icmp samesign ult i32 %i.fc, 3
  %unroll_iter423 = and i64 %i.ez, 252
  %lcmp.mod420.not = icmp eq i64 %xtraiter418, 0
  %lcmp.mod422 = icmp ne i64 %xtraiter418, 0
  %xtraiter426 = and i64 %i.ez, 3                 ; 3 uses
  %i.fi = icmp samesign ult i32 %i.fc, 3
  %unroll_iter431 = and i64 %i.ez, 252
  %lcmp.mod428.not = icmp eq i64 %xtraiter426, 0
  %lcmp.mod430 = icmp ne i64 %xtraiter426, 0
  %xtraiter434 = and i64 %i.ez, 3                 ; 3 uses
  %i.fj = icmp samesign ult i32 %i.fc, 3
  %unroll_iter439 = and i64 %i.ez, 252
  %lcmp.mod436.not = icmp eq i64 %xtraiter434, 0
  %lcmp.mod438 = icmp ne i64 %xtraiter434, 0
  br label %.lr.ph375

bb.ah:                                            ; preds = %_ZN6cvtestL10transform_IhEEvPKT_PS1_miiPKd.exit
  %i.fk = add i64 %.0373, 1                       ; 2 uses
  %exitcond312.not = icmp eq i64 %i.fk, %i.ev
  br i1 %exitcond312.not, label %._crit_edge376, label %.lr.ph375, !llvm.loop !3084

.lr.ph375:                                        ; preds = %.lr.ph375.preheader, %bb.ah
  %.0373 = phi i64 [ %i.fk, %bb.ah ], [ 0, %.lr.ph375.preheader ]
  %i.fl = load ptr, ptr %i.ew, align 8, !tbaa !58 ; 7 uses
  %i.fm = load ptr, ptr %i.ex, align 8, !tbaa !58 ; 7 uses
  switch i32 %i.k, label %bb.ay [
    i32 0, label %bb.ak
    i32 1, label %bb.am
    i32 2, label %bb.ao
    i32 3, label %bb.aq
    i32 4, label %bb.as
    i32 5, label %bb.au
    i32 6, label %bb.aw
  ]

bb.ai:                                            ; preds = %.loopexit
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.aj:                                            ; preds = %bb.af
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.ak:                                            ; preds = %.lr.ph375
  br i1 %.not.i239, label %_ZN6cvtestL10transform_IhEEvPKT_PS1_miiPKd.exit, label %.preheader.us.i

.preheader.us.i:                                  ; preds = %bb.ak, %._crit_edge36.split.us.us.i
  %.02841.us.i = phi i64 [ %i.gw, %._crit_edge36.split.us.us.i ], [ 0, %bb.ak ]
  %.02939.us.i = phi ptr [ %i.gx, %._crit_edge36.split.us.us.i ], [ %i.fl, %bb.ak ] ; 6 uses
  %.03037.us.i = phi ptr [ %i.gy, %._crit_edge36.split.us.us.i ], [ %i.fm, %bb.ak ] ; 2 uses
  br label %.lr.ph.us.us.i

.lr.ph.us.us.i:                                   ; preds = %._crit_edge.us.us.i, %.preheader.us.i
  %indvars.iv52.i = phi i64 [ %indvars.iv.next53.i, %._crit_edge.us.us.i ], [ 0, %.preheader.us.i ] ; 3 uses
  %i.fp = mul nuw nsw i64 %indvars.iv52.i, %i.fb  ; 2 uses
  %gep66.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep65.i242, i64 %i.fp
  %i.fq = load double, ptr %gep66.i, align 8, !tbaa !38 ; 2 uses
  %invariant.gep63.i = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.fp ; 5 uses
  br i1 %i.fj, label %.epil.preheader433, label %.lr.ph.us.us.i.new

.lr.ph.us.us.i.new:                               ; preds = %.lr.ph.us.us.i, %.lr.ph.us.us.i.new
  %indvars.iv47.i = phi i64 [ %indvars.iv.next48.i.3, %.lr.ph.us.us.i.new ], [ 0, %.lr.ph.us.us.i ] ; 6 uses
  %.02632.us.us.i = phi double [ %i.gk, %.lr.ph.us.us.i.new ], [ %i.fq, %.lr.ph.us.us.i ]
  %niter440 = phi i64 [ %niter440.next.3, %.lr.ph.us.us.i.new ], [ 0, %.lr.ph.us.us.i ]
  %gep64.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep63.i, i64 %indvars.iv47.i
  %i.fr = load double, ptr %gep64.i, align 8, !tbaa !38
  %i.fs = getelementptr inbounds nuw i8, ptr %.02939.us.i, i64 %indvars.iv47.i
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !26
  %i.fu = uitofp i8 %i.ft to double
  %i.fv = call double @llvm.fmuladd.f64(double %i.fr, double %i.fu, double %.02632.us.us.i)
  %indvars.iv.next48.i = or disjoint i64 %indvars.iv47.i, 1 ; 2 uses
  %gep64.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep63.i, i64 %indvars.iv.next48.i
  %i.fw = load double, ptr %gep64.i.1, align 8, !tbaa !38
  %i.fx = getelementptr inbounds nuw i8, ptr %.02939.us.i, i64 %indvars.iv.next48.i
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !26
  %i.fz = uitofp i8 %i.fy to double
  %i.ga = call double @llvm.fmuladd.f64(double %i.fw, double %i.fz, double %i.fv)
  %indvars.iv.next48.i.1 = or disjoint i64 %indvars.iv47.i, 2 ; 2 uses
  %gep64.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep63.i, i64 %indvars.iv.next48.i.1
  %i.gb = load double, ptr %gep64.i.2, align 8, !tbaa !38
  %i.gc = getelementptr inbounds nuw i8, ptr %.02939.us.i, i64 %indvars.iv.next48.i.1
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !26
  %i.ge = uitofp i8 %i.gd to double
  %i.gf = call double @llvm.fmuladd.f64(double %i.gb, double %i.ge, double %i.ga)
  %indvars.iv.next48.i.2 = or disjoint i64 %indvars.iv47.i, 3 ; 2 uses
  %gep64.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep63.i, i64 %indvars.iv.next48.i.2
  %i.gg = load double, ptr %gep64.i.3, align 8, !tbaa !38
  %i.gh = getelementptr inbounds nuw i8, ptr %.02939.us.i, i64 %indvars.iv.next48.i.2
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !26
  %i.gj = uitofp i8 %i.gi to double
  %i.gk = call double @llvm.fmuladd.f64(double %i.gg, double %i.gj, double %i.gf) ; 3 uses
  %indvars.iv.next48.i.3 = add nuw nsw i64 %indvars.iv47.i, 4 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN6cvtest17calcSobelKernel2DEiiii:bb.a
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.dc) #32
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit45

_ZNSt6vectorIiSaIiEED2Ev.exit45:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  ret void

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.dd = landingpad { ptr, i32 }
          cleanup
  %i.de = load ptr, ptr %8, align 8, !tbaa !36    ; 3 uses
  %.not.i.i.i46 = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i46, label %_ZNSt6vectorIiSaIiEED2Ev.exit47, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.df = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !94
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = ptrtoint ptr %i.de to i64
  %i.dj = sub i64 %i.dh, %i.di
  call void @_ZdlPvm(ptr noundef nonnull %i.de, i64 noundef %i.dj) #32
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit47

_ZNSt6vectorIiSaIiEED2Ev.exit47:                  ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.dk = load ptr, ptr %7, align 8, !tbaa !36    ; 3 uses
  %.not.i.i.i48 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i48, label %_ZNSt6vectorIiSaIiEED2Ev.exit49, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit47
  %i.dl = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !94
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = ptrtoint ptr %i.dk to i64
  %i.dp = sub i64 %i.dn, %i.do
  call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef %i.dp) #32
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit49

_ZNSt6vectorIiSaIiEED2Ev.exit49:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit47, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #30
  br label %bb.q

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge.split
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %._crit_edge.split ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %indvars.iv71
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !27
  %i.ds = sitofp i32 %i.dr to float               ; 3 uses
  br i1 %i.br, label %.epil.preheader, label %.lr.ph.new

._crit_edge.split.unr-lcssa:                      ; preds = %.lr.ph.new
  br i1 %lcmp.mod.not, label %._crit_edge.split, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.split.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.split.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod139)
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.epil.init
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !27
  %i.dv = sitofp i32 %i.du to float
  %i.dw = fmul nnan float %i.ds, %i.dv
  %i.dx = load i64, ptr %i.ae, align 8
  %i.dy = mul i64 %i.dx, %indvars.iv71
  %.sink.i.epil = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.dy
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.epil, i64 %indvars.iv.epil.init
  store float %i.dw, ptr %i.dz, align 4, !tbaa !70
  br label %._crit_edge.split

._crit_edge.split:                                ; preds = %._crit_edge.split.unr-lcssa, %.epil.preheader
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %exitcond75.not = icmp eq i64 %indvars.iv.next72, %wide.trip.count104
  br i1 %exitcond75.not, label %._crit_edge61.split.thread, label %.lr.ph, !llvm.loop !3515

.lr.ph.new:                                       ; preds = %.lr.ph, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ 0, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.new ], [ 0, %.lr.ph ]
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !27
  %i.ec = sitofp i32 %i.eb to float
  %i.ed = fmul nnan float %i.ds, %i.ec
  %i.ee = load i64, ptr %i.ae, align 8
  %i.ef = mul i64 %i.ee, %indvars.iv71
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ef
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %.sink.i, i64 %indvars.iv
  store float %i.ed, ptr %i.eg, align 4, !tbaa !70
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !27
  %i.ej = sitofp i32 %i.ei to float
  %i.ek = fmul nnan float %i.ds, %i.ej
  %i.el = load i64, ptr %i.ae, align 8
  %i.em = mul i64 %i.el, %indvars.iv71
  %.sink.i.1 = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.em
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.1, i64 %indvars.iv.next
  store float %i.ek, ptr %i.en, align 4, !tbaa !70
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.split.unr-lcssa, label %.lr.ph.new, !llvm.loop !3518

bb.q:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn38 = phi { ptr, i32 } [ %i.dd, %_ZNSt6vectorIiSaIiEED2Ev.exit49 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn38
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6cvtestL17calcSobelKernel1DEiiiRSt6vectorIiSaIiEE(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = add i32 %2, 1                            ; 5 uses
  %i.b = sext i32 %i.a to i64                     ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35   ; 2 uses
  %i.e = load ptr, ptr %3, align 8, !tbaa !36     ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 2                   ; 3 uses
  %i.j = icmp ult i64 %i.i, %i.b
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = sub nuw nsw i64 %i.b, %i.i
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.k)
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %i.i, %i.b
  br i1 %i.l, label %bb.d, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.b ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.m
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
  store ptr %i.m, ptr %i.c, align 8, !tbaa !35
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.n = icmp slt i32 %1, 0
  br i1 %i.n, label %bb.e, label %.preheader65

.preheader65:                                     ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %.not66 = icmp slt i32 %2, 1
  %.pre = load ptr, ptr %3, align 8, !tbaa !36    ; 9 uses
  br i1 %.not66, label %.preheader63.thread, label %._crit_edge

.preheader63.thread:                              ; preds = %.preheader65
  store i32 1, ptr %.pre, align 4, !tbaa !27
  br label %.loopexit

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.o = icmp eq i32 %2, 3
  %i.p = icmp slt i32 %0, 2
  %or.cond = and i1 %i.p, %i.o
  br i1 %or.cond, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.e
  %i.q = mul nsw i32 %0, 3
  %i.r = load ptr, ptr %3, align 8, !tbaa !36
  %i.s = sext i32 %i.q to i64
  %i.t = shl nsw i64 %i.s, 2
  %scevgep98 = getelementptr i8, ptr @_ZZN6cvtestL17calcSobelKernel1DEiiiRSt6vectorIiSaIiEEE6scharr, i64 %i.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.r, ptr noundef nonnull align 4 dereferenceable(12) %scevgep98, i64 12, i1 false), !tbaa !27
  br label %.loopexit

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.114, ptr noundef nonnull align 1 dereferenceable(1) %5)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN6cvtestL17calcSobelKernel1DEiiiRSt6vectorIiSaIiEE, ptr noundef nonnull @.str.35, i32 noundef 3176) #31
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %4, align 8, !tbaa !29     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.y = load i64, ptr %i.w, align 8, !tbaa !26
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %i.u

._crit_edge:                                      ; preds = %.preheader65
  %scevgep = getelementptr nuw i8, ptr %.pre, i64 4
  %i.aa = zext nneg i32 %2 to i64
  %i.ab = shl nuw nsw i64 %i.aa, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %scevgep, i8 0, i64 range(i64 0, 8589934589) %i.ab, i1 false), !tbaa !27
  store i32 1, ptr %.pre, align 4, !tbaa !27
  %i.ac = xor i32 %0, -1
  %i.ad = add i32 %2, %i.ac                       ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 1
  br i1 %i.ae, label %.preheader63, label %.lr.ph72.preheader

.lr.ph72.preheader:                               ; preds = %._crit_edge
  %wide.trip.count = zext i32 %i.a to i64         ; 2 uses
  %i.af = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %min.iters.check = icmp ult i32 %i.a, 9
  %n.vec = and i64 %i.af, -8                      ; 3 uses
  %i.ag = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br label %.lr.ph72

.preheader63:                                     ; preds = %._crit_edge73, %._crit_edge
  %i.ah = icmp slt i32 %0, 1
  br i1 %i.ah, label %.loopexit, label %.lr.ph81.preheader

.lr.ph81.preheader:                               ; preds = %.preheader63
  %wide.trip.count95 = zext i32 %i.a to i64       ; 2 uses
  %i.ai = add nsw i64 %wide.trip.count95, -1      ; 2 uses
  %min.iters.check119 = icmp ult i32 %i.a, 9
  %n.vec121 = and i64 %i.ai, -8                   ; 3 uses
  %i.aj = or disjoint i64 %n.vec121, 1
  %cmp.n133 = icmp eq i64 %i.ai, %n.vec121
  br label %.lr.ph81

.lr.ph72:                                         ; preds = %.lr.ph72.preheader, %._crit_edge73
  %.274 = phi i32 [ %i.az, %._crit_edge73 ], [ 0, %.lr.ph72.preheader ]
  %i.ak = load i32, ptr %.pre, align 4, !tbaa !27 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph72
  %vector.recur.init = insertelement <4 x i32> poison, i32 %i.ak, i64 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <4 x i32> [ %vector.recur.init, %vector.ph ], [ %i.aq, %vector.body ]
  %i.al = getelementptr [4 x i8], ptr %.pre, i64 %index ; 5 uses
  %i.am = getelementptr i8, ptr %i.al, i64 4
  %i.an = getelementptr i8, ptr %i.al, i64 20
  %wide.load = load <4 x i32>, ptr %i.am, align 4, !tbaa !27
  %wide.load115 = load <4 x i32>, ptr %i.an, align 4, !tbaa !27
  %i.ao = getelementptr i8, ptr %i.al, i64 16     ; 2 uses
  %wide.load116 = load <4 x i32>, ptr %i.al, align 4, !tbaa !27
  %wide.load117 = load <4 x i32>, ptr %i.ao, align 4, !tbaa !27
  %i.ap = add nsw <4 x i32> %wide.load116, %wide.load ; 2 uses
  %i.aq = add nsw <4 x i32> %wide.load117, %wide.load115 ; 3 uses
  %i.ar = shufflevector <4 x i32> %vector.recur, <4 x i32> %i.ap, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.as = shufflevector <4 x i32> %i.ap, <4 x i32> %i.aq, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  store <4 x i32> %i.ar, ptr %i.al, align 4, !tbaa !27
  store <4 x i32> %i.as, ptr %i.ao, align 4, !tbaa !27
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !3519

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %i.aq, i64 3
  br i1 %cmp.n, label %._crit_edge73, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph72, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %.lr.ph72 ], [ %i.ag, %middle.block ]
  %.05270.ph = phi i32 [ %i.ak, %.lr.ph72 ], [ %vector.recur.extract, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.05270 = phi i32 [ %i.ay, %scalar.ph ], [ %.05270.ph, %scalar.ph.preheader ]
  %i.au = getelementptr [4 x i8], ptr %.pre, i64 %indvars.iv ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !27
  %i.aw = getelementptr i8, ptr %i.au, i64 -4     ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !27
  %i.ay = add nsw i32 %i.ax, %i.av
  store i32 %.05270, ptr %i.aw, align 4, !tbaa !27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge73, label %scalar.ph, !llvm.loop !3520

._crit_edge73:                                    ; preds = %scalar.ph, %middle.block
  %i.az = add nuw nsw i32 %.274, 1                ; 2 uses
  %exitcond91.not = icmp eq i32 %i.az, %i.ad
  br i1 %exitcond91.not, label %.preheader63, label %.lr.ph72, !llvm.loop !3521

.lr.ph81:                                         ; preds = %.lr.ph81.preheader, %._crit_edge82
  %.383 = phi i32 [ %i.bq, %._crit_edge82 ], [ 0, %.lr.ph81.preheader ]
  %i.ba = load i32, ptr %.pre, align 4, !tbaa !27
  %i.bb = sub nsw i32 0, %i.ba                    ; 2 uses
  br i1 %min.iters.check119, label %scalar.ph118.preheader, label %vector.ph120

vector.ph120:                                     ; preds = %.lr.ph81
  %vector.recur.init124 = insertelement <4 x i32> poison, i32 %i.bb, i64 3
  br label %vector.body122

vector.body122:                                   ; preds = %vector.body122, %vector.ph120
  %index123 = phi i64 [ 0, %vector.ph120 ], [ %index.next130, %vector.body122 ] ; 2 uses
  %vector.recur125 = phi <4 x i32> [ %vector.recur.init124, %vector.ph120 ], [ %i.bh, %vector.body122 ]
  %i.bc = getelementptr [4 x i8], ptr %.pre, i64 %index123 ; 5 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 4
  %i.be = getelementptr i8, ptr %i.bc, i64 16     ; 2 uses
  %wide.load126 = load <4 x i32>, ptr %i.bc, align 4, !tbaa !27
  %wide.load127 = load <4 x i32>, ptr %i.be, align 4, !tbaa !27
  %i.bf = getelementptr i8, ptr %i.bc, i64 20
  %wide.load128 = load <4 x i32>, ptr %i.bd, align 4, !tbaa !27
  %wide.load129 = load <4 x i32>, ptr %i.bf, align 4, !tbaa !27
  %i.bg = sub nsw <4 x i32> %wide.load126, %wide.load128 ; 2 uses
  %i.bh = sub nsw <4 x i32> %wide.load127, %wide.load129 ; 3 uses
  %i.bi = shufflevector <4 x i32> %vector.recur125, <4 x i32> %i.bg, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.bj = shufflevector <4 x i32> %i.bg, <4 x i32> %i.bh, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  store <4 x i32> %i.bi, ptr %i.bc, align 4, !tbaa !27
  store <4 x i32> %i.bj, ptr %i.be, align 4, !tbaa !27
  %index.next130 = add nuw i64 %index123, 8       ; 2 uses
  %i.bk = icmp eq i64 %index.next130, %n.vec121
  br i1 %i.bk, label %middle.block131, label %vector.body122, !llvm.loop !3522

middle.block131:                                  ; preds = %vector.body122
  %vector.recur.extract132 = extractelement <4 x i32> %i.bh, i64 3
  br i1 %cmp.n133, label %._crit_edge82, label %scalar.ph118.preheader

scalar.ph118.preheader:                           ; preds = %.lr.ph81, %middle.block131
  %indvars.iv92.ph = phi i64 [ 1, %.lr.ph81 ], [ %i.aj, %middle.block131 ]
  %.179.ph = phi i32 [ %i.bb, %.lr.ph81 ], [ %vector.recur.extract132, %middle.block131 ]
  br label %scalar.ph118

scalar.ph118:                                     ; preds = %scalar.ph118.preheader, %scalar.ph118
  %indvars.iv92 = phi i64 [ %indvars.iv.next93, %scalar.ph118 ], [ %indvars.iv92.ph, %scalar.ph118.preheader ] ; 2 uses
  %.179 = phi i32 [ %i.bp, %scalar.ph118 ], [ %.179.ph, %scalar.ph118.preheader ]
  %i.bl = getelementptr [4 x i8], ptr %.pre, i64 %indvars.iv92 ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 -4     ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !27
  %i.bo = load i32, ptr %i.bl, align 4, !tbaa !27
  %i.bp = sub nsw i32 %i.bn, %i.bo
  store i32 %.179, ptr %i.bm, align 4, !tbaa !27
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1 ; 2 uses
  %exitcond96.not = icmp eq i64 %indvars.iv.next93, %wide.trip.count95
  br i1 %exitcond96.not, label %._crit_edge82, label %scalar.ph118, !llvm.loop !3523

._crit_edge82:                                    ; preds = %scalar.ph118, %middle.block131
  %i.bq = add nuw nsw i32 %.383, 1                ; 2 uses
  %exitcond97.not = icmp eq i32 %i.bq, %0
  br i1 %exitcond97.not, label %.loopexit, label %.lr.ph81, !llvm.loop !3524

.loopexit:                                        ; preds = %._crit_edge82, %.preheader63.thread, %.preheader, %.preheader63
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6cvtest19calcLaplaceKernel2DEi(ptr dead_on_unwind noalias nonnull writable sret(%"class.cv::Mat") align 8 %0, i32 noundef %1) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector", align 8       ; 10 uses
  %3 = alloca %"class.std::vector", align 8       ; 13 uses
  %i.a = icmp eq i32 %1, 1
  %i.b = select i1 %i.a, i32 3, i32 %1            ; 7 uses
  tail call void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %i.b, i32 noundef %i.b, i32 noundef 5)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  invoke fastcc void @_ZN6cvtestL17calcSobelKernel1DEiiiRSt6vectorIiSaIiEE(i32 noundef 2, i32 noundef %1, i32 noundef %i.b, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = icmp sgt i32 %1, 1
  br i1 %i.c, label %bb.c, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_ZN6cvtestL17calcSobelKernel1DEiiiRSt6vectorIiSaIiEE(i32 noundef 0, i32 noundef %1, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i, %bb.c, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %3, align 8, !tbaa !36     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !94
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #32
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.k = load ptr, ptr %2, align 8, !tbaa !36     ; 3 uses
  %.not.i.i.i26 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i26, label %_ZNSt6vectorIiSaIiEED2Ev.exit27, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !94
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #32
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit27
end_hunk_3
