Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/forcetable?download=true
inline.NumInlined: 816
inline.NumDeleted: 355
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZL11read_tablesP8_IO_FILEPKcii:bb.a
  %storemerge167498.peel576 = phi i32 [ %spec.select539.peel574, %bb.ax ], [ %storemerge167500.peel571, %bb.aw ] ; 2 uses
  %.5141.peel577 = phi i8 [ 0, %bb.ax ], [ %.3139.peel572, %bb.aw ] ; 2 uses
  %.1133.peel578 = phi i1 [ false, %bb.ax ], [ %i.dy, %bb.aw ] ; 2 uses
  br i1 %exitcond.peel580.not, label %._crit_edge, label %.peel.next568

.peel.next568:                                    ; preds = %bb.ay, %bb.bs
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.bs ], [ 2, %bb.ay ] ; 9 uses
  %.0132509 = phi i1 [ %.1133, %bb.bs ], [ %.1133.peel578, %bb.ay ]
  %.0134508 = phi i1 [ %.1135, %bb.bs ], [ %.1135.peel573, %bb.ay ]
  %.1137507 = phi i8 [ %.5141, %bb.bs ], [ %.5141.peel577, %bb.ay ] ; 2 uses
  %storemerge167502504 = phi i32 [ %storemerge167498, %bb.bs ], [ %storemerge167498.peel576, %bb.ay ] ; 3 uses
  %i.el = getelementptr [8 x i8], ptr %.sroa.35394.0.copyload, i64 %indvars.iv ; 4 uses
  %i.em = getelementptr i8, ptr %i.el, i64 -8
  %i.en = getelementptr i8, ptr %i.el, i64 -16
  %i.eo = load <2 x double>, ptr %i.en, align 8, !tbaa !80
  %i.ep = load <2 x double>, ptr %i.em, align 8, !tbaa !80
  %i.eq = fsub <2 x double> %i.ep, %i.eo          ; 3 uses
  %shift = shufflevector <2 x double> %i.eq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %shift, %i.eq
  %i.er = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.es = call double @llvm.fabs.f64(double %i.er)
  %i.et = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.eq) ; 2 uses
  %shift847 = shufflevector <2 x double> %i.et, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop848 = fadd <2 x double> %i.et, %shift847
  %i.eu = extractelement <2 x double> %foldExtExtBinop848, i64 0
  %i.ev = fmul double %i.eu, 5.000000e-03
  %i.ew = fcmp ult double %i.es, %i.ev
  br i1 %i.ew, label %bb.be, label %.loopexit582

.loopexit582:                                     ; preds = %.peel.next568
  store i32 %storemerge167502504, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA66_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %17, ptr noundef nonnull align 1 dereferenceable(66) @.str, i8 noundef zeroext 2)
          to label %bb.az unwind label %bb.bb

bb.az:                                            ; preds = %.loopexit582
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %.sroa.35394.0.copyload, i64 %indvars.iv
  %i.ey = getelementptr i8, ptr %i.el, i64 -16
  %i.ez = getelementptr i8, ptr %i.el, i64 -8
  %i.fa = load ptr, ptr %i.d, align 8, !tbaa !100
  %i.fb = load double, ptr %i.ey, align 8, !tbaa !80
  %i.fc = load double, ptr %i.ez, align 8, !tbaa !80
  %i.fd = load double, ptr %i.ex, align 8, !tbaa !80
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %17, i32 noundef 646, ptr noundef nonnull @.str.26, ptr noundef %i.fa, double noundef %i.fb, double noundef %i.fc, double noundef %i.fd) #25
          to label %bb.ba unwind label %bb.bc

bb.ba:                                            ; preds = %bb.az
  unreachable

bb.bb:                                            ; preds = %.loopexit582
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bc:                                            ; preds = %bb.az
  %i.ff = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %17) #24
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.pn174 = phi { ptr, i32 } [ %i.ff, %bb.bc ], [ %i.fe, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  br label %.body

bb.be:                                            ; preds = %.peel.next568
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !80 ; 2 uses
  %i.fi = fcmp une double %i.fh, 0.000000e+00
  br i1 %i.fi, label %bb.bf, label %bb.bl

bb.bf:                                            ; preds = %bb.be
  %i.fj = trunc nuw i8 %.1137507 to i1
  %i.fk = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select = select i1 %i.fj, i32 %i.fk, i32 %storemerge167502504 ; 2 uses
  %i.fl = call double @llvm.fabs.f64(double %i.fh)
  %or.cond454 = fcmp ogt double %i.fl, f0x47847AE133333333
  br i1 %or.cond454, label %.critedge2, label %bb.bl

.critedge2:                                       ; preds = %bb.av, %bb.ar, %bb.bf
  %.lcssa545 = phi i64 [ %indvars.iv, %bb.bf ], [ 0, %bb.ar ], [ 1, %bb.av ]
  %spec.select.lcssa = phi i32 [ %spec.select, %bb.bf ], [ %spec.select.peel, %bb.ar ], [ %spec.select.peel569, %bb.av ]
  store i32 %spec.select.lcssa, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA66_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %18, ptr noundef nonnull align 1 dereferenceable(66) @.str, i8 noundef zeroext 2)
          to label %bb.bg unwind label %bb.bi

