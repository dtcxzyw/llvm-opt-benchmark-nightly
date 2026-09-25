Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/arkode_butcher?download=true
inline.NumInlined: 182
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 246
loop-unroll.NumRuntimeUnrolled: 184
loop-unroll.NumUnrolled: 430
begin_hunk_0_@arkode_butcher_order6s:bb.a
  %i.da = load double, ptr %i.cz, align 8, !tbaa !22
  %i.db = tail call double @llvm.fmuladd.f64(double %i.cy, double %i.da, double %i.cw) ; 2 uses
  %indvars.iv.next.i58.epil = add nuw nsw i64 %indvars.iv.i57.epil, 1
  %epil.iter142.next = add i64 %epil.iter142, 1   ; 2 uses
  %epil.iter142.cmp.not = icmp eq i64 %epil.iter142.next, %xtraiter141
  br i1 %epil.iter142.cmp.not, label %._crit_edge.i60, label %bb.f, !llvm.loop !250

._crit_edge.i60:                                  ; preds = %bb.f, %._crit_edge.i60.unr-lcssa
  %.lcssa125 = phi double [ %i.cv, %._crit_edge.i60.unr-lcssa ], [ %i.db, %bb.f ]
  store double %.lcssa125, ptr %i.ca, align 8, !tbaa !22
  %indvars.iv.next41.i61 = add nuw nsw i64 %indvars.iv40.i55, 1 ; 2 uses
  %exitcond44.not.i62 = icmp eq i64 %indvars.iv.next41.i61, %i.h
  br i1 %exitcond44.not.i62, label %bb.g, label %.preheader.i54

arkode_butcher_mv.exit64:                         ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.b) #18
  tail call void @free(ptr noundef nonnull %i.c) #18
  br label %arkode_butcher_dot.exit

bb.g:                                             ; preds = %._crit_edge.i60
  %i.dc = icmp eq ptr %1, null
  br i1 %i.dc, label %arkode_butcher_mv.exit79, label %.preheader.preheader.i68

.preheader.preheader.i68:                         ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.c, i8 0, i64 %i.i, i1 false), !tbaa !22
  %xtraiter151 = and i64 %i.h, 3                  ; 3 uses
  %i.dd = icmp ult i64 %i.j, 3
  %unroll_iter158 = and i64 %i.h, 2147483644
  %lcmp.mod155.not = icmp eq i64 %xtraiter151, 0
  %lcmp.mod157 = icmp ne i64 %xtraiter151, 0
  br label %.preheader.i69

.preheader.i69:                                   ; preds = %._crit_edge.i75, %.preheader.preheader.i68
  %indvars.iv40.i70 = phi i64 [ 0, %.preheader.preheader.i68 ], [ %indvars.iv.next41.i76, %._crit_edge.i75 ] ; 3 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv40.i70
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !15 ; 5 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv40.i70 ; 2 uses
  %.promoted.i71 = load double, ptr %i.dg, align 8, !tbaa !22 ; 2 uses
  br i1 %i.dd, label %.epil.preheader150, label %.preheader.i69.new

.preheader.i69.new:                               ; preds = %.preheader.i69, %.preheader.i69.new
  %indvars.iv.i72 = phi i64 [ %indvars.iv.next.i73.3, %.preheader.i69.new ], [ 0, %.preheader.i69 ] ; 6 uses
  %i.dh = phi double [ %i.eb, %.preheader.i69.new ], [ %.promoted.i71, %.preheader.i69 ]
  %niter159 = phi i64 [ %niter159.next.3, %.preheader.i69.new ], [ 0, %.preheader.i69 ]
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv.i72
  %i.dj = load double, ptr %i.di, align 8, !tbaa !22
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i72
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !22
  %i.dm = tail call double @llvm.fmuladd.f64(double %i.dj, double %i.dl, double %i.dh)
  %indvars.iv.next.i73 = or disjoint i64 %indvars.iv.i72, 1 ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv.next.i73
  %i.do = load double, ptr %i.dn, align 8, !tbaa !22
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next.i73
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !22
  %i.dr = tail call double @llvm.fmuladd.f64(double %i.do, double %i.dq, double %i.dm)
  %indvars.iv.next.i73.1 = or disjoint i64 %indvars.iv.i72, 2 ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv.next.i73.1
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !22
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next.i73.1
  %i.dv = load double, ptr %i.du, align 8, !tbaa !22
  %i.dw = tail call double @llvm.fmuladd.f64(double %i.dt, double %i.dv, double %i.dr)
  %indvars.iv.next.i73.2 = or disjoint i64 %indvars.iv.i72, 3 ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv.next.i73.2
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !22
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next.i73.2
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !22
  %i.eb = tail call double @llvm.fmuladd.f64(double %i.dy, double %i.ea, double %i.dw) ; 3 uses
  %indvars.iv.next.i73.3 = add nuw nsw i64 %indvars.iv.i72, 4 ; 2 uses
  %niter159.next.3 = add i64 %niter159, 4         ; 2 uses
  %niter159.ncmp.3 = icmp eq i64 %niter159.next.3, %unroll_iter158
  br i1 %niter159.ncmp.3, label %._crit_edge.i75.unr-lcssa, label %.preheader.i69.new

