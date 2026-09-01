Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stat-rs/original/statrs-c9f133f833af4886.statrs.6131f3d7c2ead0b9-cgu.01?download=true
inline.NumInlined: 319
inline.NumDeleted: 135
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosample:bb.a
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bn)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit.i.i.1 unwind label %bb.al

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit.i.i.1: ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !noundef !4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !27
  store ptr %i.a, ptr %i.e, align 8, !noalias !30
  %i.bs = icmp samesign ult i64 %i.br, 2
  br i1 %i.bs, label %bb.as, label %bb.ap, !prof !19

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
  %eh.lpad-body50 = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.body.i.i ], [ %eh.lpad-body.i.i, %bb.am ], [ %i.by, %bb.ao ], [ %i.kc, %bb.cf ], [ %i.hg, %bb.bk ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #14
          to label %.thread89 unwind label %bb.dc

bb.ap:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit.i.i.1
  %i.bz = icmp samesign ult i64 %i.br, 21
  br i1 %i.bz, label %bb.ar, label %bb.aq, !prof !19

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable14driftsort_maindNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0INtNtB18_3vec3VecdEEB1Q_(ptr noalias nofree noundef nonnull align 8 %i.bp, i64 noundef range(i64 0, 1152921504606846976) %i.br, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #15
          to label %bb.as unwind label %bb.ao

bb.ar:                                            ; preds = %bb.ap
  invoke void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftdNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0EB2d_(ptr noalias nofree noundef nonnull align 8 %i.bp, i64 noundef range(i64 0, 1152921504606846976) %i.br, i64 noundef 1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.as unwind label %bb.ao

bb.as:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit.i.i.1, %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !27
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
  %i.dm = fmul double %6, %5
  %i.dn = fdiv double %6, %5
  %i.do = insertelement <2 x double> poison, double %i.dn, i64 0
  %i.dp = insertelement <2 x double> %i.do, double %i.dm, i64 1
  %i.dq = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.dp) ; 2 uses
  %i.dr = extractelement <2 x double> %i.dq, i64 0
  %i.ds = fmul double %i.dr, %.sroa.022.0.lcssa   ; 3 uses
  %i.dt = fmul double %i.ds, %i.ds
  %i.du = fmul double %i.dt, -2.000000e+00
  %i.dv = fmul double %i.ds, 2.000000e+00
  %i.dw = fdiv double %i.dv, 3.000000e+00
  %i.dx = fmul double %i.dl, %i.dw
  %i.dy = extractelement <2 x double> %i.dq, i64 1
  %i.dz = fdiv double %i.dx, %i.dy
  %i.ea = fsub double %i.du, %i.dz
  %i.eb = call double @llvm.exp.f64(double %i.ea)
  br label %bb.bd

bb.ba:                                            ; preds = %._crit_edge153
  %i.ec = uitofp i64 %..i45 to double             ; 3 uses
  %i.ed = uitofp i64 %..i to double               ; 3 uses
  %i.ee = fmul nnan double %i.ed, 2.000000e+00
  %i.ef = fadd nnan double %i.ee, %i.ec
  %7 = fadd double %i.ec, %i.ed                   ; 2 uses
  %8 = fmul nnan double %i.ec, %i.ed              ; 2 uses
  %i.eg = fmul double %8, %7
  %i.eh = fdiv double %8, %7
  %i.ei = insertelement <2 x double> poison, double %i.eh, i64 0
  %i.ej = insertelement <2 x double> %i.ei, double %i.eg, i64 1
  %i.ek = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ej) ; 2 uses
  %i.el = extractelement <2 x double> %i.ek, i64 0
  %i.em = fmul double %i.el, %.sroa.017.0.lcssa   ; 3 uses
  %i.en = fmul double %i.em, %i.em
  %i.eo = fmul double %i.en, -2.000000e+00
  %i.ep = fmul double %i.em, 2.000000e+00
  %i.eq = fdiv double %i.ep, 3.000000e+00
  %i.er = fmul double %i.ef, %i.eq
  %i.es = extractelement <2 x double> %i.ek, i64 1
  %i.et = fdiv double %i.er, %i.es
  %i.eu = fsub double %i.eo, %i.et
  %i.ev = call double @llvm.exp.f64(double %i.eu)
  br label %bb.bd

bb.bb:                                            ; preds = %._crit_edge153
  %i.ew = mul i64 %i.ba, %i.at
  %i.ex = icmp ugt i64 %i.ew, 10000
  br i1 %i.ex, label %bb.cr, label %bb.bh

bb.bc:                                            ; preds = %._crit_edge153
  %i.ey = call nsz double @llvm.maximumnum.f64(double %.sroa.017.0.lcssa, double %.sroa.022.0.lcssa) ; 2 uses
  %i.ez = uitofp i64 %..i45 to double             ; 2 uses
  %i.fa = uitofp i64 %..i to double               ; 2 uses
  %i.fb = fmul nnan double %i.ez, %i.fa
  %i.fc = fadd nnan double %i.ez, %i.fa
  %i.fd = fdiv double %i.fb, %i.fc
  %i.fe = call double @llvm.sqrt.f64(double %i.fd)
  %i.ff = fmul double %i.fe, %i.ey                ; 4 uses
  %i.fg = fmul double %i.ff, -2.000000e+00
  %i.fh = fmul double %i.ff, %i.fg
  %i.fi = call double @llvm.exp.f64(double %i.fh) ; 3 uses
  %i.fj = call double @llvm.fabs.f64(double %i.fi)
  %i.fk = fcmp olt double %i.fj, 1.000000e-10
  br i1 %i.fk, label %_RNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test36onesample_kolmogorov_twosided_pvalue.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bc, %.lr.ph.i
  %i.fl = phi double [ %i.fv, %.lr.ph.i ], [ %i.fi, %bb.bc ]
  %.sroa.02.06.i = phi double [ %i.fm, %.lr.ph.i ], [ 1.000000e+00, %bb.bc ]
  %i.fm = fadd double %.sroa.02.06.i, 1.000000e+00 ; 4 uses
  %i.fn = fmul double %i.fm, -2.000000e+00
  %i.fo = fmul double %i.fm, %i.fn
  %i.fp = fmul double %i.ff, %i.fo
  %i.fq = fmul double %i.ff, %i.fp
  %i.fr = call double @llvm.exp.f64(double %i.fq) ; 2 uses
  %i.fs = fadd double %i.fm, -1.000000e+00
  %i.ft = call double @llvm.pow.f64(double -1.000000e+00, double %i.fs)
  %i.fu = fmul double %i.ft, %i.fr
  %i.fv = fadd double %i.fl, %i.fu                ; 2 uses
  %i.fw = call double @llvm.fabs.f64(double %i.fr)
  %i.fx = fcmp olt double %i.fw, 1.000000e-10
  br i1 %i.fx, label %_RNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test36onesample_kolmogorov_twosided_pvalue.exit, label %.lr.ph.i

_RNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test36onesample_kolmogorov_twosided_pvalue.exit: ; preds = %.lr.ph.i, %bb.bc
  %.lcssa.i = phi double [ %i.fi, %bb.bc ], [ %i.fv, %.lr.ph.i ]
  %i.fy = fmul double %.lcssa.i, 2.000000e+00
  br label %bb.bd

bb.bd:                                            ; preds = %_RNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test46twosample_schroer_and_trenkler_twosided_pvalue.exit, %_RNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test36onesample_kolmogorov_twosided_pvalue.exit, %bb.ba, %bb.az
  %.sroa.029.0 = phi double [ %i.eb, %bb.az ], [ %i.ev, %bb.ba ], [ %i.lw, %_RNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test46twosample_schroer_and_trenkler_twosided_pvalue.exit ], [ %i.fy, %_RNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test36onesample_kolmogorov_twosided_pvalue.exit ]
  %.sroa.030.0 = phi double [ %.sroa.022.0.lcssa, %bb.az ], [ %.sroa.017.0.lcssa, %bb.ba ], [ %i.gd, %_RNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test46twosample_schroer_and_trenkler_twosided_pvalue.exit ], [ %i.ey, %_RNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test36onesample_kolmogorov_twosided_pvalue.exit ]
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sroa.030.0, ptr %i.fz, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %.sroa.029.0, ptr %i.ga, align 8
  store i8 0, ptr %0, align 8
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.bf unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.thread89 unwind label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit57 unwind label %.thread98

bb.bg:                                            ; preds = %bb.be
  %i.gc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.bh:                                            ; preds = %bb.bb
  %i.gd = call nsz double @llvm.maximumnum.f64(double %.sroa.017.0.lcssa, double %.sroa.022.0.lcssa) ; 2 uses
  %i.ge = uitofp i64 %..i to double               ; 3 uses
  %i.gf = uitofp i64 %..i45 to double             ; 5 uses
  %i.gg = fmul double %i.gd, %i.ge
  %i.gh = fmul double %i.gg, %i.gf
  %i.gi = fadd double %i.gh, f0xBE7AD7F29ABCAF48
  %i.gj = call double @llvm.floor.f64(double %i.gi)
  %i.gk = fadd double %i.gj, 5.000000e-01
  %i.gl = fmul nnan double %i.ge, %i.gf
  %i.gm = fdiv double %i.gk, %i.gl                ; 3 uses
  %i.gn = add i64 %i.ba, %i.at
  %i.go = invoke noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function9factorial8binomial(i64 noundef %i.gn, i64 noundef %..i)
          to label %.noexc59 unwind label %bb.ao

.noexc59:                                         ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.gp = add i64 %..i45, 1                       ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !34
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 2, 1) %i.gp, i1 noundef zeroext true, i64 noundef 8, i64 noundef 8)
          to label %.noexc60 unwind label %bb.ao

