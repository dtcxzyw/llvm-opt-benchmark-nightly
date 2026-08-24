Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/ts_func?download=true
inline.NumInlined: 3054
inline.NumDeleted: 870
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 704
loop-unroll.NumUnrolled: 778
begin_hunk_0_@_ZN6cvtest8filter2DERKN2cv3MatERS1_iS3_NS0_6Point_IiEEdiRKNS0_7Scalar_IdEE:bb.a
  %i.di = sub i64 %i.dg, %i.dh                    ; 6 uses
  %i.dj = icmp eq i64 %i.di, 9223372036854775804
  br i1 %i.dj, label %bb.ae, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.121) #31
          to label %.noexc95 unwind label %.loopexit.split-lp

.noexc95:                                         ; preds = %bb.ae
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ad
  %i.dk = ashr exact i64 %i.di, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dk, i64 1)
  %i.dl = add nsw i64 %.sroa.speculated.i.i.i.i, %i.dk ; 2 uses
  %i.dm = icmp ult i64 %i.dl, %i.dk
  %i.dn = call i64 @llvm.umin.i64(i64 %i.dl, i64 2305843009213693951)
  %i.do = select i1 %i.dm, i64 2305843009213693951, i64 %i.dn ; 3 uses
  %.not.i.i.i.i94 = icmp ne i64 %i.do, 0
  call void @llvm.assume(i1 %.not.i.i.i.i94)
  %i.dp = shl nuw nsw i64 %i.do, 2
  %i.dq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dp) #33
          to label %.noexc96 unwind label %.loopexit314 ; 4 uses

.noexc96:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 %i.di ; 2 uses
  store i32 %i.df, ptr %i.dr, align 4, !tbaa !17
  %i.ds = icmp sgt i64 %i.di, 0
  br i1 %i.ds, label %bb.af, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.af:                                            ; preds = %.noexc96
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dq, ptr align 4 %.sroa.0266.1335, i64 %i.di, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.af, %.noexc96
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0266.1335, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0266.1335, i64 noundef %i.di) #32
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.ag, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %i.do
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.ac
  %.sroa.0266.5 = phi ptr [ %i.dq, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.0266.1335, %bb.ac ] ; 2 uses
  %.pn299 = phi ptr [ %i.dr, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.15.1336, %bb.ac ]
  %.sroa.25.5 = phi ptr [ %i.dt, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.25.1337, %bb.ac ] ; 2 uses
  %.sroa.15.2 = getelementptr inbounds nuw i8, ptr %.pn299, i64 4 ; 2 uses
  %i.du = add nuw nsw i32 %.0338, 1               ; 2 uses
  %i.dv = load i32, ptr %i.ah, align 4, !tbaa !1304 ; 2 uses
  %i.dw = icmp slt i32 %i.du, %i.dv
  br i1 %i.dw, label %bb.ab, label %._crit_edge.loopexit, !llvm.loop !1503

.loopexit314:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit258

.loopexit.split-lp:                               ; preds = %bb.ae
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit258

bb.ah:                                            ; preds = %._crit_edge345
  %i.dx = getelementptr inbounds nuw i8, ptr %10, i64 24
  %.val57 = load ptr, ptr %i.dx, align 8
  %.val58 = load i64, ptr %i.bz, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !1304
  %i.ea = load i32, ptr %11, align 8, !tbaa !45
  %i.eb = lshr i32 %i.ea, 5
  %i.ec = and i32 %i.eb, 127
  %i.ed = add nuw nsw i32 %i.ec, 1
  %i.ee = mul i32 %i.ed, %i.dz                    ; 3 uses
  %i.ef = ptrtoint ptr %.sroa.0266.0.lcssa to i64
  %i.eg = sub i64 %.sroa.15.0.lcssa, %i.ef        ; 3 uses
  %i.eh = lshr i64 %i.eg, 2                       ; 3 uses
  %i.ei = trunc i64 %i.eh to i32
  %i.ej = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !52 ; 4 uses
  %i.el = icmp sgt i32 %i.ek, 0
  br i1 %i.el, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.ah
  %i.em = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !53 ; 10 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %11, i64 128
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !18 ; 10 uses
  %i.eq = icmp sgt i32 %i.ee, 0
  br i1 %i.eq, label %.lr.ph.split.i, label %.loopexit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.er = icmp sgt i32 %i.ei, 0
  br i1 %i.er, label %.preheader.lr.ph.us.preheader.i, label %.preheader.lr.ph.preheader.i

.preheader.lr.ph.preheader.i:                     ; preds = %.lr.ph.split.i
  %i.es = zext nneg i32 %i.ee to i64
  %i.et = shl nuw nsw i64 %i.es, 3                ; 9 uses
  %wide.trip.count.i = zext nneg i32 %i.ek to i64 ; 2 uses
  %xtraiter561 = and i64 %wide.trip.count.i, 7    ; 3 uses
  %i.eu = icmp ult i32 %i.ek, 8
  br i1 %i.eu, label %.preheader.lr.ph.i.epil.preheader, label %.preheader.lr.ph.preheader.i.new

.preheader.lr.ph.preheader.i.new:                 ; preds = %.preheader.lr.ph.preheader.i
  %unroll_iter565.a = and i64 %wide.trip.count.i, 2147483640
  br label %.preheader.lr.ph.i

.preheader.lr.ph.us.preheader.i:                  ; preds = %.lr.ph.split.i
  %wide.trip.count26.i = zext nneg i32 %i.ek to i64
  %wide.trip.count21.i = zext nneg i32 %i.ee to i64
  %i.ev = and i64 %i.eg, 8589934588
  %i.ew = icmp eq i64 %i.ev, 4
  %unroll_iter573 = and i64 %i.eh, 2147483646
  %i.ex = and i64 %i.eg, 4
  %lcmp.mod570.not = icmp eq i64 %i.ex, 0
  %lcmp.mod572 = trunc i64 %i.eh to i1
  br label %.preheader.lr.ph.us.i

.preheader.lr.ph.us.i:                            ; preds = %._crit_edge6.split.us.us.i, %.preheader.lr.ph.us.preheader.i
  %indvars.iv23.i = phi i64 [ 0, %.preheader.lr.ph.us.preheader.i ], [ %indvars.iv.next24.i, %._crit_edge6.split.us.us.i ] ; 3 uses
  %i.ey = mul i64 %indvars.iv23.i, %.val58
  %i.ez = getelementptr inbounds nuw i8, ptr %.val57, i64 %i.ey ; 3 uses
  %i.fa = mul i64 %indvars.iv23.i, %i.ep
  %i.fb = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.fa
  br label %.preheader.us.us.i

.preheader.us.us.i:                               ; preds = %._crit_edge.us.us.i, %.preheader.lr.ph.us.i
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %._crit_edge.us.us.i ], [ 0, %.preheader.lr.ph.us.i ] ; 3 uses
  %i.fc = trunc nuw nsw i64 %indvars.iv18.i to i32 ; 3 uses
  br i1 %i.ew, label %.epil.preheader567, label %.preheader.us.us.i.new

.preheader.us.us.i.new:                           ; preds = %.preheader.us.us.i, %.preheader.us.us.i.new
  %indvars.iv13.i = phi i64 [ %indvars.iv.next14.i.1, %.preheader.us.us.i.new ], [ 0, %.preheader.us.us.i ] ; 4 uses
  %.0273.us.us.i = phi double [ %i.fw, %.preheader.us.us.i.new ], [ 0.000000e+00, %.preheader.us.us.i ]
  %niter574 = phi i64 [ %niter574.next.1, %.preheader.us.us.i.new ], [ 0, %.preheader.us.us.i ]
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0266.0.lcssa, i64 %indvars.iv13.i
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !17
  %i.ff = add nsw i32 %i.fe, %i.fc
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr inbounds i8, ptr %i.ez, i64 %i.fg
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !16
  %i.fj = uitofp i8 %i.fi to double
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv13.i
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !31
  %i.fm = call double @llvm.fmuladd.f64(double %i.fj, double %i.fl, double %.0273.us.us.i)
  %indvars.iv.next14.i = or disjoint i64 %indvars.iv13.i, 1 ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0266.0.lcssa, i64 %indvars.iv.next14.i
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !17
  %i.fp = add nsw i32 %i.fo, %i.fc
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds i8, ptr %i.ez, i64 %i.fq
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !16
  %i.ft = uitofp i8 %i.fs to double
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.next14.i
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !31
  %i.fw = call double @llvm.fmuladd.f64(double %i.ft, double %i.fv, double %i.fm) ; 3 uses
  %indvars.iv.next14.i.1 = add nuw nsw i64 %indvars.iv13.i, 2 ; 2 uses
  %niter574.next.1 = add i64 %niter574, 2         ; 2 uses
  %niter574.ncmp.1 = icmp eq i64 %niter574.next.1, %unroll_iter573
  br i1 %niter574.ncmp.1, label %._crit_edge.us.us.i.unr-lcssa, label %.preheader.us.us.i.new, !llvm.loop !1504

._crit_edge.us.us.i.unr-lcssa:                    ; preds = %.preheader.us.us.i.new
  br i1 %lcmp.mod570.not, label %._crit_edge.us.us.i, label %.epil.preheader567

.epil.preheader567:                               ; preds = %._crit_edge.us.us.i.unr-lcssa, %.preheader.us.us.i
  %indvars.iv13.i.epil.init = phi i64 [ 0, %.preheader.us.us.i ], [ %indvars.iv.next14.i.1, %._crit_edge.us.us.i.unr-lcssa ] ; 2 uses
  %.0273.us.us.i.epil.init = phi double [ 0.000000e+00, %.preheader.us.us.i ], [ %i.fw, %._crit_edge.us.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod572)
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0266.0.lcssa, i64 %indvars.iv13.i.epil.init
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !17
  %i.fz = add nsw i32 %i.fy, %i.fc
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr inbounds i8, ptr %i.ez, i64 %i.ga
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !16
  %i.gd = uitofp i8 %i.gc to double
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv13.i.epil.init
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !31
  %i.gg = call double @llvm.fmuladd.f64(double %i.gd, double %i.gf, double %.0273.us.us.i.epil.init)
  br label %._crit_edge.us.us.i

._crit_edge.us.us.i:                              ; preds = %._crit_edge.us.us.i.unr-lcssa, %.epil.preheader567
  %.lcssa = phi double [ %i.fw, %._crit_edge.us.us.i.unr-lcssa ], [ %i.gg, %.epil.preheader567 ]
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv18.i
  store double %.lcssa, ptr %i.gh, align 8, !tbaa !31
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1 ; 2 uses
  %exitcond22.not.i = icmp eq i64 %indvars.iv.next19.i, %wide.trip.count21.i
  br i1 %exitcond22.not.i, label %._crit_edge6.split.us.us.i, label %.preheader.us.us.i, !llvm.loop !1505

._crit_edge6.split.us.us.i:                       ; preds = %._crit_edge.us.us.i
  %indvars.iv.next24.i = add nuw nsw i64 %indvars.iv23.i, 1 ; 2 uses
  %exitcond27.not.i = icmp eq i64 %indvars.iv.next24.i, %wide.trip.count26.i
  br i1 %exitcond27.not.i, label %.loopexit, label %.preheader.lr.ph.us.i, !llvm.loop !1506

.preheader.lr.ph.i:                               ; preds = %.preheader.lr.ph.i, %.preheader.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.preheader.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.7, %.preheader.lr.ph.i ] ; 9 uses
  %niter566.a = phi i64 [ 0, %.preheader.lr.ph.preheader.i.new ], [ %niter566.next.7, %.preheader.lr.ph.i ]
  %i.gi = mul i64 %indvars.iv.i, %i.ep
  %i.gj = getelementptr i8, ptr %i.en, i64 %i.gi
  call void @llvm.memset.p0.i64(ptr align 8 %i.gj, i8 0, i64 %i.et, i1 false), !tbaa !31
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1
  %i.gk = mul i64 %indvars.iv.next.i, %i.ep
  %i.gl = getelementptr i8, ptr %i.en, i64 %i.gk
  call void @llvm.memset.p0.i64(ptr align 8 %i.gl, i8 0, i64 %i.et, i1 false), !tbaa !31
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2
  %i.gm = mul i64 %indvars.iv.next.i.1, %i.ep
  %i.gn = getelementptr i8, ptr %i.en, i64 %i.gm
  call void @llvm.memset.p0.i64(ptr align 8 %i.gn, i8 0, i64 %i.et, i1 false), !tbaa !31
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3
  %i.go = mul i64 %indvars.iv.next.i.2, %i.ep
  %i.gp = getelementptr i8, ptr %i.en, i64 %i.go
  call void @llvm.memset.p0.i64(ptr align 8 %i.gp, i8 0, i64 %i.et, i1 false), !tbaa !31
  %indvars.iv.next.i.3 = or disjoint i64 %indvars.iv.i, 4
  %i.gq = mul i64 %indvars.iv.next.i.3, %i.ep
  %i.gr = getelementptr i8, ptr %i.en, i64 %i.gq
  call void @llvm.memset.p0.i64(ptr align 8 %i.gr, i8 0, i64 %i.et, i1 false), !tbaa !31
  %indvars.iv.next.i.4 = or disjoint i64 %indvars.iv.i, 5
  %i.gs = mul i64 %indvars.iv.next.i.4, %i.ep
  %i.gt = getelementptr i8, ptr %i.en, i64 %i.gs
  call void @llvm.memset.p0.i64(ptr align 8 %i.gt, i8 0, i64 %i.et, i1 false), !tbaa !31
  %indvars.iv.next.i.5 = or disjoint i64 %indvars.iv.i, 6
  %i.gu = mul i64 %indvars.iv.next.i.5, %i.ep
  %i.gv = getelementptr i8, ptr %i.en, i64 %i.gu
  call void @llvm.memset.p0.i64(ptr align 8 %i.gv, i8 0, i64 %i.et, i1 false), !tbaa !31
  %indvars.iv.next.i.6 = or disjoint i64 %indvars.iv.i, 7
  %i.gw = mul i64 %indvars.iv.next.i.6, %i.ep
  %i.gx = getelementptr i8, ptr %i.en, i64 %i.gw
  call void @llvm.memset.p0.i64(ptr align 8 %i.gx, i8 0, i64 %i.et, i1 false), !tbaa !31
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter566.next.7 = add i64 %niter566.a, 8       ; 2 uses
  %niter566.ncmp.7 = icmp eq i64 %niter566.next.7, %unroll_iter565.a
  br i1 %niter566.ncmp.7, label %.loopexit.loopexit459.unr-lcssa, label %.preheader.lr.ph.i, !llvm.loop !1506

