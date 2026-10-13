Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/culling?download=true
inline.NumInlined: 57
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@dt_culling_full_redraw:bb.a
  %i.hs = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 7 uses
  %i.ht = uitofp reassoc nsz arcp contract afn i32 %.0383.lcssa.i to float
  %i.hu = uitofp reassoc nsz arcp contract afn nneg i32 %.0352..i to float
  %i.hv = fdiv reassoc nsz arcp contract afn float %i.ht, %i.hu ; 3 uses
  %i.hw = fcmp reassoc nsz arcp contract afn ogt float %i.hv, %i.hs
  %i.hx = fdiv reassoc nsz arcp contract afn float %i.hv, %i.hs
  %i.hy = fdiv reassoc nsz arcp contract afn float %i.hs, %i.hv
  %i.hz = select reassoc nsz arcp contract afn i1 %i.hw, float %i.hx, float %i.hy
  %i.ia = sitofp reassoc nsz arcp contract afn i32 %.0383.lcssa.i to float ; 2 uses
  %i.ib = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.hs
  br label %bb.at

bb.as:                                            ; preds = %._crit_edge482.i, %.lr.ph493.i
  %.0381491.i = phi ptr [ %i.ga, %.lr.ph493.i ], [ %i.jd, %._crit_edge482.i ] ; 2 uses
  %.0383489.i = phi i32 [ 0, %.lr.ph493.i ], [ %i.jb, %._crit_edge482.i ] ; 2 uses
  %.0385487.i = phi i32 [ 0, %.lr.ph493.i ], [ %i.ic, %._crit_edge482.i ]
  %i.ic = add nuw nsw i32 %.0385487.i, 1          ; 2 uses
  %i.id = load ptr, ptr %.0381491.i, align 8, !tbaa !75 ; 4 uses
  %.not425469.i = icmp eq ptr %i.id, null
  br i1 %.not425469.i, label %._crit_edge482.i, label %.lr.ph473.i

.lr.ph481.i:                                      ; preds = %.lr.ph473.i
  %i.ie = sitofp reassoc nsz arcp contract afn i32 %i.iw to float
  %i.if = fdiv reassoc nsz arcp contract afn float %i.gc, %i.ie ; 4 uses
  %i.ig = fpext reassoc nsz arcp contract afn float %i.if to double
  %i.ih = fcmp reassoc nsz arcp contract afn olt double %i.ig, 1.200000e+00
  %narrow.sel.i = select reassoc nsz arcp contract afn i1 %i.ih, float %i.if, float 1.200000e+00
  br i1 %i.gd, label %.lr.ph481.split.us.i.preheader, label %.lr.ph481.split.i

.lr.ph481.split.us.i.preheader:                   ; preds = %.lr.ph481.i
  %i.ii = insertelement <2 x float> poison, float %narrow.sel.i, i64 0
  %i.ij = shufflevector <2 x float> %i.ii, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph481.split.us.i

.lr.ph481.split.us.i:                             ; preds = %.lr.ph481.split.us.i.preheader, %.lr.ph481.split.us.i
  %.0376479.us.i = phi ptr [ %i.is, %.lr.ph481.split.us.i ], [ %i.id, %.lr.ph481.split.us.i.preheader ] ; 2 uses
  %.0378478.us.i = phi i32 [ %.0378..us.i, %.lr.ph481.split.us.i ], [ 0, %.lr.ph481.split.us.i.preheader ]
  %i.ik = load ptr, ptr %.0376479.us.i, align 8, !tbaa !75
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8 ; 2 uses
  %i.im = load <2 x i32>, ptr %i.il, align 8, !tbaa !71
  %i.in = sitofp <2 x i32> %i.im to <2 x float>
  %i.io = fmul reassoc nsz arcp contract afn <2 x float> %i.ij, %i.in
  %i.ip = fptosi <2 x float> %i.io to <2 x i32>   ; 2 uses
  store <2 x i32> %i.ip, ptr %i.il, align 8, !tbaa !71
  %i.iq = extractelement <2 x i32> %i.ip, i64 0
  %.0378..us.i = call i32 @llvm.smax.i32(i32 %.0378478.us.i, i32 %i.iq) ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.0376479.us.i, i64 8
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !141 ; 2 uses
  %.not426.us.i = icmp eq ptr %i.is, null
  br i1 %.not426.us.i, label %._crit_edge482.i, label %.lr.ph481.split.us.i

