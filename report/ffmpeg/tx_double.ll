Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/tx_double?download=true
inline.NumInlined: 21
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 33
begin_hunk_0_@ff_tx_rdft_r2i_mod2_double_c:bb.a
  %indvars.iv.next97.prol = add nuw nsw i64 %indvars.iv96.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph93.prol.loopexit, label %.lr.ph93.prol, !llvm.loop !138

.lr.ph93.prol.loopexit:                           ; preds = %.lr.ph93.prol, %.lr.ph93.preheader102
  %indvars.iv96.unr = phi i64 [ %indvars.iv96.ph, %.lr.ph93.preheader102 ], [ %indvars.iv.next97.prol, %.lr.ph93.prol ]
  %i.bn = icmp ult i64 %i.bh, 3
  br i1 %i.bn, label %._crit_edge, label %.lr.ph93

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 7 uses
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bp = sub nsw i64 %i.al, %indvars.iv
  %i.bq = getelementptr inbounds [16 x i8], ptr %1, i64 %i.bp ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.br = load double, ptr %i.ab, align 8, !tbaa !24
  %i.bs = load double, ptr %i.ad, align 8, !tbaa !24
  %i.bt = load double, ptr %i.af, align 8, !tbaa !24
  %i.bu = load <2 x double>, ptr %i.bo, align 8, !tbaa !24
  %.sroa.46.0.copyload = load double, ptr %.sroa.46.0..sroa_idx, align 8, !tbaa !24
  %i.bv = load <2 x double>, ptr %i.bq, align 8, !tbaa !24
  %.sroa.4.0.copyload = load double, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !24
  %i.bw = fsub nsz <2 x double> %i.bu, %i.bv      ; 2 uses
  %i.bx = extractelement <2 x double> %i.bw, i64 1
  %i.by = fmul nsz double %i.br, %i.bx            ; 2 uses
  %i.bz = fadd nsz double %.sroa.46.0.copyload, %.sroa.4.0.copyload
  %i.ca = fmul nsz double %i.bz, %i.bs
  %i.cb = extractelement <2 x double> %i.bw, i64 0
  %i.cc = fmul nsz double %i.cb, %i.bt
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !24
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !24
  %i.ch = fmul nsz double %i.cc, %i.cg
  %i.ci = tail call nsz double @llvm.fmuladd.f64(double %i.ca, double %i.ce, double %i.ch) ; 2 uses
  %i.cj = fsub nsz double %i.ci, %i.by
  %i.ck = getelementptr [8 x i8], ptr %1, i64 %indvars.iv
  %i.cl = getelementptr i8, ptr %i.ck, i64 -8
  store double %i.cj, ptr %i.cl, align 8, !tbaa !24
  %i.cm = fadd nsz double %i.by, %i.ci
  %i.cn = trunc i64 %indvars.iv to i32
  %i.co = xor i32 %i.cn, -1
  %i.cp = add i32 %i.a, %i.co
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds [8 x i8], ptr %1, i64 %i.cq
  store double %i.cm, ptr %i.cr, align 8, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph93.preheader, label %.lr.ph, !llvm.loop !139

._crit_edge:                                      ; preds = %.lr.ph93.prol.loopexit, %.lr.ph93, %middle.block, %bb.a
  %i.cs = fsub nsz double %.sroa.423.0.copyload, %.sroa.420.0.copyload
  %i.ct = fmul nsz double %i.ac, %i.cs
  %i.cu = fadd nsz double %.sroa.423.0.copyload, %.sroa.420.0.copyload
  %i.cv = fmul nsz double %i.cu, %i.ae
  %i.cw = fsub nsz double %i.z, %.sroa.019.0.copyload
  %i.cx = fmul nsz double %i.cw, %i.ag
  %i.cy = fmul nsz double %i.cx, %i.ak
  %i.cz = tail call nsz double @llvm.fmuladd.f64(double %i.cv, double %i.ai, double %i.cy)
  %i.da = fadd nsz double %i.ct, %i.cz
  %i.db = getelementptr inbounds [8 x i8], ptr %1, i64 %i.w
  store double %i.da, ptr %i.db, align 8, !tbaa !24
  ret void