bb.bg:                                            ; preds = %.critedge2
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %.lcssa545
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !80
  %i.fo = load ptr, ptr %i.d, align 8, !tbaa !100
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %18, i32 noundef 664, ptr noundef nonnull @.str.27, double noundef %i.fn, ptr noundef %i.fo) #25
          to label %bb.bh unwind label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  unreachable

bb.bi:                                            ; preds = %.critedge2
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bg
  %i.fq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %18) #24
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.pn172 = phi { ptr, i32 } [ %i.fq, %bb.bj ], [ %i.fp, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  br label %.body

bb.bl:                                            ; preds = %bb.bf, %bb.be
  %storemerge167500 = phi i32 [ %spec.select, %bb.bf ], [ %storemerge167502504, %bb.be ] ; 2 uses
  %.3139 = phi i8 [ 0, %bb.bf ], [ %.1137507, %bb.be ] ; 2 uses
  %.1135 = phi i1 [ false, %bb.bf ], [ %.0134508, %bb.be ] ; 2 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !80 ; 2 uses
  %i.ft = fcmp une double %i.fs, 0.000000e+00
  br i1 %i.ft, label %bb.bm, label %bb.bs

bb.bm:                                            ; preds = %bb.bl
  %i.fu = trunc nuw i8 %.3139 to i1
  %i.fv = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select539 = select i1 %i.fu, i32 %i.fv, i32 %storemerge167500 ; 2 uses
  %i.fw = call double @llvm.fabs.f64(double %i.fs)
  %or.cond455 = fcmp ogt double %i.fw, f0x47847AE133333333
  br i1 %or.cond455, label %.critedge4, label %bb.bs

.critedge4:                                       ; preds = %bb.ax, %bb.at, %bb.bm
  %.lcssa546 = phi i64 [ %indvars.iv, %bb.bm ], [ 0, %bb.at ], [ 1, %bb.ax ]
  %spec.select539.lcssa = phi i32 [ %spec.select539, %bb.bm ], [ %spec.select539.peel, %bb.at ], [ %spec.select539.peel574, %bb.ax ]
  store i32 %spec.select539.lcssa, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA66_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %19, ptr noundef nonnull align 1 dereferenceable(66) @.str, i8 noundef zeroext 2)
          to label %bb.bn unwind label %bb.bp

bb.bn:                                            ; preds = %.critedge4
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %.lcssa546
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !80
  %i.fz = load ptr, ptr %i.d, align 8, !tbaa !100
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %19, i32 noundef 677, ptr noundef nonnull @.str.28, double noundef %i.fy, ptr noundef %i.fz) #25
          to label %bb.bo unwind label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  unreachable

bb.bp:                                            ; preds = %.critedge4
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bq:                                            ; preds = %bb.bn
  %i.gb = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %19) #24
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.pn170 = phi { ptr, i32 } [ %i.gb, %bb.bq ], [ %i.ga, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  br label %.body

bb.bs:                                            ; preds = %bb.bm, %bb.bl
  %storemerge167498 = phi i32 [ %spec.select539, %bb.bm ], [ %storemerge167500, %bb.bl ] ; 2 uses
  %.5141 = phi i8 [ 0, %bb.bm ], [ %.3139, %bb.bl ] ; 2 uses
  %.1133 = phi i1 [ false, %bb.bm ], [ %.0132509, %bb.bl ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.peel.next568, !llvm.loop !162

._crit_edge:                                      ; preds = %bb.bs, %bb.au, %bb.ay
  %storemerge167498.lcssa = phi i32 [ %storemerge167498.peel576, %bb.ay ], [ %storemerge167498.peel, %bb.au ], [ %storemerge167498, %bb.bs ] ; 10 uses
  %.5141.lcssa = phi i8 [ %.5141.peel577, %bb.ay ], [ %.5141.peel, %bb.au ], [ %.5141, %bb.bs ] ; 5 uses
  %.1133.lcssa = phi i1 [ %.1133.peel578, %bb.ay ], [ %i.dy, %bb.au ], [ %.1133, %bb.bs ]
  %.1135.lcssa548 = phi i1 [ %.1135.peel573, %bb.ay ], [ %i.du, %bb.au ], [ %.1135, %bb.bs ]
  %i.gc = xor i1 %.1135.lcssa548, true
  %i.gd = select i1 %i.gc, i1 %.1133.lcssa, i1 false
  br i1 %i.gd, label %bb.bt, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  br i1 %i.cz, label %.lr.ph517, label %._crit_edge518.thread

.lr.ph517:                                        ; preds = %.preheader
  %i.ge = shl nuw nsw i64 %indvars.iv601, 1       ; 2 uses
  %i.gf = or disjoint i64 %i.ge, 1
  %i.gg = mul nsw i64 %i.ah, %i.gf
  %i.gh = getelementptr inbounds [8 x i8], ptr %.sroa.35394.0.copyload, i64 %i.gg ; 2 uses
  %i.gi = add nuw nsw i64 %i.ge, 2
  %i.gj = mul nsw i64 %i.ah, %i.gi
  %i.gk = getelementptr inbounds [8 x i8], ptr %.sroa.35394.0.copyload, i64 %i.gj
  br label %bb.cl

bb.bt:                                            ; preds = %._crit_edge
  %i.gl = shl nuw nsw i64 %indvars.iv601, 1       ; 2 uses
  %i.gm = or disjoint i64 %i.gl, 1
  %i.gn = mul nsw i64 %i.ah, %i.gm
  %i.go = getelementptr inbounds [8 x i8], ptr %.sroa.35394.0.copyload, i64 %i.gn ; 3 uses
  %i.gp = add nuw nsw i64 %i.gl, 2
  %i.gq = mul nsw i64 %i.ah, %i.gp
  %i.gr = getelementptr inbounds [8 x i8], ptr %.sroa.35394.0.copyload, i64 %i.gq
  br i1 %i.de, label %bb.bu, label %.preheader33.i

bb.bu:                                            ; preds = %bb.bt
  store i32 %storemerge167498.lcssa, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA66_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 1 dereferenceable(66) @.str, i8 noundef zeroext 2)
          to label %.noexc220 unwind label %.loopexit.split-lp458

.noexc220:                                        ; preds = %bb.bu
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef 529, ptr noundef nonnull @.str.33) #25
          to label %bb.bv unwind label %bb.bw

