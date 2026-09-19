Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/tx_float?download=true
inline.NumInlined: 21
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 32
begin_hunk_0_@ff_tx_rdft_r2i_mod2_float_c:bb.a
  store float %i.bk, ptr %i.bm, align 4, !tbaa !24
  %indvars.iv.next97.prol = add nuw nsw i64 %indvars.iv96.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph93.prol.loopexit, label %.lr.ph93.prol, !llvm.loop !141

.lr.ph93.prol.loopexit:                           ; preds = %.lr.ph93.prol, %.lr.ph93.preheader102
  %indvars.iv96.unr = phi i64 [ %indvars.iv96.ph, %.lr.ph93.preheader102 ], [ %indvars.iv.next97.prol, %.lr.ph93.prol ]
  %i.bn = icmp ult i64 %i.bh, 3
  br i1 %i.bn, label %._crit_edge, label %.lr.ph93

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 7 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %.sroa.05.0.copyload = load float, ptr %i.bo, align 4, !tbaa !24
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %.sroa.46.0.copyload = load float, ptr %.sroa.46.0..sroa_idx, align 4, !tbaa !24 ; 2 uses
  %i.bp = sub nsw i64 %i.al, %indvars.iv
  %i.bq = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bp ; 2 uses
  %.sroa.0.0.copyload = load float, ptr %i.bq, align 4, !tbaa !24
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !24 ; 2 uses
  %i.br = load float, ptr %i.ab, align 4, !tbaa !24
  %i.bs = fsub nsz float %.sroa.46.0.copyload, %.sroa.4.0.copyload
  %i.bt = fmul nsz float %i.br, %i.bs             ; 2 uses
  %i.bu = load float, ptr %i.ad, align 4, !tbaa !24
  %i.bv = fadd nsz float %.sroa.46.0.copyload, %.sroa.4.0.copyload
  %i.bw = fmul nsz float %i.bv, %i.bu
  %i.bx = load float, ptr %i.af, align 4, !tbaa !24
  %i.by = fsub nsz float %.sroa.05.0.copyload, %.sroa.0.0.copyload
  %i.bz = fmul nsz float %i.by, %i.bx
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !24
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !24
  %i.ce = fmul nsz float %i.bz, %i.cd
  %i.cf = tail call nsz float @llvm.fmuladd.f32(float %i.bw, float %i.cb, float %i.ce) ; 2 uses
  %i.cg = fsub nsz float %i.cf, %i.bt
  %i.ch = getelementptr [4 x i8], ptr %1, i64 %indvars.iv
  %i.ci = getelementptr i8, ptr %i.ch, i64 -4
  store float %i.cg, ptr %i.ci, align 4, !tbaa !24
  %i.cj = fadd nsz float %i.bt, %i.cf
  %i.ck = trunc i64 %indvars.iv to i32
  %i.cl = xor i32 %i.ck, -1
  %i.cm = add i32 %i.a, %i.cl
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cn
  store float %i.cj, ptr %i.co, align 4, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph93.preheader, label %.lr.ph, !llvm.loop !142

._crit_edge:                                      ; preds = %.lr.ph93.prol.loopexit, %.lr.ph93, %middle.block, %bb.a
  %i.cp = fsub nsz float %.sroa.423.0.copyload, %.sroa.420.0.copyload
  %i.cq = fmul nsz float %i.ac, %i.cp
  %i.cr = fadd nsz float %.sroa.423.0.copyload, %.sroa.420.0.copyload
  %i.cs = fmul nsz float %i.cr, %i.ae
  %i.ct = fsub nsz float %i.z, %.sroa.019.0.copyload
  %i.cu = fmul nsz float %i.ct, %i.ag
  %i.cv = fmul nsz float %i.cu, %i.ak
  %i.cw = tail call nsz float @llvm.fmuladd.f32(float %i.cs, float %i.ai, float %i.cv)
  %i.cx = fadd nsz float %i.cq, %i.cw
  %i.cy = getelementptr inbounds [4 x i8], ptr %1, i64 %i.w
  store float %i.cx, ptr %i.cy, align 4, !tbaa !24
  ret void

