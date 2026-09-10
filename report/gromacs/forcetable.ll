Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/forcetable?download=true
inline.NumInlined: 816
inline.NumDeleted: 354
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZL11read_tablesP8_IO_FILEPKcii:bb.a
  %i.fv = fcmp une double %i.fu, 0.000000e+00
  br i1 %i.fv, label %bb.bm, label %bb.bs

bb.bm:                                            ; preds = %bb.bl
  %i.fw = trunc nuw i8 %.3139 to i1
  %i.fx = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select529 = select i1 %i.fw, i32 %i.fx, i32 %storemerge167500 ; 2 uses
  %i.fy = call double @llvm.fabs.f64(double %i.fu)
  %or.cond455 = fcmp ogt double %i.fy, f0x47847AE133333333
  br i1 %or.cond455, label %.critedge4, label %bb.bs

.critedge4:                                       ; preds = %bb.ax, %bb.at, %bb.bm
  %.lcssa536 = phi i64 [ %indvars.iv, %bb.bm ], [ 0, %bb.at ], [ 1, %bb.ax ]
  %spec.select529.lcssa = phi i32 [ %spec.select529, %bb.bm ], [ %spec.select529.peel, %bb.at ], [ %spec.select529.peel559, %bb.ax ]
  store i32 %spec.select529.lcssa, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA66_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %19, ptr noundef nonnull align 1 dereferenceable(66) @.str, i8 noundef zeroext 2)
          to label %bb.bn unwind label %bb.bp

bb.bn:                                            ; preds = %.critedge4
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %.lcssa536
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !80
  %i.gb = load ptr, ptr %i.d, align 8, !tbaa !102
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %19, i32 noundef 677, ptr noundef nonnull @.str.28, double noundef %i.ga, ptr noundef %i.gb) #25
          to label %bb.bo unwind label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  unreachable

bb.bp:                                            ; preds = %.critedge4
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bq:                                            ; preds = %bb.bn
  %i.gd = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %19) #24
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.pn170 = phi { ptr, i32 } [ %i.gd, %bb.bq ], [ %i.gc, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  br label %.body

bb.bs:                                            ; preds = %bb.bm, %bb.bl
  %storemerge167498 = phi i32 [ %spec.select529, %bb.bm ], [ %storemerge167500, %bb.bl ] ; 2 uses
  %.5141 = phi i8 [ 0, %bb.bm ], [ %.3139, %bb.bl ] ; 2 uses
  %.1133 = phi i1 [ false, %bb.bm ], [ %.0132509, %bb.bl ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.peel.next553, !llvm.loop !166

._crit_edge:                                      ; preds = %bb.bs, %bb.au, %bb.ay
  %storemerge167498.lcssa = phi i32 [ %storemerge167498.peel561, %bb.ay ], [ %storemerge167498.peel, %bb.au ], [ %storemerge167498, %bb.bs ] ; 6 uses
  %.5141.lcssa = phi i8 [ %.5141.peel562, %bb.ay ], [ %.5141.peel, %bb.au ], [ %.5141, %bb.bs ] ; 5 uses
  %.1133.lcssa = phi i1 [ %.1133.peel563, %bb.ay ], [ %i.ea, %bb.au ], [ %.1133, %bb.bs ]
  %.1135.lcssa538 = phi i1 [ %.1135.peel558, %bb.ay ], [ %i.dw, %bb.au ], [ %.1135, %bb.bs ]
  %i.ge = xor i1 %.1135.lcssa538, true
  %i.gf = select i1 %i.ge, i1 %.1133.lcssa, i1 false
  store i32 %storemerge167498.lcssa, ptr %i.f, align 4
  br i1 %i.gf, label %bb.bt, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  br i1 %i.dd, label %.lr.ph517, label %._crit_edge518.thread

.lr.ph517:                                        ; preds = %.preheader
  %i.gg = shl nuw nsw i64 %indvars.iv586, 1       ; 2 uses
  %i.gh = or disjoint i64 %i.gg, 1
  %i.gi = mul nsw i64 %i.ah, %i.gh
  %i.gj = getelementptr inbounds [8 x i8], ptr %.sroa.35394.0.copyload, i64 %i.gi ; 2 uses
  %i.gk = add nuw nsw i64 %i.gg, 2
  %i.gl = mul nsw i64 %i.ah, %i.gk
  %i.gm = getelementptr inbounds [8 x i8], ptr %.sroa.35394.0.copyload, i64 %i.gl
  br label %bb.cl

bb.bt:                                            ; preds = %._crit_edge
  %i.gn = shl nuw nsw i64 %indvars.iv586, 1       ; 2 uses
  %i.go = or disjoint i64 %i.gn, 1
  %i.gp = mul nsw i64 %i.ah, %i.go
  %i.gq = getelementptr inbounds [8 x i8], ptr %.sroa.35394.0.copyload, i64 %i.gp ; 3 uses
  %i.gr = add nuw nsw i64 %i.gn, 2
  %i.gs = mul nsw i64 %i.ah, %i.gr
  %i.gt = getelementptr inbounds [8 x i8], ptr %.sroa.35394.0.copyload, i64 %i.gs
  br i1 %i.db, label %bb.bu, label %.preheader33.i

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA66_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 1 dereferenceable(66) @.str, i8 noundef zeroext 2)
          to label %.noexc220 unwind label %.loopexit.split-lp458

.noexc220:                                        ; preds = %bb.bu
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef 529, ptr noundef nonnull @.str.33) #25
          to label %bb.bv unwind label %bb.bw

