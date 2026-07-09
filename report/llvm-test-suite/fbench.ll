inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@main:.preheader43
  store <2 x double> <double 7.621000e+03, double f0x40BAD5F47AE147AE>, ptr getelementptr inbounds nuw (i8, ptr @spectral_line, i64 8), align 8, !tbaa !8
  store <2 x double> <double f0x40B9A2D0E5604189, double f0x40B707F1A9FBE76D>, ptr getelementptr inbounds nuw (i8, ptr @spectral_line, i64 24), align 8, !tbaa !8
  store <2 x double> <double f0x40B4958E978D4FDF, double f0x40B2FD5810624DD3>, ptr getelementptr inbounds nuw (i8, ptr @spectral_line, i64 40), align 8, !tbaa !8
  store <2 x double> <double f0x40B0F47A1CAC0831, double f0x40AF00FCED916873>, ptr getelementptr inbounds nuw (i8, ptr @spectral_line, i64 56), align 8, !tbaa !8
  store i32 1000000, ptr @niter, align 4, !tbaa !4
  store i1 true, ptr @current_surfaces, align 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @s, i64 48), ptr noundef nonnull align 16 dereferenceable(32) @testcase, i64 32, i1 false), !tbaa !8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @s, i64 88), ptr noundef nonnull align 16 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @testcase, i64 32), i64 32, i1 false), !tbaa !8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @s, i64 128), ptr noundef nonnull align 16 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @testcase, i64 64), i64 32, i1 false), !tbaa !8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @s, i64 168), ptr noundef nonnull align 16 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @testcase, i64 96), i64 32, i1 false), !tbaa !8
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.a = load i32, ptr @niter, align 4, !tbaa !4
  %i.b = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.a) ; 0 uses
  %i.c = load i32, ptr @niter, align 4, !tbaa !4
  %i.d = sitofp i32 %i.c to double
  %i.e = fdiv double %i.d, 1.000000e+03
  %i.f = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %i.e) ; 0 uses
  %puts36 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %puts37 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  store i32 0, ptr @itercount, align 4, !tbaa !4
  %i.g = load i32, ptr @niter, align 4, !tbaa !4
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.preheader, label %.preheader43.._crit_edge_crit_edge

.preheader43.._crit_edge_crit_edge:               ; preds = %.preheader43
  %.pre = load double, ptr @od_sa.0, align 16, !tbaa !8
  %.pre62 = load double, ptr @od_sa.1, align 8, !tbaa !8
  br label %._crit_edge

.preheader:                                       ; preds = %.preheader43, %.preheader
  store i1 false, ptr @paraxial, align 2
  tail call fastcc void @trace_line(i32 noundef 4, double noundef 2.000000e+00)
  %i.i = load double, ptr @object_distance, align 8, !tbaa !8 ; 4 uses
  store double %i.i, ptr @od_sa.0, align 16, !tbaa !8
  %i.j = load double, ptr @axis_slope_angle, align 8, !tbaa !8 ; 3 uses
  store double %i.j, ptr @od_sa.1, align 8, !tbaa !8
  store i1 true, ptr @paraxial, align 2
  tail call fastcc void @trace_line(i32 noundef 4, double noundef 2.000000e+00)
  %i.k = load double, ptr @object_distance, align 8, !tbaa !8 ; 3 uses
  store double %i.k, ptr @od_sa.2, align 16, !tbaa !8
  %i.l = load double, ptr @axis_slope_angle, align 8, !tbaa !8 ; 2 uses
  store double %i.l, ptr @od_sa.3, align 8, !tbaa !8
  store i1 false, ptr @paraxial, align 2
  tail call fastcc void @trace_line(i32 noundef 3, double noundef 2.000000e+00)
  %i.m = load double, ptr @object_distance, align 8, !tbaa !8
  tail call fastcc void @trace_line(i32 noundef 6, double noundef 2.000000e+00)
  %i.n = load double, ptr @object_distance, align 8, !tbaa !8
  %i.o = fsub double %i.k, %i.i
  store double %i.o, ptr @aberr_lspher, align 8, !tbaa !8
  %i.p = fmul double %i.k, %i.l
  %i.q = tail call double @sin(double noundef %i.j) #8, !tbaa !4
  %i.r = fsub double %i.n, %i.m
  store double %i.r, ptr @aberr_lchrom, align 8, !tbaa !8
  %i.s = insertelement <2 x double> poison, double %i.i, i64 0
  %i.t = insertelement <2 x double> %i.s, double %i.q, i64 1 ; 2 uses
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.v = fmul <2 x double> %i.t, %i.u
  %i.w = insertelement <2 x double> <double poison, double 9.260000e-05>, double %i.p, i64 0
  %i.x = fdiv <2 x double> %i.w, %i.v             ; 2 uses
  %i.y = extractelement <2 x double> %i.x, i64 0
  %i.z = fsub double 1.000000e+00, %i.y
  store double %i.z, ptr @aberr_osc, align 8, !tbaa !8
  %i.aa = extractelement <2 x double> %i.x, i64 1 ; 2 uses
  store double %i.aa, ptr @max_lspher, align 8, !tbaa !8
  store double 2.500000e-03, ptr @max_osc, align 8, !tbaa !8
  store double %i.aa, ptr @max_lchrom, align 8, !tbaa !8
  %i.ab = load i32, ptr @itercount, align 4, !tbaa !4
  %i.ac = add nsw i32 %i.ab, 1                    ; 2 uses
  store i32 %i.ac, ptr @itercount, align 4, !tbaa !4
  %i.ad = load i32, ptr @niter, align 4, !tbaa !4
  %i.ae = icmp slt i32 %i.ac, %i.ad
  br i1 %i.ae, label %.preheader, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %.preheader, %.preheader43.._crit_edge_crit_edge
  %i.af = phi double [ %.pre62, %.preheader43.._crit_edge_crit_edge ], [ %i.j, %.preheader ]
  %i.ag = phi double [ %.pre, %.preheader43.._crit_edge_crit_edge ], [ %i.i, %.preheader ]
  %i.ah = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @outarr, ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef nonnull @.str.6, double noundef %i.ag, double noundef %i.af) #8 ; 0 uses
  %i.ai = load double, ptr @od_sa.2, align 16, !tbaa !8
  %i.aj = load double, ptr @od_sa.3, align 8, !tbaa !8
  %i.ak = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @outarr, i64 80), ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef nonnull @.str.7, double noundef %i.ai, double noundef %i.aj) #8 ; 0 uses
  %i.al = load double, ptr @aberr_lspher, align 8, !tbaa !8
  %i.am = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @outarr, i64 160), ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %i.al) #8 ; 0 uses
  %i.an = load double, ptr @max_lspher, align 8, !tbaa !8
  %i.ao = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @outarr, i64 240), ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %i.an) #8 ; 0 uses
  %i.ap = load double, ptr @aberr_osc, align 8, !tbaa !8
  %i.aq = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @outarr, i64 320), ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %i.ap) #8 ; 0 uses
  %i.ar = load double, ptr @max_osc, align 8, !tbaa !8
  %i.as = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @outarr, i64 400), ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %i.ar) #8 ; 0 uses
  %i.at = load double, ptr @aberr_lchrom, align 8, !tbaa !8
  %i.au = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @outarr, i64 480), ptr noundef nonnull dereferenceable(1) @.str.11, double noundef %i.at) #8 ; 0 uses
  %i.av = load double, ptr @max_lchrom, align 8, !tbaa !8
  %i.aw = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @outarr, i64 560), ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %i.av) #8 ; 0 uses
  br label %bb.a

