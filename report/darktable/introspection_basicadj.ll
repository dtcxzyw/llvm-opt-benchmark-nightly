Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_basicadj?download=true
inline.NumInlined: 82
inline.NumDeleted: 41
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 15
begin_hunk_0_@process:bb.a
bb.ae:                                            ; preds = %bb.ad
  %i.fl = load i32, ptr %i.cm, align 64, !tbaa !15
  %i.fm = add i32 %i.fl, 1
  store i32 %i.fm, ptr %i.cm, align 64, !tbaa !15
  br label %bb.ai

bb.af:                                            ; preds = %bb.ad
  %i.fn = fcmp reassoc nsz arcp contract afn ult float %i.fj, 1.000000e+00
  br i1 %i.fn, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fo = load i32, ptr %i.es, align 4, !tbaa !15
  %i.fp = add i32 %i.fo, 1
  store i32 %i.fp, ptr %i.es, align 4, !tbaa !15
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.fq = fmul reassoc nsz arcp contract afn float %i.fj, 8.192000e+03
  %i.fr = fptoui float %i.fq to i32
  %i.fs = zext i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.fs ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !15
  %i.fv = add i32 %i.fu, 1
  store i32 %i.fv, ptr %i.ft, align 4, !tbaa !15
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.ae
  %i.fw = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !12 ; 3 uses
  %i.fy = fcmp reassoc nsz arcp contract afn ugt float %i.fx, 0.000000e+00
  br i1 %i.fy, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fz = load i32, ptr %i.cm, align 64, !tbaa !15
  %i.ga = add i32 %i.fz, 1
  store i32 %i.ga, ptr %i.cm, align 64, !tbaa !15
  br label %bb.an

bb.ak:                                            ; preds = %bb.ai
  %i.gb = fcmp reassoc nsz arcp contract afn ult float %i.fx, 1.000000e+00
  br i1 %i.gb, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gc = load i32, ptr %i.es, align 4, !tbaa !15
  %i.gd = add i32 %i.gc, 1
  store i32 %i.gd, ptr %i.es, align 4, !tbaa !15
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.ge = fmul reassoc nsz arcp contract afn float %i.fx, 8.192000e+03
  %i.gf = fptoui float %i.ge to i32
  %i.gg = zext i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.gg ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !15
  %i.gj = add i32 %i.gi, 1
  store i32 %i.gj, ptr %i.gh, align 4, !tbaa !15
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.aj
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %i.gk = icmp samesign ult i64 %indvars.iv.next.i.i, %i.et
  br i1 %i.gk, label %bb.y, label %_get_auto_exp_histogram.exit.i

_get_auto_exp_histogram.exit.i:                   ; preds = %bb.an, %._crit_edge.i.i.loopexit, %bb.x, %_get_selected_area.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %_get_auto_exp_histogram.exit.i
  %index = phi i64 [ 0, %_get_auto_exp_histogram.exit.i ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x float> [ zeroinitializer, %_get_auto_exp_histogram.exit.i ], [ %i.gt, %vector.body ]
  %vec.phi319 = phi <8 x float> [ zeroinitializer, %_get_auto_exp_histogram.exit.i ], [ %i.gu, %vector.body ]
  %vec.phi320 = phi <8 x float> [ zeroinitializer, %_get_auto_exp_histogram.exit.i ], [ %i.gv, %vector.body ]
  %vec.phi321 = phi <8 x float> [ zeroinitializer, %_get_auto_exp_histogram.exit.i ], [ %i.gw, %vector.body ]
  %vec.phi322 = phi <8 x float> [ zeroinitializer, %_get_auto_exp_histogram.exit.i ], [ %i.hf, %vector.body ]
  %vec.phi323 = phi <8 x float> [ zeroinitializer, %_get_auto_exp_histogram.exit.i ], [ %i.hg, %vector.body ]
  %vec.phi324 = phi <8 x float> [ zeroinitializer, %_get_auto_exp_histogram.exit.i ], [ %i.hh, %vector.body ]
  %vec.phi325 = phi <8 x float> [ zeroinitializer, %_get_auto_exp_histogram.exit.i ], [ %i.hi, %vector.body ]
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %_get_auto_exp_histogram.exit.i ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add <8 x i32> %vec.ind, splat (i32 8)
  %step.add.2 = add <8 x i32> %vec.ind, splat (i32 16)
  %step.add.3 = add <8 x i32> %vec.ind, splat (i32 24)
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %index ; 4 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 32
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 64
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 96
  %wide.load = load <8 x i32>, ptr %i.gl, align 64, !tbaa !15
  %wide.load326 = load <8 x i32>, ptr %i.gm, align 32, !tbaa !15
  %wide.load327 = load <8 x i32>, ptr %i.gn, align 64, !tbaa !15
  %wide.load328 = load <8 x i32>, ptr %i.go, align 32, !tbaa !15
  %i.gp = uitofp <8 x i32> %wide.load to <8 x float> ; 2 uses
  %i.gq = uitofp <8 x i32> %wide.load326 to <8 x float> ; 2 uses
  %i.gr = uitofp <8 x i32> %wide.load327 to <8 x float> ; 2 uses
  %i.gs = uitofp <8 x i32> %wide.load328 to <8 x float> ; 2 uses
  %i.gt = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi, %i.gp ; 2 uses
  %i.gu = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi319, %i.gq ; 2 uses
  %i.gv = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi320, %i.gr ; 2 uses
  %i.gw = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi321, %i.gs ; 2 uses
  %i.gx = uitofp nneg <8 x i32> %vec.ind to <8 x float>
  %i.gy = uitofp nneg <8 x i32> %step.add to <8 x float>
  %i.gz = uitofp nneg <8 x i32> %step.add.2 to <8 x float>
  %i.ha = uitofp nneg <8 x i32> %step.add.3 to <8 x float>
  %i.hb = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.gp, %i.gx
  %i.hc = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.gq, %i.gy
  %i.hd = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.gr, %i.gz
  %i.he = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.gs, %i.ha
  %i.hf = fadd reassoc nsz arcp contract afn <8 x float> %i.hb, %vec.phi322 ; 2 uses
  %i.hg = fadd reassoc nsz arcp contract afn <8 x float> %i.hc, %vec.phi323 ; 2 uses
  %i.hh = fadd reassoc nsz arcp contract afn <8 x float> %i.hd, %vec.phi324 ; 2 uses
  %i.hi = fadd reassoc nsz arcp contract afn <8 x float> %i.he, %vec.phi325 ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 32)
  %i.hj = icmp eq i64 %index.next, 8192
  br i1 %i.hj, label %middle.block, label %vector.body, !llvm.loop !182

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd reassoc nsz arcp contract afn <8 x float> %i.gu, %i.gt
  %bin.rdx329 = fadd reassoc nsz arcp contract afn <8 x float> %i.gv, %bin.rdx
  %bin.rdx330 = fadd reassoc nsz arcp contract afn <8 x float> %i.gw, %bin.rdx329
  %i.hk = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx330) ; 6 uses
  %bin.rdx331 = fadd reassoc nsz arcp contract afn <8 x float> %i.hg, %i.hf
  %bin.rdx332 = fadd reassoc nsz arcp contract afn <8 x float> %i.hh, %bin.rdx331
  %bin.rdx333 = fadd reassoc nsz arcp contract afn <8 x float> %i.hi, %bin.rdx332
  %i.hl = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx333)
  %i.hm = fdiv reassoc nsz arcp contract afn float %i.hl, %i.hk ; 3 uses
  %i.hn = load i32, ptr %i.cm, align 64, !tbaa !15 ; 2 uses
  %i.ho = fmul reassoc nsz arcp contract afn float %i.hk, 5.000000e-01 ; 2 uses
  %i.hp = sitofp reassoc nsz arcp contract afn i32 %i.hn to float
  %i.hq = fcmp reassoc nsz arcp contract afn ogt float %i.ho, %i.hp
  br i1 %i.hq, label %.lr.ph.i11.i, label %_auto_exposure.exit

.lr.ph.i11.i:                                     ; preds = %middle.block, %.lr.ph.i11.i
  %indvars.iv.i12.i = phi i64 [ %indvars.iv.next.i13.i, %.lr.ph.i11.i ], [ 0, %middle.block ]
  %.0245337.i.i = phi i32 [ %i.ht, %.lr.ph.i11.i ], [ %i.hn, %middle.block ]
  %indvars.iv.next.i13.i = add nuw nsw i64 %indvars.iv.i12.i, 1 ; 3 uses
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.next.i13.i
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !15
  %i.ht = add i32 %i.hs, %.0245337.i.i            ; 2 uses
  %i.hu = sitofp reassoc nsz arcp contract afn i32 %i.ht to float
  %i.hv = fcmp reassoc nsz arcp contract afn ogt float %i.ho, %i.hu
  br i1 %i.hv, label %.lr.ph.i11.i, label %._crit_edge.i14.i