._crit_edge.i75.unr-lcssa:                        ; preds = %.preheader.i69.new
  br i1 %lcmp.mod155.not, label %._crit_edge.i75, label %.epil.preheader150

.epil.preheader150:                               ; preds = %._crit_edge.i75.unr-lcssa, %.preheader.i69
  %indvars.iv.i72.epil.init = phi i64 [ 0, %.preheader.i69 ], [ %indvars.iv.next.i73.3, %._crit_edge.i75.unr-lcssa ]
  %.epil.init154 = phi double [ %.promoted.i71, %.preheader.i69 ], [ %i.eb, %._crit_edge.i75.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod157)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader150
  %indvars.iv.i72.epil = phi i64 [ %indvars.iv.i72.epil.init, %.epil.preheader150 ], [ %indvars.iv.next.i73.epil, %bb.h ] ; 3 uses
  %i.ec = phi double [ %.epil.init154, %.epil.preheader150 ], [ %i.eh, %bb.h ]
  %epil.iter152 = phi i64 [ 0, %.epil.preheader150 ], [ %epil.iter152.next, %bb.h ]
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv.i72.epil
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !22
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i72.epil
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !22
  %i.eh = tail call double @llvm.fmuladd.f64(double %i.ee, double %i.eg, double %i.ec) ; 2 uses
  %indvars.iv.next.i73.epil = add nuw nsw i64 %indvars.iv.i72.epil, 1
  %epil.iter152.next = add i64 %epil.iter152, 1   ; 2 uses
  %epil.iter152.cmp.not = icmp eq i64 %epil.iter152.next, %xtraiter151
  br i1 %epil.iter152.cmp.not, label %._crit_edge.i75, label %bb.h, !llvm.loop !251

._crit_edge.i75:                                  ; preds = %bb.h, %._crit_edge.i75.unr-lcssa
  %.lcssa124 = phi double [ %i.eb, %._crit_edge.i75.unr-lcssa ], [ %i.eh, %bb.h ]
  store double %.lcssa124, ptr %i.dg, align 8, !tbaa !22
  %indvars.iv.next41.i76 = add nuw nsw i64 %indvars.iv40.i70, 1 ; 2 uses
  %exitcond44.not.i77 = icmp eq i64 %indvars.iv.next41.i76, %i.h
  br i1 %exitcond44.not.i77, label %bb.i, label %.preheader.i69

arkode_butcher_mv.exit79:                         ; preds = %bb.g
  tail call void @free(ptr noundef nonnull %i.b) #18
  tail call void @free(ptr noundef nonnull %i.c) #18
  br label %arkode_butcher_dot.exit

bb.i:                                             ; preds = %._crit_edge.i75
  %i.ei = icmp eq ptr %0, null
  br i1 %i.ei, label %arkode_butcher_dot.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.i
  %xtraiter160 = and i64 %i.h, 3                  ; 3 uses
  %i.ej = icmp ult i64 %i.j, 3
  br i1 %i.ej, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter167 = and i64 %i.h, 2147483644
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %indvars.iv.i82 = phi i64 [ 0, %.preheader.preheader.new ], [ %indvars.iv.next.i83.3, %.preheader ] ; 6 uses
  %i.ek = phi double [ 0.000000e+00, %.preheader.preheader.new ], [ %i.fe, %.preheader ]
  %niter168 = phi i64 [ 0, %.preheader.preheader.new ], [ %niter168.next.3, %.preheader ]
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i82
  %i.em = load double, ptr %i.el, align 8, !tbaa !22
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i82
  %i.eo = load double, ptr %i.en, align 8, !tbaa !22
  %i.ep = tail call double @llvm.fmuladd.f64(double %i.em, double %i.eo, double %i.ek)
  %indvars.iv.next.i83 = or disjoint i64 %indvars.iv.i82, 1 ; 2 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i83
  %i.er = load double, ptr %i.eq, align 8, !tbaa !22
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next.i83
  %i.et = load double, ptr %i.es, align 8, !tbaa !22
  %i.eu = tail call double @llvm.fmuladd.f64(double %i.er, double %i.et, double %i.ep)
  %indvars.iv.next.i83.1 = or disjoint i64 %indvars.iv.i82, 2 ; 2 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i83.1
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !22
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next.i83.1
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !22
  %i.ez = tail call double @llvm.fmuladd.f64(double %i.ew, double %i.ey, double %i.eu)
  %indvars.iv.next.i83.2 = or disjoint i64 %indvars.iv.i82, 3 ; 2 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i83.2
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !22
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next.i83.2
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !22
  %i.fe = tail call double @llvm.fmuladd.f64(double %i.fb, double %i.fd, double %i.ez) ; 3 uses
  %indvars.iv.next.i83.3 = add nuw nsw i64 %indvars.iv.i82, 4 ; 2 uses
  %niter168.next.3 = add i64 %niter168, 4         ; 2 uses
  %niter168.ncmp.3 = icmp eq i64 %niter168.next.3, %unroll_iter167
  br i1 %niter168.ncmp.3, label %.unr-lcssa, label %.preheader