.lr.ph93:                                         ; preds = %.lr.ph93.prol.loopexit, %.lr.ph93
  %indvars.iv96 = phi i64 [ %indvars.iv.next97.3, %.lr.ph93 ], [ %indvars.iv96.unr, %.lr.ph93.prol.loopexit ] ; 6 uses
  %i.dc = sub nsw i64 %i.an, %indvars.iv96
  %i.dd = getelementptr inbounds [8 x i8], ptr %1, i64 %i.dc
  %i.de = load double, ptr %i.dd, align 8, !tbaa !24
  %i.df = sub nsw i64 %i.ao, %indvars.iv96
  %i.dg = getelementptr inbounds [8 x i8], ptr %1, i64 %i.df
  store double %i.de, ptr %i.dg, align 8, !tbaa !24
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 2 uses
  %i.dh = sub nsw i64 %i.an, %indvars.iv.next97
  %i.di = getelementptr inbounds [8 x i8], ptr %1, i64 %i.dh
  %i.dj = load double, ptr %i.di, align 8, !tbaa !24
  %i.dk = sub nsw i64 %i.ao, %indvars.iv.next97
  %i.dl = getelementptr inbounds [8 x i8], ptr %1, i64 %i.dk
  store double %i.dj, ptr %i.dl, align 8, !tbaa !24
  %indvars.iv.next97.1 = add nuw nsw i64 %indvars.iv96, 2 ; 2 uses
  %i.dm = sub nsw i64 %i.an, %indvars.iv.next97.1
  %i.dn = getelementptr inbounds [8 x i8], ptr %1, i64 %i.dm
  %i.do = load double, ptr %i.dn, align 8, !tbaa !24
  %i.dp = sub nsw i64 %i.ao, %indvars.iv.next97.1
  %i.dq = getelementptr inbounds [8 x i8], ptr %1, i64 %i.dp
  store double %i.do, ptr %i.dq, align 8, !tbaa !24
  %indvars.iv.next97.2 = add nuw nsw i64 %indvars.iv96, 3 ; 2 uses
  %i.dr = sub nsw i64 %i.an, %indvars.iv.next97.2
  %i.ds = getelementptr inbounds [8 x i8], ptr %1, i64 %i.dr
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !24
  %i.du = sub nsw i64 %i.ao, %indvars.iv.next97.2
  %i.dv = getelementptr inbounds [8 x i8], ptr %1, i64 %i.du
  store double %i.dt, ptr %i.dv, align 8, !tbaa !24
  %indvars.iv.next97.3 = add nuw nsw i64 %indvars.iv96, 4 ; 2 uses
  %exitcond100.not.3 = icmp eq i64 %indvars.iv.next97.3, %wide.trip.count99
  br i1 %exitcond100.not.3, label %._crit_edge, label %.lr.ph93, !llvm.loop !140
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_rdft_c2r_double_c(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i64 %3) #3 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.b = ashr i32 %i.a, 1
  %i.c = ashr i32 %i.a, 2                         ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23   ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.g = sext i32 %i.c to i64                     ; 2 uses
  %i.h = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.g
  %i.i = sext i32 %i.b to i64                     ; 2 uses
  %i.j = getelementptr inbounds [16 x i8], ptr %2, i64 %i.i
  %i.k = load double, ptr %i.j, align 8, !tbaa !29 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.m = load double, ptr %2, align 8, !tbaa !29  ; 2 uses
  %i.n = fadd nsz double %i.k, %i.m               ; 2 uses
  store double %i.n, ptr %2, align 8, !tbaa !29
  %i.o = fsub nsz double %i.m, %i.k               ; 2 uses
  store double %i.o, ptr %i.l, align 8, !tbaa !30
  %i.p = load double, ptr %i.e, align 8, !tbaa !24
  %i.q = fmul nsz double %i.n, %i.p
  store double %i.q, ptr %2, align 8, !tbaa !29
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.s = load double, ptr %i.r, align 8, !tbaa !24
  %i.t = fmul nsz double %i.o, %i.s
  store double %i.t, ptr %i.l, align 8, !tbaa !30
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.v = load double, ptr %i.u, align 8, !tbaa !24
  %i.w = getelementptr inbounds [16 x i8], ptr %2, i64 %i.g ; 3 uses
  %i.x = load double, ptr %i.w, align 8, !tbaa !29
  %i.y = fmul nsz double %i.v, %i.x
  store double %i.y, ptr %i.w, align 8, !tbaa !29
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.aa = load double, ptr %i.z, align 8, !tbaa !24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !30
  %i.ad = fmul nsz double %i.aa, %i.ac
  store double %i.ad, ptr %i.ab, align 8, !tbaa !30
  %i.ae = icmp sgt i32 %i.c, 1
  br i1 %i.ae, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !10
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !33
  tail call void %i.ai(ptr noundef %i.ak, ptr noundef %1, ptr noundef nonnull %2, i64 noundef 16) #16
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 5 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.am = sub nsw i64 %i.i, %indvars.iv
  %i.an = getelementptr inbounds [16 x i8], ptr %2, i64 %i.am ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !24 ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !24 ; 2 uses
  %i.as = fneg nsz double %i.ar
  %i.at = load <2 x double>, ptr %i.af, align 8, !tbaa !24
  %i.au = load <2 x double>, ptr %i.al, align 8, !tbaa !24 ; 2 uses
  %i.av = load <2 x double>, ptr %i.an, align 8, !tbaa !24 ; 2 uses
  %i.aw = fadd nsz <2 x double> %i.au, %i.av      ; 2 uses
  %i.ax = fsub nsz <2 x double> %i.au, %i.av      ; 2 uses
  %i.ay = shufflevector <2 x double> %i.aw, <2 x double> %i.ax, <2 x i32> <i32 0, i32 3>
  %i.az = fmul nsz <2 x double> %i.at, %i.ay      ; 4 uses
  %i.ba = load <2 x double>, ptr %i.ag, align 8, !tbaa !24
  %i.bb = shufflevector <2 x double> %i.aw, <2 x double> %i.ax, <2 x i32> <i32 1, i32 2>
  %i.bc = fmul nsz <2 x double> %i.ba, %i.bb      ; 2 uses
  %i.bd = shufflevector <2 x double> %i.bc, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.be = insertelement <2 x double> poison, double %i.as, i64 0
  %i.bf = insertelement <2 x double> %i.be, double %i.ap, i64 1
  %i.bg = fmul nsz <2 x double> %i.bd, %i.bf
  %i.bh = shufflevector <2 x double> %i.bc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bi = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.bj = insertelement <2 x double> %i.bi, double %i.ar, i64 1
  %i.bk = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bh, <2 x double> %i.bj, <2 x double> %i.bg) ; 4 uses
  %i.bl = fadd nsz <2 x double> %i.bk, %i.az
  %i.bm = fsub nsz <2 x double> %i.bk, %i.az
  %i.bn = shufflevector <2 x double> %i.bl, <2 x double> %i.bm, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.bn, ptr %i.al, align 8, !tbaa !24
  %i.bo = fsub nsz <2 x double> %i.az, %i.bk
  %i.bp = fadd nsz <2 x double> %i.az, %i.bk
  %i.bq = shufflevector <2 x double> %i.bo, <2 x double> %i.bp, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.bq, ptr %i.an, align 8, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !141
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_dctII_double_c(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i64 %3) #3 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !21     ; 5 uses
  %i.b = ashr i32 %i.a, 1                         ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23   ; 4 uses
  %i.e = icmp sgt i32 %i.b, 0
  br i1 %i.e, label %.lr.ph.preheader, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.pre = sext i32 %i.a to i64
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = zext nneg i32 %i.a to i64                ; 2 uses
  %wide.trip.count = zext nneg i32 %i.b to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.d, i64 %i.f
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.._crit_edge_crit_edge ], [ %i.f, %.lr.ph ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !33
  tail call void %i.h(ptr noundef %i.j, ptr noundef %1, ptr noundef %2, i64 noundef 16) #16
  %i.k = getelementptr inbounds [8 x i8], ptr %1, i64 %.pre-phi
  %i.l = load double, ptr %i.k, align 8, !tbaa !24 ; 2 uses
  %i.m = icmp sgt i32 %i.a, 2
  br i1 %i.m, label %.lr.ph74, label %._crit_edge75

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 4 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.o = load double, ptr %i.n, align 8, !tbaa !24 ; 2 uses
  %i.p = trunc i64 %indvars.iv to i32
  %i.q = xor i32 %i.p, -1
  %i.r = add i32 %i.a, %i.q
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %2, i64 %i.s ; 2 uses
  %i.u = load double, ptr %i.t, align 8, !tbaa !24 ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.v = load double, ptr %gep, align 8, !tbaa !24
  %i.w = fadd nsz double %i.o, %i.u
  %i.x = fmul nsz double %i.w, 5.000000e-01       ; 2 uses
  %i.y = fsub nsz double %i.o, %i.u
  %i.z = fmul nsz double %i.y, %i.v               ; 2 uses
  %i.aa = fadd nsz double %i.x, %i.z
  store double %i.aa, ptr %i.n, align 8, !tbaa !24
  %i.ab = fsub nsz double %i.x, %i.z
  store double %i.ab, ptr %i.t, align 8, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !142

._crit_edge75:                                    ; preds = %.lr.ph74, %._crit_edge
  %.069.lcssa = phi double [ %i.l, %._crit_edge ], [ %i.ba, %.lr.ph74 ]
  %i.ac = load double, ptr %i.d, align 8, !tbaa !24
  %i.ad = load double, ptr %1, align 8, !tbaa !24
  %i.ae = fmul nsz double %i.ac, %i.ad
  store double %i.ae, ptr %1, align 8, !tbaa !24
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %.069.lcssa, ptr %i.af, align 8, !tbaa !24
  ret void

.lr.ph74:                                         ; preds = %._crit_edge, %.lr.ph74
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %.lr.ph74 ], [ %.pre-phi, %._crit_edge ] ; 2 uses
  %.06971 = phi double [ %i.ba, %.lr.ph74 ], [ %i.l, %._crit_edge ] ; 2 uses
  %indvars.iv.next78 = add nsw i64 %indvars.iv77, -2 ; 4 uses
  %i.ag = sub nsw i64 %.pre-phi, %indvars.iv.next78
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.ag
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !24
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next78 ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next78
  %i.al = load double, ptr %i.ak, align 8, !tbaa !24
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.an = load double, ptr %i.am, align 8, !tbaa !24
  %i.ao = load <2 x double>, ptr %i.aj, align 8, !tbaa !24 ; 2 uses
  %i.ap = fneg nsz double %i.an
  %i.aq = insertelement <2 x double> poison, double %i.al, i64 0
  %i.ar = shufflevector <2 x double> %i.aq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.as = shufflevector <2 x double> %i.ao, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.at = insertelement <2 x double> %i.as, double %i.ap, i64 0
  %i.au = fmul nsz <2 x double> %i.ar, %i.at
  %i.av = insertelement <2 x double> poison, double %i.ai, i64 0
  %i.aw = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ax = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aw, <2 x double> %i.ao, <2 x double> %i.au) ; 2 uses
  %i.ay = extractelement <2 x double> %i.ax, i64 1
  store double %i.ay, ptr %i.aj, align 8, !tbaa !24
  store double %.06971, ptr %i.am, align 8, !tbaa !24
  %i.az = extractelement <2 x double> %i.ax, i64 0
  %i.ba = fadd nsz double %.06971, %i.az          ; 2 uses
  %4 = icmp sgt i64 %indvars.iv77, 4
  br i1 %4, label %.lr.ph74, label %._crit_edge75, !llvm.loop !143
}

