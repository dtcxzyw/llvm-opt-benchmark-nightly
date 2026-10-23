Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/approx?download=true
inline.NumInlined: 338
inline.NumDeleted: 150
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN2cv12approxPolyDPERKNS_11_InputArrayERKNS_12_OutputArrayEdb:bb.a
  %i.dv = icmp ne i64 %.sroa.13.0.extract.shift356.i, %.sroa.18.0.extract.shift383.i
  %or.cond.i = or i1 %i.du, %i.dv
  br i1 %or.cond.i, label %.lr.ph.i, label %bb.af

.lr.ph.i:                                         ; preds = %bb.ae
  %i.dw = fneg double %i.dr
  br label %bb.ai

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %.noexc66 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc66:                                         ; preds = %bb.af
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZN2cvL13approxPolyDP_IiEEiPKNS_6Point_IT_EEiPS3_bdRNS_10AutoBufferINS_5RangeELm136EEE, ptr noundef nonnull @.str.1, i32 noundef 171) #16
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %.noexc66
  unreachable

bb.ah:                                            ; preds = %.noexc66
  %i.dx = landingpad { ptr, i32 }
          cleanup
  %i.dy = load ptr, ptr %6, align 8, !tbaa !14    ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ea = icmp eq ptr %i.dy, %i.dz
  br i1 %i.ea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ah
  %i.eb = load i64, ptr %i.dz, align 8, !tbaa !15
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.ec) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %.body

bb.ai:                                            ; preds = %bb.ap, %.lr.ph.i
  %.0209474.i = phi double [ 0.000000e+00, %.lr.ph.i ], [ %.1.i, %bb.ap ] ; 2 uses
  %.2240473.i = phi i32 [ %spec.store.select2.i, %.lr.ph.i ], [ %spec.store.select4.i, %bb.ap ] ; 2 uses
  %.sroa.0398.6472.i = phi i32 [ %.sroa.0398.5477.i, %.lr.ph.i ], [ %.sroa.0398.7.i, %bb.ap ]
  %i.ed = sext i32 %.2240473.i to i64
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.ed
  %i.ef = load i64, ptr %i.ee, align 4, !tbaa !26 ; 2 uses
  %.sroa.0.0.extract.trunc321.i = trunc i64 %i.ef to i32 ; 2 uses
  %.sroa.14.0.extract.shift332.i = lshr i64 %i.ef, 32
  %.sroa.14.0.extract.trunc333.i = trunc nuw i64 %.sroa.14.0.extract.shift332.i to i32 ; 2 uses
  %i.eg = add nsw i32 %.2240473.i, 1              ; 2 uses
  %.not270.i = icmp slt i32 %i.eg, %i.n
  %spec.store.select4.i = select i1 %.not270.i, i32 %i.eg, i32 0 ; 3 uses
  %i.eh = sub nsw i32 %.sroa.0.0.extract.trunc321.i, %.sroa.0361.0.extract.trunc370.i ; 3 uses
  %i.ei = sitofp i32 %i.eh to double              ; 2 uses
  %i.ej = sub nsw i32 %.sroa.14.0.extract.trunc333.i, %.sroa.18.0.extract.trunc384.i ; 3 uses
  %i.ek = sitofp i32 %i.ej to double              ; 2 uses
  %i.el = fmul nnan double %i.dr, %i.ek
  %i.em = call double @llvm.fmuladd.f64(double %i.ei, double %i.dp, double %i.el) ; 2 uses
  %i.en = fcmp olt double %i.em, 0.000000e+00
  br i1 %i.en, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.eo = mul nsw i32 %i.eh, %i.eh
  %i.ep = mul nsw i32 %i.ej, %i.ej
  %i.eq = add nuw nsw i32 %i.ep, %i.eo
  %i.er = uitofp nneg i32 %i.eq to double
  %i.es = fmul double %i.dt, %i.er
  br label %bb.an

bb.ak:                                            ; preds = %bb.ai
  %i.et = fcmp ogt double %i.em, %i.dt
  br i1 %i.et, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.eu = sub nsw i32 %.sroa.0.0.extract.trunc321.i, %.sroa.0338.0.extract.trunc348.i ; 2 uses
  %i.ev = mul nsw i32 %i.eu, %i.eu
  %i.ew = sub nsw i32 %.sroa.14.0.extract.trunc333.i, %.sroa.13.0.extract.trunc357.i ; 2 uses
  %i.ex = mul nsw i32 %i.ew, %i.ew
  %i.ey = add nuw nsw i32 %i.ex, %i.ev
  %i.ez = uitofp nneg i32 %i.ey to double
  %i.fa = fmul double %i.dt, %i.ez
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.fb = fmul nnan double %i.dw, %i.ei
  %i.fc = call double @llvm.fmuladd.f64(double %i.ek, double %i.dp, double %i.fb) ; 2 uses
  %i.fd = fmul double %i.fc, %i.fc
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.aj
  %.0206.i = phi double [ %i.es, %bb.aj ], [ %i.fa, %bb.al ], [ %i.fd, %bb.am ] ; 2 uses
  %i.fe = fcmp ogt double %.0206.i, %.0209474.i
  br i1 %i.fe, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.ff = add i32 %.pre-phi, %spec.store.select4.i
  %i.fg = srem i32 %i.ff, %i.n
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.sroa.0398.7.i = phi i32 [ %i.fg, %bb.ao ], [ %.sroa.0398.6472.i, %bb.an ] ; 4 uses
  %.1.i = phi double [ %.0206.i, %bb.ao ], [ %.0209474.i, %bb.an ] ; 2 uses
  %.not267.i = icmp eq i32 %spec.store.select4.i, %.sroa.12.0.extract.trunc.i
  br i1 %.not267.i, label %._crit_edge.i, label %bb.ai, !llvm.loop !49

._crit_edge.i:                                    ; preds = %bb.ap
  %i.fh = fmul double %i.aq, %i.dt
  %i.fi = fcmp ugt double %.1.i, %i.fh
  br i1 %i.fi, label %bb.aq, label %.critedge.i

.critedge.i:                                      ; preds = %._crit_edge.i, %bb.ad
  %.sroa.0398.8.i = phi i32 [ %.sroa.0398.7.i, %._crit_edge.i ], [ %.sroa.0398.5477.i, %bb.ad ]
  %i.fj = add nsw i32 %.1231478.i, 1
  %i.fk = sext i32 %.1231478.i to i64
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.fk
  store i64 %i.dm, ptr %i.fl, align 4, !tbaa !26
  br label %bb.az

bb.aq:                                            ; preds = %._crit_edge.i
  %.not268.i = icmp ult i64 %i.de, %.5219480.i
  br i1 %.not268.i, label %_ZN2cv10AutoBufferINS_5RangeELm136EE6resizeEm.exit298.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fm = mul i64 %.5219480.i, 3                  ; 3 uses
  %i.fn = lshr i64 %i.fm, 1                       ; 9 uses
  %.not.i286.i = icmp ugt i64 %i.fn, %i.db
  br i1 %.not.i286.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store i64 %i.fn, ptr %i.al, align 8, !tbaa !76
  br label %_ZN2cv10AutoBufferINS_5RangeELm136EE6resizeEm.exit298.i

bb.at:                                            ; preds = %bb.ar
  %i.fo = icmp ugt i64 %i.fm, 273
  br i1 %i.fo, label %.loopexit30.loopexit.i297.i, label %.loopexit30.i287.i

.loopexit30.loopexit.i297.i:                      ; preds = %bb.at
  %i.fp = icmp ugt i64 %i.fm, 4611686018427387903
  %i.fq = shl i64 %i.fn, 3                        ; 2 uses
  %i.fr = select i1 %i.fp, i64 -1, i64 %i.fq
  %i.fs = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.fr) #18
          to label %.noexc67 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc67:                                         ; preds = %.loopexit30.loopexit.i297.i
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.fs, i8 0, i64 %i.fq, i1 false), !tbaa !26
  br label %.loopexit30.i287.i

.loopexit30.i287.i:                               ; preds = %.noexc67, %bb.at
  %i.ft = phi ptr [ %i.fs, %.noexc67 ], [ %scevgep.i63149, %bb.at ] ; 13 uses
  store ptr %i.ft, ptr %15, align 8, !tbaa !75
  store i64 %i.fn, ptr %i.al, align 8, !tbaa !76
  %.not28.i288.i = icmp ne ptr %i.ft, %i.dc
  %i.fu = icmp ne i64 %i.db, 0
  %or.cond34.i289.i = and i1 %i.fu, %.not28.i288.i
  br i1 %or.cond34.i289.i, label %.lr.ph.i294.i.preheader, label %._crit_edge.i290.i

.lr.ph.i294.i.preheader:                          ; preds = %.loopexit30.i287.i
  %i.fv = ptrtoaddr ptr %i.ft to i64
  %min.iters.check258 = icmp ult i64 %i.db, 4
  %i.fw = sub i64 %i.dd, %i.fv
  %diff.check256 = icmp ugt i64 %i.fw, -32
  %or.cond269 = or i1 %min.iters.check258, %diff.check256
  br i1 %or.cond269, label %.lr.ph.i294.i.preheader274, label %vector.ph259

vector.ph259:                                     ; preds = %.lr.ph.i294.i.preheader
  %n.vec260 = and i64 %i.db, -4                   ; 3 uses
  br label %vector.body261

vector.body261:                                   ; preds = %vector.body261, %vector.ph259
  %index262 = phi i64 [ 0, %vector.ph259 ], [ %index.next265, %vector.body261 ] ; 3 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %index262 ; 2 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %index262 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %wide.load263 = load <2 x i64>, ptr %i.fx, align 4, !tbaa !26
  %wide.load264 = load <2 x i64>, ptr %i.fz, align 4, !tbaa !26
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  store <2 x i64> %wide.load263, ptr %i.fy, align 4, !tbaa !26
  store <2 x i64> %wide.load264, ptr %i.ga, align 4, !tbaa !26
  %index.next265 = add nuw i64 %index262, 4       ; 2 uses
  %i.gb = icmp eq i64 %index.next265, %n.vec260
  br i1 %i.gb, label %middle.block266, label %vector.body261, !llvm.loop !50

middle.block266:                                  ; preds = %vector.body261
  %cmp.n267 = icmp eq i64 %i.db, %n.vec260
  br i1 %cmp.n267, label %._crit_edge.i290.i, label %.lr.ph.i294.i.preheader274

.lr.ph.i294.i.preheader274:                       ; preds = %.lr.ph.i294.i.preheader, %middle.block266
  %.031.i295.i.ph = phi i64 [ 0, %.lr.ph.i294.i.preheader ], [ %n.vec260, %middle.block266 ] ; 3 uses
  %xtraiter285 = and i64 %i.db, 3                 ; 2 uses
  %lcmp.mod286.not = icmp eq i64 %xtraiter285, 0
  br i1 %lcmp.mod286.not, label %.lr.ph.i294.i.prol.loopexit, label %.lr.ph.i294.i.prol