._crit_edge.i14.i:                                ; preds = %.lr.ph.i11.i
  %i.hw = trunc nuw nsw i64 %indvars.iv.next.i13.i to i32
  %i.hx = fcmp reassoc nsz arcp contract afn olt float %i.hm, 1.000000e+00
  br i1 %i.hx, label %_auto_exposure.exit, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge.i14.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.hy = fptosi float %i.hm to i32               ; 3 uses
  %i.hz = call i32 @llvm.smin.i32(i32 %i.hy, i32 8192) ; 2 uses
  %i.ia = icmp sgt i32 %i.hy, 0
  %i.ib = fmul reassoc nsz arcp contract afn float %i.hk, 1.250000e-01 ; 2 uses
  %i.ic = fmul reassoc nsz arcp contract afn float %i.hk, 6.250000e-02 ; 2 uses
  br i1 %i.ia, label %.lr.ph342.i.i, label %.lr.ph349.i.i

.lr.ph342.i.i:                                    ; preds = %bb.ao
  %wide.trip.count.i.i = zext nneg i32 %i.hz to i64
  br label %bb.ap

.preheader334.i.i:                                ; preds = %._crit_edge413.i.i
  %i.id = fcmp reassoc nsz arcp contract afn oeq float %i.kn, 0.000000e+00
  %i.ie = icmp slt i32 %i.hy, 8192
  br i1 %i.ie, label %.lr.ph349.i.i, label %_auto_exposure.exit

.lr.ph349.i.i:                                    ; preds = %bb.ao, %.preheader334.i.i
  %.0242.lcssa.i21.i = phi i32 [ %i.hz, %.preheader334.i.i ], [ 0, %bb.ao ]
  %.1246.lcssa.i20.i = phi i32 [ %.2247.i.i, %.preheader334.i.i ], [ 0, %bb.ao ]
  %.0249.lcssa.i19.i = phi i1 [ %i.id, %.preheader334.i.i ], [ true, %bb.ao ]
  %i.if = zext nneg i32 %.0242.lcssa.i21.i to i64
  br label %bb.au

bb.ap:                                            ; preds = %._crit_edge413.i.i, %.lr.ph342.i.i
  %indvars.iv384.i.i = phi i64 [ 0, %.lr.ph342.i.i ], [ %indvars.iv.next385.i.i, %._crit_edge413.i.i ] ; 3 uses
  %.1246339.i.i = phi i32 [ 0, %.lr.ph342.i.i ], [ %.2247.i.i, %._crit_edge413.i.i ] ; 6 uses
  %.0249338.i.i = phi float [ 0.000000e+00, %.lr.ph342.i.i ], [ %i.kn, %._crit_edge413.i.i ]
  %i.ig = icmp slt i32 %.1246339.i.i, 8
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv384.i.i
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !15
  %i.ij = uitofp reassoc nsz arcp contract afn i32 %i.ii to float ; 2 uses
  br i1 %i.ig, label %bb.aq, label %._crit_edge413.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.ik = sext i32 %.1246339.i.i to i64
  %i.il = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ik ; 3 uses
  %i.im = load float, ptr %i.il, align 4, !tbaa !12
  %i.in = fadd reassoc nsz arcp contract afn float %i.im, %i.ij ; 3 uses
  store float %i.in, ptr %i.il, align 4, !tbaa !12
  %i.io = fcmp reassoc nsz arcp contract afn ogt float %i.in, %i.ib
  br i1 %i.io, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ip = icmp eq i32 %.1246339.i.i, 7
  br i1 %i.ip, label %bb.as, label %._crit_edge413.i.i

bb.as:                                            ; preds = %bb.ar
  %i.iq = fcmp reassoc nsz arcp contract afn ogt float %i.in, %i.ic
  br i1 %i.iq, label %bb.at, label %._crit_edge413.i.i

bb.at:                                            ; preds = %bb.as, %bb.aq
  %i.ir = trunc nuw nsw i64 %indvars.iv384.i.i to i32
  %i.is = uitofp nneg i32 %i.ir to float
  %i.it = fpext reassoc nsz arcp contract afn float %i.is to double
  %i.iu = fadd reassoc nsz arcp contract afn double %i.it, 1.000000e+00 ; 3 uses
  %i.iv = fmul reassoc nnan nsz arcp contract afn double %i.iu, 7.071000e-01 ; 2 uses
  %i.iw = fcmp reassoc nsz arcp contract afn olt double %i.iv, f0x2D30000000000000 ; 2 uses
  %i.ix = fmul reassoc nnan nsz arcp contract afn double %i.iu, f0x52A6A0902DE00D1B
  %i.iy = select reassoc nsz arcp contract afn i1 %i.iw, double %i.ix, double %i.iv
  %i.iz = bitcast double %i.iy to i64
  %i.ja = lshr i64 %i.iz, 52
  %i.jb = trunc nuw nsw i64 %i.ja to i32
  %i.jc = and i32 %i.jb, 2047
  %.v.i.i.i.i = select i1 %i.iw, i32 -1322, i32 -1022
  %i.jd = add nsw i32 %i.jc, %.v.i.i.i.i          ; 4 uses
  %i.je = icmp sgt i32 %i.jd, 0
  %.lobit.i.i.i.i = sext i1 %i.je to i32          ; 2 uses
  %i.jf = sub nsw i32 %.lobit.i.i.i.i, %i.jd
  %i.jg = ashr i32 %i.jf, 9
  %i.jh = sub nsw i32 %i.jg, %.lobit.i.i.i.i      ; 2 uses
  %i.ji = shl nsw i32 %i.jh, 7
  %i.jj = add nsw i32 %i.ji, 1023
  %i.jk = zext nneg i32 %i.jj to i64
  %i.jl = shl nuw nsw i64 %i.jk, 52
  %i.jm = bitcast i64 %i.jl to double             ; 2 uses
  %i.jn = fmul reassoc nsz arcp contract afn double %i.jm, %i.jm ; 2 uses
  %.neg24.i.i.i = mul nsw i32 %i.jh, 3584
  %reass.sub = sub nsw i32 %.neg24.i.i.i, %i.jd
  %i.jo = add nsw i32 %reass.sub, 1023
  %i.jp = zext i32 %i.jo to i64
  %i.jq = shl i64 %i.jp, 52
  %i.jr = bitcast i64 %i.jq to double
  %i.js = fmul reassoc nsz arcp contract afn double %i.iu, %i.jr
  %i.jt = fmul reassoc nsz arcp contract afn double %i.jn, %i.jn
  %i.ju = fmul reassoc nsz arcp contract afn double %i.jt, %i.js ; 2 uses
  %i.jv = fadd reassoc nsz arcp contract afn double %i.ju, -1.000000e+00
  %i.jw = fadd reassoc nsz arcp contract afn double %i.ju, 1.000000e+00
  %i.jx = fdiv reassoc nsz arcp contract afn double %i.jv, %i.jw ; 3 uses
  %i.jy = fmul reassoc nsz arcp contract afn double %i.jx, %i.jx ; 7 uses
  %i.jz = call reassoc nsz arcp contract afn double @llvm.fma.f64(double %i.jy, double f0x3FC2F81F00AD268B, double f0x3FC3990C7CAC8986)
  %i.ka = call reassoc nsz arcp contract afn double @llvm.fma.f64(double %i.jz, double %i.jy, double f0x3FC746722937E5EC)
  %i.kb = call reassoc nsz arcp contract afn double @llvm.fma.f64(double %i.ka, double %i.jy, double f0x3FCC71C4C1A82632)
  %i.kc = call reassoc nsz arcp contract afn double @llvm.fma.f64(double %i.kb, double %i.jy, double f0x3FD2492494C5B7F2)
  %i.kd = call reassoc nsz arcp contract afn double @llvm.fma.f64(double %i.kc, double %i.jy, double f0x3FD999999996D5D4)
  %i.ke = call reassoc nsz arcp contract afn double @llvm.fma.f64(double %i.kd, double %i.jy, double f0x3FE55555555555FF)
  %i.kf = call reassoc nsz arcp contract afn double @llvm.fma.f64(double %i.ke, double %i.jy, double 2.000000e+00)
  %i.kg = fmul reassoc nsz arcp contract afn double %i.kf, %i.jx
  %i.kh = sitofp reassoc nsz arcp contract afn i32 %i.jd to double
  %i.ki = fmul reassoc nnan nsz arcp contract afn double %i.kh, f0x3FE62E42FEFA39EF
  %i.kj = fadd reassoc nsz arcp contract afn double %i.kg, %i.ki
  %i.kk = fmul reassoc nsz arcp contract afn double %i.kj, f0x3FF71547652B82FE
  %i.kl = fptrunc reassoc nsz arcp contract afn double %i.kk to float
  store float %i.kl, ptr %i.il, align 4, !tbaa !12
  %i.km = add nsw i32 %.1246339.i.i, 1
  br label %._crit_edge413.i.i

._crit_edge413.i.i:                               ; preds = %bb.at, %bb.as, %bb.ar, %bb.ap
  %.2247.i.i = phi i32 [ %i.km, %bb.at ], [ %.1246339.i.i, %bb.ar ], [ 7, %bb.as ], [ %.1246339.i.i, %bb.ap ] ; 2 uses
  %i.kn = fadd reassoc nsz arcp contract afn float %.0249338.i.i, %i.ij ; 2 uses
  %indvars.iv.next385.i.i = add nuw nsw i64 %indvars.iv384.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next385.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.preheader334.i.i, label %bb.ap