.lr.ph93:                                         ; preds = %.lr.ph93.prol.loopexit, %.lr.ph93
  %indvars.iv96 = phi i64 [ %indvars.iv.next97.3, %.lr.ph93 ], [ %indvars.iv96.unr, %.lr.ph93.prol.loopexit ] ; 6 uses
  %i.cz = sub nsw i64 %i.an, %indvars.iv96
  %i.da = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cz
  %i.db = load float, ptr %i.da, align 4, !tbaa !24
  %i.dc = sub nsw i64 %i.ao, %indvars.iv96
  %i.dd = getelementptr inbounds [4 x i8], ptr %1, i64 %i.dc
  store float %i.db, ptr %i.dd, align 4, !tbaa !24
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 2 uses
  %i.de = sub nsw i64 %i.an, %indvars.iv.next97
  %i.df = getelementptr inbounds [4 x i8], ptr %1, i64 %i.de
  %i.dg = load float, ptr %i.df, align 4, !tbaa !24
  %i.dh = sub nsw i64 %i.ao, %indvars.iv.next97
  %i.di = getelementptr inbounds [4 x i8], ptr %1, i64 %i.dh
  store float %i.dg, ptr %i.di, align 4, !tbaa !24
  %indvars.iv.next97.1 = add nuw nsw i64 %indvars.iv96, 2 ; 2 uses
  %i.dj = sub nsw i64 %i.an, %indvars.iv.next97.1
  %i.dk = getelementptr inbounds [4 x i8], ptr %1, i64 %i.dj
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !24
  %i.dm = sub nsw i64 %i.ao, %indvars.iv.next97.1
  %i.dn = getelementptr inbounds [4 x i8], ptr %1, i64 %i.dm
  store float %i.dl, ptr %i.dn, align 4, !tbaa !24
  %indvars.iv.next97.2 = add nuw nsw i64 %indvars.iv96, 3 ; 2 uses
  %i.do = sub nsw i64 %i.an, %indvars.iv.next97.2
  %i.dp = getelementptr inbounds [4 x i8], ptr %1, i64 %i.do
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !24
  %i.dr = sub nsw i64 %i.ao, %indvars.iv.next97.2
  %i.ds = getelementptr inbounds [4 x i8], ptr %1, i64 %i.dr
  store float %i.dq, ptr %i.ds, align 4, !tbaa !24
  %indvars.iv.next97.3 = add nuw nsw i64 %indvars.iv96, 4 ; 2 uses
  %exitcond100.not.3 = icmp eq i64 %indvars.iv.next97.3, %wide.trip.count99
  br i1 %exitcond100.not.3, label %._crit_edge, label %.lr.ph93, !llvm.loop !143
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_rdft_c2r_float_c(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i64 %3) #3 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.b = ashr i32 %i.a, 1
  %i.c = ashr i32 %i.a, 2                         ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23   ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.g = sext i32 %i.c to i64                     ; 2 uses
  %i.h = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.g
  %i.i = sext i32 %i.b to i64                     ; 2 uses
  %i.j = getelementptr inbounds [8 x i8], ptr %2, i64 %i.i
  %i.k = load float, ptr %i.j, align 4, !tbaa !28 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.m = load float, ptr %2, align 4, !tbaa !28   ; 2 uses
  %i.n = fadd nsz float %i.k, %i.m                ; 2 uses
  store float %i.n, ptr %2, align 4, !tbaa !28
  %i.o = fsub nsz float %i.m, %i.k                ; 2 uses
  store float %i.o, ptr %i.l, align 4, !tbaa !29
  %i.p = load float, ptr %i.e, align 4, !tbaa !24
  %i.q = fmul nsz float %i.n, %i.p
  store float %i.q, ptr %2, align 4, !tbaa !28
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.s = load float, ptr %i.r, align 4, !tbaa !24
  %i.t = fmul nsz float %i.o, %i.s
  store float %i.t, ptr %i.l, align 4, !tbaa !29
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.v = load float, ptr %i.u, align 4, !tbaa !24
  %i.w = getelementptr inbounds [8 x i8], ptr %2, i64 %i.g ; 3 uses
  %i.x = load float, ptr %i.w, align 4, !tbaa !28
  %i.y = fmul nsz float %i.v, %i.x
  store float %i.y, ptr %i.w, align 4, !tbaa !28
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.aa = load float, ptr %i.z, align 4, !tbaa !24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 2 uses
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !29
  %i.ad = fmul nsz float %i.aa, %i.ac
  store float %i.ad, ptr %i.ab, align 4, !tbaa !29
  %i.ae = icmp sgt i32 %i.c, 1
  br i1 %i.ae, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !10
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !32
  tail call void %i.ai(ptr noundef %i.ak, ptr noundef %1, ptr noundef nonnull %2, i64 noundef 8) #16
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 5 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.am = sub nsw i64 %i.i, %indvars.iv
  %i.an = getelementptr inbounds [8 x i8], ptr %2, i64 %i.am ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !24 ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !24 ; 2 uses
  %i.as = fneg nsz float %i.ar
  %i.at = load <2 x float>, ptr %i.af, align 4, !tbaa !24
  %i.au = load <2 x float>, ptr %i.al, align 4, !tbaa !24 ; 2 uses
  %i.av = load <2 x float>, ptr %i.an, align 4, !tbaa !24 ; 2 uses
  %i.aw = fadd nsz <2 x float> %i.au, %i.av       ; 2 uses
  %i.ax = fsub nsz <2 x float> %i.au, %i.av       ; 2 uses
  %i.ay = shufflevector <2 x float> %i.aw, <2 x float> %i.ax, <2 x i32> <i32 0, i32 3>
  %i.az = fmul nsz <2 x float> %i.at, %i.ay       ; 4 uses
  %i.ba = load <2 x float>, ptr %i.ag, align 4, !tbaa !24
  %i.bb = shufflevector <2 x float> %i.aw, <2 x float> %i.ax, <2 x i32> <i32 1, i32 2>
  %i.bc = fmul nsz <2 x float> %i.ba, %i.bb       ; 2 uses
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.be = insertelement <2 x float> poison, float %i.as, i64 0
  %i.bf = insertelement <2 x float> %i.be, float %i.ap, i64 1
  %i.bg = fmul nsz <2 x float> %i.bd, %i.bf
  %i.bh = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bi = insertelement <2 x float> poison, float %i.ap, i64 0
  %i.bj = insertelement <2 x float> %i.bi, float %i.ar, i64 1
  %i.bk = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bh, <2 x float> %i.bj, <2 x float> %i.bg) ; 4 uses
  %i.bl = fadd nsz <2 x float> %i.bk, %i.az
  %i.bm = fsub nsz <2 x float> %i.bk, %i.az
  %i.bn = shufflevector <2 x float> %i.bl, <2 x float> %i.bm, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.bn, ptr %i.al, align 4, !tbaa !24
  %i.bo = fsub nsz <2 x float> %i.az, %i.bk
  %i.bp = fadd nsz <2 x float> %i.az, %i.bk
  %i.bq = shufflevector <2 x float> %i.bo, <2 x float> %i.bp, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.bq, ptr %i.an, align 4, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !144
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_dctII_float_c(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i64 %3) #3 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !21     ; 6 uses
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
  %invariant.gep = getelementptr [4 x i8], ptr %i.d, i64 %i.f
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.._crit_edge_crit_edge ], [ %i.f, %.lr.ph ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !32
  tail call void %i.h(ptr noundef %i.j, ptr noundef %1, ptr noundef %2, i64 noundef 8) #16
  %i.k = getelementptr inbounds [4 x i8], ptr %1, i64 %.pre-phi
  %i.l = load float, ptr %i.k, align 4, !tbaa !24 ; 2 uses
  %i.m = icmp sgt i32 %i.a, 2
  br i1 %i.m, label %.lr.ph74.preheader, label %._crit_edge75

.lr.ph74.preheader:                               ; preds = %._crit_edge
  %4 = zext nneg i32 %i.a to i64
  br label %.lr.ph74

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 4 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.o = load float, ptr %i.n, align 4, !tbaa !24 ; 2 uses
  %i.p = trunc i64 %indvars.iv to i32
  %i.q = xor i32 %i.p, -1
  %i.r = add i32 %i.a, %i.q
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %2, i64 %i.s ; 2 uses
  %i.u = load float, ptr %i.t, align 4, !tbaa !24 ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.v = load float, ptr %gep, align 4, !tbaa !24
  %i.w = fadd nsz float %i.o, %i.u
  %i.x = fmul nsz float %i.w, 5.000000e-01        ; 2 uses
  %i.y = fsub nsz float %i.o, %i.u
  %i.z = fmul nsz float %i.y, %i.v                ; 2 uses
  %i.aa = fadd nsz float %i.x, %i.z
  store float %i.aa, ptr %i.n, align 4, !tbaa !24
  %i.ab = fsub nsz float %i.x, %i.z
  store float %i.ab, ptr %i.t, align 4, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !145

._crit_edge75:                                    ; preds = %.lr.ph74, %._crit_edge
  %.069.lcssa = phi float [ %i.l, %._crit_edge ], [ %i.ba, %.lr.ph74 ]
  %i.ac = load float, ptr %i.d, align 4, !tbaa !24
  %i.ad = load float, ptr %1, align 4, !tbaa !24
  %i.ae = fmul nsz float %i.ac, %i.ad
  store float %i.ae, ptr %1, align 4, !tbaa !24
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %.069.lcssa, ptr %i.af, align 4, !tbaa !24
  ret void

.lr.ph74:                                         ; preds = %.lr.ph74.preheader, %.lr.ph74
  %indvars.iv77 = phi i64 [ %4, %.lr.ph74.preheader ], [ %indvars.iv.next78, %.lr.ph74 ] ; 2 uses
  %.06971 = phi float [ %i.l, %.lr.ph74.preheader ], [ %i.ba, %.lr.ph74 ] ; 2 uses
  %indvars.iv.next78 = add nsw i64 %indvars.iv77, -2 ; 4 uses
  %i.ag = sub nuw nsw i64 %.pre-phi, %indvars.iv.next78
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ag
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !24
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next78 ; 3 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next78
  %i.al = load float, ptr %i.ak, align 4, !tbaa !24
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 4 ; 2 uses
  %i.an = load float, ptr %i.am, align 4, !tbaa !24
  %i.ao = load <2 x float>, ptr %i.aj, align 4, !tbaa !24 ; 2 uses
  %i.ap = fneg nsz float %i.an
  %i.aq = insertelement <2 x float> poison, float %i.al, i64 0
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.as = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.at = insertelement <2 x float> %i.as, float %i.ap, i64 0
  %i.au = fmul nsz <2 x float> %i.ar, %i.at
  %i.av = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ax = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aw, <2 x float> %i.ao, <2 x float> %i.au) ; 2 uses
  %i.ay = extractelement <2 x float> %i.ax, i64 1
  store float %i.ay, ptr %i.aj, align 4, !tbaa !24
  store float %.06971, ptr %i.am, align 4, !tbaa !24
  %i.az = extractelement <2 x float> %i.ax, i64 0
  %i.ba = fadd nsz float %.06971, %i.az           ; 2 uses
  %5 = icmp samesign ugt i64 %indvars.iv77, 4
  br i1 %5, label %.lr.ph74, label %._crit_edge75, !llvm.loop !146
}