bb.bv:                                            ; preds = %.noexc220
  unreachable

bb.bw:                                            ; preds = %.noexc220
  %i.gs = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %.body

.preheader33.i:                                   ; preds = %bb.bt, %.preheader33.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader33.i ], [ 0, %bb.bt ] ; 6 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %indvars.iv.i
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !80
  %i.gv = fcmp oeq double %i.gu, 0.000000e+00
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %i.gv, label %.preheader33.i, label %.preheader.i, !llvm.loop !163

.preheader.i:                                     ; preds = %.preheader33.i
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %indvars.iv.i ; 14 uses
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bx, %.preheader.i
  %indvars.iv39.i = phi i64 [ %indvars.iv.next40.i, %bb.bx ], [ %i.df, %.preheader.i ] ; 3 uses
  %i.gx = getelementptr [8 x i8], ptr %i.go, i64 %indvars.iv39.i
  %i.gy = getelementptr i8, ptr %i.gx, i64 -8
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !80
  %i.ha = fcmp oeq double %i.gz, 0.000000e+00
  %indvars.iv.next40.i = add nsw i64 %indvars.iv39.i, -1
  br i1 %i.ha, label %bb.bx, label %bb.by, !llvm.loop !164

bb.by:                                            ; preds = %bb.bx
  %i.hb = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %i.hc = trunc nsw i64 %indvars.iv39.i to i32    ; 2 uses
  %i.hd = icmp slt i32 %i.dg, %i.hc
  %i.he = add nsw i32 %i.hc, 1
  %.1.i = select i1 %i.hd, i32 %i.ai, i32 %i.he   ; 4 uses
  br i1 %i.ca, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.hf = uitofp nneg i32 %i.hb to double
  %i.hg = fmul double %i.dd, %i.hf
  %i.hh = icmp eq i32 %.1.i, %i.ai
  %.str.35..str.36.i = select i1 %i.hh, ptr @.str.35, ptr @.str.36
  %i.hi = add nsw i32 %.1.i, -1
  %i.hj = sitofp i32 %i.hi to double
  %i.hk = fmul double %i.dd, %i.hj
  %i.hl = trunc i64 %indvars.iv601 to i32
  %i.hm = add i32 %i.hl, 1
  %i.hn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1, ptr noundef nonnull @.str.34, i32 noundef %i.hm, double noundef %i.hg, ptr noundef nonnull %.str.35..str.36.i, double noundef %i.hk) #24 ; 0 uses
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.ho = sub nsw i32 %.1.i, %i.hb                ; 6 uses
  %i.hp = icmp eq i32 %.1.i, %i.ai                ; 2 uses
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv.i ; 15 uses
  %i.hr = icmp slt i32 %i.ho, 4
  br i1 %i.hr, label %bb.cb, label %bb.ce

bb.cb:                                            ; preds = %bb.ca
  store i32 %storemerge167498.lcssa, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA66_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 1 dereferenceable(66) @.str, i8 noundef zeroext 2)
          to label %.noexc221 unwind label %.loopexit.split-lp458

.noexc221:                                        ; preds = %bb.cb
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 450, ptr noundef nonnull @.str.37, i32 noundef %i.ho) #25
          to label %bb.cc unwind label %bb.cd

bb.cc:                                            ; preds = %.noexc221
  unreachable

bb.cd:                                            ; preds = %.noexc221
  %i.hs = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %.body