.lr.ph473.i:                                      ; preds = %bb.as, %.lr.ph473.i
  %.0377471.i = phi ptr [ %i.iz, %.lr.ph473.i ], [ %i.id, %bb.as ] ; 2 uses
  %.0380470.i = phi i32 [ %i.ix, %.lr.ph473.i ], [ 0, %bb.as ]
  %i.it = load ptr, ptr %.0377471.i, align 8, !tbaa !75
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 12
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !108
  %i.iw = add i32 %i.iv, %.0380470.i              ; 2 uses
  %i.ix = add i32 %i.iw, 1
  %i.iy = getelementptr inbounds nuw i8, ptr %.0377471.i, i64 8
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !141 ; 2 uses
  %.not425.i = icmp eq ptr %i.iz, null
  br i1 %.not425.i, label %.lr.ph481.i, label %.lr.ph473.i

._crit_edge482.i:                                 ; preds = %.lr.ph481.split.i, %.lr.ph481.split.us.i, %bb.as
  %.0378.lcssa.i = phi i32 [ %.0378..us.i, %.lr.ph481.split.us.i ], [ 0, %bb.as ], [ %.0378..i, %.lr.ph481.split.i ] ; 2 uses
  %i.ja = add nuw nsw i32 %.0383489.i, 1
  %i.jb = add nuw nsw i32 %i.ja, %.0378.lcssa.i
  %i.jc = getelementptr inbounds nuw i8, ptr %.0381491.i, i64 8
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !141 ; 2 uses
  %.not411.i = icmp eq ptr %i.jd, null
  br i1 %.not411.i, label %._crit_edge494.loopexit.i, label %bb.as

.lr.ph481.split.i:                                ; preds = %.lr.ph481.i, %.lr.ph481.split.i
  %.0376479.i = phi ptr [ %i.jr, %.lr.ph481.split.i ], [ %i.id, %.lr.ph481.i ] ; 2 uses
  %.0378478.i = phi i32 [ %.0378..i, %.lr.ph481.split.i ], [ 0, %.lr.ph481.i ]
  %i.je = load ptr, ptr %.0376479.i, align 8, !tbaa !75
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 8 ; 2 uses
  %i.jg = load <2 x i32>, ptr %i.jf, align 8, !tbaa !71
  %i.jh = sitofp <2 x i32> %i.jg to <2 x float>   ; 2 uses
  %i.ji = extractelement <2 x float> %i.jh, i64 0
  %i.jj = fdiv reassoc nsz arcp contract afn float %i.gf, %i.ji ; 2 uses
  %i.jk = fcmp reassoc nsz arcp contract afn olt float %i.if, %i.jj
  %..i = select reassoc nsz arcp contract afn i1 %i.jk, float %i.if, float %i.jj
  %i.jl = insertelement <2 x float> poison, float %..i, i64 0
  %i.jm = shufflevector <2 x float> %i.jl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jn = fmul reassoc nsz arcp contract afn <2 x float> %i.jm, %i.jh
  %i.jo = fptosi <2 x float> %i.jn to <2 x i32>   ; 2 uses
  store <2 x i32> %i.jo, ptr %i.jf, align 8, !tbaa !71
  %i.jp = extractelement <2 x i32> %i.jo, i64 0
  %.0378..i = call i32 @llvm.smax.i32(i32 %.0378478.i, i32 %i.jp) ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.0376479.i, i64 8
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !141 ; 2 uses
  %.not426.i = icmp eq ptr %i.jr, null
  br i1 %.not426.i, label %._crit_edge482.i, label %.lr.ph481.split.i

