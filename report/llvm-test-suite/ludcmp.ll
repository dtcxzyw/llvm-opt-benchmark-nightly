Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/ludcmp?download=true
inline.NumInlined: 14
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 14
begin_hunk_0_@main:bb.a
  %i.hv = fsub double %i.hp, %i.hu
  %indvars.iv.next155.i80.2 = or disjoint i64 %indvars.iv154.i78, 3 ; 2 uses
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %indvars.iv.next155.i80.2
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !9
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.next155.i80.2
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !9
  %i.ia = fmul double %i.hx, %i.hz
  %i.ib = fsub double %i.hv, %i.ia                ; 3 uses
  %indvars.iv.next155.i80.3 = add nuw nsw i64 %indvars.iv154.i78, 4 ; 2 uses
  %niter206.next.3 = add i64 %niter206, 4         ; 2 uses
  %niter206.ncmp.3 = icmp eq i64 %niter206.next.3, %unroll_iter205
  br i1 %niter206.ncmp.3, label %._crit_edge119.i82.loopexit.unr-lcssa, label %bb.l, !llvm.loop !33

._crit_edge119.i82.loopexit.unr-lcssa:            ; preds = %bb.l
  %lcmp.mod202.not = icmp eq i64 %xtraiter200, 0
  br i1 %lcmp.mod202.not, label %._crit_edge119.i82, label %.epil.preheader199

.epil.preheader199:                               ; preds = %._crit_edge119.i82.loopexit.unr-lcssa, %.lr.ph118.i77
  %indvars.iv154.i78.epil.init = phi i64 [ 0, %.lr.ph118.i77 ], [ %indvars.iv.next155.i80.3, %._crit_edge119.i82.loopexit.unr-lcssa ]
  %.2116.i79.epil.init = phi double [ %i.hb, %.lr.ph118.i77 ], [ %i.ib, %._crit_edge119.i82.loopexit.unr-lcssa ]
  %lcmp.mod204 = icmp ne i64 %xtraiter200, 0
  call void @llvm.assume(i1 %lcmp.mod204)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader199
  %indvars.iv154.i78.epil = phi i64 [ %indvars.iv154.i78.epil.init, %.epil.preheader199 ], [ %indvars.iv.next155.i80.epil, %bb.m ] ; 3 uses
  %.2116.i79.epil = phi double [ %.2116.i79.epil.init, %.epil.preheader199 ], [ %i.ih, %bb.m ]
  %epil.iter201 = phi i64 [ 0, %.epil.preheader199 ], [ %epil.iter201.next, %bb.m ]
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %indvars.iv154.i78.epil
  %i.id = load double, ptr %i.ic, align 8, !tbaa !9
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv154.i78.epil
  %i.if = load double, ptr %i.ie, align 8, !tbaa !9
  %i.ig = fmul double %i.id, %i.if
  %i.ih = fsub double %.2116.i79.epil, %i.ig      ; 2 uses
  %indvars.iv.next155.i80.epil = add nuw nsw i64 %indvars.iv154.i78.epil, 1
  %epil.iter201.next = add i64 %epil.iter201, 1   ; 2 uses
  %epil.iter201.cmp.not = icmp eq i64 %epil.iter201.next, %xtraiter200
  br i1 %epil.iter201.cmp.not, label %._crit_edge119.i82, label %bb.m, !llvm.loop !34

._crit_edge119.i82:                               ; preds = %._crit_edge119.i82.loopexit.unr-lcssa, %bb.m, %.preheader95.i74
  %.2.lcssa.i83 = phi double [ %i.hb, %.preheader95.i74 ], [ %i.ib, %._crit_edge119.i82.loopexit.unr-lcssa ], [ %i.ih, %bb.m ]
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv158.i75
  store double %.2.lcssa.i83, ptr %i.ii, align 8, !tbaa !9
  %indvars.iv.next159.i84 = add nuw nsw i64 %indvars.iv158.i75, 1 ; 2 uses
  %exitcond161.not.i85 = icmp eq i64 %indvars.iv.next159.i84, 2000
  br i1 %exitcond161.not.i85, label %.preheader.i86, label %.preheader95.i74, !llvm.loop !35

