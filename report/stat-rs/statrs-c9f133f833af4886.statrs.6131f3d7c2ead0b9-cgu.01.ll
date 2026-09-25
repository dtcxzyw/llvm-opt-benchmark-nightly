Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stat-rs/original/statrs-c9f133f833af4886.statrs.6131f3d7c2ead0b9-cgu.01?download=true
inline.NumInlined: 319
inline.NumDeleted: 135
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosample:bb.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit.i.i.1: ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !noundef !4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !35
  store ptr %i.a, ptr %i.e, align 8, !noalias !36
  %i.bs = icmp samesign ult i64 %i.br, 2
  br i1 %i.bs, label %bb.as, label %bb.ap, !prof !5

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit.i.i.preheader: ; preds = %bb.af
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.aj unwind label %bb.ai

bb.ai:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit.i.i.preheader
  %.lcssa275 = phi ptr [ %i.j, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit.i.i.preheader ], [ %i.bn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit.i.i ]
  %.lcssa272 = phi i64 [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit.i.i.preheader ], [ 2, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit.i.i ]
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.lcssa275)
          to label %.body.i.i unwind label %bb.ak

bb.aj:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit.i.i.preheader
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit.i.i unwind label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.al:                                            ; preds = %bb.ah, %bb.aj
  %.lcssa273 = phi i64 [ 1, %bb.aj ], [ 2, %bb.ah ]
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.al, %bb.ai
  %i.bw = phi i64 [ %.lcssa273, %bb.al ], [ %.lcssa272, %bb.ai ]
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.bv, %bb.al ], [ %i.bt, %bb.ai ] ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 2
  br i1 %i.bx, label %.body49, label %bb.am

bb.am:                                            ; preds = %.body.i.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bl) #14
          to label %.body49 unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.ao:                                            ; preds = %.invoke, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecIBC_dEEECs8lmMd0ZksV9_6statrs.exit.i, %_RINvXs_NtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs8lmMd0ZksV9_6statrs.exit.i, %bb.bi, %.noexc59, %bb.bh, %bb.ar, %bb.aq, %bb.as
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body49

