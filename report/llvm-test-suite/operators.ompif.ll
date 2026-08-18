loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 28
begin_hunk_0_@exchange_boundary:bb.a
  %.sroa.15.84..sroa_idx213 = getelementptr inbounds nuw i8, ptr %.sroa.15, i64 84
  store i32 %i.h, ptr %.sroa.15.84..sroa_idx213, align 4, !tbaa !4
  %.sroa.15.88..sroa_idx216 = getelementptr inbounds nuw i8, ptr %.sroa.15, i64 88
  %.sroa.15.88..sroa.15.104. = load i32, ptr %.sroa.15.88..sroa_idx216, align 8, !tbaa !4
  %i.i = or i32 %.sroa.15.88..sroa.15.104., 1
  %.sroa.15.88..sroa_idx217 = getelementptr inbounds nuw i8, ptr %.sroa.15, i64 88
  store i32 %i.i, ptr %.sroa.15.88..sroa_idx217, align 8, !tbaa !4
  br label %.split48.us

.split.split.split.us.preheader:                  ; preds = %.split.split
  store i32 1, ptr %.sroa.15, align 16, !tbaa !4
  %.sroa.15.4..sroa_idx153 = getelementptr inbounds nuw i8, ptr %.sroa.15, i64 4
  store i32 1, ptr %.sroa.15.4..sroa_idx153, align 4, !tbaa !4
  %.sroa.15.12..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.15, i64 12
  store i32 1, ptr %.sroa.15.12..sroa_idx, align 4, !tbaa !4
  %.sroa.15.20..sroa_idx161 = getelementptr inbounds nuw i8, ptr %.sroa.15, i64 20
  store <4 x i32> splat (i32 1), ptr %.sroa.15.20..sroa_idx161, align 4, !tbaa !4
  %.sroa.15.40..sroa_idx175 = getelementptr inbounds nuw i8, ptr %.sroa.15, i64 40
  store <4 x i32> splat (i32 1), ptr %.sroa.15.40..sroa_idx175, align 8, !tbaa !4
  %.sroa.15.60..sroa_idx189 = getelementptr inbounds nuw i8, ptr %.sroa.15, i64 60
  store i32 1, ptr %.sroa.15.60..sroa_idx189, align 4, !tbaa !4
  %.sroa.15.68..sroa_idx195 = getelementptr inbounds nuw i8, ptr %.sroa.15, i64 68
  store i32 1, ptr %.sroa.15.68..sroa_idx195, align 4, !tbaa !4
  %.sroa.15.72..sroa_idx198 = getelementptr inbounds nuw i8, ptr %.sroa.15, i64 72
  store i32 1, ptr %.sroa.15.72..sroa_idx198, align 8, !tbaa !4
  %.sroa.15.76..sroa_idx203 = getelementptr inbounds nuw i8, ptr %.sroa.15, i64 76
  store i32 1, ptr %.sroa.15.76..sroa_idx203, align 4, !tbaa !4
  %.sroa.15.84..sroa_idx210 = getelementptr inbounds nuw i8, ptr %.sroa.15, i64 84
  store i32 1, ptr %.sroa.15.84..sroa_idx210, align 4, !tbaa !4
  br label %.split48.us

.split48.us:                                      ; preds = %vector.body, %.split.split.split.us.preheader, %.split.split.us.split.preheader, %.split.split.us.split.us.preheader, %.split.us.split.split.preheader, %.split.us.split.split.us.preheader, %.split.us.split.us.split.preheader, %.split.us.split.us
  %i.j = tail call i64 (...) @CycleTime() #10
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1520
  %i.l = load i32, ptr %i.k, align 8, !tbaa !57   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1524 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !58   ; 2 uses
  %i.o = icmp slt i32 %i.l, %i.n
  br i1 %i.o, label %.lr.ph, label %.split48.us.._crit_edge_crit_edge

.split48.us.._crit_edge_crit_edge:                ; preds = %.split48.us
  %.pre87 = sext i32 %1 to i64
  br label %._crit_edge

.lr.ph:                                           ; preds = %.split48.us
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1432
  %i.q = sext i32 %1 to i64                       ; 2 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.q
  %i.s = icmp ne i32 %3, 0
  %i.t = icmp ne i32 %4, 0
  %i.u = icmp ne i32 %5, 0
  %i.v = sext i32 %i.l to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.w = phi i32 [ %i.n, %.lr.ph ], [ %i.ai, %bb.f ]
  %indvars.iv84 = phi i64 [ %i.v, %.lr.ph ], [ %indvars.iv.next85, %bb.f ] ; 3 uses
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !8
  %i.y = getelementptr inbounds [88 x i8], ptr %i.x, i64 %indvars.iv84 ; 3 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !59
  %i.aa = icmp ne i32 %i.z, 0
  %or.cond = and i1 %i.s, %i.aa
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !60
  %i.ad = icmp ne i32 %i.ac, 0
  %or.cond3 = and i1 %i.t, %i.ad
  br i1 %or.cond3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !61
  %i.ag = icmp ne i32 %i.af, 0
  %or.cond5 = and i1 %i.u, %i.ag
  br i1 %or.cond5, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.ah = trunc nsw i64 %indvars.iv84 to i32
  tail call void @DoBufferCopy(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %i.ah)
  %.pre = load i32, ptr %i.m, align 4, !tbaa !58
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.ai = phi i32 [ %i.w, %bb.d ], [ %.pre, %bb.e ] ; 2 uses
  %indvars.iv.next85 = add nsw i64 %indvars.iv84, 1 ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = icmp slt i64 %indvars.iv.next85, %i.aj
  br i1 %i.ak, label %bb.b, label %._crit_edge, !llvm.loop !62

