Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_energy?download=true
inline.NumInlined: 676
inline.NumDeleted: 290
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZL13calc_averagesiP10enerdata_tii:bb.a
  %i.hi = sext i32 %i.hh to i64
  %i.hj = mul nsw i64 %indvars.iv290, %i.hi
  %i.hk = sub nsw i64 %i.hj, %i.ha
  %i.hl = icmp slt i64 %i.hg, %i.hk
  br i1 %i.hl, label %bb.t, label %_ZL9set_ee_avP9ener_ee_t.exit

bb.t:                                             ; preds = %bb.s
  %i.hm = load ptr, ptr @debug, align 8, !tbaa !61 ; 2 uses
  %.not.i = icmp eq ptr %i.hm, null
  br i1 %.not.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.hn = load i64, ptr %i.gn, align 8, !tbaa !382
  %i.ho = call noundef ptr @_Z12gmx_step_strlPc(i64 noundef %i.hn, ptr noundef nonnull %i.b)
  %i.hp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.hm, ptr noundef nonnull @.str.257, ptr noundef %i.ho) #27 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %.pre309 = load i32, ptr %i.gm, align 8, !tbaa !381 ; 2 uses
  %.pre.i.pre = load i64, ptr %i.gn, align 8, !tbaa !382
  %.pre319 = add nsw i32 %.pre309, 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pre-phi = phi i32 [ %.pre319, %bb.u ], [ %i.gx, %bb.t ]
  %.pre.i = phi i64 [ %.pre.i.pre, %bb.u ], [ %i.go, %bb.t ] ; 2 uses
  %i.hq = phi i32 [ %.pre309, %bb.u ], [ %i.gw, %bb.t ]
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gm, i64 8 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !383
  %i.hu = load i64, ptr %i.hr, align 8, !tbaa !384
  %i.hv = sitofp i64 %i.hu to double
  %i.hw = fdiv double %i.ht, %i.hv                ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.gm, i64 24 ; 2 uses
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !385
  %i.hz = fadd double %i.hy, %i.hw
  store double %i.hz, ptr %i.hx, align 8, !tbaa !385
  %i.ia = getelementptr inbounds nuw i8, ptr %i.gm, i64 32 ; 2 uses
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !386
  %i.ic = call double @llvm.fmuladd.f64(double %i.hw, double %i.hw, double %i.ib)
  store double %i.ic, ptr %i.ia, align 8, !tbaa !386
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hr, i8 0, i64 16, i1 false)
  store i32 %.pre-phi, ptr %i.gm, align 8, !tbaa !381
  %i.id = icmp eq i32 %i.hq, 0
  br i1 %i.id, label %._crit_edge.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ie = getelementptr inbounds nuw i8, ptr %i.gm, i64 48
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !387
  %i.ig = icmp slt i64 %.pre.i, %i.if
  br i1 %i.ig, label %._crit_edge.i, label %_ZL9set_ee_avP9ener_ee_t.exit

._crit_edge.i:                                    ; preds = %bb.w, %bb.v
  %i.ih = getelementptr inbounds nuw i8, ptr %i.gm, i64 48
  store i64 %.pre.i, ptr %i.ih, align 8, !tbaa !387
  br label %_ZL9set_ee_avP9ener_ee_t.exit

_ZL9set_ee_avP9ener_ee_t.exit:                    ; preds = %._crit_edge.i, %bb.w, %bb.s, %bb.r
  %i.ii = phi i64 [ %i.go, %bb.r ], [ %i.go, %bb.s ], [ 0, %bb.w ], [ 0, %._crit_edge.i ]
  br i1 %i.gl, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZL9set_ee_avP9ener_ee_t.exit
  %i.ij = load ptr, ptr %i.cw, align 8, !tbaa !74
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %indvars.iv295 ; 2 uses
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !11
  %i.im = getelementptr i8, ptr %i.ik, i64 -4
  %i.in = load i32, ptr %i.im, align 4, !tbaa !11
  %i.io = sub nsw i32 %i.il, %i.in
  %i.ip = sext i32 %i.io to i64
  %i.iq = add nsw i64 %i.ii, %i.ip
  br label %bb.y