bb.at:                                            ; preds = %bb.au, %._crit_edge494.i
  %.0373.i = phi i32 [ 1, %._crit_edge494.i ], [ %.1374.i, %bb.au ] ; 3 uses
  %.0372.i = phi nsz float [ %i.hz, %._crit_edge494.i ], [ %i.kk, %bb.au ]
  %i.js = sitofp reassoc nsz arcp contract afn i32 %.0373.i to float
  %i.jt = fdiv reassoc nsz arcp contract afn float %i.ia, %i.js
  %i.ju = fptoui float %i.jt to i32               ; 2 uses
  %i.jv = mul nsw i32 %.0373.i, %.1396..i
  %i.jw = uitofp reassoc nsz arcp contract afn i32 %i.ju to float
  %i.jx = uitofp reassoc nsz arcp contract afn i32 %i.jv to float
  %i.jy = fdiv reassoc nsz arcp contract afn float %i.jw, %i.jx
  %i.jz = fcmp reassoc nsz arcp contract afn ogt float %i.jy, %i.hs
  %.1374.v.i = select i1 %i.jz, i32 1, i32 -1
  %.1374.i = add nsw i32 %.1374.v.i, %.0373.i     ; 5 uses
  %i.ka = icmp eq i32 %.1374.i, 0
  %i.kb = icmp sgt i32 %.1374.i, %.0385.lcssa.i
  %or.cond.i131 = select i1 %i.ka, i1 true, i1 %i.kb
  br i1 %or.cond.i131, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.kc = sitofp reassoc nsz arcp contract afn i32 %.1374.i to float
  %i.kd = mul nsw i32 %.1374.i, %.1396..i
  %i.ke = sitofp reassoc nsz arcp contract afn i32 %i.kd to float
  %i.kf = fmul reassoc nnan nsz arcp contract afn float %i.ke, %i.kc
  %i.kg = fdiv reassoc nsz arcp contract afn float %i.ia, %i.kf ; 3 uses
  %i.kh = fcmp reassoc nsz arcp contract afn ogt float %i.kg, %i.hs
  %i.ki = fmul reassoc nsz arcp contract afn float %i.kg, %i.ib
  %i.kj = fdiv reassoc nsz arcp contract afn float %i.hs, %i.kg
  %i.kk = select reassoc nsz arcp contract afn i1 %i.kh, float %i.ki, float %i.kj ; 2 uses
  %i.kl = fcmp reassoc nsz arcp contract afn olt float %i.kk, %.0372.i
  br i1 %i.kl, label %bb.at, label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.km = call ptr @g_list_append(ptr noundef null, ptr noundef null) #13 ; 2 uses
  br i1 %.not411486.i, label %._crit_edge522.i, label %.lr.ph521.i

.lr.ph521.i:                                      ; preds = %bb.av
  %i.kn = sitofp reassoc nsz arcp contract afn i32 %i.ju to double
  br label %bb.aw

._crit_edge522.loopexit.i:                        ; preds = %._crit_edge510.i
  %i.ko = add nsw i32 %i.mp, -1
  %i.kp = sitofp reassoc nsz arcp contract afn i32 %i.ko to float
  br label %._crit_edge522.i

._crit_edge522.i:                                 ; preds = %._crit_edge522.loopexit.i, %bb.av
  %.0370.lcssa.i = phi float [ -1.000000e+00, %bb.av ], [ %i.kp, %._crit_edge522.loopexit.i ] ; 3 uses
  %.0369.lcssa.i = phi i32 [ 0, %bb.av ], [ %i.ms, %._crit_edge522.loopexit.i ] ; 2 uses
  %.0367.lcssa.i = phi ptr [ %i.km, %bb.av ], [ %.1368.i, %._crit_edge522.loopexit.i ]
  %i.kq = add nsw i32 %.0369.lcssa.i, -1
  call void @g_list_free(ptr noundef %i.ga) #13
  %i.kr = call ptr @g_list_first(ptr noundef %.0367.lcssa.i) #13 ; 3 uses
  %.not413559.i = icmp eq ptr %i.kr, null
  br i1 %.not413559.i, label %._crit_edge563.i, label %.lr.ph562.i

