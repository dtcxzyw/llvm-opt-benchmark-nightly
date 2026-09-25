Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dsytf2_rk?download=true
begin_hunk_0_@dsytf2_rk_:bb.a
  %i.cx = fcmp ugt double %.1, %.1739
  %or.cond = and i1 %i.cw, %i.cx
  br i1 %or.cond, label %.preheader926, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not825 = icmp eq i32 %.0758, %.0766941
  br i1 %.not825, label %.thread848, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cy = icmp sgt i32 %.0758, 1
  br i1 %i.cy, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cz = add nsw i32 %.0758, -1
  store i32 %i.cz, ptr %i.a, align 4, !tbaa !28
  %i.da = sext i32 %i.aj to i64
  %i.db = getelementptr [8 x i8], ptr %i.f, i64 %i.da
  %i.dc = getelementptr i8, ptr %i.db, i64 8
  %i.dd = mul nsw i32 %.0758, %i.d
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr [8 x i8], ptr %i.f, i64 %i.de
  %i.dg = getelementptr i8, ptr %i.df, i64 8
  call void @dswap_(ptr noundef nonnull %i.a, ptr noundef %i.dc, ptr noundef nonnull @c__1, ptr noundef %i.dg, ptr noundef nonnull @c__1) #4
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.dh = add nsw i32 %.0766941, -1
  %i.di = icmp slt i32 %.0758, %i.dh
  br i1 %i.di, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dj = xor i32 %.0758, -1
  %i.dk = add i32 %.0766941, %i.dj
  store i32 %i.dk, ptr %i.a, align 4, !tbaa !28
  %i.dl = add nsw i32 %.0758, 1                   ; 2 uses
  %i.dm = add nsw i32 %i.dl, %i.aj
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.dn
  %i.dp = mul nsw i32 %i.dl, %i.d
  %i.dq = add nsw i32 %i.dp, %.0758
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.dr
  call void @dswap_(ptr noundef nonnull %i.a, ptr noundef %i.do, ptr noundef nonnull @c__1, ptr noundef %i.ds, ptr noundef nonnull %3) #4
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.dt = load double, ptr %i.am, align 8, !tbaa !30
  %i.du = mul i32 %.0758, %i.u
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.dv ; 2 uses
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !30
  store double %i.dx, ptr %i.am, align 8, !tbaa !30
  store double %i.dt, ptr %i.dw, align 8, !tbaa !30
  %i.dy = load i32, ptr %1, align 4, !tbaa !28    ; 2 uses
  %i.dz = icmp slt i32 %.0766941, %i.dy
  br i1 %i.dz, label %bb.z, label %.thread848

bb.z:                                             ; preds = %bb.y
  %i.ea = sub nuw nsw i32 %i.dy, %.0766941
  store i32 %i.ea, ptr %i.a, align 4, !tbaa !28
  %i.eb = add nuw nsw i32 %.0766941, 1
  %i.ec = mul nsw i32 %i.eb, %i.d                 ; 2 uses
  %i.ed = add nsw i32 %i.ec, %.0766941
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.ee
  %i.eg = add nsw i32 %.0758, %i.ec
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.eh
  call void @dswap_(ptr noundef nonnull %i.a, ptr noundef %i.ef, ptr noundef nonnull %3, ptr noundef %i.ei, ptr noundef nonnull %3) #4
  br label %.thread848

.thread848:                                       ; preds = %bb.r, %bb.n, %bb.y, %bb.z, %bb.t
  %i.ej = phi i1 [ false, %bb.n ], [ true, %bb.y ], [ true, %bb.z ], [ true, %bb.t ], [ false, %bb.r ]
  %.3745861 = phi i32 [ %.0766941, %bb.n ], [ %.2784, %bb.y ], [ %.2784, %bb.z ], [ %.2784, %bb.t ], [ %.2784, %bb.r ] ; 15 uses
  %i.ek = phi i1 [ true, %bb.n ], [ false, %bb.y ], [ false, %bb.z ], [ false, %bb.t ], [ true, %bb.r ]
  %.2752860.neg = phi i32 [ -1, %bb.n ], [ -2, %bb.y ], [ -2, %bb.z ], [ -2, %bb.t ], [ -1, %bb.r ]
  %.2760859 = phi i32 [ %.0766941, %bb.n ], [ %.0758, %bb.y ], [ %.0758, %bb.z ], [ %.0766941, %bb.t ], [ %.0758, %bb.r ]
  %.4776858 = phi i32 [ %.0772940, %bb.n ], [ %.3775, %bb.y ], [ %.3775, %bb.z ], [ %.3775, %bb.t ], [ %.3775, %bb.r ] ; 4 uses
  %.4786857 = phi i32 [ %.1783, %bb.n ], [ %.2784, %bb.y ], [ %.2784, %bb.z ], [ %.2784, %bb.t ], [ %.2784, %bb.r ] ; 4 uses
  %i.el = add nsw i32 %.2752860.neg, %.0766941    ; 4 uses
  %i.em = add nsw i32 %i.el, 1                    ; 5 uses
  %.not826 = icmp eq i32 %.3745861, %i.em
  br i1 %.not826, label %bb.ai, label %bb.aa