; Function Attrs: cold nounwind optsize uwtable
define internal i32 @ff_tx_dct_init_float_c(ptr noundef %0, ptr nofree readnone captures(none) %1, i64 noundef %2, ptr nofree readnone captures(none) %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6) #0 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = load float, ptr %6, align 4, !tbaa !24   ; 2 uses
  store float %i.b, ptr %i.a, align 4, !tbaa !24
  %.not = icmp eq i32 %5, 0                       ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = shl nsw i32 %4, 1
  %i.d = load i32, ptr %0, align 8, !tbaa !21
  %i.e = shl nsw i32 %i.d, 1
  store i32 %i.e, ptr %0, align 8, !tbaa !21
  %i.f = fmul nsz float %i.b, 5.000000e-01
  store float %i.f, ptr %i.a, align 4, !tbaa !24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.043 = phi i32 [ %i.c, %bb.b ], [ %4, %bb.a ]  ; 9 uses
  %i.g = call i32 @ff_tx_init_subtx(ptr noundef %0, i32 noundef 6, i64 noundef %2, ptr noundef null, i32 noundef %.043, i32 noundef %5, ptr noundef nonnull %i.a) #16 ; 2 uses
  %.not46 = icmp eq i32 %i.g, 0
  br i1 %.not46, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.h = sdiv i32 %.043, 2                        ; 3 uses
  %i.i = mul nsw i32 %i.h, 3
  %i.j = sext i32 %i.i to i64
  %i.k = shl nsw i64 %i.j, 2
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
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.u
  br label %.lr.ph52

.preheader:                                       ; preds = %._crit_edge
  br i1 %i.t, label %.lr.ph54.preheader, label %.loopexit