bb.au:                                            ; preds = %._crit_edge414.i.i, %.lr.ph349.i.i
  %indvars.iv387.i.i = phi i64 [ %i.if, %.lr.ph349.i.i ], [ %indvars.iv.next388.i.i, %._crit_edge414.i.i ] ; 3 uses
  %.3347.i.i = phi i32 [ %.1246.lcssa.i20.i, %.lr.ph349.i.i ], [ %.4.i.i, %._crit_edge414.i.i ] ; 6 uses
  %.0250346.i.i = phi float [ 0.000000e+00, %.lr.ph349.i.i ], [ %i.mv, %._crit_edge414.i.i ]
  %i.ko = icmp slt i32 %.3347.i.i, 8
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv387.i.i
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !15
  %i.kr = uitofp reassoc nsz arcp contract afn i32 %i.kq to float ; 2 uses
  br i1 %i.ko, label %bb.av, label %._crit_edge414.i.i

bb.av:                                            ; preds = %bb.au
  %i.ks = sext i32 %.3347.i.i to i64
  %i.kt = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ks ; 3 uses
  %i.ku = load float, ptr %i.kt, align 4, !tbaa !12
  %i.kv = fadd reassoc nsz arcp contract afn float %i.ku, %i.kr ; 3 uses
  store float %i.kv, ptr %i.kt, align 4, !tbaa !12
  %i.kw = fcmp reassoc nsz arcp contract afn ogt float %i.kv, %i.ib
  br i1 %i.kw, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.kx = icmp eq i32 %.3347.i.i, 7
  br i1 %i.kx, label %bb.ax, label %._crit_edge414.i.i

bb.ax:                                            ; preds = %bb.aw
  %i.ky = fcmp reassoc nsz arcp contract afn ogt float %i.kv, %i.ic
  br i1 %i.ky, label %bb.ay, label %._crit_edge414.i.i

bb.ay:                                            ; preds = %bb.ax, %bb.av
  %i.kz = trunc nuw nsw i64 %indvars.iv387.i.i to i32
  %i.la = uitofp nneg i32 %i.kz to float
  %i.lb = fadd reassoc nsz arcp contract afn float %i.la, 1.000000e+00
  %i.lc = fpext reassoc nsz arcp contract afn float %i.lb to double ; 3 uses
  %i.ld = fmul reassoc nnan nsz arcp contract afn double %i.lc, 7.071000e-01 ; 2 uses
  %i.le = fcmp reassoc nsz arcp contract afn olt double %i.ld, f0x2D30000000000000 ; 2 uses
  %i.lf = fmul reassoc nnan nsz arcp contract afn double %i.lc, f0x52A6A0902DE00D1B
  %i.lg = select reassoc nsz arcp contract afn i1 %i.le, double %i.lf, double %i.ld
  %i.lh = bitcast double %i.lg to i64
  %i.li = lshr i64 %i.lh, 52
  %i.lj = trunc nuw nsw i64 %i.li to i32
  %i.lk = and i32 %i.lj, 2047
  %.v.i.i271.i.i = select i1 %i.le, i32 -1322, i32 -1022
  %i.ll = add nsw i32 %i.lk, %.v.i.i271.i.i       ; 4 uses
  %i.lm = icmp sgt i32 %i.ll, 0
  %.lobit.i.i272.i.i = sext i1 %i.lm to i32       ; 2 uses
  %i.ln = sub nsw i32 %.lobit.i.i272.i.i, %i.ll
  %i.lo = ashr i32 %i.ln, 9
  %i.lp = sub nsw i32 %i.lo, %.lobit.i.i272.i.i   ; 2 uses
  %i.lq = shl nsw i32 %i.lp, 7
  %i.lr = add nsw i32 %i.lq, 1023
  %i.ls = zext nneg i32 %i.lr to i64
  %i.lt = shl nuw nsw i64 %i.ls, 52
  %i.lu = bitcast i64 %i.lt to double             ; 2 uses
  %i.lv = fmul reassoc nsz arcp contract afn double %i.lu, %i.lu ; 2 uses
  %.neg24.i273.i.i = mul nsw i32 %i.lp, 3584
  %reass.sub241 = sub nsw i32 %.neg24.i273.i.i, %i.ll
  %i.lw = add nsw i32 %reass.sub241, 1023
  %i.lx = zext i32 %i.lw to i64
  %i.ly = shl i64 %i.lx, 52
  %i.lz = bitcast i64 %i.ly to double
  %i.ma = fmul reassoc nsz arcp contract afn double %i.lz, %i.lc
  %i.mb = fmul reassoc nsz arcp contract afn double %i.lv, %i.lv
  %i.mc = fmul reassoc nsz arcp contract afn double %i.mb, %i.ma ; 2 uses
  %i.md = fadd reassoc nsz arcp contract afn double %i.mc, -1.000000e+00
  %i.me = fadd reassoc nsz arcp contract afn double %i.mc, 1.000000e+00
  %i.mf = fdiv reassoc nsz arcp contract afn double %i.md, %i.me ; 3 uses
  %i.mg = fmul reassoc nsz arcp contract afn double %i.mf, %i.mf ; 7 uses
  %i.mh = call reassoc nsz arcp contract afn double @llvm.fma.f64(double %i.mg, double f0x3FC2F81F00AD268B, double f0x3FC3990C7CAC8986)
  %i.mi = call reassoc nsz arcp contract afn double @llvm.fma.f64(double %i.mh, double %i.mg, double f0x3FC746722937E5EC)
  %i.mj = call reassoc nsz arcp contract afn double @llvm.fma.f64(double %i.mi, double %i.mg, double f0x3FCC71C4C1A82632)
  %i.mk = call reassoc nsz arcp contract afn double @llvm.fma.f64(double %i.mj, double %i.mg, double f0x3FD2492494C5B7F2)
  %i.ml = call reassoc nsz arcp contract afn double @llvm.fma.f64(double %i.mk, double %i.mg, double f0x3FD999999996D5D4)
  %i.mm = call reassoc nsz arcp contract afn double @llvm.fma.f64(double %i.ml, double %i.mg, double f0x3FE55555555555FF)
  %i.mn = call reassoc nsz arcp contract afn double @llvm.fma.f64(double %i.mm, double %i.mg, double 2.000000e+00)
  %i.mo = fmul reassoc nsz arcp contract afn double %i.mn, %i.mf
  %i.mp = sitofp reassoc nsz arcp contract afn i32 %i.ll to double
  %i.mq = fmul reassoc nnan nsz arcp contract afn double %i.mp, f0x3FE62E42FEFA39EF
  %i.mr = fadd reassoc nsz arcp contract afn double %i.mo, %i.mq
  %i.ms = fmul reassoc nsz arcp contract afn double %i.mr, f0x3FF71547652B82FE
  %i.mt = fptrunc reassoc nsz arcp contract afn double %i.ms to float
  store float %i.mt, ptr %i.kt, align 4, !tbaa !12
  %i.mu = add nsw i32 %.3347.i.i, 1
  br label %._crit_edge414.i.i

._crit_edge414.i.i:                               ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.au
  %.4.i.i = phi i32 [ %i.mu, %bb.ay ], [ %.3347.i.i, %bb.aw ], [ 7, %bb.ax ], [ %.3347.i.i, %bb.au ]
  %i.mv = fadd reassoc nsz arcp contract afn float %.0250346.i.i, %i.kr ; 2 uses
  %indvars.iv.next388.i.i = add nuw nsw i64 %indvars.iv387.i.i, 1 ; 2 uses
  %exitcond391.not.i.i = icmp eq i64 %indvars.iv.next388.i.i, 8192
  br i1 %exitcond391.not.i.i, label %._crit_edge350.i.i, label %bb.au

._crit_edge350.i.i:                               ; preds = %._crit_edge414.i.i
  %i.mw = fcmp reassoc nsz arcp contract afn oeq float %i.mv, 0.000000e+00
  %or.cond3.i.i = select i1 %.0249.lcssa.i19.i, i1 true, i1 %i.mw
  br i1 %or.cond3.i.i, label %_auto_exposure.exit, label %bb.az

bb.az:                                            ; preds = %._crit_edge350.i.i
  %i.mx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.my = load float, ptr %i.mx, align 8, !tbaa !12 ; 2 uses
  %i.mz = fcmp reassoc nsz arcp contract afn ule float %i.my, f0x41102D33 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %.pre.i = load float, ptr %.phi.trans.insert.i, align 4 ; 4 uses
  br i1 %i.mz, label %..preheader.i_crit_edge.i, label %bb.ba

..preheader.i_crit_edge.i:                        ; preds = %bb.az
  %.phi.trans.insert47.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.pre48.i = load float, ptr %.phi.trans.insert47.i, align 16, !tbaa !12
  br label %.preheader.i.i