bb.a:                                             ; preds = %._crit_edge, %._crit_edge63
  %indvars.iv58 = phi i64 [ 0, %._crit_edge ], [ %.pre64, %._crit_edge63 ] ; 3 uses
  %.03451 = phi i32 [ 0, %._crit_edge ], [ %.3, %._crit_edge63 ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [80 x i8], ptr @outarr, i64 %indvars.iv58 ; 3 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr @refarr, i64 %indvars.iv58
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !12 ; 4 uses
  %i.ba = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ax, ptr noundef nonnull dereferenceable(1) %i.az) #9
  %.not39 = icmp eq i32 %i.ba, 0
  %.pre64 = add nuw nsw i64 %indvars.iv58, 1      ; 3 uses
  br i1 %.not39, label %._crit_edge63, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bb = trunc nuw nsw i64 %.pre64 to i32
  %i.bc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %i.bb) ; 0 uses
  %i.bd = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull %i.az) ; 0 uses
  %i.be = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, ptr noundef nonnull %i.ax) ; 0 uses
  %i.bf = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15) ; 0 uses
  %i.bg = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.az) #9 ; 2 uses
  %i.bh = trunc i64 %i.bg to i32
  %i.bi = icmp sgt i32 %i.bh, 0
  br i1 %i.bi, label %.lr.ph.preheader, label %._crit_edge50

.lr.ph.preheader:                                 ; preds = %bb.b
  %wide.trip.count = and i64 %i.bg, 2147483647
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %.13547 = phi i32 [ %.03451, %.lr.ph.preheader ], [ %spec.select, %.lr.ph ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !15
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ax, i64 %indvars.iv ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !15
  %i.bn = icmp eq i8 %i.bk, %i.bm
  %i.bo = select i1 %i.bn, i32 32, i32 94
  %putchar40 = tail call i32 @putchar(i32 %i.bo)  ; 0 uses
  %i.bp = load i8, ptr %i.bj, align 1, !tbaa !15
  %i.bq = load i8, ptr %i.bl, align 1, !tbaa !15
  %.not41 = icmp ne i8 %i.bp, %i.bq
  %i.br = zext i1 %.not41 to i32
  %spec.select = add nsw i32 %.13547, %i.br       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge50, label %.lr.ph, !llvm.loop !16

._crit_edge50:                                    ; preds = %.lr.ph, %bb.b
  %.135.lcssa = phi i32 [ %.03451, %bb.b ], [ %spec.select, %.lr.ph ]
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  br label %._crit_edge63

._crit_edge63:                                    ; preds = %bb.a, %._crit_edge50
  %.3 = phi i32 [ %.135.lcssa, %._crit_edge50 ], [ %.03451, %bb.a ] ; 4 uses
  %exitcond61.not = icmp eq i64 %.pre64, 8
  br i1 %exitcond61.not, label %bb.c, label %bb.a, !llvm.loop !17

bb.c:                                             ; preds = %._crit_edge63
  %i.bs = icmp sgt i32 %.3, 0
  br i1 %i.bs, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq i32 %.3, 1
  %i.bt = select i1 %.not, ptr @.str.20, ptr @.str.19
  %i.bu = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %.3, ptr noundef nonnull %i.bt) ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %puts38 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @trace_line(i32 noundef range(i32 3, 7) %0, double noundef nofpclass(nan inf zero sub nnorm) %1) unnamed_addr #2 {