; Function Attrs: cold nounwind optsize uwtable
define internal i32 @ff_tx_dct_init_double_c(ptr noundef %0, ptr nofree readnone captures(none) %1, i64 noundef %2, ptr nofree readnone captures(none) %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6) #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = load double, ptr %6, align 8, !tbaa !24  ; 2 uses
  store double %i.b, ptr %i.a, align 8, !tbaa !24
  %.not = icmp eq i32 %5, 0                       ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = shl nsw i32 %4, 1
  %i.d = load i32, ptr %0, align 8, !tbaa !21
  %i.e = shl nsw i32 %i.d, 1
  store i32 %i.e, ptr %0, align 8, !tbaa !21
  %i.f = fmul nsz double %i.b, 5.000000e-01
  store double %i.f, ptr %i.a, align 8, !tbaa !24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.043 = phi i32 [ %i.c, %bb.b ], [ %4, %bb.a ]  ; 9 uses
  %i.g = call i32 @ff_tx_init_subtx(ptr noundef %0, i32 noundef 7, i64 noundef %2, ptr noundef null, i32 noundef %.043, i32 noundef %5, ptr noundef nonnull %i.a) #16 ; 2 uses
  %.not46 = icmp eq i32 %i.g, 0
  br i1 %.not46, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.h = sdiv i32 %.043, 2                        ; 3 uses
  %i.i = mul nsw i32 %i.h, 3
  %i.j = sext i32 %i.i to i64
  %i.k = shl nsw i64 %i.j, 3
  %i.l = call noalias ptr @av_malloc(i64 noundef %i.k) #16 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.l, ptr %i.m, align 8, !tbaa !23
  %.not47 = icmp eq ptr %i.l, null
  br i1 %.not47, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = shl nsw i32 %.043, 1
  %i.o = sitofp nsz i32 %i.n to double
  %i.p = fdiv nsz double f0x400921FB54442D18, %i.o ; 3 uses
  %i.q = icmp sgt i32 %.043, 0
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.r = select i1 %.not, i32 2, i32 1
  %i.s = uitofp nneg i32 %i.r to double
  %wide.trip.count = zext nneg i32 %.043 to i64
  br label %bb.f