bb.ai:                                            ; preds = %._crit_edge345
  %i.gy = getelementptr inbounds nuw i8, ptr %10, i64 24
  %.val62 = load ptr, ptr %i.gy, align 8
  %.val63 = load i64, ptr %i.bz, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !1304
  %i.hb = load i32, ptr %11, align 8, !tbaa !45
  %i.hc = lshr i32 %i.hb, 5
  %i.hd = and i32 %i.hc, 127
  %i.he = add nuw nsw i32 %i.hd, 1
  %i.hf = mul i32 %i.he, %i.ha                    ; 3 uses
  %i.hg = ptrtoint ptr %.sroa.0266.0.lcssa to i64
  %i.hh = sub i64 %.sroa.15.0.lcssa, %i.hg        ; 3 uses
  %i.hi = lshr i64 %i.hh, 2                       ; 3 uses
  %i.hj = trunc i64 %i.hi to i32
  %i.hk = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !52 ; 4 uses
  %i.hm = icmp sgt i32 %i.hl, 0
  br i1 %i.hm, label %.lr.ph.i97, label %.loopexit

.lr.ph.i97:                                       ; preds = %bb.ai
  %i.hn = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !53 ; 10 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %11, i64 128
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !18 ; 10 uses
  %i.hr = icmp sgt i32 %i.hf, 0
  br i1 %i.hr, label %.lr.ph.split.i98, label %.loopexit

.lr.ph.split.i98:                                 ; preds = %.lr.ph.i97
  %i.hs = icmp sgt i32 %i.hj, 0
  br i1 %i.hs, label %.preheader.lr.ph.us.preheader.i105, label %.preheader.lr.ph.preheader.i99

.preheader.lr.ph.preheader.i99:                   ; preds = %.lr.ph.split.i98
  %i.ht = zext nneg i32 %i.hf to i64
  %i.hu = shl nuw nsw i64 %i.ht, 3                ; 9 uses
  %wide.trip.count.i100 = zext nneg i32 %i.hl to i64 ; 2 uses
  %xtraiter547 = and i64 %wide.trip.count.i100, 7 ; 3 uses
  %i.hv = icmp ult i32 %i.hl, 8
  br i1 %i.hv, label %.preheader.lr.ph.i101.epil.preheader, label %.preheader.lr.ph.preheader.i99.new

.preheader.lr.ph.preheader.i99.new:               ; preds = %.preheader.lr.ph.preheader.i99
  %unroll_iter551.a = and i64 %wide.trip.count.i100, 2147483640
  br label %.preheader.lr.ph.i101

.preheader.lr.ph.us.preheader.i105:               ; preds = %.lr.ph.split.i98
  %wide.trip.count26.i106 = zext nneg i32 %i.hl to i64
  %wide.trip.count21.i107 = zext nneg i32 %i.hf to i64
  %i.hw = and i64 %i.hh, 8589934588
  %i.hx = icmp eq i64 %i.hw, 4
  %unroll_iter559 = and i64 %i.hi, 2147483646
  %i.hy = and i64 %i.hh, 4
  %lcmp.mod556.not = icmp eq i64 %i.hy, 0
  %lcmp.mod558 = trunc i64 %i.hi to i1
  br label %.preheader.lr.ph.us.i109

.preheader.lr.ph.us.i109:                         ; preds = %._crit_edge6.split.us.us.i120, %.preheader.lr.ph.us.preheader.i105
  %indvars.iv23.i110 = phi i64 [ 0, %.preheader.lr.ph.us.preheader.i105 ], [ %indvars.iv.next24.i121, %._crit_edge6.split.us.us.i120 ] ; 3 uses
  %i.hz = mul i64 %indvars.iv23.i110, %.val63
  %i.ia = getelementptr inbounds nuw i8, ptr %.val62, i64 %i.hz ; 3 uses
  %i.ib = mul i64 %indvars.iv23.i110, %i.hq
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ho, i64 %i.ib
  br label %.preheader.us.us.i111

.preheader.us.us.i111:                            ; preds = %._crit_edge.us.us.i117, %.preheader.lr.ph.us.i109
  %indvars.iv18.i112 = phi i64 [ %indvars.iv.next19.i118, %._crit_edge.us.us.i117 ], [ 0, %.preheader.lr.ph.us.i109 ] ; 3 uses
  %i.id = trunc nuw nsw i64 %indvars.iv18.i112 to i32 ; 3 uses
  br i1 %i.hx, label %.epil.preheader553, label %.preheader.us.us.i111.new

.preheader.us.us.i111.new:                        ; preds = %.preheader.us.us.i111, %.preheader.us.us.i111.new
  %indvars.iv13.i113 = phi i64 [ %indvars.iv.next14.i115.1, %.preheader.us.us.i111.new ], [ 0, %.preheader.us.us.i111 ] ; 4 uses
  %.0273.us.us.i114 = phi double [ %i.ix, %.preheader.us.us.i111.new ], [ 0.000000e+00, %.preheader.us.us.i111 ]
  %niter560 = phi i64 [ %niter560.next.1, %.preheader.us.us.i111.new ], [ 0, %.preheader.us.us.i111 ]
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0266.0.lcssa, i64 %indvars.iv13.i113
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !17
  %i.ig = add nsw i32 %i.if, %i.id
  %i.ih = sext i32 %i.ig to i64
  %i.ii = getelementptr inbounds i8, ptr %i.ia, i64 %i.ih
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !16
  %i.ik = sitofp i8 %i.ij to double
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv13.i113
  %i.im = load double, ptr %i.il, align 8, !tbaa !31
  %i.in = call double @llvm.fmuladd.f64(double %i.ik, double %i.im, double %.0273.us.us.i114)
  %indvars.iv.next14.i115 = or disjoint i64 %indvars.iv13.i113, 1 ; 2 uses
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0266.0.lcssa, i64 %indvars.iv.next14.i115
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !17
  %i.iq = add nsw i32 %i.ip, %i.id
  %i.ir = sext i32 %i.iq to i64
  %i.is = getelementptr inbounds i8, ptr %i.ia, i64 %i.ir
  %i.it = load i8, ptr %i.is, align 1, !tbaa !16
  %i.iu = sitofp i8 %i.it to double
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.next14.i115
  %i.iw = load double, ptr %i.iv, align 8, !tbaa !31
  %i.ix = call double @llvm.fmuladd.f64(double %i.iu, double %i.iw, double %i.in) ; 3 uses
  %indvars.iv.next14.i115.1 = add nuw nsw i64 %indvars.iv13.i113, 2 ; 2 uses
  %niter560.next.1 = add i64 %niter560, 2         ; 2 uses
  %niter560.ncmp.1 = icmp eq i64 %niter560.next.1, %unroll_iter559
  br i1 %niter560.ncmp.1, label %._crit_edge.us.us.i117.unr-lcssa, label %.preheader.us.us.i111.new, !llvm.loop !1507

._crit_edge.us.us.i117.unr-lcssa:                 ; preds = %.preheader.us.us.i111.new
  br i1 %lcmp.mod556.not, label %._crit_edge.us.us.i117, label %.epil.preheader553

.epil.preheader553:                               ; preds = %._crit_edge.us.us.i117.unr-lcssa, %.preheader.us.us.i111
  %indvars.iv13.i113.epil.init = phi i64 [ 0, %.preheader.us.us.i111 ], [ %indvars.iv.next14.i115.1, %._crit_edge.us.us.i117.unr-lcssa ] ; 2 uses
  %.0273.us.us.i114.epil.init = phi double [ 0.000000e+00, %.preheader.us.us.i111 ], [ %i.ix, %._crit_edge.us.us.i117.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod558)
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0266.0.lcssa, i64 %indvars.iv13.i113.epil.init
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !17
  %i.ja = add nsw i32 %i.iz, %i.id
  %i.jb = sext i32 %i.ja to i64
  %i.jc = getelementptr inbounds i8, ptr %i.ia, i64 %i.jb
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !16
  %i.je = sitofp i8 %i.jd to double
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv13.i113.epil.init
  %i.jg = load double, ptr %i.jf, align 8, !tbaa !31
  %i.jh = call double @llvm.fmuladd.f64(double %i.je, double %i.jg, double %.0273.us.us.i114.epil.init)
  br label %._crit_edge.us.us.i117

._crit_edge.us.us.i117:                           ; preds = %._crit_edge.us.us.i117.unr-lcssa, %.epil.preheader553
  %.lcssa461 = phi double [ %i.ix, %._crit_edge.us.us.i117.unr-lcssa ], [ %i.jh, %.epil.preheader553 ]
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %indvars.iv18.i112
  store double %.lcssa461, ptr %i.ji, align 8, !tbaa !31
  %indvars.iv.next19.i118 = add nuw nsw i64 %indvars.iv18.i112, 1 ; 2 uses
  %exitcond22.not.i119 = icmp eq i64 %indvars.iv.next19.i118, %wide.trip.count21.i107
  br i1 %exitcond22.not.i119, label %._crit_edge6.split.us.us.i120, label %.preheader.us.us.i111, !llvm.loop !1508

._crit_edge6.split.us.us.i120:                    ; preds = %._crit_edge.us.us.i117
  %indvars.iv.next24.i121 = add nuw nsw i64 %indvars.iv23.i110, 1 ; 2 uses
  %exitcond27.not.i122 = icmp eq i64 %indvars.iv.next24.i121, %wide.trip.count26.i106
  br i1 %exitcond27.not.i122, label %.loopexit, label %.preheader.lr.ph.us.i109, !llvm.loop !1509

.preheader.lr.ph.i101:                            ; preds = %.preheader.lr.ph.i101, %.preheader.lr.ph.preheader.i99.new
  %indvars.iv.i102 = phi i64 [ 0, %.preheader.lr.ph.preheader.i99.new ], [ %indvars.iv.next.i103.7, %.preheader.lr.ph.i101 ] ; 9 uses
  %niter552.a = phi i64 [ 0, %.preheader.lr.ph.preheader.i99.new ], [ %niter552.next.7, %.preheader.lr.ph.i101 ]
  %i.jj = mul i64 %indvars.iv.i102, %i.hq
  %i.jk = getelementptr i8, ptr %i.ho, i64 %i.jj
  call void @llvm.memset.p0.i64(ptr align 8 %i.jk, i8 0, i64 %i.hu, i1 false), !tbaa !31
  %indvars.iv.next.i103 = or disjoint i64 %indvars.iv.i102, 1
  %i.jl = mul i64 %indvars.iv.next.i103, %i.hq
  %i.jm = getelementptr i8, ptr %i.ho, i64 %i.jl
  call void @llvm.memset.p0.i64(ptr align 8 %i.jm, i8 0, i64 %i.hu, i1 false), !tbaa !31
  %indvars.iv.next.i103.1 = or disjoint i64 %indvars.iv.i102, 2
  %i.jn = mul i64 %indvars.iv.next.i103.1, %i.hq
  %i.jo = getelementptr i8, ptr %i.ho, i64 %i.jn
  call void @llvm.memset.p0.i64(ptr align 8 %i.jo, i8 0, i64 %i.hu, i1 false), !tbaa !31
  %indvars.iv.next.i103.2 = or disjoint i64 %indvars.iv.i102, 3
  %i.jp = mul i64 %indvars.iv.next.i103.2, %i.hq
  %i.jq = getelementptr i8, ptr %i.ho, i64 %i.jp
  call void @llvm.memset.p0.i64(ptr align 8 %i.jq, i8 0, i64 %i.hu, i1 false), !tbaa !31
  %indvars.iv.next.i103.3 = or disjoint i64 %indvars.iv.i102, 4
  %i.jr = mul i64 %indvars.iv.next.i103.3, %i.hq
  %i.js = getelementptr i8, ptr %i.ho, i64 %i.jr
  call void @llvm.memset.p0.i64(ptr align 8 %i.js, i8 0, i64 %i.hu, i1 false), !tbaa !31
  %indvars.iv.next.i103.4 = or disjoint i64 %indvars.iv.i102, 5
  %i.jt = mul i64 %indvars.iv.next.i103.4, %i.hq
  %i.ju = getelementptr i8, ptr %i.ho, i64 %i.jt
  call void @llvm.memset.p0.i64(ptr align 8 %i.ju, i8 0, i64 %i.hu, i1 false), !tbaa !31
  %indvars.iv.next.i103.5 = or disjoint i64 %indvars.iv.i102, 6
  %i.jv = mul i64 %indvars.iv.next.i103.5, %i.hq
  %i.jw = getelementptr i8, ptr %i.ho, i64 %i.jv
  call void @llvm.memset.p0.i64(ptr align 8 %i.jw, i8 0, i64 %i.hu, i1 false), !tbaa !31
  %indvars.iv.next.i103.6 = or disjoint i64 %indvars.iv.i102, 7
  %i.jx = mul i64 %indvars.iv.next.i103.6, %i.hq
  %i.jy = getelementptr i8, ptr %i.ho, i64 %i.jx
  call void @llvm.memset.p0.i64(ptr align 8 %i.jy, i8 0, i64 %i.hu, i1 false), !tbaa !31
  %indvars.iv.next.i103.7 = add nuw nsw i64 %indvars.iv.i102, 8 ; 2 uses
  %niter552.next.7 = add i64 %niter552.a, 8       ; 2 uses
  %niter552.ncmp.7 = icmp eq i64 %niter552.next.7, %unroll_iter551.a
  br i1 %niter552.ncmp.7, label %.loopexit.loopexit462.unr-lcssa, label %.preheader.lr.ph.i101, !llvm.loop !1509

bb.aj:                                            ; preds = %._crit_edge345
  %i.jz = getelementptr inbounds nuw i8, ptr %10, i64 24
  %.val67 = load ptr, ptr %i.jz, align 8
  %.val68 = load i64, ptr %i.bz, align 8
  %i.ka = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !1304
  %i.kc = load i32, ptr %11, align 8, !tbaa !45
  %i.kd = lshr i32 %i.kc, 5
  %i.ke = and i32 %i.kd, 127
  %i.kf = add nuw nsw i32 %i.ke, 1
  %i.kg = mul i32 %i.kf, %i.kb                    ; 3 uses
  %i.kh = ptrtoint ptr %.sroa.0266.0.lcssa to i64
  %i.ki = sub i64 %.sroa.15.0.lcssa, %i.kh        ; 3 uses
  %i.kj = lshr i64 %i.ki, 2                       ; 3 uses
  %i.kk = trunc i64 %i.kj to i32
  %i.kl = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.km = load i32, ptr %i.kl, align 8, !tbaa !52 ; 4 uses
  %i.kn = icmp sgt i32 %i.km, 0
  br i1 %i.kn, label %.lr.ph.i123, label %.loopexit

.lr.ph.i123:                                      ; preds = %bb.aj
  %i.ko = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !53 ; 10 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %11, i64 128
  %i.kr = load i64, ptr %i.kq, align 8, !tbaa !18 ; 10 uses
  %i.ks = icmp sgt i32 %i.kg, 0
  br i1 %i.ks, label %.lr.ph.split.i124, label %.loopexit