bb.aa:                                            ; preds = %.thread848
  %i.en = icmp sgt i32 %.3745861, 1
  br i1 %i.en, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.eo = add nsw i32 %.3745861, -1
  store i32 %i.eo, ptr %i.a, align 4, !tbaa !28
  %i.ep = mul nsw i32 %i.em, %i.d
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr [8 x i8], ptr %i.f, i64 %i.eq
  %i.es = getelementptr i8, ptr %i.er, i64 8
  %i.et = mul nsw i32 %.3745861, %i.d
  %i.eu = sext i32 %i.et to i64
  %i.ev = getelementptr [8 x i8], ptr %i.f, i64 %i.eu
  %i.ew = getelementptr i8, ptr %i.ev, i64 8
  call void @dswap_(ptr noundef nonnull %i.a, ptr noundef %i.es, ptr noundef nonnull @c__1, ptr noundef %i.ew, ptr noundef nonnull @c__1) #4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ex = icmp sgt i32 %i.el, 0
  %i.ey = icmp slt i32 %.3745861, %i.el
  %or.cond832 = and i1 %i.ex, %i.ey
  br i1 %or.cond832, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ez = sub i32 %i.el, %.3745861
  store i32 %i.ez, ptr %i.a, align 4, !tbaa !28
  %i.fa = add nsw i32 %.3745861, 1                ; 2 uses
  %i.fb = mul nsw i32 %i.em, %i.d
  %i.fc = add nsw i32 %i.fb, %i.fa
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.fd
  %i.ff = mul nsw i32 %i.fa, %i.d
  %i.fg = add nsw i32 %i.ff, %.3745861
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.fh
  call void @dswap_(ptr noundef nonnull %i.a, ptr noundef %i.fe, ptr noundef nonnull @c__1, ptr noundef %i.fi, ptr noundef nonnull %3) #4
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.fj = mul i32 %i.em, %i.u
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.fk ; 2 uses
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !30
  %i.fn = mul i32 %.3745861, %i.u
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.fo ; 2 uses
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !30
  store double %i.fq, ptr %i.fl, align 8, !tbaa !30
  store double %i.fm, ptr %i.fp, align 8, !tbaa !30
  br i1 %i.ej, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.fr = add nsw i32 %.0766941, -1
  %i.fs = add nsw i32 %i.fr, %i.aj
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.ft ; 2 uses
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !30
  %i.fw = add nsw i32 %.3745861, %i.aj
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.fx ; 2 uses
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !30
  store double %i.fz, ptr %i.fu, align 8, !tbaa !30
  store double %i.fv, ptr %i.fy, align 8, !tbaa !30
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.ga = load i32, ptr %1, align 4, !tbaa !28    ; 2 uses
  %i.gb = icmp slt i32 %.0766941, %i.ga
  br i1 %i.gb, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.gc = sub nuw nsw i32 %i.ga, %.0766941
  store i32 %i.gc, ptr %i.a, align 4, !tbaa !28
  %i.gd = add nuw nsw i32 %.0766941, 1
  %i.ge = mul nsw i32 %i.gd, %i.d                 ; 2 uses
  %i.gf = add nsw i32 %i.em, %i.ge
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.gg
  %i.gi = add nsw i32 %.3745861, %i.ge
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.gj
  call void @dswap_(ptr noundef nonnull %i.a, ptr noundef %i.gh, ptr noundef nonnull %3, ptr noundef %i.gk, ptr noundef nonnull %3) #4
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah, %.thread848
  br i1 %i.ek, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  br i1 %.not822, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gl = load double, ptr %i.am, align 8, !tbaa !30 ; 7 uses
  %i.gm = call double @llvm.fabs.f64(double %i.gl)
  %i.gn = fcmp ult double %i.gm, %i.r
  br i1 %i.gn, label %iter.check, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.go = fdiv double 1.000000e+00, %i.gl         ; 2 uses
  store double %i.go, ptr %i.c, align 8, !tbaa !30
  %i.gp = add nsw i32 %.0766941, -1               ; 2 uses
  store i32 %i.gp, ptr %i.a, align 4, !tbaa !28
  %i.gq = fneg double %i.go
  store double %i.gq, ptr %i.b, align 8, !tbaa !30
  %i.gr = sext i32 %i.aj to i64
  %i.gs = getelementptr [8 x i8], ptr %i.f, i64 %i.gr
  %i.gt = getelementptr i8, ptr %i.gs, i64 8      ; 2 uses
  call void @dsyr_(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %i.gt, ptr noundef nonnull @c__1, ptr noundef nonnull %2, ptr noundef nonnull %3) #4
  store i32 %i.gp, ptr %i.a, align 4, !tbaa !28
  call void @dscal_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef %i.gt, ptr noundef nonnull @c__1) #4
  br label %.sink.split