bb.bv:                                            ; preds = %.noexc220
  unreachable

bb.bw:                                            ; preds = %.noexc220
  %i.gu = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %.body

.preheader33.i:                                   ; preds = %bb.bt, %.preheader33.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader33.i ], [ 0, %bb.bt ] ; 6 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %indvars.iv.i
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !80
  %i.gx = fcmp oeq double %i.gw, 0.000000e+00
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %i.gx, label %.preheader33.i, label %.preheader.i, !llvm.loop !167

.preheader.i:                                     ; preds = %.preheader33.i
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %indvars.iv.i ; 14 uses
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bx, %.preheader.i
  %indvars.iv39.i = phi i64 [ %indvars.iv.next40.i, %bb.bx ], [ %i.df, %.preheader.i ] ; 3 uses
  %i.gz = getelementptr [8 x i8], ptr %i.gq, i64 %indvars.iv39.i
  %i.ha = getelementptr i8, ptr %i.gz, i64 -8
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !80
  %i.hc = fcmp oeq double %i.hb, 0.000000e+00
  %indvars.iv.next40.i = add nsw i64 %indvars.iv39.i, -1
  br i1 %i.hc, label %bb.bx, label %bb.by, !llvm.loop !168

bb.by:                                            ; preds = %bb.bx
  %i.hd = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %i.he = trunc nsw i64 %indvars.iv39.i to i32    ; 2 uses
  %i.hf = icmp slt i32 %i.dg, %i.he
  %i.hg = add nsw i32 %i.he, 1
  %.1.i = select i1 %i.hf, i32 %i.ai, i32 %i.hg   ; 4 uses
  br i1 %.not.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.hh = uitofp nneg i32 %i.hd to double
  %i.hi = fmul double %i.de, %i.hh
  %i.hj = icmp eq i32 %.1.i, %i.ai
  %.str.35..str.36.i = select i1 %i.hj, ptr @.str.35, ptr @.str.36
  %i.hk = add nsw i32 %.1.i, -1
  %i.hl = sitofp i32 %i.hk to double
  %i.hm = fmul double %i.de, %i.hl
  %i.hn = trunc i64 %indvars.iv586 to i32
  %i.ho = add i32 %i.hn, 1
  %i.hp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1, ptr noundef nonnull @.str.34, i32 noundef %i.ho, double noundef %i.hi, ptr noundef nonnull %.str.35..str.36.i, double noundef %i.hm) #24 ; 0 uses
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.hq = sub nsw i32 %.1.i, %i.hd                ; 6 uses
  %i.hr = icmp eq i32 %.1.i, %i.ai                ; 2 uses
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %indvars.iv.i ; 15 uses
  %i.ht = icmp slt i32 %i.hq, 4
  br i1 %i.ht, label %bb.cb, label %bb.ce

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA66_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 1 dereferenceable(66) @.str, i8 noundef zeroext 2)
          to label %.noexc221 unwind label %.loopexit.split-lp458