bb.y:                                             ; preds = %_ZL9set_ee_avP9ener_ee_t.exit, %bb.x
  %storemerge = phi i64 [ %i.iq, %bb.x ], [ 1, %_ZL9set_ee_avP9ener_ee_t.exit ] ; 2 uses
  store i64 %storemerge, ptr %i.gn, align 8, !tbaa !382
  %i.ir = load i8, ptr %i.dk, align 8, !tbaa !62, !range !37, !noundef !38
  %i.is = trunc nuw i8 %i.ir to i1
  %i.it = getelementptr inbounds nuw i8, ptr %i.gm, i64 8 ; 2 uses
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !384
  %i.iv = getelementptr inbounds nuw i8, ptr %i.gm, i64 16 ; 2 uses
  br i1 %i.is, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.iw = load ptr, ptr %i.cv, align 8, !tbaa !67
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %indvars.iv295
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !11
  %i.iz = sext i32 %i.iy to i64
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.ja = load ptr, ptr %i.ct, align 8, !tbaa !64
  %i.jb = getelementptr inbounds nuw [56 x i8], ptr %i.ja, i64 %indvars.iv303
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !56
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %indvars.iv295
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.sink347 = phi i64 [ 1, %bb.aa ], [ %i.iz, %bb.z ]
  %.sink345.in.in = phi ptr [ %i.jd, %bb.aa ], [ %i.ek, %bb.z ]
  %.sink345.in = load float, ptr %.sink345.in.in, align 4, !tbaa !54
  %.sink345 = fpext float %.sink345.in to double
  %i.je = add nsw i64 %i.iu, %.sink347            ; 2 uses
  store i64 %i.je, ptr %i.it, align 8, !tbaa !384
  %i.jf = load double, ptr %i.iv, align 8, !tbaa !383
  %i.jg = fadd double %i.jf, %.sink345            ; 2 uses
  store double %i.jg, ptr %i.iv, align 8, !tbaa !383
  %i.jh = load ptr, ptr %i.cw, align 8, !tbaa !74 ; 2 uses
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !11
  %i.jj = add nsw i32 %i.ji, -1
  %i.jk = sext i32 %i.jj to i64
  %i.jl = mul nsw i64 %indvars.iv290, %i.jk
  %i.jm = load i64, ptr %1, align 8, !tbaa !55
  %i.jn = load i32, ptr %i.gm, align 8, !tbaa !381 ; 2 uses
  %i.jo = add nsw i32 %i.jn, 1                    ; 2 uses
  %i.jp = sext i32 %i.jo to i64
  %i.jq = mul nsw i64 %i.jm, %i.jp
  %i.jr = add nsw i64 %i.jq, %i.jl
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %indvars.iv295
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !11
  %i.ju = sext i32 %i.jt to i64
  %i.jv = mul nsw i64 %indvars.iv290, %i.ju
  %.not199 = icmp sgt i64 %i.jr, %i.jv
  br i1 %.not199, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.jw = load ptr, ptr @debug, align 8, !tbaa !61 ; 2 uses
  %.not.i201 = icmp eq ptr %i.jw, null
  br i1 %.not.i201, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.jx = load i64, ptr %i.gn, align 8, !tbaa !382
  %i.jy = call noundef ptr @_Z12gmx_step_strlPc(i64 noundef %i.jx, ptr noundef nonnull %i.a)
  %i.jz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.jw, ptr noundef nonnull @.str.257, ptr noundef %i.jy) #27 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %.pre311 = load double, ptr %.phi.trans.insert, align 8, !tbaa !383
  %.phi.trans.insert312 = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %.pre313 = load i64, ptr %.phi.trans.insert312, align 8, !tbaa !384
  %.pre314 = load i32, ptr %i.gm, align 8, !tbaa !381 ; 2 uses
  %.pre.i203.pre = load i64, ptr %i.gn, align 8, !tbaa !382
  %.pre320 = add nsw i32 %.pre314, 1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.pre-phi321 = phi i32 [ %.pre320, %bb.ad ], [ %i.jo, %bb.ac ]
  %.pre.i203 = phi i64 [ %.pre.i203.pre, %bb.ad ], [ %storemerge, %bb.ac ] ; 2 uses
  %i.ka = phi i32 [ %.pre314, %bb.ad ], [ %i.jn, %bb.ac ]
  %i.kb = phi i64 [ %.pre313, %bb.ad ], [ %i.je, %bb.ac ]
  %i.kc = phi double [ %.pre311, %bb.ad ], [ %i.jg, %bb.ac ]
  %i.kd = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.ke = sitofp i64 %i.kb to double
  %i.kf = fdiv double %i.kc, %i.ke                ; 3 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.gm, i64 24 ; 2 uses
  %i.kh = load double, ptr %i.kg, align 8, !tbaa !385
  %i.ki = fadd double %i.kh, %i.kf
  store double %i.ki, ptr %i.kg, align 8, !tbaa !385
  %i.kj = getelementptr inbounds nuw i8, ptr %i.gm, i64 32 ; 2 uses
  %i.kk = load double, ptr %i.kj, align 8, !tbaa !386
  %i.kl = call double @llvm.fmuladd.f64(double %i.kf, double %i.kf, double %i.kk)
  store double %i.kl, ptr %i.kj, align 8, !tbaa !386
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kd, i8 0, i64 16, i1 false)
  store i32 %.pre-phi321, ptr %i.gm, align 8, !tbaa !381
  %i.km = icmp eq i32 %i.ka, 0
  br i1 %i.km, label %._crit_edge.i204, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.kn = getelementptr inbounds nuw i8, ptr %i.gm, i64 48
  %i.ko = load i64, ptr %i.kn, align 8, !tbaa !387
  %i.kp = icmp slt i64 %.pre.i203, %i.ko
  br i1 %i.kp, label %._crit_edge.i204, label %_ZL9set_ee_avP9ener_ee_t.exit205