iter.check:                                       ; preds = %bb.ak
  store double %i.gl, ptr %i.c, align 8, !tbaa !30
  %i.gu = add nsw i32 %.0766941, -1
  %i.gv = sext i32 %i.aj to i64                   ; 2 uses
  %umax = call i32 @llvm.umax.i32(i32 %.0766941, i32 2)
  %wide.trip.count = zext nneg i32 %umax to i64   ; 2 uses
  %invariant.gep1041 = getelementptr [8 x i8], ptr %i.f, i64 %i.gv ; 3 uses
  %i.gw = add nsw i64 %wide.trip.count, -1        ; 5 uses
  %min.iters.check = icmp samesign ult i32 %.0766941, 5
  br i1 %min.iters.check, label %.lr.ph938.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1067 = icmp samesign ult i32 %.0766941, 17
  br i1 %min.iters.check1067, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.gx = and i64 %i.gw, 12
  %n.vec = and i64 %i.gw, -16                     ; 4 uses
  %i.gy = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.gl, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gz = getelementptr [8 x i8], ptr %invariant.gep1041, i64 %index ; 4 uses
  %i.ha = getelementptr i8, ptr %i.gz, i64 8      ; 2 uses
  %i.hb = getelementptr i8, ptr %i.gz, i64 40     ; 2 uses
  %i.hc = getelementptr i8, ptr %i.gz, i64 72     ; 2 uses
  %i.hd = getelementptr i8, ptr %i.gz, i64 104    ; 2 uses
  %wide.load = load <4 x double>, ptr %i.ha, align 8, !tbaa !30
  %wide.load1068 = load <4 x double>, ptr %i.hb, align 8, !tbaa !30
  %wide.load1069 = load <4 x double>, ptr %i.hc, align 8, !tbaa !30
  %wide.load1070 = load <4 x double>, ptr %i.hd, align 8, !tbaa !30
  %i.he = fdiv <4 x double> %wide.load, %broadcast.splat
  %i.hf = fdiv <4 x double> %wide.load1068, %broadcast.splat
  %i.hg = fdiv <4 x double> %wide.load1069, %broadcast.splat
  %i.hh = fdiv <4 x double> %wide.load1070, %broadcast.splat
  store <4 x double> %i.he, ptr %i.ha, align 8, !tbaa !30
  store <4 x double> %i.hf, ptr %i.hb, align 8, !tbaa !30
  store <4 x double> %i.hg, ptr %i.hc, align 8, !tbaa !30
  store <4 x double> %i.hh, ptr %i.hd, align 8, !tbaa !30
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.hi = icmp eq i64 %index.next, %n.vec
  br i1 %i.hi, label %middle.block, label %vector.body, !llvm.loop !8

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gw, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.gx, 0
  br i1 %min.epilog.iters.check, label %.lr.ph938.preheader, label %vec.epilog.ph, !prof !34

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1071 = and i64 %i.gw, -4                  ; 3 uses
  %i.hj = or disjoint i64 %n.vec1071, 1
  %broadcast.splatinsert1072 = insertelement <4 x double> poison, double %i.gl, i64 0
  %broadcast.splat1073 = shufflevector <4 x double> %broadcast.splatinsert1072, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1074 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1076, %vec.epilog.vector.body ] ; 2 uses
  %i.hk = getelementptr [8 x i8], ptr %invariant.gep1041, i64 %index1074
  %i.hl = getelementptr i8, ptr %i.hk, i64 8      ; 2 uses
  %wide.load1075 = load <4 x double>, ptr %i.hl, align 8, !tbaa !30
  %i.hm = fdiv <4 x double> %wide.load1075, %broadcast.splat1073
  store <4 x double> %i.hm, ptr %i.hl, align 8, !tbaa !30
  %index.next1076 = add nuw i64 %index1074, 4     ; 2 uses
  %i.hn = icmp eq i64 %index.next1076, %n.vec1071
  br i1 %i.hn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !9

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1077 = icmp eq i64 %i.gw, %n.vec1071
  br i1 %cmp.n1077, label %._crit_edge, label %.lr.ph938.preheader