.lr.ph.split.i124:                                ; preds = %.lr.ph.i123
  %i.kt = icmp sgt i32 %i.kk, 0
  br i1 %i.kt, label %.preheader.lr.ph.us.preheader.i131, label %.preheader.lr.ph.preheader.i125

.preheader.lr.ph.preheader.i125:                  ; preds = %.lr.ph.split.i124
  %i.ku = zext nneg i32 %i.kg to i64
  %i.kv = shl nuw nsw i64 %i.ku, 3                ; 9 uses
  %wide.trip.count.i126 = zext nneg i32 %i.km to i64 ; 2 uses
  %xtraiter533 = and i64 %wide.trip.count.i126, 7 ; 3 uses
  %i.kw = icmp ult i32 %i.km, 8
  br i1 %i.kw, label %.preheader.lr.ph.i127.epil.preheader, label %.preheader.lr.ph.preheader.i125.new

.preheader.lr.ph.preheader.i125.new:              ; preds = %.preheader.lr.ph.preheader.i125
  %unroll_iter537.a = and i64 %wide.trip.count.i126, 2147483640
  br label %.preheader.lr.ph.i127

.preheader.lr.ph.us.preheader.i131:               ; preds = %.lr.ph.split.i124
  %wide.trip.count26.i132 = zext nneg i32 %i.km to i64
  %wide.trip.count21.i133 = zext nneg i32 %i.kg to i64
  %i.kx = and i64 %i.ki, 8589934588
  %i.ky = icmp eq i64 %i.kx, 4
  %unroll_iter545 = and i64 %i.kj, 2147483646
  %i.kz = and i64 %i.ki, 4
  %lcmp.mod542.not = icmp eq i64 %i.kz, 0
  %lcmp.mod544 = trunc i64 %i.kj to i1
  br label %.preheader.lr.ph.us.i135

.preheader.lr.ph.us.i135:                         ; preds = %._crit_edge6.split.us.us.i146, %.preheader.lr.ph.us.preheader.i131
  %indvars.iv23.i136 = phi i64 [ 0, %.preheader.lr.ph.us.preheader.i131 ], [ %indvars.iv.next24.i147, %._crit_edge6.split.us.us.i146 ] ; 3 uses
  %i.la = mul i64 %indvars.iv23.i136, %.val68
  %i.lb = getelementptr inbounds nuw i8, ptr %.val67, i64 %i.la ; 3 uses
  %i.lc = mul i64 %indvars.iv23.i136, %i.kr
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kp, i64 %i.lc
  br label %.preheader.us.us.i137

.preheader.us.us.i137:                            ; preds = %._crit_edge.us.us.i143, %.preheader.lr.ph.us.i135
  %indvars.iv18.i138 = phi i64 [ %indvars.iv.next19.i144, %._crit_edge.us.us.i143 ], [ 0, %.preheader.lr.ph.us.i135 ] ; 3 uses
  %i.le = trunc nuw nsw i64 %indvars.iv18.i138 to i32 ; 3 uses
  br i1 %i.ky, label %.epil.preheader539, label %.preheader.us.us.i137.new

.preheader.us.us.i137.new:                        ; preds = %.preheader.us.us.i137, %.preheader.us.us.i137.new
  %indvars.iv13.i139 = phi i64 [ %indvars.iv.next14.i141.1, %.preheader.us.us.i137.new ], [ 0, %.preheader.us.us.i137 ] ; 4 uses
  %.0273.us.us.i140 = phi double [ %i.ly, %.preheader.us.us.i137.new ], [ 0.000000e+00, %.preheader.us.us.i137 ]
  %niter546 = phi i64 [ %niter546.next.1, %.preheader.us.us.i137.new ], [ 0, %.preheader.us.us.i137 ]
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0266.0.lcssa, i64 %indvars.iv13.i139
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !17
  %i.lh = add nsw i32 %i.lg, %i.le
  %i.li = sext i32 %i.lh to i64
  %i.lj = getelementptr inbounds [2 x i8], ptr %i.lb, i64 %i.li
  %i.lk = load i16, ptr %i.lj, align 2, !tbaa !146
  %i.ll = uitofp i16 %i.lk to double
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv13.i139
  %i.ln = load double, ptr %i.lm, align 8, !tbaa !31
  %i.lo = call double @llvm.fmuladd.f64(double %i.ll, double %i.ln, double %.0273.us.us.i140)
  %indvars.iv.next14.i141 = or disjoint i64 %indvars.iv13.i139, 1 ; 2 uses
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0266.0.lcssa, i64 %indvars.iv.next14.i141
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !17
  %i.lr = add nsw i32 %i.lq, %i.le
  %i.ls = sext i32 %i.lr to i64
  %i.lt = getelementptr inbounds [2 x i8], ptr %i.lb, i64 %i.ls
  %i.lu = load i16, ptr %i.lt, align 2, !tbaa !146
  %i.lv = uitofp i16 %i.lu to double
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.next14.i141
  %i.lx = load double, ptr %i.lw, align 8, !tbaa !31
  %i.ly = call double @llvm.fmuladd.f64(double %i.lv, double %i.lx, double %i.lo) ; 3 uses
  %indvars.iv.next14.i141.1 = add nuw nsw i64 %indvars.iv13.i139, 2 ; 2 uses
  %niter546.next.1 = add i64 %niter546, 2         ; 2 uses
  %niter546.ncmp.1 = icmp eq i64 %niter546.next.1, %unroll_iter545
  br i1 %niter546.ncmp.1, label %._crit_edge.us.us.i143.unr-lcssa, label %.preheader.us.us.i137.new, !llvm.loop !1510

._crit_edge.us.us.i143.unr-lcssa:                 ; preds = %.preheader.us.us.i137.new
  br i1 %lcmp.mod542.not, label %._crit_edge.us.us.i143, label %.epil.preheader539

.epil.preheader539:                               ; preds = %._crit_edge.us.us.i143.unr-lcssa, %.preheader.us.us.i137
  %indvars.iv13.i139.epil.init = phi i64 [ 0, %.preheader.us.us.i137 ], [ %indvars.iv.next14.i141.1, %._crit_edge.us.us.i143.unr-lcssa ] ; 2 uses
  %.0273.us.us.i140.epil.init = phi double [ 0.000000e+00, %.preheader.us.us.i137 ], [ %i.ly, %._crit_edge.us.us.i143.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod544)
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0266.0.lcssa, i64 %indvars.iv13.i139.epil.init
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !17
  %i.mb = add nsw i32 %i.ma, %i.le
  %i.mc = sext i32 %i.mb to i64
  %i.md = getelementptr inbounds [2 x i8], ptr %i.lb, i64 %i.mc
  %i.me = load i16, ptr %i.md, align 2, !tbaa !146
  %i.mf = uitofp i16 %i.me to double
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv13.i139.epil.init
  %i.mh = load double, ptr %i.mg, align 8, !tbaa !31
  %i.mi = call double @llvm.fmuladd.f64(double %i.mf, double %i.mh, double %.0273.us.us.i140.epil.init)
  br label %._crit_edge.us.us.i143

._crit_edge.us.us.i143:                           ; preds = %._crit_edge.us.us.i143.unr-lcssa, %.epil.preheader539
  %.lcssa464 = phi double [ %i.ly, %._crit_edge.us.us.i143.unr-lcssa ], [ %i.mi, %.epil.preheader539 ]
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %indvars.iv18.i138
  store double %.lcssa464, ptr %i.mj, align 8, !tbaa !31
  %indvars.iv.next19.i144 = add nuw nsw i64 %indvars.iv18.i138, 1 ; 2 uses
  %exitcond22.not.i145 = icmp eq i64 %indvars.iv.next19.i144, %wide.trip.count21.i133
  br i1 %exitcond22.not.i145, label %._crit_edge6.split.us.us.i146, label %.preheader.us.us.i137, !llvm.loop !1511

._crit_edge6.split.us.us.i146:                    ; preds = %._crit_edge.us.us.i143
  %indvars.iv.next24.i147 = add nuw nsw i64 %indvars.iv23.i136, 1 ; 2 uses
  %exitcond27.not.i148 = icmp eq i64 %indvars.iv.next24.i147, %wide.trip.count26.i132
  br i1 %exitcond27.not.i148, label %.loopexit, label %.preheader.lr.ph.us.i135, !llvm.loop !1512

.preheader.lr.ph.i127:                            ; preds = %.preheader.lr.ph.i127, %.preheader.lr.ph.preheader.i125.new
  %indvars.iv.i128 = phi i64 [ 0, %.preheader.lr.ph.preheader.i125.new ], [ %indvars.iv.next.i129.7, %.preheader.lr.ph.i127 ] ; 9 uses
  %niter538.a = phi i64 [ 0, %.preheader.lr.ph.preheader.i125.new ], [ %niter538.next.7, %.preheader.lr.ph.i127 ]
  %i.mk = mul i64 %indvars.iv.i128, %i.kr
  %i.ml = getelementptr i8, ptr %i.kp, i64 %i.mk
  call void @llvm.memset.p0.i64(ptr align 8 %i.ml, i8 0, i64 %i.kv, i1 false), !tbaa !31
  %indvars.iv.next.i129 = or disjoint i64 %indvars.iv.i128, 1
  %i.mm = mul i64 %indvars.iv.next.i129, %i.kr
  %i.mn = getelementptr i8, ptr %i.kp, i64 %i.mm
  call void @llvm.memset.p0.i64(ptr align 8 %i.mn, i8 0, i64 %i.kv, i1 false), !tbaa !31
  %indvars.iv.next.i129.1 = or disjoint i64 %indvars.iv.i128, 2
  %i.mo = mul i64 %indvars.iv.next.i129.1, %i.kr
  %i.mp = getelementptr i8, ptr %i.kp, i64 %i.mo
  call void @llvm.memset.p0.i64(ptr align 8 %i.mp, i8 0, i64 %i.kv, i1 false), !tbaa !31
  %indvars.iv.next.i129.2 = or disjoint i64 %indvars.iv.i128, 3
  %i.mq = mul i64 %indvars.iv.next.i129.2, %i.kr
  %i.mr = getelementptr i8, ptr %i.kp, i64 %i.mq
  call void @llvm.memset.p0.i64(ptr align 8 %i.mr, i8 0, i64 %i.kv, i1 false), !tbaa !31
  %indvars.iv.next.i129.3 = or disjoint i64 %indvars.iv.i128, 4
  %i.ms = mul i64 %indvars.iv.next.i129.3, %i.kr
  %i.mt = getelementptr i8, ptr %i.kp, i64 %i.ms
  call void @llvm.memset.p0.i64(ptr align 8 %i.mt, i8 0, i64 %i.kv, i1 false), !tbaa !31
  %indvars.iv.next.i129.4 = or disjoint i64 %indvars.iv.i128, 5
  %i.mu = mul i64 %indvars.iv.next.i129.4, %i.kr
  %i.mv = getelementptr i8, ptr %i.kp, i64 %i.mu
  call void @llvm.memset.p0.i64(ptr align 8 %i.mv, i8 0, i64 %i.kv, i1 false), !tbaa !31
  %indvars.iv.next.i129.5 = or disjoint i64 %indvars.iv.i128, 6
  %i.mw = mul i64 %indvars.iv.next.i129.5, %i.kr
  %i.mx = getelementptr i8, ptr %i.kp, i64 %i.mw
  call void @llvm.memset.p0.i64(ptr align 8 %i.mx, i8 0, i64 %i.kv, i1 false), !tbaa !31
  %indvars.iv.next.i129.6 = or disjoint i64 %indvars.iv.i128, 7
  %i.my = mul i64 %indvars.iv.next.i129.6, %i.kr
  %i.mz = getelementptr i8, ptr %i.kp, i64 %i.my
  call void @llvm.memset.p0.i64(ptr align 8 %i.mz, i8 0, i64 %i.kv, i1 false), !tbaa !31
  %indvars.iv.next.i129.7 = add nuw nsw i64 %indvars.iv.i128, 8 ; 2 uses
  %niter538.next.7 = add i64 %niter538.a, 8       ; 2 uses
  %niter538.ncmp.7 = icmp eq i64 %niter538.next.7, %unroll_iter537.a
  br i1 %niter538.ncmp.7, label %.loopexit.loopexit465.unr-lcssa, label %.preheader.lr.ph.i127, !llvm.loop !1512

bb.ak:                                            ; preds = %._crit_edge345
  %i.na = getelementptr inbounds nuw i8, ptr %10, i64 24
  %.val72 = load ptr, ptr %i.na, align 8
  %.val73 = load i64, ptr %i.bz, align 8
  %i.nb = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !1304
  %i.nd = load i32, ptr %11, align 8, !tbaa !45
  %i.ne = lshr i32 %i.nd, 5
  %i.nf = and i32 %i.ne, 127
  %i.ng = add nuw nsw i32 %i.nf, 1
  %i.nh = mul i32 %i.ng, %i.nc                    ; 3 uses
  %i.ni = ptrtoint ptr %.sroa.0266.0.lcssa to i64
  %i.nj = sub i64 %.sroa.15.0.lcssa, %i.ni        ; 3 uses
  %i.nk = lshr i64 %i.nj, 2                       ; 3 uses
  %i.nl = trunc i64 %i.nk to i32
  %i.nm = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.nn = load i32, ptr %i.nm, align 8, !tbaa !52 ; 4 uses
  %i.no = icmp sgt i32 %i.nn, 0
  br i1 %i.no, label %.lr.ph.i149, label %.loopexit

.lr.ph.i149:                                      ; preds = %bb.ak
  %i.np = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !53 ; 10 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %11, i64 128
  %i.ns = load i64, ptr %i.nr, align 8, !tbaa !18 ; 10 uses
  %i.nt = icmp sgt i32 %i.nh, 0
  br i1 %i.nt, label %.lr.ph.split.i150, label %.loopexit

.lr.ph.split.i150:                                ; preds = %.lr.ph.i149
  %i.nu = icmp sgt i32 %i.nl, 0
  br i1 %i.nu, label %.preheader.lr.ph.us.preheader.i157, label %.preheader.lr.ph.preheader.i151

.preheader.lr.ph.preheader.i151:                  ; preds = %.lr.ph.split.i150
  %i.nv = zext nneg i32 %i.nh to i64
  %i.nw = shl nuw nsw i64 %i.nv, 3                ; 9 uses
  %wide.trip.count.i152 = zext nneg i32 %i.nn to i64 ; 2 uses
  %xtraiter519 = and i64 %wide.trip.count.i152, 7 ; 3 uses
  %i.nx = icmp ult i32 %i.nn, 8
  br i1 %i.nx, label %.preheader.lr.ph.i153.epil.preheader, label %.preheader.lr.ph.preheader.i151.new

.preheader.lr.ph.preheader.i151.new:              ; preds = %.preheader.lr.ph.preheader.i151
  %unroll_iter523.a = and i64 %wide.trip.count.i152, 2147483640
  br label %.preheader.lr.ph.i153