.lr.ph.i294.i.prol:                               ; preds = %.lr.ph.i294.i.preheader274, %.lr.ph.i294.i.prol
  %.031.i295.i.prol = phi i64 [ %i.gf, %.lr.ph.i294.i.prol ], [ %.031.i295.i.ph, %.lr.ph.i294.i.preheader274 ] ; 3 uses
  %prol.iter287 = phi i64 [ %prol.iter287.next, %.lr.ph.i294.i.prol ], [ 0, %.lr.ph.i294.i.preheader274 ]
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %.031.i295.i.prol
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %.031.i295.i.prol
  %i.ge = load i64, ptr %i.gc, align 4, !tbaa !26
  store i64 %i.ge, ptr %i.gd, align 4, !tbaa !26
  %i.gf = add nuw nsw i64 %.031.i295.i.prol, 1    ; 2 uses
  %prol.iter287.next = add i64 %prol.iter287, 1   ; 2 uses
  %prol.iter287.cmp.not = icmp eq i64 %prol.iter287.next, %xtraiter285
  br i1 %prol.iter287.cmp.not, label %.lr.ph.i294.i.prol.loopexit, label %.lr.ph.i294.i.prol, !llvm.loop !51

.lr.ph.i294.i.prol.loopexit:                      ; preds = %.lr.ph.i294.i.prol, %.lr.ph.i294.i.preheader274
  %.031.i295.i.unr = phi i64 [ %.031.i295.i.ph, %.lr.ph.i294.i.preheader274 ], [ %i.gf, %.lr.ph.i294.i.prol ]
  %i.gg = sub i64 %.031.i295.i.ph, %i.db
  %i.gh = icmp ugt i64 %i.gg, -4
  br i1 %i.gh, label %._crit_edge.i290.i, label %.lr.ph.i294.i

.lr.ph.i294.i:                                    ; preds = %.lr.ph.i294.i.prol.loopexit, %.lr.ph.i294.i
  %.031.i295.i = phi i64 [ %i.gx, %.lr.ph.i294.i ], [ %.031.i295.i.unr, %.lr.ph.i294.i.prol.loopexit ] ; 6 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %.031.i295.i
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %.031.i295.i
  %i.gk = load i64, ptr %i.gi, align 4, !tbaa !26
  store i64 %i.gk, ptr %i.gj, align 4, !tbaa !26
  %i.gl = add nuw nsw i64 %.031.i295.i, 1         ; 2 uses
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.gl
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %i.gl
  %i.go = load i64, ptr %i.gm, align 4, !tbaa !26
  store i64 %i.go, ptr %i.gn, align 4, !tbaa !26
  %i.gp = add nuw nsw i64 %.031.i295.i, 2         ; 2 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.gp
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %i.gp
  %i.gs = load i64, ptr %i.gq, align 4, !tbaa !26
  store i64 %i.gs, ptr %i.gr, align 4, !tbaa !26
  %i.gt = add nuw nsw i64 %.031.i295.i, 3         ; 2 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.gt
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %i.gt
  %i.gw = load i64, ptr %i.gu, align 4, !tbaa !26
  store i64 %i.gw, ptr %i.gv, align 4, !tbaa !26
  %i.gx = add nuw nsw i64 %.031.i295.i, 4         ; 2 uses
  %exitcond.not.i296.i.3 = icmp eq i64 %i.gx, %i.db
  br i1 %exitcond.not.i296.i.3, label %._crit_edge.i290.i, label %.lr.ph.i294.i, !llvm.loop !52

._crit_edge.i290.i:                               ; preds = %.lr.ph.i294.i.prol.loopexit, %.lr.ph.i294.i, %middle.block266, %.loopexit30.i287.i
  %i.gy = shl i64 %i.db, 3
  %scevgep.i291.i = getelementptr i8, ptr %i.ft, i64 %i.gy
  %i.gz = sub nuw nsw i64 %i.fn, %i.db
  %i.ha = shl i64 %i.gz, 3
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i291.i, i8 0, i64 %i.ha, i1 false), !tbaa !26
  %.not29.i292.i = icmp eq ptr %i.dc, %scevgep.i63149
  %i.hb = icmp eq ptr %i.dc, null
  %or.cond.i293.i = or i1 %.not29.i292.i, %i.hb
  br i1 %or.cond.i293.i, label %_ZN2cv10AutoBufferINS_5RangeELm136EE6resizeEm.exit298.i, label %bb.au

bb.au:                                            ; preds = %._crit_edge.i290.i
  call void @_ZdaPv(ptr noundef nonnull %i.dc) #17
  %.pre.i = load ptr, ptr %15, align 8, !tbaa !75 ; 3 uses
  %.pre505.i = load i64, ptr %i.al, align 8, !tbaa !76 ; 2 uses
  br label %_ZN2cv10AutoBufferINS_5RangeELm136EE6resizeEm.exit298.i

_ZN2cv10AutoBufferINS_5RangeELm136EE6resizeEm.exit298.i: ; preds = %bb.au, %._crit_edge.i290.i, %bb.as, %bb.aq
  %i.hc = phi ptr [ %i.cz, %bb.aq ], [ %i.cz, %bb.as ], [ %i.ft, %._crit_edge.i290.i ], [ %.pre.i, %bb.au ] ; 4 uses
  %i.hd = phi ptr [ %i.da, %bb.aq ], [ %i.da, %bb.as ], [ %i.ft, %._crit_edge.i290.i ], [ %.pre.i, %bb.au ] ; 12 uses
  %i.he = phi i64 [ %i.db, %bb.aq ], [ %i.fn, %bb.as ], [ %i.fn, %._crit_edge.i290.i ], [ %.pre505.i, %bb.au ] ; 11 uses
  %.6220.i = phi i64 [ %.5219480.i, %bb.aq ], [ %i.fn, %bb.as ], [ %i.fn, %._crit_edge.i290.i ], [ %.pre505.i, %bb.au ] ; 3 uses
  %.6.i = phi ptr [ %i.dc, %bb.aq ], [ %i.da, %bb.as ], [ %i.ft, %._crit_edge.i290.i ], [ %.pre.i, %bb.au ] ; 2 uses
  %i.hf = ptrtoaddr ptr %i.hd to i64
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %.6.i, i64 %i.de
  %.sroa.14406.0.insert.shift409.i = and i64 %i.dg, -4294967296
  %.sroa.0398.0.insert.ext403.i = zext i32 %.sroa.0398.7.i to i64 ; 2 uses
  %.sroa.0398.0.insert.insert405.i = or disjoint i64 %.sroa.14406.0.insert.shift409.i, %.sroa.0398.0.insert.ext403.i
  store i64 %.sroa.0398.0.insert.insert405.i, ptr %i.hg, align 4, !tbaa !26
  %.not269.i = icmp ult i64 %.2225479.i, %.6220.i
  br i1 %.not269.i, label %_ZN2cv10AutoBufferINS_5RangeELm136EE6resizeEm.exit311.i, label %bb.av

bb.av:                                            ; preds = %_ZN2cv10AutoBufferINS_5RangeELm136EE6resizeEm.exit298.i
  %i.hh = mul i64 %.6220.i, 3                     ; 3 uses
  %i.hi = lshr i64 %i.hh, 1                       ; 9 uses
  %.not.i299.i = icmp ugt i64 %i.hi, %i.he
  br i1 %.not.i299.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  store i64 %i.hi, ptr %i.al, align 8, !tbaa !76
  br label %_ZN2cv10AutoBufferINS_5RangeELm136EE6resizeEm.exit311.i

bb.ax:                                            ; preds = %bb.av
  %i.hj = icmp ugt i64 %i.hh, 273
  br i1 %i.hj, label %.loopexit30.loopexit.i310.i, label %.loopexit30.i300.i

.loopexit30.loopexit.i310.i:                      ; preds = %bb.ax
  %i.hk = icmp ugt i64 %i.hh, 4611686018427387903
  %i.hl = shl i64 %i.hi, 3                        ; 2 uses
  %i.hm = select i1 %i.hk, i64 -1, i64 %i.hl
  %i.hn = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hm) #18
          to label %.noexc68 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc68:                                         ; preds = %.loopexit30.loopexit.i310.i
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.hn, i8 0, i64 %i.hl, i1 false), !tbaa !26
  br label %.loopexit30.i300.i

.loopexit30.i300.i:                               ; preds = %.noexc68, %bb.ax
  %i.ho = phi ptr [ %i.hn, %.noexc68 ], [ %scevgep.i63149, %bb.ax ] ; 13 uses
  store ptr %i.ho, ptr %15, align 8, !tbaa !75
  store i64 %i.hi, ptr %i.al, align 8, !tbaa !76
  %.not28.i301.i = icmp ne ptr %i.ho, %i.hd
  %i.hp = icmp ne i64 %i.he, 0
  %or.cond34.i302.i = and i1 %i.hp, %.not28.i301.i
  br i1 %or.cond34.i302.i, label %.lr.ph.i307.i.preheader, label %._crit_edge.i303.i

.lr.ph.i307.i.preheader:                          ; preds = %.loopexit30.i300.i
  %i.hq = ptrtoaddr ptr %i.ho to i64
  %min.iters.check244 = icmp ult i64 %i.he, 4
  %i.hr = sub i64 %i.hf, %i.hq
  %diff.check242 = icmp ugt i64 %i.hr, -32
  %or.cond270 = select i1 %min.iters.check244, i1 true, i1 %diff.check242
  br i1 %or.cond270, label %.lr.ph.i307.i.preheader273, label %vector.ph245

vector.ph245:                                     ; preds = %.lr.ph.i307.i.preheader
  %n.vec246 = and i64 %i.he, -4                   ; 3 uses
  br label %vector.body247

vector.body247:                                   ; preds = %vector.body247, %vector.ph245
  %index248 = phi i64 [ 0, %vector.ph245 ], [ %index.next251, %vector.body247 ] ; 3 uses
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %index248 ; 2 uses
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %index248 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %wide.load249 = load <2 x i64>, ptr %i.hs, align 4, !tbaa !26
  %wide.load250 = load <2 x i64>, ptr %i.hu, align 4, !tbaa !26
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  store <2 x i64> %wide.load249, ptr %i.ht, align 4, !tbaa !26
  store <2 x i64> %wide.load250, ptr %i.hv, align 4, !tbaa !26
  %index.next251 = add nuw i64 %index248, 4       ; 2 uses
  %i.hw = icmp eq i64 %index.next251, %n.vec246
  br i1 %i.hw, label %middle.block252, label %vector.body247, !llvm.loop !53

middle.block252:                                  ; preds = %vector.body247
  %cmp.n253 = icmp eq i64 %i.he, %n.vec246
  br i1 %cmp.n253, label %._crit_edge.i303.i, label %.lr.ph.i307.i.preheader273

.lr.ph.i307.i.preheader273:                       ; preds = %.lr.ph.i307.i.preheader, %middle.block252
  %.031.i308.i.ph = phi i64 [ 0, %.lr.ph.i307.i.preheader ], [ %n.vec246, %middle.block252 ] ; 3 uses
  %xtraiter288 = and i64 %i.he, 3                 ; 2 uses
  %lcmp.mod289.not = icmp eq i64 %xtraiter288, 0
  br i1 %lcmp.mod289.not, label %.lr.ph.i307.i.prol.loopexit, label %.lr.ph.i307.i.prol