bb.ce:                                            ; preds = %bb.ca
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gw, i64 24
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !80
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !80
  %i.hx = call double @llvm.fmuladd.f64(double %i.hw, double -3.000000e+00, double %i.hu)
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gw, i64 8 ; 2 uses
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !80 ; 2 uses
  %i.ia = call double @llvm.fmuladd.f64(double %i.hz, double 3.000000e+00, double %i.hx)
  %i.ib = load double, ptr %i.gw, align 8, !tbaa !80 ; 2 uses
  %i.ic = fsub double %i.ia, %i.ib                ; 2 uses
  %i.id = load ptr, ptr @debug, align 8, !tbaa !66 ; 2 uses
  %.not.i.i = icmp eq ptr %i.id, null
  br i1 %.not.i.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ie = fdiv double %i.ic, %i.di
  %i.if = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.id, ptr noundef nonnull @.str.38, double noundef %i.ie) #24 ; 0 uses
  %.pre.i.i = load double, ptr %i.hy, align 8, !tbaa !80
  %.pre134.i.i = load double, ptr %i.gw, align 8, !tbaa !80
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.ig = phi double [ %.pre134.i.i, %bb.cf ], [ %i.ib, %bb.ce ]
  %i.ih = phi double [ %.pre.i.i, %bb.cf ], [ %i.hz, %bb.ce ]
  %i.ii = fsub double %i.ih, %i.ig
  %i.ij = fdiv double %i.ic, 6.000000e+00
  %i.ik = call double @llvm.fmuladd.f64(double %i.ii, double 2.000000e+00, double %i.ij) ; 3 uses
  br i1 %i.hp, label %bb.ch, label %bb.ck

bb.ch:                                            ; preds = %bb.cg
  %i.il = zext nneg i32 %i.ho to i64              ; 3 uses
  %i.im = getelementptr [8 x i8], ptr %i.gw, i64 %i.il ; 4 uses
  %i.in = getelementptr i8, ptr %i.im, i64 -8     ; 2 uses
  %i.io = load double, ptr %i.in, align 8, !tbaa !80 ; 2 uses
  %i.ip = getelementptr i8, ptr %i.im, i64 -16    ; 2 uses
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !80 ; 2 uses
  %i.ir = call double @llvm.fmuladd.f64(double %i.iq, double -3.000000e+00, double %i.io)
  %i.is = getelementptr i8, ptr %i.im, i64 -24
  %i.it = load double, ptr %i.is, align 8, !tbaa !80
  %i.iu = call double @llvm.fmuladd.f64(double %i.it, double 3.000000e+00, double %i.ir)
  %i.iv = getelementptr i8, ptr %i.im, i64 -32
  %i.iw = load double, ptr %i.iv, align 8, !tbaa !80
  %i.ix = fsub double %i.iu, %i.iw                ; 2 uses
  %i.iy = load ptr, ptr @debug, align 8, !tbaa !66 ; 2 uses
  %.not110.i.i = icmp eq ptr %i.iy, null
  br i1 %.not110.i.i, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.iz = fdiv double %i.ix, %i.di
  %i.ja = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.iy, ptr noundef nonnull @.str.39, double noundef %i.iz) #24 ; 0 uses
  %.pre135.i.i = load double, ptr %i.in, align 8, !tbaa !80
  %.pre136.i.i = load double, ptr %i.ip, align 8, !tbaa !80
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.jb = phi double [ %.pre136.i.i, %bb.ci ], [ %i.iq, %bb.ch ]
  %i.jc = phi double [ %.pre135.i.i, %bb.ci ], [ %i.io, %bb.ch ]
  %i.jd = fsub double %i.jc, %i.jb
  %i.je = fdiv double %i.ix, 6.000000e+00
  %i.jf = call double @llvm.fmuladd.f64(double %i.jd, double 2.000000e+00, double %i.je)
  br label %.lr.ph.preheader.i.i

bb.ck:                                            ; preds = %bb.cg
  %i.jg = add nsw i32 %i.ho, -1                   ; 2 uses
  %i.jh = zext nneg i32 %i.jg to i64              ; 3 uses
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %i.jh
  %i.jj = load double, ptr %i.ji, align 8, !tbaa !80
  %i.jk = zext nneg i32 %i.ho to i64              ; 2 uses
  %i.jl = getelementptr [8 x i8], ptr %i.gw, i64 %i.jk
  %i.jm = getelementptr i8, ptr %i.jl, i64 -24
  %i.jn = load double, ptr %i.jm, align 8, !tbaa !80
  %i.jo = fsub double %i.jj, %i.jn
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %i.jh
  %i.jq = load double, ptr %i.jp, align 8, !tbaa !80
  %i.jr = fmul double %i.dd, %i.jq
  %i.js = call double @llvm.fmuladd.f64(double %i.jo, double 3.000000e+00, double %i.jr)
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.ck, %bb.cj
  %wide.trip.count.i.pre-phi.i = phi i64 [ %i.jh, %bb.ck ], [ %i.il, %bb.cj ] ; 10 uses
  %.pre-phi.i.i = phi i64 [ %i.jk, %bb.ck ], [ %i.il, %bb.cj ]
  %.0105.i.i = phi i32 [ %i.jg, %bb.ck ], [ %i.ho, %bb.cj ] ; 2 uses
  %.0102.i.i = phi double [ %i.js, %bb.ck ], [ %i.jf, %bb.cj ]
  %i.jt = shl nuw nsw i64 %.pre-phi.i.i, 3        ; 3 uses
  %i.ju = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jt) #29
          to label %.noexc222 unwind label %.loopexit457 ; 12 uses