.preheader.lr.ph.us.preheader.i157:               ; preds = %.lr.ph.split.i150
  %wide.trip.count26.i158 = zext nneg i32 %i.nn to i64
  %wide.trip.count21.i159 = zext nneg i32 %i.nh to i64
  %i.ny = and i64 %i.nj, 8589934588
  %i.nz = icmp eq i64 %i.ny, 4
  %unroll_iter531 = and i64 %i.nk, 2147483646
  %i.oa = and i64 %i.nj, 4
  %lcmp.mod528.not = icmp eq i64 %i.oa, 0
  %lcmp.mod530 = trunc i64 %i.nk to i1
  br label %.preheader.lr.ph.us.i161

.preheader.lr.ph.us.i161:                         ; preds = %._crit_edge6.split.us.us.i172, %.preheader.lr.ph.us.preheader.i157
  %indvars.iv23.i162 = phi i64 [ 0, %.preheader.lr.ph.us.preheader.i157 ], [ %indvars.iv.next24.i173, %._crit_edge6.split.us.us.i172 ] ; 3 uses
  %i.ob = mul i64 %indvars.iv23.i162, %.val73
  %i.oc = getelementptr inbounds nuw i8, ptr %.val72, i64 %i.ob ; 3 uses
  %i.od = mul i64 %indvars.iv23.i162, %i.ns
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nq, i64 %i.od
  br label %.preheader.us.us.i163

.preheader.us.us.i163:                            ; preds = %._crit_edge.us.us.i169, %.preheader.lr.ph.us.i161
  %indvars.iv18.i164 = phi i64 [ %indvars.iv.next19.i170, %._crit_edge.us.us.i169 ], [ 0, %.preheader.lr.ph.us.i161 ] ; 3 uses
  %i.of = trunc nuw nsw i64 %indvars.iv18.i164 to i32 ; 3 uses
  br i1 %i.nz, label %.epil.preheader525, label %.preheader.us.us.i163.new

.preheader.us.us.i163.new:                        ; preds = %.preheader.us.us.i163, %.preheader.us.us.i163.new
  %indvars.iv13.i165 = phi i64 [ %indvars.iv.next14.i167.1, %.preheader.us.us.i163.new ], [ 0, %.preheader.us.us.i163 ] ; 4 uses
  %.0273.us.us.i166 = phi double [ %i.oz, %.preheader.us.us.i163.new ], [ 0.000000e+00, %.preheader.us.us.i163 ]
  %niter532 = phi i64 [ %niter532.next.1, %.preheader.us.us.i163.new ], [ 0, %.preheader.us.us.i163 ]
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0266.0.lcssa, i64 %indvars.iv13.i165
  %i.oh = load i32, ptr %i.og, align 4, !tbaa !17
  %i.oi = add nsw i32 %i.oh, %i.of
  %i.oj = sext i32 %i.oi to i64
  %i.ok = getelementptr inbounds [2 x i8], ptr %i.oc, i64 %i.oj
  %i.ol = load i16, ptr %i.ok, align 2, !tbaa !146
  %i.om = sitofp i16 %i.ol to double
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv13.i165
  %i.oo = load double, ptr %i.on, align 8, !tbaa !31
  %i.op = call double @llvm.fmuladd.f64(double %i.om, double %i.oo, double %.0273.us.us.i166)
  %indvars.iv.next14.i167 = or disjoint i64 %indvars.iv13.i165, 1 ; 2 uses
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0266.0.lcssa, i64 %indvars.iv.next14.i167
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !17
  %i.os = add nsw i32 %i.or, %i.of
  %i.ot = sext i32 %i.os to i64
  %i.ou = getelementptr inbounds [2 x i8], ptr %i.oc, i64 %i.ot
  %i.ov = load i16, ptr %i.ou, align 2, !tbaa !146
  %i.ow = sitofp i16 %i.ov to double
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.next14.i167
  %i.oy = load double, ptr %i.ox, align 8, !tbaa !31
  %i.oz = call double @llvm.fmuladd.f64(double %i.ow, double %i.oy, double %i.op) ; 3 uses
  %indvars.iv.next14.i167.1 = add nuw nsw i64 %indvars.iv13.i165, 2 ; 2 uses
  %niter532.next.1 = add i64 %niter532, 2         ; 2 uses
  %niter532.ncmp.1 = icmp eq i64 %niter532.next.1, %unroll_iter531
  br i1 %niter532.ncmp.1, label %._crit_edge.us.us.i169.unr-lcssa, label %.preheader.us.us.i163.new, !llvm.loop !1513

._crit_edge.us.us.i169.unr-lcssa:                 ; preds = %.preheader.us.us.i163.new
  br i1 %lcmp.mod528.not, label %._crit_edge.us.us.i169, label %.epil.preheader525

.epil.preheader525:                               ; preds = %._crit_edge.us.us.i169.unr-lcssa, %.preheader.us.us.i163
  %indvars.iv13.i165.epil.init = phi i64 [ 0, %.preheader.us.us.i163 ], [ %indvars.iv.next14.i167.1, %._crit_edge.us.us.i169.unr-lcssa ] ; 2 uses
  %.0273.us.us.i166.epil.init = phi double [ 0.000000e+00, %.preheader.us.us.i163 ], [ %i.oz, %._crit_edge.us.us.i169.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod530)
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0266.0.lcssa, i64 %indvars.iv13.i165.epil.init
  %i.pb = load i32, ptr %i.pa, align 4, !tbaa !17
  %i.pc = add nsw i32 %i.pb, %i.of
  %i.pd = sext i32 %i.pc to i64
  %i.pe = getelementptr inbounds [2 x i8], ptr %i.oc, i64 %i.pd
  %i.pf = load i16, ptr %i.pe, align 2, !tbaa !146
  %i.pg = sitofp i16 %i.pf to double
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv13.i165.epil.init
  %i.pi = load double, ptr %i.ph, align 8, !tbaa !31
  %i.pj = call double @llvm.fmuladd.f64(double %i.pg, double %i.pi, double %.0273.us.us.i166.epil.init)
  br label %._crit_edge.us.us.i169

._crit_edge.us.us.i169:                           ; preds = %._crit_edge.us.us.i169.unr-lcssa, %.epil.preheader525
  %.lcssa467 = phi double [ %i.oz, %._crit_edge.us.us.i169.unr-lcssa ], [ %i.pj, %.epil.preheader525 ]
  %i.pk = getelementptr inbounds nuw [8 x i8], ptr %i.oe, i64 %indvars.iv18.i164
  store double %.lcssa467, ptr %i.pk, align 8, !tbaa !31
  %indvars.iv.next19.i170 = add nuw nsw i64 %indvars.iv18.i164, 1 ; 2 uses
  %exitcond22.not.i171 = icmp eq i64 %indvars.iv.next19.i170, %wide.trip.count21.i159
  br i1 %exitcond22.not.i171, label %._crit_edge6.split.us.us.i172, label %.preheader.us.us.i163, !llvm.loop !1514

._crit_edge6.split.us.us.i172:                    ; preds = %._crit_edge.us.us.i169
  %indvars.iv.next24.i173 = add nuw nsw i64 %indvars.iv23.i162, 1 ; 2 uses
  %exitcond27.not.i174 = icmp eq i64 %indvars.iv.next24.i173, %wide.trip.count26.i158
  br i1 %exitcond27.not.i174, label %.loopexit, label %.preheader.lr.ph.us.i161, !llvm.loop !1515

.preheader.lr.ph.i153:                            ; preds = %.preheader.lr.ph.i153, %.preheader.lr.ph.preheader.i151.new
  %indvars.iv.i154 = phi i64 [ 0, %.preheader.lr.ph.preheader.i151.new ], [ %indvars.iv.next.i155.7, %.preheader.lr.ph.i153 ] ; 9 uses
  %niter524.a = phi i64 [ 0, %.preheader.lr.ph.preheader.i151.new ], [ %niter524.next.7, %.preheader.lr.ph.i153 ]
  %i.pl = mul i64 %indvars.iv.i154, %i.ns
  %i.pm = getelementptr i8, ptr %i.nq, i64 %i.pl
  call void @llvm.memset.p0.i64(ptr align 8 %i.pm, i8 0, i64 %i.nw, i1 false), !tbaa !31
  %indvars.iv.next.i155 = or disjoint i64 %indvars.iv.i154, 1
  %i.pn = mul i64 %indvars.iv.next.i155, %i.ns
  %i.po = getelementptr i8, ptr %i.nq, i64 %i.pn
  call void @llvm.memset.p0.i64(ptr align 8 %i.po, i8 0, i64 %i.nw, i1 false), !tbaa !31
  %indvars.iv.next.i155.1 = or disjoint i64 %indvars.iv.i154, 2
  %i.pp = mul i64 %indvars.iv.next.i155.1, %i.ns
  %i.pq = getelementptr i8, ptr %i.nq, i64 %i.pp
  call void @llvm.memset.p0.i64(ptr align 8 %i.pq, i8 0, i64 %i.nw, i1 false), !tbaa !31
  %indvars.iv.next.i155.2 = or disjoint i64 %indvars.iv.i154, 3
  %i.pr = mul i64 %indvars.iv.next.i155.2, %i.ns
  %i.ps = getelementptr i8, ptr %i.nq, i64 %i.pr
  call void @llvm.memset.p0.i64(ptr align 8 %i.ps, i8 0, i64 %i.nw, i1 false), !tbaa !31
  %indvars.iv.next.i155.3 = or disjoint i64 %indvars.iv.i154, 4
  %i.pt = mul i64 %indvars.iv.next.i155.3, %i.ns
  %i.pu = getelementptr i8, ptr %i.nq, i64 %i.pt
  call void @llvm.memset.p0.i64(ptr align 8 %i.pu, i8 0, i64 %i.nw, i1 false), !tbaa !31
  %indvars.iv.next.i155.4 = or disjoint i64 %indvars.iv.i154, 5
  %i.pv = mul i64 %indvars.iv.next.i155.4, %i.ns
  %i.pw = getelementptr i8, ptr %i.nq, i64 %i.pv
  call void @llvm.memset.p0.i64(ptr align 8 %i.pw, i8 0, i64 %i.nw, i1 false), !tbaa !31
  %indvars.iv.next.i155.5 = or disjoint i64 %indvars.iv.i154, 6
  %i.px = mul i64 %indvars.iv.next.i155.5, %i.ns
  %i.py = getelementptr i8, ptr %i.nq, i64 %i.px
  call void @llvm.memset.p0.i64(ptr align 8 %i.py, i8 0, i64 %i.nw, i1 false), !tbaa !31
  %indvars.iv.next.i155.6 = or disjoint i64 %indvars.iv.i154, 7
  %i.pz = mul i64 %indvars.iv.next.i155.6, %i.ns
  %i.qa = getelementptr i8, ptr %i.nq, i64 %i.pz
  call void @llvm.memset.p0.i64(ptr align 8 %i.qa, i8 0, i64 %i.nw, i1 false), !tbaa !31
  %indvars.iv.next.i155.7 = add nuw nsw i64 %indvars.iv.i154, 8 ; 2 uses
  %niter524.next.7 = add i64 %niter524.a, 8       ; 2 uses
  %niter524.ncmp.7 = icmp eq i64 %niter524.next.7, %unroll_iter523.a
  br i1 %niter524.ncmp.7, label %.loopexit.loopexit468.unr-lcssa, label %.preheader.lr.ph.i153, !llvm.loop !1515

bb.al:                                            ; preds = %._crit_edge345
  %i.qb = getelementptr inbounds nuw i8, ptr %10, i64 24
  %.val77 = load ptr, ptr %i.qb, align 8
  %.val78 = load i64, ptr %i.bz, align 8
  %i.qc = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !1304
  %i.qe = load i32, ptr %11, align 8, !tbaa !45
  %i.qf = lshr i32 %i.qe, 5
  %i.qg = and i32 %i.qf, 127
  %i.qh = add nuw nsw i32 %i.qg, 1
  %i.qi = mul i32 %i.qh, %i.qd                    ; 3 uses
  %i.qj = ptrtoint ptr %.sroa.0266.0.lcssa to i64
  %i.qk = sub i64 %.sroa.15.0.lcssa, %i.qj        ; 3 uses
  %i.ql = lshr i64 %i.qk, 2                       ; 3 uses
  %i.qm = trunc i64 %i.ql to i32
  %i.qn = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.qo = load i32, ptr %i.qn, align 8, !tbaa !52 ; 4 uses
  %i.qp = icmp sgt i32 %i.qo, 0
  br i1 %i.qp, label %.lr.ph.i175, label %.loopexit

.lr.ph.i175:                                      ; preds = %bb.al
  %i.qq = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !53 ; 10 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %11, i64 128
  %i.qt = load i64, ptr %i.qs, align 8, !tbaa !18 ; 10 uses
  %i.qu = icmp sgt i32 %i.qi, 0
  br i1 %i.qu, label %.lr.ph.split.i176, label %.loopexit

.lr.ph.split.i176:                                ; preds = %.lr.ph.i175
  %i.qv = icmp sgt i32 %i.qm, 0
  br i1 %i.qv, label %.preheader.lr.ph.us.preheader.i183, label %.preheader.lr.ph.preheader.i177

.preheader.lr.ph.preheader.i177:                  ; preds = %.lr.ph.split.i176
  %i.qw = zext nneg i32 %i.qi to i64
  %i.qx = shl nuw nsw i64 %i.qw, 3                ; 9 uses
  %wide.trip.count.i178 = zext nneg i32 %i.qo to i64 ; 2 uses
  %xtraiter505 = and i64 %wide.trip.count.i178, 7 ; 3 uses
  %i.qy = icmp ult i32 %i.qo, 8
  br i1 %i.qy, label %.preheader.lr.ph.i179.epil.preheader, label %.preheader.lr.ph.preheader.i177.new

.preheader.lr.ph.preheader.i177.new:              ; preds = %.preheader.lr.ph.preheader.i177
  %unroll_iter509.a = and i64 %wide.trip.count.i178, 2147483640
  br label %.preheader.lr.ph.i179

.preheader.lr.ph.us.preheader.i183:               ; preds = %.lr.ph.split.i176
  %wide.trip.count26.i184 = zext nneg i32 %i.qo to i64
  %wide.trip.count21.i185 = zext nneg i32 %i.qi to i64
  %i.qz = and i64 %i.qk, 8589934588
  %i.ra = icmp eq i64 %i.qz, 4
  %unroll_iter517 = and i64 %i.ql, 2147483646
  %i.rb = and i64 %i.qk, 4
  %lcmp.mod514.not = icmp eq i64 %i.rb, 0
  %lcmp.mod516 = trunc i64 %i.ql to i1
  br label %.preheader.lr.ph.us.i187