.lr.ph.i307.i.prol:                               ; preds = %.lr.ph.i307.i.preheader273, %.lr.ph.i307.i.prol
  %.031.i308.i.prol = phi i64 [ %i.ia, %.lr.ph.i307.i.prol ], [ %.031.i308.i.ph, %.lr.ph.i307.i.preheader273 ] ; 3 uses
  %prol.iter290 = phi i64 [ %prol.iter290.next, %.lr.ph.i307.i.prol ], [ 0, %.lr.ph.i307.i.preheader273 ]
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %.031.i308.i.prol
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %.031.i308.i.prol
  %i.hz = load i64, ptr %i.hx, align 4, !tbaa !26
  store i64 %i.hz, ptr %i.hy, align 4, !tbaa !26
  %i.ia = add nuw nsw i64 %.031.i308.i.prol, 1    ; 2 uses
  %prol.iter290.next = add i64 %prol.iter290, 1   ; 2 uses
  %prol.iter290.cmp.not = icmp eq i64 %prol.iter290.next, %xtraiter288
  br i1 %prol.iter290.cmp.not, label %.lr.ph.i307.i.prol.loopexit, label %.lr.ph.i307.i.prol, !llvm.loop !54

.lr.ph.i307.i.prol.loopexit:                      ; preds = %.lr.ph.i307.i.prol, %.lr.ph.i307.i.preheader273
  %.031.i308.i.unr = phi i64 [ %.031.i308.i.ph, %.lr.ph.i307.i.preheader273 ], [ %i.ia, %.lr.ph.i307.i.prol ]
  %i.ib = sub i64 %.031.i308.i.ph, %i.he
  %i.ic = icmp ugt i64 %i.ib, -4
  br i1 %i.ic, label %._crit_edge.i303.i, label %.lr.ph.i307.i

.lr.ph.i307.i:                                    ; preds = %.lr.ph.i307.i.prol.loopexit, %.lr.ph.i307.i
  %.031.i308.i = phi i64 [ %i.is, %.lr.ph.i307.i ], [ %.031.i308.i.unr, %.lr.ph.i307.i.prol.loopexit ] ; 6 uses
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %.031.i308.i
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %.031.i308.i
  %i.if = load i64, ptr %i.id, align 4, !tbaa !26
  store i64 %i.if, ptr %i.ie, align 4, !tbaa !26
  %i.ig = add nuw nsw i64 %.031.i308.i, 1         ; 2 uses
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %i.ig
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %i.ig
  %i.ij = load i64, ptr %i.ih, align 4, !tbaa !26
  store i64 %i.ij, ptr %i.ii, align 4, !tbaa !26
  %i.ik = add nuw nsw i64 %.031.i308.i, 2         ; 2 uses
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %i.ik
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %i.ik
  %i.in = load i64, ptr %i.il, align 4, !tbaa !26
  store i64 %i.in, ptr %i.im, align 4, !tbaa !26
  %i.io = add nuw nsw i64 %.031.i308.i, 3         ; 2 uses
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %i.io
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %i.io
  %i.ir = load i64, ptr %i.ip, align 4, !tbaa !26
  store i64 %i.ir, ptr %i.iq, align 4, !tbaa !26
  %i.is = add nuw nsw i64 %.031.i308.i, 4         ; 2 uses
  %exitcond.not.i309.i.3 = icmp eq i64 %i.is, %i.he
  br i1 %exitcond.not.i309.i.3, label %._crit_edge.i303.i, label %.lr.ph.i307.i, !llvm.loop !55

._crit_edge.i303.i:                               ; preds = %.lr.ph.i307.i.prol.loopexit, %.lr.ph.i307.i, %middle.block252, %.loopexit30.i300.i
  %i.it = shl i64 %i.he, 3
  %scevgep.i304.i = getelementptr i8, ptr %i.ho, i64 %i.it
  %i.iu = sub nuw nsw i64 %i.hi, %i.he
  %i.iv = shl i64 %i.iu, 3
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i304.i, i8 0, i64 %i.iv, i1 false), !tbaa !26
  %.not29.i305.i = icmp eq ptr %i.hd, %scevgep.i63149
  %i.iw = icmp eq ptr %i.hd, null
  %or.cond.i306.i = or i1 %.not29.i305.i, %i.iw
  br i1 %or.cond.i306.i, label %_ZN2cv10AutoBufferINS_5RangeELm136EE6resizeEm.exit311.i, label %bb.ay

bb.ay:                                            ; preds = %._crit_edge.i303.i
  call void @_ZdaPv(ptr noundef nonnull %i.hd) #17
  %.pre506.i = load ptr, ptr %15, align 8, !tbaa !75 ; 3 uses
  %.pre507.i = load i64, ptr %i.al, align 8, !tbaa !76 ; 2 uses
  br label %_ZN2cv10AutoBufferINS_5RangeELm136EE6resizeEm.exit311.i

_ZN2cv10AutoBufferINS_5RangeELm136EE6resizeEm.exit311.i: ; preds = %bb.ay, %._crit_edge.i303.i, %bb.aw, %_ZN2cv10AutoBufferINS_5RangeELm136EE6resizeEm.exit298.i
  %i.ix = phi ptr [ %i.hc, %_ZN2cv10AutoBufferINS_5RangeELm136EE6resizeEm.exit298.i ], [ %i.hc, %bb.aw ], [ %i.ho, %._crit_edge.i303.i ], [ %.pre506.i, %bb.ay ]
  %i.iy = phi ptr [ %i.hd, %_ZN2cv10AutoBufferINS_5RangeELm136EE6resizeEm.exit298.i ], [ %i.hc, %bb.aw ], [ %i.ho, %._crit_edge.i303.i ], [ %.pre506.i, %bb.ay ]
  %i.iz = phi i64 [ %i.he, %_ZN2cv10AutoBufferINS_5RangeELm136EE6resizeEm.exit298.i ], [ %i.hi, %bb.aw ], [ %i.hi, %._crit_edge.i303.i ], [ %.pre507.i, %bb.ay ]
  %.7221.i = phi i64 [ %.6220.i, %_ZN2cv10AutoBufferINS_5RangeELm136EE6resizeEm.exit298.i ], [ %i.hi, %bb.aw ], [ %i.hi, %._crit_edge.i303.i ], [ %.pre507.i, %bb.ay ]
  %.7.i = phi ptr [ %.6.i, %_ZN2cv10AutoBufferINS_5RangeELm136EE6resizeEm.exit298.i ], [ %i.hc, %bb.aw ], [ %i.ho, %._crit_edge.i303.i ], [ %.pre506.i, %bb.ay ] ; 2 uses
  %i.ja = add i64 %.2225479.i, 1
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %.7.i, i64 %.2225479.i
  %.sroa.12.0.insert.shift430.i = shl nuw i64 %.sroa.0398.0.insert.ext403.i, 32
  %.sroa.0412.0.insert.ext420.i = and i64 %i.dg, 4294967295
  %.sroa.0412.0.insert.insert422.i = or disjoint i64 %.sroa.12.0.insert.shift430.i, %.sroa.0412.0.insert.ext420.i
  store i64 %.sroa.0412.0.insert.insert422.i, ptr %i.jb, align 4, !tbaa !26
  br label %bb.az

bb.az:                                            ; preds = %_ZN2cv10AutoBufferINS_5RangeELm136EE6resizeEm.exit311.i, %.critedge.i
  %i.jc = phi ptr [ %i.cz, %.critedge.i ], [ %i.ix, %_ZN2cv10AutoBufferINS_5RangeELm136EE6resizeEm.exit311.i ]
  %i.jd = phi ptr [ %i.da, %.critedge.i ], [ %i.iy, %_ZN2cv10AutoBufferINS_5RangeELm136EE6resizeEm.exit311.i ]
  %i.je = phi i64 [ %i.db, %.critedge.i ], [ %i.iz, %_ZN2cv10AutoBufferINS_5RangeELm136EE6resizeEm.exit311.i ]
  %.sroa.0398.9.i = phi i32 [ %.sroa.0398.8.i, %.critedge.i ], [ %.sroa.0398.7.i, %_ZN2cv10AutoBufferINS_5RangeELm136EE6resizeEm.exit311.i ]
  %.2232.i = phi i32 [ %i.fj, %.critedge.i ], [ %.1231478.i, %_ZN2cv10AutoBufferINS_5RangeELm136EE6resizeEm.exit311.i ] ; 4 uses
  %.3226.i = phi i64 [ %i.de, %.critedge.i ], [ %i.ja, %_ZN2cv10AutoBufferINS_5RangeELm136EE6resizeEm.exit311.i ] ; 2 uses
  %.8222.i = phi i64 [ %.5219480.i, %.critedge.i ], [ %.7221.i, %_ZN2cv10AutoBufferINS_5RangeELm136EE6resizeEm.exit311.i ]
  %.8.i = phi ptr [ %i.dc, %.critedge.i ], [ %.7.i, %_ZN2cv10AutoBufferINS_5RangeELm136EE6resizeEm.exit311.i ]
  %.not257.i = icmp eq i64 %.3226.i, 0
  br i1 %.not257.i, label %._crit_edge484.i, label %bb.ad, !llvm.loop !56

._crit_edge484.i:                                 ; preds = %bb.az
  br i1 %.0229.shrunk447.ph.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %._crit_edge484.i
  %i.jf = getelementptr [8 x i8], ptr %i.ao, i64 %i.ac
  %i.jg = getelementptr i8, ptr %i.jf, i64 -8
  %i.jh = add nsw i32 %.2232.i, 1
  %i.ji = sext i32 %.2232.i to i64
  %i.jj = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.ji
  %i.jk = load i64, ptr %i.jg, align 4, !tbaa !26
  store i64 %i.jk, ptr %i.jj, align 4, !tbaa !26
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %._crit_edge484.i, %._crit_edge484.thread.i
  %.3233.i = phi i32 [ %.2232.i, %._crit_edge484.i ], [ %i.jh, %bb.ba ], [ 1, %._crit_edge484.thread.i ] ; 11 uses
  %i.jl = add nsw i32 %.3233.i, -1
  %i.jm = select i1 %3, i32 %i.jl, i32 0          ; 2 uses
  %i.jn = add nsw i32 %i.jm, 1                    ; 2 uses
  %.not258.i = icmp slt i32 %i.jn, %.3233.i
  %spec.store.select16.i = select i1 %.not258.i, i32 %i.jn, i32 0 ; 4 uses
  %i.jo = sext i32 %spec.store.select16.i to i64
  %i.jp = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.jo
  %i.jq = load i64, ptr %i.jp, align 4, !tbaa !26 ; 2 uses
  %i.jr = xor i1 %3, true
  %i.js = zext i1 %i.jr to i32                    ; 3 uses
  %i.jt = sub nsw i32 %.3233.i, %i.js             ; 2 uses
  %i.ju = icmp sgt i32 %i.jt, %i.js
  %i.jv = icmp sgt i32 %.3233.i, 2
  %i.jw = and i1 %i.jv, %i.ju
  br i1 %i.jw, label %.lr.ph499.i, label %._crit_edge500.i