.body49:                                          ; preds = %bb.bk, %bb.cf, %bb.ao, %.body.i.i, %bb.am
  %eh.lpad-body50 = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.body.i.i ], [ %eh.lpad-body.i.i, %bb.am ], [ %i.by, %bb.ao ], [ %i.jy, %bb.cf ], [ %i.hc, %bb.bk ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #14
          to label %.thread89 unwind label %bb.dc

bb.ap:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit.i.i.1
  %i.bz = icmp samesign ult i64 %i.br, 21
  br i1 %i.bz, label %bb.ar, label %bb.aq, !prof !5

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable14driftsort_maindNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0INtNtB18_3vec3VecdEEB1Q_(ptr noalias nofree noundef nonnull align 8 %i.bp, i64 noundef range(i64 0, 1152921504606846976) %i.br, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #15
          to label %bb.as unwind label %bb.ao

bb.ar:                                            ; preds = %bb.ap
  invoke void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftdNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0EB2d_(ptr noalias nofree noundef nonnull align 8 %i.bp, i64 noundef range(i64 0, 1152921504606846976) %i.br, i64 noundef 1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.as unwind label %bb.ao

bb.as:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit.i.i.1, %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !35
  invoke void @_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecdE8dedup_byNCNvMs5_B5_Bv_5dedup0ECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.at unwind label %bb.ao

bb.at:                                            ; preds = %bb.as
  %i.ca = load ptr, ptr %i.bo, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.cb = load i64, ptr %i.bq, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.cb, 3
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.idx
  %i.cd = icmp eq i64 %i.cb, 0
  br i1 %i.cd, label %._crit_edge153, label %.lr.ph152

.lr.ph152:                                        ; preds = %bb.at
  %i.ce = load i64, ptr %i.r, align 8             ; 2 uses
  %i.cf = load ptr, ptr %i.p, align 8, !nonnull !4
  %i.cg = load i64, ptr %i.z, align 8             ; 2 uses
  %i.ch = load ptr, ptr %i.x, align 8, !nonnull !4
  %i.ci = fdiv <2 x double> splat (double 1.000000e+00), %i.aq ; 2 uses
  %i.cj = extractelement <2 x double> %i.ci, i64 0
  %i.ck = extractelement <2 x double> %i.ci, i64 1
  br label %bb.au

bb.au:                                            ; preds = %.lr.ph152, %._crit_edge138
  %.sroa.027.0150 = phi ptr [ %i.ca, %.lr.ph152 ], [ %i.cl, %._crit_edge138 ] ; 3 uses
  %.sroa.05.0149 = phi i64 [ 0, %.lr.ph152 ], [ %.sroa.05.1.lcssa, %._crit_edge138 ] ; 4 uses
  %.sroa.08.0148 = phi i64 [ 0, %.lr.ph152 ], [ %.sroa.08.1.lcssa, %._crit_edge138 ] ; 4 uses
  %.sroa.011.0147 = phi double [ 0.000000e+00, %.lr.ph152 ], [ %.sroa.011.1.lcssa, %._crit_edge138 ] ; 2 uses
  %.sroa.014.0146 = phi double [ 0.000000e+00, %.lr.ph152 ], [ %.sroa.014.1.lcssa, %._crit_edge138 ] ; 2 uses
  %.sroa.017.0145 = phi double [ 0.000000e+00, %.lr.ph152 ], [ %i.cv, %._crit_edge138 ]
  %.sroa.022.0144 = phi double [ 0.000000e+00, %.lr.ph152 ], [ %i.cx, %._crit_edge138 ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.027.0150, i64 8 ; 2 uses
  %i.cm = icmp ult i64 %.sroa.05.0149, %i.at
  br i1 %i.cm, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.au
  %umax = call i64 @llvm.umax.i64(i64 %.sroa.05.0149, i64 %i.ce) ; 2 uses
  br label %.lr.ph

._crit_edge153:                                   ; preds = %._crit_edge138, %bb.at
  %.sroa.022.0.lcssa = phi double [ 0.000000e+00, %bb.at ], [ %i.cx, %._crit_edge138 ] ; 4 uses
  %.sroa.017.0.lcssa = phi double [ 0.000000e+00, %bb.at ], [ %i.cv, %._crit_edge138 ] ; 4 uses
  switch i8 %3, label %default.unreachable214 [
    i8 0, label %bb.az
    i8 1, label %bb.ba
    i8 2, label %bb.bb
    i8 3, label %bb.bc
  ]

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.aw
  %.sroa.05.1129 = phi i64 [ %i.ct, %bb.aw ], [ %.sroa.05.0149, %.lr.ph.preheader ] ; 4 uses
  %.sroa.011.1128 = phi double [ %i.cs, %bb.aw ], [ %.sroa.011.0147, %.lr.ph.preheader ] ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.05.1129, %umax
  br i1 %exitcond.not, label %.invoke, label %bb.av

._crit_edge:                                      ; preds = %bb.av, %bb.aw, %bb.au
  %.sroa.011.1.lcssa = phi double [ %.sroa.011.0147, %bb.au ], [ %i.cs, %bb.aw ], [ %.sroa.011.1128, %bb.av ] ; 3 uses
  %.sroa.05.1.lcssa = phi i64 [ %.sroa.05.0149, %bb.au ], [ %i.at, %bb.aw ], [ %.sroa.05.1129, %bb.av ]
  %i.cn = icmp ult i64 %.sroa.08.0148, %i.ba
  br i1 %i.cn, label %.lr.ph137.preheader, label %._crit_edge138

.lr.ph137.preheader:                              ; preds = %._crit_edge
  %umax178 = call i64 @llvm.umax.i64(i64 %.sroa.08.0148, i64 %i.cg) ; 2 uses
  br label %.lr.ph137

bb.av:                                            ; preds = %.lr.ph
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %.sroa.05.1129
  %i.cp = load double, ptr %i.co, align 8, !noundef !4
  %i.cq = load double, ptr %.sroa.027.0150, align 8, !noundef !4
  %i.cr = fcmp oeq double %i.cp, %i.cq
  br i1 %i.cr, label %bb.aw, label %._crit_edge

bb.aw:                                            ; preds = %bb.av
  %i.cs = fadd double %i.cj, %.sroa.011.1128      ; 2 uses
  %i.ct = add i64 %.sroa.05.1129, 1               ; 2 uses
  %exitcond177.not = icmp eq i64 %i.ct, %i.at
  br i1 %exitcond177.not, label %._crit_edge, label %.lr.ph

.lr.ph137:                                        ; preds = %.lr.ph137.preheader, %bb.ay
  %.sroa.08.1135 = phi i64 [ %i.dh, %bb.ay ], [ %.sroa.08.0148, %.lr.ph137.preheader ] ; 4 uses
  %.sroa.014.1134 = phi double [ %i.dg, %bb.ay ], [ %.sroa.014.0146, %.lr.ph137.preheader ] ; 2 uses
  %exitcond179.not = icmp eq i64 %.sroa.08.1135, %umax178
  br i1 %exitcond179.not, label %.invoke, label %bb.ax

._crit_edge138:                                   ; preds = %bb.ax, %bb.ay, %._crit_edge
  %.sroa.014.1.lcssa = phi double [ %.sroa.014.0146, %._crit_edge ], [ %i.dg, %bb.ay ], [ %.sroa.014.1134, %bb.ax ] ; 3 uses
  %.sroa.08.1.lcssa = phi i64 [ %.sroa.08.0148, %._crit_edge ], [ %i.ba, %bb.ay ], [ %.sroa.08.1135, %bb.ax ]
  %i.cu = fsub double %.sroa.011.1.lcssa, %.sroa.014.1.lcssa
  %i.cv = call nsz double @llvm.maximumnum.f64(double %.sroa.017.0145, double %i.cu) ; 2 uses
  %i.cw = fsub double %.sroa.014.1.lcssa, %.sroa.011.1.lcssa
  %i.cx = call nsz double @llvm.maximumnum.f64(double %.sroa.022.0144, double %i.cw) ; 2 uses
  %i.cy = icmp eq ptr %i.cl, %i.cc
  br i1 %i.cy, label %._crit_edge153, label %bb.au

bb.ax:                                            ; preds = %.lr.ph137
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %.sroa.08.1135
  %i.da = load double, ptr %i.cz, align 8, !noundef !4
  %i.db = load double, ptr %.sroa.027.0150, align 8, !noundef !4
  %i.dc = fcmp oeq double %i.da, %i.db
  br i1 %i.dc, label %bb.ay, label %._crit_edge138

.invoke:                                          ; preds = %.lr.ph, %.lr.ph137
  %i.dd = phi i64 [ %umax178, %.lr.ph137 ], [ %umax, %.lr.ph ]
  %i.de = phi i64 [ %i.cg, %.lr.ph137 ], [ %i.ce, %.lr.ph ]
  %i.df = phi ptr [ @13, %.lr.ph137 ], [ @12, %.lr.ph ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.dd, i64 noundef %i.de, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.df) #16
          to label %.cont unwind label %bb.ao

.cont:                                            ; preds = %.invoke
  unreachable

bb.ay:                                            ; preds = %bb.ax
  %i.dg = fadd double %i.ck, %.sroa.014.1134      ; 2 uses
  %i.dh = add i64 %.sroa.08.1135, 1               ; 2 uses
  %exitcond180.not = icmp eq i64 %i.dh, %i.ba
  br i1 %exitcond180.not, label %._crit_edge138, label %.lr.ph137

bb.az:                                            ; preds = %._crit_edge153
  %i.di = uitofp i64 %..i45 to double             ; 3 uses
  %i.dj = uitofp i64 %..i to double               ; 3 uses
  %i.dk = fmul nnan double %i.dj, 2.000000e+00
  %i.dl = fadd nnan double %i.dk, %i.di
  %5 = fadd double %i.di, %i.dj                   ; 2 uses
  %6 = fmul nnan double %i.di, %i.dj              ; 2 uses
  %7 = fmul double %6, %5
  %8 = fdiv double %6, %5
  %i.dm = insertelement <2 x double> poison, double %8, i64 0
  %i.dn = insertelement <2 x double> %i.dm, double %7, i64 1
  %i.do = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.dn) ; 2 uses
  %i.dp = extractelement <2 x double> %i.do, i64 0
  %i.dq = fmul double %i.dp, %.sroa.022.0.lcssa   ; 3 uses
  %i.dr = fmul double %i.dq, %i.dq
  %i.ds = fmul double %i.dr, -2.000000e+00
  %i.dt = fmul double %i.dq, 2.000000e+00
  %i.du = fdiv double %i.dt, 3.000000e+00
  %i.dv = fmul double %i.dl, %i.du
  %i.dw = extractelement <2 x double> %i.do, i64 1
  %i.dx = fdiv double %i.dv, %i.dw
  %i.dy = fsub double %i.ds, %i.dx
  %i.dz = call double @llvm.exp.f64(double %i.dy)
  br label %bb.bd

bb.ba:                                            ; preds = %._crit_edge153
  %i.ea = uitofp i64 %..i45 to double             ; 3 uses
  %i.eb = uitofp i64 %..i to double               ; 3 uses
  %i.ec = fmul nnan double %i.eb, 2.000000e+00
  %i.ed = fadd nnan double %i.ec, %i.ea
  %9 = fadd double %i.ea, %i.eb                   ; 2 uses
  %10 = fmul nnan double %i.ea, %i.eb             ; 2 uses
  %11 = fmul double %10, %9
  %12 = fdiv double %10, %9
  %i.ee = insertelement <2 x double> poison, double %12, i64 0
  %i.ef = insertelement <2 x double> %i.ee, double %11, i64 1
  %i.eg = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ef) ; 2 uses
  %i.eh = extractelement <2 x double> %i.eg, i64 0
  %i.ei = fmul double %i.eh, %.sroa.017.0.lcssa   ; 3 uses
  %i.ej = fmul double %i.ei, %i.ei
  %i.ek = fmul double %i.ej, -2.000000e+00
  %i.el = fmul double %i.ei, 2.000000e+00
  %i.em = fdiv double %i.el, 3.000000e+00
  %i.en = fmul double %i.ed, %i.em
  %i.eo = extractelement <2 x double> %i.eg, i64 1
  %i.ep = fdiv double %i.en, %i.eo
  %i.eq = fsub double %i.ek, %i.ep
  %i.er = call double @llvm.exp.f64(double %i.eq)
  br label %bb.bd

bb.bb:                                            ; preds = %._crit_edge153
  %i.es = mul i64 %i.ba, %i.at
  %i.et = icmp ugt i64 %i.es, 10000
  br i1 %i.et, label %bb.cr, label %bb.bh

bb.bc:                                            ; preds = %._crit_edge153
  %i.eu = call nsz double @llvm.maximumnum.f64(double %.sroa.017.0.lcssa, double %.sroa.022.0.lcssa) ; 2 uses
  %i.ev = uitofp i64 %..i45 to double             ; 2 uses
  %i.ew = uitofp i64 %..i to double               ; 2 uses
  %i.ex = fmul nnan double %i.ev, %i.ew
  %i.ey = fadd nnan double %i.ev, %i.ew
  %i.ez = fdiv double %i.ex, %i.ey
  %i.fa = call double @llvm.sqrt.f64(double %i.ez)
  %i.fb = fmul double %i.fa, %i.eu                ; 4 uses
  %i.fc = fmul double %i.fb, -2.000000e+00
  %i.fd = fmul double %i.fb, %i.fc
  %i.fe = call double @llvm.exp.f64(double %i.fd) ; 3 uses
  %i.ff = call double @llvm.fabs.f64(double %i.fe)
  %i.fg = fcmp olt double %i.ff, 1.000000e-10
  br i1 %i.fg, label %_RNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test36onesample_kolmogorov_twosided_pvalue.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bc, %.lr.ph.i
  %i.fh = phi double [ %i.fr, %.lr.ph.i ], [ %i.fe, %bb.bc ]
  %.sroa.02.06.i = phi double [ %i.fi, %.lr.ph.i ], [ 1.000000e+00, %bb.bc ]
  %i.fi = fadd double %.sroa.02.06.i, 1.000000e+00 ; 4 uses
  %i.fj = fmul double %i.fi, -2.000000e+00
  %i.fk = fmul double %i.fi, %i.fj
  %i.fl = fmul double %i.fb, %i.fk
  %i.fm = fmul double %i.fb, %i.fl
  %i.fn = call double @llvm.exp.f64(double %i.fm) ; 2 uses
  %i.fo = fadd double %i.fi, -1.000000e+00
  %i.fp = call double @llvm.pow.f64(double -1.000000e+00, double %i.fo)
  %i.fq = fmul double %i.fp, %i.fn
  %i.fr = fadd double %i.fh, %i.fq                ; 2 uses
  %i.fs = call double @llvm.fabs.f64(double %i.fn)
  %i.ft = fcmp olt double %i.fs, 1.000000e-10
  br i1 %i.ft, label %_RNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test36onesample_kolmogorov_twosided_pvalue.exit, label %.lr.ph.i

_RNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test36onesample_kolmogorov_twosided_pvalue.exit: ; preds = %.lr.ph.i, %bb.bc
  %.lcssa.i = phi double [ %i.fe, %bb.bc ], [ %i.fr, %.lr.ph.i ]
  %i.fu = fmul double %.lcssa.i, 2.000000e+00
  br label %bb.bd

bb.bd:                                            ; preds = %_RNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test46twosample_schroer_and_trenkler_twosided_pvalue.exit, %_RNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test36onesample_kolmogorov_twosided_pvalue.exit, %bb.ba, %bb.az
  %.sroa.029.0 = phi double [ %i.dz, %bb.az ], [ %i.er, %bb.ba ], [ %i.ls, %_RNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test46twosample_schroer_and_trenkler_twosided_pvalue.exit ], [ %i.fu, %_RNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test36onesample_kolmogorov_twosided_pvalue.exit ]
  %.sroa.030.0 = phi double [ %.sroa.022.0.lcssa, %bb.az ], [ %.sroa.017.0.lcssa, %bb.ba ], [ %i.fz, %_RNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test46twosample_schroer_and_trenkler_twosided_pvalue.exit ], [ %i.eu, %_RNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test36onesample_kolmogorov_twosided_pvalue.exit ]
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sroa.030.0, ptr %i.fv, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %.sroa.029.0, ptr %i.fw, align 8
  store i8 0, ptr %0, align 8
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.bf unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.thread89 unwind label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit57 unwind label %.thread98

bb.bg:                                            ; preds = %bb.be
  %i.fy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.bh:                                            ; preds = %bb.bb
  %i.fz = call nsz double @llvm.maximumnum.f64(double %.sroa.017.0.lcssa, double %.sroa.022.0.lcssa) ; 2 uses
  %i.ga = uitofp i64 %..i to double               ; 3 uses
  %i.gb = uitofp i64 %..i45 to double             ; 5 uses
  %i.gc = fmul double %i.fz, %i.ga
  %i.gd = fmul double %i.gc, %i.gb
  %i.ge = fadd double %i.gd, f0xBE7AD7F29ABCAF48
  %i.gf = call double @llvm.floor.f64(double %i.ge)
  %i.gg = fadd double %i.gf, 5.000000e-01
  %i.gh = fmul nnan double %i.ga, %i.gb
  %i.gi = fdiv double %i.gg, %i.gh                ; 3 uses
  %i.gj = add i64 %i.ba, %i.at
  %i.gk = invoke noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function9factorial8binomial(i64 noundef %i.gj, i64 noundef %..i)
          to label %.noexc59 unwind label %bb.ao

.noexc59:                                         ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.gl = add i64 %..i45, 1                       ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !37)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !37
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 2, 1) %i.gl, i1 noundef zeroext true, i64 noundef 8, i64 noundef 8)
          to label %.noexc60 unwind label %bb.ao