bb.ba:                                            ; preds = %bb.az
  %i.na = fmul reassoc nsz arcp contract afn float %.pre.i, 1.500000e+00
  %i.nb = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.nc = load float, ptr %i.nb, align 16, !tbaa !12 ; 2 uses
  %i.nd = fmul reassoc nsz arcp contract afn float %i.nc, 5.000000e-01
  %i.ne = fsub reassoc nsz arcp contract afn float %i.na, %i.nd
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.ba, %..preheader.i_crit_edge.i
  %i.nf = phi float [ %i.nc, %bb.ba ], [ %.pre48.i, %..preheader.i_crit_edge.i ] ; 2 uses
  %i.ng = phi float [ %i.ne, %bb.ba ], [ %i.my, %..preheader.i_crit_edge.i ] ; 4 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.ni = load float, ptr %i.nh, align 4, !tbaa !12 ; 3 uses
  %i.nj = fcmp reassoc nsz arcp contract afn ule float %i.ni, f0x41102D33 ; 2 uses
  %i.nk = fmul reassoc nsz arcp contract afn float %i.ng, 1.500000e+00
  %i.nl = fmul reassoc nsz arcp contract afn float %.pre.i, 5.000000e-01
  %i.nm = fsub reassoc nsz arcp contract afn float %i.nk, %i.nl
  %i.nn = select i1 %i.nj, float %i.ni, float %i.nm ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.np = load float, ptr %i.no, align 4, !tbaa !12 ; 2 uses
  %i.nq = fcmp reassoc nsz arcp contract afn oeq float %i.np, 0.000000e+00
  %i.nr = load float, ptr %i.a, align 16
  %i.ns = select i1 %i.nq, float %i.nr, float %i.np ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.nu = load float, ptr %i.nt, align 8, !tbaa !12 ; 2 uses
  %i.nv = fcmp reassoc nsz arcp contract afn oeq float %i.nu, 0.000000e+00
  %i.nw = select i1 %i.nv, float %i.ns, float %i.nu ; 3 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.ny = load float, ptr %i.nx, align 4, !tbaa !12 ; 2 uses
  %i.nz = fcmp reassoc nsz arcp contract afn oeq float %i.ny, 0.000000e+00
  %i.oa = select i1 %i.nz, float %i.nw, float %i.ny ; 4 uses
  %i.ob = fcmp reassoc nsz arcp contract afn oeq float %i.nf, 0.000000e+00
  %i.oc = select i1 %i.ob, float %i.oa, float %i.nf ; 3 uses
  %i.od = fcmp reassoc nsz arcp contract afn oeq float %.pre.i, 0.000000e+00
  %i.oe = select i1 %i.od, float %i.oc, float %.pre.i ; 3 uses
  %i.of = fcmp reassoc nsz arcp contract afn oeq float %i.ng, 0.000000e+00
  %i.og = select i1 %i.of, float %i.oe, float %i.ng ; 4 uses
  %i.oh = fcmp reassoc nsz arcp contract afn oeq float %i.nn, 0.000000e+00
  %i.oi = select i1 %i.oh, float %i.og, float %i.nn
  %i.oj = insertelement <4 x float> poison, float %i.oa, i64 0
  %i.ok = insertelement <4 x float> %i.oj, float %i.nw, i64 1
  %i.ol = insertelement <4 x float> %i.ok, float %i.oc, i64 2
  %i.om = insertelement <4 x float> %i.ol, float %i.oe, i64 3 ; 2 uses
  %i.on = insertelement <4 x float> poison, float %i.nw, i64 0
  %i.oo = insertelement <4 x float> %i.on, float %i.ns, i64 1
  %i.op = insertelement <4 x float> %i.oo, float %i.oa, i64 2 ; 2 uses
  %i.oq = insertelement <4 x float> %i.op, float %i.oc, i64 3
  %i.or = fsub reassoc nsz arcp contract afn <4 x float> %i.om, %i.oq
  %i.os = shufflevector <4 x float> %i.om, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.ot = shufflevector <4 x float> %i.op, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.ou = fsub reassoc nsz arcp contract afn <4 x float> %i.os, %i.ot ; 2 uses
  %i.ov = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.ou, splat (float 5.000000e-01)
  %i.ow = select <4 x i1> %i.ov, <4 x float> splat (float 5.000000e-01), <4 x float> %i.ou
  %i.ox = fdiv reassoc nsz arcp contract afn <4 x float> %i.or, %i.ow
  %i.oy = fsub reassoc nsz arcp contract afn float %i.og, %i.oe
  %i.oz = fsub reassoc nsz arcp contract afn float %i.og, %i.oa ; 2 uses
  %i.pa = fcmp reassoc nsz arcp contract afn olt float %i.oz, 5.000000e-01
  %i.pb = select reassoc nsz arcp contract afn i1 %i.pa, float 5.000000e-01, float %i.oz
  %i.pc = fdiv reassoc nsz arcp contract afn float %i.oy, %i.pb
  %op.rdx = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float %i.pc, <4 x float> %i.ox)
  %i.pd = fmul reassoc nsz arcp contract afn float %op.rdx, 2.000000e-01 ; 2 uses
  %i.pe = fcmp reassoc nsz arcp contract afn ugt float %i.pd, 0.000000e+00
  br i1 %i.pe, label %.preheader.i, label %_auto_exposure.exit

.preheader.i:                                     ; preds = %.preheader.i.i, %.preheader.i
  %indvars.iv400.in.i.i = phi i64 [ %indvars.iv400.i.i, %.preheader.i ], [ 8192, %.preheader.i.i ] ; 2 uses
  %indvars.iv400.i.i = add nsw i64 %indvars.iv400.in.i.i, -1 ; 3 uses
  %i.pf = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %indvars.iv400.i.i
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !15
  %i.ph = icmp eq i32 %i.pg, 0
  %i.pi = icmp samesign ugt i64 %indvars.iv400.in.i.i, 2
  %i.pj = and i1 %i.pi, %i.ph
  br i1 %i.pj, label %.preheader.i, label %bb.bb

bb.bb:                                            ; preds = %.preheader.i
  %i.pk = trunc nsw i64 %indvars.iv400.i.i to i32
  %i.pl = fmul reassoc nsz arcp contract afn float %i.hk, %i.cd
  %i.pm = fptosi float %i.pl to i32               ; 10 uses
  br label %.lr.ph358.i.i

.lr.ph358.i.i:                                    ; preds = %bb.bc, %bb.bb
  %indvars.iv.i = phi i64 [ 8191, %bb.bb ], [ %indvars.iv.next.i.8, %bb.bc ] ; 12 uses
  %.1236355.i.i = phi i32 [ 0, %bb.bb ], [ %i.qn, %bb.bc ]
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.i
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !15
  %i.pp = add i32 %i.po, %.1236355.i.i            ; 2 uses
  %.not.i.i = icmp ugt i32 %i.pp, %i.pm
  br i1 %.not.i.i, label %.lr.ph364.preheader.i.i, label %.lr.ph358.i.i.1

.lr.ph358.i.i.1:                                  ; preds = %.lr.ph358.i.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.next.i
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !15
  %i.ps = add i32 %i.pr, %i.pp                    ; 2 uses
  %.not.i.i.1 = icmp ugt i32 %i.ps, %i.pm
  br i1 %.not.i.i.1, label %.lr.ph364.preheader.i.i, label %.lr.ph358.i.i.2

.lr.ph358.i.i.2:                                  ; preds = %.lr.ph358.i.i.1
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 2 uses
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.next.i.1
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !15
  %i.pv = add i32 %i.pu, %i.ps                    ; 2 uses
  %.not.i.i.2 = icmp ugt i32 %i.pv, %i.pm
  br i1 %.not.i.i.2, label %.lr.ph364.preheader.i.i, label %.lr.ph358.i.i.3

.lr.ph358.i.i.3:                                  ; preds = %.lr.ph358.i.i.2
  %indvars.iv.next.i.2 = add nsw i64 %indvars.iv.i, -3 ; 2 uses
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.next.i.2
  %i.px = load i32, ptr %i.pw, align 4, !tbaa !15
  %i.py = add i32 %i.px, %i.pv                    ; 2 uses
  %.not.i.i.3 = icmp ugt i32 %i.py, %i.pm
  br i1 %.not.i.i.3, label %.lr.ph364.preheader.i.i, label %.lr.ph358.i.i.4

.lr.ph358.i.i.4:                                  ; preds = %.lr.ph358.i.i.3
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, -4 ; 2 uses
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.next.i.3
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !15
  %i.qb = add i32 %i.qa, %i.py                    ; 2 uses
  %.not.i.i.4 = icmp ugt i32 %i.qb, %i.pm
  br i1 %.not.i.i.4, label %.lr.ph364.preheader.i.i, label %.lr.ph358.i.i.5

.lr.ph358.i.i.5:                                  ; preds = %.lr.ph358.i.i.4
end_hunk_0
begin_hunk_1_@process:bb.a
  %.2304312325.i.i = phi float [ %.2.i.i, %bb.ca ], [ %.2.i.i, %bb.cb ], [ 0.000000e+00, %.preheader.i.i ], [ 0.000000e+00, %._crit_edge350.i.i ], [ 0.000000e+00, %._crit_edge.i14.i ], [ 0.000000e+00, %middle.block ], [ 0.000000e+00, %.preheader334.i.i ]
  %.0227290303313324.i.i = phi float [ %i.ss, %bb.ca ], [ %i.ss, %bb.cb ], [ 0.000000e+00, %.preheader.i.i ], [ 0.000000e+00, %._crit_edge350.i.i ], [ 0.000000e+00, %._crit_edge.i14.i ], [ 0.000000e+00, %middle.block ], [ 0.000000e+00, %.preheader334.i.i ]
  %.1221315323.i.i = phi float [ %.1221.i.i, %bb.ca ], [ %.1221.i.i, %bb.cb ], [ 0.000000e+00, %.preheader.i.i ], [ 0.000000e+00, %._crit_edge350.i.i ], [ 0.000000e+00, %._crit_edge.i14.i ], [ 0.000000e+00, %middle.block ], [ 0.000000e+00, %.preheader334.i.i ]
  %.1226.i.i = phi nsz float [ %i.wn, %bb.ca ], [ 0.000000e+00, %bb.cb ], [ 0.000000e+00, %.preheader.i.i ], [ 0.000000e+00, %._crit_edge350.i.i ], [ 0.000000e+00, %._crit_edge.i14.i ], [ 0.000000e+00, %middle.block ], [ 0.000000e+00, %.preheader334.i.i ]
  store float %.2304312325.i.i, ptr %i.ch, align 4, !tbaa !12
  store float %.1221315323.i.i, ptr %i.m, align 8, !tbaa !12
  store float %.2224326.i.i, ptr %i.ci, align 4, !tbaa !12
  store float %.1226.i.i, ptr %i.cj, align 8, !tbaa !12
  store float %.0227290303313324.i.i, ptr %i.ck, align 8, !tbaa !12
  store float 0.000000e+00, ptr %i.cl, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @free(ptr noundef nonnull %i.cm) #23
  %i.ws = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.r) #23 ; 0 uses
  store i32 2, ptr %i.t, align 4, !tbaa !110
  %i.wt = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.r) #23 ; 0 uses
  br label %bb.cd