.lr.ph54.preheader:                               ; preds = %.preheader
  %i.v = zext nneg i32 %.043 to i64
  %wide.trip.count65 = zext nneg i32 %i.h to i64
  %invariant.gep69 = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.v
  br label %.lr.ph54

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.w = trunc nuw nsw i64 %indvars.iv to i32
  %i.x = uitofp nsz nneg i32 %i.w to double
  %i.y = fmul nsz double %i.p, %i.x
  %i.z = call nsz double @llvm.cos.f64(double %i.y)
  %i.aa = fmul nsz double %i.z, %i.s
  %i.ab = fptrunc nsz double %i.aa to float
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv
  store float %i.ab, ptr %i.ac, align 4, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !147

.lr.ph52:                                         ; preds = %.lr.ph52.preheader, %.lr.ph52
  %indvars.iv57 = phi i64 [ 0, %.lr.ph52.preheader ], [ %indvars.iv.next58, %.lr.ph52 ] ; 3 uses
  %indvars.iv57.tr = trunc i64 %indvars.iv57 to i32
  %i.ad = shl i32 %indvars.iv57.tr, 1
  %i.ae = or disjoint i32 %i.ad, 1
  %i.af = uitofp nsz nneg i32 %i.ae to double
  %i.ag = fmul nnan nsz double %i.p, %i.af
  %i.ah = call nsz double @llvm.sin.f64(double %i.ag)
  %i.ai = fdiv nsz double 5.000000e-01, %i.ah
  %i.aj = fptrunc nsz double %i.ai to float
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv57
  store float %i.aj, ptr %gep, align 4, !tbaa !24
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1 ; 2 uses
  %exitcond61.not = icmp eq i64 %indvars.iv.next58, %wide.trip.count60
  br i1 %exitcond61.not, label %.loopexit, label %.lr.ph52, !llvm.loop !148

.lr.ph54:                                         ; preds = %.lr.ph54.preheader, %.lr.ph54
  %indvars.iv62 = phi i64 [ 0, %.lr.ph54.preheader ], [ %indvars.iv.next63, %.lr.ph54 ] ; 3 uses
  %indvars.iv62.tr = trunc nuw nsw i64 %indvars.iv62 to i32
  %i.ak = shl nuw nsw i32 %indvars.iv62.tr, 1
  %i.al = xor i32 %i.ak, -1
  %i.am = add nsw i32 %.043, %i.al
  %i.an = sitofp nsz i32 %i.am to double
  %i.ao = fmul nsz double %i.p, %i.an
  %i.ap = call nsz double @llvm.cos.f64(double %i.ao)
  %i.aq = fptrunc nsz double %i.ap to float
  %gep70 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep69, i64 %indvars.iv62
  store float %i.aq, ptr %gep70, align 4, !tbaa !24
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %exitcond66.not = icmp eq i64 %indvars.iv.next63, %wide.trip.count65
  br i1 %exitcond66.not, label %.loopexit, label %.lr.ph54, !llvm.loop !149