._crit_edge:                                      ; preds = %bb.f, %bb.e
  %i.t = icmp sgt i32 %.043, 1                    ; 2 uses
  br i1 %.not, label %.preheader, label %.preheader48

.preheader48:                                     ; preds = %._crit_edge
  br i1 %i.t, label %.lr.ph52.preheader, label %.loopexit

.lr.ph52.preheader:                               ; preds = %.preheader48
  %i.u = zext nneg i32 %.043 to i64
  %wide.trip.count60 = zext nneg i32 %i.h to i64
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.u
  br label %.lr.ph52

.preheader:                                       ; preds = %._crit_edge
  br i1 %i.t, label %.lr.ph54.preheader, label %.loopexit

.lr.ph54.preheader:                               ; preds = %.preheader
  %i.v = zext nneg i32 %.043 to i64
  %wide.trip.count65 = zext nneg i32 %i.h to i64
  %invariant.gep69 = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.v
  br label %.lr.ph54

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.w = trunc nuw nsw i64 %indvars.iv to i32
  %i.x = uitofp nsz nneg i32 %i.w to double
  %i.y = fmul nsz double %i.p, %i.x
  %i.z = call nsz double @llvm.cos.f64(double %i.y)
  %i.aa = fmul nsz double %i.z, %i.s
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  store double %i.aa, ptr %i.ab, align 8, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !144