._crit_edge.i204:                                 ; preds = %bb.af, %bb.ae
  %i.kq = getelementptr inbounds nuw i8, ptr %i.gm, i64 48
  store i64 %.pre.i203, ptr %i.kq, align 8, !tbaa !387
  br label %_ZL9set_ee_avP9ener_ee_t.exit205

_ZL9set_ee_avP9ener_ee_t.exit205:                 ; preds = %bb.af, %._crit_edge.i204
  store i64 0, ptr %i.gn, align 8, !tbaa !382
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ab, %_ZL9set_ee_avP9ener_ee_t.exit205
  %indvars.iv.next291 = add nsw i64 %indvars.iv290, 1 ; 2 uses
  %lftr.wideiv293 = trunc i64 %indvars.iv.next291 to i32
  %exitcond294.not = icmp eq i32 %i.cq, %lftr.wideiv293
  br i1 %exitcond294.not, label %._crit_edge231.loopexit, label %bb.r, !llvm.loop !375

._crit_edge231.loopexit:                          ; preds = %bb.ag
  %.pre316 = load i32, ptr %i.cu, align 8, !tbaa !58
  br label %._crit_edge231

._crit_edge231:                                   ; preds = %._crit_edge231.loopexit, %bb.q
  %i.kr = phi i32 [ %.pre316, %._crit_edge231.loopexit ], [ %i.ei, %bb.q ] ; 3 uses
  %indvars.iv.next296 = add nuw nsw i64 %indvars.iv295, 1 ; 2 uses
  %i.ks = sext i32 %i.kr to i64
  %i.kt = icmp slt i64 %indvars.iv.next296, %i.ks
  br i1 %i.kt, label %bb.m, label %._crit_edge241.loopexit, !llvm.loop !376