._crit_edge:                                      ; preds = %bb.f, %.split48.us.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre87, %.split48.us.._crit_edge_crit_edge ], [ %i.q, %bb.f ] ; 2 uses
  %i.al = tail call i64 (...) @CycleTime() #10
  %i.am = sub i64 %i.al, %i.j
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.an, i64 %.pre-phi ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !63
  %i.aq = add i64 %i.am, %i.ap
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !63
  %i.ar = tail call i64 (...) @CycleTime() #10
  %i.as = sub i64 %i.ar, %i.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.au = getelementptr inbounds [8 x i8], ptr %i.at, i64 %.pre-phi ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !63
  %i.aw = add i64 %i.as, %i.av
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !63
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15)
  ret void
}

declare i64 @CycleTime(...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define dso_local void @rebuild_lambda(ptr nofree noundef captures(none) %0, i32 noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 (...) @CycleTime() #10
  %i.b = sext i32 %1 to i64                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %i.d = load i32, ptr %i.c, align 8, !tbaa !64   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge166

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1776
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.i = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.b
  %wide.trip.count175 = zext nneg i32 %i.d to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %._crit_edge
  %indvars.iv172 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next173, %._crit_edge ] ; 2 uses
  %.0141163 = phi double [ -1.000000e+00, %.lr.ph ], [ %.1, %._crit_edge ] ; 2 uses
  %i.j = getelementptr inbounds nuw [256 x i8], ptr %i.g, i64 %indvars.iv172
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 248
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !33
  %i.m = getelementptr inbounds [216 x i8], ptr %i.l, i64 %i.b ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load i32, ptr %i.n, align 8, !tbaa !65   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 52
  %i.q = load i32, ptr %i.p, align 4, !tbaa !66   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 44
  %i.s = load i32, ptr %i.r, align 4, !tbaa !67
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 28
  %i.v = load i32, ptr %i.u, align 4, !tbaa !68   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.x = load i32, ptr %i.w, align 8, !tbaa !69   ; 2 uses
  %i.y = load i32, ptr %i.t, align 4, !tbaa !70   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 176
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !35  ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !42
  %i.ad = add nsw i32 %i.o, 1
  %i.ae = add nsw i32 %i.ad, %i.q
  %i.af = mul nsw i32 %i.s, %i.ae
  %i.ag = sext i32 %i.af to i64                   ; 5 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !42
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.ag
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !42
  %i.an = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.ag ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !42
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.ag ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !42
  %i.at = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.ag
  %i.au = icmp sgt i32 %i.v, 0
  br i1 %i.au, label %.preheader148.lr.ph, label %._crit_edge

.preheader148.lr.ph:                              ; preds = %bb.b
  %i.av = load double, ptr %i.i, align 8, !tbaa !44 ; 2 uses
  %i.aw = fmul double %i.av, %i.av
  %i.ax = fdiv double 1.000000e+00, %i.aw
  %i.ay = icmp sgt i32 %i.x, 0
  %i.az = fmul double %3, %i.ax                   ; 4 uses
  %i.ba = icmp sgt i32 %i.y, 0
  %or.cond = select i1 %i.ay, i1 %i.ba, i1 false
  br i1 %or.cond, label %.preheader148.us.us.preheader, label %._crit_edge

.preheader148.us.us.preheader:                    ; preds = %.preheader148.lr.ph
  %wide.trip.count = zext nneg i32 %i.y to i64
  %i.bb = insertelement <4 x double> poison, double %i.az, i64 0
  %i.bc = shufflevector <4 x double> %i.bb, <4 x double> poison, <4 x i32> zeroinitializer
  br label %.preheader148.us.us

.preheader148.us.us:                              ; preds = %.preheader148.us.us.preheader, %._crit_edge153.split.us.us.us
  %.0144156.us.us = phi double [ %.3.us.us.us, %._crit_edge153.split.us.us.us ], [ -1.000000e+00, %.preheader148.us.us.preheader ]
  %.0146155.us.us = phi i32 [ %i.dj, %._crit_edge153.split.us.us.us ], [ 0, %.preheader148.us.us.preheader ] ; 2 uses
  %i.bd = mul nsw i32 %.0146155.us.us, %i.q
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %._crit_edge.us.us.us, %.preheader148.us.us
  %.1152.us.us.us = phi double [ %.0144156.us.us, %.preheader148.us.us ], [ %.3.us.us.us, %._crit_edge.us.us.us ]
  %.0142151.us.us.us = phi i32 [ 0, %.preheader148.us.us ], [ %i.di, %._crit_edge.us.us.us ] ; 2 uses
  %i.be = mul nsw i32 %.0142151.us.us.us, %i.o
  %i.bf = add i32 %i.be, %i.bd
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.preheader.us.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %.preheader.us.us.us ] ; 2 uses
  %.2149.us.us.us = phi double [ %.3.us.us.us, %bb.c ], [ %.1152.us.us.us, %.preheader.us.us.us ] ; 2 uses
  %i.bg = trunc nuw nsw i64 %indvars.iv to i32
  %i.bh = add i32 %i.bf, %i.bg                    ; 3 uses
  %i.bi = sext i32 %i.bh to i64                   ; 5 uses
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.bi ; 2 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 8
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.bi
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !44 ; 2 uses
  %i.bn = add nsw i32 %i.bh, %i.o
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.bo
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !44 ; 2 uses
  %i.br = load <2 x double>, ptr %i.bj, align 8, !tbaa !44 ; 2 uses
  %i.bs = load double, ptr %i.bk, align 8, !tbaa !44
  %i.bt = shufflevector <2 x double> %i.br, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bu = insertelement <4 x double> %i.bt, double %i.bm, i64 2
  %i.bv = insertelement <4 x double> %i.bu, double %i.bq, i64 3
  %i.bw = fmul <4 x double> %i.bc, %i.bv
  %i.bx = tail call <4 x double> @llvm.fabs.v4f64(<4 x double> %i.bw) ; 4 uses
  %i.by = extractelement <4 x double> %i.bx, i64 0
  %i.bz = extractelement <4 x double> %i.bx, i64 1
  %i.ca = fadd double %i.by, %i.bz
  %i.cb = extractelement <4 x double> %i.bx, i64 2
  %i.cc = fadd double %i.ca, %i.cb
  %i.cd = extractelement <4 x double> %i.bx, i64 3
  %i.ce = fadd double %i.cc, %i.cd
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.bi
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !44 ; 2 uses
  %i.ch = fmul double %i.az, %i.cg
  %i.ci = tail call double @llvm.fabs.f64(double %i.ch)
  %i.cj = fadd double %i.ce, %i.ci
  %i.ck = add nsw i32 %i.bh, %i.q
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.cl
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !44 ; 2 uses
  %i.co = fmul double %i.az, %i.cn
  %i.cp = tail call double @llvm.fabs.f64(double %i.co)
  %i.cq = fadd double %i.cj, %i.cp
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.bi
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !44
  %i.ct = extractelement <2 x double> %i.br, i64 0
  %i.cu = fneg double %i.ct
  %i.cv = fsub double %i.cu, %i.bs
  %i.cw = fsub double %i.cv, %i.bm
  %i.cx = fsub double %i.cw, %i.bq
  %i.cy = fsub double %i.cx, %i.cg
  %i.cz = fsub double %i.cy, %i.cn
  %i.da = fneg double %i.cz
  %i.db = fmul double %i.az, %i.da
  %i.dc = tail call double @llvm.fmuladd.f64(double %2, double %i.cs, double %i.db) ; 3 uses
  %i.dd = fdiv double 1.000000e+00, %i.dc
  %i.de = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.bi
  store double %i.dd, ptr %i.de, align 8, !tbaa !44
  %i.df = fadd double %i.dc, %i.cq
  %i.dg = fdiv double %i.df, %i.dc                ; 2 uses
  %i.dh = fcmp ogt double %i.dg, %.2149.us.us.us
  %.3.us.us.us = select i1 %i.dh, double %i.dg, double %.2149.us.us.us ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us.us.us, label %bb.c, !llvm.loop !71

