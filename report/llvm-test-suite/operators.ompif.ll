begin_hunk_0_@exchange_boundary:bb.a
  %.sroa.15.48..sroa_idx181 = getelementptr inbounds nuw i8, ptr %.sroa.15, i64 48
  %.sroa.15.48..sroa.15.64.wide.load91.2 = load <4 x i32>, ptr %.sroa.15.48..sroa_idx181, align 16, !tbaa !4
  %.sroa.15.64..sroa_idx192 = getelementptr inbounds nuw i8, ptr %.sroa.15, i64 64
  %.sroa.15.64..sroa.15.80.wide.load92.2 = load <4 x i32>, ptr %.sroa.15.64..sroa_idx192, align 16, !tbaa !4
  %i.e = or <4 x i32> %.sroa.15.48..sroa.15.64.wide.load91.2, splat (i32 1)
  %i.f = or <4 x i32> %.sroa.15.64..sroa.15.80.wide.load92.2, splat (i32 1)
  %.sroa.15.48..sroa_idx182 = getelementptr inbounds nuw i8, ptr %.sroa.15, i64 48
  store <4 x i32> %i.e, ptr %.sroa.15.48..sroa_idx182, align 16, !tbaa !4
  %.sroa.15.64..sroa_idx193 = getelementptr inbounds nuw i8, ptr %.sroa.15, i64 64
  store <4 x i32> %i.f, ptr %.sroa.15.64..sroa_idx193, align 16, !tbaa !4
  %.sroa.15.80..sroa_idx207 = getelementptr inbounds nuw i8, ptr %.sroa.15, i64 80
  %.sroa.15.80..sroa.15.96. = load i32, ptr %.sroa.15.80..sroa_idx207, align 16, !tbaa !4
  %i.g = or i32 %.sroa.15.80..sroa.15.96., 1
  %.sroa.15.80..sroa_idx208 = getelementptr inbounds nuw i8, ptr %.sroa.15, i64 80
  store i32 %i.g, ptr %.sroa.15.80..sroa_idx208, align 16, !tbaa !4
  %.sroa.15.84..sroa_idx213 = getelementptr inbounds nuw i8, ptr %.sroa.15, i64 84
  %.sroa.15.84..sroa.15.100. = load i32, ptr %.sroa.15.84..sroa_idx213, align 4, !tbaa !4
  %i.h = or i32 %.sroa.15.84..sroa.15.100., 1
  %.sroa.15.84..sroa_idx214 = getelementptr inbounds nuw i8, ptr %.sroa.15, i64 84
  store i32 %i.h, ptr %.sroa.15.84..sroa_idx214, align 4, !tbaa !4
  %.sroa.15.88..sroa_idx217 = getelementptr inbounds nuw i8, ptr %.sroa.15, i64 88
  %.sroa.15.88..sroa.15.104. = load i32, ptr %.sroa.15.88..sroa_idx217, align 8, !tbaa !4
  %i.i = or i32 %.sroa.15.88..sroa.15.104., 1
  %.sroa.15.88..sroa_idx218 = getelementptr inbounds nuw i8, ptr %.sroa.15, i64 88
  store i32 %i.i, ptr %.sroa.15.88..sroa_idx218, align 8, !tbaa !4
  br label %.split48.us

.split.split.split.us.preheader:                  ; preds = %.split.split
  store i32 1, ptr %.sroa.15, align 16, !tbaa !4
  %.sroa.15.4..sroa_idx154 = getelementptr inbounds nuw i8, ptr %.sroa.15, i64 4
  store i32 1, ptr %.sroa.15.4..sroa_idx154, align 4, !tbaa !4
  %.sroa.15.12..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.15, i64 12
  store i32 1, ptr %.sroa.15.12..sroa_idx, align 4, !tbaa !4
  %.sroa.15.20..sroa_idx162 = getelementptr inbounds nuw i8, ptr %.sroa.15, i64 20
  store <4 x i32> splat (i32 1), ptr %.sroa.15.20..sroa_idx162, align 4, !tbaa !4
  %.sroa.15.40..sroa_idx176 = getelementptr inbounds nuw i8, ptr %.sroa.15, i64 40
  store <4 x i32> splat (i32 1), ptr %.sroa.15.40..sroa_idx176, align 8, !tbaa !4
  %.sroa.15.60..sroa_idx190 = getelementptr inbounds nuw i8, ptr %.sroa.15, i64 60
  store i32 1, ptr %.sroa.15.60..sroa_idx190, align 4, !tbaa !4
  %.sroa.15.68..sroa_idx196 = getelementptr inbounds nuw i8, ptr %.sroa.15, i64 68
  store i32 1, ptr %.sroa.15.68..sroa_idx196, align 4, !tbaa !4
  %.sroa.15.72..sroa_idx199 = getelementptr inbounds nuw i8, ptr %.sroa.15, i64 72
  store i32 1, ptr %.sroa.15.72..sroa_idx199, align 8, !tbaa !4
  %.sroa.15.76..sroa_idx204 = getelementptr inbounds nuw i8, ptr %.sroa.15, i64 76
  store i32 1, ptr %.sroa.15.76..sroa_idx204, align 4, !tbaa !4
  %.sroa.15.84..sroa_idx211 = getelementptr inbounds nuw i8, ptr %.sroa.15, i64 84
  store i32 1, ptr %.sroa.15.84..sroa_idx211, align 4, !tbaa !4
  br label %.split48.us