.lr.ph52:                                         ; preds = %.lr.ph52.preheader, %.lr.ph52
  %indvars.iv57 = phi i64 [ 0, %.lr.ph52.preheader ], [ %indvars.iv.next58, %.lr.ph52 ] ; 3 uses
  %indvars.iv57.tr = trunc i64 %indvars.iv57 to i32
  %i.ac = shl i32 %indvars.iv57.tr, 1
  %i.ad = or disjoint i32 %i.ac, 1
  %i.ae = uitofp nsz nneg i32 %i.ad to double
  %i.af = fmul nnan nsz double %i.p, %i.ae
  %i.ag = call nsz double @llvm.sin.f64(double %i.af)
  %i.ah = fdiv nsz double 5.000000e-01, %i.ag
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv57
  store double %i.ah, ptr %gep, align 8, !tbaa !24
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1 ; 2 uses
  %exitcond61.not = icmp eq i64 %indvars.iv.next58, %wide.trip.count60
  br i1 %exitcond61.not, label %.loopexit, label %.lr.ph52, !llvm.loop !145

.lr.ph54:                                         ; preds = %.lr.ph54.preheader, %.lr.ph54
  %indvars.iv62 = phi i64 [ 0, %.lr.ph54.preheader ], [ %indvars.iv.next63, %.lr.ph54 ] ; 3 uses
  %indvars.iv62.tr = trunc nuw nsw i64 %indvars.iv62 to i32
  %i.ai = shl nuw nsw i32 %indvars.iv62.tr, 1
  %i.aj = xor i32 %i.ai, -1
  %i.ak = add nsw i32 %.043, %i.aj
  %i.al = sitofp nsz i32 %i.ak to double
  %i.am = fmul nsz double %i.p, %i.al
  %i.an = call nsz double @llvm.cos.f64(double %i.am)
  %gep70 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep69, i64 %indvars.iv62
  store double %i.an, ptr %gep70, align 8, !tbaa !24
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %exitcond66.not = icmp eq i64 %indvars.iv.next63, %wide.trip.count65
  br i1 %exitcond66.not, label %.loopexit, label %.lr.ph54, !llvm.loop !146