.unr-lcssa:                                       ; preds = %.preheader
  %lcmp.mod164.not = icmp eq i64 %xtraiter160, 0
  br i1 %lcmp.mod164.not, label %.epilog-lcssa, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.unr-lcssa, %.preheader.preheader
  %indvars.iv.i82.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next.i83.3, %.unr-lcssa ]
  %.epil.init163 = phi double [ 0.000000e+00, %.preheader.preheader ], [ %i.fe, %.unr-lcssa ]
  %lcmp.mod166 = icmp ne i64 %xtraiter160, 0
  tail call void @llvm.assume(i1 %lcmp.mod166)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %indvars.iv.i82.epil = phi i64 [ %indvars.iv.next.i83.epil, %.preheader.epil ], [ %indvars.iv.i82.epil.init, %.preheader.epil.preheader ] ; 3 uses
  %i.ff = phi double [ %i.fk, %.preheader.epil ], [ %.epil.init163, %.preheader.epil.preheader ]
  %epil.iter161 = phi i64 [ %epil.iter161.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i82.epil
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !22
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i82.epil
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !22
  %i.fk = tail call double @llvm.fmuladd.f64(double %i.fh, double %i.fj, double %i.ff) ; 2 uses
  %indvars.iv.next.i83.epil = add nuw nsw i64 %indvars.iv.i82.epil, 1
  %epil.iter161.next = add i64 %epil.iter161, 1   ; 2 uses
  %epil.iter161.cmp.not = icmp eq i64 %epil.iter161.next, %xtraiter160
  br i1 %epil.iter161.cmp.not, label %.epilog-lcssa, label %.preheader.epil, !llvm.loop !252

.epilog-lcssa:                                    ; preds = %.preheader.epil, %.unr-lcssa
  %.lcssa = phi double [ %i.fe, %.unr-lcssa ], [ %i.fk, %.preheader.epil ]
  tail call void @free(ptr noundef nonnull %i.b) #18
  tail call void @free(ptr noundef nonnull %i.c) #18
  %i.fl = fadd double %.lcssa, f0xBF56C16C16C16C17
  %i.fm = tail call double @llvm.fabs.f64(double %i.fl)
  %i.fn = fcmp ule double %i.fm, f0x3E50000000000000
  %i.fo = zext i1 %i.fn to i32
  br label %arkode_butcher_dot.exit

arkode_butcher_dot.exit:                          ; preds = %bb.i, %.epilog-lcssa, %arkode_butcher_mv.exit79, %arkode_butcher_mv.exit64, %arkode_butcher_mv.exit49, %arkode_butcher_mv.exit
  %.0 = phi i32 [ 0, %arkode_butcher_mv.exit ], [ 0, %arkode_butcher_mv.exit49 ], [ 0, %arkode_butcher_mv.exit64 ], [ 0, %arkode_butcher_mv.exit79 ], [ %i.fo, %.epilog-lcssa ], [ 0, %bb.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @__ButcherSimplifyingAssumptions(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, i32 noundef %3) unnamed_addr #10 {
bb.a:
  %i.a = sext i32 %3 to i64
  %i.b = tail call noalias ptr @calloc(i64 noundef %i.a, i64 noundef 8) #17 ; 14 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = icmp slt i32 %3, 1
  %or.cond3.i = or i1 %i.d, %i.c
  %wide.trip.count.i = zext i32 %3 to i64         ; 10 uses
  br i1 %or.cond3.i, label %arkode_butcher_vp.exit, label %.preheader.preheader.i.preheader

.preheader.preheader.i.preheader:                 ; preds = %bb.a
  %i.e = add nsw i64 %wide.trip.count.i, -1       ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.f = icmp ult i64 %i.e, 3
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod215 = icmp ne i64 %xtraiter, 0
  br label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.preheader.preheader.i.preheader, %bb.b
  %.077141 = phi i32 [ %i.as, %bb.b ], [ 1, %.preheader.preheader.i.preheader ] ; 3 uses
  %.081140 = phi i32 [ %i.ar, %bb.b ], [ 0, %.preheader.preheader.i.preheader ] ; 2 uses
  %i.g = add nsw i32 %.077141, -1
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next.i, %.preheader.i ] ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.i = load double, ptr %i.h, align 8, !tbaa !22
  %i.j = tail call double @SUNRpowerI(double noundef %i.i, i32 noundef range(i32 -2147483648, 999) %i.g) #18
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i
  store double %i.j, ptr %i.k, align 8, !tbaa !22
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader162.preheader, label %.preheader.i

.preheader162.preheader:                          ; preds = %.preheader.i
  br i1 %i.f, label %.preheader162.epil.preheader, label %.preheader162

.preheader162:                                    ; preds = %.preheader162.preheader, %.preheader162
  %indvars.iv.i94 = phi i64 [ %indvars.iv.next.i95.3, %.preheader162 ], [ 0, %.preheader162.preheader ] ; 6 uses
  %i.l = phi double [ %i.af, %.preheader162 ], [ 0.000000e+00, %.preheader162.preheader ]
  %niter = phi i64 [ %niter.next.3, %.preheader162 ], [ 0, %.preheader162.preheader ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i94
  %i.n = load double, ptr %i.m, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i94
  %i.p = load double, ptr %i.o, align 8, !tbaa !22
  %i.q = tail call double @llvm.fmuladd.f64(double %i.n, double %i.p, double %i.l)
  %indvars.iv.next.i95 = or disjoint i64 %indvars.iv.i94, 1 ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.i95
  %i.s = load double, ptr %i.r, align 8, !tbaa !22
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next.i95
  %i.u = load double, ptr %i.t, align 8, !tbaa !22
  %i.v = tail call double @llvm.fmuladd.f64(double %i.s, double %i.u, double %i.q)
  %indvars.iv.next.i95.1 = or disjoint i64 %indvars.iv.i94, 2 ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.i95.1
  %i.x = load double, ptr %i.w, align 8, !tbaa !22
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next.i95.1
  %i.z = load double, ptr %i.y, align 8, !tbaa !22
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.x, double %i.z, double %i.v)
  %indvars.iv.next.i95.2 = or disjoint i64 %indvars.iv.i94, 3 ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.i95.2
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !22
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next.i95.2
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !22
  %i.af = tail call double @llvm.fmuladd.f64(double %i.ac, double %i.ae, double %i.aa) ; 3 uses
  %indvars.iv.next.i95.3 = add nuw nsw i64 %indvars.iv.i94, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %arkode_butcher_dot.exit.unr-lcssa, label %.preheader162

arkode_butcher_dot.exit.unr-lcssa:                ; preds = %.preheader162
  br i1 %lcmp.mod.not, label %arkode_butcher_dot.exit, label %.preheader162.epil.preheader

.preheader162.epil.preheader:                     ; preds = %arkode_butcher_dot.exit.unr-lcssa, %.preheader162.preheader
  %indvars.iv.i94.epil.init = phi i64 [ 0, %.preheader162.preheader ], [ %indvars.iv.next.i95.3, %arkode_butcher_dot.exit.unr-lcssa ]
  %.epil.init = phi double [ 0.000000e+00, %.preheader162.preheader ], [ %i.af, %arkode_butcher_dot.exit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod215)
  br label %.preheader162.epil

.preheader162.epil:                               ; preds = %.preheader162.epil, %.preheader162.epil.preheader
  %indvars.iv.i94.epil = phi i64 [ %indvars.iv.next.i95.epil, %.preheader162.epil ], [ %indvars.iv.i94.epil.init, %.preheader162.epil.preheader ] ; 3 uses
  %i.ag = phi double [ %i.al, %.preheader162.epil ], [ %.epil.init, %.preheader162.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader162.epil ], [ 0, %.preheader162.epil.preheader ]
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i94.epil
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !22
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i94.epil
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !22
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.ak, double %i.ag) ; 2 uses
  %indvars.iv.next.i95.epil = add nuw nsw i64 %indvars.iv.i94.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %arkode_butcher_dot.exit, label %.preheader162.epil, !llvm.loop !253