.split48.us:                                      ; preds = %vector.body, %.split.us.split.us, %.split.split.split.us.preheader, %.split.split.us.split.preheader, %.split.split.us.split.us.preheader, %.split.us.split.split.preheader, %.split.us.split.split.us.preheader, %.split.us.split.us.split.preheader
  %i.j = tail call i64 (...) @CycleTime() #10
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1520
  %i.l = load i32, ptr %i.k, align 8, !tbaa !57   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1524 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !58   ; 2 uses
  %i.o = icmp slt i32 %i.l, %i.n
  br i1 %i.o, label %.lr.ph, label %.split48.us.._crit_edge_crit_edge

.split48.us.._crit_edge_crit_edge:                ; preds = %.split48.us
  %.pre88 = sext i32 %1 to i64
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
  %indvars.iv85 = phi i64 [ %i.v, %.lr.ph ], [ %indvars.iv.next86, %bb.f ] ; 3 uses
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !8
  %i.y = getelementptr inbounds [88 x i8], ptr %i.x, i64 %indvars.iv85 ; 3 uses
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
  %i.ah = trunc nsw i64 %indvars.iv85 to i32
  tail call void @DoBufferCopy(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %i.ah)
  %.pre = load i32, ptr %i.m, align 4, !tbaa !58
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.ai = phi i32 [ %i.w, %bb.d ], [ %.pre, %bb.e ] ; 2 uses
  %indvars.iv.next86 = add nsw i64 %indvars.iv85, 1 ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = icmp slt i64 %indvars.iv.next86, %i.aj
  br i1 %i.ak, label %bb.b, label %._crit_edge, !llvm.loop !62

