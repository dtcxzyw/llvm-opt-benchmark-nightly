Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/cs_lu?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@cs_lu:bb.a
  %i.b = load i32, ptr %i.a, align 8, !tbaa !8
  %i.c = icmp eq i32 %i.b, -1
  %i.d = icmp ne ptr %1, null
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %bb.c, label %bb.u

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !13   ; 23 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = load <2 x double>, ptr %i.i, align 8, !tbaa !17
  %i.k = tail call ptr @cs_malloc(i32 noundef %i.f, i64 noundef 8) #5 ; 10 uses
  %i.l = shl nsw i32 %i.f, 1
  %i.m = tail call ptr @cs_malloc(i32 noundef %i.l, i64 noundef 4) #5 ; 5 uses
  %i.n = tail call ptr @cs_calloc(i32 noundef 1, i64 noundef 32) #5 ; 5 uses
  %i.o = icmp ne ptr %i.k, null
  %i.p = icmp ne ptr %i.m, null
  %or.cond3 = select i1 %i.o, i1 %i.p, i1 false
  %i.q = icmp ne ptr %i.n, null
  %or.cond5 = select i1 %or.cond3, i1 %i.q, i1 false
  br i1 %or.cond5, label %bb.d, label %.sink.split

bb.d:                                             ; preds = %bb.c
  %i.r = fptosi <2 x double> %i.j to <2 x i32>    ; 2 uses
  %i.s = extractelement <2 x i32> %i.r, i64 0
  %i.t = tail call ptr @cs_spalloc(i32 noundef %i.f, i32 noundef %i.f, i32 noundef %i.s, i32 noundef 1, i32 noundef 0) #5 ; 10 uses
  store ptr %i.t, ptr %i.n, align 8, !tbaa !18
  %i.u = extractelement <2 x i32> %i.r, i64 1
  %i.v = tail call ptr @cs_spalloc(i32 noundef %i.f, i32 noundef %i.f, i32 noundef %i.u, i32 noundef 1, i32 noundef 0) #5 ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.v, ptr %i.w, align 8, !tbaa !21
  %i.x = tail call ptr @cs_malloc(i32 noundef %i.f, i64 noundef 4) #5 ; 13 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.x, ptr %i.y, align 8, !tbaa !22
  %i.z = icmp ne ptr %i.t, null
  %i.aa = icmp ne ptr %i.v, null
  %or.cond7 = select i1 %i.z, i1 %i.aa, i1 false
  %i.ab = icmp ne ptr %i.x, null
  %or.cond9 = select i1 %or.cond7, i1 %i.ab, i1 false
  br i1 %or.cond9, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !23 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !23 ; 3 uses
  %i.ag = icmp sgt i32 %i.f, 0
  br i1 %i.ag, label %.lr.ph246, label %.preheader218

.preheader218:                                    ; preds = %bb.e
  %.not214227 = icmp slt i32 %i.f, 0
  br i1 %.not214227, label %._crit_edge247.thread, label %.preheader

.preheader:                                       ; preds = %.preheader218
  %i.ah = add nuw nsw i32 %i.f, 1
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.ai, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ad, i8 0, i64 %i.aj, i1 false), !tbaa !24
  br label %._crit_edge247.thread