arkode_butcher_dot.exit:                          ; preds = %.preheader162.epil, %arkode_butcher_dot.exit.unr-lcssa
  %.lcssa213 = phi double [ %i.af, %arkode_butcher_dot.exit.unr-lcssa ], [ %i.al, %.preheader162.epil ]
  %i.am = uitofp nneg i32 %.077141 to double
  %i.an = fdiv double 1.000000e+00, %i.am
  %i.ao = fsub double %i.an, %.lcssa213
  %i.ap = tail call double @llvm.fabs.f64(double %i.ao)
  %i.aq = fcmp ogt double %i.ap, f0x3E50000000000000
  br i1 %i.aq, label %.preheader129.us.preheader, label %bb.b

bb.b:                                             ; preds = %arkode_butcher_dot.exit
  %i.ar = add nuw nsw i32 %.081140, 1             ; 2 uses
  %i.as = add nuw nsw i32 %.077141, 1
  %exitcond.not = icmp eq i32 %i.ar, 999
  br i1 %exitcond.not, label %.preheader129.us.preheader, label %.preheader.preheader.i

.preheader129.us.preheader:                       ; preds = %arkode_butcher_dot.exit, %bb.b
  %.081.lcssa = phi i32 [ %.081140, %arkode_butcher_dot.exit ], [ 999, %bb.b ] ; 2 uses
  %xtraiter216 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.at = icmp ult i64 %i.e, 3
  %unroll_iter223 = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod220.not = icmp eq i64 %xtraiter216, 0
  %lcmp.mod222 = icmp ne i64 %xtraiter216, 0
  br label %.preheader129.us