.preheader.lr.ph.us.i187:                         ; preds = %._crit_edge6.split.us.us.i198, %.preheader.lr.ph.us.preheader.i183
  %indvars.iv23.i188 = phi i64 [ 0, %.preheader.lr.ph.us.preheader.i183 ], [ %indvars.iv.next24.i199, %._crit_edge6.split.us.us.i198 ] ; 3 uses
  %i.rc = mul i64 %indvars.iv23.i188, %.val78
  %i.rd = getelementptr inbounds nuw i8, ptr %.val77, i64 %i.rc ; 3 uses
  %i.re = mul i64 %indvars.iv23.i188, %i.qt
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qr, i64 %i.re
  br label %.preheader.us.us.i189

.preheader.us.us.i189:                            ; preds = %._crit_edge.us.us.i195, %.preheader.lr.ph.us.i187
  %indvars.iv18.i190 = phi i64 [ %indvars.iv.next19.i196, %._crit_edge.us.us.i195 ], [ 0, %.preheader.lr.ph.us.i187 ] ; 3 uses
  %i.rg = trunc nuw nsw i64 %indvars.iv18.i190 to i32 ; 3 uses
  br i1 %i.ra, label %.epil.preheader511, label %.preheader.us.us.i189.new

.preheader.us.us.i189.new:                        ; preds = %.preheader.us.us.i189, %.preheader.us.us.i189.new
  %indvars.iv13.i191 = phi i64 [ %indvars.iv.next14.i193.1, %.preheader.us.us.i189.new ], [ 0, %.preheader.us.us.i189 ] ; 4 uses
  %.0273.us.us.i192 = phi double [ %i.sa, %.preheader.us.us.i189.new ], [ 0.000000e+00, %.preheader.us.us.i189 ]
  %niter518 = phi i64 [ %niter518.next.1, %.preheader.us.us.i189.new ], [ 0, %.preheader.us.us.i189 ]
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0266.0.lcssa, i64 %indvars.iv13.i191
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !17
  %i.rj = add nsw i32 %i.ri, %i.rg
  %i.rk = sext i32 %i.rj to i64
  %i.rl = getelementptr inbounds [4 x i8], ptr %i.rd, i64 %i.rk
  %i.rm = load i32, ptr %i.rl, align 4, !tbaa !17
  %i.rn = sitofp i32 %i.rm to double
  %i.ro = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv13.i191
  %i.rp = load double, ptr %i.ro, align 8, !tbaa !31
  %i.rq = call double @llvm.fmuladd.f64(double %i.rn, double %i.rp, double %.0273.us.us.i192)
  %indvars.iv.next14.i193 = or disjoint i64 %indvars.iv13.i191, 1 ; 2 uses
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0266.0.lcssa, i64 %indvars.iv.next14.i193
  %i.rs = load i32, ptr %i.rr, align 4, !tbaa !17
  %i.rt = add nsw i32 %i.rs, %i.rg
  %i.ru = sext i32 %i.rt to i64
  %i.rv = getelementptr inbounds [4 x i8], ptr %i.rd, i64 %i.ru
  %i.rw = load i32, ptr %i.rv, align 4, !tbaa !17
  %i.rx = sitofp i32 %i.rw to double
  %i.ry = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.next14.i193
  %i.rz = load double, ptr %i.ry, align 8, !tbaa !31
  %i.sa = call double @llvm.fmuladd.f64(double %i.rx, double %i.rz, double %i.rq) ; 3 uses
  %indvars.iv.next14.i193.1 = add nuw nsw i64 %indvars.iv13.i191, 2 ; 2 uses
  %niter518.next.1 = add i64 %niter518, 2         ; 2 uses
  %niter518.ncmp.1 = icmp eq i64 %niter518.next.1, %unroll_iter517
  br i1 %niter518.ncmp.1, label %._crit_edge.us.us.i195.unr-lcssa, label %.preheader.us.us.i189.new, !llvm.loop !1516

._crit_edge.us.us.i195.unr-lcssa:                 ; preds = %.preheader.us.us.i189.new
  br i1 %lcmp.mod514.not, label %._crit_edge.us.us.i195, label %.epil.preheader511

.epil.preheader511:                               ; preds = %._crit_edge.us.us.i195.unr-lcssa, %.preheader.us.us.i189
  %indvars.iv13.i191.epil.init = phi i64 [ 0, %.preheader.us.us.i189 ], [ %indvars.iv.next14.i193.1, %._crit_edge.us.us.i195.unr-lcssa ] ; 2 uses
  %.0273.us.us.i192.epil.init = phi double [ 0.000000e+00, %.preheader.us.us.i189 ], [ %i.sa, %._crit_edge.us.us.i195.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod516)
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0266.0.lcssa, i64 %indvars.iv13.i191.epil.init
  %i.sc = load i32, ptr %i.sb, align 4, !tbaa !17
  %i.sd = add nsw i32 %i.sc, %i.rg
  %i.se = sext i32 %i.sd to i64
  %i.sf = getelementptr inbounds [4 x i8], ptr %i.rd, i64 %i.se
  %i.sg = load i32, ptr %i.sf, align 4, !tbaa !17
  %i.sh = sitofp i32 %i.sg to double
  %i.si = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv13.i191.epil.init
  %i.sj = load double, ptr %i.si, align 8, !tbaa !31
  %i.sk = call double @llvm.fmuladd.f64(double %i.sh, double %i.sj, double %.0273.us.us.i192.epil.init)
  br label %._crit_edge.us.us.i195

._crit_edge.us.us.i195:                           ; preds = %._crit_edge.us.us.i195.unr-lcssa, %.epil.preheader511
  %.lcssa470 = phi double [ %i.sa, %._crit_edge.us.us.i195.unr-lcssa ], [ %i.sk, %.epil.preheader511 ]
  %i.sl = getelementptr inbounds nuw [8 x i8], ptr %i.rf, i64 %indvars.iv18.i190
  store double %.lcssa470, ptr %i.sl, align 8, !tbaa !31
  %indvars.iv.next19.i196 = add nuw nsw i64 %indvars.iv18.i190, 1 ; 2 uses
  %exitcond22.not.i197 = icmp eq i64 %indvars.iv.next19.i196, %wide.trip.count21.i185
  br i1 %exitcond22.not.i197, label %._crit_edge6.split.us.us.i198, label %.preheader.us.us.i189, !llvm.loop !1517

._crit_edge6.split.us.us.i198:                    ; preds = %._crit_edge.us.us.i195
  %indvars.iv.next24.i199 = add nuw nsw i64 %indvars.iv23.i188, 1 ; 2 uses
  %exitcond27.not.i200 = icmp eq i64 %indvars.iv.next24.i199, %wide.trip.count26.i184
  br i1 %exitcond27.not.i200, label %.loopexit, label %.preheader.lr.ph.us.i187, !llvm.loop !1518

.preheader.lr.ph.i179:                            ; preds = %.preheader.lr.ph.i179, %.preheader.lr.ph.preheader.i177.new
  %indvars.iv.i180 = phi i64 [ 0, %.preheader.lr.ph.preheader.i177.new ], [ %indvars.iv.next.i181.7, %.preheader.lr.ph.i179 ] ; 9 uses
  %niter510.a = phi i64 [ 0, %.preheader.lr.ph.preheader.i177.new ], [ %niter510.next.7, %.preheader.lr.ph.i179 ]
  %i.sm = mul i64 %indvars.iv.i180, %i.qt
  %i.sn = getelementptr i8, ptr %i.qr, i64 %i.sm
  call void @llvm.memset.p0.i64(ptr align 8 %i.sn, i8 0, i64 %i.qx, i1 false), !tbaa !31
  %indvars.iv.next.i181 = or disjoint i64 %indvars.iv.i180, 1
  %i.so = mul i64 %indvars.iv.next.i181, %i.qt
  %i.sp = getelementptr i8, ptr %i.qr, i64 %i.so
  call void @llvm.memset.p0.i64(ptr align 8 %i.sp, i8 0, i64 %i.qx, i1 false), !tbaa !31
  %indvars.iv.next.i181.1 = or disjoint i64 %indvars.iv.i180, 2
  %i.sq = mul i64 %indvars.iv.next.i181.1, %i.qt
  %i.sr = getelementptr i8, ptr %i.qr, i64 %i.sq
  call void @llvm.memset.p0.i64(ptr align 8 %i.sr, i8 0, i64 %i.qx, i1 false), !tbaa !31
  %indvars.iv.next.i181.2 = or disjoint i64 %indvars.iv.i180, 3
  %i.ss = mul i64 %indvars.iv.next.i181.2, %i.qt
  %i.st = getelementptr i8, ptr %i.qr, i64 %i.ss
  call void @llvm.memset.p0.i64(ptr align 8 %i.st, i8 0, i64 %i.qx, i1 false), !tbaa !31
  %indvars.iv.next.i181.3 = or disjoint i64 %indvars.iv.i180, 4
  %i.su = mul i64 %indvars.iv.next.i181.3, %i.qt
  %i.sv = getelementptr i8, ptr %i.qr, i64 %i.su
  call void @llvm.memset.p0.i64(ptr align 8 %i.sv, i8 0, i64 %i.qx, i1 false), !tbaa !31
  %indvars.iv.next.i181.4 = or disjoint i64 %indvars.iv.i180, 5
  %i.sw = mul i64 %indvars.iv.next.i181.4, %i.qt
  %i.sx = getelementptr i8, ptr %i.qr, i64 %i.sw
  call void @llvm.memset.p0.i64(ptr align 8 %i.sx, i8 0, i64 %i.qx, i1 false), !tbaa !31
  %indvars.iv.next.i181.5 = or disjoint i64 %indvars.iv.i180, 6
  %i.sy = mul i64 %indvars.iv.next.i181.5, %i.qt
  %i.sz = getelementptr i8, ptr %i.qr, i64 %i.sy
  call void @llvm.memset.p0.i64(ptr align 8 %i.sz, i8 0, i64 %i.qx, i1 false), !tbaa !31
  %indvars.iv.next.i181.6 = or disjoint i64 %indvars.iv.i180, 7
  %i.ta = mul i64 %indvars.iv.next.i181.6, %i.qt
  %i.tb = getelementptr i8, ptr %i.qr, i64 %i.ta
  call void @llvm.memset.p0.i64(ptr align 8 %i.tb, i8 0, i64 %i.qx, i1 false), !tbaa !31
  %indvars.iv.next.i181.7 = add nuw nsw i64 %indvars.iv.i180, 8 ; 2 uses
  %niter510.next.7 = add i64 %niter510.a, 8       ; 2 uses
  %niter510.ncmp.7 = icmp eq i64 %niter510.next.7, %unroll_iter509.a
  br i1 %niter510.ncmp.7, label %.loopexit.loopexit471.unr-lcssa, label %.preheader.lr.ph.i179, !llvm.loop !1518

bb.am:                                            ; preds = %._crit_edge345
  %i.tc = getelementptr inbounds nuw i8, ptr %10, i64 24
  %.val82 = load ptr, ptr %i.tc, align 8
  %.val83 = load i64, ptr %i.bz, align 8
  %i.td = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.te = load i32, ptr %i.td, align 4, !tbaa !1304
  %i.tf = load i32, ptr %11, align 8, !tbaa !45
  %i.tg = lshr i32 %i.tf, 5
  %i.th = and i32 %i.tg, 127
  %i.ti = add nuw nsw i32 %i.th, 1
  %i.tj = mul i32 %i.ti, %i.te                    ; 3 uses
  %i.tk = ptrtoint ptr %.sroa.0266.0.lcssa to i64
  %i.tl = sub i64 %.sroa.15.0.lcssa, %i.tk        ; 3 uses
  %i.tm = lshr i64 %i.tl, 2                       ; 3 uses
  %i.tn = trunc i64 %i.tm to i32
  %i.to = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.tp = load i32, ptr %i.to, align 8, !tbaa !52 ; 4 uses
  %i.tq = icmp sgt i32 %i.tp, 0
  br i1 %i.tq, label %.lr.ph.i201, label %.loopexit

.lr.ph.i201:                                      ; preds = %bb.am
  %i.tr = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !53 ; 10 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %11, i64 128
  %i.tu = load i64, ptr %i.tt, align 8, !tbaa !18 ; 10 uses
  %i.tv = icmp sgt i32 %i.tj, 0
  br i1 %i.tv, label %.lr.ph.split.i202, label %.loopexit

.lr.ph.split.i202:                                ; preds = %.lr.ph.i201
  %i.tw = icmp sgt i32 %i.tn, 0
  br i1 %i.tw, label %.preheader.lr.ph.us.preheader.i209, label %.preheader.lr.ph.preheader.i203

.preheader.lr.ph.preheader.i203:                  ; preds = %.lr.ph.split.i202
  %i.tx = zext nneg i32 %i.tj to i64
  %i.ty = shl nuw nsw i64 %i.tx, 3                ; 9 uses
  %wide.trip.count.i204 = zext nneg i32 %i.tp to i64 ; 2 uses
  %xtraiter491 = and i64 %wide.trip.count.i204, 7 ; 3 uses
  %i.tz = icmp ult i32 %i.tp, 8
  br i1 %i.tz, label %.preheader.lr.ph.i205.epil.preheader, label %.preheader.lr.ph.preheader.i203.new

.preheader.lr.ph.preheader.i203.new:              ; preds = %.preheader.lr.ph.preheader.i203
  %unroll_iter495.a = and i64 %wide.trip.count.i204, 2147483640
  br label %.preheader.lr.ph.i205

.preheader.lr.ph.us.preheader.i209:               ; preds = %.lr.ph.split.i202
  %wide.trip.count26.i210 = zext nneg i32 %i.tp to i64
  %wide.trip.count21.i211 = zext nneg i32 %i.tj to i64
  %i.ua = and i64 %i.tl, 8589934588
  %i.ub = icmp eq i64 %i.ua, 4
  %unroll_iter503 = and i64 %i.tm, 2147483646
  %i.uc = and i64 %i.tl, 4
  %lcmp.mod500.not = icmp eq i64 %i.uc, 0
  %lcmp.mod502 = trunc i64 %i.tm to i1
  br label %.preheader.lr.ph.us.i213

.preheader.lr.ph.us.i213:                         ; preds = %._crit_edge6.split.us.us.i224, %.preheader.lr.ph.us.preheader.i209
  %indvars.iv23.i214 = phi i64 [ 0, %.preheader.lr.ph.us.preheader.i209 ], [ %indvars.iv.next24.i225, %._crit_edge6.split.us.us.i224 ] ; 3 uses
  %i.ud = mul i64 %indvars.iv23.i214, %.val83
  %i.ue = getelementptr inbounds nuw i8, ptr %.val82, i64 %i.ud ; 3 uses
  %i.uf = mul i64 %indvars.iv23.i214, %i.tu
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ts, i64 %i.uf
  br label %.preheader.us.us.i215