.loopexit:                                        ; preds = %.lr.ph52, %.lr.ph54, %.preheader48, %.preheader, %bb.d, %bb.c
  %.042 = phi i32 [ %i.g, %bb.c ], [ -12, %bb.d ], [ 0, %.preheader ], [ 0, %.preheader48 ], [ 0, %.lr.ph54 ], [ 0, %.lr.ph52 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.042
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_dctIII_double_c(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i64 %3) #3 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !21     ; 4 uses
  %i.b = ashr i32 %i.a, 1                         ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23   ; 3 uses
  %i.e = sext i32 %i.a to i64                     ; 4 uses
  %i.f = getelementptr [8 x i8], ptr %2, i64 %i.e ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 -8
  %i.h = load double, ptr %i.g, align 8, !tbaa !24
  %i.i = fmul nsz double %i.h, 2.000000e+00
  store double %i.i, ptr %i.f, align 8, !tbaa !24
  %i.j = icmp sgt i32 %i.a, 3
  br i1 %i.j, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !33
  tail call void %i.l(ptr noundef %i.n, ptr noundef %1, ptr noundef nonnull %2, i64 noundef 4) #16
  %i.o = icmp sgt i32 %i.b, 0
  br i1 %i.o, label %.lr.ph70.preheader, label %._crit_edge71

.lr.ph70.preheader:                               ; preds = %._crit_edge
  %wide.trip.count = zext nneg i32 %i.b to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.d, i64 %i.e
  br label %.lr.ph70

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %i.e, %bb.a ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -2  ; 4 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next ; 4 uses
  %i.q = load double, ptr %i.p, align 8, !tbaa !24 ; 2 uses
  %i.r = getelementptr i8, ptr %i.p, i64 -8
  %i.s = load double, ptr %i.r, align 8, !tbaa !24
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.u = load double, ptr %i.t, align 8, !tbaa !24
  %i.v = fsub nsz double %i.s, %i.u               ; 2 uses
  %i.w = sub nsw i64 %i.e, %indvars.iv.next
  %i.x = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.w ; 2 uses
  %i.y = load double, ptr %i.x, align 8, !tbaa !24
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next ; 2 uses
  %i.aa = load double, ptr %i.z, align 8, !tbaa !24
  %i.ab = fneg nsz double %i.v
  %i.ac = fmul nsz double %i.aa, %i.ab
  %i.ad = tail call nsz double @llvm.fmuladd.f64(double %i.y, double %i.q, double %i.ac)
  store double %i.ad, ptr %i.t, align 8, !tbaa !24
  %i.ae = load double, ptr %i.x, align 8, !tbaa !24
  %i.af = load double, ptr %i.z, align 8, !tbaa !24
  %i.ag = fmul nsz double %i.q, %i.af
  %i.ah = tail call nsz double @llvm.fmuladd.f64(double %i.ae, double %i.v, double %i.ag)
  store double %i.ah, ptr %i.p, align 8, !tbaa !24
  %i.ai = icmp samesign ugt i64 %indvars.iv, 5
  br i1 %i.ai, label %.lr.ph, label %._crit_edge, !llvm.loop !147

._crit_edge71:                                    ; preds = %.lr.ph70, %._crit_edge
  ret void

.lr.ph70:                                         ; preds = %.lr.ph70.preheader, %.lr.ph70
  %indvars.iv73 = phi i64 [ 0, %.lr.ph70.preheader ], [ %indvars.iv.next74, %.lr.ph70 ] ; 4 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv73 ; 2 uses
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !24 ; 2 uses
  %i.al = trunc i64 %indvars.iv73 to i32
  %i.am = xor i32 %i.al, -1
  %i.an = add i32 %i.a, %i.am
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ao ; 2 uses
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !24 ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv73
  %i.ar = load double, ptr %gep, align 8, !tbaa !24
  %i.as = fadd nsz double %i.ak, %i.aq            ; 2 uses
  %i.at = fsub nsz double %i.ak, %i.aq
  %i.au = fmul nsz double %i.at, %i.ar            ; 2 uses
  %i.av = fadd nsz double %i.as, %i.au
  store double %i.av, ptr %i.aj, align 8, !tbaa !24
  %i.aw = fsub nsz double %i.as, %i.au
  store double %i.aw, ptr %i.ap, align 8, !tbaa !24
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next74, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge71, label %.lr.ph70, !llvm.loop !148
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_dctI_double_c(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #3 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.b = add i32 %i.a, -1                         ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 8 uses
  %i.e = lshr i64 %3, 3                           ; 4 uses
  %i.f = icmp sgt i32 %i.a, 1
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = shl nuw nsw i32 %i.b, 1
  %i.h = zext nneg i32 %i.g to i64                ; 3 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.i = icmp eq i32 %i.b, 1
  br i1 %i.i, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod27 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod27)
  %i.j = mul nuw nsw i64 %i.e, %indvars.iv.epil.init
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.j
  %i.l = load double, ptr %i.k, align 8, !tbaa !24 ; 2 uses
  %i.m = sub nuw nsw i64 %i.h, %indvars.iv.epil.init
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.m
  store double %i.l, ptr %i.n, align 8, !tbaa !24
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.epil.init
  store double %i.l, ptr %i.o, align 8, !tbaa !24
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %i.p = sext i32 %i.b to i64                     ; 2 uses
  %i.q = mul nsw i64 %i.e, %i.p
  %i.r = getelementptr inbounds [8 x i8], ptr %2, i64 %i.q
  %i.s = load double, ptr %i.r, align 8, !tbaa !24
  %i.t = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.p
  store double %i.s, ptr %i.t, align 8, !tbaa !24
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !10
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !33
  tail call void %i.v(ptr noundef %i.x, ptr noundef %1, ptr noundef %i.d, i64 noundef 8) #16
  ret void

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.y = mul nuw nsw i64 %i.e, %indvars.iv
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.y
  %i.aa = load double, ptr %i.z, align 8, !tbaa !24 ; 2 uses
  %i.ab = sub nuw nsw i64 %i.h, %indvars.iv
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ab
  store double %i.aa, ptr %i.ac, align 8, !tbaa !24
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  store double %i.aa, ptr %i.ad, align 8, !tbaa !24
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.ae = mul nuw nsw i64 %i.e, %indvars.iv.next
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ae
  %i.ag = load double, ptr %i.af, align 8, !tbaa !24 ; 2 uses
  %i.ah = sub nuw nsw i64 %i.h, %indvars.iv.next
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ah
  store double %i.ag, ptr %i.ai, align 8, !tbaa !24
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next
  store double %i.ag, ptr %i.aj, align 8, !tbaa !24
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !149
}