bb.a:
  store double 0.000000e+00, ptr @object_distance, align 8, !tbaa !8
  %.b11 = load i1, ptr @current_surfaces, align 2
  br i1 %.b11, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %axis_slope_angle.promoted = load double, ptr @axis_slope_angle, align 8 ; 3 uses
  %i.a = load double, ptr getelementptr inbounds nuw (i8, ptr @spectral_line, i64 32), align 16 ; 8 uses
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr @spectral_line, i64 %i.b ; 8 uses
  %i.d = load double, ptr getelementptr inbounds nuw (i8, ptr @spectral_line, i64 24), align 8
  %i.e = load double, ptr getelementptr inbounds nuw (i8, ptr @spectral_line, i64 48), align 16
  %i.f = fsub double %i.d, %i.e                   ; 8 uses
  %.b = load i1, ptr @paraxial, align 2
  %i.g = load double, ptr getelementptr inbounds nuw (i8, ptr @s, i64 48), align 16, !tbaa !8 ; 6 uses
  %i.h = load double, ptr getelementptr inbounds nuw (i8, ptr @s, i64 56), align 8, !tbaa !8 ; 7 uses
  %i.i = fcmp ogt double %i.h, 1.000000e+00       ; 2 uses
  br i1 %.b, label %.lr.ph.split.preheader, label %.lr.ph.split.us.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  br i1 %i.i, label %bb.aa, label %bb.ab

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.split.us.preheader
  %i.j = load double, ptr %i.c, align 8, !tbaa !8
  %i.k = load double, ptr getelementptr inbounds nuw (i8, ptr @s, i64 64), align 16, !tbaa !8
  %2 = insertelement <2 x double> poison, double %i.a, i64 0
  %3 = insertelement <2 x double> %2, double %i.h, i64 1
  %i.l = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.j, i64 0
  %4 = fsub <2 x double> %3, %i.l
  %i.m = insertelement <2 x double> poison, double %i.f, i64 0
  %i.n = insertelement <2 x double> %i.m, double %i.k, i64 1
  %i.o = fdiv <2 x double> %4, %i.n               ; 2 uses
  %i.p = extractelement <2 x double> %i.o, i64 0
  %i.q = extractelement <2 x double> %i.o, i64 1
  %i.r = tail call double @llvm.fmuladd.f64(double %i.p, double %i.q, double %i.h)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us.preheader
  %i.s = phi double [ %i.r, %bb.b ], [ %i.h, %.lr.ph.split.us.preheader ] ; 6 uses
  %i.t = fcmp une double %i.g, 0.000000e+00
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = fdiv double 1.000000e+00, %i.s
  %i.v = tail call double @sin(double noundef %axis_slope_angle.promoted) #8, !tbaa !4
  %i.w = fmul double %i.u, %i.v
  %i.x = tail call double @asin(double noundef %i.w) #8, !tbaa !4 ; 2 uses
  %i.y = tail call double @cos(double noundef %i.x) #8, !tbaa !4
  %i.z = fmul double %i.s, %i.y
  %i.aa = tail call double @cos(double noundef %axis_slope_angle.promoted) #8, !tbaa !4
  %i.ab = fdiv double %i.z, %i.aa
  %i.ac = fmul double %i.ab, 0.000000e+00
  br label %.lr.ph.split.us.1

bb.e:                                             ; preds = %bb.c
  %i.ad = fdiv double %1, %i.g                    ; 2 uses
  %i.ae = tail call double @asin(double noundef %i.ad) #8, !tbaa !4
  %i.af = fdiv double 1.000000e+00, %i.s
  %i.ag = fmul double %i.ad, %i.af
  %i.ah = fadd double %i.ae, 0.000000e+00         ; 3 uses
  %i.ai = tail call double @asin(double noundef %i.ag) #8, !tbaa !4
  %i.aj = fsub double %i.ah, %i.ai                ; 2 uses
  %i.ak = fmul double %i.ah, 5.000000e-01
  %i.al = tail call double @sin(double noundef %i.ak) #8, !tbaa !4 ; 2 uses
  %i.am = fmul double %i.g, 2.000000e+00
  %i.an = fmul double %i.am, %i.al
  %i.ao = fmul double %i.al, %i.an
  %i.ap = tail call double @sin(double noundef %i.ah) #8, !tbaa !4
  %i.aq = fmul double %i.g, %i.ap
  %i.ar = tail call double @tan(double noundef %i.aj) #8, !tbaa !4
  %i.as = fdiv double 1.000000e+00, %i.ar
  %i.at = tail call double @llvm.fmuladd.f64(double %i.aq, double %i.as, double %i.ao) ; 2 uses
  store double %i.at, ptr @object_distance, align 8, !tbaa !8
  br label %.lr.ph.split.us.1

.lr.ph.split.us.1:                                ; preds = %bb.e, %bb.d
  %i.au = phi double [ %i.aj, %bb.e ], [ %i.x, %bb.d ] ; 4 uses
  %i.av = phi double [ %i.at, %bb.e ], [ %i.ac, %bb.d ]
  %i.aw = load double, ptr getelementptr inbounds nuw (i8, ptr @s, i64 72), align 8, !tbaa !8
  %i.ax = fsub double %i.av, %i.aw                ; 3 uses
  %i.ay = load double, ptr getelementptr inbounds nuw (i8, ptr @s, i64 88), align 8, !tbaa !8 ; 6 uses
  %i.az = load double, ptr getelementptr inbounds nuw (i8, ptr @s, i64 96), align 16, !tbaa !8 ; 4 uses
  %i.ba = fcmp ogt double %i.az, 1.000000e+00
  br i1 %i.ba, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.split.us.1
  %i.bb = load double, ptr %i.c, align 8, !tbaa !8
  %i.bc = load double, ptr getelementptr inbounds nuw (i8, ptr @s, i64 104), align 8, !tbaa !8
  %5 = insertelement <2 x double> poison, double %i.a, i64 0
  %6 = insertelement <2 x double> %5, double %i.az, i64 1
  %i.bd = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.bb, i64 0
  %7 = fsub <2 x double> %6, %i.bd
  %i.be = insertelement <2 x double> poison, double %i.f, i64 0
  %i.bf = insertelement <2 x double> %i.be, double %i.bc, i64 1
  %i.bg = fdiv <2 x double> %7, %i.bf             ; 2 uses
  %i.bh = extractelement <2 x double> %i.bg, i64 0
  %i.bi = extractelement <2 x double> %i.bg, i64 1
  %i.bj = tail call double @llvm.fmuladd.f64(double %i.bh, double %i.bi, double %i.az)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.split.us.1
  %i.bk = phi double [ %i.bj, %bb.f ], [ %i.az, %.lr.ph.split.us.1 ] ; 6 uses
  %i.bl = fcmp une double %i.ay, 0.000000e+00
  br i1 %i.bl, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bm = fdiv double %i.s, %i.bk
  %i.bn = tail call double @sin(double noundef %i.au) #8, !tbaa !4
  %i.bo = fmul double %i.bm, %i.bn
  %i.bp = tail call double @asin(double noundef %i.bo) #8, !tbaa !4 ; 3 uses
  %i.bq = tail call double @cos(double noundef %i.bp) #8, !tbaa !4
  %i.br = fmul double %i.bk, %i.bq
  %i.bs = tail call double @cos(double noundef %i.au) #8, !tbaa !4
  %i.bt = fmul double %i.s, %i.bs
  %i.bu = fdiv double %i.br, %i.bt
  %i.bv = fmul double %i.ax, %i.bu                ; 2 uses
  store double %i.bv, ptr @object_distance, align 8, !tbaa !8
  store double %i.bp, ptr @axis_slope_angle, align 8, !tbaa !8
  br label %.lr.ph.split.us.2