.preheader.us.us.i215:                            ; preds = %._crit_edge.us.us.i221, %.preheader.lr.ph.us.i213
  %indvars.iv18.i216 = phi i64 [ %indvars.iv.next19.i222, %._crit_edge.us.us.i221 ], [ 0, %.preheader.lr.ph.us.i213 ] ; 3 uses
  %i.uh = trunc nuw nsw i64 %indvars.iv18.i216 to i32 ; 3 uses
  br i1 %i.ub, label %.epil.preheader497, label %.preheader.us.us.i215.new

.preheader.us.us.i215.new:                        ; preds = %.preheader.us.us.i215, %.preheader.us.us.i215.new
  %indvars.iv13.i217 = phi i64 [ %indvars.iv.next14.i219.1, %.preheader.us.us.i215.new ], [ 0, %.preheader.us.us.i215 ] ; 4 uses
  %.0273.us.us.i218 = phi double [ %i.vb, %.preheader.us.us.i215.new ], [ 0.000000e+00, %.preheader.us.us.i215 ]
  %niter504 = phi i64 [ %niter504.next.1, %.preheader.us.us.i215.new ], [ 0, %.preheader.us.us.i215 ]
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0266.0.lcssa, i64 %indvars.iv13.i217
  %i.uj = load i32, ptr %i.ui, align 4, !tbaa !17
  %i.uk = add nsw i32 %i.uj, %i.uh
  %i.ul = sext i32 %i.uk to i64
  %i.um = getelementptr inbounds [4 x i8], ptr %i.ue, i64 %i.ul
  %i.un = load float, ptr %i.um, align 4, !tbaa !203
  %i.uo = fpext float %i.un to double
  %i.up = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv13.i217
  %i.uq = load double, ptr %i.up, align 8, !tbaa !31
  %i.ur = call double @llvm.fmuladd.f64(double %i.uo, double %i.uq, double %.0273.us.us.i218)
  %indvars.iv.next14.i219 = or disjoint i64 %indvars.iv13.i217, 1 ; 2 uses
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0266.0.lcssa, i64 %indvars.iv.next14.i219
  %i.ut = load i32, ptr %i.us, align 4, !tbaa !17
  %i.uu = add nsw i32 %i.ut, %i.uh
  %i.uv = sext i32 %i.uu to i64
  %i.uw = getelementptr inbounds [4 x i8], ptr %i.ue, i64 %i.uv
  %i.ux = load float, ptr %i.uw, align 4, !tbaa !203
  %i.uy = fpext float %i.ux to double
  %i.uz = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.next14.i219
  %i.va = load double, ptr %i.uz, align 8, !tbaa !31
  %i.vb = call double @llvm.fmuladd.f64(double %i.uy, double %i.va, double %i.ur) ; 3 uses
  %indvars.iv.next14.i219.1 = add nuw nsw i64 %indvars.iv13.i217, 2 ; 2 uses
  %niter504.next.1 = add i64 %niter504, 2         ; 2 uses
  %niter504.ncmp.1 = icmp eq i64 %niter504.next.1, %unroll_iter503
  br i1 %niter504.ncmp.1, label %._crit_edge.us.us.i221.unr-lcssa, label %.preheader.us.us.i215.new, !llvm.loop !1519

._crit_edge.us.us.i221.unr-lcssa:                 ; preds = %.preheader.us.us.i215.new
  br i1 %lcmp.mod500.not, label %._crit_edge.us.us.i221, label %.epil.preheader497

.epil.preheader497:                               ; preds = %._crit_edge.us.us.i221.unr-lcssa, %.preheader.us.us.i215
  %indvars.iv13.i217.epil.init = phi i64 [ 0, %.preheader.us.us.i215 ], [ %indvars.iv.next14.i219.1, %._crit_edge.us.us.i221.unr-lcssa ] ; 2 uses
  %.0273.us.us.i218.epil.init = phi double [ 0.000000e+00, %.preheader.us.us.i215 ], [ %i.vb, %._crit_edge.us.us.i221.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod502)
  %i.vc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0266.0.lcssa, i64 %indvars.iv13.i217.epil.init
  %i.vd = load i32, ptr %i.vc, align 4, !tbaa !17
  %i.ve = add nsw i32 %i.vd, %i.uh
  %i.vf = sext i32 %i.ve to i64
  %i.vg = getelementptr inbounds [4 x i8], ptr %i.ue, i64 %i.vf
  %i.vh = load float, ptr %i.vg, align 4, !tbaa !203
  %i.vi = fpext float %i.vh to double
  %i.vj = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv13.i217.epil.init
  %i.vk = load double, ptr %i.vj, align 8, !tbaa !31
  %i.vl = call double @llvm.fmuladd.f64(double %i.vi, double %i.vk, double %.0273.us.us.i218.epil.init)
  br label %._crit_edge.us.us.i221

._crit_edge.us.us.i221:                           ; preds = %._crit_edge.us.us.i221.unr-lcssa, %.epil.preheader497
  %.lcssa473 = phi double [ %i.vb, %._crit_edge.us.us.i221.unr-lcssa ], [ %i.vl, %.epil.preheader497 ]
  %i.vm = getelementptr inbounds nuw [8 x i8], ptr %i.ug, i64 %indvars.iv18.i216
  store double %.lcssa473, ptr %i.vm, align 8, !tbaa !31
  %indvars.iv.next19.i222 = add nuw nsw i64 %indvars.iv18.i216, 1 ; 2 uses
  %exitcond22.not.i223 = icmp eq i64 %indvars.iv.next19.i222, %wide.trip.count21.i211
  br i1 %exitcond22.not.i223, label %._crit_edge6.split.us.us.i224, label %.preheader.us.us.i215, !llvm.loop !1520

._crit_edge6.split.us.us.i224:                    ; preds = %._crit_edge.us.us.i221
  %indvars.iv.next24.i225 = add nuw nsw i64 %indvars.iv23.i214, 1 ; 2 uses
  %exitcond27.not.i226 = icmp eq i64 %indvars.iv.next24.i225, %wide.trip.count26.i210
  br i1 %exitcond27.not.i226, label %.loopexit, label %.preheader.lr.ph.us.i213, !llvm.loop !1521

.preheader.lr.ph.i205:                            ; preds = %.preheader.lr.ph.i205, %.preheader.lr.ph.preheader.i203.new
  %indvars.iv.i206 = phi i64 [ 0, %.preheader.lr.ph.preheader.i203.new ], [ %indvars.iv.next.i207.7, %.preheader.lr.ph.i205 ] ; 9 uses
  %niter496.a = phi i64 [ 0, %.preheader.lr.ph.preheader.i203.new ], [ %niter496.next.7, %.preheader.lr.ph.i205 ]
  %i.vn = mul i64 %indvars.iv.i206, %i.tu
  %i.vo = getelementptr i8, ptr %i.ts, i64 %i.vn
  call void @llvm.memset.p0.i64(ptr align 8 %i.vo, i8 0, i64 %i.ty, i1 false), !tbaa !31
  %indvars.iv.next.i207 = or disjoint i64 %indvars.iv.i206, 1
  %i.vp = mul i64 %indvars.iv.next.i207, %i.tu
  %i.vq = getelementptr i8, ptr %i.ts, i64 %i.vp
  call void @llvm.memset.p0.i64(ptr align 8 %i.vq, i8 0, i64 %i.ty, i1 false), !tbaa !31
  %indvars.iv.next.i207.1 = or disjoint i64 %indvars.iv.i206, 2
  %i.vr = mul i64 %indvars.iv.next.i207.1, %i.tu
  %i.vs = getelementptr i8, ptr %i.ts, i64 %i.vr
  call void @llvm.memset.p0.i64(ptr align 8 %i.vs, i8 0, i64 %i.ty, i1 false), !tbaa !31
  %indvars.iv.next.i207.2 = or disjoint i64 %indvars.iv.i206, 3
  %i.vt = mul i64 %indvars.iv.next.i207.2, %i.tu
  %i.vu = getelementptr i8, ptr %i.ts, i64 %i.vt
  call void @llvm.memset.p0.i64(ptr align 8 %i.vu, i8 0, i64 %i.ty, i1 false), !tbaa !31
  %indvars.iv.next.i207.3 = or disjoint i64 %indvars.iv.i206, 4
  %i.vv = mul i64 %indvars.iv.next.i207.3, %i.tu
  %i.vw = getelementptr i8, ptr %i.ts, i64 %i.vv
  call void @llvm.memset.p0.i64(ptr align 8 %i.vw, i8 0, i64 %i.ty, i1 false), !tbaa !31
  %indvars.iv.next.i207.4 = or disjoint i64 %indvars.iv.i206, 5
  %i.vx = mul i64 %indvars.iv.next.i207.4, %i.tu
  %i.vy = getelementptr i8, ptr %i.ts, i64 %i.vx
  call void @llvm.memset.p0.i64(ptr align 8 %i.vy, i8 0, i64 %i.ty, i1 false), !tbaa !31
  %indvars.iv.next.i207.5 = or disjoint i64 %indvars.iv.i206, 6
  %i.vz = mul i64 %indvars.iv.next.i207.5, %i.tu
  %i.wa = getelementptr i8, ptr %i.ts, i64 %i.vz
  call void @llvm.memset.p0.i64(ptr align 8 %i.wa, i8 0, i64 %i.ty, i1 false), !tbaa !31
  %indvars.iv.next.i207.6 = or disjoint i64 %indvars.iv.i206, 7
  %i.wb = mul i64 %indvars.iv.next.i207.6, %i.tu
  %i.wc = getelementptr i8, ptr %i.ts, i64 %i.wb
  call void @llvm.memset.p0.i64(ptr align 8 %i.wc, i8 0, i64 %i.ty, i1 false), !tbaa !31
  %indvars.iv.next.i207.7 = add nuw nsw i64 %indvars.iv.i206, 8 ; 2 uses
  %niter496.next.7 = add i64 %niter496.a, 8       ; 2 uses
  %niter496.ncmp.7 = icmp eq i64 %niter496.next.7, %unroll_iter495.a
  br i1 %niter496.ncmp.7, label %.loopexit.loopexit474.unr-lcssa, label %.preheader.lr.ph.i205, !llvm.loop !1521

bb.an:                                            ; preds = %._crit_edge345
  %i.wd = getelementptr inbounds nuw i8, ptr %10, i64 24
  %.val87 = load ptr, ptr %i.wd, align 8
  %.val88 = load i64, ptr %i.bz, align 8
  %i.we = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.wf = load i32, ptr %i.we, align 4, !tbaa !1304
  %i.wg = load i32, ptr %11, align 8, !tbaa !45
  %i.wh = lshr i32 %i.wg, 5
  %i.wi = and i32 %i.wh, 127
  %i.wj = add nuw nsw i32 %i.wi, 1
  %i.wk = mul i32 %i.wj, %i.wf                    ; 3 uses
  %i.wl = ptrtoint ptr %.sroa.0266.0.lcssa to i64
  %i.wm = sub i64 %.sroa.15.0.lcssa, %i.wl        ; 3 uses
  %i.wn = lshr i64 %i.wm, 2                       ; 3 uses
  %i.wo = trunc i64 %i.wn to i32
  %i.wp = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.wq = load i32, ptr %i.wp, align 8, !tbaa !52 ; 4 uses
  %i.wr = icmp sgt i32 %i.wq, 0
  br i1 %i.wr, label %.lr.ph.i227, label %.loopexit

.lr.ph.i227:                                      ; preds = %bb.an
  %i.ws = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.wt = load ptr, ptr %i.ws, align 8, !tbaa !53 ; 10 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %11, i64 128
  %i.wv = load i64, ptr %i.wu, align 8, !tbaa !18 ; 10 uses
  %i.ww = icmp sgt i32 %i.wk, 0
  br i1 %i.ww, label %.lr.ph.split.i228, label %.loopexit

.lr.ph.split.i228:                                ; preds = %.lr.ph.i227
  %i.wx = icmp sgt i32 %i.wo, 0
  br i1 %i.wx, label %.preheader.lr.ph.us.preheader.i235, label %.preheader.lr.ph.preheader.i229

.preheader.lr.ph.preheader.i229:                  ; preds = %.lr.ph.split.i228
  %i.wy = zext nneg i32 %i.wk to i64
  %i.wz = shl nuw nsw i64 %i.wy, 3                ; 9 uses
  %wide.trip.count.i230 = zext nneg i32 %i.wq to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i230, 7    ; 3 uses
  %i.xa = icmp ult i32 %i.wq, 8
  br i1 %i.xa, label %.preheader.lr.ph.i231.epil.preheader, label %.preheader.lr.ph.preheader.i229.new

.preheader.lr.ph.preheader.i229.new:              ; preds = %.preheader.lr.ph.preheader.i229
  %unroll_iter = and i64 %wide.trip.count.i230, 2147483640
  br label %.preheader.lr.ph.i231

.preheader.lr.ph.us.preheader.i235:               ; preds = %.lr.ph.split.i228
  %wide.trip.count26.i236 = zext nneg i32 %i.wq to i64
  %wide.trip.count21.i237 = zext nneg i32 %i.wk to i64
  %i.xb = and i64 %i.wm, 8589934588
  %i.xc = icmp eq i64 %i.xb, 4
  %unroll_iter489 = and i64 %i.wn, 2147483646
  %i.xd = and i64 %i.wm, 4
  %lcmp.mod486.not = icmp eq i64 %i.xd, 0
  %lcmp.mod488 = trunc i64 %i.wn to i1
  br label %.preheader.lr.ph.us.i239

.preheader.lr.ph.us.i239:                         ; preds = %._crit_edge6.split.us.us.i250, %.preheader.lr.ph.us.preheader.i235
  %indvars.iv23.i240 = phi i64 [ 0, %.preheader.lr.ph.us.preheader.i235 ], [ %indvars.iv.next24.i251, %._crit_edge6.split.us.us.i250 ] ; 3 uses
  %i.xe = mul i64 %indvars.iv23.i240, %.val88
  %i.xf = getelementptr inbounds nuw i8, ptr %.val87, i64 %i.xe ; 3 uses
  %i.xg = mul i64 %indvars.iv23.i240, %i.wv
  %i.xh = getelementptr inbounds nuw i8, ptr %i.wt, i64 %i.xg
  br label %.preheader.us.us.i241

.preheader.us.us.i241:                            ; preds = %._crit_edge.us.us.i247, %.preheader.lr.ph.us.i239
  %indvars.iv18.i242 = phi i64 [ %indvars.iv.next19.i248, %._crit_edge.us.us.i247 ], [ 0, %.preheader.lr.ph.us.i239 ] ; 3 uses
  %i.xi = trunc nuw nsw i64 %indvars.iv18.i242 to i32 ; 3 uses
  br i1 %i.xc, label %.epil.preheader, label %.preheader.us.us.i241.new