._crit_edge.us.us.us:                             ; preds = %bb.c
  %i.di = add nuw nsw i32 %.0142151.us.us.us, 1   ; 2 uses
  %exitcond170.not = icmp eq i32 %i.di, %i.x
  br i1 %exitcond170.not, label %._crit_edge153.split.us.us.us, label %.preheader.us.us.us, !llvm.loop !72

._crit_edge153.split.us.us.us:                    ; preds = %._crit_edge.us.us.us
  %i.dj = add nuw nsw i32 %.0146155.us.us, 1      ; 2 uses
  %exitcond171.not = icmp eq i32 %i.dj, %i.v
  br i1 %exitcond171.not, label %._crit_edge, label %.preheader148.us.us, !llvm.loop !73

._crit_edge:                                      ; preds = %._crit_edge153.split.us.us.us, %.preheader148.lr.ph, %bb.b
  %.0144.lcssa.a = phi double [ -1.000000e+00, %bb.b ], [ -1.000000e+00, %.preheader148.lr.ph ], [ %.3.us.us.us, %._crit_edge153.split.us.us.us ] ; 2 uses
  %i.dk = fcmp ogt double %.0144.lcssa.a, %.0141163
  %.1 = select i1 %i.dk, double %.0144.lcssa.a, double %.0141163 ; 2 uses
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 1 ; 2 uses
  %exitcond176.not = icmp eq i64 %indvars.iv.next173, %wide.trip.count175
  br i1 %exitcond176.not, label %._crit_edge166, label %bb.b, !llvm.loop !74

._crit_edge166:                                   ; preds = %._crit_edge, %bb.a
  %.0141.lcssa = phi double [ -1.000000e+00, %bb.a ], [ %.1, %._crit_edge ] ; 2 uses
  %i.dl = tail call i64 (...) @CycleTime() #10
  %i.dm = sub i64 %i.dl, %i.a
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.do = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.b ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !63
  %i.dq = add i64 %i.dm, %i.dp
  store i64 %i.dq, ptr %i.do, align 8, !tbaa !63
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 1596
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !75
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %bb.d, label %bb.g