.preheader.i86:                                   ; preds = %._crit_edge119.i82, %._crit_edge126.i88
  %indvar209 = phi i64 [ %indvar.next210, %._crit_edge126.i88 ], [ 0, %._crit_edge119.i82 ] ; 3 uses
  %indvars.iv162.i87 = phi i64 [ %indvars.iv.next163.i90, %._crit_edge126.i88 ], [ 1999, %._crit_edge119.i82 ] ; 10 uses
  %i.ij = add i64 %indvar209, -1
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv162.i87
  %i.il = load double, ptr %i.ik, align 8, !tbaa !9 ; 3 uses
  %i.im = icmp samesign ult i64 %indvars.iv162.i87, 1999
  br i1 %i.im, label %.lr.ph125.i92, label %._crit_edge126.i88

.lr.ph125.i92:                                    ; preds = %.preheader.i86
  %i.in = getelementptr inbounds nuw [16000 x i8], ptr %i.g, i64 %indvars.iv162.i87 ; 5 uses
  %xtraiter211 = and i64 %indvar209, 3            ; 2 uses
  %lcmp.mod212.not = icmp eq i64 %xtraiter211, 0
  br i1 %lcmp.mod212.not, label %.prol.loopexit208, label %.prol.preheader207

.prol.preheader207:                               ; preds = %.lr.ph125.i92, %.prol.preheader207
  %indvars.iv164.i93.prol = phi i64 [ %indvars.iv.next165.i95.prol, %.prol.preheader207 ], [ %indvars.iv162.i87, %.lr.ph125.i92 ]
  %.3123.i94.prol = phi double [ %i.it, %.prol.preheader207 ], [ %i.il, %.lr.ph125.i92 ]
  %prol.iter213 = phi i64 [ %prol.iter213.next, %.prol.preheader207 ], [ 0, %.lr.ph125.i92 ]
  %indvars.iv.next165.i95.prol = add nuw nsw i64 %indvars.iv164.i93.prol, 1 ; 4 uses
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.in, i64 %indvars.iv.next165.i95.prol
  %i.ip = load double, ptr %i.io, align 8, !tbaa !9
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.next165.i95.prol
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !9
  %i.is = fmul double %i.ip, %i.ir
  %i.it = fsub double %.3123.i94.prol, %i.is      ; 3 uses
  %prol.iter213.next = add i64 %prol.iter213, 1   ; 2 uses
  %prol.iter213.cmp.not = icmp eq i64 %prol.iter213.next, %xtraiter211
  br i1 %prol.iter213.cmp.not, label %.prol.loopexit208, label %.prol.preheader207, !llvm.loop !36

.prol.loopexit208:                                ; preds = %.prol.preheader207, %.lr.ph125.i92
  %.lcssa159.unr = phi double [ poison, %.lr.ph125.i92 ], [ %i.it, %.prol.preheader207 ]
  %indvars.iv164.i93.unr = phi i64 [ %indvars.iv162.i87, %.lr.ph125.i92 ], [ %indvars.iv.next165.i95.prol, %.prol.preheader207 ]
  %.3123.i94.unr = phi double [ %i.il, %.lr.ph125.i92 ], [ %i.it, %.prol.preheader207 ]
  %i.iu = icmp ult i64 %i.ij, 3
  br i1 %i.iu, label %._crit_edge126.i88, label %.lr.ph125.i92.new