.noexc221:                                        ; preds = %bb.cb
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 450, ptr noundef nonnull @.str.37, i32 noundef %i.hq) #25
          to label %bb.cc unwind label %bb.cd

bb.cc:                                            ; preds = %.noexc221
  unreachable

bb.cd:                                            ; preds = %.noexc221
  %i.hu = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %.body

bb.ce:                                            ; preds = %bb.ca
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !80
  %i.hx = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !80
  %i.hz = call double @llvm.fmuladd.f64(double %i.hy, double -3.000000e+00, double %i.hw)
  %i.ia = getelementptr inbounds nuw i8, ptr %i.gy, i64 8 ; 2 uses
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !80 ; 2 uses
  %i.ic = call double @llvm.fmuladd.f64(double %i.ib, double 3.000000e+00, double %i.hz)
  %i.id = load double, ptr %i.gy, align 8, !tbaa !80 ; 2 uses
  %i.ie = fsub double %i.ic, %i.id                ; 2 uses
  %i.if = load ptr, ptr @debug, align 8, !tbaa !66 ; 2 uses
  %.not.i.i = icmp eq ptr %i.if, null
  br i1 %.not.i.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ig = fdiv double %i.ie, %i.di
  %i.ih = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.if, ptr noundef nonnull @.str.38, double noundef %i.ig) #24 ; 0 uses
  %.pre.i.i = load double, ptr %i.ia, align 8, !tbaa !80
  %.pre134.i.i = load double, ptr %i.gy, align 8, !tbaa !80
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.ii = phi double [ %.pre134.i.i, %bb.cf ], [ %i.id, %bb.ce ]
  %i.ij = phi double [ %.pre.i.i, %bb.cf ], [ %i.ib, %bb.ce ]
  %i.ik = fsub double %i.ij, %i.ii
  %i.il = fdiv double %i.ie, 6.000000e+00
  %i.im = call double @llvm.fmuladd.f64(double %i.ik, double 2.000000e+00, double %i.il) ; 2 uses
  br i1 %i.hr, label %bb.ch, label %bb.ck

bb.ch:                                            ; preds = %bb.cg
  %i.in = zext nneg i32 %i.hq to i64              ; 3 uses
  %i.io = getelementptr [8 x i8], ptr %i.gy, i64 %i.in ; 4 uses
  %i.ip = getelementptr i8, ptr %i.io, i64 -8     ; 2 uses
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !80 ; 2 uses
  %i.ir = getelementptr i8, ptr %i.io, i64 -16    ; 2 uses
  %i.is = load double, ptr %i.ir, align 8, !tbaa !80 ; 2 uses
  %i.it = call double @llvm.fmuladd.f64(double %i.is, double -3.000000e+00, double %i.iq)
  %i.iu = getelementptr i8, ptr %i.io, i64 -24
  %i.iv = load double, ptr %i.iu, align 8, !tbaa !80
  %i.iw = call double @llvm.fmuladd.f64(double %i.iv, double 3.000000e+00, double %i.it)
  %i.ix = getelementptr i8, ptr %i.io, i64 -32
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !80
  %i.iz = fsub double %i.iw, %i.iy                ; 2 uses
  %i.ja = load ptr, ptr @debug, align 8, !tbaa !66 ; 2 uses
  %.not110.i.i = icmp eq ptr %i.ja, null
  br i1 %.not110.i.i, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.jb = fdiv double %i.iz, %i.dk
  %i.jc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.ja, ptr noundef nonnull @.str.39, double noundef %i.jb) #24 ; 0 uses
  %.pre135.i.i = load double, ptr %i.ip, align 8, !tbaa !80
  %.pre136.i.i = load double, ptr %i.ir, align 8, !tbaa !80
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.jd = phi double [ %.pre136.i.i, %bb.ci ], [ %i.is, %bb.ch ]
  %i.je = phi double [ %.pre135.i.i, %bb.ci ], [ %i.iq, %bb.ch ]
  %i.jf = fsub double %i.je, %i.jd
  %i.jg = fdiv double %i.iz, 6.000000e+00
  %i.jh = call double @llvm.fmuladd.f64(double %i.jf, double 2.000000e+00, double %i.jg)
  br label %.lr.ph.preheader.i.i

