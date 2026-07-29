inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@main:.preheader43
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
  %i.l = insertelement <2 x double> poison, double %i.a, i64 0
  %i.m = insertelement <2 x double> %i.l, double %i.h, i64 1
  %i.n = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.j, i64 0
  %i.o = fsub <2 x double> %i.m, %i.n
  %i.p = insertelement <2 x double> poison, double %i.f, i64 0
  %i.q = insertelement <2 x double> %i.p, double %i.k, i64 1
  %i.r = fdiv <2 x double> %i.o, %i.q             ; 2 uses
  %i.s = extractelement <2 x double> %i.r, i64 0
  %i.t = extractelement <2 x double> %i.r, i64 1
  %i.u = tail call double @llvm.fmuladd.f64(double %i.s, double %i.t, double %i.h)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us.preheader
  %i.v = phi double [ %i.u, %bb.b ], [ %i.h, %.lr.ph.split.us.preheader ] ; 6 uses
  %i.w = fcmp une double %i.g, 0.000000e+00
  br i1 %i.w, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = fdiv double 1.000000e+00, %i.v
  %i.y = tail call double @sin(double noundef %axis_slope_angle.promoted) #8, !tbaa !4
  %i.z = fmul double %i.x, %i.y
  %i.aa = tail call double @asin(double noundef %i.z) #8, !tbaa !4 ; 2 uses
  %i.ab = tail call double @cos(double noundef %i.aa) #8, !tbaa !4
  %i.ac = fmul double %i.v, %i.ab
  %i.ad = tail call double @cos(double noundef %axis_slope_angle.promoted) #8, !tbaa !4
  %i.ae = fdiv double %i.ac, %i.ad
  %i.af = fmul double %i.ae, 0.000000e+00
  br label %.lr.ph.split.us.1

bb.e:                                             ; preds = %bb.c
  %i.ag = fdiv double %1, %i.g                    ; 2 uses
  %i.ah = tail call double @asin(double noundef %i.ag) #8, !tbaa !4
  %i.ai = fdiv double 1.000000e+00, %i.v
  %i.aj = fmul double %i.ag, %i.ai
  %i.ak = fadd double %i.ah, 0.000000e+00         ; 3 uses
  %i.al = tail call double @asin(double noundef %i.aj) #8, !tbaa !4
  %i.am = fsub double %i.ak, %i.al                ; 2 uses
  %i.an = fmul double %i.ak, 5.000000e-01
  %i.ao = tail call double @sin(double noundef %i.an) #8, !tbaa !4 ; 2 uses
  %i.ap = fmul double %i.g, 2.000000e+00
  %i.aq = fmul double %i.ap, %i.ao
  %i.ar = fmul double %i.ao, %i.aq
  %i.as = tail call double @sin(double noundef %i.ak) #8, !tbaa !4
  %i.at = fmul double %i.g, %i.as
  %i.au = tail call double @tan(double noundef %i.am) #8, !tbaa !4
  %i.av = fdiv double 1.000000e+00, %i.au
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.at, double %i.av, double %i.ar) ; 2 uses
  store double %i.aw, ptr @object_distance, align 8, !tbaa !8
  br label %.lr.ph.split.us.1