.lr.ph125.i92.new:                                ; preds = %.prol.loopexit208, %.lr.ph125.i92.new
  %indvars.iv164.i93 = phi i64 [ %indvars.iv.next165.i95.3, %.lr.ph125.i92.new ], [ %indvars.iv164.i93.unr, %.prol.loopexit208 ] ; 4 uses
  %.3123.i94 = phi double [ %i.js, %.lr.ph125.i92.new ], [ %.3123.i94.unr, %.prol.loopexit208 ]
  %indvars.iv.next165.i95 = add nuw nsw i64 %indvars.iv164.i93, 1 ; 2 uses
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.in, i64 %indvars.iv.next165.i95
  %i.iw = load double, ptr %i.iv, align 8, !tbaa !9
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.next165.i95
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !9
  %i.iz = fmul double %i.iw, %i.iy
  %i.ja = fsub double %.3123.i94, %i.iz
  %indvars.iv.next165.i95.1 = add nuw nsw i64 %indvars.iv164.i93, 2 ; 2 uses
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.in, i64 %indvars.iv.next165.i95.1
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !9
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.next165.i95.1
  %i.je = load double, ptr %i.jd, align 8, !tbaa !9
  %i.jf = fmul double %i.jc, %i.je
  %i.jg = fsub double %i.ja, %i.jf
  %indvars.iv.next165.i95.2 = add nuw nsw i64 %indvars.iv164.i93, 3 ; 2 uses
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.in, i64 %indvars.iv.next165.i95.2
  %i.ji = load double, ptr %i.jh, align 8, !tbaa !9
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.next165.i95.2
  %i.jk = load double, ptr %i.jj, align 8, !tbaa !9
  %i.jl = fmul double %i.ji, %i.jk
  %i.jm = fsub double %i.jg, %i.jl
  %indvars.iv.next165.i95.3 = add nuw nsw i64 %indvars.iv164.i93, 4 ; 4 uses
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.in, i64 %indvars.iv.next165.i95.3
  %i.jo = load double, ptr %i.jn, align 8, !tbaa !9
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.next165.i95.3
  %i.jq = load double, ptr %i.jp, align 8, !tbaa !9
  %i.jr = fmul double %i.jo, %i.jq
  %i.js = fsub double %i.jm, %i.jr                ; 2 uses
  %exitcond167.not.i96.3 = icmp eq i64 %indvars.iv.next165.i95.3, 1999
  br i1 %exitcond167.not.i96.3, label %._crit_edge126.i88, label %.lr.ph125.i92.new, !llvm.loop !37

._crit_edge126.i88:                               ; preds = %.prol.loopexit208, %.lr.ph125.i92.new, %.preheader.i86
  %.3.lcssa.i89 = phi double [ %i.il, %.preheader.i86 ], [ %.lcssa159.unr, %.prol.loopexit208 ], [ %i.js, %.lr.ph125.i92.new ]
  %i.jt = getelementptr inbounds nuw [16000 x i8], ptr %i.g, i64 %indvars.iv162.i87
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.jt, i64 %indvars.iv162.i87
  %i.jv = load double, ptr %i.ju, align 8, !tbaa !9
  %i.jw = fdiv double %.3.lcssa.i89, %i.jv
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv162.i87
  store double %i.jw, ptr %i.jx, align 8, !tbaa !9
  %indvars.iv.next163.i90 = add nsw i64 %indvars.iv162.i87, -1
  %.not169.i91 = icmp eq i64 %indvars.iv162.i87, 0
  %indvar.next210 = add i64 %indvar209, 1
  br i1 %.not169.i91, label %kernel_ludcmp_StrictFP.exit, label %.preheader.i86, !llvm.loop !38

kernel_ludcmp_StrictFP.exit:                      ; preds = %._crit_edge126.i88, %.critedge.i.1
  %indvars.iv.i97 = phi i64 [ %indvars.iv.next.i98.1, %.critedge.i.1 ], [ 0, %._crit_edge126.i88 ] ; 5 uses
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.i97
  %i.jz = load double, ptr %i.jy, align 8, !tbaa !9 ; 2 uses
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.i97
  %i.kb = load double, ptr %i.ka, align 8, !tbaa !9 ; 2 uses
  %i.kc = fsub double %i.jz, %i.kb
  %i.kd = call double @llvm.fabs.f64(double %i.kc)
  %i.ke = fcmp ule double %i.kd, 1.000000e-05
  br i1 %i.ke, label %.critedge.i, label %check_FP.exit.thread

check_FP.exit.thread:                             ; preds = %.critedge.i, %kernel_ludcmp_StrictFP.exit
  %indvars.iv.i97.lcssa = phi i64 [ %indvars.iv.i97, %kernel_ludcmp_StrictFP.exit ], [ %indvars.iv.next.i98, %.critedge.i ]
  %.lcssa156 = phi double [ %i.jz, %kernel_ludcmp_StrictFP.exit ], [ %i.kj, %.critedge.i ]
  %.lcssa = phi double [ %i.kb, %kernel_ludcmp_StrictFP.exit ], [ %i.kl, %.critedge.i ]
  %i.kf = trunc nuw nsw i64 %indvars.iv.i97.lcssa to i32 ; 2 uses
  %i.kg = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.kh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kg, ptr noundef nonnull @.str.2, i32 noundef %i.kf, double noundef %.lcssa156, i32 noundef %i.kf, double noundef %.lcssa, double noundef 1.000000e-05) #17 ; 0 uses
  br label %bb.n