.noexc60:                                         ; preds = %.noexc59
  %i.gq = load i64, ptr %i.b, align 8, !range !37, !noalias !34, !noundef !4
  %i.gr = trunc nuw i64 %i.gq to i1
  %i.gs = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.gt = load i64, ptr %i.gs, align 8, !range !38, !noalias !34, !noundef !4 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.gr, label %bb.bi, label %_RINvXs_NtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs8lmMd0ZksV9_6statrs.exit.i, !prof !39

bb.bi:                                            ; preds = %.noexc60
  %i.gv = load i64, ptr %i.gu, align 8, !noalias !34
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.gt, i64 %i.gv) #16
          to label %.noexc61 unwind label %bb.ao

.noexc61:                                         ; preds = %bb.bi
  unreachable

_RINvXs_NtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs8lmMd0ZksV9_6statrs.exit.i: ; preds = %.noexc60
  %i.gw = load ptr, ptr %i.gu, align 8, !noalias !34, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !34
  store i64 %i.gt, ptr %i.c, align 8, !alias.scope !34
  %i.gx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.gw, ptr %i.gx, align 8, !alias.scope !34
  %i.gy = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.gp, ptr %i.gy, align 8, !alias.scope !34
  %i.gz = add i64 %..i, 1
  invoke void @_RINvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemINtB5_3VecdENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, i64 noundef %i.gz)
          to label %.noexc62 unwind label %bb.ao