._crit_edge:                                      ; preds = %bb.f, %.split48.us.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre88, %.split48.us.._crit_edge_crit_edge ], [ %i.q, %bb.f ] ; 2 uses
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
define dso_local void @rebuild_lambda(ptr noundef captures(none) %0, i32 noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #2 {
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
  %i.az = fmul double %3, %i.ax                   ; 3 uses
  %i.ba = icmp sgt i32 %i.y, 0
  %or.cond = select i1 %i.ay, i1 %i.ba, i1 false
  br i1 %or.cond, label %.preheader148.us.us.preheader, label %._crit_edge

.preheader148.us.us.preheader:                    ; preds = %.preheader148.lr.ph
  %wide.trip.count = zext nneg i32 %i.y to i64
  %i.bb = insertelement <4 x double> poison, double %i.az, i64 0
  %i.bc = shufflevector <4 x double> %i.bb, <4 x double> poison, <4 x i32> zeroinitializer
  %4 = insertelement <2 x double> poison, double %i.az, i64 0
  %5 = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.preheader148.us.us

.preheader148.us.us:                              ; preds = %.preheader148.us.us.preheader, %._crit_edge153.split.us.us.us
  %.0144156.us.us = phi double [ %.3.us.us.us, %._crit_edge153.split.us.us.us ], [ -1.000000e+00, %.preheader148.us.us.preheader ]
  %.0146155.us.us = phi i32 [ %i.da, %._crit_edge153.split.us.us.us ], [ 0, %.preheader148.us.us.preheader ] ; 2 uses
  %i.bd = mul nsw i32 %.0146155.us.us, %i.q
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %._crit_edge.us.us.us, %.preheader148.us.us
  %.0143152.us.us.us = phi i32 [ 0, %.preheader148.us.us ], [ %i.cz, %._crit_edge.us.us.us ] ; 2 uses
  %.1145151.us.us.us = phi double [ %.0144156.us.us, %.preheader148.us.us ], [ %.3.us.us.us, %._crit_edge.us.us.us ]
  %i.be = mul nsw i32 %.0143152.us.us.us, %i.o
  %i.bf = add i32 %i.be, %i.bd
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.preheader.us.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %.preheader.us.us.us ] ; 2 uses
  %.2149.us.us.us = phi double [ %.3.us.us.us, %bb.c ], [ %.1145151.us.us.us, %.preheader.us.us.us ] ; 2 uses
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
  %6 = add nsw i32 %i.bh, %i.q
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %7
  %9 = load double, ptr %8, align 8, !tbaa !44    ; 2 uses
  %10 = insertelement <2 x double> poison, double %i.cg, i64 0
  %11 = insertelement <2 x double> %10, double %9, i64 1
  %12 = fmul <2 x double> %5, %11
  %13 = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %12) ; 2 uses
  %14 = extractelement <2 x double> %13, i64 0
  %15 = fadd double %i.ce, %14
  %16 = extractelement <2 x double> %13, i64 1
  %i.ch = fadd double %15, %16
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.bi
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !44
  %i.ck = extractelement <2 x double> %i.br, i64 0
  %i.cl = fneg double %i.ck
  %i.cm = fsub double %i.cl, %i.bs
  %i.cn = fsub double %i.cm, %i.bm
  %i.co = fsub double %i.cn, %i.bq
  %i.cp = fsub double %i.co, %i.cg
  %i.cq = fsub double %i.cp, %9
  %i.cr = fneg double %i.cq
  %i.cs = fmul double %i.az, %i.cr
  %i.ct = tail call double @llvm.fmuladd.f64(double %2, double %i.cj, double %i.cs) ; 3 uses
  %i.cu = fdiv double 1.000000e+00, %i.ct
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.bi
  store double %i.cu, ptr %i.cv, align 8, !tbaa !44
  %i.cw = fadd double %i.ct, %i.ch
  %i.cx = fdiv double %i.cw, %i.ct                ; 2 uses
  %i.cy = fcmp ogt double %i.cx, %.2149.us.us.us
  %.3.us.us.us = select i1 %i.cy, double %i.cx, double %.2149.us.us.us ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us.us.us, label %bb.c, !llvm.loop !71

._crit_edge.us.us.us:                             ; preds = %bb.c
  %i.cz = add nuw nsw i32 %.0143152.us.us.us, 1   ; 2 uses
  %exitcond170.not = icmp eq i32 %i.cz, %i.x
  br i1 %exitcond170.not, label %._crit_edge153.split.us.us.us, label %.preheader.us.us.us, !llvm.loop !72

._crit_edge153.split.us.us.us:                    ; preds = %._crit_edge.us.us.us
  %i.da = add nuw nsw i32 %.0146155.us.us, 1      ; 2 uses
  %exitcond171.not = icmp eq i32 %i.da, %i.v
  br i1 %exitcond171.not, label %._crit_edge, label %.preheader148.us.us, !llvm.loop !73

._crit_edge:                                      ; preds = %._crit_edge153.split.us.us.us, %.preheader148.lr.ph, %bb.b
  %.0144.lcssa = phi double [ -1.000000e+00, %bb.b ], [ -1.000000e+00, %.preheader148.lr.ph ], [ %.3.us.us.us, %._crit_edge153.split.us.us.us ] ; 2 uses
  %i.db = fcmp ogt double %.0144.lcssa, %.0141163
  %.1 = select i1 %i.db, double %.0144.lcssa, double %.0141163 ; 2 uses
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 1 ; 2 uses
  %exitcond176.not = icmp eq i64 %indvars.iv.next173, %wide.trip.count175
  br i1 %exitcond176.not, label %._crit_edge166, label %bb.b, !llvm.loop !74

._crit_edge166:                                   ; preds = %._crit_edge, %bb.a
  %.0141.lcssa = phi double [ -1.000000e+00, %bb.a ], [ %.1, %._crit_edge ] ; 2 uses
  %i.dc = tail call i64 (...) @CycleTime() #10
  %i.dd = sub i64 %i.dc, %i.a
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.df = getelementptr inbounds [8 x i8], ptr %i.de, i64 %i.b ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !63
  %i.dh = add i64 %i.dd, %i.dg
  store i64 %i.dh, ptr %i.df, align 8, !tbaa !63
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 1596
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !75
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %bb.d, label %bb.g