bb.i:                                             ; preds = %bb.g
  %i.bw = fcmp oeq double %i.ax, 0.000000e+00
  br i1 %i.bw, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bx = fsub double %i.ax, %i.ay
  %i.by = fdiv double %i.bx, %i.ay
  %i.bz = tail call double @sin(double noundef %i.au) #8, !tbaa !4
  %i.ca = fmul double %i.by, %i.bz
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.cb = fdiv double %1, %i.ay
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cc = phi double [ 0.000000e+00, %bb.k ], [ %i.au, %bb.j ]
  %.1.i.us.1 = phi double [ %i.cb, %bb.k ], [ %i.ca, %bb.j ] ; 2 uses
  %i.cd = tail call double @asin(double noundef %.1.i.us.1) #8, !tbaa !4
  %i.ce = fdiv double %i.s, %i.bk
  %i.cf = fmul double %.1.i.us.1, %i.ce
  %i.cg = fadd double %i.cc, %i.cd                ; 3 uses
  %i.ch = tail call double @asin(double noundef %i.cf) #8, !tbaa !4
  %i.ci = fsub double %i.cg, %i.ch                ; 3 uses
  store double %i.ci, ptr @axis_slope_angle, align 8, !tbaa !8
  %i.cj = fmul double %i.cg, 5.000000e-01
  %i.ck = tail call double @sin(double noundef %i.cj) #8, !tbaa !4 ; 2 uses
  %i.cl = fmul double %i.ay, 2.000000e+00
  %i.cm = fmul double %i.cl, %i.ck
  %i.cn = fmul double %i.ck, %i.cm
  %i.co = tail call double @sin(double noundef %i.cg) #8, !tbaa !4
  %i.cp = fmul double %i.ay, %i.co
  %i.cq = tail call double @tan(double noundef %i.ci) #8, !tbaa !4
  %i.cr = fdiv double 1.000000e+00, %i.cq
  %i.cs = tail call double @llvm.fmuladd.f64(double %i.cp, double %i.cr, double %i.cn)
  br label %.lr.ph.split.us.2

.lr.ph.split.us.2:                                ; preds = %bb.l, %bb.h
  %i.ct = phi double [ %i.ci, %bb.l ], [ %i.bp, %bb.h ] ; 4 uses
  %i.cu = phi double [ %i.cs, %bb.l ], [ %i.bv, %bb.h ]
  %i.cv = load double, ptr getelementptr inbounds nuw (i8, ptr @s, i64 112), align 16, !tbaa !8
  %i.cw = fsub double %i.cu, %i.cv                ; 3 uses
  %i.cx = load double, ptr getelementptr inbounds nuw (i8, ptr @s, i64 128), align 16, !tbaa !8 ; 6 uses
  %i.cy = load double, ptr getelementptr inbounds nuw (i8, ptr @s, i64 136), align 8, !tbaa !8 ; 4 uses
  %i.cz = fcmp ogt double %i.cy, 1.000000e+00
  br i1 %i.cz, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph.split.us.2
  %i.da = load double, ptr %i.c, align 8, !tbaa !8
  %i.db = load double, ptr getelementptr inbounds nuw (i8, ptr @s, i64 144), align 16, !tbaa !8
  %8 = insertelement <2 x double> poison, double %i.a, i64 0
  %9 = insertelement <2 x double> %8, double %i.cy, i64 1
  %i.dc = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.da, i64 0
  %10 = fsub <2 x double> %9, %i.dc
  %i.dd = insertelement <2 x double> poison, double %i.f, i64 0
  %i.de = insertelement <2 x double> %i.dd, double %i.db, i64 1
  %i.df = fdiv <2 x double> %10, %i.de            ; 2 uses
  %i.dg = extractelement <2 x double> %i.df, i64 0
  %i.dh = extractelement <2 x double> %i.df, i64 1
  %i.di = tail call double @llvm.fmuladd.f64(double %i.dg, double %i.dh, double %i.cy)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.split.us.2
  %i.dj = phi double [ %i.di, %bb.m ], [ %i.cy, %.lr.ph.split.us.2 ] ; 6 uses
  %i.dk = fcmp une double %i.cx, 0.000000e+00
  br i1 %i.dk, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dl = fdiv double %i.bk, %i.dj
  %i.dm = tail call double @sin(double noundef %i.ct) #8, !tbaa !4
  %i.dn = fmul double %i.dl, %i.dm
  %i.do = tail call double @asin(double noundef %i.dn) #8, !tbaa !4 ; 2 uses
  %i.dp = tail call double @cos(double noundef %i.do) #8, !tbaa !4
  %i.dq = fmul double %i.dj, %i.dp
  %i.dr = tail call double @cos(double noundef %i.ct) #8, !tbaa !4
  %i.ds = fmul double %i.bk, %i.dr
  %i.dt = fdiv double %i.dq, %i.ds
  %i.du = fmul double %i.cw, %i.dt
  br label %.lr.ph.split.us.3