.preheader129.us:                                 ; preds = %.preheader129.us.preheader, %..critedge_crit_edge.us
  %.074144.us = phi i32 [ %i.cm, %..critedge_crit_edge.us ], [ 1, %.preheader129.us.preheader ] ; 4 uses
  %.080143.us = phi i32 [ %i.cl, %..critedge_crit_edge.us ], [ 0, %.preheader129.us.preheader ] ; 2 uses
  %i.au = add nsw i32 %.074144.us, -1
  %i.av = uitofp nneg i32 %.074144.us to double
  br label %.preheader.preheader.i98.us

bb.c:                                             ; preds = %.epilog-lcssa
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond174.not = icmp eq i64 %indvars.iv.next, %wide.trip.count.i
  br i1 %exitcond174.not, label %..critedge_crit_edge.us, label %.preheader.preheader.i98.us

.preheader.preheader.i98.us:                      ; preds = %.preheader129.us, %bb.c
  %indvars.iv = phi i64 [ 0, %.preheader129.us ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  br label %.preheader.i100.us

.preheader.i100.us:                               ; preds = %.preheader.i100.us, %.preheader.preheader.i98.us
  %indvars.iv.i101.us = phi i64 [ 0, %.preheader.preheader.i98.us ], [ %indvars.iv.next.i102.us, %.preheader.i100.us ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i101.us
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !22
  %i.ay = tail call double @SUNRpowerI(double noundef %i.ax, i32 noundef range(i32 -2147483648, 999) %i.au) #18
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i101.us
  store double %i.ay, ptr %i.az, align 8, !tbaa !22
  %indvars.iv.next.i102.us = add nuw nsw i64 %indvars.iv.i101.us, 1 ; 2 uses
  %exitcond.not.i103.us = icmp eq i64 %indvars.iv.next.i102.us, %wide.trip.count.i
  br i1 %exitcond.not.i103.us, label %bb.d, label %.preheader.i100.us

bb.d:                                             ; preds = %.preheader.i100.us
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !15 ; 6 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %arkode_butcher_vp.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.d
  br i1 %i.at, label %.preheader.epil.preheader, label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv.i108.us = phi i64 [ %indvars.iv.next.i109.us.3, %.preheader ], [ 0, %.preheader.preheader ] ; 6 uses
  %i.bd = phi double [ %i.bx, %.preheader ], [ 0.000000e+00, %.preheader.preheader ]
  %niter224 = phi i64 [ %niter224.next.3, %.preheader ], [ 0, %.preheader.preheader ]
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.i108.us
  %i.bf = load double, ptr %i.be, align 8, !tbaa !22
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i108.us
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !22
  %i.bi = tail call double @llvm.fmuladd.f64(double %i.bf, double %i.bh, double %i.bd)
  %indvars.iv.next.i109.us = or disjoint i64 %indvars.iv.i108.us, 1 ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.next.i109.us
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !22
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next.i109.us
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !22
  %i.bn = tail call double @llvm.fmuladd.f64(double %i.bk, double %i.bm, double %i.bi)
  %indvars.iv.next.i109.us.1 = or disjoint i64 %indvars.iv.i108.us, 2 ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.next.i109.us.1
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !22
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next.i109.us.1
  %i.br = load double, ptr %i.bq, align 8, !tbaa !22
  %i.bs = tail call double @llvm.fmuladd.f64(double %i.bp, double %i.br, double %i.bn)
  %indvars.iv.next.i109.us.2 = or disjoint i64 %indvars.iv.i108.us, 3 ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.next.i109.us.2
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !22
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next.i109.us.2
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !22
  %i.bx = tail call double @llvm.fmuladd.f64(double %i.bu, double %i.bw, double %i.bs) ; 3 uses
  %indvars.iv.next.i109.us.3 = add nuw nsw i64 %indvars.iv.i108.us, 4 ; 2 uses
  %niter224.next.3 = add i64 %niter224, 4         ; 2 uses
  %niter224.ncmp.3 = icmp eq i64 %niter224.next.3, %unroll_iter223
  br i1 %niter224.ncmp.3, label %.unr-lcssa, label %.preheader

.unr-lcssa:                                       ; preds = %.preheader
  br i1 %lcmp.mod220.not, label %.epilog-lcssa, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.unr-lcssa, %.preheader.preheader
  %indvars.iv.i108.us.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next.i109.us.3, %.unr-lcssa ]
  %.epil.init219 = phi double [ 0.000000e+00, %.preheader.preheader ], [ %i.bx, %.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod222)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %indvars.iv.i108.us.epil = phi i64 [ %indvars.iv.next.i109.us.epil, %.preheader.epil ], [ %indvars.iv.i108.us.epil.init, %.preheader.epil.preheader ] ; 3 uses
  %i.by = phi double [ %i.cd, %.preheader.epil ], [ %.epil.init219, %.preheader.epil.preheader ]
  %epil.iter217 = phi i64 [ %epil.iter217.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.i108.us.epil
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !22
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i108.us.epil
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !22
  %i.cd = tail call double @llvm.fmuladd.f64(double %i.ca, double %i.cc, double %i.by) ; 2 uses
  %indvars.iv.next.i109.us.epil = add nuw nsw i64 %indvars.iv.i108.us.epil, 1
  %epil.iter217.next = add i64 %epil.iter217, 1   ; 2 uses
  %epil.iter217.cmp.not = icmp eq i64 %epil.iter217.next, %xtraiter216
  br i1 %epil.iter217.cmp.not, label %.epilog-lcssa, label %.preheader.epil, !llvm.loop !254

.epilog-lcssa:                                    ; preds = %.preheader.epil, %.unr-lcssa
  %.lcssa210 = phi double [ %i.bx, %.unr-lcssa ], [ %i.cd, %.preheader.epil ]
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !22
  %i.cg = tail call double @SUNRpowerI(double noundef %i.cf, i32 noundef %.074144.us) #18
  %i.ch = fdiv double %i.cg, %i.av
  %i.ci = fsub double %i.ch, %.lcssa210
  %i.cj = tail call double @llvm.fabs.f64(double %i.ci)
  %i.ck = fcmp ogt double %i.cj, f0x3E50000000000000
  br i1 %i.ck, label %.preheader127.us.preheader, label %bb.c

..critedge_crit_edge.us:                          ; preds = %bb.c
  %i.cl = add nuw nsw i32 %.080143.us, 1          ; 2 uses
  %i.cm = add nuw nsw i32 %.074144.us, 1
  %exitcond175.not = icmp eq i32 %i.cl, 999
  br i1 %exitcond175.not, label %.preheader127.us.preheader, label %.preheader129.us

.preheader127.us.preheader:                       ; preds = %..critedge_crit_edge.us, %.epilog-lcssa
  %.080137 = phi i32 [ %.080143.us, %.epilog-lcssa ], [ 999, %..critedge_crit_edge.us ] ; 2 uses
  br label %.preheader127.us

.preheader127.us:                                 ; preds = %.preheader127.us.preheader, %..critedge92_crit_edge.split.us.us
  %.175152.us = phi i32 [ %i.dm, %..critedge92_crit_edge.split.us.us ], [ 1, %.preheader127.us.preheader ] ; 4 uses
  %.079151.us = phi i32 [ %i.dl, %..critedge92_crit_edge.split.us.us ], [ 0, %.preheader127.us.preheader ] ; 2 uses
  %i.cn = add nsw i32 %.175152.us, -1
  %i.co = uitofp nneg i32 %.175152.us to double
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %bb.f, %.preheader127.us
  %indvars.iv181 = phi i64 [ %indvars.iv.next182, %bb.f ], [ 0, %.preheader127.us ] ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.preheader.us.us
  %indvars.iv176 = phi i64 [ %indvars.iv.next177, %bb.e ], [ 0, %.preheader.us.us ] ; 4 uses
  %.5147.us.us = phi double [ %i.cz, %bb.e ], [ 0.000000e+00, %.preheader.us.us ]
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv176
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !15
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %indvars.iv181
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !22
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv176
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !22
  %i.cv = fmul double %i.cs, %i.cu
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv176
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !22
  %i.cy = tail call double @SUNRpowerI(double noundef %i.cx, i32 noundef %i.cn) #18
  %i.cz = tail call double @llvm.fmuladd.f64(double %i.cv, double %i.cy, double %.5147.us.us) ; 2 uses
  %indvars.iv.next177 = add nuw nsw i64 %indvars.iv176, 1 ; 2 uses
  %exitcond180.not = icmp eq i64 %indvars.iv.next177, %wide.trip.count.i
  br i1 %exitcond180.not, label %._crit_edge.us.us, label %bb.e

._crit_edge.us.us:                                ; preds = %bb.e
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv181
  %i.db = load double, ptr %i.da, align 8, !tbaa !22
  %i.dc = fdiv double %i.db, %i.co
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv181
  %i.de = load double, ptr %i.dd, align 8, !tbaa !22
  %i.df = tail call double @SUNRpowerI(double noundef %i.de, i32 noundef %.175152.us) #18
  %i.dg = fsub double 1.000000e+00, %i.df
  %i.dh = fmul double %i.dc, %i.dg
  %i.di = fsub double %i.dh, %i.cz
  %i.dj = tail call double @llvm.fabs.f64(double %i.di)
  %i.dk = fcmp ogt double %i.dj, f0x3E50000000000000
  br i1 %i.dk, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.us.us
  %indvars.iv.next182 = add nuw nsw i64 %indvars.iv181, 1 ; 2 uses
  %exitcond185.not = icmp eq i64 %indvars.iv.next182, %wide.trip.count.i
  br i1 %exitcond185.not, label %..critedge92_crit_edge.split.us.us, label %.preheader.us.us

..critedge92_crit_edge.split.us.us:               ; preds = %bb.f
  %i.dl = add nuw nsw i32 %.079151.us, 1          ; 2 uses
  %i.dm = add nuw nsw i32 %.175152.us, 1
  %exitcond186.not = icmp eq i32 %i.dl, 999
  br i1 %exitcond186.not, label %.loopexit, label %.preheader127.us

.loopexit:                                        ; preds = %..critedge92_crit_edge.split.us.us, %._crit_edge.us.us
  %.079133 = phi i32 [ %.079151.us, %._crit_edge.us.us ], [ 999, %..critedge92_crit_edge.split.us.us ]
  %.not90155 = icmp eq i32 %.081.lcssa, 0
  br i1 %.not90155, label %arkode_butcher_vp.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.loopexit
  %i.dn = shl nuw i32 %.080137, 1
  %i.do = add i32 %i.dn, 2
  %i.dp = add nuw i32 %.080137, 1
  %i.dq = add i32 %i.dp, %.079133
  %i.dr = add nsw i32 %.081.lcssa, -1
  %umin = tail call i32 @llvm.umin.i32(i32 %i.dq, i32 %i.dr)
  %umin187 = tail call i32 @llvm.umin.i32(i32 %umin, i32 %i.do)
  %i.ds = add nuw i32 %umin187, 1
  br label %arkode_butcher_vp.exit

arkode_butcher_vp.exit:                           ; preds = %bb.d, %.loopexit, %.lr.ph.preheader, %bb.a
  %.082 = phi i32 [ 0, %bb.a ], [ %i.ds, %.lr.ph.preheader ], [ 0, %.loopexit ], [ 0, %bb.d ]
  tail call void @free(ptr noundef %i.b) #18
  ret i32 %.082
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 2) i32 @ARKodeButcherTable_CheckARKOrder(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef captures(none) initializes((0, 4)) %2, ptr nofree noundef captures(none) initializes((0, 4)) %3, ptr nofree noundef captures(address_is_null) %4) local_unnamed_addr #10 {
bb.a:
  %.sroa.09514 = alloca ptr, align 16             ; 31 uses
  %.sroa.31 = alloca ptr, align 8                 ; 31 uses
  %.sroa.09484 = alloca ptr, align 16             ; 37 uses
  %.sroa.379485 = alloca ptr, align 8             ; 37 uses
  %.sroa.09449 = alloca ptr, align 16             ; 27 uses
  %.sroa.27 = alloca ptr, align 8                 ; 27 uses
  %.sroa.0 = alloca ptr, align 16                 ; 37 uses
  %.sroa.37 = alloca ptr, align 8                 ; 37 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.09514)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.31)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.09484)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.379485)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.09449)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.27)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.37)
  store i32 0, ptr %3, align 4, !tbaa !26
  store i32 0, ptr %2, align 4, !tbaa !26
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !13   ; 932 uses
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14   ; 713 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %i.c to i64    ; 218 uses
  br label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !15
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.loopexit, label %bb.d