bb.aw:                                            ; preds = %._crit_edge510.i, %.lr.ph521.i
  %.0360519.i = phi ptr [ %i.ga, %.lr.ph521.i ], [ %i.mu, %._crit_edge510.i ] ; 3 uses
  %.0361518.i = phi i32 [ 0, %.lr.ph521.i ], [ %i.mo, %._crit_edge510.i ] ; 3 uses
  %.0363517.i = phi i32 [ 0, %.lr.ph521.i ], [ %i.mr, %._crit_edge510.i ] ; 4 uses
  %.0365516.i = phi i32 [ 0, %.lr.ph521.i ], [ %.1366.i, %._crit_edge510.i ] ; 4 uses
  %.0367515.i = phi ptr [ %i.km, %.lr.ph521.i ], [ %.1368.i, %._crit_edge510.i ] ; 3 uses
  %.0369514.i = phi i32 [ 0, %.lr.ph521.i ], [ %i.ms, %._crit_edge510.i ] ; 3 uses
  %.0370513.i = phi i32 [ 0, %.lr.ph521.i ], [ %i.mp, %._crit_edge510.i ] ; 3 uses
  %i.ks = load ptr, ptr %.0360519.i, align 8, !tbaa !75 ; 4 uses
  %.not421497.i = icmp eq ptr %i.ks, null         ; 2 uses
  br i1 %.not421497.i, label %._crit_edge503.i, label %.lr.ph502.i

._crit_edge503.i:                                 ; preds = %.lr.ph502.i, %bb.aw
  %.0359.lcssa.i = phi i32 [ 0, %bb.aw ], [ %.0359..i, %.lr.ph502.i ] ; 5 uses
  %.0358.lcssa.i = phi i32 [ -1, %bb.aw ], [ %i.ld, %.lr.ph502.i ] ; 2 uses
  %i.kt = uitofp nneg i32 %.0363517.i to double
  %i.ku = uitofp nneg i32 %.0359.lcssa.i to double
  %i.kv = fmul reassoc nnan nsz arcp contract afn double %i.ku, 4.000000e-01
  %i.kw = fadd reassoc nsz arcp contract afn double %i.kv, %i.kt
  %i.kx = fcmp reassoc nsz arcp contract afn ogt double %i.kw, %i.kn
  br i1 %i.kx, label %bb.ax, label %.critedge430.i

.lr.ph502.i:                                      ; preds = %bb.aw, %.lr.ph502.i
  %.0357500.i = phi ptr [ %i.lg, %.lr.ph502.i ], [ %i.ks, %bb.aw ] ; 2 uses
  %.0358499.i = phi i32 [ %i.le, %.lr.ph502.i ], [ 0, %bb.aw ]
  %.0359498.i = phi i32 [ %.0359..i, %.lr.ph502.i ], [ 0, %bb.aw ]
  %i.ky = load ptr, ptr %.0357500.i, align 8, !tbaa !75 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  %i.la = load i32, ptr %i.kz, align 8, !tbaa !107
  %.0359..i = call i32 @llvm.smax.i32(i32 %.0359498.i, i32 %i.la) ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ky, i64 12
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !108
  %i.ld = add i32 %i.lc, %.0358499.i              ; 2 uses
  %i.le = add i32 %i.ld, 1
  %i.lf = getelementptr inbounds nuw i8, ptr %.0357500.i, i64 8
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !141 ; 2 uses
  %.not421.i = icmp eq ptr %i.lg, null
  br i1 %.not421.i, label %._crit_edge503.i, label %.lr.ph502.i

bb.ax:                                            ; preds = %._crit_edge503.i
  %i.lh = getelementptr inbounds nuw i8, ptr %.0360519.i, i64 8
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !141
  %.not422.i = icmp eq ptr %i.li, null
  br i1 %.not422.i, label %bb.ay, label %.critedge.i