bb.p:                                             ; preds = %bb.n
  %i.dv = fcmp oeq double %i.cw, 0.000000e+00
  br i1 %i.dv, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dw = fsub double %i.cw, %i.cx
  %i.dx = fdiv double %i.dw, %i.cx
  %i.dy = tail call double @sin(double noundef %i.ct) #8, !tbaa !4
  %i.dz = fmul double %i.dx, %i.dy
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.ea = fdiv double %1, %i.cx
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.eb = phi double [ 0.000000e+00, %bb.r ], [ %i.ct, %bb.q ]
  %.1.i.us.2 = phi double [ %i.ea, %bb.r ], [ %i.dz, %bb.q ] ; 2 uses
  %i.ec = tail call double @asin(double noundef %.1.i.us.2) #8, !tbaa !4
  %i.ed = fdiv double %i.bk, %i.dj
  %i.ee = fmul double %.1.i.us.2, %i.ed
  %i.ef = fadd double %i.eb, %i.ec                ; 3 uses
  %i.eg = tail call double @asin(double noundef %i.ee) #8, !tbaa !4
  %i.eh = fsub double %i.ef, %i.eg                ; 2 uses
  %i.ei = fmul double %i.ef, 5.000000e-01
  %i.ej = tail call double @sin(double noundef %i.ei) #8, !tbaa !4 ; 2 uses
  %i.ek = fmul double %i.cx, 2.000000e+00
  %i.el = fmul double %i.ek, %i.ej
  %i.em = fmul double %i.ej, %i.el
  %i.en = tail call double @sin(double noundef %i.ef) #8, !tbaa !4
  %i.eo = fmul double %i.cx, %i.en
  %i.ep = tail call double @tan(double noundef %i.eh) #8, !tbaa !4
  %i.eq = fdiv double 1.000000e+00, %i.ep
  %i.er = tail call double @llvm.fmuladd.f64(double %i.eo, double %i.eq, double %i.em)
  br label %.lr.ph.split.us.3

.lr.ph.split.us.3:                                ; preds = %bb.s, %bb.o
  %i.es = phi double [ %i.eh, %bb.s ], [ %i.do, %bb.o ] ; 4 uses
  %i.et = phi double [ %i.er, %bb.s ], [ %i.du, %bb.o ]
  %i.eu = load double, ptr getelementptr inbounds nuw (i8, ptr @s, i64 152), align 8, !tbaa !8
  %i.ev = fsub double %i.et, %i.eu                ; 3 uses
  %i.ew = load double, ptr getelementptr inbounds nuw (i8, ptr @s, i64 168), align 8, !tbaa !8 ; 6 uses
  %i.ex = load double, ptr getelementptr inbounds nuw (i8, ptr @s, i64 176), align 16, !tbaa !8 ; 4 uses
  %i.ey = fcmp ogt double %i.ex, 1.000000e+00
  br i1 %i.ey, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.split.us.3
  %i.ez = load double, ptr %i.c, align 8, !tbaa !8
  %i.fa = load double, ptr getelementptr inbounds nuw (i8, ptr @s, i64 184), align 8, !tbaa !8
  %11 = insertelement <2 x double> poison, double %i.a, i64 0
  %12 = insertelement <2 x double> %11, double %i.ex, i64 1
  %i.fb = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.ez, i64 0
  %13 = fsub <2 x double> %12, %i.fb
  %i.fc = insertelement <2 x double> poison, double %i.f, i64 0
  %i.fd = insertelement <2 x double> %i.fc, double %i.fa, i64 1
  %i.fe = fdiv <2 x double> %13, %i.fd            ; 2 uses
  %i.ff = extractelement <2 x double> %i.fe, i64 0
  %i.fg = extractelement <2 x double> %i.fe, i64 1
  %i.fh = tail call double @llvm.fmuladd.f64(double %i.ff, double %i.fg, double %i.ex)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.split.us.3
  %i.fi = phi double [ %i.fh, %bb.t ], [ %i.ex, %.lr.ph.split.us.3 ] ; 3 uses
  %i.fj = fcmp une double %i.ew, 0.000000e+00
  br i1 %i.fj, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fk = fdiv double %i.dj, %i.fi
  %i.fl = tail call double @sin(double noundef %i.es) #8, !tbaa !4
  %i.fm = fmul double %i.fk, %i.fl
  %i.fn = tail call double @asin(double noundef %i.fm) #8, !tbaa !4 ; 2 uses
  %i.fo = tail call double @cos(double noundef %i.fn) #8, !tbaa !4
  %i.fp = fmul double %i.fi, %i.fo
  %i.fq = tail call double @cos(double noundef %i.es) #8, !tbaa !4
  %i.fr = fmul double %i.dj, %i.fq
  %i.fs = fdiv double %i.fp, %i.fr
  %i.ft = fmul double %i.ev, %i.fs
  store double %i.ft, ptr @object_distance, align 8, !tbaa !8
  store double %i.fn, ptr @axis_slope_angle, align 8, !tbaa !8
  br label %._crit_edge