bb.ck:                                            ; preds = %bb.cg
  %i.ji = add nsw i32 %i.hq, -1                   ; 2 uses
  %i.jj = zext nneg i32 %i.ji to i64              ; 3 uses
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %i.jj
  %i.jl = load double, ptr %i.jk, align 8, !tbaa !80
  %i.jm = zext nneg i32 %i.hq to i64              ; 2 uses
  %i.jn = getelementptr [8 x i8], ptr %i.gy, i64 %i.jm
  %i.jo = getelementptr i8, ptr %i.jn, i64 -24
  %i.jp = load double, ptr %i.jo, align 8, !tbaa !80
  %i.jq = fsub double %i.jl, %i.jp
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.jj
  %i.js = load double, ptr %i.jr, align 8, !tbaa !80
  %i.jt = fmul double %i.de, %i.js
  %i.ju = call double @llvm.fmuladd.f64(double %i.jq, double 3.000000e+00, double %i.jt)
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.ck, %bb.cj
  %wide.trip.count.i.pre-phi.i = phi i64 [ %i.jj, %bb.ck ], [ %i.in, %bb.cj ] ; 9 uses
  %.pre-phi.i.i = phi i64 [ %i.jm, %bb.ck ], [ %i.in, %bb.cj ]
  %.0105.i.i = phi i32 [ %i.ji, %bb.ck ], [ %i.hq, %bb.cj ] ; 2 uses
  %.0102.i.i = phi double [ %i.ju, %bb.ck ], [ %i.jh, %bb.cj ]
  %i.jv = shl nuw nsw i64 %.pre-phi.i.i, 3        ; 3 uses
  %i.jw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jv) #29
          to label %.noexc222 unwind label %.loopexit457 ; 12 uses