bb.d:                                             ; preds = %._crit_edge166
  %i.dl = icmp eq i32 %1, 0
  br i1 %i.dl, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.dm = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %1, double noundef %.0141.lcssa) ; 0 uses
  %i.dn = load ptr, ptr @stdout, align 8, !tbaa !76
  %i.do = tail call i32 @fflush(ptr noundef %i.dn) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge166
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 1696
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.dp, i64 %i.b
  store double %.0141.lcssa, ptr %i.dq, align 8, !tbaa !44
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
define dso_local void @smooth(ptr noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, double noundef %4, double noundef %5) local_unnamed_addr #2 {
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

bb.d:                                             ; preds = %bb.c, %._crit_edge228
  %.0201229 = phi i32 [ 0, %bb.c ], [ %i.kp, %._crit_edge228 ] ; 4 uses
  %i.m = and i32 %.0201229, 1
  %i.n = icmp eq i32 %i.m, 0
  %. = select i1 %i.n, i32 %2, i32 10
  tail call void @exchange_boundary(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %., i32 noundef 1, i32 noundef %i.f, i32 noundef %i.f)
  %i.o = tail call i64 (...) @CycleTime() #10
  %i.p = load i32, ptr %i.g, align 8, !tbaa !64   ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph227, label %._crit_edge228

.lr.ph227:                                        ; preds = %bb.d
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !29
  %wide.trip.count = zext nneg i32 %i.p to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph227, %._crit_edge224
  %indvars.iv243 = phi i64 [ 0, %.lr.ph227 ], [ %indvars.iv.next244, %._crit_edge224 ] ; 2 uses
  %i.s = getelementptr inbounds nuw [256 x i8], ptr %i.r, i64 %indvars.iv243
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
  %i.bg = add nsw i32 %i.z, %.0201229
  %i.bh = icmp sgt i32 %i.z, 0
  br i1 %i.bh, label %.lr.ph, label %._crit_edge224

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
  %i.by = add i32 %i.ak, %i.am
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
  %i.ck = add i32 %i.ak, %i.am
  %i.cl = mul i32 %i.ck, %i.bo                    ; 4 uses
  %i.cm = add i32 %i.cl, 1
  %i.cn = sub i32 %i.cm, %i.z