.lr.ph499.i:                                      ; preds = %bb.bb
  %i.jx = add nsw i32 %spec.store.select16.i, 1   ; 2 uses
  %.not259.i = icmp slt i32 %i.jx, %.3233.i
  %spec.store.select5.i = select i1 %.not259.i, i32 %i.jx, i32 0
  %i.jy = sext i32 %i.jm to i64
  %i.jz = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.jy
  %i.ka = load i64, ptr %i.jz, align 4, !tbaa !26 ; 2 uses
  %.sroa.18.0.extract.shift377.i = lshr i64 %i.ka, 32
  %.sroa.18.0.extract.trunc378.i = trunc nuw i64 %.sroa.18.0.extract.shift377.i to i32
  %.sroa.0361.0.extract.trunc367.i = trunc i64 %i.ka to i32
  %i.kb = fmul nnan double %i.aq, 5.000000e-01
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bf, %.lr.ph499.i
  %.4234495.i = phi i32 [ %.3233.i, %.lr.ph499.i ], [ %.5235.i, %bb.bf ] ; 2 uses
  %.0236494.i = phi i32 [ %spec.store.select16.i, %.lr.ph499.i ], [ %.1237.i, %bb.bf ] ; 4 uses
  %.3241493.i = phi i32 [ %spec.store.select5.i, %.lr.ph499.i ], [ %.4242.i, %bb.bf ] ; 2 uses
  %.1245492.i = phi i32 [ %i.js, %.lr.ph499.i ], [ %i.lq, %bb.bf ] ; 2 uses
  %.sroa.14.0.in.in491.i = phi i64 [ %i.jq, %.lr.ph499.i ], [ %.sroa.14.1.in.in.i, %bb.bf ] ; 3 uses
  %.sroa.0361.3490.i = phi i32 [ %.sroa.0361.0.extract.trunc367.i, %.lr.ph499.i ], [ %.sroa.0361.4.i, %bb.bf ] ; 3 uses
  %.sroa.18.3489.i = phi i32 [ %.sroa.18.0.extract.trunc378.i, %.lr.ph499.i ], [ %.sroa.18.4.i, %bb.bf ] ; 3 uses
  %.sroa.0.0496.i = trunc i64 %.sroa.14.0.in.in491.i to i32 ; 3 uses
  %.sroa.14.0497.in.i = lshr i64 %.sroa.14.0.in.in491.i, 32
  %.sroa.14.0497.i = trunc nuw i64 %.sroa.14.0497.in.i to i32 ; 3 uses
  %i.kc = sext i32 %.3241493.i to i64
  %i.kd = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.kc
  %i.ke = load i64, ptr %i.kd, align 4, !tbaa !26 ; 4 uses
  %.sroa.0338.0.extract.trunc342.i = trunc i64 %i.ke to i32 ; 4 uses
  %.sroa.13.0.extract.shift349.i = lshr i64 %i.ke, 32
  %.sroa.13.0.extract.trunc350.i = trunc nuw i64 %.sroa.13.0.extract.shift349.i to i32 ; 4 uses
  %i.kf = add nsw i32 %.3241493.i, 1              ; 2 uses
  %.not260.i = icmp slt i32 %i.kf, %.3233.i
  %spec.store.select6.i = select i1 %.not260.i, i32 %i.kf, i32 0 ; 3 uses
  %i.kg = sub nsw i32 %.sroa.0338.0.extract.trunc342.i, %.sroa.0361.3490.i
  %i.kh = sitofp i32 %i.kg to double              ; 3 uses
  %i.ki = sub nsw i32 %.sroa.13.0.extract.trunc350.i, %.sroa.18.3489.i
  %i.kj = sitofp i32 %i.ki to double              ; 3 uses
  %i.kk = sub nsw i32 %.sroa.0.0496.i, %.sroa.0361.3490.i ; 2 uses
  %i.kl = sitofp i32 %i.kk to double
  %i.km = sub nsw i32 %.sroa.14.0497.i, %.sroa.18.3489.i ; 2 uses
  %i.kn = sitofp i32 %i.km to double
  %i.ko = fneg double %i.kh
  %i.kp = fmul nnan double %i.kn, %i.ko
  %i.kq = call double @llvm.fmuladd.f64(double %i.kl, double %i.kj, double %i.kp) ; 2 uses
  %i.kr = sub nsw i32 %.sroa.0338.0.extract.trunc342.i, %.sroa.0.0496.i
  %i.ks = mul nsw i32 %i.kr, %i.kk
  %i.kt = sub nsw i32 %.sroa.13.0.extract.trunc350.i, %.sroa.14.0497.i
  %i.ku = mul nsw i32 %i.kt, %i.km
  %i.kv = add nsw i32 %i.ku, %i.ks
  %i.kw = fmul double %i.kq, %i.kq
  %i.kx = fmul nnan double %i.kj, %i.kj
  %i.ky = call double @llvm.fmuladd.f64(double %i.kh, double %i.kh, double %i.kx)
  %i.kz = fmul double %i.kb, %i.ky
  %i.la = fcmp ole double %i.kw, %i.kz
  %i.lb = icmp ne i32 %.sroa.0361.3490.i, %.sroa.0338.0.extract.trunc342.i
  %or.cond8.i = select i1 %i.la, i1 %i.lb, i1 false
  %i.lc = icmp ne i32 %.sroa.18.3489.i, %.sroa.13.0.extract.trunc350.i
  %or.cond10.i = select i1 %or.cond8.i, i1 %i.lc, i1 false
  %i.ld = icmp sgt i32 %i.kv, -1
  %or.cond12.i = select i1 %or.cond10.i, i1 %i.ld, i1 false
  br i1 %or.cond12.i, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.le = add nsw i32 %.4234495.i, -1
  %i.lf = sext i32 %.0236494.i to i64
  %i.lg = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.lf
  store i64 %i.ke, ptr %i.lg, align 4, !tbaa !26
  %i.lh = add nsw i32 %.0236494.i, 1              ; 2 uses
  %.not262.i = icmp slt i32 %i.lh, %.3233.i
  %spec.store.select13.i = select i1 %.not262.i, i32 %i.lh, i32 0
  %i.li = sext i32 %spec.store.select6.i to i64
  %i.lj = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.li
  %i.lk = load i64, ptr %i.lj, align 4, !tbaa !26
  %i.ll = add nsw i32 %spec.store.select6.i, 1    ; 2 uses
  %.not263.i = icmp slt i32 %i.ll, %.3233.i
  %spec.store.select15.i = select i1 %.not263.i, i32 %i.ll, i32 0
  %i.lm = add nsw i32 %.1245492.i, 1
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc
  %i.ln = sext i32 %.0236494.i to i64
  %i.lo = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.ln
  store i64 %.sroa.14.0.in.in491.i, ptr %i.lo, align 4, !tbaa !26
  %i.lp = add nsw i32 %.0236494.i, 1              ; 2 uses
  %.not261.i = icmp slt i32 %i.lp, %.3233.i
  %spec.store.select14.i = select i1 %.not261.i, i32 %i.lp, i32 0
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.sroa.18.4.i = phi i32 [ %.sroa.13.0.extract.trunc350.i, %bb.bd ], [ %.sroa.14.0497.i, %bb.be ]
  %.sroa.0361.4.i = phi i32 [ %.sroa.0338.0.extract.trunc342.i, %bb.bd ], [ %.sroa.0.0496.i, %bb.be ]
  %.sroa.14.1.in.in.i = phi i64 [ %i.lk, %bb.bd ], [ %i.ke, %bb.be ] ; 2 uses
  %.2246.i = phi i32 [ %i.lm, %bb.bd ], [ %.1245492.i, %bb.be ]
  %.4242.i = phi i32 [ %spec.store.select15.i, %bb.bd ], [ %spec.store.select6.i, %bb.be ]
  %.1237.i = phi i32 [ %spec.store.select13.i, %bb.bd ], [ %spec.store.select14.i, %bb.be ] ; 2 uses
  %.5235.i = phi i32 [ %i.le, %bb.bd ], [ %.4234495.i, %bb.be ] ; 3 uses
  %i.lq = add nsw i32 %.2246.i, 1                 ; 2 uses
  %i.lr = icmp slt i32 %i.lq, %i.jt
  %i.ls = icmp sgt i32 %.5235.i, 2
  %i.lt = select i1 %i.lr, i1 %i.ls, i1 false
  br i1 %i.lt, label %bb.bc, label %._crit_edge500.i, !llvm.loop !57

._crit_edge500.i:                                 ; preds = %bb.bf, %bb.bb
  %.sroa.14.0.in.in.lcssa.i = phi i64 [ %i.jq, %bb.bb ], [ %.sroa.14.1.in.in.i, %bb.bf ]
  %.0236.lcssa.i = phi i32 [ %spec.store.select16.i, %bb.bb ], [ %.1237.i, %bb.bf ]
  %.4234.lcssa.i = phi i32 [ %.3233.i, %bb.bb ], [ %.5235.i, %bb.bf ] ; 2 uses
  br i1 %3, label %_ZN2cvL13approxPolyDP_IiEEiPKNS_6Point_IT_EEiPS3_bdRNS_10AutoBufferINS_5RangeELm136EEE.exit, label %bb.bg

bb.bg:                                            ; preds = %._crit_edge500.i
  %i.lu = sext i32 %.0236.lcssa.i to i64
  %i.lv = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.lu
  store i64 %.sroa.14.0.in.in.lcssa.i, ptr %i.lv, align 4, !tbaa !26
  br label %_ZN2cvL13approxPolyDP_IiEEiPKNS_6Point_IT_EEiPS3_bdRNS_10AutoBufferINS_5RangeELm136EEE.exit

bb.bh:                                            ; preds = %bb.u
  %i.lw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv10AutoBufferINS_6Point_IiEELm136EED2Ev.exit147

bb.bi:                                            ; preds = %bb.v
  %i.lx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv10AutoBufferINS_5RangeELm136EED2Ev.exit144
end_hunk_0
begin_hunk_1_@_ZN2cv12approxPolyDPERKNS_11_InputArrayERKNS_12_OutputArrayEdb:bb.a
  %i.pt = fcmp une float %i.pn, 0.000000e+00
  %i.pu = fcmp une float %i.pp, 0.000000e+00
  %or.cond.i101 = select i1 %i.pt, i1 true, i1 %i.pu
  br i1 %or.cond.i101, label %.lr.ph.i105, label %bb.bs

.lr.ph.i105:                                      ; preds = %bb.br
  %i.pv = fneg double %i.pq
  br label %bb.bv

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc130 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc130:                                        ; preds = %bb.bs
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN2cvL13approxPolyDP_IiEEiPKNS_6Point_IT_EEiPS3_bdRNS_10AutoBufferINS_5RangeELm136EEE, ptr noundef nonnull @.str.1, i32 noundef 171) #16
          to label %bb.bt unwind label %bb.bu