.lr.ph.split.us.1:                                ; preds = %bb.e, %bb.d
  %i.ax = phi double [ %i.am, %bb.e ], [ %i.aa, %bb.d ] ; 4 uses
  %i.ay = phi double [ %i.aw, %bb.e ], [ %i.af, %bb.d ]
  %i.az = load double, ptr getelementptr inbounds nuw (i8, ptr @s, i64 72), align 8, !tbaa !8
  %i.ba = fsub double %i.ay, %i.az                ; 3 uses
  %i.bb = load double, ptr getelementptr inbounds nuw (i8, ptr @s, i64 88), align 8, !tbaa !8 ; 6 uses
  %i.bc = load double, ptr getelementptr inbounds nuw (i8, ptr @s, i64 96), align 16, !tbaa !8 ; 4 uses
  %i.bd = fcmp ogt double %i.bc, 1.000000e+00
  br i1 %i.bd, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.split.us.1
  %i.be = load double, ptr %i.c, align 8, !tbaa !8
  %i.bf = load double, ptr getelementptr inbounds nuw (i8, ptr @s, i64 104), align 8, !tbaa !8
  %i.bg = insertelement <2 x double> poison, double %i.a, i64 0
  %i.bh = insertelement <2 x double> %i.bg, double %i.bc, i64 1
  %i.bi = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.be, i64 0
  %i.bj = fsub <2 x double> %i.bh, %i.bi
  %i.bk = insertelement <2 x double> poison, double %i.f, i64 0
  %i.bl = insertelement <2 x double> %i.bk, double %i.bf, i64 1
  %i.bm = fdiv <2 x double> %i.bj, %i.bl          ; 2 uses
  %i.bn = extractelement <2 x double> %i.bm, i64 0
  %i.bo = extractelement <2 x double> %i.bm, i64 1
  %i.bp = tail call double @llvm.fmuladd.f64(double %i.bn, double %i.bo, double %i.bc)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.split.us.1
  %i.bq = phi double [ %i.bp, %bb.f ], [ %i.bc, %.lr.ph.split.us.1 ] ; 6 uses
  %i.br = fcmp une double %i.bb, 0.000000e+00
  br i1 %i.br, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bs = fdiv double %i.v, %i.bq
  %i.bt = tail call double @sin(double noundef %i.ax) #8, !tbaa !4
  %i.bu = fmul double %i.bs, %i.bt
  %i.bv = tail call double @asin(double noundef %i.bu) #8, !tbaa !4 ; 3 uses
  %i.bw = tail call double @cos(double noundef %i.bv) #8, !tbaa !4
  %i.bx = fmul double %i.bq, %i.bw
  %i.by = tail call double @cos(double noundef %i.ax) #8, !tbaa !4
  %i.bz = fmul double %i.v, %i.by
  %i.ca = fdiv double %i.bx, %i.bz
  %i.cb = fmul double %i.ba, %i.ca                ; 2 uses
  store double %i.cb, ptr @object_distance, align 8, !tbaa !8
  store double %i.bv, ptr @axis_slope_angle, align 8, !tbaa !8
  br label %.lr.ph.split.us.2

bb.i:                                             ; preds = %bb.g
  %i.cc = fcmp oeq double %i.ba, 0.000000e+00
  br i1 %i.cc, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cd = fsub double %i.ba, %i.bb
  %i.ce = fdiv double %i.cd, %i.bb
  %i.cf = tail call double @sin(double noundef %i.ax) #8, !tbaa !4
  %i.cg = fmul double %i.ce, %i.cf
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ch = fdiv double %1, %i.bb
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ci = phi double [ 0.000000e+00, %bb.k ], [ %i.ax, %bb.j ]
  %.1.i.us.1 = phi double [ %i.ch, %bb.k ], [ %i.cg, %bb.j ] ; 2 uses
  %i.cj = tail call double @asin(double noundef %.1.i.us.1) #8, !tbaa !4
  %i.ck = fdiv double %i.v, %i.bq
  %i.cl = fmul double %.1.i.us.1, %i.ck
  %i.cm = fadd double %i.ci, %i.cj                ; 3 uses
  %i.cn = tail call double @asin(double noundef %i.cl) #8, !tbaa !4
  %i.co = fsub double %i.cm, %i.cn                ; 3 uses
  store double %i.co, ptr @axis_slope_angle, align 8, !tbaa !8
  %i.cp = fmul double %i.cm, 5.000000e-01
  %i.cq = tail call double @sin(double noundef %i.cp) #8, !tbaa !4 ; 2 uses
  %i.cr = fmul double %i.bb, 2.000000e+00
  %i.cs = fmul double %i.cr, %i.cq
  %i.ct = fmul double %i.cq, %i.cs
  %i.cu = tail call double @sin(double noundef %i.cm) #8, !tbaa !4
  %i.cv = fmul double %i.bb, %i.cu
  %i.cw = tail call double @tan(double noundef %i.co) #8, !tbaa !4
  %i.cx = fdiv double 1.000000e+00, %i.cw
  %i.cy = tail call double @llvm.fmuladd.f64(double %i.cv, double %i.cx, double %i.ct)
  br label %.lr.ph.split.us.2