.critedge.i:                                      ; preds = %kernel_ludcmp_StrictFP.exit
  %indvars.iv.next.i98 = or disjoint i64 %indvars.iv.i97, 1 ; 3 uses
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.i98
  %i.kj = load double, ptr %i.ki, align 8, !tbaa !9 ; 2 uses
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.next.i98
  %i.kl = load double, ptr %i.kk, align 8, !tbaa !9 ; 2 uses
  %i.km = fsub double %i.kj, %i.kl
  %i.kn = call double @llvm.fabs.f64(double %i.km)
  %i.ko = fcmp ule double %i.kn, 1.000000e-05
  br i1 %i.ko, label %.critedge.i.1, label %check_FP.exit.thread

.critedge.i.1:                                    ; preds = %.critedge.i
  %indvars.iv.next.i98.1 = add nuw nsw i64 %indvars.iv.i97, 2 ; 2 uses
  %exitcond.not.i99.1 = icmp eq i64 %indvars.iv.next.i98.1, 2000
  br i1 %exitcond.not.i99.1, label %check_FP.exit, label %kernel_ludcmp_StrictFP.exit, !llvm.loop !39

check_FP.exit:                                    ; preds = %.critedge.i.1
  call fastcc void @print_array(ptr noundef %i.v)
  call void @free(ptr noundef %i.g) #14
  call void @free(ptr noundef %i.l) #14
  call void @free(ptr noundef nonnull %i.q) #14
  call void @free(ptr noundef nonnull %i.v) #14
  call void @free(ptr noundef %i.aa) #14
  br label %bb.n

bb.n:                                             ; preds = %check_FP.exit.thread, %check_FP.exit
  %.0 = phi i32 [ 0, %check_FP.exit ], [ 1, %check_FP.exit.thread ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @init_array(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #7 {
vector.memcheck:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = ptrtoaddr ptr %3 to i64                  ; 2 uses
  %i.d = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.e = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.f = sub i64 %i.d, %i.c
  %diff.check = icmp ugt i64 %i.f, -16
  %i.g = sub i64 %i.d, %i.e
  %diff.check1 = icmp ugt i64 %i.g, -16
  %conflict.rdx = or i1 %diff.check, %diff.check1
  %i.h = sub i64 %i.c, %i.e
  %diff.check2 = icmp ugt i64 %i.h, -16
  %conflict.rdx3 = or i1 %conflict.rdx, %diff.check2
  br i1 %conflict.rdx3, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next.a, %vector.body ], [ 0, %vector.memcheck ] ; 5 uses
  %vec.ind = phi <2 x i32> [ %vec.ind.next.1, %vector.body ], [ <i32 1, i32 2>, %vector.memcheck ] ; 3 uses
  %4 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index
  store <2 x double> zeroinitializer, ptr %4, align 8, !tbaa !9
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index
  store <2 x double> zeroinitializer, ptr %i.i, align 8, !tbaa !9
  %5 = uitofp nneg <2 x i32> %vec.ind to <2 x double>
  %6 = fdiv nnan <2 x double> %5, splat (double 2.000000e+03)
  %7 = fmul nnan <2 x double> %6, splat (double 5.000000e-01)
  %8 = fadd <2 x double> %7, splat (double 4.000000e+00)
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index
  store <2 x double> %8, ptr %i.j, align 8, !tbaa !9
  %index.next = or disjoint i64 %index, 2         ; 3 uses
  %i.k = add <2 x i32> %vec.ind, splat (i32 2)
  %9 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index.next
  store <2 x double> zeroinitializer, ptr %9, align 8, !tbaa !9
  %10 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index.next
  store <2 x double> zeroinitializer, ptr %10, align 8, !tbaa !9
  %i.l = uitofp nneg <2 x i32> %i.k to <2 x double>
  %i.m = fdiv nnan <2 x double> %i.l, splat (double 2.000000e+03)
  %i.n = fmul nnan <2 x double> %i.m, splat (double 5.000000e-01)
  %i.o = fadd <2 x double> %i.n, splat (double 4.000000e+00)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index.next
  store <2 x double> %i.o, ptr %i.p, align 8, !tbaa !9
  %index.next.a = add nuw nsw i64 %index, 4       ; 2 uses
  %vec.ind.next.1 = add <2 x i32> %vec.ind, splat (i32 4)
  %i.q = icmp eq i64 %index.next.a, 2000
  br i1 %i.q, label %.preheader87.preheader, label %vector.body, !llvm.loop !41

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ 0, %vector.memcheck ] ; 5 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  store double 0.000000e+00, ptr %i.r, align 8, !tbaa !9
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  store double 0.000000e+00, ptr %i.s, align 8, !tbaa !9
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 4 uses
  %i.t = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.u = uitofp nneg i32 %i.t to double
  %i.v = fdiv nnan double %i.u, 2.000000e+03
  %i.w = fmul nnan double %i.v, 5.000000e-01
  %i.x = fadd double %i.w, 4.000000e+00
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  store double %i.x, ptr %i.y, align 8, !tbaa !9
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  store double 0.000000e+00, ptr %i.z, align 8, !tbaa !9
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next
  store double 0.000000e+00, ptr %i.aa, align 8, !tbaa !9
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.ab = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  %i.ac = uitofp nneg i32 %i.ab to double
  %i.ad = fdiv nnan double %i.ac, 2.000000e+03
  %i.ae = fmul nnan double %i.ad, 5.000000e-01
  %i.af = fadd double %i.ae, 4.000000e+00
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  store double %i.af, ptr %i.ag, align 8, !tbaa !9
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 2000
  br i1 %exitcond.not.1, label %.preheader87.preheader, label %scalar.ph, !llvm.loop !42