bb.d:                                             ; preds = %._crit_edge166
  %i.du = icmp eq i32 %1, 0
  br i1 %i.du, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.dv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %1, double noundef %.0141.lcssa) ; 0 uses
  %i.dw = load ptr, ptr @stdout, align 8, !tbaa !76
  %i.dx = tail call i32 @fflush(ptr noundef %i.dw) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge166
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 1696
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.b
  store double %.0141.lcssa, ptr %i.dz, align 8, !tbaa !44
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @smooth(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, double noundef %4, double noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1776
  %i.b = sext i32 %1 to i64                       ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1612
  %i.d = load i32, ptr %i.c, align 4, !tbaa !78   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1                     ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @exchange_boundary(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %3, i32 noundef 1, i32 noundef 1, i32 noundef 1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = zext i1 %i.e to i32                      ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.i = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.b
  %i.j = sext i32 %3 to i64
  %i.k = sext i32 %2 to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %0, i64 %i.b ; 2 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %4, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge226
  %.0201227 = phi i32 [ 0, %bb.c ], [ %i.kp, %._crit_edge226 ] ; 4 uses
  %i.m = and i32 %.0201227, 1
  %i.n = icmp eq i32 %i.m, 0
  %. = select i1 %i.n, i32 %2, i32 10
  tail call void @exchange_boundary(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %., i32 noundef 1, i32 noundef %i.f, i32 noundef %i.f)
  %i.o = tail call i64 (...) @CycleTime() #10
  %i.p = load i32, ptr %i.g, align 8, !tbaa !64   ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph225, label %._crit_edge226

.lr.ph225:                                        ; preds = %bb.d
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !29
  %wide.trip.count = zext nneg i32 %i.p to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph225, %._crit_edge222
  %indvars.iv240 = phi i64 [ 0, %.lr.ph225 ], [ %indvars.iv.next241, %._crit_edge222 ] ; 2 uses
  %i.s = getelementptr inbounds nuw [256 x i8], ptr %i.r, i64 %indvars.iv240
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 248
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !33
  %i.v = getelementptr inbounds [216 x i8], ptr %i.u, i64 %i.b ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load <2 x i32>, ptr %i.w, align 8, !tbaa !4 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 44
  %i.z = load i32, ptr %i.y, align 4, !tbaa !67   ; 16 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 28
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !68 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !69 ; 2 uses
  %i.af = load i32, ptr %i.aa, align 4, !tbaa !70 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 176
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !35 ; 8 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.j
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !42 ; 3 uses
  %i.ak = extractelement <2 x i32> %i.x, i64 0    ; 12 uses
  %i.al = add i32 %i.ak, 1
  %i.am = extractelement <2 x i32> %i.x, i64 1    ; 12 uses
  %i.an = add i32 %i.al, %i.am                    ; 3 uses
  %i.ao = mul i32 %i.z, %i.an
  %i.ap = sext i32 %i.ao to i64                   ; 11 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.ap ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !42 ; 3 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.ap ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !42 ; 5 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.ap ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !42 ; 5 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.ap ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !42 ; 5 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.ap ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !42 ; 3 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.ap ; 2 uses
  %i.bg = add nsw i32 %i.z, %.0201227
  %i.bh = icmp sgt i32 %i.z, 0
  br i1 %i.bh, label %.lr.ph, label %._crit_edge222

.lr.ph:                                           ; preds = %bb.e
  %i.bi = load double, ptr %i.i, align 8, !tbaa !44 ; 2 uses
  %i.bj = fmul double %i.bi, %i.bi
  %i.bk = fdiv double 1.000000e+00, %i.bj
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.k ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ah, i64 80 ; 2 uses
  %i.bn = fmul double %5, %i.bk                   ; 2 uses
  %i.bo = sub nsw i32 1, %i.z                     ; 3 uses
  %i.bp = add i32 %i.af, -1
  %i.bq = add i32 %i.bp, %i.z
  %i.br = add i32 %i.ae, -1
  %i.bs = add i32 %i.br, %i.z
  %i.bt = add i32 %i.ac, -1
  %i.bu = add i32 %i.bt, %i.z
  %i.bv = add i32 %i.af, -3
  %i.bw = shl nuw i32 %i.z, 1
  %i.bx = add i32 %i.bv, %i.bw
  %i.by = add i32 %i.am, %i.ak
  %i.bz = mul i32 %i.by, %i.bo
  %i.ca = add <2 x i32> %i.x, splat (i32 1)
  %i.cb = insertelement <4 x i32> poison, i32 %i.bz, i64 0
  %i.cc = shufflevector <4 x i32> %i.cb, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cd = shufflevector <2 x i32> %i.ca, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ce = shufflevector <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>, <4 x i32> %i.cd, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cf = add <4 x i32> %i.cc, %i.ce
  %i.cg = insertelement <4 x i32> poison, i32 %i.z, i64 0
  %i.ch = shufflevector <4 x i32> %i.cg, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ci = sub <4 x i32> %i.cf, %i.ch              ; 2 uses
  %i.cj = shl nsw i64 %i.ap, 3                    ; 28 uses
  %i.ck = add i32 %i.am, %i.ak
  %i.cl = mul i32 %i.ck, %i.bo                    ; 4 uses
  %i.cm = add i32 %i.cl, 1
  %i.cn = sub i32 %i.cm, %i.z
  %i.co = add i32 %i.af, -3
  %i.cp = shl nuw i32 %i.z, 1
  %i.cq = add i32 %i.co, %i.cp
  %scevgep259.a = getelementptr i8, ptr %i.as, i64 %i.cj
  %scevgep261.a = getelementptr i8, ptr %i.as, i64 8
  %scevgep262 = getelementptr i8, ptr %scevgep261.a, i64 %i.cj
  %i.cr = sext i32 %i.am to i64
  %i.cs = sub nsw i64 %i.ap, %i.cr
  %i.ct = shl nsw i64 %i.cs, 3                    ; 2 uses
  %i.cu = add i32 %i.am, 1
  %i.cv = add i32 %i.cu, %i.cl
  %i.cw = sub i32 %i.cv, %i.z
  %i.cx = sext i32 %i.ak to i64
  %i.cy = sub nsw i64 %i.ap, %i.cx
  %i.cz = shl nsw i64 %i.cy, 3                    ; 2 uses
  %i.da = add i32 %i.ak, 1
end_hunk_0
begin_hunk_1_@shift_grid:bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !29
  %i.h = sext i32 %2 to i64
  %i.i = sext i32 %3 to i64
  %wide.trip.count82 = zext nneg i32 %i.d to i64
  %broadcast.splatinsert = insertelement <2 x double> poison, double %4, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %._crit_edge70.split
  %indvars.iv79 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next80, %._crit_edge70.split ] ; 2 uses
  %i.j = getelementptr inbounds nuw [256 x i8], ptr %i.g, i64 %indvars.iv79
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 248
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !33
  %i.m = getelementptr inbounds [216 x i8], ptr %i.l, i64 %i.b ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load i32, ptr %i.n, align 8, !tbaa !65   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 52
  %i.q = load i32, ptr %i.p, align 4, !tbaa !66   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 44
  %i.s = load i32, ptr %i.r, align 4, !tbaa !67
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 28
  %i.v = load i32, ptr %i.u, align 4, !tbaa !68   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.x = load i32, ptr %i.w, align 8, !tbaa !69   ; 2 uses
  %i.y = load i32, ptr %i.t, align 4, !tbaa !70   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 176
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !35  ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.h
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !42 ; 2 uses
  %i.ad = ptrtoaddr ptr %i.ac to i64
  %i.ae = add nsw i32 %i.o, 1
  %i.af = add nsw i32 %i.ae, %i.q
  %i.ag = mul nsw i32 %i.s, %i.af
  %i.ah = sext i32 %i.ag to i64                   ; 2 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ah ; 4 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.i
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !42 ; 2 uses
  %i.al = ptrtoaddr ptr %i.ak to i64
  %i.am = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.ah ; 4 uses
  %i.an = icmp sgt i32 %i.v, 0
  br i1 %i.an, label %.preheader65.lr.ph, label %._crit_edge70.split

.preheader65.lr.ph:                               ; preds = %bb.b
  %i.ao = icmp slt i32 %i.x, 1
  %i.ap = icmp slt i32 %i.y, 1
  %brmerge = select i1 %i.ao, i1 true, i1 %i.ap
  br i1 %brmerge, label %._crit_edge70.split, label %.preheader65.preheader

.preheader65.preheader:                           ; preds = %.preheader65.lr.ph
  %wide.trip.count = zext nneg i32 %i.y to i64    ; 6 uses
  %i.aq = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %min.iters.check = icmp ult i32 %i.y, 8
  %i.ar = trunc nsw i64 %i.aq to i32
  %i.as = icmp ugt i64 %i.aq, 4294967295
  %i.at = sub i64 %i.al, %i.ad
  %diff.check = icmp ugt i64 %i.at, -32
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.au = add nsw i64 %wide.trip.count, -1
  br label %.preheader65

.preheader65:                                     ; preds = %.preheader65.preheader, %._crit_edge68
  %.06469 = phi i32 [ %i.ck, %._crit_edge68 ], [ 0, %.preheader65.preheader ] ; 3 uses
  %i.av = mul i32 %i.q, %.06469
  %i.aw = mul nsw i32 %.06469, %i.q
  br label %.preheader

.preheader:                                       ; preds = %.preheader65, %._crit_edge
  %.06367 = phi i32 [ 0, %.preheader65 ], [ %i.cj, %._crit_edge ] ; 3 uses
  %i.ax = mul nsw i32 %.06367, %i.o
  %i.ay = add i32 %i.ax, %i.aw                    ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader
  %i.az = mul i32 %i.o, %.06367
  %i.ba = add i32 %i.av, %i.az                    ; 2 uses
  %i.bb = add i32 %i.ba, %i.ar
  %i.bc = icmp slt i32 %i.bb, %i.ba
  %i.bd = or i1 %i.bc, %i.as
  %or.cond = select i1 %i.bd, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.scevcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.scevcheck ] ; 2 uses
  %i.be = trunc nuw nsw i64 %index to i32
  %i.bf = add i32 %i.ay, %i.be
  %i.bg = sext i32 %i.bf to i64                   ; 2 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.bg ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %wide.load = load <2 x double>, ptr %i.bh, align 8, !tbaa !44
  %wide.load89 = load <2 x double>, ptr %i.bi, align 8, !tbaa !44
  %i.bj = fadd <2 x double> %broadcast.splat, %wide.load
  %i.bk = fadd <2 x double> %broadcast.splat, %wide.load89
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.bg ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store <2 x double> %i.bj, ptr %i.bl, align 8, !tbaa !44
  store <2 x double> %i.bk, ptr %i.bm, align 8, !tbaa !44
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !331

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bo = trunc nuw nsw i64 %indvars.iv.ph to i32
  %i.bp = add i32 %i.ay, %i.bo
  %i.bq = sext i32 %i.bp to i64                   ; 2 uses
  %i.br = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.bq
  %i.bs = load double, ptr %i.br, align 8, !tbaa !44
  %i.bt = fadd double %4, %i.bs
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.bq
  store double %i.bt, ptr %i.bu, align 8, !tbaa !44
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.bv = icmp eq i64 %indvars.iv.ph, %i.au
  br i1 %i.bv, label %._crit_edge, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i32 1, %i.ay
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next.1, %scalar.ph ] ; 3 uses
  %i.bw = trunc nuw nsw i64 %indvars.iv to i32
  %i.bx = add i32 %i.ay, %i.bw
  %i.by = sext i32 %i.bx to i64                   ; 2 uses
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.by
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !44
  %i.cb = fadd double %4, %i.ca
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.by
  store double %i.cb, ptr %i.cc, align 8, !tbaa !44
  %i.cd = trunc i64 %indvars.iv to i32
  %.reass = add i32 %i.cd, %invariant.op
  %i.ce = sext i32 %.reass to i64                 ; 2 uses
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.ce
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !44
  %i.ch = fadd double %4, %i.cg
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ce
  store double %i.ch, ptr %i.ci, align 8, !tbaa !44
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !332

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.cj = add nuw nsw i32 %.06367, 1              ; 2 uses
  %exitcond77.not = icmp eq i32 %i.cj, %i.x
  br i1 %exitcond77.not, label %._crit_edge68, label %.preheader, !llvm.loop !333