.noexc222:                                        ; preds = %.lr.ph.preheader.i.i
  store double 0.000000e+00, ptr %i.ju, align 8, !tbaa !80
  %22 = getelementptr i8, ptr %i.ju, i64 8
  %.idx.i.i.i.i.i.i.i.i.i.a = add nsw i64 %i.jt, -8
  call void @llvm.memset.p0.i64(ptr align 8 %22, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.a, i1 false), !tbaa !80
  store double %i.ik, ptr %i.hq, align 8, !tbaa !80
  %i.jv = add nsw i64 %wide.trip.count.i.pre-phi.i, -1 ; 3 uses
  %xtraiter = and i64 %i.jv, 1
  %i.jw = icmp eq i64 %wide.trip.count.i.pre-phi.i, 2
  br i1 %i.jw, label %.lr.ph.i.i.epil.preheader, label %.noexc222.new

.noexc222.new:                                    ; preds = %.noexc222
  %unroll_iter = and i64 %i.jv, -2
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.noexc222.new
  %i.jx = phi double [ %i.ik, %.noexc222.new ], [ %i.kw, %.lr.ph.i.i ]
  %indvars.iv.i.i = phi i64 [ 1, %.noexc222.new ], [ %indvars.iv.next.i.i.1, %.lr.ph.i.i ] ; 5 uses
  %.0101119.i.i = phi double [ 1.000000e+00, %.noexc222.new ], [ %i.kn, %.lr.ph.i.i ]
  %niter = phi i64 [ 0, %.noexc222.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.jy = fdiv double 1.000000e+00, %.0101119.i.i ; 2 uses
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %indvars.iv.i.i
  store double %i.jy, ptr %i.jz, align 8, !tbaa !80
  %i.ka = fsub double 4.000000e+00, %i.jy         ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 4 uses
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %indvars.iv.next.i.i
  %i.kc = load double, ptr %i.kb, align 8, !tbaa !80
  %i.kd = getelementptr [8 x i8], ptr %i.gw, i64 %indvars.iv.i.i
  %i.ke = getelementptr i8, ptr %i.kd, i64 -8
  %i.kf = load double, ptr %i.ke, align 8, !tbaa !80
  %i.kg = fsub double %i.kc, %i.kf
  %i.kh = fmul double %i.kg, 3.000000e+00
  %i.ki = fsub double %i.kh, %i.jx
  %i.kj = fdiv double %i.ki, %i.ka                ; 2 uses
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %indvars.iv.i.i
  store double %i.kj, ptr %i.kk, align 8, !tbaa !80
  %i.kl = fdiv double 1.000000e+00, %i.ka         ; 2 uses
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %indvars.iv.next.i.i
  store double %i.kl, ptr %i.km, align 8, !tbaa !80
  %i.kn = fsub double 4.000000e+00, %i.kl         ; 4 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 3 uses
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %indvars.iv.next.i.i.1
  %i.kp = load double, ptr %i.ko, align 8, !tbaa !80
  %i.kq = getelementptr [8 x i8], ptr %i.gw, i64 %indvars.iv.next.i.i
  %i.kr = getelementptr i8, ptr %i.kq, i64 -8
  %i.ks = load double, ptr %i.kr, align 8, !tbaa !80
  %i.kt = fsub double %i.kp, %i.ks
  %i.ku = fmul double %i.kt, 3.000000e+00
  %i.kv = fsub double %i.ku, %i.kj
  %i.kw = fdiv double %i.kv, %i.kn                ; 3 uses
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %indvars.iv.next.i.i
  store double %i.kw, ptr %i.kx, align 8, !tbaa !80
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph122.preheader.i.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !165

.lr.ph122.preheader.i.i.unr-lcssa:                ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph122.preheader.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.lr.ph122.preheader.i.i.unr-lcssa, %.noexc222
  %.epil.init = phi double [ %i.ik, %.noexc222 ], [ %i.kw, %.lr.ph122.preheader.i.i.unr-lcssa ]
  %indvars.iv.i.i.epil.init = phi i64 [ 1, %.noexc222 ], [ %indvars.iv.next.i.i.1, %.lr.ph122.preheader.i.i.unr-lcssa ] ; 4 uses
  %.0101119.i.i.epil.init = phi double [ 1.000000e+00, %.noexc222 ], [ %i.kn, %.lr.ph122.preheader.i.i.unr-lcssa ]
  %lcmp.mod895 = trunc i64 %i.jv to i1
  call void @llvm.assume(i1 %lcmp.mod895)
  %i.ky = fdiv double 1.000000e+00, %.0101119.i.i.epil.init ; 2 uses
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %indvars.iv.i.i.epil.init
  store double %i.ky, ptr %i.kz, align 8, !tbaa !80
  %i.la = fsub double 4.000000e+00, %i.ky         ; 2 uses
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %indvars.iv.i.i.epil.init
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  %i.ld = load double, ptr %i.lc, align 8, !tbaa !80
  %i.le = getelementptr [8 x i8], ptr %i.gw, i64 %indvars.iv.i.i.epil.init
  %i.lf = getelementptr i8, ptr %i.le, i64 -8
  %i.lg = load double, ptr %i.lf, align 8, !tbaa !80
  %i.lh = fsub double %i.ld, %i.lg
  %i.li = fmul double %i.lh, 3.000000e+00
  %i.lj = fsub double %i.li, %.epil.init
  %i.lk = fdiv double %i.lj, %i.la
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %indvars.iv.i.i.epil.init
  store double %i.lk, ptr %i.ll, align 8, !tbaa !80
  br label %.lr.ph122.preheader.i.i

.lr.ph122.preheader.i.i:                          ; preds = %.lr.ph122.preheader.i.i.unr-lcssa, %.lr.ph.i.i.epil.preheader
  %.lcssa867 = phi double [ %i.kn, %.lr.ph122.preheader.i.i.unr-lcssa ], [ %i.la, %.lr.ph.i.i.epil.preheader ]
  %i.lm = fdiv double 1.000000e+00, %.lcssa867    ; 2 uses
  %i.ln = add nsw i32 %.0105.i.i, -1
  %i.lo = zext nneg i32 %i.ln to i64              ; 2 uses
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %i.lo
  store double %i.lm, ptr %i.lp, align 8, !tbaa !80
  %i.lq = select i1 %i.hp, double 1.000000e+00, double 4.000000e+00
  %i.lr = fsub double %i.lq, %i.lm
  %i.ls = add nsw i32 %.0105.i.i, -2              ; 2 uses
  %i.lt = zext nneg i32 %i.ls to i64              ; 5 uses
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %i.lt
  %i.lv = load double, ptr %i.lu, align 8, !tbaa !80
  %i.lw = fsub double %.0102.i.i, %i.lv
  %i.lx = fdiv double %i.lw, %i.lr
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %i.lo
  store double %i.lx, ptr %i.ly, align 8, !tbaa !80
  %i.lz = shl i64 %indvars.iv.i, 3
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.lz
  %i.ma = getelementptr i8, ptr %gep, i64 8
  %scevgep.a = getelementptr i8, ptr %i.ma, i64 %i.dl
  %i.mb = shl nuw nsw i64 %i.lt, 3
  %scevgep842 = getelementptr i8, ptr %scevgep.a, i64 %i.mb
  %load_initial.a = load double, ptr %scevgep842, align 8 ; 2 uses
  %i.mc = add nuw nsw i64 %i.lt, 1
  %xtraiter896 = and i64 %i.mc, 3                 ; 2 uses
  %lcmp.mod897.not = icmp eq i64 %xtraiter896, 0
  br i1 %lcmp.mod897.not, label %.lr.ph122.i.i.prol.loopexit, label %.lr.ph122.i.i.prol

.lr.ph122.i.i.prol:                               ; preds = %.lr.ph122.preheader.i.i, %.lr.ph122.i.i.prol
  %store_forwarded.prol = phi double [ %i.mj, %.lr.ph122.i.i.prol ], [ %load_initial.a, %.lr.ph122.preheader.i.i ]
  %indvars.iv126.i.i.prol = phi i64 [ %indvars.iv.next127.i.i.prol, %.lr.ph122.i.i.prol ], [ %i.lt, %.lr.ph122.preheader.i.i ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph122.i.i.prol ], [ 0, %.lr.ph122.preheader.i.i ]
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %indvars.iv126.i.i.prol
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 8
  %i.mf = load double, ptr %i.me, align 8, !tbaa !80
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %indvars.iv126.i.i.prol ; 2 uses
  %i.mh = load double, ptr %i.mg, align 8, !tbaa !80
  %i.mi = fneg double %i.mf
  %i.mj = call double @llvm.fmuladd.f64(double %i.mi, double %store_forwarded.prol, double %i.mh) ; 3 uses
  store double %i.mj, ptr %i.mg, align 8, !tbaa !80
  %indvars.iv.next127.i.i.prol = add nsw i64 %indvars.iv126.i.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter896
  br i1 %prol.iter.cmp.not, label %.lr.ph122.i.i.prol.loopexit, label %.lr.ph122.i.i.prol, !llvm.loop !166

.lr.ph122.i.i.prol.loopexit:                      ; preds = %.lr.ph122.i.i.prol, %.lr.ph122.preheader.i.i
  %store_forwarded.unr = phi double [ %load_initial.a, %.lr.ph122.preheader.i.i ], [ %i.mj, %.lr.ph122.i.i.prol ]
  %indvars.iv126.i.i.unr = phi i64 [ %i.lt, %.lr.ph122.preheader.i.i ], [ %indvars.iv.next127.i.i.prol, %.lr.ph122.i.i.prol ]
  %i.mk = icmp ult i32 %i.ls, 3
  br i1 %i.mk, label %iter.check, label %.lr.ph122.i.i

.lr.ph122.i.i:                                    ; preds = %.lr.ph122.i.i.prol.loopexit, %.lr.ph122.i.i
  %store_forwarded = phi double [ %i.nm, %.lr.ph122.i.i ], [ %store_forwarded.unr, %.lr.ph122.i.i.prol.loopexit ]
  %indvars.iv126.i.i = phi i64 [ %indvars.iv.next127.i.i.3, %.lr.ph122.i.i ], [ %indvars.iv126.i.i.unr, %.lr.ph122.i.i.prol.loopexit ] ; 6 uses
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %indvars.iv126.i.i
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 8
  %i.mn = load double, ptr %i.mm, align 8, !tbaa !80
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %indvars.iv126.i.i ; 2 uses
  %i.mp = load double, ptr %i.mo, align 8, !tbaa !80
  %i.mq = fneg double %i.mn
  %i.mr = call double @llvm.fmuladd.f64(double %i.mq, double %store_forwarded, double %i.mp) ; 2 uses
  store double %i.mr, ptr %i.mo, align 8, !tbaa !80
  %indvars.iv.next127.i.i = add nsw i64 %indvars.iv126.i.i, -1 ; 2 uses
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %indvars.iv.next127.i.i
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  %i.mu = load double, ptr %i.mt, align 8, !tbaa !80
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %indvars.iv.next127.i.i ; 2 uses
  %i.mw = load double, ptr %i.mv, align 8, !tbaa !80
  %i.mx = fneg double %i.mu
  %i.my = call double @llvm.fmuladd.f64(double %i.mx, double %i.mr, double %i.mw) ; 2 uses
  store double %i.my, ptr %i.mv, align 8, !tbaa !80
  %indvars.iv.next127.i.i.1 = add nsw i64 %indvars.iv126.i.i, -2 ; 2 uses
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %indvars.iv.next127.i.i.1
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 8
  %i.nb = load double, ptr %i.na, align 8, !tbaa !80
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %indvars.iv.next127.i.i.1 ; 2 uses
  %i.nd = load double, ptr %i.nc, align 8, !tbaa !80
  %i.ne = fneg double %i.nb
  %i.nf = call double @llvm.fmuladd.f64(double %i.ne, double %i.my, double %i.nd) ; 2 uses
  store double %i.nf, ptr %i.nc, align 8, !tbaa !80
  %indvars.iv.next127.i.i.2 = add nsw i64 %indvars.iv126.i.i, -3 ; 3 uses
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %indvars.iv.next127.i.i.2
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 8
  %i.ni = load double, ptr %i.nh, align 8, !tbaa !80
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %indvars.iv.next127.i.i.2 ; 2 uses
  %i.nk = load double, ptr %i.nj, align 8, !tbaa !80
  %i.nl = fneg double %i.ni
  %i.nm = call double @llvm.fmuladd.f64(double %i.nl, double %i.nf, double %i.nk) ; 2 uses
  store double %i.nm, ptr %i.nj, align 8, !tbaa !80
  %indvars.iv.next127.i.i.3 = add nsw i64 %indvars.iv126.i.i, -4
  %.not139.i.i.3 = icmp eq i64 %indvars.iv.next127.i.i.2, 0
  br i1 %.not139.i.i.3, label %iter.check, label %.lr.ph122.i.i, !llvm.loop !167

iter.check:                                       ; preds = %.lr.ph122.i.i, %.lr.ph122.i.i.prol.loopexit
  %min.iters.check = icmp samesign ult i64 %wide.trip.count.i.pre-phi.i, 4
  br i1 %min.iters.check, label %.lr.ph124.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check770 = icmp samesign ult i64 %wide.trip.count.i.pre-phi.i, 16
  br i1 %min.iters.check770, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.nn = and i64 %wide.trip.count.i.pre-phi.i, 12
  %n.vec = and i64 %wide.trip.count.i.pre-phi.i, 2147483632 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %index ; 5 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 32 ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.no, i64 64 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.no, i64 96 ; 2 uses
  %wide.load = load <4 x double>, ptr %i.no, align 8, !tbaa !80
  %wide.load771 = load <4 x double>, ptr %i.np, align 8, !tbaa !80
  %wide.load772 = load <4 x double>, ptr %i.nq, align 8, !tbaa !80
  %wide.load773 = load <4 x double>, ptr %i.nr, align 8, !tbaa !80
  %i.ns = fneg <4 x double> %wide.load
  %i.nt = fneg <4 x double> %wide.load771
  %i.nu = fneg <4 x double> %wide.load772
  %i.nv = fneg <4 x double> %wide.load773
  %i.nw = fdiv <4 x double> %i.ns, %broadcast.splat
  %i.nx = fdiv <4 x double> %i.nt, %broadcast.splat
  %i.ny = fdiv <4 x double> %i.nu, %broadcast.splat
  %i.nz = fdiv <4 x double> %i.nv, %broadcast.splat
  store <4 x double> %i.nw, ptr %i.no, align 8, !tbaa !80
  store <4 x double> %i.nx, ptr %i.np, align 8, !tbaa !80
  store <4 x double> %i.ny, ptr %i.nq, align 8, !tbaa !80
  store <4 x double> %i.nz, ptr %i.nr, align 8, !tbaa !80
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.oa = icmp eq i64 %index.next, %n.vec
  br i1 %i.oa, label %middle.block, label %vector.body, !llvm.loop !168

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count.i.pre-phi.i, %n.vec
  br i1 %cmp.n, label %.loopexit840, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.nn, 0
  br i1 %min.epilog.iters.check, label %.lr.ph124.i.i.preheader, label %vec.epilog.ph, !prof !99

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec774 = and i64 %wide.trip.count.i.pre-phi.i, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index777 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next779, %vec.epilog.vector.body ] ; 2 uses
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %index777 ; 2 uses
  %wide.load778 = load <4 x double>, ptr %i.ob, align 8, !tbaa !80
  %i.oc = fneg <4 x double> %wide.load778
  %i.od = fdiv <4 x double> %i.oc, %broadcast.splat776
  store <4 x double> %i.od, ptr %i.ob, align 8, !tbaa !80
  %index.next779 = add nuw i64 %index777, 4       ; 2 uses
  %i.oe = icmp eq i64 %index.next779, %n.vec774
  br i1 %i.oe, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !169

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n780 = icmp eq i64 %wide.trip.count.i.pre-phi.i, %n.vec774
  br i1 %cmp.n780, label %.loopexit840, label %.lr.ph124.i.i.preheader