.preheader87.preheader:                           ; preds = %vector.body, %scalar.ph
  br label %.preheader87

.preheader87:                                     ; preds = %.preheader87.preheader, %._crit_edge
  %indvars.iv109 = phi i64 [ %indvars.iv.next110, %._crit_edge ], [ 1, %.preheader87.preheader ] ; 5 uses
  %indvar = phi i64 [ %indvar.next, %._crit_edge ], [ 0, %.preheader87.preheader ] ; 6 uses
  %i.ah = mul nuw nsw i64 %indvar, 16008
  %i.ai = getelementptr i8, ptr %0, i64 %i.ah
  %scevgep = getelementptr i8, ptr %i.ai, i64 8
  %i.aj = shl i64 %indvar, 3
  %i.ak = sub i64 15984, %i.aj
  %i.al = and i64 %i.ak, 34359738360
  %i.am = add nuw nsw i64 %i.al, 8
  %i.an = getelementptr inbounds nuw [16000 x i8], ptr %0, i64 %indvar ; 3 uses
  %min.iters.check = icmp samesign ult i64 %indvars.iv109, 2
  br i1 %min.iters.check, label %scalar.ph4.preheader, label %vector.ph5

vector.ph5:                                       ; preds = %.preheader87
  %n.vec = and i64 %indvars.iv109, 9223372036854775806 ; 3 uses
  br label %vector.body6

vector.body6:                                     ; preds = %vector.body6, %vector.ph5
  %index7 = phi i64 [ 0, %vector.ph5 ], [ %index.next9, %vector.body6 ] ; 2 uses
  %vec.ind8 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph5 ], [ %vec.ind.next10, %vector.body6 ] ; 2 uses
  %i.ao = sub <2 x i32> zeroinitializer, %vec.ind8
  %i.ap = sitofp <2 x i32> %i.ao to <2 x double>
  %i.aq = fdiv <2 x double> %i.ap, splat (double 2.000000e+03)
  %i.ar = fadd <2 x double> %i.aq, splat (double 1.000000e+00)
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %index7
  store <2 x double> %i.ar, ptr %i.as, align 8, !tbaa !9
  %index.next9 = add nuw i64 %index7, 2           ; 2 uses
  %vec.ind.next10 = add <2 x i32> %vec.ind8, splat (i32 2)
  %i.at = icmp eq i64 %index.next9, %n.vec
  br i1 %i.at, label %middle.block11, label %vector.body6, !llvm.loop !43