.lr.ph246:                                        ; preds = %bb.e
  %i.ak = zext nneg i32 %i.f to i64
  %i.al = shl nuw nsw i64 %i.ak, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.k, i8 0, i64 %i.al, i1 false), !tbaa !17
  %i.am = zext nneg i32 %i.f to i64
  %i.an = shl nuw nsw i64 %i.am, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.x, i8 -1, i64 %i.an, i1 false), !tbaa !24
  %i.ao = add nuw i32 %i.f, 1
  %i.ap = zext i32 %i.ao to i64
  %i.aq = shl nuw nsw i64 %i.ap, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ad, i8 0, i64 %i.aq, i1 false), !tbaa !24
  %i.ar = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %.not217 = icmp eq ptr %i.h, null
  %wide.trip.count266 = zext nneg i32 %i.f to i64
  %wide.trip.count = zext nneg i32 %i.f to i64
  %wide.trip.count261 = zext nneg i32 %i.f to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph246, %._crit_edge241
  %indvars.iv263 = phi i64 [ 0, %.lr.ph246 ], [ %indvars.iv.next264, %._crit_edge241 ] ; 5 uses
  %.0245 = phi i32 [ 0, %.lr.ph246 ], [ %i.da, %._crit_edge241 ] ; 3 uses
  %.0184244 = phi i32 [ 0, %.lr.ph246 ], [ %.2186, %._crit_edge241 ] ; 4 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv263
  store i32 %.0184244, ptr %i.av, align 4, !tbaa !24
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv263
  store i32 %.0245, ptr %i.aw, align 4, !tbaa !24
  %i.ax = add nsw i32 %.0184244, %i.f
  %i.ay = load i32, ptr %i.t, align 8, !tbaa !25  ; 2 uses
  %i.az = icmp sgt i32 %i.ax, %i.ay
  br i1 %i.az, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ba = shl nsw i32 %i.ay, 1
  %i.bb = add nsw i32 %i.ba, %i.f
  %i.bc = tail call i32 @cs_sprealloc(ptr noundef nonnull %i.t, i32 noundef %i.bb) #5
  %.not215 = icmp eq i32 %i.bc, 0
  br i1 %.not215, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bd = add nsw i32 %.0245, %i.f
  %i.be = load i32, ptr %i.v, align 8, !tbaa !25  ; 2 uses
  %i.bf = icmp sgt i32 %i.bd, %i.be
  br i1 %i.bf, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bg = shl nsw i32 %i.be, 1
  %i.bh = add nsw i32 %i.bg, %i.f
  %i.bi = tail call i32 @cs_sprealloc(ptr noundef nonnull %i.v, i32 noundef %i.bh) #5
  %.not216 = icmp eq i32 %i.bi, 0
  br i1 %.not216, label %.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bj = load ptr, ptr %i.ar, align 8, !tbaa !26 ; 2 uses
  %i.bk = load ptr, ptr %i.as, align 8, !tbaa !27 ; 2 uses
  %i.bl = load ptr, ptr %i.at, align 8, !tbaa !26 ; 2 uses
  %i.bm = load ptr, ptr %i.au, align 8, !tbaa !27 ; 2 uses
  %i.bn = trunc nuw nsw i64 %indvars.iv263 to i32 ; 3 uses
  br i1 %.not217, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv263
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !24
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.bq = phi i32 [ %i.bp, %bb.k ], [ %i.bn, %bb.j ] ; 3 uses
  %i.br = tail call i32 @cs_spsolve(ptr noundef nonnull %i.t, ptr noundef nonnull %0, i32 noundef %i.bq, ptr noundef nonnull %i.m, ptr noundef nonnull %i.k, ptr noundef nonnull %i.x, i32 noundef 1) #5 ; 3 uses
  %i.bs = icmp slt i32 %i.br, %i.f
  br i1 %i.bs, label %.lr.ph234.preheader, label %.sink.split

.lr.ph234.preheader:                              ; preds = %bb.l
  %i.bt = sext i32 %i.br to i64
  br label %.lr.ph234

.lr.ph234:                                        ; preds = %.lr.ph234.preheader, %bb.p
  %indvars.iv = phi i64 [ %i.bt, %.lr.ph234.preheader ], [ %indvars.iv.next, %bb.p ] ; 2 uses
  %.1233 = phi i32 [ %.0245, %.lr.ph234.preheader ], [ %.2, %bb.p ] ; 4 uses
  %.0194231 = phi i32 [ -1, %.lr.ph234.preheader ], [ %.1195, %bb.p ] ; 2 uses
  %.0197230 = phi double [ -1.000000e+00, %.lr.ph234.preheader ], [ %.1198, %bb.p ] ; 3 uses
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.m, i64 %indvars.iv
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !24 ; 2 uses
  %i.bw = sext i32 %i.bv to i64                   ; 3 uses
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !24 ; 2 uses
  %i.bz = icmp slt i32 %i.by, 0
  br i1 %i.bz, label %bb.m, label %bb.o