bb.bt:                                            ; preds = %.noexc130
  unreachable

bb.bu:                                            ; preds = %.noexc130
  %i.pw = landingpad { ptr, i32 }
          cleanup
  %i.px = load ptr, ptr %4, align 8, !tbaa !14    ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.pz = icmp eq ptr %i.px, %i.py
  br i1 %i.pz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i102: ; preds = %bb.bu
  %i.qa = load i64, ptr %i.py, align 8, !tbaa !15
  %i.qb = add i64 %i.qa, 1
  call void @_ZdlPvm(ptr noundef %i.px, i64 noundef %i.qb) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i103: ; preds = %bb.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i102
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %.body

bb.bv:                                            ; preds = %bb.cc, %.lr.ph.i105
  %.0209447.i = phi double [ 0.000000e+00, %.lr.ph.i105 ], [ %.1.i109, %bb.cc ] ; 2 uses
  %.2240446.i = phi i32 [ %spec.store.select2.i99, %.lr.ph.i105 ], [ %spec.store.select4.i107, %bb.cc ] ; 2 uses
  %.sroa.0371.6445.i = phi i32 [ %.sroa.0371.5450.i, %.lr.ph.i105 ], [ %.sroa.0371.7.i, %bb.cc ]
  %i.qc = sext i32 %.2240446.i to i64
  %i.qd = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.qc ; 2 uses
  %i.qe = load float, ptr %i.qd, align 4          ; 2 uses
  %.sroa_idx320.i = getelementptr inbounds nuw i8, ptr %i.qd, i64 4
  %i.qf = load float, ptr %.sroa_idx320.i, align 4 ; 2 uses
  %i.qg = add nsw i32 %.2240446.i, 1              ; 2 uses
  %.not268.i106 = icmp slt i32 %i.qg, %i.n
  %spec.store.select4.i107 = select i1 %.not268.i106, i32 %i.qg, i32 0 ; 3 uses
  %i.qh = fsub float %i.qe, %i.pk                 ; 3 uses
  %i.qi = fpext float %i.qh to double             ; 2 uses
  %i.qj = fsub float %i.qf, %i.pl                 ; 3 uses
  %i.qk = fpext float %i.qj to double             ; 2 uses
  %i.ql = fmul double %i.pq, %i.qk
  %i.qm = call double @llvm.fmuladd.f64(double %i.qi, double %i.po, double %i.ql) ; 2 uses
  %i.qn = fcmp olt double %i.qm, 0.000000e+00
  br i1 %i.qn, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.qo = fmul float %i.qj, %i.qj
  %i.qp = call float @llvm.fmuladd.f32(float %i.qh, float %i.qh, float %i.qo)
  %i.qq = fpext float %i.qp to double
  %i.qr = fmul double %i.ps, %i.qq
  br label %bb.ca

bb.bx:                                            ; preds = %bb.bv
  %i.qs = fcmp ogt double %i.qm, %i.ps
  br i1 %i.qs, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.qt = fsub float %i.qe, %i.pe                 ; 2 uses
  %i.qu = fsub float %i.qf, %i.pf                 ; 2 uses
  %i.qv = fmul float %i.qu, %i.qu
  %i.qw = call float @llvm.fmuladd.f32(float %i.qt, float %i.qt, float %i.qv)
  %i.qx = fpext float %i.qw to double
  %i.qy = fmul double %i.ps, %i.qx
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bx
  %i.qz = fmul double %i.pv, %i.qi
  %i.ra = call double @llvm.fmuladd.f64(double %i.qk, double %i.po, double %i.qz) ; 2 uses
  %i.rb = fmul double %i.ra, %i.ra
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by, %bb.bw
  %.0206.i108 = phi double [ %i.qr, %bb.bw ], [ %i.qy, %bb.by ], [ %i.rb, %bb.bz ] ; 2 uses
  %i.rc = fcmp ogt double %.0206.i108, %.0209447.i
  br i1 %i.rc, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.rd = add i32 %.pre-phi165, %spec.store.select4.i107
  %i.re = srem i32 %i.rd, %i.n
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %.sroa.0371.7.i = phi i32 [ %i.re, %bb.cb ], [ %.sroa.0371.6445.i, %bb.ca ] ; 4 uses
  %.1.i109 = phi double [ %.0206.i108, %bb.cb ], [ %.0209447.i, %bb.ca ] ; 2 uses
  %.not265.i110 = icmp eq i32 %spec.store.select4.i107, %.sroa.12.0.extract.trunc.i96
  br i1 %.not265.i110, label %._crit_edge.i111, label %bb.bv, !llvm.loop !59

._crit_edge.i111:                                 ; preds = %bb.cc
  %i.rf = fmul double %i.aq, %i.ps
  %i.rg = fcmp ugt double %.1.i109, %i.rf
  br i1 %i.rg, label %bb.cd, label %.critedge.i112

.critedge.i112:                                   ; preds = %._crit_edge.i111, %bb.bq
  %.sroa.0371.8.i = phi i32 [ %.sroa.0371.7.i, %._crit_edge.i111 ], [ %.sroa.0371.5450.i, %bb.bq ]
  %i.rh = add nsw i32 %.1231451.i, 1
  %i.ri = sext i32 %.1231451.i to i64
  %i.rj = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.ri ; 2 uses
  store i32 %i.pi, ptr %i.rj, align 4, !tbaa !31
  %.sroa_idx349.i = getelementptr inbounds nuw i8, ptr %i.rj, i64 4
  store i32 %i.pj, ptr %.sroa_idx349.i, align 4, !tbaa !31
  br label %bb.cm

bb.cd:                                            ; preds = %._crit_edge.i111
  %.not266.i = icmp ult i64 %i.oz, %.5219453.i
  br i1 %.not266.i, label %_ZN2cv10AutoBufferINS_5RangeELm136EE6resizeEm.exit296.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.rk = mul i64 %.5219453.i, 3                  ; 3 uses
  %i.rl = lshr i64 %i.rk, 1                       ; 9 uses
  %.not.i284.i = icmp ugt i64 %i.rl, %i.ow
  br i1 %.not.i284.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  store i64 %i.rl, ptr %i.al, align 8, !tbaa !76
  br label %_ZN2cv10AutoBufferINS_5RangeELm136EE6resizeEm.exit296.i

bb.cg:                                            ; preds = %bb.ce
  %i.rm = icmp ugt i64 %i.rk, 273
  br i1 %i.rm, label %.loopexit30.loopexit.i295.i, label %.loopexit30.i285.i

.loopexit30.loopexit.i295.i:                      ; preds = %bb.cg
  %i.rn = icmp ugt i64 %i.rk, 4611686018427387903
  %i.ro = shl i64 %i.rl, 3                        ; 2 uses
  %i.rp = select i1 %i.rn, i64 -1, i64 %i.ro
  %i.rq = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.rp) #18
          to label %.noexc133 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc133:                                        ; preds = %.loopexit30.loopexit.i295.i
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.rq, i8 0, i64 %i.ro, i1 false), !tbaa !26
  br label %.loopexit30.i285.i

.loopexit30.i285.i:                               ; preds = %.noexc133, %bb.cg
  %i.rr = phi ptr [ %i.rq, %.noexc133 ], [ %scevgep.i63149, %bb.cg ] ; 13 uses
  store ptr %i.rr, ptr %15, align 8, !tbaa !75
  store i64 %i.rl, ptr %i.al, align 8, !tbaa !76
  %.not28.i286.i = icmp ne ptr %i.rr, %i.ox
  %i.rs = icmp ne i64 %i.ow, 0
  %or.cond34.i287.i = and i1 %i.rs, %.not28.i286.i
  br i1 %or.cond34.i287.i, label %.lr.ph.i292.i.preheader, label %._crit_edge.i288.i

.lr.ph.i292.i.preheader:                          ; preds = %.loopexit30.i285.i
  %i.rt = ptrtoaddr ptr %i.rr to i64
  %min.iters.check230 = icmp ult i64 %i.ow, 4
  %i.ru = sub i64 %i.oy, %i.rt
  %diff.check228 = icmp ugt i64 %i.ru, -32
  %or.cond271 = or i1 %min.iters.check230, %diff.check228
  br i1 %or.cond271, label %.lr.ph.i292.i.preheader276, label %vector.ph231

vector.ph231:                                     ; preds = %.lr.ph.i292.i.preheader
  %n.vec232 = and i64 %i.ow, -4                   ; 3 uses
  br label %vector.body233

vector.body233:                                   ; preds = %vector.body233, %vector.ph231
  %index234 = phi i64 [ 0, %vector.ph231 ], [ %index.next237, %vector.body233 ] ; 3 uses
  %i.rv = getelementptr inbounds nuw [8 x i8], ptr %i.ox, i64 %index234 ; 2 uses
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr %i.rr, i64 %index234 ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rv, i64 16
  %wide.load235 = load <2 x i64>, ptr %i.rv, align 4, !tbaa !26
  %wide.load236 = load <2 x i64>, ptr %i.rx, align 4, !tbaa !26
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rw, i64 16
  store <2 x i64> %wide.load235, ptr %i.rw, align 4, !tbaa !26
  store <2 x i64> %wide.load236, ptr %i.ry, align 4, !tbaa !26
  %index.next237 = add nuw i64 %index234, 4       ; 2 uses
  %i.rz = icmp eq i64 %index.next237, %n.vec232
  br i1 %i.rz, label %middle.block238, label %vector.body233, !llvm.loop !60

middle.block238:                                  ; preds = %vector.body233
  %cmp.n239 = icmp eq i64 %i.ow, %n.vec232
  br i1 %cmp.n239, label %._crit_edge.i288.i, label %.lr.ph.i292.i.preheader276

.lr.ph.i292.i.preheader276:                       ; preds = %.lr.ph.i292.i.preheader, %middle.block238
  %.031.i293.i.ph = phi i64 [ 0, %.lr.ph.i292.i.preheader ], [ %n.vec232, %middle.block238 ] ; 3 uses
  %xtraiter = and i64 %i.ow, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i292.i.prol.loopexit, label %.lr.ph.i292.i.prol

.lr.ph.i292.i.prol:                               ; preds = %.lr.ph.i292.i.preheader276, %.lr.ph.i292.i.prol
  %.031.i293.i.prol = phi i64 [ %i.sd, %.lr.ph.i292.i.prol ], [ %.031.i293.i.ph, %.lr.ph.i292.i.preheader276 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i292.i.prol ], [ 0, %.lr.ph.i292.i.preheader276 ]
  %i.sa = getelementptr inbounds nuw [8 x i8], ptr %i.ox, i64 %.031.i293.i.prol
  %i.sb = getelementptr inbounds nuw [8 x i8], ptr %i.rr, i64 %.031.i293.i.prol
  %i.sc = load i64, ptr %i.sa, align 4, !tbaa !26
  store i64 %i.sc, ptr %i.sb, align 4, !tbaa !26
  %i.sd = add nuw nsw i64 %.031.i293.i.prol, 1    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i292.i.prol.loopexit, label %.lr.ph.i292.i.prol, !llvm.loop !61