.lr.ph938.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv975.ph = phi i64 [ 1, %iter.check ], [ %i.gy, %vec.epilog.iter.check ], [ %i.hj, %vec.epilog.middle.block ]
  br label %.lr.ph938

.lr.ph938:                                        ; preds = %.lr.ph938.preheader, %.lr.ph938
  %indvars.iv975 = phi i64 [ %indvars.iv.next976, %.lr.ph938 ], [ %indvars.iv975.ph, %.lr.ph938.preheader ] ; 2 uses
  %gep1042 = getelementptr [8 x i8], ptr %invariant.gep1041, i64 %indvars.iv975 ; 2 uses
  %i.ho = load double, ptr %gep1042, align 8, !tbaa !30
  %i.hp = fdiv double %i.ho, %i.gl
  store double %i.hp, ptr %gep1042, align 8, !tbaa !30
  %indvars.iv.next976 = add nuw nsw i64 %indvars.iv975, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next976, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph938, !llvm.loop !10

._crit_edge:                                      ; preds = %.lr.ph938, %vec.epilog.middle.block, %middle.block
  store i32 %i.gu, ptr %i.a, align 4, !tbaa !28
  %i.hq = fneg double %i.gl
  store double %i.hq, ptr %i.b, align 8, !tbaa !30
  %i.hr = getelementptr [8 x i8], ptr %i.f, i64 %i.gv
  %i.hs = getelementptr i8, ptr %i.hr, i64 8
  call void @dsyr_(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %i.hs, ptr noundef nonnull @c__1, ptr noundef nonnull %2, ptr noundef nonnull %3) #4
  br label %.sink.split

bb.am:                                            ; preds = %bb.ai
  %7 = icmp samesign ugt i32 %.0766941, 2
  %i.ht = add nsw i32 %.0766941, -1               ; 4 uses
  %i.hu = add nsw i32 %i.ht, %i.aj
  %i.hv = sext i32 %i.hu to i64                   ; 2 uses
  br i1 %7, label %.lr.ph.preheader, label %.loopexit925