.lr.ph.split.us.2:                                ; preds = %bb.l, %bb.h
  %i.cz = phi double [ %i.co, %bb.l ], [ %i.bv, %bb.h ] ; 4 uses
  %i.da = phi double [ %i.cy, %bb.l ], [ %i.cb, %bb.h ]
  %i.db = load double, ptr getelementptr inbounds nuw (i8, ptr @s, i64 112), align 16, !tbaa !8
  %i.dc = fsub double %i.da, %i.db                ; 3 uses
  %i.dd = load double, ptr getelementptr inbounds nuw (i8, ptr @s, i64 128), align 16, !tbaa !8 ; 6 uses
  %i.de = load double, ptr getelementptr inbounds nuw (i8, ptr @s, i64 136), align 8, !tbaa !8 ; 4 uses
  %i.df = fcmp ogt double %i.de, 1.000000e+00
  br i1 %i.df, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph.split.us.2
  %i.dg = load double, ptr %i.c, align 8, !tbaa !8
  %i.dh = load double, ptr getelementptr inbounds nuw (i8, ptr @s, i64 144), align 16, !tbaa !8
  %i.di = insertelement <2 x double> poison, double %i.a, i64 0
  %i.dj = insertelement <2 x double> %i.di, double %i.de, i64 1
  %i.dk = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.dg, i64 0
  %i.dl = fsub <2 x double> %i.dj, %i.dk
  %i.dm = insertelement <2 x double> poison, double %i.f, i64 0
  %i.dn = insertelement <2 x double> %i.dm, double %i.dh, i64 1
  %i.do = fdiv <2 x double> %i.dl, %i.dn          ; 2 uses
  %i.dp = extractelement <2 x double> %i.do, i64 0
  %i.dq = extractelement <2 x double> %i.do, i64 1
  %i.dr = tail call double @llvm.fmuladd.f64(double %i.dp, double %i.dq, double %i.de)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.split.us.2
  %i.ds = phi double [ %i.dr, %bb.m ], [ %i.de, %.lr.ph.split.us.2 ] ; 6 uses
  %i.dt = fcmp une double %i.dd, 0.000000e+00
  br i1 %i.dt, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.du = fdiv double %i.bq, %i.ds
  %i.dv = tail call double @sin(double noundef %i.cz) #8, !tbaa !4
  %i.dw = fmul double %i.du, %i.dv
  %i.dx = tail call double @asin(double noundef %i.dw) #8, !tbaa !4 ; 2 uses
  %i.dy = tail call double @cos(double noundef %i.dx) #8, !tbaa !4
  %i.dz = fmul double %i.ds, %i.dy
  %i.ea = tail call double @cos(double noundef %i.cz) #8, !tbaa !4
  %i.eb = fmul double %i.bq, %i.ea
  %i.ec = fdiv double %i.dz, %i.eb
  %i.ed = fmul double %i.dc, %i.ec
  br label %.lr.ph.split.us.3