bb.m:                                             ; preds = %.lr.ph234
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.bw
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !17
  %i.cc = tail call double @llvm.fabs.f64(double %i.cb) ; 2 uses
  %i.cd = fcmp ogt double %i.cc, %.0197230
  br i1 %i.cd, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph234
  %i.ce = sext i32 %.1233 to i64                  ; 2 uses
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.ce
  store i32 %i.by, ptr %i.cf, align 4, !tbaa !24
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.bw
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !17
  %i.ci = add nsw i32 %.1233, 1
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.ce
  store double %i.ch, ptr %i.cj, align 8, !tbaa !17
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %.1198 = phi double [ %i.cc, %bb.n ], [ %.0197230, %bb.m ], [ %.0197230, %bb.o ] ; 3 uses
  %.1195 = phi i32 [ %i.bv, %bb.n ], [ %.0194231, %bb.m ], [ %.0194231, %bb.o ] ; 4 uses
  %.2 = phi i32 [ %.1233, %bb.n ], [ %.1233, %bb.m ], [ %i.ci, %bb.o ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph234, !llvm.loop !28

._crit_edge:                                      ; preds = %bb.p
  %i.ck = icmp eq i32 %.1195, -1
  %i.cl = fcmp ole double %.1198, 0.000000e+00
  %or.cond11 = select i1 %i.ck, i1 true, i1 %i.cl
  br i1 %or.cond11, label %.sink.split, label %bb.q

bb.q:                                             ; preds = %._crit_edge
  %i.cm = sext i32 %i.bq to i64                   ; 2 uses
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !24
  %i.cp = icmp slt i32 %i.co, 0
  br i1 %i.cp, label %bb.r, label %.lr.ph240.preheader

bb.r:                                             ; preds = %bb.q
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.cm
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !17
  %i.cs = tail call double @llvm.fabs.f64(double %i.cr)
  %i.ct = fmul double %2, %.1198
  %i.cu = fcmp ult double %i.cs, %i.ct
  %spec.select = select i1 %i.cu, i32 %.1195, i32 %i.bq
  br label %.lr.ph240.preheader

.lr.ph240.preheader:                              ; preds = %bb.r, %bb.q
  %.2196 = phi i32 [ %.1195, %bb.q ], [ %spec.select, %bb.r ] ; 2 uses
  %i.cv = sext i32 %.2196 to i64                  ; 2 uses
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.cv
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !17 ; 2 uses
  %i.cy = sext i32 %.2 to i64                     ; 2 uses
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.cy
  store i32 %i.bn, ptr %i.cz, align 4, !tbaa !24
  %i.da = add nsw i32 %.2, 1                      ; 2 uses
  %i.db = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.cy
  store double %i.cx, ptr %i.db, align 8, !tbaa !17
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.cv
  store i32 %i.bn, ptr %i.dc, align 4, !tbaa !24
  %i.dd = sext i32 %.0184244 to i64               ; 2 uses
  %i.de = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.dd
  store i32 %.2196, ptr %i.de, align 4, !tbaa !24
  %i.df = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.dd
  store double 1.000000e+00, ptr %i.df, align 8, !tbaa !17
  %i.dg = add nsw i32 %.0184244, 1
  %i.dh = sext i32 %i.br to i64
  br label %.lr.ph240

.lr.ph240:                                        ; preds = %.lr.ph240.preheader, %bb.t
  %indvars.iv258 = phi i64 [ %i.dh, %.lr.ph240.preheader ], [ %indvars.iv.next259, %bb.t ] ; 2 uses
  %.1185238 = phi i32 [ %i.dg, %.lr.ph240.preheader ], [ %.2186, %bb.t ] ; 3 uses
  %i.di = getelementptr inbounds [4 x i8], ptr %i.m, i64 %indvars.iv258
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !24 ; 2 uses
  %i.dk = sext i32 %i.dj to i64                   ; 3 uses
  %i.dl = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !24
  %i.dn = icmp slt i32 %i.dm, 0
  br i1 %i.dn, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph240
  %i.do = sext i32 %.1185238 to i64               ; 2 uses
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.do
  store i32 %i.dj, ptr %i.dp, align 4, !tbaa !24
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.dk
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !17
  %i.ds = fdiv double %i.dr, %i.cx
  %i.dt = add nsw i32 %.1185238, 1
  %i.du = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.do
  store double %i.ds, ptr %i.du, align 8, !tbaa !17
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph240
  %.2186 = phi i32 [ %i.dt, %bb.s ], [ %.1185238, %.lr.ph240 ] ; 6 uses
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.dk
  store double 0.000000e+00, ptr %i.dv, align 8, !tbaa !17
  %indvars.iv.next259 = add nsw i64 %indvars.iv258, 1 ; 2 uses
  %exitcond262.not = icmp eq i64 %indvars.iv.next259, %wide.trip.count261
  br i1 %exitcond262.not, label %._crit_edge241, label %.lr.ph240, !llvm.loop !30

._crit_edge241:                                   ; preds = %bb.t
  %indvars.iv.next264 = add nuw nsw i64 %indvars.iv263, 1 ; 2 uses
  %exitcond267.not = icmp eq i64 %indvars.iv.next264, %wide.trip.count266
  br i1 %exitcond267.not, label %._crit_edge247, label %bb.f, !llvm.loop !31

._crit_edge247.thread:                            ; preds = %.preheader, %.preheader218
  %i.dw = sext i32 %i.f to i64                    ; 2 uses
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.dw
  store i32 0, ptr %i.dx, align 4, !tbaa !24
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.dw
  store i32 0, ptr %i.dy, align 4, !tbaa !24
  br label %._crit_edge253

._crit_edge247:                                   ; preds = %._crit_edge241
  %i.dz = zext nneg i32 %i.f to i64               ; 2 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.dz
  store i32 %.2186, ptr %i.ea, align 4, !tbaa !24
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.dz
  store i32 %i.da, ptr %i.eb, align 4, !tbaa !24
  %i.ec = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !26 ; 5 uses
  %i.ee = icmp sgt i32 %.2186, 0
  br i1 %i.ee, label %.lr.ph252.preheader, label %._crit_edge253

.lr.ph252.preheader:                              ; preds = %._crit_edge247
  %wide.trip.count271 = zext nneg i32 %.2186 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count271, 3      ; 3 uses
  %i.ef = icmp ult i32 %.2186, 4
  br i1 %i.ef, label %.lr.ph252.epil.preheader, label %.lr.ph252.preheader.new

.lr.ph252.preheader.new:                          ; preds = %.lr.ph252.preheader
  %unroll_iter = and i64 %wide.trip.count271, 2147483644
  br label %.lr.ph252

.lr.ph252:                                        ; preds = %.lr.ph252, %.lr.ph252.preheader.new
  %indvars.iv268 = phi i64 [ 0, %.lr.ph252.preheader.new ], [ %indvars.iv.next269.3, %.lr.ph252 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph252.preheader.new ], [ %niter.next.3, %.lr.ph252 ]
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv268 ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !24
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.ei
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !24
  store i32 %i.ek, ptr %i.eg, align 4, !tbaa !24
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv268
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 4 ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !24
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !24
  store i32 %i.eq, ptr %i.em, align 4, !tbaa !24
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv268
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8 ; 2 uses
  %i.et = load i32, ptr %i.es, align 4, !tbaa !24
  %i.eu = sext i32 %i.et to i64
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !24
  store i32 %i.ew, ptr %i.es, align 4, !tbaa !24
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv268
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 12 ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !24
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.fa
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !24
  store i32 %i.fc, ptr %i.ey, align 4, !tbaa !24
  %indvars.iv.next269.3 = add nuw nsw i64 %indvars.iv268, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge253.loopexit.unr-lcssa, label %.lr.ph252, !llvm.loop !32

._crit_edge253.loopexit.unr-lcssa:                ; preds = %.lr.ph252
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge253, label %.lr.ph252.epil.preheader

.lr.ph252.epil.preheader:                         ; preds = %._crit_edge253.loopexit.unr-lcssa, %.lr.ph252.preheader
  %indvars.iv268.epil.init = phi i64 [ 0, %.lr.ph252.preheader ], [ %indvars.iv.next269.3, %._crit_edge253.loopexit.unr-lcssa ]
  %lcmp.mod297 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod297)
  br label %.lr.ph252.epil