.lr.ph124.i.i.preheader:                          ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv129.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec774, %vec.epilog.middle.block ]
  br label %.lr.ph124.i.i

.lr.ph124.i.i:                                    ; preds = %.lr.ph124.i.i.preheader, %.lr.ph124.i.i
  %indvars.iv129.i.i = phi i64 [ %indvars.iv.next130.i.i, %.lr.ph124.i.i ], [ %indvars.iv129.i.i.ph, %.lr.ph124.i.i.preheader ] ; 2 uses
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %indvars.iv129.i.i ; 2 uses
  %i.og = load double, ptr %i.of, align 8, !tbaa !80
  %i.oh = fneg double %i.og
  %i.oi = fdiv double %i.oh, %i.dd
  store double %i.oi, ptr %i.of, align 8, !tbaa !80
  %indvars.iv.next130.i.i = add nuw nsw i64 %indvars.iv129.i.i, 1 ; 2 uses
  %exitcond133.not.i.i = icmp eq i64 %indvars.iv.next130.i.i, %wide.trip.count.i.pre-phi.i
  br i1 %exitcond133.not.i.i, label %.loopexit840, label %.lr.ph124.i.i, !llvm.loop !170

.loopexit840:                                     ; preds = %.lr.ph124.i.i, %vec.epilog.middle.block, %middle.block
  call void @_ZdlPvm(ptr noundef nonnull %i.ju, i64 noundef %i.jt) #26
  br label %._crit_edge518.thread