bb.w:                                             ; preds = %bb.u
  %i.fu = fcmp oeq double %i.ev, 0.000000e+00
  br i1 %i.fu, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fv = fsub double %i.ev, %i.ew
  %i.fw = fdiv double %i.fv, %i.ew
  %i.fx = tail call double @sin(double noundef %i.es) #8, !tbaa !4
  %i.fy = fmul double %i.fw, %i.fx
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.fz = fdiv double %1, %i.ew
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ga = phi double [ 0.000000e+00, %bb.y ], [ %i.es, %bb.x ]
  %.1.i.us.3 = phi double [ %i.fz, %bb.y ], [ %i.fy, %bb.x ] ; 2 uses
  %i.gb = tail call double @asin(double noundef %.1.i.us.3) #8, !tbaa !4
  %i.gc = fdiv double %i.dj, %i.fi
  %i.gd = fmul double %.1.i.us.3, %i.gc
  %i.ge = fadd double %i.ga, %i.gb                ; 3 uses
  %i.gf = tail call double @asin(double noundef %i.gd) #8, !tbaa !4
  %i.gg = fsub double %i.ge, %i.gf                ; 2 uses
  store double %i.gg, ptr @axis_slope_angle, align 8, !tbaa !8
  %i.gh = fmul double %i.ge, 5.000000e-01
  %i.gi = tail call double @sin(double noundef %i.gh) #8, !tbaa !4 ; 2 uses
  %i.gj = fmul double %i.ew, 2.000000e+00
  %i.gk = fmul double %i.gj, %i.gi
  %i.gl = fmul double %i.gi, %i.gk
  %i.gm = tail call double @sin(double noundef %i.ge) #8, !tbaa !4
  %i.gn = fmul double %i.ew, %i.gm
  %i.go = tail call double @tan(double noundef %i.gg) #8, !tbaa !4
  %i.gp = fdiv double 1.000000e+00, %i.go
  %i.gq = tail call double @llvm.fmuladd.f64(double %i.gn, double %i.gp, double %i.gl)
  store double %i.gq, ptr @object_distance, align 8, !tbaa !8
  br label %._crit_edge

bb.aa:                                            ; preds = %.lr.ph.split.preheader
  %i.gr = load double, ptr %i.c, align 8, !tbaa !8
  %i.gs = load double, ptr getelementptr inbounds nuw (i8, ptr @s, i64 64), align 16, !tbaa !8
  %14 = insertelement <2 x double> poison, double %i.a, i64 0
  %15 = insertelement <2 x double> %14, double %i.h, i64 1
  %i.gt = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.gr, i64 0
  %16 = fsub <2 x double> %15, %i.gt
  %i.gu = insertelement <2 x double> poison, double %i.f, i64 0
  %i.gv = insertelement <2 x double> %i.gu, double %i.gs, i64 1
  %i.gw = fdiv <2 x double> %16, %i.gv            ; 2 uses
  %i.gx = extractelement <2 x double> %i.gw, i64 0
  %i.gy = extractelement <2 x double> %i.gw, i64 1
  %i.gz = tail call double @llvm.fmuladd.f64(double %i.gx, double %i.gy, double %i.h)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph.split.preheader
  %i.ha = phi double [ %i.gz, %bb.aa ], [ %i.h, %.lr.ph.split.preheader ] ; 4 uses
  %i.hb = fcmp une double %i.g, 0.000000e+00
  %i.hc = fdiv double 1.000000e+00, %i.ha         ; 2 uses
  br i1 %i.hb, label %._crit_edge.i, label %bb.ac

._crit_edge.i:                                    ; preds = %bb.ab
  %i.hd = fdiv double %1, %i.g                    ; 2 uses
  %i.he = fmul double %i.hd, %i.hc
  %i.hf = fadd double %i.hd, 0.000000e+00
  %i.hg = fsub double %i.hf, %i.he                ; 2 uses
  %i.hh = fdiv double %1, %i.hg
  br label %.lr.ph.split.1

bb.ac:                                            ; preds = %bb.ab
  %i.hi = fmul double %i.ha, 0.000000e+00
  %i.hj = fmul double %i.hc, %axis_slope_angle.promoted
  br label %.lr.ph.split.1

.lr.ph.split.1:                                   ; preds = %._crit_edge.i, %bb.ac
  %i.hk = phi double [ %i.hg, %._crit_edge.i ], [ %i.hj, %bb.ac ] ; 3 uses
  %i.hl = phi double [ %i.hh, %._crit_edge.i ], [ %i.hi, %bb.ac ]
  %i.hm = load double, ptr getelementptr inbounds nuw (i8, ptr @s, i64 72), align 8, !tbaa !8
  %i.hn = fsub double %i.hl, %i.hm                ; 5 uses
  %i.ho = load double, ptr getelementptr inbounds nuw (i8, ptr @s, i64 88), align 8, !tbaa !8 ; 4 uses
  %i.hp = load double, ptr getelementptr inbounds nuw (i8, ptr @s, i64 96), align 16, !tbaa !8 ; 4 uses
  %i.hq = fcmp ogt double %i.hp, 1.000000e+00
  br i1 %i.hq, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph.split.1
  %i.hr = load double, ptr %i.c, align 8, !tbaa !8
  %i.hs = load double, ptr getelementptr inbounds nuw (i8, ptr @s, i64 104), align 8, !tbaa !8
  %17 = insertelement <2 x double> poison, double %i.a, i64 0
  %18 = insertelement <2 x double> %17, double %i.hp, i64 1
  %i.ht = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.hr, i64 0
  %19 = fsub <2 x double> %18, %i.ht
  %i.hu = insertelement <2 x double> poison, double %i.f, i64 0
  %i.hv = insertelement <2 x double> %i.hu, double %i.hs, i64 1
  %i.hw = fdiv <2 x double> %19, %i.hv            ; 2 uses
  %i.hx = extractelement <2 x double> %i.hw, i64 0
  %i.hy = extractelement <2 x double> %i.hw, i64 1
  %i.hz = tail call double @llvm.fmuladd.f64(double %i.hx, double %i.hy, double %i.hp)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.lr.ph.split.1
  %i.ia = phi double [ %i.hz, %bb.ad ], [ %i.hp, %.lr.ph.split.1 ] ; 4 uses
  %i.ib = fcmp une double %i.ho, 0.000000e+00
  br i1 %i.ib, label %._crit_edge.i.1, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ic = insertelement <2 x double> poison, double %i.ha, i64 0
  %i.id = insertelement <2 x double> %i.ic, double %i.ia, i64 1 ; 2 uses
  %i.ie = shufflevector <2 x double> %i.id, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.if = fdiv <2 x double> %i.id, %i.ie
  %i.ig = insertelement <2 x double> poison, double %i.hk, i64 0
  %i.ih = insertelement <2 x double> %i.ig, double %i.hn, i64 1
  %i.ii = fmul <2 x double> %i.if, %i.ih
  br label %.lr.ph.split.2