.lr.ph252.epil:                                   ; preds = %.lr.ph252.epil, %.lr.ph252.epil.preheader
  %indvars.iv268.epil = phi i64 [ %indvars.iv268.epil.init, %.lr.ph252.epil.preheader ], [ %indvars.iv.next269.epil, %.lr.ph252.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph252.epil.preheader ], [ %epil.iter.next, %.lr.ph252.epil ]
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv268.epil ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !24
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.ff
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !24
  store i32 %i.fh, ptr %i.fd, align 4, !tbaa !24
  %indvars.iv.next269.epil = add nuw nsw i64 %indvars.iv268.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge253, label %.lr.ph252.epil, !llvm.loop !33

._crit_edge253:                                   ; preds = %._crit_edge253.loopexit.unr-lcssa, %.lr.ph252.epil, %._crit_edge247.thread, %._crit_edge247
  %i.fi = tail call i32 @cs_sprealloc(ptr noundef nonnull %i.t, i32 noundef 0) #5 ; 0 uses
  %i.fj = tail call i32 @cs_sprealloc(ptr noundef nonnull %i.v, i32 noundef 0) #5 ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %._crit_edge, %bb.l, %bb.g, %bb.i, %bb.d, %bb.c, %._crit_edge253
  %.sink = phi i32 [ 1, %._crit_edge253 ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.i ], [ 0, %bb.g ], [ 0, %bb.l ], [ 0, %._crit_edge ]
  %i.fk = tail call ptr @cs_ndone(ptr noundef %i.n, ptr noundef null, ptr noundef %i.m, ptr noundef %i.k, i32 noundef %.sink) #5
  br label %bb.u

bb.u:                                             ; preds = %.sink.split, %bb.a, %bb.b
  %.0199 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.fk, %.sink.split ]
  ret ptr %.0199
}

declare ptr @cs_malloc(i32 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @cs_calloc(i32 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @cs_ndone(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @cs_spalloc(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @cs_sprealloc(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @cs_spsolve(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 40}
end_hunk_0