bb.cc:                                            ; preds = %bb.d, %bb.c
  %i.wu = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.r) #23 ; 0 uses
  br label %bb.cd

bb.cd:                                            ; preds = %_auto_exposure.exit, %bb.cc, %bb.b, %bb.a
  %i.wv = load float, ptr %i.k, align 4, !tbaa !202 ; 4 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.wx = load float, ptr %i.ww, align 4, !tbaa !203 ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.wz = load float, ptr %i.wy, align 4, !tbaa !204
  %i.xa = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.xb = load float, ptr %i.xa, align 4, !tbaa !205 ; 2 uses
  %i.xc = fadd reassoc nsz arcp contract afn float %i.xb, 1.000000e+00
  %i.xd = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  %i.xe = load float, ptr %i.xd, align 4, !tbaa !206 ; 2 uses
  %i.xf = fmul reassoc nsz arcp contract afn float %i.xe, f0x3F36DB6E ; 2 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.xh = load float, ptr %i.xg, align 4, !tbaa !130 ; 2 uses
  %i.xi = fadd reassoc nsz arcp contract afn float %i.xh, 1.000000e+00 ; 4 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.xk = load float, ptr %i.xj, align 4, !tbaa !120 ; 2 uses
  %i.xl = fcmp reassoc nsz arcp contract afn ogt float %i.xk, 0.000000e+00
  %i.xm = fmul reassoc nnan nsz arcp contract afn float %i.xk, f0x3C23D70A
  %spec.select = select reassoc nsz arcp contract afn i1 %i.xl, float %i.xm, float 1.842000e-01 ; 5 uses
  %i.xn = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %spec.select ; 4 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %i.k, i64 28
  %i.xp = load float, ptr %i.xo, align 4, !tbaa !129 ; 2 uses
  %i.xq = fmul reassoc nsz arcp contract afn float %i.xp, 2.000000e+00 ; 3 uses
  %i.xr = fcmp reassoc nsz arcp contract afn ult float %i.xq, 0.000000e+00
  %i.xs = fadd reassoc nsz arcp contract afn float %i.xq, 1.000000e+00
  %i.xt = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.xs
  %i.xu = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.xq
  %i.xv = select reassoc nsz arcp contract afn i1 %i.xr, float %i.xu, float %i.xt ; 3 uses
  %i.xw = fmul reassoc nsz arcp contract afn float %i.wx, f0x3C23D70A ; 2 uses
  %i.xx = fmul reassoc nsz arcp contract afn float %i.wz, 1.250000e-03 ; 2 uses
  %i.xy = fsub reassoc nsz arcp contract afn float f0x3F666666, %i.xx ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.ya = load i32, ptr %i.xz, align 4, !tbaa !131 ; 2 uses
  %.not211 = icmp eq i32 %i.ya, 0
  %i.yb = fcmp reassoc nsz arcp contract afn une float %i.xh, 0.000000e+00 ; 2 uses
  %spec.select222 = select i1 %.not211, i1 %i.yb, i1 false ; 3 uses
  %i.yc = select i1 %i.yb, i32 %i.ya, i32 0
  %i.yd = fcmp reassoc nsz arcp contract afn une float %i.xp, 0.000000e+00 ; 3 uses
  %i.ye = fcmp reassoc nsz arcp contract afn une float %i.xb, 0.000000e+00
  %i.yf = fcmp reassoc nsz arcp contract afn une float %i.xe, 0.000000e+00
  %i.yg = select i1 %i.ye, i1 true, i1 %i.yf
  %i.yh = fcmp reassoc nsz arcp contract afn ogt float %i.wx, 0.000000e+00
  %i.yi = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.yj = load i32, ptr %i.yi, align 4, !tbaa !194
  %i.yk = sext i32 %i.yj to i64
  %i.yl = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ym = load i32, ptr %i.yl, align 4, !tbaa !193
  %i.yn = sext i32 %i.ym to i64
  %i.yo = sext i32 %i.i to i64                    ; 2 uses
  %i.yp = mul nsw i64 %i.yk, %i.yo
  %i.yq = mul i64 %i.yp, %i.yn                    ; 2 uses
  %.not242 = icmp eq i64 %i.yq, 0
  br i1 %.not242, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.cd
  %i.yr = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.ys = load float, ptr %i.yr, align 4, !tbaa !207
  %i.yt = fneg reassoc nsz arcp contract afn float %i.ys
  %i.yu = call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.yt)
  %i.yv = fsub reassoc nsz arcp contract afn float %i.yu, %i.wv ; 3 uses
  %.not212 = icmp eq ptr %i.g, null               ; 2 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %i.g, i64 576 ; 2 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %i.g, i64 712 ; 2 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %i.g, i64 768 ; 2 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %i.g, i64 704 ; 2 uses
  %i.za = getelementptr inbounds nuw i8, ptr %i.g, i64 852 ; 2 uses
  %i.zb = fcmp reassoc nsz arcp contract afn ogt float %i.xw, 0.000000e+00
  %i.zc = fsub reassoc nsz arcp contract afn float f0xBDCCCCD0, %i.xx
  %i.zd = getelementptr inbounds nuw i8, ptr %i.k, i64 44 ; 3 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %i.k, i64 262188 ; 3 uses
  %i.zf = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.xf)
  %i.zg = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.yv ; 2 uses
  %invariant.op = fmul reassoc nsz arcp contract afn float %i.zg, f0x3E63D838
  %i.zh = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.yv
  %i.zi = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.yv
  %i.zj = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.xy
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit
  %.0200240 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.aik, %.loopexit ] ; 6 uses
  %i.zk = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.0200240
  %i.zl = load float, ptr %i.zk, align 4, !tbaa !12
  %i.zm = fsub reassoc nsz arcp contract afn float %i.zl, %i.wv ; 2 uses
  %i.zn = fmul reassoc nsz arcp contract afn float %i.zm, %i.zg
  %i.zo = getelementptr [4 x i8], ptr %3, i64 %.0200240 ; 40 uses
  store float %i.zn, ptr %i.zo, align 4, !tbaa !12
  %i.zp = add nuw i64 %.0200240, 1                ; 2 uses
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.zp
  %i.zr = load float, ptr %i.zq, align 4, !tbaa !12
  %i.zs = fsub reassoc nsz arcp contract afn float %i.zr, %i.wv
  %i.zt = fmul reassoc nsz arcp contract afn float %i.zs, %i.zh
  %i.zu = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.zp
  store float %i.zt, ptr %i.zu, align 4, !tbaa !12
  %i.zv = add i64 %.0200240, 2                    ; 2 uses
  %i.zw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.zv
  %i.zx = load float, ptr %i.zw, align 4, !tbaa !12
  %i.zy = fsub reassoc nsz arcp contract afn float %i.zx, %i.wv
  %i.zz = fmul reassoc nsz arcp contract afn float %i.zy, %i.zi
  %i.aaa = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.zv
  store float %i.zz, ptr %i.aaa, align 4, !tbaa !12
  br i1 %i.yh, label %bb.ce, label %.loopexit226

._crit_edge:                                      ; preds = %.loopexit, %bb.cd
  ret void

bb.ce:                                            ; preds = %.preheader
  br i1 %.not212, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.aab = load i32, ptr %i.yz, align 64, !tbaa !118
  %i.aac = load i32, ptr %i.za, align 4, !tbaa !119
  %i.aad = call reassoc nsz arcp contract afn fastcc float @dt_ioppr_get_rgb_matrix_luminance(ptr noundef %i.zo, ptr noundef %i.yw, ptr noundef %i.yx, ptr noundef %i.yy, i32 noundef %i.aab, i32 noundef %i.aac)
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  %.reass310 = fmul reassoc nsz arcp contract afn float %i.zm, %invariant.op
  %i.aae = getelementptr inbounds nuw i8, ptr %i.zo, i64 4
  %i.aaf = load <2 x float>, ptr %i.aae, align 4, !tbaa !12
  %i.aag = fmul reassoc nsz arcp contract afn <2 x float> %i.aaf, <float f0x3F37855B, float 6.061690e-02> ; 2 uses
  %i.aah = extractelement <2 x float> %i.aag, i64 0
  %i.aai = fadd reassoc nsz arcp contract afn float %i.aah, %.reass310
  %i.aaj = extractelement <2 x float> %i.aag, i64 1
  %i.aak = fadd reassoc nsz arcp contract afn float %i.aai, %i.aaj
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.aal = phi reassoc nsz arcp contract afn float [ %i.aad, %bb.cf ], [ %i.aak, %bb.cg ] ; 2 uses
  %i.aam = fcmp reassoc nsz arcp contract afn ogt float %i.aal, 0.000000e+00
  br i1 %i.aam, label %bb.ci, label %.loopexit226