._crit_edge68:                                    ; preds = %._crit_edge
  %i.ck = add nuw nsw i32 %.06469, 1              ; 2 uses
  %exitcond78.not = icmp eq i32 %i.ck, %i.v
  br i1 %exitcond78.not, label %._crit_edge70.split, label %.preheader65, !llvm.loop !334

._crit_edge70.split:                              ; preds = %._crit_edge68, %.preheader65.lr.ph, %bb.b
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %exitcond83.not = icmp eq i64 %indvars.iv.next80, %wide.trip.count82
  br i1 %exitcond83.not, label %._crit_edge74, label %bb.b, !llvm.loop !335

._crit_edge74:                                    ; preds = %._crit_edge70.split, %bb.a
  %i.cl = tail call i64 (...) @CycleTime() #10
  %i.cm = sub i64 %i.cl, %i.a
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.co = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.b ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !63
  %i.cq = add i64 %i.cm, %i.cp
  store i64 %i.cq, ptr %i.co, align 8, !tbaa !63
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @project_cell_to_face(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 (...) @CycleTime() #10
  %i.b = sext i32 %1 to i64                       ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %i.d = load i32, ptr %i.c, align 8, !tbaa !64   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge86

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1776
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !29
  %i.h = sext i32 %2 to i64
  %i.i = sext i32 %3 to i64
  %wide.trip.count93 = zext nneg i32 %i.d to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %._crit_edge81.split
  %indvars.iv90 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next91, %._crit_edge81.split ] ; 2 uses
  %i.j = getelementptr inbounds nuw [256 x i8], ptr %i.g, i64 %indvars.iv90
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 248
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !33
  %i.m = getelementptr inbounds [216 x i8], ptr %i.l, i64 %i.b ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load i32, ptr %i.n, align 8, !tbaa !65   ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 52
  %i.q = load i32, ptr %i.p, align 4, !tbaa !66   ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 44
  %i.s = load i32, ptr %i.r, align 4, !tbaa !67
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 28
  %i.v = load i32, ptr %i.u, align 4, !tbaa !68   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.x = load i32, ptr %i.w, align 8, !tbaa !69   ; 2 uses
  %i.y = load i32, ptr %i.t, align 4, !tbaa !70   ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 176
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !35  ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.h
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !42 ; 2 uses
  %i.ad = ptrtoaddr ptr %i.ac to i64              ; 2 uses
  %i.ae = add nsw i32 %i.o, 1
  %i.af = add nsw i32 %i.ae, %i.q
  %i.ag = mul nsw i32 %i.s, %i.af
  %i.ah = sext i32 %i.ag to i64                   ; 2 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ah ; 8 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.i
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !42 ; 2 uses
  %i.al = ptrtoaddr ptr %i.ak to i64              ; 2 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.ah ; 4 uses
  switch i32 %4, label %bb.e [
    i32 2, label %bb.d
    i32 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ %i.q, %bb.d ], [ %i.o, %bb.c ] ; 5 uses
  %.not79 = icmp slt i32 %i.v, 0
  br i1 %.not79, label %._crit_edge81.split, label %.preheader73.lr.ph