.loopexit:                                        ; preds = %.lr.ph52, %.lr.ph54, %.preheader48, %.preheader, %bb.d, %bb.c
  %.042 = phi i32 [ %i.g, %bb.c ], [ -12, %bb.d ], [ 0, %.preheader ], [ 0, %.preheader48 ], [ 0, %.lr.ph54 ], [ 0, %.lr.ph52 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.042
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_dctIII_float_c(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i64 %3) #3 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !21     ; 5 uses
  %i.b = ashr i32 %i.a, 1                         ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23   ; 12 uses
  %i.e = sext i32 %i.a to i64                     ; 5 uses
  %i.f = getelementptr [4 x i8], ptr %2, i64 %i.e ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 -4
  %i.h = load float, ptr %i.g, align 4, !tbaa !24
  %i.i = fmul nsz float %i.h, 2.000000e+00
  store float %i.i, ptr %i.f, align 4, !tbaa !24
  %i.j = icmp sgt i32 %i.a, 3
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %4 = zext nneg i32 %i.a to i64                  ; 7 uses
  %5 = tail call i64 @llvm.usub.sat.i64(i64 %4, i64 5) ; 2 uses
  %i.k = add nuw nsw i64 %5, 1
  %i.l = lshr i64 %i.k, 1
  %i.m = add nuw nsw i64 %i.l, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %5, 23
  br i1 %min.iters.check, label %.lr.ph.preheader92, label %vector.memcheck

.lr.ph.preheader92:                               ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %indvars.iv.ph = phi i64 [ %4, %vector.memcheck ], [ %4, %.lr.ph.preheader ], [ %i.y, %vector.body ]
  br label %.lr.ph

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.n = shl nuw nsw i64 %4, 2                    ; 6 uses
  %i.o = add nsw i64 %i.n, -12
  %6 = tail call i64 @llvm.usub.sat.i64(i64 %4, i64 5)
  %i.p = shl nuw nsw i64 %6, 2
  %7 = add nuw nsw i64 %i.p, 4
  %8 = and i64 %7, 17179869176                    ; 3 uses
  %i.q = sub nsw i64 %i.o, %8
  %scevgep = getelementptr i8, ptr %2, i64 %i.q   ; 2 uses
  %scevgep76 = getelementptr i8, ptr %2, i64 %i.n ; 2 uses
  %i.r = add nsw i64 %i.n, -8
  %i.s = sub nsw i64 %i.r, %8
  %scevgep77 = getelementptr i8, ptr %i.d, i64 %i.s
  %i.t = getelementptr i8, ptr %i.d, i64 %i.n
  %scevgep78 = getelementptr i8, ptr %i.t, i64 -4
  %9 = shl nuw nsw i64 %i.e, 2                    ; 2 uses
  %10 = add nuw nsw i64 %9, 8
  %11 = sub nsw i64 %10, %i.n
  %scevgep79 = getelementptr i8, ptr %i.d, i64 %11
  %12 = add nuw nsw i64 %8, %9
  %13 = add nuw nsw i64 %12, 12
  %14 = sub nsw i64 %13, %i.n
  %scevgep80 = getelementptr i8, ptr %i.d, i64 %14
  %bound0 = icmp ult ptr %scevgep, %scevgep78
  %bound1 = icmp ult ptr %scevgep77, %scevgep76
  %found.conflict = and i1 %bound0, %bound1
  %bound081 = icmp ult ptr %scevgep, %scevgep80
  %bound182 = icmp ult ptr %scevgep79, %scevgep76
  %found.conflict83 = and i1 %bound081, %bound182
  %conflict.rdx = or i1 %found.conflict, %found.conflict83
  br i1 %conflict.rdx, label %.lr.ph.preheader92, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.u = and i64 %i.m, 3                          ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  %i.w = select i1 %i.v, i64 4, i64 %i.u
  %n.vec = sub nsw i64 %i.m, %i.w                 ; 2 uses
  %i.x = shl nsw i64 %n.vec, 1
  %i.y = sub i64 %4, %i.x
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.z = shl i64 %index, 1
  %i.aa = sub i64 %4, %i.z                        ; 4 uses
  %i.ab = add nsw i64 %i.aa, -2                   ; 3 uses
  %i.ac = add i64 %i.aa, -4                       ; 2 uses
  %i.ad = add i64 %i.aa, -6                       ; 2 uses
  %i.ae = add i64 %i.aa, -8                       ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ab ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ac
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ad
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ae
  %i.aj = getelementptr inbounds i8, ptr %i.af, i64 -24 ; 2 uses
  %wide.vec = load <8 x float>, ptr %i.aj, align 4, !tbaa !24, !alias.scope !157, !noalias !158 ; 2 uses
  %reverse = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 6, i32 4, i32 2, i32 0> ; 2 uses
  %reverse85 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 7, i32 5, i32 3, i32 1>
  %i.ak = getelementptr i8, ptr %i.af, i64 -4
  %i.al = getelementptr i8, ptr %i.ag, i64 -4
  %i.am = getelementptr i8, ptr %i.ah, i64 -4
  %i.an = getelementptr i8, ptr %i.ai, i64 -4
  %i.ao = load float, ptr %i.ak, align 4, !tbaa !24, !alias.scope !157, !noalias !158
  %i.ap = load float, ptr %i.al, align 4, !tbaa !24, !alias.scope !157, !noalias !158
  %i.aq = load float, ptr %i.am, align 4, !tbaa !24, !alias.scope !157, !noalias !158
  %i.ar = load float, ptr %i.an, align 4, !tbaa !24, !alias.scope !157, !noalias !158
  %i.as = insertelement <4 x float> poison, float %i.ao, i64 0
  %i.at = insertelement <4 x float> %i.as, float %i.ap, i64 1
  %i.au = insertelement <4 x float> %i.at, float %i.aq, i64 2
  %i.av = insertelement <4 x float> %i.au, float %i.ar, i64 3
  %i.aw = fsub nsz <4 x float> %i.av, %reverse85  ; 2 uses
  %i.ax = sub nuw nsw i64 %i.e, %i.ab
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ax ; 2 uses
  %wide.vec86 = load <8 x float>, ptr %i.ay, align 4, !tbaa !24, !alias.scope !159
  %strided.vec87 = shufflevector <8 x float> %wide.vec86, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ab ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ac ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ad ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae ; 2 uses
  %i.bd = load float, ptr %i.az, align 4, !tbaa !24, !alias.scope !160
  %i.be = load float, ptr %i.ba, align 4, !tbaa !24, !alias.scope !160
  %i.bf = load float, ptr %i.bb, align 4, !tbaa !24, !alias.scope !160
  %i.bg = load float, ptr %i.bc, align 4, !tbaa !24, !alias.scope !160
  %i.bh = insertelement <4 x float> poison, float %i.bd, i64 0
  %i.bi = insertelement <4 x float> %i.bh, float %i.be, i64 1
  %i.bj = insertelement <4 x float> %i.bi, float %i.bf, i64 2
  %i.bk = insertelement <4 x float> %i.bj, float %i.bg, i64 3
  %i.bl = fneg nsz <4 x float> %i.aw
  %i.bm = fmul nsz <4 x float> %i.bk, %i.bl
  %i.bn = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec87, <4 x float> %reverse, <4 x float> %i.bm)
  %wide.vec88 = load <8 x float>, ptr %i.ay, align 4, !tbaa !24, !alias.scope !159
  %strided.vec89 = shufflevector <8 x float> %wide.vec88, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.bo = load float, ptr %i.az, align 4, !tbaa !24, !alias.scope !160
  %i.bp = load float, ptr %i.ba, align 4, !tbaa !24, !alias.scope !160
  %i.bq = load float, ptr %i.bb, align 4, !tbaa !24, !alias.scope !160
  %i.br = load float, ptr %i.bc, align 4, !tbaa !24, !alias.scope !160
  %i.bs = insertelement <4 x float> poison, float %i.bo, i64 0
  %i.bt = insertelement <4 x float> %i.bs, float %i.bp, i64 1
  %i.bu = insertelement <4 x float> %i.bt, float %i.bq, i64 2
  %i.bv = insertelement <4 x float> %i.bu, float %i.br, i64 3
  %i.bw = fmul nsz <4 x float> %reverse, %i.bv
  %i.bx = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec89, <4 x float> %i.aw, <4 x float> %i.bw)
  %interleaved.vec = shufflevector <4 x float> %i.bx, <4 x float> %i.bn, <8 x i32> <i32 3, i32 7, i32 2, i32 6, i32 1, i32 5, i32 0, i32 4>
  store <8 x float> %interleaved.vec, ptr %i.aj, align 4, !tbaa !24, !alias.scope !157, !noalias !158
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %.lr.ph.preheader92, label %vector.body, !llvm.loop !154

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !10
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !32
  tail call void %i.ca(ptr noundef %i.cc, ptr noundef %1, ptr noundef nonnull %2, i64 noundef 4) #16
  %i.cd = icmp sgt i32 %i.b, 0
  br i1 %i.cd, label %.lr.ph70.preheader, label %._crit_edge71