.preheader.us.us.i241.new:                        ; preds = %.preheader.us.us.i241, %.preheader.us.us.i241.new
  %indvars.iv13.i243 = phi i64 [ %indvars.iv.next14.i245.1, %.preheader.us.us.i241.new ], [ 0, %.preheader.us.us.i241 ] ; 4 uses
  %.0273.us.us.i244 = phi double [ %i.ya, %.preheader.us.us.i241.new ], [ 0.000000e+00, %.preheader.us.us.i241 ]
  %niter490 = phi i64 [ %niter490.next.1, %.preheader.us.us.i241.new ], [ 0, %.preheader.us.us.i241 ]
  %i.xj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0266.0.lcssa, i64 %indvars.iv13.i243
  %i.xk = load i32, ptr %i.xj, align 4, !tbaa !17
  %i.xl = add nsw i32 %i.xk, %i.xi
  %i.xm = sext i32 %i.xl to i64
  %i.xn = getelementptr inbounds [8 x i8], ptr %i.xf, i64 %i.xm
  %i.xo = load double, ptr %i.xn, align 8, !tbaa !31
  %i.xp = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv13.i243
  %i.xq = load double, ptr %i.xp, align 8, !tbaa !31
  %i.xr = call double @llvm.fmuladd.f64(double %i.xo, double %i.xq, double %.0273.us.us.i244)
  %indvars.iv.next14.i245 = or disjoint i64 %indvars.iv13.i243, 1 ; 2 uses
  %i.xs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0266.0.lcssa, i64 %indvars.iv.next14.i245
  %i.xt = load i32, ptr %i.xs, align 4, !tbaa !17
  %i.xu = add nsw i32 %i.xt, %i.xi
  %i.xv = sext i32 %i.xu to i64
  %i.xw = getelementptr inbounds [8 x i8], ptr %i.xf, i64 %i.xv
  %i.xx = load double, ptr %i.xw, align 8, !tbaa !31
  %i.xy = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.next14.i245
  %i.xz = load double, ptr %i.xy, align 8, !tbaa !31
  %i.ya = call double @llvm.fmuladd.f64(double %i.xx, double %i.xz, double %i.xr) ; 3 uses
  %indvars.iv.next14.i245.1 = add nuw nsw i64 %indvars.iv13.i243, 2 ; 2 uses
  %niter490.next.1 = add i64 %niter490, 2         ; 2 uses
  %niter490.ncmp.1 = icmp eq i64 %niter490.next.1, %unroll_iter489
  br i1 %niter490.ncmp.1, label %._crit_edge.us.us.i247.unr-lcssa, label %.preheader.us.us.i241.new, !llvm.loop !1522

._crit_edge.us.us.i247.unr-lcssa:                 ; preds = %.preheader.us.us.i241.new
  br i1 %lcmp.mod486.not, label %._crit_edge.us.us.i247, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.i247.unr-lcssa, %.preheader.us.us.i241
  %indvars.iv13.i243.epil.init = phi i64 [ 0, %.preheader.us.us.i241 ], [ %indvars.iv.next14.i245.1, %._crit_edge.us.us.i247.unr-lcssa ] ; 2 uses
  %.0273.us.us.i244.epil.init = phi double [ 0.000000e+00, %.preheader.us.us.i241 ], [ %i.ya, %._crit_edge.us.us.i247.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod488)
  %i.yb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0266.0.lcssa, i64 %indvars.iv13.i243.epil.init
  %i.yc = load i32, ptr %i.yb, align 4, !tbaa !17
  %i.yd = add nsw i32 %i.yc, %i.xi
  %i.ye = sext i32 %i.yd to i64
  %i.yf = getelementptr inbounds [8 x i8], ptr %i.xf, i64 %i.ye
  %i.yg = load double, ptr %i.yf, align 8, !tbaa !31
  %i.yh = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv13.i243.epil.init
  %i.yi = load double, ptr %i.yh, align 8, !tbaa !31
  %i.yj = call double @llvm.fmuladd.f64(double %i.yg, double %i.yi, double %.0273.us.us.i244.epil.init)
  br label %._crit_edge.us.us.i247

._crit_edge.us.us.i247:                           ; preds = %._crit_edge.us.us.i247.unr-lcssa, %.epil.preheader
  %.lcssa476 = phi double [ %i.ya, %._crit_edge.us.us.i247.unr-lcssa ], [ %i.yj, %.epil.preheader ]
  %i.yk = getelementptr inbounds nuw [8 x i8], ptr %i.xh, i64 %indvars.iv18.i242
  store double %.lcssa476, ptr %i.yk, align 8, !tbaa !31
  %indvars.iv.next19.i248 = add nuw nsw i64 %indvars.iv18.i242, 1 ; 2 uses
  %exitcond22.not.i249 = icmp eq i64 %indvars.iv.next19.i248, %wide.trip.count21.i237
  br i1 %exitcond22.not.i249, label %._crit_edge6.split.us.us.i250, label %.preheader.us.us.i241, !llvm.loop !1523

._crit_edge6.split.us.us.i250:                    ; preds = %._crit_edge.us.us.i247
  %indvars.iv.next24.i251 = add nuw nsw i64 %indvars.iv23.i240, 1 ; 2 uses
  %exitcond27.not.i252 = icmp eq i64 %indvars.iv.next24.i251, %wide.trip.count26.i236
  br i1 %exitcond27.not.i252, label %.loopexit, label %.preheader.lr.ph.us.i239, !llvm.loop !1524

.preheader.lr.ph.i231:                            ; preds = %.preheader.lr.ph.i231, %.preheader.lr.ph.preheader.i229.new
  %indvars.iv.i232 = phi i64 [ 0, %.preheader.lr.ph.preheader.i229.new ], [ %indvars.iv.next.i233.7, %.preheader.lr.ph.i231 ] ; 9 uses
  %niter = phi i64 [ 0, %.preheader.lr.ph.preheader.i229.new ], [ %niter.next.7, %.preheader.lr.ph.i231 ]
  %i.yl = mul i64 %indvars.iv.i232, %i.wv
  %i.ym = getelementptr i8, ptr %i.wt, i64 %i.yl
  call void @llvm.memset.p0.i64(ptr align 8 %i.ym, i8 0, i64 %i.wz, i1 false), !tbaa !31
  %indvars.iv.next.i233 = or disjoint i64 %indvars.iv.i232, 1
  %i.yn = mul i64 %indvars.iv.next.i233, %i.wv
  %i.yo = getelementptr i8, ptr %i.wt, i64 %i.yn
  call void @llvm.memset.p0.i64(ptr align 8 %i.yo, i8 0, i64 %i.wz, i1 false), !tbaa !31
  %indvars.iv.next.i233.1 = or disjoint i64 %indvars.iv.i232, 2
  %i.yp = mul i64 %indvars.iv.next.i233.1, %i.wv
  %i.yq = getelementptr i8, ptr %i.wt, i64 %i.yp
  call void @llvm.memset.p0.i64(ptr align 8 %i.yq, i8 0, i64 %i.wz, i1 false), !tbaa !31
  %indvars.iv.next.i233.2 = or disjoint i64 %indvars.iv.i232, 3
  %i.yr = mul i64 %indvars.iv.next.i233.2, %i.wv
  %i.ys = getelementptr i8, ptr %i.wt, i64 %i.yr
  call void @llvm.memset.p0.i64(ptr align 8 %i.ys, i8 0, i64 %i.wz, i1 false), !tbaa !31
  %indvars.iv.next.i233.3 = or disjoint i64 %indvars.iv.i232, 4
  %i.yt = mul i64 %indvars.iv.next.i233.3, %i.wv
  %i.yu = getelementptr i8, ptr %i.wt, i64 %i.yt
  call void @llvm.memset.p0.i64(ptr align 8 %i.yu, i8 0, i64 %i.wz, i1 false), !tbaa !31
  %indvars.iv.next.i233.4 = or disjoint i64 %indvars.iv.i232, 5
  %i.yv = mul i64 %indvars.iv.next.i233.4, %i.wv
  %i.yw = getelementptr i8, ptr %i.wt, i64 %i.yv
  call void @llvm.memset.p0.i64(ptr align 8 %i.yw, i8 0, i64 %i.wz, i1 false), !tbaa !31
  %indvars.iv.next.i233.5 = or disjoint i64 %indvars.iv.i232, 6
  %i.yx = mul i64 %indvars.iv.next.i233.5, %i.wv
  %i.yy = getelementptr i8, ptr %i.wt, i64 %i.yx
  call void @llvm.memset.p0.i64(ptr align 8 %i.yy, i8 0, i64 %i.wz, i1 false), !tbaa !31
  %indvars.iv.next.i233.6 = or disjoint i64 %indvars.iv.i232, 7
  %i.yz = mul i64 %indvars.iv.next.i233.6, %i.wv
  %i.za = getelementptr i8, ptr %i.wt, i64 %i.yz
  call void @llvm.memset.p0.i64(ptr align 8 %i.za, i8 0, i64 %i.wz, i1 false), !tbaa !31
  %indvars.iv.next.i233.7 = add nuw nsw i64 %indvars.iv.i232, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.loopexit477.unr-lcssa, label %.preheader.lr.ph.i231, !llvm.loop !1524

bb.ao:                                            ; preds = %._crit_edge345
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @.str.47, ptr noundef nonnull align 1 dereferenceable(1) %18)
          to label %bb.ap unwind label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @__func__._ZN6cvtest8filter2DERKN2cv3MatERS1_iS3_NS0_6Point_IiEEdiRKNS0_7Scalar_IdEE, ptr noundef nonnull @.str.35, i32 noundef 939) #31
          to label %bb.aq unwind label %bb.as

bb.aq:                                            ; preds = %bb.ap
  unreachable

bb.ar:                                            ; preds = %bb.ao
  %i.zb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255

bb.as:                                            ; preds = %bb.ap
  %i.zc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.zd = load ptr, ptr %17, align 8, !tbaa !19   ; 2 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.zf = icmp eq ptr %i.zd, %i.ze
  br i1 %i.zf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i253

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i253: ; preds = %bb.as
  %i.zg = load i64, ptr %i.ze, align 8, !tbaa !16
  %i.zh = add i64 %i.zg, 1
  call void @_ZdlPvm(ptr noundef %i.zd, i64 noundef %i.zh) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i253, %bb.ar
  %.pn46 = phi { ptr, i32 } [ %i.zb, %bb.ar ], [ %i.zc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i253 ], [ %i.zc, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit258

.loopexit.loopexit459.unr-lcssa:                  ; preds = %.preheader.lr.ph.i
  %lcmp.mod563.not = icmp eq i64 %xtraiter561, 0
  br i1 %lcmp.mod563.not, label %.loopexit, label %.preheader.lr.ph.i.epil.preheader

.preheader.lr.ph.i.epil.preheader:                ; preds = %.loopexit.loopexit459.unr-lcssa, %.preheader.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader.lr.ph.preheader.i ], [ %indvars.iv.next.i.7, %.loopexit.loopexit459.unr-lcssa ]
  %lcmp.mod564 = icmp ne i64 %xtraiter561, 0
  call void @llvm.assume(i1 %lcmp.mod564)
  br label %.preheader.lr.ph.i.epil

.preheader.lr.ph.i.epil:                          ; preds = %.preheader.lr.ph.i.epil, %.preheader.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.preheader.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.preheader.lr.ph.i.epil ] ; 2 uses
  %epil.iter562 = phi i64 [ 0, %.preheader.lr.ph.i.epil.preheader ], [ %epil.iter562.next, %.preheader.lr.ph.i.epil ]
  %i.zi = mul i64 %indvars.iv.i.epil, %i.ep
  %i.zj = getelementptr i8, ptr %i.en, i64 %i.zi
  call void @llvm.memset.p0.i64(ptr align 8 %i.zj, i8 0, i64 %i.et, i1 false), !tbaa !31
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter562.next = add i64 %epil.iter562, 1   ; 2 uses
  %epil.iter562.cmp.not = icmp eq i64 %epil.iter562.next, %xtraiter561
  br i1 %epil.iter562.cmp.not, label %.loopexit, label %.preheader.lr.ph.i.epil, !llvm.loop !1525

.loopexit.loopexit462.unr-lcssa:                  ; preds = %.preheader.lr.ph.i101
  %lcmp.mod549.not = icmp eq i64 %xtraiter547, 0
  br i1 %lcmp.mod549.not, label %.loopexit, label %.preheader.lr.ph.i101.epil.preheader

.preheader.lr.ph.i101.epil.preheader:             ; preds = %.loopexit.loopexit462.unr-lcssa, %.preheader.lr.ph.preheader.i99
  %indvars.iv.i102.epil.init = phi i64 [ 0, %.preheader.lr.ph.preheader.i99 ], [ %indvars.iv.next.i103.7, %.loopexit.loopexit462.unr-lcssa ]
  %lcmp.mod550 = icmp ne i64 %xtraiter547, 0
  call void @llvm.assume(i1 %lcmp.mod550)
  br label %.preheader.lr.ph.i101.epil

.preheader.lr.ph.i101.epil:                       ; preds = %.preheader.lr.ph.i101.epil, %.preheader.lr.ph.i101.epil.preheader
  %indvars.iv.i102.epil = phi i64 [ %indvars.iv.i102.epil.init, %.preheader.lr.ph.i101.epil.preheader ], [ %indvars.iv.next.i103.epil, %.preheader.lr.ph.i101.epil ] ; 2 uses
  %epil.iter548 = phi i64 [ 0, %.preheader.lr.ph.i101.epil.preheader ], [ %epil.iter548.next, %.preheader.lr.ph.i101.epil ]
  %i.zk = mul i64 %indvars.iv.i102.epil, %i.hq
  %i.zl = getelementptr i8, ptr %i.ho, i64 %i.zk
  call void @llvm.memset.p0.i64(ptr align 8 %i.zl, i8 0, i64 %i.hu, i1 false), !tbaa !31
  %indvars.iv.next.i103.epil = add nuw nsw i64 %indvars.iv.i102.epil, 1
  %epil.iter548.next = add i64 %epil.iter548, 1   ; 2 uses
  %epil.iter548.cmp.not = icmp eq i64 %epil.iter548.next, %xtraiter547
  br i1 %epil.iter548.cmp.not, label %.loopexit, label %.preheader.lr.ph.i101.epil, !llvm.loop !1526

.loopexit.loopexit465.unr-lcssa:                  ; preds = %.preheader.lr.ph.i127
  %lcmp.mod535.not = icmp eq i64 %xtraiter533, 0
  br i1 %lcmp.mod535.not, label %.loopexit, label %.preheader.lr.ph.i127.epil.preheader

.preheader.lr.ph.i127.epil.preheader:             ; preds = %.loopexit.loopexit465.unr-lcssa, %.preheader.lr.ph.preheader.i125
  %indvars.iv.i128.epil.init = phi i64 [ 0, %.preheader.lr.ph.preheader.i125 ], [ %indvars.iv.next.i129.7, %.loopexit.loopexit465.unr-lcssa ]
  %lcmp.mod536 = icmp ne i64 %xtraiter533, 0
  call void @llvm.assume(i1 %lcmp.mod536)
  br label %.preheader.lr.ph.i127.epil