.lr.ph.preheader:                                 ; preds = %bb.am
  %i.hw = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.hv
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !30 ; 2 uses
  %i.hy = mul nsw i32 %i.ht, %i.d                 ; 2 uses
  %i.hz = add nsw i32 %i.hy, %i.ht
  %i.ia = sext i32 %i.hz to i64
  %i.ib = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.ia
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !30
  %i.id = load double, ptr %i.am, align 8, !tbaa !30
  %i.ie = insertelement <2 x double> poison, double %i.id, i64 0
  %i.if = insertelement <2 x double> %i.ie, double %i.ic, i64 1
  %i.ig = insertelement <2 x double> poison, double %i.hx, i64 0
  %i.ih = shufflevector <2 x double> %i.ig, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ii = fdiv <2 x double> %i.if, %i.ih          ; 3 uses
  %i.ij = extractelement <2 x double> %i.ii, i64 0 ; 2 uses
  store double %i.ij, ptr %i.c, align 8, !tbaa !30
  %i.ik = extractelement <2 x double> %i.ii, i64 1
  %i.il = call double @llvm.fmuladd.f64(double %i.ij, double %i.ik, double -1.000000e+00)
  %i.im = fdiv double 1.000000e+00, %i.il
  %i.in = add nsw i32 %.0766941, -2
  %i.io = zext i32 %i.in to i64                   ; 5 uses
  %i.ip = sext i32 %i.aj to i64                   ; 4 uses
  %i.iq = sext i32 %i.hy to i64                   ; 4 uses
  %invariant.gep1037 = getelementptr [8 x i8], ptr %i.f, i64 %i.iq
  %invariant.gep1039 = getelementptr [8 x i8], ptr %i.f, i64 %i.ip
  %invariant.gep1033 = getelementptr [8 x i8], ptr %i.f, i64 %i.ip ; 2 uses
  %invariant.gep1035 = getelementptr [8 x i8], ptr %i.f, i64 %i.iq ; 2 uses
  %i.ir = mul i64 %i.x, %i.io
  %i.is = mul i64 %i.aa, %i.io
  %i.it = add nsw i64 %i.e, %i.ip
  %i.iu = shl nsw i64 %i.it, 3
  %scevgep1081 = getelementptr i8, ptr %2, i64 %i.iu
  %i.iv = shl nsw i64 %i.ip, 3
  %i.iw = shl nuw nsw i64 %i.io, 3                ; 2 uses
  %i.ix = add nsw i64 %i.e, %i.iq
  %i.iy = shl nsw i64 %i.ix, 3
  %scevgep1084 = getelementptr i8, ptr %2, i64 %i.iy
  %i.iz = shl nsw i64 %i.iq, 3
  %i.ja = add nuw nsw i64 %i.io, 1
  %i.jb = insertelement <2 x double> poison, double %i.im, i64 0
  %i.jc = shufflevector <2 x double> %i.jb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jd = getelementptr i8, ptr %i.ad, i64 %i.iz
  %i.je = getelementptr i8, ptr %i.jd, i64 %i.iw
  %i.jf = getelementptr i8, ptr %i.af, i64 %i.iv
  %i.jg = getelementptr i8, ptr %i.jf, i64 %i.iw
  %i.jh = getelementptr i8, ptr %i.ah, i64 %i.is
  %i.ji = getelementptr i8, ptr %i.ai, i64 %i.ir
  %broadcast.splatinsert1097 = insertelement <4 x double> poison, double %i.hx, i64 0
  %broadcast.splat1098 = shufflevector <4 x double> %broadcast.splatinsert1097, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit1181
  %indvar = phi i64 [ 0, %.lr.ph.preheader ], [ %indvar.next, %.loopexit1181 ] ; 5 uses
  %indvars.iv = phi i64 [ %i.io, %.lr.ph.preheader ], [ %indvars.iv.next, %.loopexit1181 ] ; 11 uses
  %i.jj = sub i64 %i.ja, %indvar
  %gep1038 = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %indvars.iv ; 2 uses
  %i.jk = load double, ptr %gep1038, align 8, !tbaa !30 ; 2 uses
  %gep1040 = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %indvars.iv ; 2 uses
  %i.jl = load double, ptr %gep1040, align 8, !tbaa !30 ; 2 uses
  %i.jm = insertelement <2 x double> poison, double %i.jl, i64 0
  %i.jn = insertelement <2 x double> %i.jm, double %i.jk, i64 1
  %i.jo = fneg <2 x double> %i.jn
  %i.jp = insertelement <2 x double> poison, double %i.jk, i64 0
  %i.jq = insertelement <2 x double> %i.jp, double %i.jl, i64 1
  %i.jr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ii, <2 x double> %i.jq, <2 x double> %i.jo)
  %i.js = fmul <2 x double> %i.jc, %i.jr          ; 5 uses
  %i.jt = mul nsw i64 %indvars.iv, %i.v
  %invariant.gep = getelementptr [8 x i8], ptr %i.f, i64 %i.jt ; 2 uses
  %i.ju = icmp ne i64 %indvars.iv, 0
  %.neg = sext i1 %i.ju to i64
  %i.jv = add i64 %i.jj, %.neg                    ; 3 uses
  %min.iters.check1090 = icmp ult i64 %i.jv, 4
  br i1 %min.iters.check1090, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.jw = mul nsw i64 %indvar, -8                 ; 2 uses
  %scevgep1086 = getelementptr i8, ptr %i.je, i64 %i.jw
  %.not1182 = icmp eq i64 %indvars.iv, 0
  %i.jx = select i1 %.not1182, i64 0, i64 8       ; 3 uses
  %scevgep1085 = getelementptr i8, ptr %scevgep1084, i64 %i.jx
  %scevgep1083 = getelementptr i8, ptr %i.jg, i64 %i.jw
  %scevgep1082 = getelementptr i8, ptr %scevgep1081, i64 %i.jx
  %i.jy = mul i64 %i.ab, %indvar
  %scevgep1080 = getelementptr i8, ptr %i.jh, i64 %i.jy ; 2 uses
  %i.jz = mul i64 %i.y, %indvar
  %scevgep = getelementptr i8, ptr %i.ji, i64 %i.jz
  %scevgep1079 = getelementptr i8, ptr %scevgep, i64 %i.jx ; 2 uses
  %bound0 = icmp ult ptr %scevgep1079, %scevgep1083
  %bound1 = icmp ult ptr %scevgep1082, %scevgep1080
  %found.conflict = and i1 %bound0, %bound1
  %bound01087 = icmp ult ptr %scevgep1079, %scevgep1086
  %bound11088 = icmp ult ptr %scevgep1085, %scevgep1080
  %found.conflict1089 = and i1 %bound01087, %bound11088
  %conflict.rdx = or i1 %found.conflict, %found.conflict1089
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph1091