.noexc60:                                         ; preds = %.noexc59
  %i.gm = load i64, ptr %i.b, align 8, !range !38, !noalias !37, !noundef !4
  %i.gn = trunc nuw i64 %i.gm to i1
  %i.go = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.gp = load i64, ptr %i.go, align 8, !range !39, !noalias !37, !noundef !4 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.gn, label %bb.bi, label %_RINvXs_NtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs8lmMd0ZksV9_6statrs.exit.i, !prof !40

bb.bi:                                            ; preds = %.noexc60
  %i.gr = load i64, ptr %i.gq, align 8, !noalias !37
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.gp, i64 %i.gr) #16
          to label %.noexc61 unwind label %bb.ao

.noexc61:                                         ; preds = %bb.bi
  unreachable

_RINvXs_NtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs8lmMd0ZksV9_6statrs.exit.i: ; preds = %.noexc60
  %i.gs = load ptr, ptr %i.gq, align 8, !noalias !37, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !37
  store i64 %i.gp, ptr %i.c, align 8, !alias.scope !37
  %i.gt = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.gs, ptr %i.gt, align 8, !alias.scope !37
  %i.gu = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.gl, ptr %i.gu, align 8, !alias.scope !37
  %i.gv = add i64 %..i, 1
  invoke void @_RINvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemINtB5_3VecdENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, i64 noundef %i.gv)
          to label %.noexc62 unwind label %bb.ao