.lr.ph70.preheader:                               ; preds = %._crit_edge
  %wide.trip.count = zext nneg i32 %i.b to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.d, i64 %i.e
  br label %.lr.ph70

.lr.ph:                                           ; preds = %.lr.ph.preheader92, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader92 ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -2  ; 4 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next ; 4 uses
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !24 ; 2 uses
  %i.cg = getelementptr i8, ptr %i.ce, i64 -4
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !24
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 4 ; 2 uses
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !24
  %i.ck = fsub nsz float %i.ch, %i.cj             ; 2 uses
  %i.cl = sub nuw nsw i64 %i.e, %indvars.iv.next
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.cl ; 2 uses
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !24
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next ; 2 uses
  %i.cp = load float, ptr %i.co, align 4, !tbaa !24
  %i.cq = fneg nsz float %i.ck
  %i.cr = fmul nsz float %i.cp, %i.cq
  %i.cs = tail call nsz float @llvm.fmuladd.f32(float %i.cn, float %i.cf, float %i.cr)
  store float %i.cs, ptr %i.ci, align 4, !tbaa !24
  %i.ct = load float, ptr %i.cm, align 4, !tbaa !24
  %i.cu = load float, ptr %i.co, align 4, !tbaa !24
  %i.cv = fmul nsz float %i.cf, %i.cu
  %i.cw = tail call nsz float @llvm.fmuladd.f32(float %i.ct, float %i.ck, float %i.cv)
  store float %i.cw, ptr %i.ce, align 4, !tbaa !24
  %i.cx = icmp samesign ugt i64 %indvars.iv, 5
  br i1 %i.cx, label %.lr.ph, label %._crit_edge, !llvm.loop !155

._crit_edge71:                                    ; preds = %.lr.ph70, %._crit_edge
  ret void

.lr.ph70:                                         ; preds = %.lr.ph70.preheader, %.lr.ph70
  %indvars.iv73 = phi i64 [ 0, %.lr.ph70.preheader ], [ %indvars.iv.next74, %.lr.ph70 ] ; 4 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv73 ; 2 uses
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !24 ; 2 uses
  %i.da = trunc i64 %indvars.iv73 to i32
  %i.db = xor i32 %i.da, -1
  %i.dc = add i32 %i.a, %i.db
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds [4 x i8], ptr %1, i64 %i.dd ; 2 uses
  %i.df = load float, ptr %i.de, align 4, !tbaa !24 ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv73
  %i.dg = load float, ptr %gep, align 4, !tbaa !24
  %i.dh = fadd nsz float %i.cz, %i.df             ; 2 uses
  %i.di = fsub nsz float %i.cz, %i.df
  %i.dj = fmul nsz float %i.di, %i.dg             ; 2 uses
  %i.dk = fadd nsz float %i.dh, %i.dj
  store float %i.dk, ptr %i.cy, align 4, !tbaa !24
  %i.dl = fsub nsz float %i.dh, %i.dj
  store float %i.dl, ptr %i.de, align 4, !tbaa !24
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next74, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge71, label %.lr.ph70, !llvm.loop !156
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_dctI_float_c(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #3 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.b = add i32 %i.a, -1                         ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31   ; 8 uses
  %i.e = lshr i64 %3, 2                           ; 4 uses
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
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.j
  %i.l = load float, ptr %i.k, align 4, !tbaa !24 ; 2 uses
  %i.m = sub nuw nsw i64 %i.h, %indvars.iv.epil.init
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.m
  store float %i.l, ptr %i.n, align 4, !tbaa !24
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.epil.init
  store float %i.l, ptr %i.o, align 4, !tbaa !24
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %i.p = sext i32 %i.b to i64                     ; 2 uses
  %i.q = mul nsw i64 %i.e, %i.p
  %i.r = getelementptr inbounds [4 x i8], ptr %2, i64 %i.q
  %i.s = load float, ptr %i.r, align 4, !tbaa !24
  %i.t = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.p
  store float %i.s, ptr %i.t, align 4, !tbaa !24
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !10
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !32
  tail call void %i.v(ptr noundef %i.x, ptr noundef %1, ptr noundef %i.d, i64 noundef 4) #16
  ret void

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.y = mul nuw nsw i64 %i.e, %indvars.iv
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.y
  %i.aa = load float, ptr %i.z, align 4, !tbaa !24 ; 2 uses
  %i.ab = sub nuw nsw i64 %i.h, %indvars.iv
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ab
  store float %i.aa, ptr %i.ac, align 4, !tbaa !24
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  store float %i.aa, ptr %i.ad, align 4, !tbaa !24
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.ae = mul nuw nsw i64 %i.e, %indvars.iv.next
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ae
  %i.ag = load float, ptr %i.af, align 4, !tbaa !24 ; 2 uses
  %i.ah = sub nuw nsw i64 %i.h, %indvars.iv.next
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ah
  store float %i.ag, ptr %i.ai, align 4, !tbaa !24
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next
  store float %i.ag, ptr %i.aj, align 4, !tbaa !24
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !161
}