._crit_edge:                                      ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !17   ; 1184 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !16   ; 21 uses
  %i.p = icmp eq ptr %i.o, null
  %i.q = icmp eq ptr %1, null
  %or.cond2324 = or i1 %i.q, %i.p
  br i1 %or.cond2324, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !13   ; 3 uses
  %i.t = icmp slt i32 %i.s, 1
  br i1 %i.t, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !14   ; 713 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %.loopexit, label %.lr.ph3056.preheader

.lr.ph3056.preheader:                             ; preds = %bb.g
  %wide.trip.count3900 = zext nneg i32 %i.s to i64
  br label %.lr.ph3056

bb.h:                                             ; preds = %.lr.ph3056
  %indvars.iv.next3898 = add nuw nsw i64 %indvars.iv3897, 1 ; 2 uses
  %exitcond3901.not = icmp eq i64 %indvars.iv.next3898, %wide.trip.count3900
  br i1 %exitcond3901.not, label %._crit_edge3057, label %.lr.ph3056

.lr.ph3056:                                       ; preds = %.lr.ph3056.preheader, %bb.h
  %indvars.iv3897 = phi i64 [ 0, %.lr.ph3056.preheader ], [ %indvars.iv.next3898, %bb.h ] ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv3897
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !15
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %.loopexit, label %bb.h