bb.ay:                                            ; preds = %bb.ax
  %i.lj = add nuw nsw i32 %.0359.lcssa.i, %.0363517.i
  %i.lk = add nsw i32 %.0358.lcssa.i, %.0365516.i
  %i.ll = load <2 x i32>, ptr %i.ho, align 4, !tbaa !71
  %i.lm = sitofp <2 x i32> %i.ll to <2 x float>   ; 2 uses
  %i.ln = call i32 @llvm.smax.i32(i32 %.0369514.i, i32 %i.lj)
  %i.lo = call i32 @llvm.smax.i32(i32 %.0370513.i, i32 %i.lk)
  %i.lp = uitofp nneg i32 %i.lo to float
  %i.lq = call i32 @llvm.smax.i32(i32 %.0369514.i, i32 %.0359.lcssa.i)
  %i.lr = insertelement <2 x i32> poison, i32 %i.lq, i64 0
  %i.ls = insertelement <2 x i32> %i.lr, i32 %i.ln, i64 1
  %i.lt = uitofp <2 x i32> %i.ls to <2 x float>
  %5 = add nsw i32 %.0358.lcssa.i, %.0370513.i
  %i.lu = sitofp reassoc nsz arcp contract afn i32 %5 to float
  %i.lv = insertelement <2 x float> poison, float %i.lu, i64 0
  %i.lw = insertelement <2 x float> %i.lv, float %i.lp, i64 1
  %i.lx = fdiv reassoc nsz arcp contract afn <2 x float> %i.lt, %i.lw ; 3 uses
  %i.ly = shufflevector <2 x float> %i.lm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lz = shufflevector <2 x float> %i.lm, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ma = fdiv reassoc nsz arcp contract afn <2 x float> %i.ly, %i.lz ; 3 uses
  %i.mb = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.lx, %i.ma
  %i.mc = fdiv reassoc nsz arcp contract afn <2 x float> %i.lx, %i.ma
  %i.md = fdiv reassoc nsz arcp contract afn <2 x float> %i.ma, %i.lx
  %i.me = select <2 x i1> %i.mb, <2 x float> %i.mc, <2 x float> %i.md ; 2 uses
  %shift294 = shufflevector <2 x float> %i.me, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.mf = fcmp ogt <2 x float> %i.me, %shift294
  %i.mg = extractelement <2 x i1> %i.mf, i64 0
  br i1 %i.mg, label %.critedge430.i, label %.critedge.i

.critedge.i:                                      ; preds = %bb.ay, %bb.ax
  %i.mh = add nuw nsw i32 %.0365516.i, %.0361518.i
  %i.mi = call ptr @g_list_append(ptr noundef %.0367515.i, ptr noundef null) #13
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 8
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !141
  br label %.critedge430.i

.critedge430.i:                                   ; preds = %.critedge.i, %bb.ay, %._crit_edge503.i
  %.1368.i = phi ptr [ %i.mk, %.critedge.i ], [ %.0367515.i, %bb.ay ], [ %.0367515.i, %._crit_edge503.i ] ; 4 uses
  %.1366.i = phi i32 [ %i.mh, %.critedge.i ], [ %.0365516.i, %bb.ay ], [ %.0365516.i, %._crit_edge503.i ] ; 4 uses
  %.1364.i = phi i32 [ 0, %.critedge.i ], [ %.0363517.i, %bb.ay ], [ %.0363517.i, %._crit_edge503.i ] ; 2 uses
  %.1362.i = phi i32 [ 0, %.critedge.i ], [ %.0361518.i, %bb.ay ], [ %.0361518.i, %._crit_edge503.i ]
  br i1 %.not421497.i, label %._crit_edge510.i, label %.lr.ph509.i