middle.block11:                                   ; preds = %vector.body6
  %cmp.n = icmp eq i64 %indvars.iv109, %n.vec
  br i1 %cmp.n, label %.loopexit36, label %scalar.ph4.preheader

scalar.ph4.preheader:                             ; preds = %.preheader87, %middle.block11
  %indvars.iv103.ph = phi i64 [ 0, %.preheader87 ], [ %n.vec, %middle.block11 ]
  br label %scalar.ph4

scalar.ph4:                                       ; preds = %scalar.ph4.preheader, %scalar.ph4
  %indvars.iv103 = phi i64 [ %indvars.iv.next104, %scalar.ph4 ], [ %indvars.iv103.ph, %scalar.ph4.preheader ] ; 3 uses
  %i.au = trunc i64 %indvars.iv103 to i32
  %i.av = sub i32 0, %i.au
  %i.aw = sitofp i32 %i.av to double
  %i.ax = fdiv double %i.aw, 2.000000e+03
  %i.ay = fadd double %i.ax, 1.000000e+00
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv103
  store double %i.ay, ptr %i.az, align 8, !tbaa !9
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1 ; 2 uses
  %exitcond108.not = icmp eq i64 %indvars.iv.next104, %indvars.iv109
  br i1 %exitcond108.not, label %.loopexit36, label %scalar.ph4, !llvm.loop !44

.loopexit36:                                      ; preds = %scalar.ph4, %middle.block11
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %i.ba = icmp samesign ult i64 %indvar, 1999
  br i1 %i.ba, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.loopexit36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.am, i1 false), !tbaa !9
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.loopexit36
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvar
  store double 1.000000e+00, ptr %i.bb, align 8, !tbaa !9
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1
  %exitcond117.not = icmp eq i64 %indvar.next, 2000
  br i1 %exitcond117.not, label %bb.a, label %.preheader87, !llvm.loop !45

bb.a:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store ptr null, ptr %i.b, align 8, !tbaa !11
  %i.bc = call i32 @posix_memalign(ptr noundef nonnull %i.b, i64 noundef 4096, i64 noundef 32000000) #14
  %i.bd = load ptr, ptr %i.b, align 8, !tbaa !11  ; 8 uses
  %i.be = ptrtoaddr ptr %i.bd to i64
  %i.bf = icmp eq ptr %i.bd, null
  %i.bg = icmp ne i32 %i.bc, 0
  %or.cond.i.i = select i1 %i.bf, i1 true, i1 %i.bg
  br i1 %or.cond.i.i, label %bb.b, label %polybench_alloc_data.exit

bb.b:                                             ; preds = %bb.a
  %i.bh = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite.i.i = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.bh) #15 ; 0 uses
  call void @exit(i32 noundef 1) #16
  unreachable

polybench_alloc_data.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32000000) %i.bd, i8 0, i64 32000000, i1 false), !tbaa !9
  %scevgep13 = getelementptr i8, ptr %i.bd, i64 32000000
  br label %.preheader84

.preheader84:                                     ; preds = %polybench_alloc_data.exit, %bb.c
  %indvars.iv132 = phi i64 [ 0, %polybench_alloc_data.exit ], [ %indvars.iv.next133, %bb.c ] ; 3 uses
  %i.bi = shl nuw nsw i64 %indvars.iv132, 3
  %i.bj = getelementptr i8, ptr %0, i64 %i.bi
  %scevgep14 = getelementptr i8, ptr %i.bj, i64 31984008
  %invariant.gep96 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv132 ; 8 uses
  %bound0 = icmp ult ptr %i.bd, %scevgep14
  %bound1 = icmp ult ptr %invariant.gep96, %scevgep13
  %found.conflict = and i1 %bound0, %bound1
  br label %.preheader83

.preheader83:                                     ; preds = %.preheader84, %middle.block24
  %indvars.iv128 = phi i64 [ 0, %.preheader84 ], [ %indvars.iv.next129, %middle.block24 ] ; 3 uses
  %gep97 = getelementptr inbounds nuw [16000 x i8], ptr %invariant.gep96, i64 %indvars.iv128 ; 3 uses
  %i.bk = getelementptr inbounds nuw [16000 x i8], ptr %i.bd, i64 %indvars.iv128 ; 3 uses
  br i1 %found.conflict, label %scalar.ph18, label %vector.ph19