.lr.ph.i292.i.prol.loopexit:                      ; preds = %.lr.ph.i292.i.prol, %.lr.ph.i292.i.preheader276
  %.031.i293.i.unr = phi i64 [ %.031.i293.i.ph, %.lr.ph.i292.i.preheader276 ], [ %i.sd, %.lr.ph.i292.i.prol ]
  %i.se = sub i64 %.031.i293.i.ph, %i.ow
  %i.sf = icmp ugt i64 %i.se, -4
  br i1 %i.sf, label %._crit_edge.i288.i, label %.lr.ph.i292.i

.lr.ph.i292.i:                                    ; preds = %.lr.ph.i292.i.prol.loopexit, %.lr.ph.i292.i
  %.031.i293.i = phi i64 [ %i.sv, %.lr.ph.i292.i ], [ %.031.i293.i.unr, %.lr.ph.i292.i.prol.loopexit ] ; 6 uses
  %i.sg = getelementptr inbounds nuw [8 x i8], ptr %i.ox, i64 %.031.i293.i
  %i.sh = getelementptr inbounds nuw [8 x i8], ptr %i.rr, i64 %.031.i293.i
  %i.si = load i64, ptr %i.sg, align 4, !tbaa !26
  store i64 %i.si, ptr %i.sh, align 4, !tbaa !26
  %i.sj = add nuw nsw i64 %.031.i293.i, 1         ; 2 uses
  %i.sk = getelementptr inbounds nuw [8 x i8], ptr %i.ox, i64 %i.sj
  %i.sl = getelementptr inbounds nuw [8 x i8], ptr %i.rr, i64 %i.sj
  %i.sm = load i64, ptr %i.sk, align 4, !tbaa !26
  store i64 %i.sm, ptr %i.sl, align 4, !tbaa !26
  %i.sn = add nuw nsw i64 %.031.i293.i, 2         ; 2 uses
  %i.so = getelementptr inbounds nuw [8 x i8], ptr %i.ox, i64 %i.sn
  %i.sp = getelementptr inbounds nuw [8 x i8], ptr %i.rr, i64 %i.sn
  %i.sq = load i64, ptr %i.so, align 4, !tbaa !26
  store i64 %i.sq, ptr %i.sp, align 4, !tbaa !26
  %i.sr = add nuw nsw i64 %.031.i293.i, 3         ; 2 uses
  %i.ss = getelementptr inbounds nuw [8 x i8], ptr %i.ox, i64 %i.sr
  %i.st = getelementptr inbounds nuw [8 x i8], ptr %i.rr, i64 %i.sr
  %i.su = load i64, ptr %i.ss, align 4, !tbaa !26
  store i64 %i.su, ptr %i.st, align 4, !tbaa !26
  %i.sv = add nuw nsw i64 %.031.i293.i, 4         ; 2 uses
  %exitcond.not.i294.i.3 = icmp eq i64 %i.sv, %i.ow
  br i1 %exitcond.not.i294.i.3, label %._crit_edge.i288.i, label %.lr.ph.i292.i, !llvm.loop !62

._crit_edge.i288.i:                               ; preds = %.lr.ph.i292.i.prol.loopexit, %.lr.ph.i292.i, %middle.block238, %.loopexit30.i285.i
  %i.sw = shl i64 %i.ow, 3
  %scevgep.i289.i = getelementptr i8, ptr %i.rr, i64 %i.sw
  %i.sx = sub nuw nsw i64 %i.rl, %i.ow
  %i.sy = shl i64 %i.sx, 3
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i289.i, i8 0, i64 %i.sy, i1 false), !tbaa !26
  %.not29.i290.i = icmp eq ptr %i.ox, %scevgep.i63149
  %i.sz = icmp eq ptr %i.ox, null
  %or.cond.i291.i = or i1 %.not29.i290.i, %i.sz
  br i1 %or.cond.i291.i, label %_ZN2cv10AutoBufferINS_5RangeELm136EE6resizeEm.exit296.i, label %bb.ch

bb.ch:                                            ; preds = %._crit_edge.i288.i
  call void @_ZdaPv(ptr noundef nonnull %i.ox) #17
  %.pre.i122 = load ptr, ptr %15, align 8, !tbaa !75 ; 3 uses
  %.pre476.i = load i64, ptr %i.al, align 8, !tbaa !76 ; 2 uses
  br label %_ZN2cv10AutoBufferINS_5RangeELm136EE6resizeEm.exit296.i

_ZN2cv10AutoBufferINS_5RangeELm136EE6resizeEm.exit296.i: ; preds = %bb.ch, %._crit_edge.i288.i, %bb.cf, %bb.cd
  %i.ta = phi ptr [ %i.ou, %bb.cd ], [ %i.ou, %bb.cf ], [ %i.rr, %._crit_edge.i288.i ], [ %.pre.i122, %bb.ch ] ; 4 uses
  %i.tb = phi ptr [ %i.ov, %bb.cd ], [ %i.ov, %bb.cf ], [ %i.rr, %._crit_edge.i288.i ], [ %.pre.i122, %bb.ch ] ; 12 uses
  %i.tc = phi i64 [ %i.ow, %bb.cd ], [ %i.rl, %bb.cf ], [ %i.rl, %._crit_edge.i288.i ], [ %.pre476.i, %bb.ch ] ; 11 uses
  %.6220.i117 = phi i64 [ %.5219453.i, %bb.cd ], [ %i.rl, %bb.cf ], [ %i.rl, %._crit_edge.i288.i ], [ %.pre476.i, %bb.ch ] ; 3 uses
  %.6.i118 = phi ptr [ %i.ox, %bb.cd ], [ %i.ov, %bb.cf ], [ %i.rr, %._crit_edge.i288.i ], [ %.pre.i122, %bb.ch ] ; 2 uses
  %i.td = ptrtoaddr ptr %i.tb to i64
  %i.te = getelementptr inbounds nuw [8 x i8], ptr %.6.i118, i64 %i.oz
  %.sroa.14379.0.insert.shift382.i = and i64 %i.pb, -4294967296
  %.sroa.0371.0.insert.ext376.i = zext i32 %.sroa.0371.7.i to i64 ; 2 uses
  %.sroa.0371.0.insert.insert378.i = or disjoint i64 %.sroa.14379.0.insert.shift382.i, %.sroa.0371.0.insert.ext376.i
  store i64 %.sroa.0371.0.insert.insert378.i, ptr %i.te, align 4, !tbaa !26
  %.not267.i119 = icmp ult i64 %.2225452.i, %.6220.i117
  br i1 %.not267.i119, label %_ZN2cv10AutoBufferINS_5RangeELm136EE6resizeEm.exit309.i, label %bb.ci

bb.ci:                                            ; preds = %_ZN2cv10AutoBufferINS_5RangeELm136EE6resizeEm.exit296.i
  %i.tf = mul i64 %.6220.i117, 3                  ; 3 uses
  %i.tg = lshr i64 %i.tf, 1                       ; 9 uses
  %.not.i297.i = icmp ugt i64 %i.tg, %i.tc
  br i1 %.not.i297.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  store i64 %i.tg, ptr %i.al, align 8, !tbaa !76
  br label %_ZN2cv10AutoBufferINS_5RangeELm136EE6resizeEm.exit309.i

bb.ck:                                            ; preds = %bb.ci
  %i.th = icmp ugt i64 %i.tf, 273
  br i1 %i.th, label %.loopexit30.loopexit.i308.i, label %.loopexit30.i298.i

.loopexit30.loopexit.i308.i:                      ; preds = %bb.ck
  %i.ti = icmp ugt i64 %i.tf, 4611686018427387903
  %i.tj = shl i64 %i.tg, 3                        ; 2 uses
  %i.tk = select i1 %i.ti, i64 -1, i64 %i.tj
  %i.tl = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.tk) #18
          to label %.noexc134 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc134:                                        ; preds = %.loopexit30.loopexit.i308.i
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.tl, i8 0, i64 %i.tj, i1 false), !tbaa !26
  br label %.loopexit30.i298.i

.loopexit30.i298.i:                               ; preds = %.noexc134, %bb.ck
  %i.tm = phi ptr [ %i.tl, %.noexc134 ], [ %scevgep.i63149, %bb.ck ] ; 13 uses
  store ptr %i.tm, ptr %15, align 8, !tbaa !75
  store i64 %i.tg, ptr %i.al, align 8, !tbaa !76
  %.not28.i299.i = icmp ne ptr %i.tm, %i.tb
  %i.tn = icmp ne i64 %i.tc, 0
  %or.cond34.i300.i = and i1 %i.tn, %.not28.i299.i
  br i1 %or.cond34.i300.i, label %.lr.ph.i305.i.preheader, label %._crit_edge.i301.i

.lr.ph.i305.i.preheader:                          ; preds = %.loopexit30.i298.i
  %i.to = ptrtoaddr ptr %i.tm to i64
  %min.iters.check = icmp ult i64 %i.tc, 4
  %i.tp = sub i64 %i.td, %i.to
  %diff.check = icmp ugt i64 %i.tp, -32
  %or.cond272 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond272, label %.lr.ph.i305.i.preheader275, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i305.i.preheader
  %n.vec = and i64 %i.tc, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.tq = getelementptr inbounds nuw [8 x i8], ptr %i.tb, i64 %index ; 2 uses
  %i.tr = getelementptr inbounds nuw [8 x i8], ptr %i.tm, i64 %index ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tq, i64 16
  %wide.load = load <2 x i64>, ptr %i.tq, align 4, !tbaa !26
  %wide.load226 = load <2 x i64>, ptr %i.ts, align 4, !tbaa !26
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tr, i64 16
  store <2 x i64> %wide.load, ptr %i.tr, align 4, !tbaa !26
  store <2 x i64> %wide.load226, ptr %i.tt, align 4, !tbaa !26
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.tu = icmp eq i64 %index.next, %n.vec
  br i1 %i.tu, label %middle.block, label %vector.body, !llvm.loop !63

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.tc, %n.vec
  br i1 %cmp.n, label %._crit_edge.i301.i, label %.lr.ph.i305.i.preheader275