vector.ph1091:                                    ; preds = %vector.memcheck
  %n.vec1092 = and i64 %i.jv, -4                  ; 3 uses
  %i.ka = sub i64 %indvars.iv, %n.vec1092
  %i.kb = shufflevector <2 x double> %i.js, <2 x double> poison, <4 x i32> zeroinitializer
  %i.kc = shufflevector <2 x double> %i.js, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vector.body1099

vector.body1099:                                  ; preds = %vector.body1099, %vector.ph1091
  %index1100 = phi i64 [ 0, %vector.ph1091 ], [ %index.next1107, %vector.body1099 ] ; 2 uses
  %i.kd = sub i64 %indvars.iv, %index1100         ; 3 uses
  %i.ke = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.kd
  %i.kf = getelementptr i8, ptr %i.ke, i64 -24    ; 2 uses
  %wide.load1101 = load <4 x double>, ptr %i.kf, align 8, !tbaa !30, !alias.scope !35, !noalias !36
  %i.kg = getelementptr [8 x i8], ptr %invariant.gep1033, i64 %i.kd
  %i.kh = getelementptr i8, ptr %i.kg, i64 -24
  %wide.load1102 = load <4 x double>, ptr %i.kh, align 8, !tbaa !30, !alias.scope !37
  %i.ki = fneg <4 x double> %wide.load1102
  %i.kj = fdiv <4 x double> %i.ki, %broadcast.splat1098
  %i.kk = getelementptr [8 x i8], ptr %invariant.gep1035, i64 %i.kd
  %i.kl = getelementptr i8, ptr %i.kk, i64 -24
  %wide.load1104 = load <4 x double>, ptr %i.kl, align 8, !tbaa !30, !alias.scope !38
  %i.km = fneg <4 x double> %wide.load1104
  %i.kn = fdiv <4 x double> %i.km, %broadcast.splat1098
  %i.ko = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.kj, <4 x double> %i.kc, <4 x double> %wide.load1101)
  %reverse1106 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.kn, <4 x double> %i.kb, <4 x double> %i.ko)
  store <4 x double> %reverse1106, ptr %i.kf, align 8, !tbaa !30, !alias.scope !35, !noalias !36
  %index.next1107 = add nuw i64 %index1100, 4     ; 2 uses
  %i.kp = icmp eq i64 %index.next1107, %n.vec1092
  br i1 %i.kp, label %middle.block1108, label %vector.body1099, !llvm.loop !15