._crit_edge3057:                                  ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !17 ; 1184 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %._crit_edge3057
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !16 ; 21 uses
  %i.af = icmp ne ptr %i.ae, null
  %.not = icmp eq i32 %i.c, %i.s
  %or.cond2683 = and i1 %.not, %i.af
  br i1 %or.cond2683, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  store ptr %i.f, ptr %.sroa.09514, align 16, !tbaa !395
  store ptr %i.o, ptr %.sroa.09484, align 16, !tbaa !15
  store ptr %i.l, ptr %.sroa.09449, align 16, !tbaa !15
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !18 ; 42 uses
  store ptr %i.ah, ptr %.sroa.0, align 16, !tbaa !15
  store ptr %i.v, ptr %.sroa.31, align 8, !tbaa !395
  store ptr %i.ae, ptr %.sroa.379485, align 8, !tbaa !15
  store ptr %i.ab, ptr %.sroa.27, align 8, !tbaa !15
  store ptr %i.ah, ptr %.sroa.37, align 8, !tbaa !15
  %i.ai = icmp ne ptr %4, null                    ; 76 uses
  br i1 %i.ai, label %bb.k, label %.preheader.us.preheader.i

bb.k:                                             ; preds = %bb.j
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.86, i64 34, i64 1, ptr nonnull %4) ; 0 uses
  br label %.preheader.us.preheader.i