.lr.ph.i305.i.preheader275:                       ; preds = %.lr.ph.i305.i.preheader, %middle.block
  %.031.i306.i.ph = phi i64 [ 0, %.lr.ph.i305.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter282 = and i64 %i.tc, 3                 ; 2 uses
  %lcmp.mod283.not = icmp eq i64 %xtraiter282, 0
  br i1 %lcmp.mod283.not, label %.lr.ph.i305.i.prol.loopexit, label %.lr.ph.i305.i.prol

.lr.ph.i305.i.prol:                               ; preds = %.lr.ph.i305.i.preheader275, %.lr.ph.i305.i.prol
  %.031.i306.i.prol = phi i64 [ %i.ty, %.lr.ph.i305.i.prol ], [ %.031.i306.i.ph, %.lr.ph.i305.i.preheader275 ] ; 3 uses
  %prol.iter284 = phi i64 [ %prol.iter284.next, %.lr.ph.i305.i.prol ], [ 0, %.lr.ph.i305.i.preheader275 ]
  %i.tv = getelementptr inbounds nuw [8 x i8], ptr %i.tb, i64 %.031.i306.i.prol
  %i.tw = getelementptr inbounds nuw [8 x i8], ptr %i.tm, i64 %.031.i306.i.prol
  %i.tx = load i64, ptr %i.tv, align 4, !tbaa !26
  store i64 %i.tx, ptr %i.tw, align 4, !tbaa !26
  %i.ty = add nuw nsw i64 %.031.i306.i.prol, 1    ; 2 uses
  %prol.iter284.next = add i64 %prol.iter284, 1   ; 2 uses
  %prol.iter284.cmp.not = icmp eq i64 %prol.iter284.next, %xtraiter282
  br i1 %prol.iter284.cmp.not, label %.lr.ph.i305.i.prol.loopexit, label %.lr.ph.i305.i.prol, !llvm.loop !64

.lr.ph.i305.i.prol.loopexit:                      ; preds = %.lr.ph.i305.i.prol, %.lr.ph.i305.i.preheader275
  %.031.i306.i.unr = phi i64 [ %.031.i306.i.ph, %.lr.ph.i305.i.preheader275 ], [ %i.ty, %.lr.ph.i305.i.prol ]
  %i.tz = sub i64 %.031.i306.i.ph, %i.tc
  %i.ua = icmp ugt i64 %i.tz, -4
  br i1 %i.ua, label %._crit_edge.i301.i, label %.lr.ph.i305.i

.lr.ph.i305.i:                                    ; preds = %.lr.ph.i305.i.prol.loopexit, %.lr.ph.i305.i
  %.031.i306.i = phi i64 [ %i.uq, %.lr.ph.i305.i ], [ %.031.i306.i.unr, %.lr.ph.i305.i.prol.loopexit ] ; 6 uses
  %i.ub = getelementptr inbounds nuw [8 x i8], ptr %i.tb, i64 %.031.i306.i
  %i.uc = getelementptr inbounds nuw [8 x i8], ptr %i.tm, i64 %.031.i306.i
  %i.ud = load i64, ptr %i.ub, align 4, !tbaa !26
  store i64 %i.ud, ptr %i.uc, align 4, !tbaa !26
  %i.ue = add nuw nsw i64 %.031.i306.i, 1         ; 2 uses
  %i.uf = getelementptr inbounds nuw [8 x i8], ptr %i.tb, i64 %i.ue
  %i.ug = getelementptr inbounds nuw [8 x i8], ptr %i.tm, i64 %i.ue
  %i.uh = load i64, ptr %i.uf, align 4, !tbaa !26
  store i64 %i.uh, ptr %i.ug, align 4, !tbaa !26
  %i.ui = add nuw nsw i64 %.031.i306.i, 2         ; 2 uses
  %i.uj = getelementptr inbounds nuw [8 x i8], ptr %i.tb, i64 %i.ui
  %i.uk = getelementptr inbounds nuw [8 x i8], ptr %i.tm, i64 %i.ui
  %i.ul = load i64, ptr %i.uj, align 4, !tbaa !26
  store i64 %i.ul, ptr %i.uk, align 4, !tbaa !26
  %i.um = add nuw nsw i64 %.031.i306.i, 3         ; 2 uses
  %i.un = getelementptr inbounds nuw [8 x i8], ptr %i.tb, i64 %i.um
  %i.uo = getelementptr inbounds nuw [8 x i8], ptr %i.tm, i64 %i.um
  %i.up = load i64, ptr %i.un, align 4, !tbaa !26
  store i64 %i.up, ptr %i.uo, align 4, !tbaa !26
  %i.uq = add nuw nsw i64 %.031.i306.i, 4         ; 2 uses
  %exitcond.not.i307.i.3 = icmp eq i64 %i.uq, %i.tc
  br i1 %exitcond.not.i307.i.3, label %._crit_edge.i301.i, label %.lr.ph.i305.i, !llvm.loop !65

._crit_edge.i301.i:                               ; preds = %.lr.ph.i305.i.prol.loopexit, %.lr.ph.i305.i, %middle.block, %.loopexit30.i298.i
  %i.ur = shl i64 %i.tc, 3
  %scevgep.i302.i = getelementptr i8, ptr %i.tm, i64 %i.ur
  %i.us = sub nuw nsw i64 %i.tg, %i.tc
  %i.ut = shl i64 %i.us, 3
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i302.i, i8 0, i64 %i.ut, i1 false), !tbaa !26
  %.not29.i303.i = icmp eq ptr %i.tb, %scevgep.i63149
  %i.uu = icmp eq ptr %i.tb, null
  %or.cond.i304.i = or i1 %.not29.i303.i, %i.uu
  br i1 %or.cond.i304.i, label %_ZN2cv10AutoBufferINS_5RangeELm136EE6resizeEm.exit309.i, label %bb.cl

bb.cl:                                            ; preds = %._crit_edge.i301.i
  call void @_ZdaPv(ptr noundef nonnull %i.tb) #17
  %.pre477.i = load ptr, ptr %15, align 8, !tbaa !75 ; 3 uses
  %.pre478.i = load i64, ptr %i.al, align 8, !tbaa !76 ; 2 uses
  br label %_ZN2cv10AutoBufferINS_5RangeELm136EE6resizeEm.exit309.i

_ZN2cv10AutoBufferINS_5RangeELm136EE6resizeEm.exit309.i: ; preds = %bb.cl, %._crit_edge.i301.i, %bb.cj, %_ZN2cv10AutoBufferINS_5RangeELm136EE6resizeEm.exit296.i
  %i.uv = phi ptr [ %i.ta, %_ZN2cv10AutoBufferINS_5RangeELm136EE6resizeEm.exit296.i ], [ %i.ta, %bb.cj ], [ %i.tm, %._crit_edge.i301.i ], [ %.pre477.i, %bb.cl ]
  %i.uw = phi ptr [ %i.tb, %_ZN2cv10AutoBufferINS_5RangeELm136EE6resizeEm.exit296.i ], [ %i.ta, %bb.cj ], [ %i.tm, %._crit_edge.i301.i ], [ %.pre477.i, %bb.cl ]
  %i.ux = phi i64 [ %i.tc, %_ZN2cv10AutoBufferINS_5RangeELm136EE6resizeEm.exit296.i ], [ %i.tg, %bb.cj ], [ %i.tg, %._crit_edge.i301.i ], [ %.pre478.i, %bb.cl ]
  %.7221.i120 = phi i64 [ %.6220.i117, %_ZN2cv10AutoBufferINS_5RangeELm136EE6resizeEm.exit296.i ], [ %i.tg, %bb.cj ], [ %i.tg, %._crit_edge.i301.i ], [ %.pre478.i, %bb.cl ]
  %.7.i121 = phi ptr [ %.6.i118, %_ZN2cv10AutoBufferINS_5RangeELm136EE6resizeEm.exit296.i ], [ %i.ta, %bb.cj ], [ %i.tm, %._crit_edge.i301.i ], [ %.pre477.i, %bb.cl ] ; 2 uses
  %i.uy = add i64 %.2225452.i, 1
  %i.uz = getelementptr inbounds nuw [8 x i8], ptr %.7.i121, i64 %.2225452.i
  %.sroa.12.0.insert.shift403.i = shl nuw i64 %.sroa.0371.0.insert.ext376.i, 32
  %.sroa.0385.0.insert.ext393.i = and i64 %i.pb, 4294967295
  %.sroa.0385.0.insert.insert395.i = or disjoint i64 %.sroa.12.0.insert.shift403.i, %.sroa.0385.0.insert.ext393.i
  store i64 %.sroa.0385.0.insert.insert395.i, ptr %i.uz, align 4, !tbaa !26
  br label %bb.cm

bb.cm:                                            ; preds = %_ZN2cv10AutoBufferINS_5RangeELm136EE6resizeEm.exit309.i, %.critedge.i112
  %i.va = phi ptr [ %i.ou, %.critedge.i112 ], [ %i.uv, %_ZN2cv10AutoBufferINS_5RangeELm136EE6resizeEm.exit309.i ]
  %i.vb = phi ptr [ %i.ov, %.critedge.i112 ], [ %i.uw, %_ZN2cv10AutoBufferINS_5RangeELm136EE6resizeEm.exit309.i ]
  %i.vc = phi i64 [ %i.ow, %.critedge.i112 ], [ %i.ux, %_ZN2cv10AutoBufferINS_5RangeELm136EE6resizeEm.exit309.i ]
  %.sroa.0371.9.i = phi i32 [ %.sroa.0371.8.i, %.critedge.i112 ], [ %.sroa.0371.7.i, %_ZN2cv10AutoBufferINS_5RangeELm136EE6resizeEm.exit309.i ]
  %.2232.i113 = phi i32 [ %i.rh, %.critedge.i112 ], [ %.1231451.i, %_ZN2cv10AutoBufferINS_5RangeELm136EE6resizeEm.exit309.i ] ; 4 uses
  %.3226.i114 = phi i64 [ %i.oz, %.critedge.i112 ], [ %i.uy, %_ZN2cv10AutoBufferINS_5RangeELm136EE6resizeEm.exit309.i ] ; 2 uses
  %.8222.i115 = phi i64 [ %.5219453.i, %.critedge.i112 ], [ %.7221.i120, %_ZN2cv10AutoBufferINS_5RangeELm136EE6resizeEm.exit309.i ]
  %.8.i116 = phi ptr [ %i.ox, %.critedge.i112 ], [ %.7.i121, %_ZN2cv10AutoBufferINS_5RangeELm136EE6resizeEm.exit309.i ]
  %.not255.i = icmp eq i64 %.3226.i114, 0
  br i1 %.not255.i, label %._crit_edge457.i, label %bb.bq, !llvm.loop !66

._crit_edge457.i:                                 ; preds = %bb.cm
  br i1 %.0229.shrunk420.ph.i, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %._crit_edge457.i
  %i.vd = getelementptr [8 x i8], ptr %i.ao, i64 %i.ac
  %i.ve = getelementptr i8, ptr %i.vd, i64 -8
  %i.vf = add nsw i32 %.2232.i113, 1
  %i.vg = sext i32 %.2232.i113 to i64
  %i.vh = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.vg
  %i.vi = load i64, ptr %i.ve, align 4, !tbaa !31
  store i64 %i.vi, ptr %i.vh, align 4, !tbaa !31
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %._crit_edge457.i, %._crit_edge457.thread.i
  %.3233.i72 = phi i32 [ %.2232.i113, %._crit_edge457.i ], [ %i.vf, %bb.cn ], [ 1, %._crit_edge457.thread.i ] ; 11 uses
  %i.vj = add nsw i32 %.3233.i72, -1
  %i.vk = select i1 %3, i32 %i.vj, i32 0          ; 2 uses
  %i.vl = add nsw i32 %i.vk, 1                    ; 2 uses
  %.not256.i = icmp slt i32 %i.vl, %.3233.i72
  %spec.store.select16.i73 = select i1 %.not256.i, i32 %i.vl, i32 0 ; 4 uses
  %i.vm = sext i32 %spec.store.select16.i73 to i64
  %i.vn = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.vm ; 2 uses
  %i.vo = load float, ptr %i.vn, align 4          ; 2 uses
  %.sroa_idx314.i = getelementptr inbounds nuw i8, ptr %i.vn, i64 4
  %i.vp = load float, ptr %.sroa_idx314.i, align 4 ; 2 uses
  %i.vq = xor i1 %3, true
  %i.vr = zext i1 %i.vq to i32                    ; 3 uses
  %i.vs = sub nsw i32 %.3233.i72, %i.vr           ; 2 uses
  %i.vt = icmp sgt i32 %i.vs, %i.vr
  %i.vu = icmp sgt i32 %.3233.i72, 2
  %i.vv = and i1 %i.vu, %i.vt
  br i1 %i.vv, label %.lr.ph468.i, label %._crit_edge469.i