.noexc222:                                        ; preds = %.lr.ph.preheader.i.i
  store double 0.000000e+00, ptr %i.jw, align 8, !tbaa !80
  %i.jx = getelementptr i8, ptr %i.jw, i64 8
  %.idx.i.i.i.i.i.i.i.i.i = add nsw i64 %i.jv, -8
  call void @llvm.memset.p0.i64(ptr align 8 %i.jx, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !80
  store double %i.im, ptr %i.hs, align 8, !tbaa !80
  %i.jy = add nsw i64 %wide.trip.count.i.pre-phi.i, -1 ; 3 uses
  %xtraiter = and i64 %i.jy, 1
  %unroll_iter = and i64 %i.jy, -2
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.noexc222
  %i.jz = phi double [ %i.im, %.noexc222 ], [ %i.ky, %.lr.ph.i.i ]
  %indvars.iv.i.i = phi i64 [ 1, %.noexc222 ], [ %indvars.iv.next.i.i.1, %.lr.ph.i.i ] ; 5 uses
  %.0101119.i.i = phi double [ 1.000000e+00, %.noexc222 ], [ %i.kp, %.lr.ph.i.i ]
  %niter = phi i64 [ 0, %.noexc222 ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.ka = fdiv double 1.000000e+00, %.0101119.i.i ; 2 uses
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %indvars.iv.i.i
  store double %i.ka, ptr %i.kb, align 8, !tbaa !80
  %i.kc = fsub double 4.000000e+00, %i.ka         ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 4 uses
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %indvars.iv.next.i.i
  %i.ke = load double, ptr %i.kd, align 8, !tbaa !80
  %i.kf = getelementptr [8 x i8], ptr %i.gy, i64 %indvars.iv.i.i
  %i.kg = getelementptr i8, ptr %i.kf, i64 -8
  %i.kh = load double, ptr %i.kg, align 8, !tbaa !80
  %i.ki = fsub double %i.ke, %i.kh
  %i.kj = fmul double %i.ki, 3.000000e+00
  %i.kk = fsub double %i.kj, %i.jz
  %i.kl = fdiv double %i.kk, %i.kc                ; 2 uses
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv.i.i
  store double %i.kl, ptr %i.km, align 8, !tbaa !80
  %i.kn = fdiv double 1.000000e+00, %i.kc         ; 2 uses
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %indvars.iv.next.i.i
  store double %i.kn, ptr %i.ko, align 8, !tbaa !80
  %i.kp = fsub double 4.000000e+00, %i.kn         ; 4 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 6 uses
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %indvars.iv.next.i.i.1
  %i.kr = load double, ptr %i.kq, align 8, !tbaa !80
  %i.ks = getelementptr [8 x i8], ptr %i.gy, i64 %indvars.iv.next.i.i
  %i.kt = getelementptr i8, ptr %i.ks, i64 -8
  %i.ku = load double, ptr %i.kt, align 8, !tbaa !80
  %i.kv = fsub double %i.kr, %i.ku
  %i.kw = fmul double %i.kv, 3.000000e+00
  %i.kx = fsub double %i.kw, %i.kl
  %i.ky = fdiv double %i.kx, %i.kp                ; 3 uses
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv.next.i.i
  store double %i.ky, ptr %i.kz, align 8, !tbaa !80
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph122.preheader.i.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !169

.lr.ph122.preheader.i.i.unr-lcssa:                ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph122.preheader.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.lr.ph122.preheader.i.i.unr-lcssa
  %lcmp.mod843 = trunc i64 %i.jy to i1
  call void @llvm.assume(i1 %lcmp.mod843)
  %i.la = fdiv double 1.000000e+00, %i.kp         ; 2 uses
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %indvars.iv.next.i.i.1
  store double %i.la, ptr %i.lb, align 8, !tbaa !80
  %i.lc = fsub double 4.000000e+00, %i.la         ; 2 uses
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %indvars.iv.next.i.i.1
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  %i.lf = load double, ptr %i.le, align 8, !tbaa !80
  %i.lg = getelementptr [8 x i8], ptr %i.gy, i64 %indvars.iv.next.i.i.1
  %i.lh = getelementptr i8, ptr %i.lg, i64 -8
  %i.li = load double, ptr %i.lh, align 8, !tbaa !80
  %i.lj = fsub double %i.lf, %i.li
  %i.lk = fmul double %i.lj, 3.000000e+00
  %i.ll = fsub double %i.lk, %i.ky
  %i.lm = fdiv double %i.ll, %i.lc
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv.next.i.i.1
  store double %i.lm, ptr %i.ln, align 8, !tbaa !80
  br label %.lr.ph122.preheader.i.i

.lr.ph122.preheader.i.i:                          ; preds = %.lr.ph122.preheader.i.i.unr-lcssa, %.lr.ph.i.i.epil.preheader
  %.lcssa819 = phi double [ %i.kp, %.lr.ph122.preheader.i.i.unr-lcssa ], [ %i.lc, %.lr.ph.i.i.epil.preheader ]
  %i.lo = fdiv double 1.000000e+00, %.lcssa819    ; 2 uses
  %i.lp = add nsw i32 %.0105.i.i, -1
  %i.lq = zext nneg i32 %i.lp to i64              ; 2 uses
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %i.lq
  store double %i.lo, ptr %i.lr, align 8, !tbaa !80
  %i.ls = select i1 %i.hr, double 1.000000e+00, double 4.000000e+00
  %i.lt = fsub double %i.ls, %i.lo
  %i.lu = add nsw i32 %.0105.i.i, -2              ; 2 uses
  %i.lv = zext nneg i32 %i.lu to i64              ; 5 uses
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.lv
  %i.lx = load double, ptr %i.lw, align 8, !tbaa !80
  %i.ly = fsub double %.0102.i.i, %i.lx
  %i.lz = fdiv double %i.ly, %i.lt
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.lq
  store double %i.lz, ptr %i.ma, align 8, !tbaa !80
  %i.mb = shl i64 %indvars.iv.i, 3
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.mb
  %i.mc = getelementptr i8, ptr %gep, i64 8
  %scevgep = getelementptr i8, ptr %i.mc, i64 %i.dn
  %i.md = shl nuw nsw i64 %i.lv, 3
  %scevgep797 = getelementptr i8, ptr %scevgep, i64 %i.md
  %load_initial = load double, ptr %scevgep797, align 8 ; 2 uses
  %i.me = add nuw nsw i64 %i.lv, 1
  %xtraiter844 = and i64 %i.me, 3                 ; 2 uses
  %lcmp.mod845.not = icmp eq i64 %xtraiter844, 0
  br i1 %lcmp.mod845.not, label %.lr.ph122.i.i.prol.loopexit, label %.lr.ph122.i.i.prol

.lr.ph122.i.i.prol:                               ; preds = %.lr.ph122.preheader.i.i, %.lr.ph122.i.i.prol
  %store_forwarded.prol = phi double [ %i.ml, %.lr.ph122.i.i.prol ], [ %load_initial, %.lr.ph122.preheader.i.i ]
  %indvars.iv126.i.i.prol = phi i64 [ %indvars.iv.next127.i.i.prol, %.lr.ph122.i.i.prol ], [ %i.lv, %.lr.ph122.preheader.i.i ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph122.i.i.prol ], [ 0, %.lr.ph122.preheader.i.i ]
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %indvars.iv126.i.i.prol
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  %i.mh = load double, ptr %i.mg, align 8, !tbaa !80
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv126.i.i.prol ; 2 uses
  %i.mj = load double, ptr %i.mi, align 8, !tbaa !80
  %i.mk = fneg double %i.mh
  %i.ml = call double @llvm.fmuladd.f64(double %i.mk, double %store_forwarded.prol, double %i.mj) ; 3 uses
  store double %i.ml, ptr %i.mi, align 8, !tbaa !80
  %indvars.iv.next127.i.i.prol = add nsw i64 %indvars.iv126.i.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter844
  br i1 %prol.iter.cmp.not, label %.lr.ph122.i.i.prol.loopexit, label %.lr.ph122.i.i.prol, !llvm.loop !170

.lr.ph122.i.i.prol.loopexit:                      ; preds = %.lr.ph122.i.i.prol, %.lr.ph122.preheader.i.i
  %store_forwarded.unr = phi double [ %load_initial, %.lr.ph122.preheader.i.i ], [ %i.ml, %.lr.ph122.i.i.prol ]
  %indvars.iv126.i.i.unr = phi i64 [ %i.lv, %.lr.ph122.preheader.i.i ], [ %indvars.iv.next127.i.i.prol, %.lr.ph122.i.i.prol ]
  %i.mm = icmp ult i32 %i.lu, 3
  br i1 %i.mm, label %iter.check, label %.lr.ph122.i.i

.lr.ph122.i.i:                                    ; preds = %.lr.ph122.i.i.prol.loopexit, %.lr.ph122.i.i
  %store_forwarded = phi double [ %i.no, %.lr.ph122.i.i ], [ %store_forwarded.unr, %.lr.ph122.i.i.prol.loopexit ]
  %indvars.iv126.i.i = phi i64 [ %indvars.iv.next127.i.i.3, %.lr.ph122.i.i ], [ %indvars.iv126.i.i.unr, %.lr.ph122.i.i.prol.loopexit ] ; 6 uses
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %indvars.iv126.i.i
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  %i.mp = load double, ptr %i.mo, align 8, !tbaa !80
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv126.i.i ; 2 uses
  %i.mr = load double, ptr %i.mq, align 8, !tbaa !80
  %i.ms = fneg double %i.mp
  %i.mt = call double @llvm.fmuladd.f64(double %i.ms, double %store_forwarded, double %i.mr) ; 2 uses
  store double %i.mt, ptr %i.mq, align 8, !tbaa !80
  %indvars.iv.next127.i.i = add nsw i64 %indvars.iv126.i.i, -1 ; 2 uses
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %indvars.iv.next127.i.i
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 8
  %i.mw = load double, ptr %i.mv, align 8, !tbaa !80
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv.next127.i.i ; 2 uses
  %i.my = load double, ptr %i.mx, align 8, !tbaa !80
  %i.mz = fneg double %i.mw
  %i.na = call double @llvm.fmuladd.f64(double %i.mz, double %i.mt, double %i.my) ; 2 uses
  store double %i.na, ptr %i.mx, align 8, !tbaa !80
  %indvars.iv.next127.i.i.1 = add nsw i64 %indvars.iv126.i.i, -2 ; 2 uses
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %indvars.iv.next127.i.i.1
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  %i.nd = load double, ptr %i.nc, align 8, !tbaa !80
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv.next127.i.i.1 ; 2 uses
  %i.nf = load double, ptr %i.ne, align 8, !tbaa !80
  %i.ng = fneg double %i.nd
  %i.nh = call double @llvm.fmuladd.f64(double %i.ng, double %i.na, double %i.nf) ; 2 uses
  store double %i.nh, ptr %i.ne, align 8, !tbaa !80
  %indvars.iv.next127.i.i.2 = add nsw i64 %indvars.iv126.i.i, -3 ; 3 uses
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %indvars.iv.next127.i.i.2
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 8
  %i.nk = load double, ptr %i.nj, align 8, !tbaa !80
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv.next127.i.i.2 ; 2 uses
  %i.nm = load double, ptr %i.nl, align 8, !tbaa !80
  %i.nn = fneg double %i.nk
  %i.no = call double @llvm.fmuladd.f64(double %i.nn, double %i.nh, double %i.nm) ; 2 uses
  store double %i.no, ptr %i.nl, align 8, !tbaa !80
  %indvars.iv.next127.i.i.3 = add nsw i64 %indvars.iv126.i.i, -4
  %.not139.i.i.3 = icmp eq i64 %indvars.iv.next127.i.i.2, 0
  br i1 %.not139.i.i.3, label %iter.check, label %.lr.ph122.i.i, !llvm.loop !171

iter.check:                                       ; preds = %.lr.ph122.i.i, %.lr.ph122.i.i.prol.loopexit
  %min.iters.check = icmp samesign ult i64 %wide.trip.count.i.pre-phi.i, 4
  br i1 %min.iters.check, label %.lr.ph124.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check747 = icmp samesign ult i64 %wide.trip.count.i.pre-phi.i, 16
  br i1 %min.iters.check747, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.np = and i64 %wide.trip.count.i.pre-phi.i, 12
  %n.vec = and i64 %wide.trip.count.i.pre-phi.i, 2147483632 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %index ; 5 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 32 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nq, i64 64 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nq, i64 96 ; 2 uses
  %wide.load = load <4 x double>, ptr %i.nq, align 8, !tbaa !80
  %wide.load748 = load <4 x double>, ptr %i.nr, align 8, !tbaa !80
  %wide.load749 = load <4 x double>, ptr %i.ns, align 8, !tbaa !80
  %wide.load750 = load <4 x double>, ptr %i.nt, align 8, !tbaa !80
  %i.nu = fneg <4 x double> %wide.load
  %i.nv = fneg <4 x double> %wide.load748
  %i.nw = fneg <4 x double> %wide.load749
  %i.nx = fneg <4 x double> %wide.load750
  %i.ny = fdiv <4 x double> %i.nu, %broadcast.splat
  %i.nz = fdiv <4 x double> %i.nv, %broadcast.splat
  %i.oa = fdiv <4 x double> %i.nw, %broadcast.splat
  %i.ob = fdiv <4 x double> %i.nx, %broadcast.splat
  store <4 x double> %i.ny, ptr %i.nq, align 8, !tbaa !80
  store <4 x double> %i.nz, ptr %i.nr, align 8, !tbaa !80
  store <4 x double> %i.oa, ptr %i.ns, align 8, !tbaa !80
  store <4 x double> %i.ob, ptr %i.nt, align 8, !tbaa !80
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.oc = icmp eq i64 %index.next, %n.vec
  br i1 %i.oc, label %middle.block, label %vector.body, !llvm.loop !172

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count.i.pre-phi.i, %n.vec
  br i1 %cmp.n, label %.loopexit795, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.np, 0
  br i1 %min.epilog.iters.check, label %.lr.ph124.i.i.preheader, label %vec.epilog.ph, !prof !101

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec751 = and i64 %wide.trip.count.i.pre-phi.i, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index754 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next756, %vec.epilog.vector.body ] ; 2 uses
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %index754 ; 2 uses
  %wide.load755 = load <4 x double>, ptr %i.od, align 8, !tbaa !80
  %i.oe = fneg <4 x double> %wide.load755
  %i.of = fdiv <4 x double> %i.oe, %broadcast.splat753
  store <4 x double> %i.of, ptr %i.od, align 8, !tbaa !80
  %index.next756 = add nuw i64 %index754, 4       ; 2 uses
  %i.og = icmp eq i64 %index.next756, %n.vec751
  br i1 %i.og, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !173

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n757 = icmp eq i64 %wide.trip.count.i.pre-phi.i, %n.vec751
  br i1 %cmp.n757, label %.loopexit795, label %.lr.ph124.i.i.preheader

.lr.ph124.i.i.preheader:                          ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv129.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec751, %vec.epilog.middle.block ]
  br label %.lr.ph124.i.i