.noexc62:                                         ; preds = %_RINvXs_NtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs8lmMd0ZksV9_6statrs.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.gw = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 8 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 5 uses
  %i.gy = load i64, ptr %i.gx, align 8, !noundef !4
  %.not.i = icmp eq i64 %i.gy, 0
  br i1 %.not.i, label %.loopexit159.invoke.i, label %bb.bj

bb.bj:                                            ; preds = %.noexc62
  %i.gz = load ptr, ptr %i.gw, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %i.hb = load i64, ptr %i.ha, align 8, !noundef !4
  %.not58.i = icmp eq i64 %i.hb, 0
  br i1 %.not58.i, label %.loopexit159.invoke.i, label %bb.bl

bb.bk:                                            ; preds = %.loopexit159.invoke.i
  %i.hc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecIBC_dEEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #14
          to label %.body49 unwind label %bb.cq

bb.bl:                                            ; preds = %bb.bj
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.he = load ptr, ptr %i.hd, align 8, !nonnull !4, !noundef !4
  store double 1.000000e+00, ptr %i.he, align 8
  %i.hf = fdiv double 0.000000e+00, %i.gb
  br label %.peel.begin.i

.loopexit.i:                                      ; preds = %.backedge.i, %.backedge.i.us
  %exitcond184.not.i = icmp eq i64 %.sroa.0.0113.i, %..i
  br i1 %exitcond184.not.i, label %bb.cc, label %.peel.begin.i