; Function Attrs: cold nounwind optsize uwtable
define internal i32 @ff_tx_dcstI_init_float_c(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree readnone captures(none) %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6) #0 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = load float, ptr %6, align 4, !tbaa !24   ; 2 uses
  store float %i.b, ptr %i.a, align 4, !tbaa !24
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = shl nsw i32 %4, 1
  %i.d = load i32, ptr %0, align 8, !tbaa !21
  %i.e = shl nsw i32 %i.d, 1
  store i32 %i.e, ptr %0, align 8, !tbaa !21
  %i.f = fmul nsz float %i.b, 5.000000e-01
  store float %i.f, ptr %i.a, align 4, !tbaa !24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.014 = phi i32 [ %i.c, %bb.b ], [ %4, %bb.a ]  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !164  ; 2 uses
  %i.i = icmp eq i32 %i.h, 12
  %i.j = select i1 %i.i, i64 8, i64 16
  %i.k = or i64 %i.j, %2
  %i.l = add nsw i32 %.014, -1
  %i.m = icmp eq i32 %i.h, 15
  %i.n = select i1 %i.m, i32 2, i32 0
  %i.o = add nsw i32 %i.l, %i.n
  %i.p = shl nsw i32 %i.o, 1
  %i.q = call i32 @ff_tx_init_subtx(ptr noundef %0, i32 noundef 6, i64 noundef %i.k, ptr noundef null, i32 noundef %i.p, i32 noundef 0, ptr noundef nonnull %i.a) #16 ; 2 uses
  %.not16 = icmp eq i32 %i.q, 0
  br i1 %.not16, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = shl i32 %.014, 1
  %i.s = add i32 %i.r, 2
  %i.t = sext i32 %i.s to i64
  %i.u = shl nsw i64 %i.t, 2
  %i.v = call noalias ptr @av_mallocz(i64 noundef %i.u) #16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.v, ptr %i.w, align 8, !tbaa !31
  %.not17 = icmp eq ptr %i.v, null
  %. = select i1 %.not17, i32 -12, i32 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ %., %bb.d ], [ %i.q, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_dstI_float_c(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #3 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.b = add i32 %i.a, 1                          ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31   ; 9 uses
  %i.e = lshr i64 %3, 2                           ; 3 uses
  store float 0.000000e+00, ptr %i.d, align 4, !tbaa !24
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

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod28 = trunc i64 %i.h to i1
  tail call void @llvm.assume(i1 %lcmp.mod28)
  %i.j = add nsw i64 %indvars.iv.epil.init, -1
  %i.k = mul nuw nsw i64 %i.e, %i.j
  %i.l = getelementptr inbounds [4 x i8], ptr %2, i64 %i.k
  %i.m = load float, ptr %i.l, align 4, !tbaa !24 ; 2 uses
  %i.n = fneg nsz float %i.m
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.epil.init
  store float %i.n, ptr %i.o, align 4, !tbaa !24
  %i.p = sub nuw nsw i64 %i.g, %indvars.iv.epil.init
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.p
  store float %i.m, ptr %i.q, align 4, !tbaa !24
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %i.r = sext i32 %i.b to i64
  %i.s = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.r
  store float 0.000000e+00, ptr %i.s, align 4, !tbaa !24
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !10
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !32
  tail call void %i.u(ptr noundef %i.w, ptr noundef %1, ptr noundef nonnull %i.d, i64 noundef 4) #16
  ret void

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.x = add nsw i64 %indvars.iv, -1
  %i.y = mul nuw nsw i64 %i.e, %i.x
  %i.z = getelementptr inbounds [4 x i8], ptr %2, i64 %i.y
  %i.aa = load float, ptr %i.z, align 4, !tbaa !24 ; 2 uses
  %i.ab = fneg nsz float %i.aa
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  store float %i.ab, ptr %i.ac, align 4, !tbaa !24
  %i.ad = sub nuw nsw i64 %i.g, %indvars.iv
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ad
  store float %i.aa, ptr %i.ae, align 4, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.af = mul nuw nsw i64 %i.e, %indvars.iv
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.af
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !24 ; 2 uses
  %i.ai = fneg nsz float %i.ah
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next
  store float %i.ai, ptr %i.aj, align 4, !tbaa !24
  %i.ak = sub nuw nsw i64 %i.g, %indvars.iv.next
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ak
  store float %i.ah, ptr %i.al, align 4, !tbaa !24
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !165
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { double, double } @llvm.sincos.f64(double) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { <2 x double>, <2 x double> } @llvm.sincos.v2f64(<2 x double>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.cos.v4f64(<4 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.cos.v2f64(<2 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #4

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { cold nofree norecurse nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { cold }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!6, !6, i64 0}
!13 = !{!"p1 int", !9, i64 0}
!14 = !{!"p1 _ZTS14AVComplexFloat", !9, i64 0}
!15 = !{!"p1 _ZTS11AVTXContext", !9, i64 0}
!16 = !{!"p1 _ZTS11FFTXCodelet", !9, i64 0}
!17 = !{!"long", !5, i64 0}
!18 = !{!"float", !5, i64 0}
!19 = !{!"double", !5, i64 0}
!20 = !{!"AVTXContext", !6, i64 0, !6, i64 4, !13, i64 8, !14, i64 16, !14, i64 24, !15, i64 32, !5, i64 40, !6, i64 72, !5, i64 80, !16, i64 112, !6, i64 120, !17, i64 128, !6, i64 136, !18, i64 140, !19, i64 144, !9, i64 152}
!21 = !{!20, !6, i64 0}
!22 = !{!20, !19, i64 144}
!23 = !{!20, !14, i64 16}
!24 = !{!18, !18, i64 0}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = !{!"llvm.loop.unroll.runtime.disable"}
!27 = !{!"AVComplexFloat", !18, i64 0, !18, i64 4}
!28 = !{!27, !18, i64 0}
!29 = !{!27, !18, i64 4}
!30 = !{!20, !17, i64 128}
!31 = !{!20, !14, i64 24}
!32 = !{!20, !15, i64 32}
!33 = !{!20, !13, i64 8}
!34 = !{!"llvm.loop.unroll.disable"}
!35 = !{!"FFTXCodeletOptions", !6, i64 0}
!36 = !{!35, !6, i64 0}
!37 = !{!14, !14, i64 0}
!38 = !{!20, !6, i64 4}
!39 = !{!20, !18, i64 140}
!40 = distinct !{!40, !11}
!41 = distinct !{!41, !11}
!42 = distinct !{!42, !11}
!43 = !{!"branch_weights", i32 1, i32 1048575}
!44 = !{!"FFTabInitData", !9, i64 0, !5, i64 8}
!45 = !{!44, !9, i64 0}
!46 = distinct !{!46, !11, !25, !26}
!47 = distinct !{!47, !11, !26, !25}
!48 = distinct !{!48, !11}
!49 = distinct !{!49, !11, !25, !26}
!50 = distinct !{!50, !11, !25, !26}
!51 = distinct !{!51, !11, !25, !26}
!52 = distinct !{!52, !11, !25, !26}
!53 = distinct !{!53, !11, !25, !26}
!54 = distinct !{!54, !11, !25, !26}
!55 = distinct !{!55, !11, !25, !26}
!56 = distinct !{!56, !11, !25, !26}
!57 = distinct !{!57, !11, !25, !26}
!58 = distinct !{!58, !11, !25, !26}
!59 = distinct !{!59, !11, !25, !26}
!60 = distinct !{!60, !11, !25, !26}
!61 = distinct !{!61, !11, !25, !26}
!62 = distinct !{!62, !11}
!63 = distinct !{!63, !34}
!64 = distinct !{!64, !11}
!65 = distinct !{!65, !11}
!66 = distinct !{!66, !11}
!67 = distinct !{!67, !11}
!68 = distinct !{!68, !34}
!69 = distinct !{!69, !11}
!70 = distinct !{!70, !11}
!71 = distinct !{!71, !34}
!72 = distinct !{!72, !11}
!73 = distinct !{!73, !11}
!74 = distinct !{!74, !11}
!75 = distinct !{!75, !11}
!76 = distinct !{!76, !11}
!77 = distinct !{!77, !11}
!78 = distinct !{!78, !34}
!79 = distinct !{!79, !11}
!80 = distinct !{!80, !11}
!81 = distinct !{!81, !11}
!82 = distinct !{!82, !11}
!83 = distinct !{!83, !11}
!84 = distinct !{!84, !11}
!85 = distinct !{!85, !11}
!86 = distinct !{!86, !11}
!87 = distinct !{!87, !11}
!88 = distinct !{!88, !11}
!89 = distinct !{!89, !11}
!90 = distinct !{!90, !11}
!91 = distinct !{!91, !11}
!92 = distinct !{!92, !11}
!93 = distinct !{!93, !11}
!94 = distinct !{!94, !11}
!95 = distinct !{!95, !11}
!96 = distinct !{!96, !11}
!97 = distinct !{!97, !11}
!98 = distinct !{!98, !11}
!99 = distinct !{!99, !11}
!100 = distinct !{!100, !11}
!101 = distinct !{!101, !11}
!102 = distinct !{!102, !11}
!103 = distinct !{!103, !11}
!104 = distinct !{!104, !11}
!105 = distinct !{!105, !11}
!106 = distinct !{!106, !11}
!107 = distinct !{!107, !11}
!108 = distinct !{!108, !11}
!109 = distinct !{!109, !11}
!110 = distinct !{!110, !11}
!111 = distinct !{!111, !11}
!112 = distinct !{!112, !11}
!113 = distinct !{!113, !11}
!114 = distinct !{!114, !11}
!115 = distinct !{!115, !11}
!116 = distinct !{!116, !11}
!117 = distinct !{!117, !11}
!118 = distinct !{!118, !11}
!119 = distinct !{!119, !11}
!120 = distinct !{!120, !11}
!121 = distinct !{!121, !11}
!122 = distinct !{!122, !11}
!123 = distinct !{!123, !11}
!124 = distinct !{!124, !11}
!125 = distinct !{!125, !11}
!126 = distinct !{!126, !11}
!127 = distinct !{!127, !11}
!128 = distinct !{!128, !11, !25, !26}
!129 = distinct !{!129, !34}
!130 = distinct !{!130, !11}
!131 = distinct !{!131, !11, !25}
!132 = distinct !{!132, !11, !25, !26}
!133 = distinct !{!133, !34}
!134 = distinct !{!134, !11}
!135 = distinct !{!135, !11, !25}
!136 = distinct !{!136, !11, !25, !26}
!137 = distinct !{!137, !34}
!138 = distinct !{!138, !11}
!139 = distinct !{!139, !11, !25}
!140 = distinct !{!140, !11, !25, !26}
!141 = distinct !{!141, !34}
!142 = distinct !{!142, !11}
!143 = distinct !{!143, !11, !25}
!144 = distinct !{!144, !11}
!145 = distinct !{!145, !11}
!146 = distinct !{!146, !11}
!147 = distinct !{!147, !11}
!148 = distinct !{!148, !11}
!149 = distinct !{!149, !11}
!150 = distinct !{!150, !"LVerDomain"}
!151 = distinct !{!151, !150}
!152 = distinct !{!152, !150}
!153 = distinct !{!153, !150}
!154 = distinct !{!154, !11, !25, !26}
!155 = distinct !{!155, !11, !25}
!156 = distinct !{!156, !11}
!157 = !{!151}
!158 = !{!153, !152}
!159 = !{!152}
!160 = !{!153}
!161 = distinct !{!161, !11}
!162 = !{!"p1 omnipotent char", !9, i64 0}
!163 = !{!"FFTXCodelet", !162, i64 0, !9, i64 8, !6, i64 16, !17, i64 24, !5, i64 32, !6, i64 96, !6, i64 100, !6, i64 104, !9, i64 112, !9, i64 120, !6, i64 128, !6, i64 132}
!164 = !{!163, !6, i64 16}
!165 = distinct !{!165, !11}
end_hunk_0