.lr.ph124.i.i:                                    ; preds = %.lr.ph124.i.i.preheader, %.lr.ph124.i.i
  %indvars.iv129.i.i = phi i64 [ %indvars.iv.next130.i.i, %.lr.ph124.i.i ], [ %indvars.iv129.i.i.ph, %.lr.ph124.i.i.preheader ] ; 2 uses
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv129.i.i ; 2 uses
  %i.oi = load double, ptr %i.oh, align 8, !tbaa !80
  %i.oj = fneg double %i.oi
  %i.ok = fdiv double %i.oj, %i.de
  store double %i.ok, ptr %i.oh, align 8, !tbaa !80
  %indvars.iv.next130.i.i = add nuw nsw i64 %indvars.iv129.i.i, 1 ; 2 uses
  %exitcond133.not.i.i = icmp eq i64 %indvars.iv.next130.i.i, %wide.trip.count.i.pre-phi.i
  br i1 %exitcond133.not.i.i, label %.loopexit795, label %.lr.ph124.i.i, !llvm.loop !174

.loopexit795:                                     ; preds = %.lr.ph124.i.i, %vec.epilog.middle.block, %middle.block
  call void @_ZdlPvm(ptr noundef nonnull %i.jw, i64 noundef %i.jv) #26
  br label %._crit_edge518.thread

.loopexit457:                                     ; preds = %.lr.ph.preheader.i.i
  %lpad.loopexit459 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp458:                            ; preds = %bb.bu, %bb.cb
  %lpad.loopexit.split-lp460 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cl:                                            ; preds = %.lr.ph517, %bb.cp
  %indvars.iv581 = phi i64 [ 1, %.lr.ph517 ], [ %indvars.iv.next582, %bb.cp ] ; 3 uses
  %.0142516 = phi i32 [ 0, %.lr.ph517 ], [ %.1143, %bb.cp ] ; 2 uses
  %.0146515 = phi double [ 0.000000e+00, %.lr.ph517 ], [ %.2148, %bb.cp ] ; 3 uses
  %i.ol = getelementptr [8 x i8], ptr %i.gj, i64 %indvars.iv581
  %i.om = getelementptr i8, ptr %i.ol, i64 -8
  %i.on = load double, ptr %i.om, align 8, !tbaa !80 ; 2 uses
end_hunk_0