.peel.begin.i:                                    ; preds = %.loopexit.i, %bb.bl
  %.sroa.0.0113.i = phi i64 [ 0, %bb.bl ], [ %i.hg, %.loopexit.i ] ; 22 uses
  %i.hg = add i64 %.sroa.0.0113.i, 1
  %i.hh = uitofp i64 %.sroa.0.0113.i to double
  %i.hi = fdiv double %i.hh, %i.ga                ; 3 uses
  %.not59.i = icmp eq i64 %.sroa.0.0113.i, 0
  %i.hj = add i64 %.sroa.0.0113.i, -1             ; 6 uses
  br i1 %.not59.i, label %.peel.next.i.split.us, label %bb.bm

bb.bm:                                            ; preds = %.peel.begin.i
  %i.hk = fsub double %i.hi, %i.hf
  %i.hl = call double @llvm.fabs.f64(double %i.hk)
  %i.hm = fcmp ogt double %i.hl, %i.gi
  %i.hn = load i64, ptr %i.gx, align 8, !noundef !4 ; 6 uses
  br i1 %i.hm, label %bb.bs, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ho = icmp ult i64 %i.hj, %i.hn
  br i1 %i.ho, label %bb.bo, label %.loopexit159.invoke.i

bb.bo:                                            ; preds = %bb.bn
  %i.hp = load ptr, ptr %i.gw, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.hq = getelementptr inbounds nuw [24 x i8], ptr %i.hp, i64 %i.hj ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %i.hs = load i64, ptr %i.hr, align 8, !noundef !4
  %.not210.i = icmp eq i64 %i.hs, 0
  br i1 %.not210.i, label %.loopexit159.invoke.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.hu = load ptr, ptr %i.ht, align 8, !nonnull !4, !noundef !4
  %i.hv = load double, ptr %i.hu, align 8, !noundef !4
end_hunk_0