vector.ph19:                                      ; preds = %.preheader83
  %i.bl = load double, ptr %gep97, align 8, !tbaa !9, !alias.scope !59
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.bl, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body20

vector.body20:                                    ; preds = %vector.body20, %vector.ph19
  %index21 = phi i64 [ 0, %vector.ph19 ], [ %index.next23, %vector.body20 ] ; 6 uses
  %i.bm = getelementptr inbounds nuw [16000 x i8], ptr %invariant.gep96, i64 %index21
  %i.bn = getelementptr inbounds nuw [16000 x i8], ptr %invariant.gep96, i64 %index21
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16000
  %i.bp = getelementptr inbounds nuw [16000 x i8], ptr %invariant.gep96, i64 %index21
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 32000
  %i.br = getelementptr inbounds nuw [16000 x i8], ptr %invariant.gep96, i64 %index21
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 48000
  %i.bt = load double, ptr %i.bm, align 8, !tbaa !9, !alias.scope !60
  %i.bu = load double, ptr %i.bo, align 8, !tbaa !9, !alias.scope !60
  %i.bv = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.bw = insertelement <2 x double> %i.bv, double %i.bu, i64 1
  %i.bx = load double, ptr %i.bq, align 8, !tbaa !9, !alias.scope !60
  %i.by = load double, ptr %i.bs, align 8, !tbaa !9, !alias.scope !60
  %i.bz = insertelement <2 x double> poison, double %i.bx, i64 0
  %i.ca = insertelement <2 x double> %i.bz, double %i.by, i64 1
  %i.cb = fmul <2 x double> %broadcast.splat, %i.bw
  %i.cc = fmul <2 x double> %broadcast.splat, %i.ca
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %index21 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.cd, align 8, !tbaa !9, !alias.scope !61, !noalias !62
  %wide.load22 = load <2 x double>, ptr %i.ce, align 8, !tbaa !9, !alias.scope !61, !noalias !62
  %i.cf = fadd <2 x double> %wide.load, %i.cb
  %i.cg = fadd <2 x double> %wide.load22, %i.cc
  store <2 x double> %i.cf, ptr %i.cd, align 8, !tbaa !9, !alias.scope !61, !noalias !62
  store <2 x double> %i.cg, ptr %i.ce, align 8, !tbaa !9, !alias.scope !61, !noalias !62
  %index.next23 = add nuw i64 %index21, 4         ; 2 uses
  %i.ch = icmp eq i64 %index.next23, 2000
  br i1 %i.ch, label %middle.block24, label %vector.body20, !llvm.loop !50

scalar.ph18:                                      ; preds = %.preheader83, %scalar.ph18
  %indvars.iv124 = phi i64 [ %indvars.iv.next125.1, %scalar.ph18 ], [ 0, %.preheader83 ] ; 4 uses
  %i.ci = load double, ptr %gep97, align 8, !tbaa !9
  %gep = getelementptr inbounds nuw [16000 x i8], ptr %invariant.gep96, i64 %indvars.iv124
  %i.cj = load double, ptr %gep, align 8, !tbaa !9
  %i.ck = fmul double %i.ci, %i.cj
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv124 ; 2 uses
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !9
  %i.cn = fadd double %i.cm, %i.ck
  store double %i.cn, ptr %i.cl, align 8, !tbaa !9
  %indvars.iv.next125 = or disjoint i64 %indvars.iv124, 1 ; 2 uses
  %i.co = load double, ptr %gep97, align 8, !tbaa !9
  %gep.1 = getelementptr inbounds nuw [16000 x i8], ptr %invariant.gep96, i64 %indvars.iv.next125
  %i.cp = load double, ptr %gep.1, align 8, !tbaa !9
  %i.cq = fmul double %i.co, %i.cp
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv.next125 ; 2 uses
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !9
  %i.ct = fadd double %i.cs, %i.cq
  store double %i.ct, ptr %i.cr, align 8, !tbaa !9
end_hunk_0