._crit_edge241.loopexit:                          ; preds = %._crit_edge231
  %i.ku = sitofp i64 %i.ft to double
  %i.kv = icmp sgt i32 %i.kr, 1
  %i.kw = insertelement <2 x double> poison, double %.1183, i64 0
  %i.kx = insertelement <2 x double> %i.kw, double %i.fu, i64 1
  br label %._crit_edge241

._crit_edge241:                                   ; preds = %._crit_edge241.loopexit, %.preheader
  %.0178.lcssa = phi double [ 0.000000e+00, %.preheader ], [ %i.ku, %._crit_edge241.loopexit ] ; 3 uses
  %.0175.lcssa = phi double [ 0.000000e+00, %.preheader ], [ %i.gg, %._crit_edge241.loopexit ] ; 3 uses
  %.0174.lcssa = phi double [ 0.000000e+00, %.preheader ], [ %i.gh, %._crit_edge241.loopexit ]
  %.0173.lcssa = phi double [ 0.000000e+00, %.preheader ], [ %i.gj, %._crit_edge241.loopexit ]
  %.0.lcssa = phi double [ 0.000000e+00, %.preheader ], [ %i.gk, %._crit_edge241.loopexit ]
  %.lcssa = phi i1 [ false, %.preheader ], [ %i.kv, %._crit_edge241.loopexit ]
  %i.ky = phi <2 x double> [ zeroinitializer, %.preheader ], [ %i.kx, %._crit_edge241.loopexit ]
  %i.kz = insertelement <2 x double> poison, double %.0178.lcssa, i64 0
  %i.la = shufflevector <2 x double> %i.kz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lb = fdiv <2 x double> %i.ky, %i.la          ; 2 uses
  %i.lc = load ptr, ptr %i.ct, align 8, !tbaa !64
  %i.ld = getelementptr inbounds nuw [56 x i8], ptr %i.lc, i64 %indvars.iv303 ; 3 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 24
  %i.lf = extractelement <2 x double> %i.lb, i64 1 ; 3 uses
  store double %i.lf, ptr %i.le, align 8, !tbaa !66
  %i.lg = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.lh = load i8, ptr %i.lg, align 8, !tbaa !62, !range !37, !noundef !38
  %i.li = trunc nuw i8 %i.lh to i1
  %4 = fmul double %i.lf, %i.lf
  %i.lj = extractelement <2 x double> %i.lb, i64 0 ; 2 uses
  %i.lk = fsub double %i.lj, %4                   ; 2 uses
  %i.ll = fcmp olt double %i.lk, 0.000000e+00
  %.sroa.speculated = select i1 %i.ll, double 0.000000e+00, double %i.lk
  %.sroa.speculated.sink = select i1 %i.li, double %i.lj, double %.sroa.speculated
  %i.lm = call double @sqrt(double noundef %.sroa.speculated.sink) #27
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ld, i64 32
  store double %i.lm, ptr %i.ln, align 8, !tbaa !73
  br i1 %.lcssa, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %._crit_edge241
  %i.lo = fneg double %.0174.lcssa
  %i.lp = fmul double %.0175.lcssa, %i.lo
  %i.lq = call double @llvm.fmuladd.f64(double %.0178.lcssa, double %.0.lcssa, double %i.lp)
  %i.lr = fneg double %.0175.lcssa
  %i.ls = fmul double %.0175.lcssa, %i.lr
  %i.lt = call double @llvm.fmuladd.f64(double %.0178.lcssa, double %.0173.lcssa, double %i.ls)
  %i.lu = fdiv double %i.lq, %i.lt
  br label %bb.ai

bb.ai:                                            ; preds = %._crit_edge241, %bb.ah
  %.sink308 = phi double [ %i.lu, %bb.ah ], [ 0.000000e+00, %._crit_edge241 ]
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ld, i64 48
  store double %.sink308, ptr %i.lv, align 8, !tbaa !63
  br i1 %.not224, label %._crit_edge255.thread, label %.lr.ph254.preheader