bb.ci:                                            ; preds = %bb.ch
  br i1 %i.zb, label %bb.cj, label %hlcurve.exit

bb.cj:                                            ; preds = %bb.ci
  %i.aan = fadd reassoc nsz arcp contract afn float %i.zc, %i.aal ; 2 uses
  %i.aao = fcmp reassoc nsz arcp contract afn oeq float %i.aan, 0.000000e+00
  %spec.store.select.i = select i1 %i.aao, float f0x358637BD, float %i.aan
  %i.aap = fmul reassoc nsz arcp contract afn float %spec.store.select.i, %i.xw ; 2 uses
  %i.aaq = fmul reassoc nsz arcp contract afn float %i.aap, %i.zj ; 2 uses
  %i.aar = fcmp reassoc nsz arcp contract afn ole float %i.aaq, -1.000000e+00
  %spec.store.select1.i = select i1 %i.aar, float f0xBF7FFFEF, float %i.aaq
  %i.aas = call reassoc nsz arcp contract afn float @log1pf(float noundef %spec.store.select1.i) #24
  %i.aat = fmul reassoc nsz arcp contract afn float %i.aas, %i.xy
  %i.aau = fdiv reassoc nsz arcp contract afn float %i.aat, %i.aap
  br label %hlcurve.exit

hlcurve.exit:                                     ; preds = %bb.ci, %bb.cj
  %.0.i = phi nsz float [ %i.aau, %bb.cj ], [ 1.000000e+00, %bb.ci ] ; 2 uses
  %i.aav = load <2 x float>, ptr %i.zo, align 4, !tbaa !12
  %i.aaw = insertelement <2 x float> poison, float %.0.i, i64 0
  %i.aax = shufflevector <2 x float> %i.aaw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aay = fmul reassoc nsz arcp contract afn <2 x float> %i.aav, %i.aax
  store <2 x float> %i.aay, ptr %i.zo, align 4, !tbaa !12
  %i.aaz = getelementptr i8, ptr %i.zo, i64 8     ; 2 uses
  %i.aba = load float, ptr %i.aaz, align 4, !tbaa !12
  %i.abb = fmul reassoc nsz arcp contract afn float %i.aba, %.0.i
  store float %i.abb, ptr %i.aaz, align 4, !tbaa !12
  br label %.loopexit226

.loopexit226:                                     ; preds = %hlcurve.exit, %bb.ch, %.preheader
  br i1 %i.yd, label %bb.ck, label %bb.co

bb.ck:                                            ; preds = %.loopexit226
  %i.abc = load float, ptr %i.zo, align 4, !tbaa !12 ; 4 uses
  %i.abd = fcmp reassoc nsz arcp contract afn ogt float %i.abc, 0.000000e+00
  br i1 %i.abd, label %bb.cl, label %bb.co

bb.cl:                                            ; preds = %bb.ck
  %i.abe = fcmp reassoc nsz arcp contract afn ogt float %i.abc, 1.000000e+00
  br i1 %i.abe, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.abf = call reassoc nsz arcp contract afn noundef float @llvm.pow.f32(float %i.abc, float %i.xv)
  br label %get_lut_gamma.exit

bb.cn:                                            ; preds = %bb.cl
  %i.abg = fmul reassoc nnan nsz arcp contract afn float %i.abc, 6.553600e+04
  %i.abh = fptosi float %i.abg to i32
  %6 = call i32 @llvm.smax.i32(i32 %i.abh, i32 0)
  %i.abi = call i32 @llvm.umin.i32(i32 %6, i32 65535)
  %i.abj = zext nneg i32 %i.abi to i64
  %i.abk = getelementptr inbounds nuw [4 x i8], ptr %i.zd, i64 %i.abj
  %i.abl = load float, ptr %i.abk, align 4, !tbaa !12
  br label %get_lut_gamma.exit

get_lut_gamma.exit:                               ; preds = %bb.cm, %bb.cn
  %i.abm = phi reassoc nsz arcp contract afn float [ %i.abf, %bb.cm ], [ %i.abl, %bb.cn ]
  store float %i.abm, ptr %i.zo, align 4, !tbaa !12
  br label %bb.co

bb.co:                                            ; preds = %get_lut_gamma.exit, %bb.ck, %.loopexit226
  br i1 %spec.select222, label %bb.cp, label %bb.ct

bb.cp:                                            ; preds = %bb.co
  %i.abn = load float, ptr %i.zo, align 4, !tbaa !12 ; 4 uses
  %i.abo = fcmp reassoc nsz arcp contract afn ogt float %i.abn, 0.000000e+00
  br i1 %i.abo, label %bb.cq, label %bb.ct

bb.cq:                                            ; preds = %bb.cp
  %i.abp = fcmp reassoc nsz arcp contract afn ogt float %i.abn, 1.000000e+00
  br i1 %i.abp, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.abq = fmul reassoc nsz arcp contract afn float %i.abn, %i.xn
  %i.abr = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.abq, float %i.xi)
  %i.abs = fmul reassoc nsz arcp contract afn float %i.abr, %spec.select
  br label %get_lut_contrast.exit

bb.cs:                                            ; preds = %bb.cq
  %i.abt = fmul reassoc nnan nsz arcp contract afn float %i.abn, 6.553600e+04
  %i.abu = fptosi float %i.abt to i32
  %7 = call i32 @llvm.smax.i32(i32 %i.abu, i32 0)
  %i.abv = call i32 @llvm.umin.i32(i32 %7, i32 65535)
  %i.abw = zext nneg i32 %i.abv to i64
  %i.abx = getelementptr inbounds nuw [4 x i8], ptr %i.ze, i64 %i.abw
  %i.aby = load float, ptr %i.abx, align 4, !tbaa !12
  br label %get_lut_contrast.exit

get_lut_contrast.exit:                            ; preds = %bb.cr, %bb.cs
  %i.abz = phi reassoc nsz arcp contract afn float [ %i.abs, %bb.cr ], [ %i.aby, %bb.cs ]
  store float %i.abz, ptr %i.zo, align 4, !tbaa !12
  br label %bb.ct

bb.ct:                                            ; preds = %bb.co, %bb.cp, %get_lut_contrast.exit
  br i1 %i.yd, label %bb.cu, label %bb.cy

bb.cu:                                            ; preds = %bb.ct
  %i.aca = getelementptr i8, ptr %i.zo, i64 4     ; 2 uses
  %i.acb = load float, ptr %i.aca, align 4, !tbaa !12 ; 4 uses
  %i.acc = fcmp reassoc nsz arcp contract afn ogt float %i.acb, 0.000000e+00
  br i1 %i.acc, label %bb.cv, label %bb.cy

bb.cv:                                            ; preds = %bb.cu
  %i.acd = fcmp reassoc nsz arcp contract afn ogt float %i.acb, 1.000000e+00
  br i1 %i.acd, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.ace = fmul reassoc nnan nsz arcp contract afn float %i.acb, 6.553600e+04
  %i.acf = fptosi float %i.ace to i32
  %8 = call i32 @llvm.smax.i32(i32 %i.acf, i32 0)
  %i.acg = call i32 @llvm.umin.i32(i32 %8, i32 65535)
  %i.ach = zext nneg i32 %i.acg to i64
  %i.aci = getelementptr inbounds nuw [4 x i8], ptr %i.zd, i64 %i.ach
  %i.acj = load float, ptr %i.aci, align 4, !tbaa !12
  br label %get_lut_gamma.exit.1

bb.cx:                                            ; preds = %bb.cv
  %i.ack = call reassoc nsz arcp contract afn noundef float @llvm.pow.f32(float %i.acb, float %i.xv)
  br label %get_lut_gamma.exit.1

get_lut_gamma.exit.1:                             ; preds = %bb.cx, %bb.cw
  %i.acl = phi reassoc nsz arcp contract afn float [ %i.ack, %bb.cx ], [ %i.acj, %bb.cw ]
  store float %i.acl, ptr %i.aca, align 4, !tbaa !12
  br label %bb.cy

bb.cy:                                            ; preds = %get_lut_gamma.exit.1, %bb.cu, %bb.ct
  br i1 %spec.select222, label %bb.cz, label %bb.dd

bb.cz:                                            ; preds = %bb.cy
  %i.acm = getelementptr i8, ptr %i.zo, i64 4     ; 2 uses
  %i.acn = load float, ptr %i.acm, align 4, !tbaa !12 ; 4 uses
  %i.aco = fcmp reassoc nsz arcp contract afn ogt float %i.acn, 0.000000e+00
  br i1 %i.aco, label %bb.da, label %bb.dd