; Function Attrs: cold nounwind optsize uwtable
define internal i32 @ff_tx_dcstI_init_double_c(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree readnone captures(none) %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6) #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = load double, ptr %6, align 8, !tbaa !24  ; 2 uses
  store double %i.b, ptr %i.a, align 8, !tbaa !24
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = shl nsw i32 %4, 1
  %i.d = load i32, ptr %0, align 8, !tbaa !21
  %i.e = shl nsw i32 %i.d, 1
  store i32 %i.e, ptr %0, align 8, !tbaa !21
  %i.f = fmul nsz double %i.b, 5.000000e-01
  store double %i.f, ptr %i.a, align 8, !tbaa !24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.014 = phi i32 [ %i.c, %bb.b ], [ %4, %bb.a ]  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !152  ; 2 uses
  %i.i = icmp eq i32 %i.h, 13
  %i.j = select i1 %i.i, i64 8, i64 16
  %i.k = or i64 %i.j, %2
  %i.l = add nsw i32 %.014, -1
  %i.m = icmp eq i32 %i.h, 16
  %i.n = select i1 %i.m, i32 2, i32 0
  %i.o = add nsw i32 %i.l, %i.n
  %i.p = shl nsw i32 %i.o, 1
  %i.q = call i32 @ff_tx_init_subtx(ptr noundef %0, i32 noundef 7, i64 noundef %i.k, ptr noundef null, i32 noundef %i.p, i32 noundef 0, ptr noundef nonnull %i.a) #16 ; 2 uses
  %.not16 = icmp eq i32 %i.q, 0
  br i1 %.not16, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = shl i32 %.014, 1
  %i.s = add i32 %i.r, 2
  %i.t = sext i32 %i.s to i64
  %i.u = shl nsw i64 %i.t, 3
  %i.v = call noalias ptr @av_mallocz(i64 noundef %i.u) #16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.v, ptr %i.w, align 8, !tbaa !32
  %.not17 = icmp eq ptr %i.v, null
  %. = select i1 %.not17, i32 -12, i32 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ %., %bb.d ], [ %i.q, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_dstI_double_c(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #3 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.b = add i32 %i.a, 1                          ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 9 uses
  %i.e = lshr i64 %3, 3                           ; 3 uses
  store double 0.000000e+00, ptr %i.d, align 8, !tbaa !24
  %.not25 = icmp slt i32 %i.a, 1
  br i1 %.not25, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = shl nuw nsw i32 %i.b, 1
  %i.g = zext nneg i32 %i.f to i64                ; 3 uses
  %wide.trip.count = zext i32 %i.b to i64
  %i.h = add nsw i64 %wide.trip.count, -1         ; 3 uses
  %xtraiter = and i64 %i.h, 1
  %i.i = icmp eq i32 %i.b, 2
  br i1 %i.i, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.h, -2
  br label %bb.b
end_hunk_0