.lr.ph254.preheader:                              ; preds = %bb.ai
  %.pre318 = load ptr, ptr @debug, align 8, !tbaa !61
  br label %.lr.ph254

.lr.ph254:                                        ; preds = %.lr.ph254.preheader, %bb.an
  %i.lw = phi ptr [ %.pre318, %.lr.ph254.preheader ], [ %i.mg, %bb.an ] ; 2 uses
  %indvars.iv298 = phi i64 [ %i.cy, %.lr.ph254.preheader ], [ %indvars.iv.next299, %bb.an ] ; 7 uses
  %.0179252 = phi double [ 0.000000e+00, %.lr.ph254.preheader ], [ %.1180, %bb.an ] ; 3 uses
  %.0185251 = phi i32 [ 0, %.lr.ph254.preheader ], [ %.1186, %bb.an ] ; 3 uses
  %.not196 = icmp eq ptr %i.lw, null
  br i1 %.not196, label %.lr.ph254._crit_edge, label %bb.aj

.lr.ph254._crit_edge:                             ; preds = %.lr.ph254
  %.pre322 = trunc nsw i64 %indvars.iv298 to i32
  br label %bb.ak

bb.aj:                                            ; preds = %.lr.ph254
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  %i.lx = getelementptr inbounds [56 x i8], ptr %i.cs, i64 %indvars.iv298 ; 2 uses
  %i.ly = load i32, ptr %i.lx, align 8, !tbaa !381
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lx, i64 48
  %i.ma = load i64, ptr %i.lz, align 8, !tbaa !387
  %i.mb = call noundef ptr @_Z12gmx_step_strlPc(i64 noundef %i.ma, ptr noundef nonnull %i.c)
  %i.mc = load i64, ptr %1, align 8, !tbaa !55
  %i.md = call noundef ptr @_Z12gmx_step_strlPc(i64 noundef %i.mc, ptr noundef nonnull %i.d)
  %i.me = trunc nsw i64 %indvars.iv298 to i32     ; 2 uses
  %i.mf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.lw, ptr noundef nonnull @.str.256, i32 noundef %i.me, i32 noundef %i.ly, ptr noundef %i.mb, ptr noundef %i.md) #27 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  %.pre317 = load ptr, ptr @debug, align 8, !tbaa !61
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph254._crit_edge, %bb.aj
  %.pre-phi323 = phi i32 [ %.pre322, %.lr.ph254._crit_edge ], [ %i.me, %bb.aj ] ; 2 uses
  %i.mg = phi ptr [ null, %.lr.ph254._crit_edge ], [ %.pre317, %bb.aj ]
  %i.mh = getelementptr inbounds [56 x i8], ptr %i.cs, i64 %indvars.iv298 ; 3 uses
  %i.mi = load i32, ptr %i.mh, align 8, !tbaa !381
  %i.mj = icmp eq i32 %i.mi, %.pre-phi323
  br i1 %i.mj, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.mk = mul nsw i64 %indvars.iv298, 5
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mh, i64 48
  %i.mm = load i64, ptr %i.ml, align 8, !tbaa !387
  %i.mn = mul nsw i64 %i.mm, %i.mk
  %i.mo = load i64, ptr %1, align 8, !tbaa !55
  %i.mp = shl nsw i64 %i.mo, 2
  %.not197 = icmp slt i64 %i.mn, %i.mp
  br i1 %.not197, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.mq = getelementptr i8, ptr %i.mh, i64 24
  %i.mr = sitofp i32 %.pre-phi323 to double
  %i.ms = load <2 x double>, ptr %i.mq, align 8, !tbaa !29
  %i.mt = insertelement <2 x double> poison, double %i.mr, i64 0
  %i.mu = shufflevector <2 x double> %i.mt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mv = fdiv <2 x double> %i.ms, %i.mu          ; 3 uses
  %foldExtExtBinop364.a = fmul <2 x double> %i.mv, %i.mv
  %shift366 = shufflevector <2 x double> %i.mv, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop367 = fsub <2 x double> %shift366, %foldExtExtBinop364.a
  %i.mw = extractelement <2 x double> %foldExtExtBinop367, i64 0
  %i.mx = trunc i64 %indvars.iv298 to i32
  %i.my = add i32 %i.mx, -1
  %i.mz = sitofp i32 %i.my to double
  %i.na = fdiv double %i.mw, %i.mz
  %i.nb = fadd double %.0179252, %i.na
  %i.nc = add nsw i32 %.0185251, 1
  br label %bb.an