end_hunk_0
begin_hunk_1_@initialize_problem:bb.a
  %i.eo = tail call double @sin(double noundef %i.ed) #10, !tbaa !4
  %i.ep = fmul double %i.en, %i.eo
  %i.eq = tail call double @sin(double noundef %i.eg) #10, !tbaa !4
  %i.er = fmul double %i.ep, %i.eq
  %i.es = tail call double @llvm.fmuladd.f64(double %i.ej, double %i.ei, double %i.er) ; 2 uses
  %i.et = fmul double %i.cr, -2.000000e+01        ; 3 uses
  %i.eu = tail call double @exp(double noundef %i.dy) #10, !tbaa !4
  %i.ev = fmul double %i.eu, f0x401921FB54442D18
  %i.ew = tail call double @sin(double noundef %i.ea) #10, !tbaa !4
  %i.ex = fmul double %i.ev, %i.ew
  %i.ey = tail call double @cos(double noundef %i.ed) #10, !tbaa !4
  %i.ez = fmul double %i.ex, %i.ey
  %i.fa = tail call double @sin(double noundef %i.eg) #10, !tbaa !4
  %i.fb = fmul double %i.ez, %i.fa
  %i.fc = tail call double @llvm.fmuladd.f64(double %i.et, double %i.ei, double %i.fb) ; 2 uses
  %i.fd = fmul double %i.cs, -2.000000e+01        ; 3 uses
  %i.fe = tail call double @exp(double noundef %i.dy) #10, !tbaa !4
  %i.ff = fmul double %i.fe, f0x401921FB54442D18
  %i.fg = tail call double @sin(double noundef %i.ea) #10, !tbaa !4
  %i.fh = fmul double %i.ff, %i.fg
  %i.fi = tail call double @sin(double noundef %i.ed) #10, !tbaa !4
  %i.fj = fmul double %i.fh, %i.fi
  %i.fk = tail call double @cos(double noundef %i.eg) #10, !tbaa !4
  %i.fl = fmul double %i.fj, %i.fk
  %i.fm = tail call double @llvm.fmuladd.f64(double %i.fd, double %i.ei, double %i.fl) ; 2 uses
  %i.fn = fmul double %i.ej, %i.es
  %i.fo = tail call double @llvm.fmuladd.f64(double %i.ei, double -4.000000e+01, double %i.fn)
  %i.fp = fmul double %i.ej, f0x401921FB54442D18
  %i.fq = tail call double @exp(double noundef %i.dy) #10, !tbaa !4
  %i.fr = fmul double %i.fp, %i.fq
  %i.fs = tail call double @cos(double noundef %i.ea) #10, !tbaa !4
  %i.ft = fmul double %i.fr, %i.fs
  %i.fu = tail call double @sin(double noundef %i.ed) #10, !tbaa !4
  %i.fv = fmul double %i.ft, %i.fu
  %i.fw = tail call double @sin(double noundef %i.eg) #10, !tbaa !4
  %i.fx = tail call double @llvm.fmuladd.f64(double %i.fv, double %i.fw, double %i.fo)
  %i.fy = tail call double @exp(double noundef %i.dy) #10, !tbaa !4
  %i.fz = fmul double %i.fy, f0x4043BD3CC9BE45DE
  %i.ga = tail call double @sin(double noundef %i.ea) #10, !tbaa !4
  %i.gb = fmul double %i.fz, %i.ga
  %i.gc = tail call double @sin(double noundef %i.ed) #10, !tbaa !4
  %i.gd = tail call double @sin(double noundef %i.eg) #10, !tbaa !4
  %i.ge = fneg double %i.gc
  %i.gf = fmul double %i.gb, %i.ge
  %i.gg = tail call double @llvm.fmuladd.f64(double %i.gf, double %i.gd, double %i.fx)
  %i.gh = fmul double %i.et, %i.fc
  %i.gi = tail call double @llvm.fmuladd.f64(double %i.ei, double -4.000000e+01, double %i.gh)
  %i.gj = fmul double %i.et, f0x401921FB54442D18
  %i.gk = tail call double @exp(double noundef %i.dy) #10, !tbaa !4
  %i.gl = fmul double %i.gj, %i.gk
  %i.gm = tail call double @sin(double noundef %i.ea) #10, !tbaa !4
  %i.gn = fmul double %i.gl, %i.gm
  %i.go = tail call double @cos(double noundef %i.ed) #10, !tbaa !4
  %i.gp = fmul double %i.gn, %i.go
  %i.gq = tail call double @sin(double noundef %i.eg) #10, !tbaa !4
  %i.gr = tail call double @llvm.fmuladd.f64(double %i.gp, double %i.gq, double %i.gi)
  %i.gs = tail call double @exp(double noundef %i.dy) #10, !tbaa !4
  %i.gt = fmul double %i.gs, f0x4043BD3CC9BE45DE
  %i.gu = tail call double @sin(double noundef %i.ea) #10, !tbaa !4
  %i.gv = fmul double %i.gt, %i.gu
  %i.gw = tail call double @sin(double noundef %i.ed) #10, !tbaa !4
  %i.gx = tail call double @sin(double noundef %i.eg) #10, !tbaa !4
  %i.gy = fneg double %i.gw
  %i.gz = fmul double %i.gv, %i.gy
  %i.ha = tail call double @llvm.fmuladd.f64(double %i.gz, double %i.gx, double %i.gr)
  %i.hb = fmul double %i.fd, %i.fm
  %i.hc = tail call double @llvm.fmuladd.f64(double %i.ei, double -4.000000e+01, double %i.hb)
  %i.hd = fmul double %i.fd, f0x401921FB54442D18
  %i.he = tail call double @exp(double noundef %i.dy) #10, !tbaa !4
  %i.hf = fmul double %i.hd, %i.he
  %i.hg = tail call double @sin(double noundef %i.ea) #10, !tbaa !4
  %i.hh = fmul double %i.hf, %i.hg
  %i.hi = tail call double @sin(double noundef %i.ed) #10, !tbaa !4
  %i.hj = fmul double %i.hh, %i.hi
  %i.hk = tail call double @cos(double noundef %i.eg) #10, !tbaa !4
  %i.hl = tail call double @llvm.fmuladd.f64(double %i.hj, double %i.hk, double %i.hc)
  %i.hm = tail call double @exp(double noundef %i.dy) #10, !tbaa !4
  %i.hn = fmul double %i.hm, f0x4043BD3CC9BE45DE
  %i.ho = tail call double @sin(double noundef %i.ea) #10, !tbaa !4
  %i.hp = fmul double %i.hn, %i.ho
  %i.hq = tail call double @sin(double noundef %i.ed) #10, !tbaa !4
  %i.hr = tail call double @sin(double noundef %i.eg) #10, !tbaa !4
  %i.hs = fneg double %i.hq
  %i.ht = fmul double %i.hp, %i.hs
  %i.hu = tail call double @llvm.fmuladd.f64(double %i.ht, double %i.hr, double %i.hl)
  %i.hv = fmul double %i.ds, %i.fc
  %i.hw = tail call double @llvm.fmuladd.f64(double %i.dn, double %i.es, double %i.hv)
  %i.hx = tail call double @llvm.fmuladd.f64(double %i.dx, double %i.fm, double %i.hw)
  %i.hy = fadd double %i.gg, %i.ha
  %i.hz = fadd double %i.hy, %i.hu
  %i.ia = tail call double @llvm.fmuladd.f64(double %i.dj, double %i.hz, double %i.hx)
  %i.ib = fneg double %i.ia
  %i.ic = fmul double %4, %i.ib
  %i.id = tail call double @llvm.fmuladd.f64(double %3, double %i.ei, double %i.ic)
  %i.ie = load ptr, ptr %i.bi, align 8, !tbaa !33
  %i.if = getelementptr inbounds [216 x i8], ptr %i.ie, i64 %i.e
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 176
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !35 ; 4 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !42
  %i.ik = sext i32 %i.ch to i64                   ; 4 uses
  %i.il = getelementptr inbounds [8 x i8], ptr %i.ij, i64 %i.ik
  store double 1.000000e+00, ptr %i.il, align 8, !tbaa !44
  %i.im = getelementptr inbounds nuw i8, ptr %i.ih, i64 24
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !42
  %i.io = getelementptr inbounds [8 x i8], ptr %i.in, i64 %i.ik
  store double %i.dj, ptr %i.io, align 8, !tbaa !44
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ih, i64 88
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !42
  %i.ir = getelementptr inbounds [8 x i8], ptr %i.iq, i64 %i.ik
  store double %i.ei, ptr %i.ir, align 8, !tbaa !44
  %i.is = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !42
  %i.iu = getelementptr inbounds [8 x i8], ptr %i.it, i64 %i.ik
  store double %i.id, ptr %i.iu, align 8, !tbaa !44
  %i.iv = add nuw nsw i32 %.0284289, 1            ; 2 uses
  %i.iw = load i32, ptr %i.ao, align 4, !tbaa !70 ; 2 uses
  %i.ix = icmp slt i32 %i.iv, %i.iw
  br i1 %i.ix, label %bb.c, label %._crit_edge.loopexit, !llvm.loop !351