.lr.ph468.i:                                      ; preds = %bb.co
  %i.vw = add nsw i32 %spec.store.select16.i73, 1 ; 2 uses
  %.not257.i76 = icmp slt i32 %i.vw, %.3233.i72
  %spec.store.select5.i77 = select i1 %.not257.i76, i32 %i.vw, i32 0
  %i.vx = sext i32 %i.vk to i64
  %i.vy = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.vx ; 2 uses
  %.sroa_idx352.i = getelementptr inbounds nuw i8, ptr %i.vy, i64 4
  %i.vz = load float, ptr %.sroa_idx352.i, align 4
  %i.wa = load float, ptr %i.vy, align 4
  %i.wb = fmul nnan double %i.aq, 5.000000e-01
  br label %bb.cp

bb.cp:                                            ; preds = %bb.cs, %.lr.ph468.i
  %.4234466.i = phi i32 [ %.3233.i72, %.lr.ph468.i ], [ %.5235.i89, %bb.cs ] ; 2 uses
  %.0236465.i = phi i32 [ %spec.store.select16.i73, %.lr.ph468.i ], [ %.1237.i88, %bb.cs ] ; 4 uses
  %.3241464.i = phi i32 [ %spec.store.select5.i77, %.lr.ph468.i ], [ %.4242.i87, %bb.cs ] ; 2 uses
  %.1245463.i = phi i32 [ %i.vr, %.lr.ph468.i ], [ %i.xt, %bb.cs ] ; 2 uses
  %.sroa.0.0462.i = phi float [ %i.vo, %.lr.ph468.i ], [ %.sroa.0.1.i, %bb.cs ] ; 4 uses
  %.sroa.14.0461.i = phi float [ %i.vp, %.lr.ph468.i ], [ %.sroa.14.1.i, %bb.cs ] ; 4 uses
  %.sroa.0360.3460.i = phi float [ %i.wa, %.lr.ph468.i ], [ %.sroa.0360.4.i, %bb.cs ] ; 2 uses
  %.sroa.18.3459.i = phi float [ %i.vz, %.lr.ph468.i ], [ %.sroa.18.4.i85, %bb.cs ] ; 2 uses
  %i.wc = sext i32 %.3241464.i to i64
  %i.wd = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.wc ; 2 uses
  %i.we = load i32, ptr %i.wd, align 4            ; 2 uses
  %.sroa_idx334.i = getelementptr inbounds nuw i8, ptr %i.wd, i64 4
  %i.wf = load i32, ptr %.sroa_idx334.i, align 4  ; 2 uses
  %i.wg = bitcast i32 %i.we to float              ; 4 uses
  %i.wh = bitcast i32 %i.wf to float              ; 4 uses
  %i.wi = add nsw i32 %.3241464.i, 1              ; 2 uses
  %.not258.i78 = icmp slt i32 %i.wi, %.3233.i72
  %spec.store.select6.i79 = select i1 %.not258.i78, i32 %i.wi, i32 0 ; 3 uses
  %i.wj = fsub float %i.wg, %.sroa.0360.3460.i    ; 2 uses
  %i.wk = fpext float %i.wj to double             ; 3 uses
  %i.wl = fsub float %i.wh, %.sroa.18.3459.i      ; 2 uses
  %i.wm = fpext float %i.wl to double             ; 3 uses
  %i.wn = fsub float %.sroa.0.0462.i, %.sroa.0360.3460.i ; 2 uses
  %i.wo = fpext float %i.wn to double
  %i.wp = fsub float %.sroa.14.0461.i, %.sroa.18.3459.i ; 2 uses
  %i.wq = fpext float %i.wp to double
  %i.wr = fneg double %i.wk
  %i.ws = fmul double %i.wq, %i.wr
  %i.wt = call double @llvm.fmuladd.f64(double %i.wo, double %i.wm, double %i.ws) ; 2 uses
  %i.wu = fsub float %i.wg, %.sroa.0.0462.i
  %i.wv = fsub float %i.wh, %.sroa.14.0461.i
  %i.ww = fmul float %i.wp, %i.wv
  %i.wx = call float @llvm.fmuladd.f32(float %i.wn, float %i.wu, float %i.ww)
  %i.wy = fmul double %i.wt, %i.wt
  %i.wz = fmul double %i.wm, %i.wm
  %i.xa = call double @llvm.fmuladd.f64(double %i.wk, double %i.wk, double %i.wz)
  %i.xb = fmul double %i.wb, %i.xa
  %i.xc = fcmp ole double %i.wy, %i.xb
  %i.xd = fcmp une float %i.wj, 0.000000e+00
  %or.cond8.i80 = and i1 %i.xd, %i.xc
  %i.xe = fcmp une float %i.wl, 0.000000e+00
  %or.cond10.i81 = and i1 %i.xe, %or.cond8.i80
  %i.xf = fcmp oge float %i.wx, 0.000000e+00
  %or.cond12.i82 = select i1 %or.cond10.i81, i1 %i.xf, i1 false
  br i1 %or.cond12.i82, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.xg = add nsw i32 %.4234466.i, -1
  %i.xh = sext i32 %.0236465.i to i64
  %i.xi = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.xh ; 2 uses
  store i32 %i.we, ptr %i.xi, align 4, !tbaa !31
  %.sroa_idx330.i = getelementptr inbounds nuw i8, ptr %i.xi, i64 4
  store i32 %i.wf, ptr %.sroa_idx330.i, align 4, !tbaa !31
  %i.xj = add nsw i32 %.0236465.i, 1              ; 2 uses
  %.not260.i90 = icmp slt i32 %i.xj, %.3233.i72
  %spec.store.select13.i91 = select i1 %.not260.i90, i32 %i.xj, i32 0
  %i.xk = sext i32 %spec.store.select6.i79 to i64
  %i.xl = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.xk ; 2 uses
  %i.xm = load float, ptr %i.xl, align 4
  %.sroa_idx318.i = getelementptr inbounds nuw i8, ptr %i.xl, i64 4
  %i.xn = load float, ptr %.sroa_idx318.i, align 4
  %i.xo = add nsw i32 %spec.store.select6.i79, 1  ; 2 uses
  %.not261.i92 = icmp slt i32 %i.xo, %.3233.i72
  %spec.store.select15.i93 = select i1 %.not261.i92, i32 %i.xo, i32 0
  %i.xp = add nsw i32 %.1245463.i, 1
  br label %bb.cs

bb.cr:                                            ; preds = %bb.cp
  %i.xq = sext i32 %.0236465.i to i64
  %i.xr = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.xq ; 2 uses
  store float %.sroa.0.0462.i, ptr %i.xr, align 4, !tbaa !31
  %.sroa_idx312.i = getelementptr inbounds nuw i8, ptr %i.xr, i64 4
  store float %.sroa.14.0461.i, ptr %.sroa_idx312.i, align 4, !tbaa !31
  %i.xs = add nsw i32 %.0236465.i, 1              ; 2 uses
  %.not259.i83 = icmp slt i32 %i.xs, %.3233.i72
  %spec.store.select14.i84 = select i1 %.not259.i83, i32 %i.xs, i32 0
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %.sroa.18.4.i85 = phi float [ %i.wh, %bb.cq ], [ %.sroa.14.0461.i, %bb.cr ]
  %.sroa.0360.4.i = phi float [ %i.wg, %bb.cq ], [ %.sroa.0.0462.i, %bb.cr ]
  %.sroa.14.1.i = phi float [ %i.xn, %bb.cq ], [ %i.wh, %bb.cr ] ; 2 uses
  %.sroa.0.1.i = phi float [ %i.xm, %bb.cq ], [ %i.wg, %bb.cr ] ; 2 uses
  %.2246.i86 = phi i32 [ %i.xp, %bb.cq ], [ %.1245463.i, %bb.cr ]
  %.4242.i87 = phi i32 [ %spec.store.select15.i93, %bb.cq ], [ %spec.store.select6.i79, %bb.cr ]
  %.1237.i88 = phi i32 [ %spec.store.select13.i91, %bb.cq ], [ %spec.store.select14.i84, %bb.cr ] ; 2 uses
  %.5235.i89 = phi i32 [ %i.xg, %bb.cq ], [ %.4234466.i, %bb.cr ] ; 3 uses
  %i.xt = add nsw i32 %.2246.i86, 1               ; 2 uses
  %i.xu = icmp slt i32 %i.xt, %i.vs
  %i.xv = icmp sgt i32 %.5235.i89, 2
  %i.xw = select i1 %i.xu, i1 %i.xv, i1 false
  br i1 %i.xw, label %bb.cp, label %._crit_edge469.i, !llvm.loop !67

._crit_edge469.i:                                 ; preds = %bb.cs, %bb.co
  %.sroa.14.0.lcssa.i = phi float [ %i.vp, %bb.co ], [ %.sroa.14.1.i, %bb.cs ]
  %.sroa.0.0.lcssa.i = phi float [ %i.vo, %bb.co ], [ %.sroa.0.1.i, %bb.cs ]
  %.0236.lcssa.i74 = phi i32 [ %spec.store.select16.i73, %bb.co ], [ %.1237.i88, %bb.cs ]
  %.4234.lcssa.i75 = phi i32 [ %.3233.i72, %bb.co ], [ %.5235.i89, %bb.cs ] ; 2 uses
  br i1 %3, label %_ZN2cvL13approxPolyDP_IiEEiPKNS_6Point_IT_EEiPS3_bdRNS_10AutoBufferINS_5RangeELm136EEE.exit, label %bb.ct

bb.ct:                                            ; preds = %._crit_edge469.i
  %i.xx = sext i32 %.0236.lcssa.i74 to i64
  %i.xy = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.xx ; 2 uses
  store float %.sroa.0.0.lcssa.i, ptr %i.xy, align 4, !tbaa !31
  %.sroa_idx310.i = getelementptr inbounds nuw i8, ptr %i.xy, i64 4
  store float %.sroa.14.0.lcssa.i, ptr %.sroa_idx310.i, align 4, !tbaa !31
  br label %_ZN2cvL13approxPolyDP_IiEEiPKNS_6Point_IT_EEiPS3_bdRNS_10AutoBufferINS_5RangeELm136EEE.exit

end_hunk_1