bb.da:                                            ; preds = %bb.cz
  %i.acp = fcmp reassoc nsz arcp contract afn ogt float %i.acn, 1.000000e+00
  br i1 %i.acp, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.acq = fmul reassoc nnan nsz arcp contract afn float %i.acn, 6.553600e+04
  %i.acr = fptosi float %i.acq to i32
  %9 = call i32 @llvm.smax.i32(i32 %i.acr, i32 0)
  %i.acs = call i32 @llvm.umin.i32(i32 %9, i32 65535)
  %i.act = zext nneg i32 %i.acs to i64
  %i.acu = getelementptr inbounds nuw [4 x i8], ptr %i.ze, i64 %i.act
  %i.acv = load float, ptr %i.acu, align 4, !tbaa !12
  br label %get_lut_contrast.exit.1

bb.dc:                                            ; preds = %bb.da
  %i.acw = fmul reassoc nsz arcp contract afn float %i.acn, %i.xn
  %i.acx = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.acw, float %i.xi)
  %i.acy = fmul reassoc nsz arcp contract afn float %i.acx, %spec.select
  br label %get_lut_contrast.exit.1

get_lut_contrast.exit.1:                          ; preds = %bb.dc, %bb.db
  %i.acz = phi reassoc nsz arcp contract afn float [ %i.acy, %bb.dc ], [ %i.acv, %bb.db ]
  store float %i.acz, ptr %i.acm, align 4, !tbaa !12
  br label %bb.dd

bb.dd:                                            ; preds = %get_lut_contrast.exit.1, %bb.cz, %bb.cy
  br i1 %i.yd, label %bb.de, label %bb.di

bb.de:                                            ; preds = %bb.dd
  %i.ada = getelementptr i8, ptr %i.zo, i64 8     ; 2 uses
  %i.adb = load float, ptr %i.ada, align 4, !tbaa !12 ; 4 uses
  %i.adc = fcmp reassoc nsz arcp contract afn ogt float %i.adb, 0.000000e+00
  br i1 %i.adc, label %bb.df, label %bb.di

bb.df:                                            ; preds = %bb.de
  %i.add = fcmp reassoc nsz arcp contract afn ogt float %i.adb, 1.000000e+00
  br i1 %i.add, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.ade = fmul reassoc nnan nsz arcp contract afn float %i.adb, 6.553600e+04
  %i.adf = fptosi float %i.ade to i32
  %10 = call i32 @llvm.smax.i32(i32 %i.adf, i32 0)
  %i.adg = call i32 @llvm.umin.i32(i32 %10, i32 65535)
  %i.adh = zext nneg i32 %i.adg to i64
  %i.adi = getelementptr inbounds nuw [4 x i8], ptr %i.zd, i64 %i.adh
  %i.adj = load float, ptr %i.adi, align 4, !tbaa !12
  br label %get_lut_gamma.exit.2

bb.dh:                                            ; preds = %bb.df
  %i.adk = call reassoc nsz arcp contract afn noundef float @llvm.pow.f32(float %i.adb, float %i.xv)
  br label %get_lut_gamma.exit.2

get_lut_gamma.exit.2:                             ; preds = %bb.dh, %bb.dg
  %i.adl = phi reassoc nsz arcp contract afn float [ %i.adk, %bb.dh ], [ %i.adj, %bb.dg ]
  store float %i.adl, ptr %i.ada, align 4, !tbaa !12
  br label %bb.di

bb.di:                                            ; preds = %get_lut_gamma.exit.2, %bb.de, %bb.dd
  br i1 %spec.select222, label %bb.dj, label %bb.dn

bb.dj:                                            ; preds = %bb.di
  %i.adm = getelementptr i8, ptr %i.zo, i64 8     ; 2 uses
  %i.adn = load float, ptr %i.adm, align 4, !tbaa !12 ; 4 uses
  %i.ado = fcmp reassoc nsz arcp contract afn ogt float %i.adn, 0.000000e+00
  br i1 %i.ado, label %bb.dk, label %bb.dn

bb.dk:                                            ; preds = %bb.dj
  %i.adp = fcmp reassoc nsz arcp contract afn ogt float %i.adn, 1.000000e+00
  br i1 %i.adp, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.adq = fmul reassoc nnan nsz arcp contract afn float %i.adn, 6.553600e+04
  %i.adr = fptosi float %i.adq to i32
  %11 = call i32 @llvm.smax.i32(i32 %i.adr, i32 0)
  %i.ads = call i32 @llvm.umin.i32(i32 %11, i32 65535)
  %i.adt = zext nneg i32 %i.ads to i64
  %i.adu = getelementptr inbounds nuw [4 x i8], ptr %i.ze, i64 %i.adt
  %i.adv = load float, ptr %i.adu, align 4, !tbaa !12
  br label %get_lut_contrast.exit.2

bb.dm:                                            ; preds = %bb.dk
  %i.adw = fmul reassoc nsz arcp contract afn float %i.adn, %i.xn
  %i.adx = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.adw, float %i.xi)
  %i.ady = fmul reassoc nsz arcp contract afn float %i.adx, %spec.select
  br label %get_lut_contrast.exit.2

get_lut_contrast.exit.2:                          ; preds = %bb.dm, %bb.dl
  %i.adz = phi reassoc nsz arcp contract afn float [ %i.ady, %bb.dm ], [ %i.adv, %bb.dl ]
  store float %i.adz, ptr %i.adm, align 4, !tbaa !12
  br label %bb.dn

bb.dn:                                            ; preds = %get_lut_contrast.exit.2, %bb.dj, %bb.di
  switch i32 %i.yc, label %bb.dw [
    i32 0, label %.loopexit225
    i32 1, label %bb.do
    i32 2, label %bb.dr
    i32 3, label %bb.ds
    i32 4, label %bb.dt
    i32 5, label %bb.du
    i32 6, label %bb.dv
  ]

bb.do:                                            ; preds = %bb.dn
  br i1 %.not212, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.aea = load i32, ptr %i.yz, align 64, !tbaa !118
  %i.aeb = load i32, ptr %i.za, align 4, !tbaa !119
  %i.aec = call reassoc nsz arcp contract afn fastcc float @dt_ioppr_get_rgb_matrix_luminance(ptr noundef readonly %i.zo, ptr noundef readonly %i.yw, ptr noundef readonly %i.yx, ptr noundef readonly %i.yy, i32 noundef %i.aea, i32 noundef %i.aeb)
  br label %dt_rgb_norm.exit

bb.dq:                                            ; preds = %bb.do
  %i.aed = load float, ptr %i.zo, align 4, !tbaa !12
  %i.aee = fmul reassoc nsz arcp contract afn float %i.aed, f0x3E63D838
  %i.aef = getelementptr inbounds nuw i8, ptr %i.zo, i64 4
  %i.aeg = load <2 x float>, ptr %i.aef, align 4, !tbaa !12
  %i.aeh = fmul reassoc nsz arcp contract afn <2 x float> %i.aeg, <float f0x3F37855B, float 6.061690e-02> ; 2 uses
  %i.aei = extractelement <2 x float> %i.aeh, i64 0
  %i.aej = fadd reassoc nsz arcp contract afn float %i.aei, %i.aee
  %i.aek = extractelement <2 x float> %i.aeh, i64 1
  %i.ael = fadd reassoc nsz arcp contract afn float %i.aej, %i.aek
  br label %dt_rgb_norm.exit

bb.dr:                                            ; preds = %bb.dn
  %i.aem = load float, ptr %i.zo, align 4, !tbaa !12
  %i.aen = getelementptr inbounds nuw i8, ptr %i.zo, i64 4
  %i.aeo = load float, ptr %i.aen, align 4, !tbaa !12
  %i.aep = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.aem, float %i.aeo)
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.zo, i64 8
  %i.aer = load float, ptr %i.aeq, align 4, !tbaa !12
  %i.aes = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.aep, float %i.aer)
  br label %dt_rgb_norm.exit

bb.ds:                                            ; preds = %bb.dn
  %i.aet = load float, ptr %i.zo, align 4, !tbaa !12
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.zo, i64 4
  %i.aev = load float, ptr %i.aeu, align 4, !tbaa !12
  %i.aew = fadd reassoc nsz arcp contract afn float %i.aev, %i.aet
  %i.aex = getelementptr inbounds nuw i8, ptr %i.zo, i64 8
  %i.aey = load float, ptr %i.aex, align 4, !tbaa !12
  %i.aez = fadd reassoc nsz arcp contract afn float %i.aew, %i.aey
  %i.afa = fmul reassoc nsz arcp contract afn float %i.aez, f0x3EAAAAAB
  br label %dt_rgb_norm.exit

bb.dt:                                            ; preds = %bb.dn
  %i.afb = load float, ptr %i.zo, align 4, !tbaa !12
  %i.afc = getelementptr inbounds nuw i8, ptr %i.zo, i64 4
  %i.afd = load float, ptr %i.afc, align 4, !tbaa !12
  %i.afe = fadd reassoc nsz arcp contract afn float %i.afd, %i.afb
  %i.aff = getelementptr inbounds nuw i8, ptr %i.zo, i64 8
  %i.afg = load float, ptr %i.aff, align 4, !tbaa !12
  %i.afh = fadd reassoc nsz arcp contract afn float %i.afe, %i.afg
  br label %dt_rgb_norm.exit