._crit_edge.loopexit:                             ; preds = %bb.c
  %.pre = load i32, ptr %i.an, align 4, !tbaa !69
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.iy = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.bd, %.preheader ] ; 4 uses
  %i.iz = phi i32 [ %i.iw, %._crit_edge.loopexit ], [ %i.be, %.preheader ]
  %i.ja = add nuw nsw i32 %.0285290, 1            ; 2 uses
  %i.jb = icmp slt i32 %i.ja, %i.iy
  br i1 %i.jb, label %.preheader, label %._crit_edge291.loopexit, !llvm.loop !352

._crit_edge291.loopexit:                          ; preds = %._crit_edge
  %.pre302 = load i32, ptr %i.ak, align 4, !tbaa !68
  br label %._crit_edge291

._crit_edge291:                                   ; preds = %.preheader.lr.ph, %._crit_edge291.loopexit, %.preheader288
  %i.jc = phi i32 [ %i.ax, %.preheader288 ], [ %.pre302, %._crit_edge291.loopexit ], [ %i.ax, %.preheader.lr.ph ] ; 2 uses
  %i.jd = phi i32 [ %i.ay, %.preheader288 ], [ %i.iy, %._crit_edge291.loopexit ], [ %i.ay, %.preheader.lr.ph ]
  %i.je = phi i32 [ %i.az, %.preheader288 ], [ %i.iy, %._crit_edge291.loopexit ], [ %i.az, %.preheader.lr.ph ]
  %i.jf = add nuw nsw i32 %.0286292, 1            ; 2 uses
  %i.jg = icmp slt i32 %i.jf, %i.jc
  br i1 %i.jg, label %.preheader288, label %._crit_edge294, !llvm.loop !354

._crit_edge294:                                   ; preds = %._crit_edge291, %.preheader288.lr.ph, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.jh = load i32, ptr %i.a, align 8, !tbaa !64
  %i.ji = sext i32 %i.jh to i64
  %i.jj = icmp slt i64 %indvars.iv.next, %i.ji
  br i1 %i.jj, label %bb.b, label %._crit_edge298, !llvm.loop !355

