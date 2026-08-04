inline.NumInlined: 399
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN3DHT15refine_ihv_dirsEi:bb.a
  %i.al = add nuw nsw i32 %.047, 5
  %i.am = add nsw i32 %i.al, %i.n
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds i8, ptr %i.l, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !101 ; 2 uses
  %i.aq = and i8 %i.ap, 4
  %narrow43 = add nuw nsw i8 %narrow42, %i.aq
  %i.ar = and i8 %i.x, 2
  %i.as = and i8 %i.ad, 2
  %narrow44 = add nuw nsw i8 %i.as, %i.ar
  %i.at = and i8 %i.aj, 2
  %narrow45 = add nuw nsw i8 %narrow44, %i.at
  %i.au = and i8 %i.ap, 2
  %narrow46 = add nuw nsw i8 %narrow45, %i.au
  %i.av = and i8 %i.r, 4
  %i.aw = icmp ne i8 %i.av, 0
  %i.ax = icmp samesign ugt i8 %narrow46, 6
  %or.cond = select i1 %i.aw, i1 %i.ax, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ay = and i8 %i.r, -6
  store i8 %i.ay, ptr %i.q, align 1, !tbaa !101
  %i.az = load ptr, ptr %i.g, align 8, !tbaa !81
  %i.ba = load i32, ptr %i.h, align 4, !tbaa !79
  %i.bb = mul nsw i32 %i.ba, %i.f
  %i.bc = add nsw i32 %i.bb, %i.k
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds i8, ptr %i.az, i64 %i.bd ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !101
  %i.bg = or i8 %i.bf, 2
  store i8 %i.bg, ptr %i.be, align 1, !tbaa !101
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !81
  %.pre49 = load i32, ptr %i.h, align 4, !tbaa !79
  %.pre50 = mul nsw i32 %.pre49, %i.f
  %.pre51 = add nsw i32 %.pre50, %i.k
  %.pre53 = sext i32 %.pre51 to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pre-phi54 = phi i64 [ %.pre53, %bb.d ], [ %i.p, %bb.c ]
  %i.bh = phi ptr [ %.pre, %bb.d ], [ %i.l, %bb.c ]
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 %.pre-phi54 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !101 ; 2 uses
  %i.bk = and i8 %i.bj, 2
  %i.bl = icmp ne i8 %i.bk, 0
  %i.bm = icmp samesign ugt i8 %narrow43, 12
  %or.cond3 = select i1 %i.bl, i1 %i.bm, i1 false
  br i1 %or.cond3, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bn = and i8 %i.bj, -3
  store i8 %i.bn, ptr %i.bi, align 1, !tbaa !101
  %i.bo = load ptr, ptr %i.g, align 8, !tbaa !81
  %i.bp = load i32, ptr %i.h, align 4, !tbaa !79
  %i.bq = mul nsw i32 %i.bp, %i.f
  %i.br = add nsw i32 %i.bq, %i.k
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds i8, ptr %i.bo, i64 %i.bs ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !101
  %i.bv = or i8 %i.bu, 4
  store i8 %i.bv, ptr %i.bt, align 1, !tbaa !101
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.b
  %i.bw = add nuw nsw i32 %.047, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.bw, %i.e
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !117
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZN3DHT10get_hv_grbEiii(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80   ; 13 uses
  %i.c = add nsw i32 %2, -1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !79   ; 7 uses
  %i.f = mul nsw i32 %i.e, %i.c
  %i.g = add nsw i32 %i.f, %1
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [12 x i8], ptr %i.b, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = load float, ptr %i.j, align 4, !tbaa !84
  %i.l = add nsw i32 %2, -2
  %i.m = mul nsw i32 %i.e, %i.l
  %i.n = add nsw i32 %i.m, %1
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [12 x i8], ptr %i.b, i64 %i.o
  %i.q = sext i32 %3 to i64                       ; 5 uses
  %i.r = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.q
  %i.s = load float, ptr %i.r, align 4, !tbaa !84 ; 2 uses
  %i.t = mul nsw i32 %i.e, %2
  %i.u = add i32 %i.t, %1                         ; 7 uses
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [12 x i8], ptr %i.b, i64 %i.v
  %i.x = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.q
  %i.y = load float, ptr %i.x, align 4, !tbaa !84 ; 4 uses
  %i.z = add nsw i32 %2, 1
  %i.aa = mul nsw i32 %i.e, %i.z
  %i.ab = add nsw i32 %i.aa, %1
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [12 x i8], ptr %i.b, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.af = load float, ptr %i.ae, align 4, !tbaa !84
  %i.ag = add nsw i32 %2, 2
  %i.ah = mul nsw i32 %i.e, %i.ag
  %i.ai = add nsw i32 %i.ah, %1
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [12 x i8], ptr %i.b, i64 %i.aj
  %i.al = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.q
  %i.am = load float, ptr %i.al, align 4, !tbaa !84
  %i.an = fmul reassoc nsz arcp contract afn float %i.y, %i.y
  %i.ao = add nsw i32 %2, -3
  %i.ap = mul nsw i32 %i.e, %i.ao
  %i.aq = add nsw i32 %i.ap, %1
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [12 x i8], ptr %i.b, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.au = load float, ptr %i.at, align 4, !tbaa !84
  %i.av = add nsw i32 %2, 3
  %i.aw = mul nsw i32 %i.e, %i.av
  %i.ax = add nsw i32 %i.aw, %1
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [12 x i8], ptr %i.b, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !84
  %i.bc = add i32 %i.u, -1
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds [12 x i8], ptr %i.b, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !84
  %i.bh = add i32 %i.u, -2
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [12 x i8], ptr %i.b, i64 %i.bi
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.q
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !84
  %i.bm = add i32 %i.u, 1
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [12 x i8], ptr %i.b, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !84
  %i.br = add i32 %i.u, 2
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [12 x i8], ptr %i.b, i64 %i.bs
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.q
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !84
  %i.bw = add i32 %i.u, -3
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [12 x i8], ptr %i.b, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !84
  %i.cb = add i32 %i.u, 3
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [12 x i8], ptr %i.b, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !84
  %i.cg = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.ch = insertelement <2 x float> %i.cg, float %i.k, i64 1 ; 2 uses
  %i.ci = fmul reassoc nsz arcp contract afn <2 x float> %i.ch, splat (float 2.000000e+00)
  %i.cj = insertelement <2 x float> poison, float %i.bl, i64 0 ; 2 uses
  %i.ck = insertelement <2 x float> %i.cj, float %i.y, i64 1 ; 2 uses
  %i.cl = insertelement <2 x float> poison, float %i.y, i64 0
  %i.cm = insertelement <2 x float> %i.cl, float %i.s, i64 1
  %i.cn = fadd reassoc nsz arcp contract afn <2 x float> %i.ck, %i.cm
  %i.co = fdiv reassoc nsz arcp contract afn <2 x float> %i.ci, %i.cn ; 3 uses
  %i.cp = insertelement <2 x float> poison, float %i.bq, i64 0
  %i.cq = insertelement <2 x float> %i.cp, float %i.af, i64 1 ; 2 uses
  %i.cr = fmul reassoc nsz arcp contract afn <2 x float> %i.cq, splat (float 2.000000e+00)
  %i.cs = insertelement <2 x float> poison, float %i.bv, i64 0
  %i.ct = insertelement <2 x float> %i.cs, float %i.am, i64 1 ; 2 uses
  %i.cu = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cv = fadd reassoc nsz arcp contract afn <2 x float> %i.ct, %i.cu
  %i.cw = fdiv reassoc nsz arcp contract afn <2 x float> %i.cr, %i.cv ; 3 uses
  %i.cx = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.co, %i.cw
  %i.cy = fdiv reassoc nsz arcp contract afn <2 x float> %i.co, %i.cw
  %i.cz = fdiv reassoc nsz arcp contract afn <2 x float> %i.cw, %i.co
  %i.da = select <2 x i1> %i.cx, <2 x float> %i.cy, <2 x float> %i.cz
  %i.db = insertelement <2 x float> %i.cj, float %i.s, i64 1
  %i.dc = fmul reassoc nsz arcp contract afn <2 x float> %i.ct, %i.db ; 3 uses
  %i.dd = insertelement <2 x float> poison, float %i.an, i64 0
  %i.de = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.df = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.de, %i.dc
  %i.dg = fdiv reassoc nsz arcp contract afn <2 x float> %i.de, %i.dc
  %i.dh = fdiv reassoc nsz arcp contract afn <2 x float> %i.dc, %i.de
  %i.di = select <2 x i1> %i.df, <2 x float> %i.dg, <2 x float> %i.dh
  %i.dj = fmul reassoc nsz arcp contract afn <2 x float> %i.da, %i.di ; 2 uses
  %i.dk = fmul reassoc nsz arcp contract afn <2 x float> %i.dj, %i.dj ; 2 uses
  %i.dl = fmul reassoc nsz arcp contract afn <2 x float> %i.dk, %i.dk ; 2 uses
  %i.dm = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.dn = insertelement <2 x float> %i.dm, float %i.bb, i64 1
  %i.do = insertelement <2 x float> poison, float %i.ca, i64 0
  %i.dp = insertelement <2 x float> %i.do, float %i.au, i64 1
  %i.dq = fmul reassoc nsz arcp contract afn <2 x float> %i.dn, %i.dp ; 3 uses
  %i.dr = fmul reassoc nsz arcp contract afn <2 x float> %i.cq, %i.ch ; 3 uses
  %i.ds = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.dq, %i.dr
  %i.dt = fdiv reassoc nsz arcp contract afn <2 x float> %i.dq, %i.dr
  %i.du = fdiv reassoc nsz arcp contract afn <2 x float> %i.dr, %i.dq
  %i.dv = select <2 x i1> %i.ds, <2 x float> %i.dt, <2 x float> %i.du
  %i.dw = fmul reassoc nsz arcp contract afn <2 x float> %i.dl, %i.dl
  %i.dx = fmul reassoc nsz arcp contract afn <2 x float> %i.dw, %i.dv ; 4 uses
  %i.dy = extractelement <2 x float> %i.dx, i64 0 ; 2 uses
  %i.dz = extractelement <2 x float> %i.dx, i64 1 ; 2 uses
  %i.ea = fcmp reassoc nsz arcp contract afn ogt float %i.dy, %i.dz
  %4 = shufflevector <2 x float> %i.dx, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %5 = fdiv reassoc nsz arcp contract afn <2 x float> %i.dx, %4 ; 2 uses
  %6 = extractelement <2 x float> %5, i64 0
  %7 = extractelement <2 x float> %5, i64 1
  %i.eb = select reassoc nsz arcp contract afn i1 %i.ea, float %6, float %7
  %i.ec = fcmp reassoc nsz arcp contract afn olt float %i.dy, %i.dz
  %i.ed = fcmp reassoc nsz arcp contract afn ogt float %i.eb, 2.560000e+02 ; 2 uses
  %i.ee = select i1 %i.ed, i32 3, i32 2
  %i.ef = select i1 %i.ed, i32 5, i32 4
  %i.eg = select i1 %i.ec, i32 %i.ee, i32 %i.ef
  ret i32 %i.eg
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZN3DHT10get_hv_rbgEiii(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80   ; 13 uses
  %i.c = add nsw i32 %2, -1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !79   ; 7 uses
  %i.f = mul nsw i32 %i.e, %i.c
  %i.g = add nsw i32 %i.f, %1
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [12 x i8], ptr %i.b, i64 %i.h
  %i.j = xor i32 %3, 2
  %i.k = sext i32 %i.j to i64                     ; 4 uses
  %i.l = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.k
  %i.m = load float, ptr %i.l, align 4, !tbaa !84
  %i.n = add nsw i32 %2, -2
  %i.o = mul nsw i32 %i.e, %i.n
  %i.p = add nsw i32 %i.o, %1
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [12 x i8], ptr %i.b, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load float, ptr %i.s, align 4, !tbaa !84 ; 2 uses
  %i.u = mul nsw i32 %i.e, %2
  %i.v = add i32 %i.u, %1                         ; 7 uses
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [12 x i8], ptr %i.b, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load float, ptr %i.y, align 4, !tbaa !84 ; 4 uses
  %i.aa = add nsw i32 %2, 1
  %i.ab = mul nsw i32 %i.e, %i.aa
  %i.ac = add nsw i32 %i.ab, %1
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [12 x i8], ptr %i.b, i64 %i.ad
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.k
  %i.ag = load float, ptr %i.af, align 4, !tbaa !84
  %i.ah = add nsw i32 %2, 2
  %i.ai = mul nsw i32 %i.e, %i.ah
  %i.aj = add nsw i32 %i.ai, %1
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [12 x i8], ptr %i.b, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.an = load float, ptr %i.am, align 4, !tbaa !84
  %i.ao = fmul reassoc nsz arcp contract afn float %i.z, %i.z
  %i.ap = add nsw i32 %2, -3
  %i.aq = mul nsw i32 %i.e, %i.ap
  %i.ar = add nsw i32 %i.aq, %1
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [12 x i8], ptr %i.b, i64 %i.as
  %i.au = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.k
  %i.av = load float, ptr %i.au, align 4, !tbaa !84
  %i.aw = add nsw i32 %2, 3
  %i.ax = mul nsw i32 %i.e, %i.aw
  %i.ay = add nsw i32 %i.ax, %1
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [12 x i8], ptr %i.b, i64 %i.az
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.k
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !84
  %i.bd = add i32 %i.v, -1
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [12 x i8], ptr %i.b, i64 %i.be
  %i.bg = sext i32 %3 to i64                      ; 4 uses
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.bg
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !84
  %i.bj = add i32 %i.v, -2
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [12 x i8], ptr %i.b, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !84
  %i.bo = add i32 %i.v, 1
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [12 x i8], ptr %i.b, i64 %i.bp
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.bg
  %i.bs = load float, ptr %i.br, align 4, !tbaa !84
  %i.bt = add i32 %i.v, 2
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [12 x i8], ptr %i.b, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !84
  %i.by = add i32 %i.v, -3
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [12 x i8], ptr %i.b, i64 %i.bz
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.bg
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !84
  %i.cd = add i32 %i.v, 3
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [12 x i8], ptr %i.b, i64 %i.ce
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.bg
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !84
  %i.ci = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.cj = insertelement <2 x float> %i.ci, float %i.m, i64 1 ; 2 uses
  %i.ck = fmul reassoc nsz arcp contract afn <2 x float> %i.cj, splat (float 2.000000e+00)
  %i.cl = insertelement <2 x float> poison, float %i.bn, i64 0 ; 2 uses
  %i.cm = insertelement <2 x float> %i.cl, float %i.z, i64 1 ; 2 uses
  %i.cn = insertelement <2 x float> poison, float %i.z, i64 0
  %i.co = insertelement <2 x float> %i.cn, float %i.t, i64 1
  %i.cp = fadd reassoc nsz arcp contract afn <2 x float> %i.cm, %i.co
  %i.cq = fdiv reassoc nsz arcp contract afn <2 x float> %i.ck, %i.cp ; 3 uses
  %i.cr = insertelement <2 x float> poison, float %i.bs, i64 0
  %i.cs = insertelement <2 x float> %i.cr, float %i.ag, i64 1 ; 2 uses
  %i.ct = fmul reassoc nsz arcp contract afn <2 x float> %i.cs, splat (float 2.000000e+00)
  %i.cu = insertelement <2 x float> poison, float %i.bx, i64 0
  %i.cv = insertelement <2 x float> %i.cu, float %i.an, i64 1 ; 2 uses
  %i.cw = shufflevector <2 x float> %i.cm, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cx = fadd reassoc nsz arcp contract afn <2 x float> %i.cv, %i.cw
  %i.cy = fdiv reassoc nsz arcp contract afn <2 x float> %i.ct, %i.cx ; 3 uses
  %i.cz = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.cq, %i.cy
  %i.da = fdiv reassoc nsz arcp contract afn <2 x float> %i.cq, %i.cy
  %i.db = fdiv reassoc nsz arcp contract afn <2 x float> %i.cy, %i.cq
  %i.dc = select <2 x i1> %i.cz, <2 x float> %i.da, <2 x float> %i.db
  %i.dd = insertelement <2 x float> %i.cl, float %i.t, i64 1
  %i.de = fmul reassoc nsz arcp contract afn <2 x float> %i.cv, %i.dd ; 3 uses
  %i.df = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.dg = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.dh = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.dg, %i.de
  %i.di = fdiv reassoc nsz arcp contract afn <2 x float> %i.dg, %i.de
  %i.dj = fdiv reassoc nsz arcp contract afn <2 x float> %i.de, %i.dg
  %i.dk = select <2 x i1> %i.dh, <2 x float> %i.di, <2 x float> %i.dj
  %i.dl = fmul reassoc nsz arcp contract afn <2 x float> %i.dc, %i.dk ; 2 uses
  %i.dm = fmul reassoc nsz arcp contract afn <2 x float> %i.dl, %i.dl ; 2 uses
  %i.dn = fmul reassoc nsz arcp contract afn <2 x float> %i.dm, %i.dm ; 2 uses
  %i.do = insertelement <2 x float> poison, float %i.ch, i64 0
  %i.dp = insertelement <2 x float> %i.do, float %i.bc, i64 1
  %i.dq = insertelement <2 x float> poison, float %i.cc, i64 0
  %i.dr = insertelement <2 x float> %i.dq, float %i.av, i64 1
  %i.ds = fmul reassoc nsz arcp contract afn <2 x float> %i.dp, %i.dr ; 3 uses
  %i.dt = fmul reassoc nsz arcp contract afn <2 x float> %i.cs, %i.cj ; 3 uses
  %i.du = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.ds, %i.dt
  %i.dv = fdiv reassoc nsz arcp contract afn <2 x float> %i.ds, %i.dt
  %i.dw = fdiv reassoc nsz arcp contract afn <2 x float> %i.dt, %i.ds
  %i.dx = select <2 x i1> %i.du, <2 x float> %i.dv, <2 x float> %i.dw
  %i.dy = fmul reassoc nsz arcp contract afn <2 x float> %i.dn, %i.dn
  %i.dz = fmul reassoc nsz arcp contract afn <2 x float> %i.dy, %i.dx ; 4 uses
  %i.ea = extractelement <2 x float> %i.dz, i64 0 ; 2 uses
  %i.eb = extractelement <2 x float> %i.dz, i64 1 ; 2 uses
  %i.ec = fcmp reassoc nsz arcp contract afn ogt float %i.ea, %i.eb
  %4 = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %5 = fdiv reassoc nsz arcp contract afn <2 x float> %i.dz, %4 ; 2 uses
  %6 = extractelement <2 x float> %5, i64 0
  %7 = extractelement <2 x float> %5, i64 1
  %i.ed = select reassoc nsz arcp contract afn i1 %i.ec, float %6, float %7
  %i.ee = fcmp reassoc nsz arcp contract afn olt float %i.ea, %i.eb
  %i.ef = fcmp reassoc nsz arcp contract afn ogt float %i.ed, 2.560000e+02 ; 2 uses
  %i.eg = select i1 %i.ef, i32 3, i32 2
  %i.eh = select i1 %i.ef, i32 5, i32 4
  %i.ei = select i1 %i.ee, i32 %i.eg, i32 %i.eh
  ret i32 %i.ei
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN3DHT16refine_diag_dirsEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !92, !nonnull !99, !align !100
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 30
  %i.d = load i16, ptr %i.c, align 2, !tbaa !78
  %i.e = zext i16 %i.d to i32                     ; 2 uses
  %i.f = icmp slt i32 %2, %i.e
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = add nsw i32 %1, 4                        ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.j = add nsw i32 %1, 3
  %i.k = add nsw i32 %1, 5
  br label %bb.b

._crit_edge:                                      ; preds = %.thread.thread, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %.thread.thread
  %.092 = phi i32 [ %2, %.lr.ph ], [ %i.dj, %.thread.thread ] ; 4 uses
  %i.l = add nsw i32 %.092, 4                     ; 6 uses
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !81   ; 11 uses
  %i.n = load i32, ptr %i.i, align 4, !tbaa !79   ; 3 uses
  %i.o = mul nsw i32 %i.n, %i.g                   ; 3 uses
  %i.p = add nsw i32 %i.o, %i.l
  %i.q = sext i32 %i.p to i64                     ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %i.m, i64 %i.q ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !101   ; 3 uses
  %i.t = and i8 %i.s, 8
  %.not = icmp eq i8 %i.t, 0
  br i1 %.not, label %bb.c, label %.thread.thread

bb.c:                                             ; preds = %bb.b
  %i.u = mul nsw i32 %i.n, %i.j                   ; 3 uses
  %i.v = add nsw i32 %i.u, %i.l
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds i8, ptr %i.m, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !101   ; 2 uses
  %i.z = and i8 %i.y, 16
  %i.aa = mul nsw i32 %i.n, %i.k                  ; 3 uses
  %i.ab = add nsw i32 %i.aa, %i.l
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds i8, ptr %i.m, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !101 ; 2 uses
  %i.af = and i8 %i.ae, 16
  %narrow = add nuw nsw i8 %i.af, %i.z
  %i.ag = add nsw i32 %.092, 3                    ; 3 uses
  %i.ah = add nsw i32 %i.o, %i.ag
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds i8, ptr %i.m, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !101 ; 2 uses
  %i.al = and i8 %i.ak, 16
  %narrow75 = add nuw nsw i8 %narrow, %i.al
  %i.am = add nsw i32 %.092, 5                    ; 3 uses
  %i.an = add nsw i32 %i.o, %i.am
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds i8, ptr %i.m, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !101 ; 2 uses
  %i.ar = and i8 %i.aq, 16
  %narrow76 = add nuw nsw i8 %narrow75, %i.ar
  %i.as = add nsw i32 %i.u, %i.ag
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds i8, ptr %i.m, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !101 ; 2 uses
  %i.aw = and i8 %i.av, 16                        ; 2 uses
  %narrow90 = add nuw nsw i8 %narrow76, %i.aw
  %i.ax = add nsw i32 %i.u, %i.am
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds i8, ptr %i.m, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !101 ; 2 uses
  %i.bb = and i8 %i.ba, 16
  %narrow101 = add nuw nsw i8 %narrow90, %i.bb
  %i.bc = add nsw i32 %i.aa, %i.ag
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds i8, ptr %i.m, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !101 ; 2 uses
  %i.bg = and i8 %i.bf, 16
  %narrow105 = add nuw i8 %narrow101, %i.bg
  %i.bh = zext i8 %narrow105 to i32
  %i.bi = add nsw i32 %i.aa, %i.am
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds i8, ptr %i.m, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !101 ; 2 uses
  %i.bm = and i8 %i.bl, 16                        ; 2 uses
  %i.bn = zext nneg i8 %i.bm to i32
  %i.bo = add nuw nsw i32 %i.bh, %i.bn
  %i.bp = and i8 %i.y, 32
  %i.bq = and i8 %i.ae, 32
  %narrow77 = add nuw nsw i8 %i.bq, %i.bp
  %i.br = and i8 %i.ak, 32
  %narrow78 = add nuw nsw i8 %narrow77, %i.br
  %i.bs = and i8 %i.aq, 32
  %narrow91 = add nuw i8 %narrow78, %i.bs
  %i.bt = zext i8 %narrow91 to i32
  %i.bu = and i8 %i.av, 32
  %i.bv = zext nneg i8 %i.bu to i32
  %i.bw = add nuw nsw i32 %i.bt, %i.bv
  %i.bx = and i8 %i.ba, 32                        ; 2 uses
  %i.by = zext nneg i8 %i.bx to i32
  %i.bz = add nuw nsw i32 %i.bw, %i.by
  %i.ca = and i8 %i.bf, 32                        ; 2 uses
  %i.cb = zext nneg i8 %i.ca to i32
  %i.cc = add nuw nsw i32 %i.bz, %i.cb
  %i.cd = and i8 %i.bl, 32
  %i.ce = zext nneg i8 %i.cd to i32
  %i.cf = add nuw nsw i32 %i.cc, %i.ce
  %i.cg = and i8 %i.s, 16
  %.not79 = icmp eq i8 %i.cg, 0
  br i1 %.not79, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not81 = icmp eq i8 %i.aw, 0
  br i1 %.not81, label %bb.f, label %.thread.thread

bb.e:                                             ; preds = %bb.c
  %.not80 = icmp ne i8 %i.bx, 0
  %i.ch = icmp ne i8 %i.ca, 0
  %spec.select = select i1 %.not80, i1 true, i1 %i.ch
  br label %.thread

bb.f:                                             ; preds = %bb.d
  %i.ci = icmp ne i8 %i.bm, 0                     ; 2 uses
  %i.cj = icmp samesign ult i32 %i.cf, 160
  %or.cond3 = select i1 %i.cj, i1 true, i1 %i.ci
  br i1 %or.cond3, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ck = and i8 %i.s, -25
  store i8 %i.ck, ptr %i.r, align 1, !tbaa !101
  %i.cl = load ptr, ptr %i.h, align 8, !tbaa !81
  %i.cm = load i32, ptr %i.i, align 4, !tbaa !79
  %i.cn = mul nsw i32 %i.cm, %i.g
  %i.co = add nsw i32 %i.cn, %i.l
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds i8, ptr %i.cl, i64 %i.cp ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !101
  %i.cs = or i8 %i.cr, 32
  store i8 %i.cs, ptr %i.cq, align 1, !tbaa !101
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !81
  %.pre93 = load i32, ptr %i.i, align 4, !tbaa !79
  %.pre94 = mul nsw i32 %.pre93, %i.g
  %.pre95 = add nsw i32 %.pre94, %i.l
  %.pre97 = sext i32 %.pre95 to i64
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.g, %bb.f
  %.pre-phi98 = phi i64 [ %i.q, %bb.e ], [ %i.q, %bb.f ], [ %.pre97, %bb.g ]
  %i.ct = phi ptr [ %i.m, %bb.e ], [ %i.m, %bb.f ], [ %.pre, %bb.g ]
  %i.cu = phi i1 [ %spec.select, %bb.e ], [ %i.ci, %bb.f ], [ false, %bb.g ]
  %i.cv = getelementptr inbounds i8, ptr %i.ct, i64 %.pre-phi98 ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !101 ; 2 uses
  %i.cx = and i8 %i.cw, 32
  %i.cy = icmp eq i8 %i.cx, 0
  %i.cz = icmp samesign ult i32 %i.bo, 80
  %or.cond5.not87 = select i1 %i.cy, i1 true, i1 %i.cz
  %or.cond7 = select i1 %or.cond5.not87, i1 true, i1 %i.cu
  br i1 %or.cond7, label %.thread.thread, label %bb.h

bb.h:                                             ; preds = %.thread
  %i.da = and i8 %i.cw, -33
  store i8 %i.da, ptr %i.cv, align 1, !tbaa !101
  %i.db = load ptr, ptr %i.h, align 8, !tbaa !81
  %i.dc = load i32, ptr %i.i, align 4, !tbaa !79
  %i.dd = mul nsw i32 %i.dc, %i.g
  %i.de = add nsw i32 %i.dd, %i.l
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds i8, ptr %i.db, i64 %i.df ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !101
  %i.di = or i8 %i.dh, 16
  store i8 %i.di, ptr %i.dg, align 1, !tbaa !101
  br label %.thread.thread

.thread.thread:                                   ; preds = %bb.d, %.thread, %bb.h, %bb.b
  %i.dj = add nsw i32 %.092, 2                    ; 2 uses
  %i.dk = icmp slt i32 %i.dj, %i.e
  br i1 %i.dk, label %bb.b, label %._crit_edge, !llvm.loop !118
}

; Function Attrs: mustprogress uwtable
define void @_ZN3DHT11make_greensEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !92, !nonnull !99, !align !100
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.d = load i16, ptr %i.c, align 4, !tbaa !14
  %.not = icmp eq i16 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

end_hunk_0