._crit_edge510.i:                                 ; preds = %.lr.ph509.i, %.critedge430.i
  %.0354.lcssa.i = phi i32 [ %.1366.i, %.critedge430.i ], [ %i.ng, %.lr.ph509.i ] ; 2 uses
  %i.ml = load ptr, ptr %.1368.i, align 8, !tbaa !75
  %i.mm = call ptr @g_list_append(ptr noundef %i.ml, ptr noundef %i.ks) #13
  store ptr %i.mm, ptr %.1368.i, align 8, !tbaa !75
  %i.mn = sub nsw i32 %.0354.lcssa.i, %.1366.i
  %i.mo = call i32 @llvm.smax.i32(i32 %.1362.i, i32 %i.mn)
  %i.mp = call i32 @llvm.smax.i32(i32 %.0370513.i, i32 %.0354.lcssa.i) ; 2 uses
  %i.mq = add nuw nsw i32 %.0359.lcssa.i, 1
  %i.mr = add nuw nsw i32 %i.mq, %.1364.i         ; 2 uses
  %i.ms = call i32 @llvm.smax.i32(i32 %.0369514.i, i32 %i.mr) ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %.0360519.i, i64 8
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !141 ; 2 uses
  %.not412.i = icmp eq ptr %i.mu, null
  br i1 %.not412.i, label %._crit_edge522.loopexit.i, label %bb.aw

.lr.ph509.i:                                      ; preds = %.critedge430.i, %.lr.ph509.i
  %.0353508.i = phi ptr [ %i.ni, %.lr.ph509.i ], [ %i.ks, %.critedge430.i ] ; 2 uses
  %.0354507.i = phi i32 [ %i.ng, %.lr.ph509.i ], [ %.1366.i, %.critedge430.i ] ; 2 uses
  %i.mv = load ptr, ptr %.0353508.i, align 8, !tbaa !75 ; 4 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 8
  %i.mx = load i32, ptr %i.mw, align 8, !tbaa !107
  %i.my = sub nsw i32 %.0359.lcssa.i, %i.mx
  %i.mz = sdiv i32 %i.my, 2
  %i.na = add nsw i32 %i.mz, %.1364.i
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mv, i64 16
  store i32 %i.na, ptr %i.nb, align 8, !tbaa !142
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mv, i64 20
  store i32 %.0354507.i, ptr %i.nc, align 4, !tbaa !143
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mv, i64 12
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !108
  %i.nf = add i32 %.0354507.i, 1
  %i.ng = add i32 %i.nf, %i.ne                    ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %.0353508.i, i64 8
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !141 ; 2 uses
  %.not424.i = icmp eq ptr %i.ni, null
  br i1 %.not424.i, label %._crit_edge510.i, label %.lr.ph509.i

._crit_edge563.i:                                 ; preds = %._crit_edge558.i, %._crit_edge522.i
  call void @g_list_free(ptr noundef %i.kr) #13
  %.0564.i = load ptr, ptr %i.bc, align 8, !tbaa !73 ; 2 uses
  %.not414565.i = icmp eq ptr %.0564.i, null
  br i1 %.not414565.i, label %._crit_edge569.i, label %.lr.ph568.i

.lr.ph568.i:                                      ; preds = %._crit_edge563.i
  %i.nj = load <2 x i32>, ptr %i.ho, align 4, !tbaa !71
  %i.nk = sitofp <2 x i32> %i.nj to <2 x float>   ; 3 uses
  %i.nl = extractelement <2 x float> %i.nk, i64 0
  %i.nm = sitofp reassoc nsz arcp contract afn i32 %i.kq to float ; 2 uses
  %i.nn = fdiv reassoc nsz arcp contract afn float %i.nl, %i.nm ; 2 uses
  %i.no = fmul reassoc nsz arcp contract afn float %i.nn, %.0370.lcssa.i
  %i.np = extractelement <2 x float> %i.nk, i64 1 ; 2 uses
  %i.nq = fcmp reassoc nsz arcp contract afn ogt float %i.no, %i.np
  %i.nr = fdiv reassoc nsz arcp contract afn float %i.np, %.0370.lcssa.i
  %spec.select.i132 = select nsz i1 %i.nq, float %i.nr, float %i.nn
  %i.ns = insertelement <2 x float> poison, float %spec.select.i132, i64 0 ; 2 uses
  %i.nt = shufflevector <2 x float> %i.ns, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.nu = insertelement <2 x float> poison, float %i.nm, i64 0
  %i.nv = insertelement <2 x float> %i.nu, float %.0370.lcssa.i, i64 1
  %i.nw = fmul reassoc nsz arcp contract afn <2 x float> %i.nt, %i.nv
  %i.nx = fsub reassoc nsz arcp contract afn <2 x float> %i.nk, %i.nw
  %i.ny = fmul reassoc nsz arcp contract afn <2 x float> %i.nx, splat (float 5.000000e-01)
  %i.nz = fptosi <2 x float> %i.ny to <2 x i32>
  %i.oa = sitofp <2 x i32> %i.nz to <2 x float>
  %.pre590.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !66
  br label %bb.az