.loopexit457:                                     ; preds = %.lr.ph.preheader.i.i
  %lpad.loopexit459 = landingpad { ptr, i32 }
          cleanup
  store i32 %storemerge167498.lcssa, ptr %i.f, align 4
  br label %.body

.loopexit.split-lp458:                            ; preds = %bb.bu, %bb.cb
  %lpad.loopexit.split-lp460 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cl:                                            ; preds = %.lr.ph517, %bb.cp
  %indvars.iv596 = phi i64 [ 1, %.lr.ph517 ], [ %indvars.iv.next597, %bb.cp ] ; 3 uses
  %.0142516 = phi i32 [ 0, %.lr.ph517 ], [ %.1143, %bb.cp ] ; 2 uses
  %.0146515 = phi double [ 0.000000e+00, %.lr.ph517 ], [ %.2148, %bb.cp ] ; 3 uses
  %i.oj = getelementptr [8 x i8], ptr %i.gh, i64 %indvars.iv596
  %i.ok = getelementptr i8, ptr %i.oj, i64 -8
  %i.ol = load double, ptr %i.ok, align 8, !tbaa !80 ; 2 uses
  %indvars.iv.next597 = add nuw nsw i64 %indvars.iv596, 1 ; 3 uses
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %indvars.iv.next597
  %i.on = load double, ptr %i.om, align 8, !tbaa !80 ; 2 uses
  %i.oo = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %indvars.iv596
  %i.op = load double, ptr %i.oo, align 8, !tbaa !80 ; 3 uses
end_hunk_0