.preheader.us.preheader.i:                        ; preds = %bb.j, %bb.k
  %wide.trip.count29.i = zext nneg i32 %i.c to i64 ; 116 uses
  %i.aj = add nsw i64 %wide.trip.count, -1        ; 76 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.ak = icmp ult i64 %i.aj, 7
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod8558 = icmp ne i64 %xtraiter, 0
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %bb.l, %.preheader.us.preheader.i
  %indvars.iv26.i = phi i64 [ 0, %.preheader.us.preheader.i ], [ %indvars.iv.next27.i, %bb.l ] ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv26.i
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !15 ; 9 uses
  br i1 %i.ak, label %.epil.preheader, label %.preheader.us.i.new

.preheader.us.i.new:                              ; preds = %.preheader.us.i, %.preheader.us.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %.preheader.us.i.new ], [ 0, %.preheader.us.i ] ; 9 uses
  %.018.us.i = phi double [ %i.br, %.preheader.us.i.new ], [ 0.000000e+00, %.preheader.us.i ]
  %niter = phi i64 [ %niter.next.7, %.preheader.us.i.new ], [ 0, %.preheader.us.i ]
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.i
  %i.ao = load double, ptr %i.an, align 8, !tbaa !22
  %i.ap = fadd double %.018.us.i, %i.ao
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load double, ptr %i.ar, align 8, !tbaa !22
  %i.at = fadd double %i.ap, %i.as
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load double, ptr %i.av, align 8, !tbaa !22
  %i.ax = fadd double %i.at, %i.aw
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load double, ptr %i.az, align 8, !tbaa !22
  %i.bb = fadd double %i.ax, %i.ba
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = load double, ptr %i.bd, align 8, !tbaa !22
  %i.bf = fadd double %i.bb, %i.be
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !22
  %i.bj = fadd double %i.bf, %i.bi
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.i
end_hunk_0