middle.block1108:                                 ; preds = %vector.body1099
  %cmp.n1109 = icmp eq i64 %i.jv, %n.vec1092
  br i1 %cmp.n1109, label %.loopexit1181, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block1108
  %indvars.iv971.ph = phi i64 [ %indvars.iv, %vector.memcheck ], [ %indvars.iv, %.lr.ph ], [ %i.ka, %middle.block1108 ]
  %i.kq = extractelement <2 x double> %i.js, i64 1
  %i.kr = extractelement <2 x double> %i.js, i64 0
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv971 = phi i64 [ %indvars.iv.next972, %scalar.ph ], [ %indvars.iv971.ph, %scalar.ph.preheader ] ; 5 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv971 ; 2 uses
  %i.ks = load double, ptr %gep, align 8, !tbaa !30
  %gep1034 = getelementptr [8 x i8], ptr %invariant.gep1033, i64 %indvars.iv971
  %i.kt = load double, ptr %gep1034, align 8, !tbaa !30
  %gep1036 = getelementptr [8 x i8], ptr %invariant.gep1035, i64 %indvars.iv971
  %i.ku = load double, ptr %gep1036, align 8, !tbaa !30
  %i.kv = insertelement <2 x double> poison, double %i.kt, i64 0
  %i.kw = insertelement <2 x double> %i.kv, double %i.ku, i64 1
  %i.kx = fneg <2 x double> %i.kw
  %i.ky = fdiv <2 x double> %i.kx, %i.ih          ; 2 uses
  %i.kz = extractelement <2 x double> %i.ky, i64 0
  %i.la = call double @llvm.fmuladd.f64(double %i.kz, double %i.kq, double %i.ks)
  %i.lb = extractelement <2 x double> %i.ky, i64 1
  %i.lc = call double @llvm.fmuladd.f64(double %i.lb, double %i.kr, double %i.la)
  store double %i.lc, ptr %gep, align 8, !tbaa !30
  %indvars.iv.next972 = add nsw i64 %indvars.iv971, -1
  %i.ld = icmp samesign ugt i64 %indvars.iv971, 1
  br i1 %i.ld, label %scalar.ph, label %.loopexit1181, !llvm.loop !16

.loopexit1181:                                    ; preds = %scalar.ph, %middle.block1108
  %i.le = fdiv <2 x double> %i.js, %i.ih          ; 2 uses
  %i.lf = extractelement <2 x double> %i.le, i64 1
  store double %i.lf, ptr %gep1040, align 8, !tbaa !30
  %i.lg = extractelement <2 x double> %i.le, i64 0
  store double %i.lg, ptr %gep1038, align 8, !tbaa !30
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.lh = icmp sgt i64 %indvars.iv, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.lh, label %.lr.ph, label %.loopexit925, !llvm.loop !17

.sink.split:                                      ; preds = %bb.al, %._crit_edge, %bb.m
  %.5787.ph.ph = phi i32 [ %.1783, %bb.m ], [ %.4786857, %._crit_edge ], [ %.4786857, %bb.al ]
  %.5777.ph.ph = phi i32 [ %.0772940, %bb.m ], [ %.4776858, %._crit_edge ], [ %.4776858, %bb.al ]
  %.4746.ph.ph = phi i32 [ %.0766941, %bb.m ], [ %.3745861, %._crit_edge ], [ %.3745861, %bb.al ]
  %i.li = zext nneg i32 %.0766941 to i64
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.li
  store double 0.000000e+00, ptr %i.lj, align 8, !tbaa !30
  br label %bb.an

bb.an:                                            ; preds = %.sink.split, %bb.m, %bb.aj
  %.5787.ph = phi i32 [ %.4786857, %bb.aj ], [ %.1783, %bb.m ], [ %.5787.ph.ph, %.sink.split ]
  %.5777.ph = phi i32 [ %.4776858, %bb.aj ], [ %.0772940, %bb.m ], [ %.5777.ph.ph, %.sink.split ]
  %.4746.ph = phi i32 [ %.3745861, %bb.aj ], [ 1, %bb.m ], [ %.4746.ph.ph, %.sink.split ]
  %i.lk = zext nneg i32 %.0766941 to i64
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.lk
  store i32 %.4746.ph, ptr %i.ll, align 4, !tbaa !28
  br label %bb.ao

.loopexit925:                                     ; preds = %.loopexit1181, %bb.am
  %i.lm = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.hv ; 2 uses
  %i.ln = load double, ptr %i.lm, align 8, !tbaa !30
  %i.lo = zext nneg i32 %.0766941 to i64          ; 2 uses
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.lo
  store double %i.ln, ptr %i.lp, align 8, !tbaa !30
  %i.lq = zext nneg i32 %i.ht to i64
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.lq
  store double 0.000000e+00, ptr %i.lr, align 8, !tbaa !30
end_hunk_0