.lr.ph562.i:                                      ; preds = %._crit_edge522.i, %._crit_edge558.i
  %.0351560.i = phi ptr [ %i.ow, %._crit_edge558.i ], [ %i.kr, %._crit_edge522.i ] ; 2 uses
  %i.ob = load ptr, ptr %.0351560.i, align 8, !tbaa !75 ; 4 uses
  %.not416535.i = icmp eq ptr %i.ob, null
  br i1 %.not416535.i, label %._crit_edge558.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph562.i, %._crit_edge532.i
  %.0348538.i = phi ptr [ %i.oi, %._crit_edge532.i ], [ %i.ob, %.lr.ph562.i ] ; 2 uses
  %.0349537.i = phi i32 [ %i.og, %._crit_edge532.i ], [ 0, %.lr.ph562.i ]
  %.0350536.i = phi i32 [ %.1.lcssa.i, %._crit_edge532.i ], [ 0, %.lr.ph562.i ] ; 2 uses
  %.0346526.i = load ptr, ptr %.0348538.i, align 8, !tbaa !187 ; 2 uses
  %.not420527.i = icmp eq ptr %.0346526.i, null
  br i1 %.not420527.i, label %._crit_edge532.i, label %.lr.ph531.i

._crit_edge539.i:                                 ; preds = %._crit_edge532.i
  %i.oc = add nuw nsw i32 %i.og, 1
  %i.od = sub nsw i32 %.0369.lcssa.i, %.1.lcssa.i
  %i.oe = sdiv i32 %i.od, 2
  %i.of = insertelement <2 x i32> poison, i32 %i.oe, i64 0
  br label %.lr.ph557.i

._crit_edge532.i:                                 ; preds = %.lr.ph531.i, %.preheader.i
  %.1.lcssa.i = phi i32 [ %.0350536.i, %.preheader.i ], [ %.1..i, %.lr.ph531.i ] ; 2 uses
  %.0347.lcssa.i = phi i32 [ -1, %.preheader.i ], [ %i.os, %.lr.ph531.i ]
  %i.og = call i32 @llvm.smax.i32(i32 %.0349537.i, i32 %.0347.lcssa.i) ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %.0348538.i, i64 8
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !141 ; 2 uses
  %.not416.i = icmp eq ptr %i.oi, null
  br i1 %.not416.i, label %._crit_edge539.i, label %.preheader.i

.lr.ph531.i:                                      ; preds = %.preheader.i, %.lr.ph531.i
  %.0346530.i = phi ptr [ %.0346.i, %.lr.ph531.i ], [ %.0346526.i, %.preheader.i ] ; 2 uses
  %.0347529.i = phi i32 [ %i.ot, %.lr.ph531.i ], [ 0, %.preheader.i ]
  %.1528.i = phi i32 [ %.1..i, %.lr.ph531.i ], [ %.0350536.i, %.preheader.i ]
  %i.oj = load ptr, ptr %.0346530.i, align 8, !tbaa !75 ; 3 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 16
  %i.ol = load i32, ptr %i.ok, align 8, !tbaa !142
  %i.om = getelementptr inbounds nuw i8, ptr %i.oj, i64 8
  %i.on = load i32, ptr %i.om, align 8, !tbaa !107
  %i.oo = add i32 %i.ol, 1
  %i.op = add i32 %i.oo, %i.on
  %.1..i = call i32 @llvm.smax.i32(i32 %.1528.i, i32 %i.op) ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.oj, i64 12
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !108
  %i.os = add i32 %i.or, %.0347529.i              ; 2 uses
  %i.ot = add i32 %i.os, 1
  %i.ou = getelementptr inbounds nuw i8, ptr %.0346530.i, i64 8
  %.0346.i = load ptr, ptr %i.ou, align 8, !tbaa !187 ; 2 uses
  %.not420.i = icmp eq ptr %.0346.i, null
  br i1 %.not420.i, label %._crit_edge532.i, label %.lr.ph531.i