bb.p:                                             ; preds = %bb.n
  %i.ee = fcmp oeq double %i.dc, 0.000000e+00
  br i1 %i.ee, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ef = fsub double %i.dc, %i.dd
  %i.eg = fdiv double %i.ef, %i.dd
  %i.eh = tail call double @sin(double noundef %i.cz) #8, !tbaa !4
  %i.ei = fmul double %i.eg, %i.eh
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.ej = fdiv double %1, %i.dd
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ek = phi double [ 0.000000e+00, %bb.r ], [ %i.cz, %bb.q ]
  %.1.i.us.2 = phi double [ %i.ej, %bb.r ], [ %i.ei, %bb.q ] ; 2 uses
  %i.el = tail call double @asin(double noundef %.1.i.us.2) #8, !tbaa !4
  %i.em = fdiv double %i.bq, %i.ds
  %i.en = fmul double %.1.i.us.2, %i.em
  %i.eo = fadd double %i.ek, %i.el                ; 3 uses
  %i.ep = tail call double @asin(double noundef %i.en) #8, !tbaa !4
  %i.eq = fsub double %i.eo, %i.ep                ; 2 uses
  %i.er = fmul double %i.eo, 5.000000e-01
  %i.es = tail call double @sin(double noundef %i.er) #8, !tbaa !4 ; 2 uses
  %i.et = fmul double %i.dd, 2.000000e+00
  %i.eu = fmul double %i.et, %i.es
  %i.ev = fmul double %i.es, %i.eu
  %i.ew = tail call double @sin(double noundef %i.eo) #8, !tbaa !4
  %i.ex = fmul double %i.dd, %i.ew
  %i.ey = tail call double @tan(double noundef %i.eq) #8, !tbaa !4
  %i.ez = fdiv double 1.000000e+00, %i.ey
  %i.fa = tail call double @llvm.fmuladd.f64(double %i.ex, double %i.ez, double %i.ev)
  br label %.lr.ph.split.us.3

.lr.ph.split.us.3:                                ; preds = %bb.s, %bb.o
  %i.fb = phi double [ %i.eq, %bb.s ], [ %i.dx, %bb.o ] ; 4 uses
  %i.fc = phi double [ %i.fa, %bb.s ], [ %i.ed, %bb.o ]
  %i.fd = load double, ptr getelementptr inbounds nuw (i8, ptr @s, i64 152), align 8, !tbaa !8
  %i.fe = fsub double %i.fc, %i.fd                ; 3 uses
  %i.ff = load double, ptr getelementptr inbounds nuw (i8, ptr @s, i64 168), align 8, !tbaa !8 ; 6 uses
  %i.fg = load double, ptr getelementptr inbounds nuw (i8, ptr @s, i64 176), align 16, !tbaa !8 ; 4 uses
  %i.fh = fcmp ogt double %i.fg, 1.000000e+00
  br i1 %i.fh, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.split.us.3
  %i.fi = load double, ptr %i.c, align 8, !tbaa !8
  %i.fj = load double, ptr getelementptr inbounds nuw (i8, ptr @s, i64 184), align 8, !tbaa !8
  %i.fk = insertelement <2 x double> poison, double %i.a, i64 0
  %i.fl = insertelement <2 x double> %i.fk, double %i.fg, i64 1
  %i.fm = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.fi, i64 0
  %i.fn = fsub <2 x double> %i.fl, %i.fm
  %i.fo = insertelement <2 x double> poison, double %i.f, i64 0
  %i.fp = insertelement <2 x double> %i.fo, double %i.fj, i64 1
  %i.fq = fdiv <2 x double> %i.fn, %i.fp          ; 2 uses
  %i.fr = extractelement <2 x double> %i.fq, i64 0
  %i.fs = extractelement <2 x double> %i.fq, i64 1
  %i.ft = tail call double @llvm.fmuladd.f64(double %i.fr, double %i.fs, double %i.fg)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.split.us.3
  %i.fu = phi double [ %i.ft, %bb.t ], [ %i.fg, %.lr.ph.split.us.3 ] ; 3 uses
  %i.fv = fcmp une double %i.ff, 0.000000e+00
  br i1 %i.fv, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fw = fdiv double %i.ds, %i.fu
  %i.fx = tail call double @sin(double noundef %i.fb) #8, !tbaa !4
  %i.fy = fmul double %i.fw, %i.fx
  %i.fz = tail call double @asin(double noundef %i.fy) #8, !tbaa !4 ; 2 uses
  %i.ga = tail call double @cos(double noundef %i.fz) #8, !tbaa !4
  %i.gb = fmul double %i.fu, %i.ga
end_hunk_0