bb.an:                                            ; preds = %bb.ak, %bb.al, %bb.am
  %.1186 = phi i32 [ %i.nc, %bb.am ], [ %.0185251, %bb.al ], [ %.0185251, %bb.ak ] ; 3 uses
  %.1180 = phi double [ %i.nb, %bb.am ], [ %.0179252, %bb.al ], [ %.0179252, %bb.ak ] ; 2 uses
  %indvars.iv.next299 = add nsw i64 %indvars.iv298, 1 ; 2 uses
  %lftr.wideiv301 = trunc i64 %indvars.iv.next299 to i32
  %exitcond302.not = icmp eq i32 %i.cq, %lftr.wideiv301
  br i1 %exitcond302.not, label %._crit_edge255, label %.lr.ph254, !llvm.loop !377

._crit_edge255:                                   ; preds = %bb.an
  %i.nd = icmp sgt i32 %.1186, 0
  br i1 %i.nd, label %bb.ao, label %._crit_edge255.thread

bb.ao:                                            ; preds = %._crit_edge255
  %i.ne = uitofp nneg i32 %.1186 to double
  %i.nf = fdiv double %.1180, %i.ne
  %i.ng = call double @sqrt(double noundef %i.nf) #27
  br label %._crit_edge255.thread

._crit_edge255.thread:                            ; preds = %._crit_edge255, %bb.ai, %bb.ao
  %.sink = phi double [ %i.ng, %bb.ao ], [ -1.000000e+00, %bb.ai ], [ -1.000000e+00, %._crit_edge255 ]
  %i.nh = load ptr, ptr %i.ct, align 8, !tbaa !64 ; 2 uses
  %i.ni = getelementptr inbounds nuw [56 x i8], ptr %i.nh, i64 %indvars.iv303
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 40
  store double %.sink, ptr %i.nj, align 8, !tbaa !65
  %indvars.iv.next304 = add nuw nsw i64 %indvars.iv303, 1 ; 2 uses
  %exitcond307.not = icmp eq i64 %indvars.iv.next304, %wide.trip.count306
  br i1 %exitcond307.not, label %._crit_edge261, label %bb.l, !llvm.loop !378

._crit_edge261:                                   ; preds = %._crit_edge255.thread, %._crit_edge.thread332
  %i.nk = phi ptr [ %i.h, %._crit_edge.thread332 ], [ %i.cs, %._crit_edge255.thread ]
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.255, ptr noundef nonnull @.str.140, i32 noundef 672, ptr noundef %i.nk)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #14

declare void @_Z15low_do_autocorrPKcPK16gmx_output_env_tS0_iiiPPffmibbbffi(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, float noundef, i64 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, float noundef, float noundef, i32 noundef) local_unnamed_addr #3

declare noundef i32 @_Z11get_acfnoutv() local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm2EED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !24
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = load ptr, ptr %0, align 8, !tbaa !23     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !24
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #6

declare noundef double @_ZN3gmx16doubleFromStringEPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt5arrayISt6vectorIdSaIdEELm3EED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !71
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #28
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !69   ; 3 uses
  %.not.i.i.i.1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.1, label %_ZNSt6vectorIdSaIdEED2Ev.exit.1, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
end_hunk_0