.noexc62:                                         ; preds = %_RINvXs_NtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs8lmMd0ZksV9_6statrs.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ha = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 8 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 5 uses
  %i.hc = load i64, ptr %i.hb, align 8, !noundef !4
  %.not.i = icmp eq i64 %i.hc, 0
  br i1 %.not.i, label %.loopexit159.invoke.i, label %bb.bj

bb.bj:                                            ; preds = %.noexc62
  %i.hd = load ptr, ptr %i.ha, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %i.hf = load i64, ptr %i.he, align 8, !noundef !4
  %.not58.i = icmp eq i64 %i.hf, 0
  br i1 %.not58.i, label %.loopexit159.invoke.i, label %bb.bl

bb.bk:                                            ; preds = %.loopexit159.invoke.i
  %i.hg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecIBC_dEEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #14
          to label %.body49 unwind label %bb.cq

bb.bl:                                            ; preds = %bb.bj
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8, !nonnull !4, !noundef !4
  store double 1.000000e+00, ptr %i.hi, align 8
  %i.hj = fdiv double 0.000000e+00, %i.gf
  br label %.peel.begin.i

.loopexit.i:                                      ; preds = %.backedge.i, %.backedge.i.us
  %exitcond184.not.i = icmp eq i64 %.sroa.0.0113.i, %..i
  br i1 %exitcond184.not.i, label %bb.cc, label %.peel.begin.i

.peel.begin.i:                                    ; preds = %.loopexit.i, %bb.bl
  %.sroa.0.0113.i = phi i64 [ 0, %bb.bl ], [ %i.hk, %.loopexit.i ] ; 22 uses
  %i.hk = add i64 %.sroa.0.0113.i, 1
  %i.hl = uitofp i64 %.sroa.0.0113.i to double
  %i.hm = fdiv double %i.hl, %i.ge                ; 3 uses
  %.not59.i = icmp eq i64 %.sroa.0.0113.i, 0
  %i.hn = add i64 %.sroa.0.0113.i, -1             ; 6 uses
  br i1 %.not59.i, label %.peel.next.i.split.us, label %bb.bm

bb.bm:                                            ; preds = %.peel.begin.i
  %i.ho = fsub double %i.hm, %i.hj
  %i.hp = call double @llvm.fabs.f64(double %i.ho)
  %i.hq = fcmp ogt double %i.hp, %i.gm
  %i.hr = load i64, ptr %i.hb, align 8, !noundef !4 ; 6 uses
  br i1 %i.hq, label %bb.bs, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.hs = icmp ult i64 %i.hn, %i.hr
  br i1 %i.hs, label %bb.bo, label %.loopexit159.invoke.i

bb.bo:                                            ; preds = %bb.bn
  %i.ht = load ptr, ptr %i.ha, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.hu = getelementptr inbounds nuw [24 x i8], ptr %i.ht, i64 %i.hn ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  %i.hw = load i64, ptr %i.hv, align 8, !noundef !4
  %.not210.i = icmp eq i64 %i.hw, 0
  br i1 %.not210.i, label %.loopexit159.invoke.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.hy = load ptr, ptr %i.hx, align 8, !nonnull !4, !noundef !4
  %i.hz = load double, ptr %i.hy, align 8, !noundef !4
  %i.ia = icmp ult i64 %.sroa.0.0113.i, %i.hr
  br i1 %i.ia, label %bb.bq, label %.loopexit159.invoke.i

bb.bq:                                            ; preds = %bb.bp
  %i.ib = getelementptr inbounds nuw [24 x i8], ptr %i.ht, i64 %.sroa.0.0113.i ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  %i.id = load i64, ptr %i.ic, align 8, !noundef !4
  %.not211.i = icmp eq i64 %i.id, 0
end_hunk_0