.preheader73.lr.ph:                               ; preds = %bb.e
  %.not7176 = icmp slt i32 %i.x, 0
  %.not7274 = icmp slt i32 %i.y, 0
  %brmerge = select i1 %.not7176, i1 true, i1 %.not7274
  br i1 %brmerge, label %._crit_edge81.split, label %.preheader73.preheader

.preheader73.preheader:                           ; preds = %.preheader73.lr.ph
  %i.an = add nuw i32 %i.y, 1
  %wide.trip.count = zext i32 %i.an to i64        ; 4 uses
  %i.ao = sext i32 %.0 to i64
  %i.ap = shl nsw i64 %i.ao, 3
  %i.aq = add i64 %i.ap, %i.al
  %i.ar = zext nneg i32 %i.y to i64
  %min.iters.check = icmp ult i32 %i.y, 5
  %i.as = sub i64 %i.ad, %i.al
  %diff.check = icmp ugt i64 %i.as, -32
  %i.at = sub i64 %i.ad, %i.aq
  %diff.check100 = icmp ugt i64 %i.at, -32
  %conflict.rdx = or i1 %diff.check, %diff.check100
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader73

.preheader73:                                     ; preds = %.preheader73.preheader, %._crit_edge78
  %.07080 = phi i32 [ %i.dd, %._crit_edge78 ], [ 0, %.preheader73.preheader ] ; 4 uses
  %i.au = mul i32 %i.q, %.07080
  %i.av = mul nsw i32 %.07080, %i.q
  br label %.preheader