._crit_edge558.i:                                 ; preds = %._crit_edge553.i, %.lr.ph562.i
  call void @g_list_free(ptr noundef %i.ob) #13
  %i.ov = getelementptr inbounds nuw i8, ptr %.0351560.i, i64 8
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !141 ; 2 uses
  %.not413.i = icmp eq ptr %i.ow, null
  br i1 %.not413.i, label %._crit_edge563.i, label %.lr.ph562.i

.lr.ph557.i:                                      ; preds = %._crit_edge553.i, %._crit_edge539.i
  %.0345555.i = phi ptr [ %i.pj, %._crit_edge553.i ], [ %i.ob, %._crit_edge539.i ] ; 2 uses
  %i.ox = load ptr, ptr %.0345555.i, align 8, !tbaa !75 ; 4 uses
  %.not418542.i = icmp eq ptr %i.ox, null
  br i1 %.not418542.i, label %._crit_edge553.i, label %.lr.ph546.i

.lr.ph552.preheader.i:                            ; preds = %.lr.ph546.i
  %i.oy = sub i32 %i.oc, %i.pf
  %i.oz = sdiv i32 %i.oy, 2
  %i.pa = insertelement <2 x i32> %i.of, i32 %i.oz, i64 1
  br label %.lr.ph552.i

.lr.ph546.i:                                      ; preds = %.lr.ph557.i, %.lr.ph546.i
  %.0343544.i = phi ptr [ %i.ph, %.lr.ph546.i ], [ %i.ox, %.lr.ph557.i ] ; 2 uses
  %.0344543.i = phi i32 [ %i.pf, %.lr.ph546.i ], [ 0, %.lr.ph557.i ]
  %i.pb = load ptr, ptr %.0343544.i, align 8, !tbaa !75
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 12
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !108
  %i.pe = add i32 %.0344543.i, 1
  %i.pf = add i32 %i.pe, %i.pd                    ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %.0343544.i, i64 8
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !141 ; 2 uses
  %.not418.i = icmp eq ptr %i.ph, null
  br i1 %.not418.i, label %.lr.ph552.preheader.i, label %.lr.ph546.i

._crit_edge553.i:                                 ; preds = %.lr.ph552.i, %.lr.ph557.i
  call void @g_list_free(ptr noundef %i.ox) #13
  %i.pi = getelementptr inbounds nuw i8, ptr %.0345555.i, i64 8
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !141 ; 2 uses
  %.not417.i = icmp eq ptr %i.pj, null
  br i1 %.not417.i, label %._crit_edge558.i, label %.lr.ph557.i

.lr.ph552.i:                                      ; preds = %.lr.ph552.i, %.lr.ph552.preheader.i
  %.0342550.i = phi ptr [ %i.pp, %.lr.ph552.i ], [ %i.ox, %.lr.ph552.preheader.i ] ; 2 uses
  %i.pk = load ptr, ptr %.0342550.i, align 8, !tbaa !75
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 16 ; 2 uses
  %i.pm = load <2 x i32>, ptr %i.pl, align 8, !tbaa !71
  %i.pn = add nsw <2 x i32> %i.pm, %i.pa
  store <2 x i32> %i.pn, ptr %i.pl, align 8, !tbaa !71
  %i.po = getelementptr inbounds nuw i8, ptr %.0342550.i, i64 8
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !141 ; 2 uses
  %.not419.i = icmp eq ptr %i.pp, null
  br i1 %.not419.i, label %._crit_edge553.i, label %.lr.ph552.i

._crit_edge569.i:                                 ; preds = %bb.bb, %._crit_edge563.i
end_hunk_0