._crit_edge.i.1:                                  ; preds = %bb.ae
  %i.ij = fcmp oeq double %i.hn, 0.000000e+00     ; 2 uses
  %i.ik = fdiv double %1, %i.ho
  %i.il = fsub double %i.hn, %i.ho
  %i.im = fdiv double %i.il, %i.ho
  %i.in = fmul double %i.im, %i.hk
  %i.io = select i1 %i.ij, double 0.000000e+00, double %i.hk ; 2 uses
  %.0.i.1 = select i1 %i.ij, double %i.ik, double %i.in ; 2 uses
  %i.ip = fdiv double %i.ha, %i.ia
  %i.iq = fmul double %.0.i.1, %i.ip
  %i.ir = fadd double %i.io, %.0.i.1
  %i.is = fcmp une double %i.hn, 0.000000e+00
  %i.it = fmul double %i.hn, %i.io
  %i.iu = select i1 %i.is, double %i.it, double %1 ; 2 uses
  %i.iv = fsub double %i.ir, %i.iq                ; 2 uses
  %i.iw = fdiv double %i.iu, %i.iv
  %i.ix = insertelement <2 x double> poison, double %i.iv, i64 0
  %i.iy = insertelement <2 x double> %i.ix, double %i.iw, i64 1
  br label %.lr.ph.split.2

.lr.ph.split.2:                                   ; preds = %._crit_edge.i.1, %bb.af
  %i.iz = phi double [ %i.iu, %._crit_edge.i.1 ], [ %1, %bb.af ] ; 3 uses
  %i.ja = phi <2 x double> [ %i.iy, %._crit_edge.i.1 ], [ %i.ii, %bb.af ] ; 3 uses
  %i.jb = load double, ptr getelementptr inbounds nuw (i8, ptr @s, i64 112), align 16, !tbaa !8
  %i.jc = extractelement <2 x double> %i.ja, i64 1
  %i.jd = fsub double %i.jc, %i.jb                ; 5 uses
  %i.je = load double, ptr getelementptr inbounds nuw (i8, ptr @s, i64 128), align 16, !tbaa !8 ; 4 uses
  %i.jf = load double, ptr getelementptr inbounds nuw (i8, ptr @s, i64 136), align 8, !tbaa !8 ; 4 uses
  %i.jg = fcmp ogt double %i.jf, 1.000000e+00
  br i1 %i.jg, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.lr.ph.split.2
  %i.jh = load double, ptr %i.c, align 8, !tbaa !8
  %i.ji = load double, ptr getelementptr inbounds nuw (i8, ptr @s, i64 144), align 16, !tbaa !8
  %20 = insertelement <2 x double> poison, double %i.a, i64 0
  %21 = insertelement <2 x double> %20, double %i.jf, i64 1
  %i.jj = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.jh, i64 0
  %22 = fsub <2 x double> %21, %i.jj
  %i.jk = insertelement <2 x double> poison, double %i.f, i64 0
  %i.jl = insertelement <2 x double> %i.jk, double %i.ji, i64 1
  %i.jm = fdiv <2 x double> %22, %i.jl            ; 2 uses
  %i.jn = extractelement <2 x double> %i.jm, i64 0
  %i.jo = extractelement <2 x double> %i.jm, i64 1
  %i.jp = tail call double @llvm.fmuladd.f64(double %i.jn, double %i.jo, double %i.jf)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph.split.2
  %i.jq = phi double [ %i.jp, %bb.ag ], [ %i.jf, %.lr.ph.split.2 ] ; 4 uses
  %i.jr = fcmp une double %i.je, 0.000000e+00
  br i1 %i.jr, label %._crit_edge.i.2, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.js = insertelement <2 x double> poison, double %i.ia, i64 0
  %i.jt = insertelement <2 x double> %i.js, double %i.jq, i64 1 ; 2 uses
  %i.ju = shufflevector <2 x double> %i.jt, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.jv = fdiv <2 x double> %i.jt, %i.ju
  %i.jw = insertelement <2 x double> %i.ja, double %i.jd, i64 1
  %i.jx = fmul <2 x double> %i.jv, %i.jw
  br label %.lr.ph.split.3