.preheader:                                       ; preds = %.preheader73, %._crit_edge
  %.06977 = phi i32 [ 0, %.preheader73 ], [ %i.dc, %._crit_edge ] ; 4 uses
  %i.aw = mul nsw i32 %.06977, %i.o
  %i.ax = add i32 %i.aw, %i.av                    ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader
  %i.ay = mul i32 %i.o, %.06977
  %i.az = add i32 %i.au, %i.ay                    ; 2 uses
  %i.ba = add i32 %i.az, %i.y
  %i.bb = icmp slt i32 %i.ba, %i.az
  %brmerge104 = select i1 %i.bb, i1 true, i1 %conflict.rdx
  br i1 %brmerge104, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.scevcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.scevcheck ] ; 2 uses
  %i.bc = trunc nuw nsw i64 %index to i32
  %i.bd = add i32 %i.ax, %i.bc                    ; 2 uses
  %i.be = sub nsw i32 %i.bd, %.0
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.bf ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %wide.load = load <2 x double>, ptr %i.bg, align 8, !tbaa !44
  %wide.load101 = load <2 x double>, ptr %i.bh, align 8, !tbaa !44
  %i.bi = sext i32 %i.bd to i64                   ; 2 uses
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.bi ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %wide.load102 = load <2 x double>, ptr %i.bj, align 8, !tbaa !44
  %wide.load103 = load <2 x double>, ptr %i.bk, align 8, !tbaa !44
  %i.bl = fadd <2 x double> %wide.load, %wide.load102
  %i.bm = fadd <2 x double> %wide.load101, %wide.load103
  %i.bn = fmul <2 x double> %i.bl, splat (double 5.000000e-01)
  %i.bo = fmul <2 x double> %i.bm, splat (double 5.000000e-01)
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.bi ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store <2 x double> %i.bn, ptr %i.bp, align 8, !tbaa !44
  store <2 x double> %i.bo, ptr %i.bq, align 8, !tbaa !44
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !336

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %vector.scevcheck ], [ 0, %.preheader ] ; 4 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bs = trunc nuw nsw i64 %indvars.iv.ph to i32
  %i.bt = add i32 %i.ax, %i.bs                    ; 2 uses
  %i.bu = sub nsw i32 %i.bt, %.0
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.bv
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !44
  %i.by = sext i32 %i.bt to i64                   ; 2 uses
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.by
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !44
  %i.cb = fadd double %i.bx, %i.ca
  %i.cc = fmul double %i.cb, 5.000000e-01
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.by
  store double %i.cc, ptr %i.cd, align 8, !tbaa !44
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ce = icmp eq i64 %indvars.iv.ph, %i.ar
  br i1 %i.ce, label %._crit_edge, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i32 1, %i.ax
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next.1, %scalar.ph ] ; 3 uses
  %i.cf = trunc nuw nsw i64 %indvars.iv to i32
  %i.cg = add i32 %i.ax, %i.cf                    ; 2 uses
  %i.ch = sub nsw i32 %i.cg, %.0
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ci
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !44
  %i.cl = sext i32 %i.cg to i64                   ; 2 uses
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.cl
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !44
  %i.co = fadd double %i.ck, %i.cn
  %i.cp = fmul double %i.co, 5.000000e-01
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.cl
  store double %i.cp, ptr %i.cq, align 8, !tbaa !44
  %i.cr = trunc i64 %indvars.iv to i32
  %.reass = add i32 %i.cr, %invariant.op          ; 2 uses
  %i.cs = sub nsw i32 %.reass, %.0
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ct
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !44
  %i.cw = sext i32 %.reass to i64                 ; 2 uses
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.cw
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !44
  %i.cz = fadd double %i.cv, %i.cy
  %i.da = fmul double %i.cz, 5.000000e-01
  %i.db = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.cw
  store double %i.da, ptr %i.db, align 8, !tbaa !44
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !337

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.dc = add nuw i32 %.06977, 1
  %exitcond88.not.a = icmp eq i32 %.06977, %i.x
  br i1 %exitcond88.not.a, label %._crit_edge78, label %.preheader, !llvm.loop !338

._crit_edge78:                                    ; preds = %._crit_edge
  %i.dd = add nuw i32 %.07080, 1
  %exitcond89.not = icmp eq i32 %.07080, %i.v
  br i1 %exitcond89.not, label %._crit_edge81.split, label %.preheader73, !llvm.loop !339

._crit_edge81.split:                              ; preds = %._crit_edge78, %.preheader73.lr.ph, %bb.e
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1 ; 2 uses
  %exitcond94.not = icmp eq i64 %indvars.iv.next91, %wide.trip.count93
  br i1 %exitcond94.not, label %._crit_edge86, label %bb.b, !llvm.loop !340

._crit_edge86:                                    ; preds = %._crit_edge81.split, %bb.a
  %i.de = tail call i64 (...) @CycleTime() #10
  %i.df = sub i64 %i.de, %i.a
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %i.b ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !63
  %i.dj = add i64 %i.df, %i.di
  store i64 %i.dj, ptr %i.dh, align 8, !tbaa !63
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @matmul_grids(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 (...) @CycleTime() #10
  %i.b = icmp sgt i32 %5, 0
  br i1 %i.b, label %.preheader93.lr.ph, label %.._crit_edge115.split_crit_edge

.._crit_edge115.split_crit_edge:                  ; preds = %bb.a
  %.pre = sext i32 %1 to i64
  br label %._crit_edge115.split

.preheader93.lr.ph:                               ; preds = %bb.a
  %i.c = icmp sgt i32 %6, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1776
  %i.f = sext i32 %1 to i64                       ; 3 uses
  br i1 %i.c, label %.preheader93.preheader, label %._crit_edge115.split

.preheader93.preheader:                           ; preds = %.preheader93.lr.ph
  %i.g = zext nneg i32 %5 to i64
  %i.h = zext nneg i32 %6 to i64                  ; 3 uses
  %wide.trip.count135 = zext nneg i32 %5 to i64
  br label %.preheader93

.preheader93:                                     ; preds = %.preheader93.preheader, %._crit_edge113
  %indvars.iv132 = phi i64 [ 0, %.preheader93.preheader ], [ %indvars.iv.next133, %._crit_edge113 ] ; 5 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv132
  %i.j = mul nuw nsw i64 %indvars.iv132, %i.h
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.j
  %invariant.gep145 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv132
  br label %bb.b

bb.b:                                             ; preds = %.preheader93, %bb.e
  %indvars.iv127 = phi i64 [ 0, %.preheader93 ], [ %indvars.iv.next128, %bb.e ] ; 6 uses
  %.not = icmp samesign ult i64 %indvars.iv127, %indvars.iv132
  br i1 %.not, label %bb.e, label %.preheader92

.preheader92:                                     ; preds = %bb.b
  %i.k = load i32, ptr %i.d, align 8, !tbaa !64   ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge110

.lr.ph:                                           ; preds = %.preheader92
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !29
  %i.n = load i32, ptr %i.i, align 4, !tbaa !4
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv127
  %i.q = load i32, ptr %i.p, align 4, !tbaa !4
  %i.r = sext i32 %i.q to i64
  %wide.trip.count125 = zext nneg i32 %i.k to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %._crit_edge
  %indvars.iv122 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next123, %._crit_edge ] ; 2 uses
  %.085108 = phi double [ 0.000000e+00, %.lr.ph ], [ %i.cc, %._crit_edge ]
  %i.s = getelementptr inbounds nuw [256 x i8], ptr %i.m, i64 %indvars.iv122
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 248
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !33
  %i.v = getelementptr inbounds [216 x i8], ptr %i.u, i64 %i.f ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load i32, ptr %i.w, align 8, !tbaa !65   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 52
  %i.z = load i32, ptr %i.y, align 4, !tbaa !66   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 44
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !67
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 28
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !68 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !69 ; 2 uses
  %i.ah = load i32, ptr %i.ac, align 4, !tbaa !70 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 176
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !35 ; 2 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.o
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !42
  %i.am = add nsw i32 %i.x, 1
  %i.an = add nsw i32 %i.am, %i.z
  %i.ao = mul nsw i32 %i.ab, %i.an
  %i.ap = sext i32 %i.ao to i64                   ; 2 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.ap ; 3 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.r
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !42
  %i.at = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.ap ; 3 uses
  %i.au = icmp sgt i32 %i.ae, 0
  %i.av = icmp sgt i32 %i.ag, 0
  %or.cond = select i1 %i.au, i1 %i.av, i1 false
  %i.aw = icmp sgt i32 %i.ah, 0
  %or.cond147 = select i1 %or.cond, i1 %i.aw, i1 false
  br i1 %or.cond147, label %.preheader91.us.us.preheader, label %._crit_edge