.preheader.lr.ph.i127.epil:                       ; preds = %.preheader.lr.ph.i127.epil, %.preheader.lr.ph.i127.epil.preheader
  %indvars.iv.i128.epil = phi i64 [ %indvars.iv.i128.epil.init, %.preheader.lr.ph.i127.epil.preheader ], [ %indvars.iv.next.i129.epil, %.preheader.lr.ph.i127.epil ] ; 2 uses
  %epil.iter534 = phi i64 [ 0, %.preheader.lr.ph.i127.epil.preheader ], [ %epil.iter534.next, %.preheader.lr.ph.i127.epil ]
  %i.zm = mul i64 %indvars.iv.i128.epil, %i.kr
  %i.zn = getelementptr i8, ptr %i.kp, i64 %i.zm
  call void @llvm.memset.p0.i64(ptr align 8 %i.zn, i8 0, i64 %i.kv, i1 false), !tbaa !31
  %indvars.iv.next.i129.epil = add nuw nsw i64 %indvars.iv.i128.epil, 1
  %epil.iter534.next = add i64 %epil.iter534, 1   ; 2 uses
  %epil.iter534.cmp.not = icmp eq i64 %epil.iter534.next, %xtraiter533
  br i1 %epil.iter534.cmp.not, label %.loopexit, label %.preheader.lr.ph.i127.epil, !llvm.loop !1527

.loopexit.loopexit468.unr-lcssa:                  ; preds = %.preheader.lr.ph.i153
  %lcmp.mod521.not = icmp eq i64 %xtraiter519, 0
  br i1 %lcmp.mod521.not, label %.loopexit, label %.preheader.lr.ph.i153.epil.preheader

.preheader.lr.ph.i153.epil.preheader:             ; preds = %.loopexit.loopexit468.unr-lcssa, %.preheader.lr.ph.preheader.i151
  %indvars.iv.i154.epil.init = phi i64 [ 0, %.preheader.lr.ph.preheader.i151 ], [ %indvars.iv.next.i155.7, %.loopexit.loopexit468.unr-lcssa ]
  %lcmp.mod522 = icmp ne i64 %xtraiter519, 0
  call void @llvm.assume(i1 %lcmp.mod522)
  br label %.preheader.lr.ph.i153.epil

.preheader.lr.ph.i153.epil:                       ; preds = %.preheader.lr.ph.i153.epil, %.preheader.lr.ph.i153.epil.preheader
  %indvars.iv.i154.epil = phi i64 [ %indvars.iv.i154.epil.init, %.preheader.lr.ph.i153.epil.preheader ], [ %indvars.iv.next.i155.epil, %.preheader.lr.ph.i153.epil ] ; 2 uses
  %epil.iter520 = phi i64 [ 0, %.preheader.lr.ph.i153.epil.preheader ], [ %epil.iter520.next, %.preheader.lr.ph.i153.epil ]
  %i.zo = mul i64 %indvars.iv.i154.epil, %i.ns
  %i.zp = getelementptr i8, ptr %i.nq, i64 %i.zo
  call void @llvm.memset.p0.i64(ptr align 8 %i.zp, i8 0, i64 %i.nw, i1 false), !tbaa !31
  %indvars.iv.next.i155.epil = add nuw nsw i64 %indvars.iv.i154.epil, 1
  %epil.iter520.next = add i64 %epil.iter520, 1   ; 2 uses
  %epil.iter520.cmp.not = icmp eq i64 %epil.iter520.next, %xtraiter519
  br i1 %epil.iter520.cmp.not, label %.loopexit, label %.preheader.lr.ph.i153.epil, !llvm.loop !1528

.loopexit.loopexit471.unr-lcssa:                  ; preds = %.preheader.lr.ph.i179
  %lcmp.mod507.not = icmp eq i64 %xtraiter505, 0
  br i1 %lcmp.mod507.not, label %.loopexit, label %.preheader.lr.ph.i179.epil.preheader

.preheader.lr.ph.i179.epil.preheader:             ; preds = %.loopexit.loopexit471.unr-lcssa, %.preheader.lr.ph.preheader.i177
  %indvars.iv.i180.epil.init = phi i64 [ 0, %.preheader.lr.ph.preheader.i177 ], [ %indvars.iv.next.i181.7, %.loopexit.loopexit471.unr-lcssa ]
  %lcmp.mod508 = icmp ne i64 %xtraiter505, 0
  call void @llvm.assume(i1 %lcmp.mod508)
  br label %.preheader.lr.ph.i179.epil

.preheader.lr.ph.i179.epil:                       ; preds = %.preheader.lr.ph.i179.epil, %.preheader.lr.ph.i179.epil.preheader
  %indvars.iv.i180.epil = phi i64 [ %indvars.iv.i180.epil.init, %.preheader.lr.ph.i179.epil.preheader ], [ %indvars.iv.next.i181.epil, %.preheader.lr.ph.i179.epil ] ; 2 uses
  %epil.iter506 = phi i64 [ 0, %.preheader.lr.ph.i179.epil.preheader ], [ %epil.iter506.next, %.preheader.lr.ph.i179.epil ]
  %i.zq = mul i64 %indvars.iv.i180.epil, %i.qt
  %i.zr = getelementptr i8, ptr %i.qr, i64 %i.zq
  call void @llvm.memset.p0.i64(ptr align 8 %i.zr, i8 0, i64 %i.qx, i1 false), !tbaa !31
  %indvars.iv.next.i181.epil = add nuw nsw i64 %indvars.iv.i180.epil, 1
  %epil.iter506.next = add i64 %epil.iter506, 1   ; 2 uses
  %epil.iter506.cmp.not = icmp eq i64 %epil.iter506.next, %xtraiter505
  br i1 %epil.iter506.cmp.not, label %.loopexit, label %.preheader.lr.ph.i179.epil, !llvm.loop !1529

.loopexit.loopexit474.unr-lcssa:                  ; preds = %.preheader.lr.ph.i205
  %lcmp.mod493.not = icmp eq i64 %xtraiter491, 0
  br i1 %lcmp.mod493.not, label %.loopexit, label %.preheader.lr.ph.i205.epil.preheader

.preheader.lr.ph.i205.epil.preheader:             ; preds = %.loopexit.loopexit474.unr-lcssa, %.preheader.lr.ph.preheader.i203
  %indvars.iv.i206.epil.init = phi i64 [ 0, %.preheader.lr.ph.preheader.i203 ], [ %indvars.iv.next.i207.7, %.loopexit.loopexit474.unr-lcssa ]
  %lcmp.mod494 = icmp ne i64 %xtraiter491, 0
  call void @llvm.assume(i1 %lcmp.mod494)
  br label %.preheader.lr.ph.i205.epil

.preheader.lr.ph.i205.epil:                       ; preds = %.preheader.lr.ph.i205.epil, %.preheader.lr.ph.i205.epil.preheader
  %indvars.iv.i206.epil = phi i64 [ %indvars.iv.i206.epil.init, %.preheader.lr.ph.i205.epil.preheader ], [ %indvars.iv.next.i207.epil, %.preheader.lr.ph.i205.epil ] ; 2 uses
  %epil.iter492 = phi i64 [ 0, %.preheader.lr.ph.i205.epil.preheader ], [ %epil.iter492.next, %.preheader.lr.ph.i205.epil ]
  %i.zs = mul i64 %indvars.iv.i206.epil, %i.tu
  %i.zt = getelementptr i8, ptr %i.ts, i64 %i.zs
  call void @llvm.memset.p0.i64(ptr align 8 %i.zt, i8 0, i64 %i.ty, i1 false), !tbaa !31
  %indvars.iv.next.i207.epil = add nuw nsw i64 %indvars.iv.i206.epil, 1
  %epil.iter492.next = add i64 %epil.iter492, 1   ; 2 uses
  %epil.iter492.cmp.not = icmp eq i64 %epil.iter492.next, %xtraiter491
  br i1 %epil.iter492.cmp.not, label %.loopexit, label %.preheader.lr.ph.i205.epil, !llvm.loop !1530

.loopexit.loopexit477.unr-lcssa:                  ; preds = %.preheader.lr.ph.i231
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.preheader.lr.ph.i231.epil.preheader

.preheader.lr.ph.i231.epil.preheader:             ; preds = %.loopexit.loopexit477.unr-lcssa, %.preheader.lr.ph.preheader.i229
  %indvars.iv.i232.epil.init = phi i64 [ 0, %.preheader.lr.ph.preheader.i229 ], [ %indvars.iv.next.i233.7, %.loopexit.loopexit477.unr-lcssa ]
  %lcmp.mod483 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod483)
  br label %.preheader.lr.ph.i231.epil

.preheader.lr.ph.i231.epil:                       ; preds = %.preheader.lr.ph.i231.epil, %.preheader.lr.ph.i231.epil.preheader
  %indvars.iv.i232.epil = phi i64 [ %indvars.iv.i232.epil.init, %.preheader.lr.ph.i231.epil.preheader ], [ %indvars.iv.next.i233.epil, %.preheader.lr.ph.i231.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader.lr.ph.i231.epil.preheader ], [ %epil.iter.next, %.preheader.lr.ph.i231.epil ]
  %i.zu = mul i64 %indvars.iv.i232.epil, %i.wv
  %i.zv = getelementptr i8, ptr %i.wt, i64 %i.zu
  call void @llvm.memset.p0.i64(ptr align 8 %i.zv, i8 0, i64 %i.wz, i1 false), !tbaa !31
  %indvars.iv.next.i233.epil = add nuw nsw i64 %indvars.iv.i232.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.preheader.lr.ph.i231.epil, !llvm.loop !1531

.loopexit:                                        ; preds = %.loopexit.loopexit477.unr-lcssa, %.preheader.lr.ph.i231.epil, %._crit_edge6.split.us.us.i250, %.loopexit.loopexit474.unr-lcssa, %.preheader.lr.ph.i205.epil, %._crit_edge6.split.us.us.i224, %.loopexit.loopexit471.unr-lcssa, %.preheader.lr.ph.i179.epil, %._crit_edge6.split.us.us.i198, %.loopexit.loopexit468.unr-lcssa, %.preheader.lr.ph.i153.epil, %._crit_edge6.split.us.us.i172, %.loopexit.loopexit465.unr-lcssa, %.preheader.lr.ph.i127.epil, %._crit_edge6.split.us.us.i146, %.loopexit.loopexit462.unr-lcssa, %.preheader.lr.ph.i101.epil, %._crit_edge6.split.us.us.i120, %.loopexit.loopexit459.unr-lcssa, %.preheader.lr.ph.i.epil, %._crit_edge6.split.us.us.i, %bb.ah, %.lr.ph.i, %bb.ai, %.lr.ph.i97, %bb.aj, %.lr.ph.i123, %bb.ak, %.lr.ph.i149, %bb.al, %.lr.ph.i175, %bb.am, %.lr.ph.i201, %bb.an, %.lr.ph.i227
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #30
  %i.zw = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.zx = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i64 0, ptr %i.zx, align 8
  store i32 33619968, ptr %19, align 8, !tbaa !33
  store ptr %1, ptr %i.zw, align 8, !tbaa !36
  invoke void @_ZN6cvtest7convertERKN2cv3MatERKNS0_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %11, ptr noundef nonnull align 8 dereferenceable(24) %19, i32 noundef %2, double noundef 1.000000e+00, double noundef %5)
          to label %_ZNSt6vectorIdSaIdEED2Ev.exit unwind label %bb.au

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bq) #32
  %.not.i.i.i256 = icmp eq ptr %.sroa.0266.0.lcssa, null
  br i1 %.not.i.i.i256, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.zy = ptrtoint ptr %.sroa.25.0.lcssa to i64
  %i.zz = ptrtoint ptr %.sroa.0266.0.lcssa to i64
  %i.aaa = sub i64 %i.zy, %i.zz
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0266.0.lcssa, i64 noundef %i.aaa) #32
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  ret void

bb.au:                                            ; preds = %.loopexit
  %i.aab = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit258

_ZNSt6vectorIdSaIdEED2Ev.exit258.thread406:       ; preds = %.thread, %.thread289
  %.pn48.pn.pn287.ph = phi { ptr, i32 } [ %i.cz, %.thread289 ], [ %i.cy, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bq) #32
  br label %.body

_ZNSt6vectorIdSaIdEED2Ev.exit258:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255, %bb.au, %.loopexit.split-lp, %.loopexit314
  %.sroa.0266.2 = phi ptr [ %.sroa.0266.0.lcssa, %bb.au ], [ %.sroa.0266.0.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255 ], [ %.sroa.0266.1335, %.loopexit314 ], [ %.sroa.0266.1335, %.loopexit.split-lp ] ; 3 uses
  %.sroa.25.2 = phi ptr [ %.sroa.25.0.lcssa, %bb.au ], [ %.sroa.25.0.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255 ], [ %.sroa.25.1337, %.loopexit314 ], [ %.sroa.25.1337, %.loopexit.split-lp ]
  %.pn48.pn = phi { ptr, i32 } [ %i.aab, %bb.au ], [ %.pn46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255 ], [ %lpad.loopexit, %.loopexit314 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bq) #32
  %.not.i.i.i259 = icmp eq ptr %.sroa.0266.2, null
  br i1 %.not.i.i.i259, label %.body, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit258
  %i.aac = ptrtoint ptr %.sroa.25.2 to i64
  %i.aad = ptrtoint ptr %.sroa.0266.2 to i64
  %i.aae = sub i64 %i.aac, %i.aad
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0266.2, i64 noundef %i.aae) #32
  br label %.body

.body:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit258.thread406, %bb.av, %_ZNSt6vectorIdSaIdEED2Ev.exit258, %_ZNSt6vectorIdSaIdEED2Ev.exit258.thread, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn48.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ac, %bb.m ], [ %i.h, %bb.b ], [ %i.cx, %_ZNSt6vectorIdSaIdEED2Ev.exit258.thread ], [ %.pn48.pn, %_ZNSt6vectorIdSaIdEED2Ev.exit258 ], [ %.pn48.pn, %bb.av ], [ %.pn48.pn.pn287.ph, %_ZNSt6vectorIdSaIdEED2Ev.exit258.thread406 ]
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
  br i1 %.not46, label %.loopexit, label %bb.e, !llvm.loop !1532

bb.i:                                             ; preds = %bb.b
  %i.m = icmp slt i32 %0, 0
  br i1 %i.m, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.n = sub nsw i32 %0, %1                       ; 2 uses
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
  %i.t = load ptr, ptr %3, align 8, !tbaa !19     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.w = load i64, ptr %i.u, align 8, !tbaa !16
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
  %i.b = load i32, ptr %0, align 8, !tbaa !45
end_hunk_0