._crit_edge298:                                   ; preds = %._crit_edge294, %bb.a
  %i.jk = tail call double @mean(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 1) ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 1596
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !75
  %i.jn = icmp eq i32 %i.jm, 0
  br i1 %i.jn, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge298
  %i.jo = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %i.jk) ; 0 uses
  %i.jp = load ptr, ptr @stdout, align 8, !tbaa !76
  %i.jq = tail call i32 @fflush(ptr noundef %i.jp) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge298
  %i.jr = fcmp une double %3, 0.000000e+00
  br i1 %i.jr, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.js = fneg double %i.jk                       ; 2 uses
  tail call void @shift_grid(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 1, i32 noundef 1, double noundef %i.js)
  %i.jt = fdiv double %i.js, %3
  tail call void @shift_grid(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 11, i32 noundef 11, double noundef %i.jt)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @tanh(double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fabs.v4f64(<4 x double>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!11, !5, i64 12}
!11 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !12, i64 12, !13, i64 24, !13, i64 56}
!12 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8}
!13 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !14, i64 24}
!14 = !{!"p1 double", !9, i64 0}
!15 = !{!11, !5, i64 16}
!16 = !{!11, !5, i64 20}
!17 = !{!11, !5, i64 28}
!18 = !{!11, !5, i64 32}
!19 = !{!11, !5, i64 36}
!20 = !{!11, !5, i64 40}
!21 = !{!11, !5, i64 44}
!22 = !{!11, !5, i64 60}
!23 = !{!11, !5, i64 64}
!24 = !{!11, !5, i64 68}
!25 = !{!11, !5, i64 72}
!26 = !{!11, !5, i64 76}
!27 = !{!11, !14, i64 80}
!28 = !{!11, !5, i64 24}
!29 = !{!30, !9, i64 1776}
!30 = !{!"", !31, i64 0, !5, i64 1304, !5, i64 1308, !5, i64 1312, !5, i64 1316, !6, i64 1320, !6, i64 1432, !5, i64 1512, !5, i64 1516, !5, i64 1520, !5, i64 1524, !5, i64 1528, !5, i64 1532, !12, i64 1536, !12, i64 1548, !12, i64 1560, !12, i64 1572, !12, i64 1584, !5, i64 1596, !5, i64 1600, !5, i64 1604, !5, i64 1608, !5, i64 1612, !6, i64 1616, !6, i64 1696, !9, i64 1776}
!31 = !{!"", !6, i64 0, !6, i64 80, !6, i64 160, !6, i64 240, !6, i64 320, !6, i64 400, !6, i64 480, !6, i64 560, !6, i64 640, !6, i64 720, !6, i64 800, !6, i64 880, !6, i64 960, !6, i64 1040, !6, i64 1120, !6, i64 1200, !32, i64 1280, !32, i64 1288, !32, i64 1296}
!32 = !{!"long", !6, i64 0}
!33 = !{!34, !9, i64 248}
!34 = !{!"", !12, i64 0, !12, i64 12, !5, i64 24, !5, i64 28, !6, i64 32, !9, i64 248}
!35 = !{!36, !38, i64 176}
!36 = !{!"", !37, i64 0, !12, i64 8, !12, i64 20, !12, i64 32, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !6, i64 64, !38, i64 176, !40, i64 184, !6, i64 192, !41, i64 208}
!37 = !{!"double", !6, i64 0}
!38 = !{!"p2 double", !39, i64 0}
!39 = !{!"any p2 pointer", !9, i64 0}
!40 = !{!"p1 long", !9, i64 0}
!41 = !{!"p1 omnipotent char", !9, i64 0}
!42 = !{!14, !14, i64 0}
!43 = !{!11, !5, i64 56}
!44 = !{!37, !37, i64 0}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = distinct !{!47, !46}
!48 = distinct !{!48, !46, !49, !50}
!49 = !{!"llvm.loop.isvectorized", i32 1}
!50 = !{!"llvm.loop.unroll.runtime.disable"}
!51 = distinct !{!51, !46, !49}
!52 = distinct !{!52, !46}
!53 = distinct !{!53, !46, !49, !50}
!54 = distinct !{!54, !46, !49}
!55 = distinct !{!55, !46}
!56 = distinct !{!56, !46}
!57 = !{!30, !5, i64 1520}
!58 = !{!30, !5, i64 1524}
!59 = !{!11, !5, i64 0}
!60 = !{!11, !5, i64 4}
!61 = !{!11, !5, i64 8}
!62 = distinct !{!62, !46}
!63 = !{!32, !32, i64 0}
!64 = !{!30, !5, i64 1600}
!65 = !{!36, !5, i64 48}
!66 = !{!36, !5, i64 52}
!67 = !{!36, !5, i64 44}
!68 = !{!36, !5, i64 28}
!69 = !{!36, !5, i64 24}
!70 = !{!36, !5, i64 20}
!71 = distinct !{!71, !46}
!72 = distinct !{!72, !46}
!73 = distinct !{!73, !46}
!74 = distinct !{!74, !46}
!75 = !{!30, !5, i64 1596}
!76 = !{!77, !77, i64 0}
!77 = !{!"p1 _ZTS8_IO_FILE", !9, i64 0}
!78 = !{!30, !5, i64 1612}
!79 = !{!80}
!80 = distinct !{!80, !81}
!81 = distinct !{!81, !"LVerDomain"}
!82 = !{!83}
!83 = distinct !{!83, !81}
!84 = !{!85}
!85 = distinct !{!85, !81}
!86 = !{!87}
!87 = distinct !{!87, !81}
!88 = !{!89}
!89 = distinct !{!89, !81}
!90 = !{!91}
!91 = distinct !{!91, !81}
!92 = !{!93}
!93 = distinct !{!93, !81}
!94 = !{!95}
!95 = distinct !{!95, !81}
!96 = !{!97}
!97 = distinct !{!97, !81}
!98 = !{!99}
!99 = distinct !{!99, !81}
!100 = !{!101}
!101 = distinct !{!101, !81}
!102 = !{!103}
!103 = distinct !{!103, !81}
!104 = !{!105}
!105 = distinct !{!105, !81}
!106 = !{!107}
!107 = distinct !{!107, !81}
!108 = !{!109}
!109 = distinct !{!109, !81}
!110 = !{!111}
!111 = distinct !{!111, !81}
!112 = !{!80, !105, !101, !97, !93, !83, !87, !89, !85, !95, !91, !103, !99, !107, !109}
!113 = distinct !{!113, !46, !49, !50}
!114 = distinct !{!114, !46, !49}
!115 = distinct !{!115, !46}
!116 = distinct !{!116, !46}
!117 = distinct !{!117, !46}
!118 = distinct !{!118, !46}
!119 = distinct !{!119, !46}
!120 = !{!121}
!121 = distinct !{!121, !122}
!122 = distinct !{!122, !"LVerDomain"}
!123 = !{!124}
!124 = distinct !{!124, !122}
!125 = !{!126}
!126 = distinct !{!126, !122}
!127 = !{!128}
!128 = distinct !{!128, !122}
!129 = !{!130}
!130 = distinct !{!130, !122}
!131 = !{!132}
!132 = distinct !{!132, !122}
!133 = !{!134}
!134 = distinct !{!134, !122}
!135 = !{!136}
!136 = distinct !{!136, !122}
!137 = !{!138}
!138 = distinct !{!138, !122}
!139 = !{!140}
!140 = distinct !{!140, !122}
!141 = !{!142}
!142 = distinct !{!142, !122}
!143 = !{!144}
!144 = distinct !{!144, !122}
!145 = !{!146}
!146 = distinct !{!146, !122}
!147 = !{!148}
!148 = distinct !{!148, !122}
!149 = !{!121, !146, !142, !138, !134, !124, !128, !130, !126, !136, !132, !144, !140}
!150 = distinct !{!150, !46, !49, !50}
!151 = distinct !{!151, !46, !49}
!152 = distinct !{!152, !46}
!153 = distinct !{!153, !46}
!154 = distinct !{!154, !46}
!155 = !{!156}
!156 = distinct !{!156, !157}
!157 = distinct !{!157, !"LVerDomain"}
!158 = !{!159}
!159 = distinct !{!159, !157}
!160 = !{!161}
!161 = distinct !{!161, !157}
!162 = !{!163}
!163 = distinct !{!163, !157}
!164 = !{!165}
!165 = distinct !{!165, !157}
!166 = !{!167}
!167 = distinct !{!167, !157}
!168 = !{!169}
!169 = distinct !{!169, !157}
!170 = !{!171}
!171 = distinct !{!171, !157}
!172 = !{!173}
!173 = distinct !{!173, !157}
!174 = !{!175}
!175 = distinct !{!175, !157}
!176 = !{!177}
!177 = distinct !{!177, !157}
!178 = !{!179}
end_hunk_1