.preheader91.us.us.preheader:                     ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %i.ah to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ax = icmp eq i32 %i.ah, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod151 = trunc i32 %i.ah to i1
  br label %.preheader91.us.us

.preheader91.us.us:                               ; preds = %.preheader91.us.us.preheader, %._crit_edge98.split.us.us.us
  %.082101.us.us = phi double [ %.lcssa, %._crit_edge98.split.us.us.us ], [ 0.000000e+00, %.preheader91.us.us.preheader ]
  %.088100.us.us = phi i32 [ %i.cb, %._crit_edge98.split.us.us.us ], [ 0, %.preheader91.us.us.preheader ] ; 2 uses
  %i.ay = mul nsw i32 %.088100.us.us, %i.z
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %._crit_edge.us.us.us, %.preheader91.us.us
  %.197.us.us.us = phi double [ %.082101.us.us, %.preheader91.us.us ], [ %.lcssa, %._crit_edge.us.us.us ] ; 2 uses
  %.08796.us.us.us = phi i32 [ 0, %.preheader91.us.us ], [ %i.ca, %._crit_edge.us.us.us ] ; 2 uses
  %i.az = mul nsw i32 %.08796.us.us.us, %i.x
  %i.ba = add i32 %i.az, %i.ay                    ; 3 uses
  br i1 %i.ax, label %.epil.preheader, label %.preheader.us.us.us.new

.preheader.us.us.us.new:                          ; preds = %.preheader.us.us.us, %.preheader.us.us.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.us.us.us.new ], [ 0, %.preheader.us.us.us ] ; 3 uses
  %.295.us.us.us = phi double [ %i.br, %.preheader.us.us.us.new ], [ %.197.us.us.us, %.preheader.us.us.us ]
  %niter = phi i64 [ %niter.next.1, %.preheader.us.us.us.new ], [ 0, %.preheader.us.us.us ]
  %i.bb = trunc nuw nsw i64 %indvars.iv to i32
  %i.bc = add i32 %i.ba, %i.bb
  %i.bd = sext i32 %i.bc to i64                   ; 2 uses
  %i.be = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.bd
  %i.bf = load double, ptr %i.be, align 8, !tbaa !44
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.bd
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !44
  %i.bi = tail call double @llvm.fmuladd.f64(double %i.bf, double %i.bh, double %.295.us.us.us)
  %i.bj = trunc i64 %indvars.iv to i32
  %i.bk = or disjoint i32 %i.bj, 1
  %i.bl = add i32 %i.ba, %i.bk
  %i.bm = sext i32 %i.bl to i64                   ; 2 uses
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.bm
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !44
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.bm
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !44
  %i.br = tail call double @llvm.fmuladd.f64(double %i.bo, double %i.bq, double %i.bi) ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.us.us.unr-lcssa, label %.preheader.us.us.us.new, !llvm.loop !341

._crit_edge.us.us.us.unr-lcssa:                   ; preds = %.preheader.us.us.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.us.unr-lcssa, %.preheader.us.us.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.us.us.us ], [ %indvars.iv.next.1, %._crit_edge.us.us.us.unr-lcssa ]
  %.295.us.us.us.epil.init = phi double [ %.197.us.us.us, %.preheader.us.us.us ], [ %i.br, %._crit_edge.us.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod151)
  %i.bs = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.bt = add i32 %i.ba, %i.bs
  %i.bu = sext i32 %i.bt to i64                   ; 2 uses
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.bu
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !44
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.bu
  %i.by = load double, ptr %i.bx, align 8, !tbaa !44
  %i.bz = tail call double @llvm.fmuladd.f64(double %i.bw, double %i.by, double %.295.us.us.us.epil.init)
  br label %._crit_edge.us.us.us

._crit_edge.us.us.us:                             ; preds = %._crit_edge.us.us.us.unr-lcssa, %.epil.preheader
  %.lcssa = phi double [ %i.br, %._crit_edge.us.us.us.unr-lcssa ], [ %i.bz, %.epil.preheader ] ; 3 uses
  %i.ca = add nuw nsw i32 %.08796.us.us.us, 1     ; 2 uses
  %exitcond120.not = icmp eq i32 %i.ca, %i.ag
  br i1 %exitcond120.not, label %._crit_edge98.split.us.us.us, label %.preheader.us.us.us, !llvm.loop !342
end_hunk_1