._crit_edge.i.2:                                  ; preds = %bb.ah
  %i.jy = fcmp oeq double %i.jd, 0.000000e+00     ; 2 uses
  %i.jz = fdiv double %i.iz, %i.je
  %i.ka = fsub double %i.jd, %i.je
  %i.kb = fdiv double %i.ka, %i.je
  %i.kc = extractelement <2 x double> %i.ja, i64 0 ; 2 uses
  %i.kd = fmul double %i.kb, %i.kc
  %i.ke = select i1 %i.jy, double 0.000000e+00, double %i.kc ; 2 uses
  %.0.i.2 = select i1 %i.jy, double %i.jz, double %i.kd ; 2 uses
  %i.kf = fdiv double %i.ia, %i.jq
  %i.kg = fmul double %.0.i.2, %i.kf
  %i.kh = fadd double %i.ke, %.0.i.2
  %i.ki = fcmp une double %i.jd, 0.000000e+00
  %i.kj = fmul double %i.jd, %i.ke
  %i.kk = select i1 %i.ki, double %i.kj, double %i.iz ; 2 uses
  %i.kl = fsub double %i.kh, %i.kg                ; 2 uses
  %i.km = fdiv double %i.kk, %i.kl
  %i.kn = insertelement <2 x double> poison, double %i.kl, i64 0
  %i.ko = insertelement <2 x double> %i.kn, double %i.km, i64 1
  br label %.lr.ph.split.3

.lr.ph.split.3:                                   ; preds = %._crit_edge.i.2, %bb.ai
  %i.kp = phi double [ %i.kk, %._crit_edge.i.2 ], [ %i.iz, %bb.ai ] ; 2 uses
  %i.kq = phi <2 x double> [ %i.ko, %._crit_edge.i.2 ], [ %i.jx, %bb.ai ] ; 3 uses
  %i.kr = load double, ptr getelementptr inbounds nuw (i8, ptr @s, i64 152), align 8, !tbaa !8
  %i.ks = extractelement <2 x double> %i.kq, i64 1
  %i.kt = fsub double %i.ks, %i.kr                ; 5 uses
  %i.ku = load double, ptr getelementptr inbounds nuw (i8, ptr @s, i64 168), align 8, !tbaa !8 ; 4 uses
  %i.kv = load double, ptr getelementptr inbounds nuw (i8, ptr @s, i64 176), align 16, !tbaa !8 ; 4 uses
  %i.kw = fcmp ogt double %i.kv, 1.000000e+00
  br i1 %i.kw, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.lr.ph.split.3
  %i.kx = load double, ptr %i.c, align 8, !tbaa !8
  %i.ky = load double, ptr getelementptr inbounds nuw (i8, ptr @s, i64 184), align 8, !tbaa !8
  %23 = insertelement <2 x double> poison, double %i.a, i64 0
  %24 = insertelement <2 x double> %23, double %i.kv, i64 1
  %i.kz = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.kx, i64 0
  %25 = fsub <2 x double> %24, %i.kz
  %i.la = insertelement <2 x double> poison, double %i.f, i64 0
  %i.lb = insertelement <2 x double> %i.la, double %i.ky, i64 1
  %i.lc = fdiv <2 x double> %25, %i.lb            ; 2 uses
  %i.ld = extractelement <2 x double> %i.lc, i64 0
  %i.le = extractelement <2 x double> %i.lc, i64 1
  %i.lf = tail call double @llvm.fmuladd.f64(double %i.ld, double %i.le, double %i.kv)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.lr.ph.split.3
  %i.lg = phi double [ %i.lf, %bb.aj ], [ %i.kv, %.lr.ph.split.3 ] ; 2 uses
  %i.lh = fcmp une double %i.ku, 0.000000e+00
  br i1 %i.lh, label %._crit_edge.i.3, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.li = insertelement <2 x double> poison, double %i.lg, i64 0
  %i.lj = insertelement <2 x double> %i.li, double %i.jq, i64 1 ; 2 uses
  %i.lk = shufflevector <2 x double> %i.lj, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ll = fdiv <2 x double> %i.lj, %i.lk
  %i.lm = insertelement <2 x double> poison, double %i.kt, i64 0
  %i.ln = shufflevector <2 x double> %i.lm, <2 x double> %i.kq, <2 x i32> <i32 0, i32 2>
  %i.lo = fmul <2 x double> %i.ln, %i.ll          ; 2 uses
  %i.lp = extractelement <2 x double> %i.lo, i64 0
  store double %i.lp, ptr @object_distance, align 8, !tbaa !8
  %i.lq = extractelement <2 x double> %i.lo, i64 1
  store double %i.lq, ptr @axis_slope_angle, align 8, !tbaa !8
  br label %._crit_edge

._crit_edge.i.3:                                  ; preds = %bb.ak
  %i.lr = fcmp oeq double %i.kt, 0.000000e+00     ; 2 uses
  %i.ls = fdiv double %i.kp, %i.ku
  %i.lt = fsub double %i.kt, %i.ku
  %i.lu = fdiv double %i.lt, %i.ku
  %i.lv = extractelement <2 x double> %i.kq, i64 0 ; 2 uses
  %i.lw = fmul double %i.lu, %i.lv
  %i.lx = select i1 %i.lr, double 0.000000e+00, double %i.lv ; 2 uses
  %.0.i.3 = select i1 %i.lr, double %i.ls, double %i.lw ; 2 uses
  %i.ly = fdiv double %i.jq, %i.lg
  %i.lz = fmul double %.0.i.3, %i.ly
  %i.ma = fadd double %i.lx, %.0.i.3
  %i.mb = fsub double %i.ma, %i.lz                ; 2 uses
  store double %i.mb, ptr @axis_slope_angle, align 8, !tbaa !8
  %i.mc = fcmp une double %i.kt, 0.000000e+00
  %i.md = fmul double %i.kt, %i.lx
  %i.me = select i1 %i.mc, double %i.md, double %i.kp
  %i.mf = fdiv double %i.me, %i.mb
  store double %i.mf, ptr @object_distance, align 8, !tbaa !8
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.v, %bb.z, %bb.al, %._crit_edge.i.3, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @asin(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @tan(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

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
!9 = !{!"double", !6, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 omnipotent char", !14, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{!6, !6, i64 0}
!16 = distinct !{!16, !11}
!17 = distinct !{!17, !11}
end_hunk_0