bb.du:                                            ; preds = %bb.dn
  %i.afi = load float, ptr %i.zo, align 4, !tbaa !12 ; 2 uses
  %i.afj = fmul reassoc nsz arcp contract afn float %i.afi, %i.afi
  %i.afk = getelementptr inbounds nuw i8, ptr %i.zo, i64 4
  %i.afl = load <2 x float>, ptr %i.afk, align 4, !tbaa !12 ; 2 uses
  %i.afm = fmul reassoc nsz arcp contract afn <2 x float> %i.afl, %i.afl ; 2 uses
  %i.afn = extractelement <2 x float> %i.afm, i64 0
  %i.afo = fadd reassoc nsz arcp contract afn float %i.afn, %i.afj
  %i.afp = extractelement <2 x float> %i.afm, i64 1
  %i.afq = fadd reassoc nsz arcp contract afn float %i.afo, %i.afp
  %i.afr = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.afq)
  br label %dt_rgb_norm.exit

bb.dv:                                            ; preds = %bb.dn
  %i.afs = load float, ptr %i.zo, align 4, !tbaa !12 ; 3 uses
  %i.aft = fmul reassoc nsz arcp contract afn float %i.afs, %i.afs ; 2 uses
  %i.afu = getelementptr inbounds nuw i8, ptr %i.zo, i64 4
  %i.afv = fmul reassoc nsz arcp contract afn float %i.aft, %i.afs
  %i.afw = load <2 x float>, ptr %i.afu, align 4, !tbaa !12 ; 3 uses
  %i.afx = fmul reassoc nsz arcp contract afn <2 x float> %i.afw, %i.afw ; 3 uses
  %i.afy = fmul reassoc nsz arcp contract afn <2 x float> %i.afx, %i.afw ; 2 uses
  %i.afz = extractelement <2 x float> %i.afy, i64 0
  %i.aga = fadd reassoc nsz arcp contract afn float %i.afz, %i.afv
  %i.agb = extractelement <2 x float> %i.afy, i64 1
  %i.agc = fadd reassoc nsz arcp contract afn float %i.aga, %i.agb
  %i.agd = extractelement <2 x float> %i.afx, i64 0
  %i.age = fadd reassoc nsz arcp contract afn float %i.agd, %i.aft
  %i.agf = extractelement <2 x float> %i.afx, i64 1
  %i.agg = fadd reassoc nsz arcp contract afn float %i.age, %i.agf
  %i.agh = fdiv reassoc nsz arcp contract afn float %i.agc, %i.agg
  br label %dt_rgb_norm.exit

bb.dw:                                            ; preds = %bb.dn
  %i.agi = load float, ptr %i.zo, align 4, !tbaa !12
  %i.agj = getelementptr inbounds nuw i8, ptr %i.zo, i64 4
  %i.agk = load float, ptr %i.agj, align 4, !tbaa !12
  %i.agl = fadd reassoc nsz arcp contract afn float %i.agk, %i.agi
  %i.agm = getelementptr inbounds nuw i8, ptr %i.zo, i64 8
  %i.agn = load float, ptr %i.agm, align 4, !tbaa !12
  %i.ago = fadd reassoc nsz arcp contract afn float %i.agl, %i.agn
  %i.agp = fmul reassoc nsz arcp contract afn float %i.ago, f0x3EAAAAAB
  br label %dt_rgb_norm.exit

dt_rgb_norm.exit:                                 ; preds = %bb.dp, %bb.dq, %bb.dr, %bb.ds, %bb.dt, %bb.du, %bb.dv, %bb.dw
  %.0.i215 = phi nsz float [ %i.agp, %bb.dw ], [ %i.aes, %bb.dr ], [ %i.afa, %bb.ds ], [ %i.afh, %bb.dt ], [ %i.afr, %bb.du ], [ %i.agh, %bb.dv ], [ %i.aec, %bb.dp ], [ %i.ael, %bb.dq ] ; 3 uses
  %i.agq = fcmp reassoc nsz arcp contract afn ogt float %.0.i215, 0.000000e+00
  br i1 %i.agq, label %bb.dx, label %.loopexit225.loopexit

bb.dx:                                            ; preds = %dt_rgb_norm.exit
  %i.agr = fmul reassoc nsz arcp contract afn float %.0.i215, %i.xn
  %i.ags = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.agr, float %i.xi)
  %i.agt = fmul reassoc nsz arcp contract afn float %i.ags, %spec.select
  %i.agu = fdiv reassoc nsz arcp contract afn float %i.agt, %.0.i215
  br label %.loopexit225.loopexit

.loopexit225.loopexit:                            ; preds = %bb.dx, %dt_rgb_norm.exit
  %.0196 = phi nsz float [ %i.agu, %bb.dx ], [ 1.000000e+00, %dt_rgb_norm.exit ] ; 2 uses
  %i.agv = load <2 x float>, ptr %i.zo, align 4, !tbaa !12
  %i.agw = insertelement <2 x float> poison, float %.0196, i64 0
  %i.agx = shufflevector <2 x float> %i.agw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.agy = fmul reassoc nsz arcp contract afn <2 x float> %i.agv, %i.agx
  store <2 x float> %i.agy, ptr %i.zo, align 4, !tbaa !12
  %i.agz = getelementptr i8, ptr %i.zo, i64 8     ; 2 uses
  %i.aha = load float, ptr %i.agz, align 4, !tbaa !12
  %i.ahb = fmul reassoc nsz arcp contract afn float %i.aha, %.0196
  store float %i.ahb, ptr %i.agz, align 4, !tbaa !12
  br label %.loopexit225

.loopexit225:                                     ; preds = %bb.dn, %.loopexit225.loopexit
  br i1 %i.yg, label %.loopexit.loopexit, label %.loopexit

.loopexit.loopexit:                               ; preds = %.loopexit225
  %i.ahc = load float, ptr %i.zo, align 4, !tbaa !12 ; 3 uses
  %i.ahd = getelementptr i8, ptr %i.zo, i64 4     ; 2 uses
  %i.ahe = load float, ptr %i.ahd, align 4, !tbaa !12 ; 3 uses
  %i.ahf = fadd reassoc nsz arcp contract afn float %i.ahe, %i.ahc
  %i.ahg = getelementptr i8, ptr %i.zo, i64 8     ; 2 uses
  %i.ahh = load float, ptr %i.ahg, align 4, !tbaa !12 ; 3 uses
  %i.ahi = fadd reassoc nsz arcp contract afn float %i.ahf, %i.ahh
  %i.ahj = fmul reassoc nsz arcp contract afn float %i.ahi, f0x3EAAAAAB ; 9 uses
  %i.ahk = fsub reassoc nsz arcp contract afn float %i.ahj, %i.ahc ; 2 uses
  %i.ahl = fmul reassoc nsz arcp contract afn float %i.ahk, %i.ahk
  %i.ahm = fsub reassoc nsz arcp contract afn float %i.ahj, %i.ahe ; 2 uses
  %i.ahn = fmul reassoc nsz arcp contract afn float %i.ahm, %i.ahm
  %i.aho = fadd reassoc nsz arcp contract afn float %i.ahl, %i.ahn
  %i.ahp = fsub reassoc nsz arcp contract afn float %i.ahj, %i.ahh ; 2 uses
  %i.ahq = fmul reassoc nsz arcp contract afn float %i.ahp, %i.ahp
  %i.ahr = fadd reassoc nsz arcp contract afn float %i.aho, %i.ahq
  %i.ahs = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.ahr)
  %i.aht = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ahs, float %i.zf)
  %i.ahu = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.aht
  %i.ahv = fmul reassoc nsz arcp contract afn float %i.ahu, %i.xf
  %i.ahw = fadd reassoc nsz arcp contract afn float %i.xc, %i.ahv ; 3 uses
  %i.ahx = fsub reassoc nsz arcp contract afn float %i.ahc, %i.ahj
  %i.ahy = fmul reassoc nsz arcp contract afn float %i.ahx, %i.ahw
  %i.ahz = fadd reassoc nsz arcp contract afn float %i.ahy, %i.ahj
  store float %i.ahz, ptr %i.zo, align 4, !tbaa !12
  %i.aia = fsub reassoc nsz arcp contract afn float %i.ahe, %i.ahj
  %i.aib = fmul reassoc nsz arcp contract afn float %i.aia, %i.ahw
  %i.aic = fadd reassoc nsz arcp contract afn float %i.aib, %i.ahj
  store float %i.aic, ptr %i.ahd, align 4, !tbaa !12
  %i.aid = fsub reassoc nsz arcp contract afn float %i.ahh, %i.ahj
  %i.aie = fmul reassoc nsz arcp contract afn float %i.aid, %i.ahw
  %i.aif = fadd reassoc nsz arcp contract afn float %i.aie, %i.ahj
  store float %i.aif, ptr %i.ahg, align 4, !tbaa !12
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.loopexit225
  %i.aig = add i64 %.0200240, 3                   ; 2 uses
  %i.aih = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aig
  %i.aii = load float, ptr %i.aih, align 4, !tbaa !12
  %i.aij = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aig
  store float %i.aii, ptr %i.aij, align 4, !tbaa !12
  %i.aik = add i64 %.0200240, %i.yo               ; 2 uses
  %i.ail = icmp ult i64 %i.aik, %i.yq
  br i1 %i.ail, label %.preheader, label %._crit_edge
}

declare ptr @dt_ioppr_get_iop_work_profile_info(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
end_hunk_1
