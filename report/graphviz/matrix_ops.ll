Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/matrix_ops?download=true
inline.NumInlined: 30
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 40
loop-unroll.NumUnrolled: 40
begin_hunk_0_@vectors_subtraction:bb.a
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.prol
  %i.q = load double, ptr %i.p, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.prol
  %i.s = load double, ptr %i.r, align 8, !tbaa !18
  %i.t = fsub double %i.q, %i.s
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.prol
  store double %i.t, ptr %i.u, align 8, !tbaa !18
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !152

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader14
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader14 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.v = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.w = icmp ugt i64 %i.v, -4
  br i1 %i.w, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.y = load double, ptr %i.x, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.aa = load double, ptr %i.z, align 8, !tbaa !18
  %i.ab = fsub double %i.y, %i.aa
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  store double %i.ab, ptr %i.ac, align 8, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.ag = load double, ptr %i.af, align 8, !tbaa !18
  %i.ah = fsub double %i.ae, %i.ag
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next
  store double %i.ah, ptr %i.ai, align 8, !tbaa !18
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !18
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.1
  %i.am = load double, ptr %i.al, align 8, !tbaa !18
  %i.an = fsub double %i.ak, %i.am
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.1
  store double %i.an, ptr %i.ao, align 8, !tbaa !18
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !18
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.2
  %i.as = load double, ptr %i.ar, align 8, !tbaa !18
  %i.at = fsub double %i.aq, %i.as
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.2
  store double %i.at, ptr %i.au, align 8, !tbaa !18
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !153

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @vectors_addition(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = ptrtoaddr ptr %3 to i64                  ; 2 uses
  %i.d = icmp sgt i32 %0, 0
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %0, 10
  br i1 %min.iters.check, label %.lr.ph.preheader14, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.e = sub i64 %i.b, %i.c
  %diff.check = icmp ugt i64 %i.e, -32
  %i.f = sub i64 %i.a, %i.c
  %diff.check10 = icmp ugt i64 %i.f, -32
  %conflict.rdx = or i1 %diff.check, %diff.check10
  br i1 %conflict.rdx, label %.lr.ph.preheader14, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %wide.load = load <2 x double>, ptr %i.g, align 8, !tbaa !18
  %wide.load11 = load <2 x double>, ptr %i.h, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %wide.load12 = load <2 x double>, ptr %i.i, align 8, !tbaa !18
  %wide.load13 = load <2 x double>, ptr %i.j, align 8, !tbaa !18
  %i.k = fadd <2 x double> %wide.load, %wide.load12
  %i.l = fadd <2 x double> %wide.load11, %wide.load13
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store <2 x double> %i.k, ptr %i.m, align 8, !tbaa !18
  store <2 x double> %i.l, ptr %i.n, align 8, !tbaa !18
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !154

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader14

.lr.ph.preheader14:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader14, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader14 ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader14 ]
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.prol
  %i.q = load double, ptr %i.p, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.prol
  %i.s = load double, ptr %i.r, align 8, !tbaa !18
  %i.t = fadd double %i.q, %i.s
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.prol
  store double %i.t, ptr %i.u, align 8, !tbaa !18
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !155

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader14
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader14 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.v = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.w = icmp ugt i64 %i.v, -4
  br i1 %i.w, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.y = load double, ptr %i.x, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.aa = load double, ptr %i.z, align 8, !tbaa !18
  %i.ab = fadd double %i.y, %i.aa
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  store double %i.ab, ptr %i.ac, align 8, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.ag = load double, ptr %i.af, align 8, !tbaa !18
  %i.ah = fadd double %i.ae, %i.ag
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next
  store double %i.ah, ptr %i.ai, align 8, !tbaa !18
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !18
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.1
  %i.am = load double, ptr %i.al, align 8, !tbaa !18
  %i.an = fadd double %i.ak, %i.am
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.1
  store double %i.an, ptr %i.ao, align 8, !tbaa !18
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !18
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.2
  %i.as = load double, ptr %i.ar, align 8, !tbaa !18
  %i.at = fadd double %i.aq, %i.as
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.2
  store double %i.at, ptr %i.au, align 8, !tbaa !18
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !156

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define hidden double @max_abs(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %0, 4
  br i1 %min.iters.check, label %.lr.ph.preheader12, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x double> [ splat (double -1.000000e+50), %vector.ph ], [ %i.f, %vector.body ] ; 2 uses
  %vec.phi10 = phi <2 x double> [ splat (double -1.000000e+50), %vector.ph ], [ %i.g, %vector.body ] ; 2 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %wide.load = load <2 x double>, ptr %i.b, align 8, !tbaa !18
  %wide.load11 = load <2 x double>, ptr %i.c, align 8, !tbaa !18
  %wide.load.fr = freeze <2 x double> %wide.load
  %i.d = tail call nsz <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load.fr) ; 2 uses
  %wide.load11.fr = freeze <2 x double> %wide.load11
  %i.e = tail call nsz <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load11.fr) ; 2 uses
  %i.f = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %vec.phi, <2 x double> %i.d) ; 2 uses
  %i.g = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %vec.phi10, <2 x double> %i.e) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.h = fcmp uno <2 x double> %i.d, %i.e
  %i.i = bitcast <2 x i1> %i.h to i2
  %i.j = icmp ne i2 %i.i, 0                       ; 5 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  %i.l = or i1 %i.j, %i.k
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !157

middle.block:                                     ; preds = %vector.body
  %i.m = select i1 %i.j, <2 x double> %vec.phi, <2 x double> %i.f
  %i.n = select i1 %i.j, <2 x double> %vec.phi10, <2 x double> %i.g
  %i.o = select i1 %i.j, i64 %index, i64 %n.vec
  %rdx.minmax = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.m, <2 x double> %i.n)
  %i.p = tail call nsz double @llvm.vector.reduce.fmax.v2f64(<2 x double> %rdx.minmax) ; 2 uses
  %cmp.n = icmp ne i64 %n.vec, %wide.trip.count
  %.not = or i1 %cmp.n, %i.j
  br i1 %.not, label %.lr.ph.preheader12, label %._crit_edge

.lr.ph.preheader12:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.o, %middle.block ]
  %.067.ph = phi double [ -1.000000e+50, %.lr.ph.preheader ], [ %i.p, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader12, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader12 ] ; 2 uses
  %.067 = phi double [ %i.t, %.lr.ph ], [ %.067.ph, %.lr.ph.preheader12 ]
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.r = load double, ptr %i.q, align 8, !tbaa !18
  %i.s = tail call nsz double @llvm.fabs.f64(double %i.r)
  %i.t = tail call nsz double @llvm.maxnum.f64(double %.067, double %i.s) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !158

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.06.lcssa = phi double [ -1.000000e+50, %bb.a ], [ %i.p, %middle.block ], [ %i.t, %.lr.ph ]
  ret double %.06.lcssa
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.maxnum.f64(double, double) #7

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @right_mult_with_vector_transpose(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.preheader.lr.ph, label %._crit_edge19

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.b = icmp sgt i32 %2, 0
  %wide.trip.count26 = zext nneg i32 %1 to i64    ; 2 uses
  br i1 %i.b, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.c = shl nuw nsw i64 %wide.trip.count26, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %4, i8 0, i64 %i.c, i1 false), !tbaa !18
  br label %._crit_edge19

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.d = icmp ult i32 %2, 4
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod30 = icmp ne i64 %xtraiter, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv23 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next24, %._crit_edge.us ] ; 7 uses
  br i1 %i.d, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader.us.new ], [ 0, %.preheader.us ] ; 6 uses
  %.017.us = phi double [ %i.af, %.preheader.us.new ], [ 0.000000e+00, %.preheader.us ]
  %niter = phi i64 [ %niter.next.3, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv23
  %i.h = load double, ptr %i.g, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.j = load double, ptr %i.i, align 8, !tbaa !18
  %i.k = tail call double @llvm.fmuladd.f64(double %i.h, double %i.j, double %.017.us)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !16
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv23
  %i.o = load double, ptr %i.n, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next
  %i.q = load double, ptr %i.p, align 8, !tbaa !18
  %i.r = tail call double @llvm.fmuladd.f64(double %i.o, double %i.q, double %i.k)
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.1
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !16
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv23
  %i.v = load double, ptr %i.u, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.1
  %i.x = load double, ptr %i.w, align 8, !tbaa !18
  %i.y = tail call double @llvm.fmuladd.f64(double %i.v, double %i.x, double %i.r)
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.2
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !16
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv23
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.2
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !18
  %i.af = tail call double @llvm.fmuladd.f64(double %i.ac, double %i.ae, double %i.y) ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !159

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next.3, %._crit_edge.us.unr-lcssa ]
  %.017.us.epil.init = phi double [ 0.000000e+00, %.preheader.us ], [ %i.af, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod30)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 3 uses
  %.017.us.epil = phi double [ %.017.us.epil.init, %.epil.preheader ], [ %i.am, %bb.b ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.epil
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !16
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv23
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !18
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.epil
  %i.al = load double, ptr %i.ak, align 8, !tbaa !18
  %i.am = tail call double @llvm.fmuladd.f64(double %i.aj, double %i.al, double %.017.us.epil) ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %bb.b, !llvm.loop !160

._crit_edge.us:                                   ; preds = %bb.b, %._crit_edge.us.unr-lcssa
  %.lcssa = phi double [ %i.af, %._crit_edge.us.unr-lcssa ], [ %i.am, %bb.b ]
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv23
  store double %.lcssa, ptr %i.an, align 8, !tbaa !18
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1 ; 2 uses
  %exitcond27.not = icmp eq i64 %indvars.iv.next24, %wide.trip.count26
  br i1 %exitcond27.not, label %._crit_edge19, label %.preheader.us, !llvm.loop !161

._crit_edge19:                                    ; preds = %._crit_edge.us, %.preheader.preheader, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @orthog1f(i32 noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %.not17 = icmp eq i32 %0, 0
  br i1 %.not17, label %._crit_edge26, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i32 %0, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.020.prol = phi float [ %i.c, %.lr.ph.prol ], [ 0.000000e+00, %.lr.ph.preheader ]
  %.01319.prol = phi ptr [ %i.a, %.lr.ph.prol ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %.01418.prol = phi i32 [ %i.d, %.lr.ph.prol ], [ %0, %.lr.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.a = getelementptr inbounds nuw i8, ptr %.01319.prol, i64 4 ; 2 uses
  %i.b = load float, ptr %.01319.prol, align 4, !tbaa !29
  %i.c = fadd float %.020.prol, %i.b              ; 3 uses
  %i.d = add nsw i32 %.01418.prol, -1             ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !162

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi float [ poison, %.lr.ph.preheader ], [ %i.c, %.lr.ph.prol ]
  %.020.unr = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %i.c, %.lr.ph.prol ]
  %.01319.unr = phi ptr [ %1, %.lr.ph.preheader ], [ %i.a, %.lr.ph.prol ]
  %.01418.unr = phi i32 [ %0, %.lr.ph.preheader ], [ %i.d, %.lr.ph.prol ]
  %i.e = icmp ult i32 %0, 8
  br i1 %i.e, label %.lr.ph25.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.020 = phi float [ %i.ac, %.lr.ph ], [ %.020.unr, %.lr.ph.prol.loopexit ]
  %.01319 = phi ptr [ %i.aa, %.lr.ph ], [ %.01319.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.01418 = phi i32 [ %i.ad, %.lr.ph ], [ %.01418.unr, %.lr.ph.prol.loopexit ]
  %i.f = getelementptr inbounds nuw i8, ptr %.01319, i64 4
  %i.g = load float, ptr %.01319, align 4, !tbaa !29
  %i.h = fadd float %.020, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %.01319, i64 8
  %i.j = load float, ptr %i.f, align 4, !tbaa !29
  %i.k = fadd float %i.h, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %.01319, i64 12
  %i.m = load float, ptr %i.i, align 4, !tbaa !29
  %i.n = fadd float %i.k, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %.01319, i64 16
  %i.p = load float, ptr %i.l, align 4, !tbaa !29
  %i.q = fadd float %i.n, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %.01319, i64 20
  %i.s = load float, ptr %i.o, align 4, !tbaa !29
  %i.t = fadd float %i.q, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %.01319, i64 24
  %i.v = load float, ptr %i.r, align 4, !tbaa !29
  %i.w = fadd float %i.t, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %.01319, i64 28
end_hunk_0
begin_hunk_1_@vectors_inner_productf:bb.a

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.b = icmp ult i32 %0, 4
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %.010 = phi double [ 0.000000e+00, %.lr.ph.preheader.new ], [ %i.ad, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.d = load float, ptr %i.c, align 4, !tbaa !29
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.f = load float, ptr %i.e, align 4, !tbaa !29
  %i.g = fmul float %i.d, %i.f
  %i.h = fpext float %i.g to double
  %i.i = fadd double %.010, %i.h
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.k = load float, ptr %i.j, align 4, !tbaa !29
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  %i.m = load float, ptr %i.l, align 4, !tbaa !29
  %i.n = fmul float %i.k, %i.m
  %i.o = fpext float %i.n to double
  %i.p = fadd double %i.i, %i.o
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.r = load float, ptr %i.q, align 4, !tbaa !29
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.1
  %i.t = load float, ptr %i.s, align 4, !tbaa !29
  %i.u = fmul float %i.r, %i.t
  %i.v = fpext float %i.u to double
  %i.w = fadd double %i.p, %i.v
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.y = load float, ptr %i.x, align 4, !tbaa !29
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.2
  %i.aa = load float, ptr %i.z, align 4, !tbaa !29
  %i.ab = fmul float %i.y, %i.aa
  %i.ac = fpext float %i.ab to double
  %i.ad = fadd double %i.w, %i.ac                 ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !184

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.010.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.ad, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod13 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod13)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %.010.epil = phi double [ %.010.epil.init, %.lr.ph.epil.preheader ], [ %i.ak, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.epil
  %i.af = load float, ptr %i.ae, align 4, !tbaa !29
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.epil
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !29
  %i.ai = fmul float %i.af, %i.ah
  %i.aj = fpext float %i.ai to double
  %i.ak = fadd double %.010.epil, %i.aj           ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !185

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.ad, %._crit_edge.loopexit.unr-lcssa ], [ %i.ak, %.lr.ph.epil ]
  ret double %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define hidden void @set_vector_val(i32 noundef %0, double noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #11 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %0, 4
  br i1 %min.iters.check, label %.lr.ph.preheader7, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %1, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store <2 x double> %broadcast.splat, ptr %i.b, align 8, !tbaa !18
  store <2 x double> %broadcast.splat, ptr %i.c, align 8, !tbaa !18
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.d = icmp eq i64 %index.next, %n.vec
  br i1 %i.d, label %middle.block, label %vector.body, !llvm.loop !186

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader7

.lr.ph.preheader7:                                ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader7, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader7 ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  store double %1, ptr %i.e, align 8, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !187

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define hidden void @set_vector_valf(i32 noundef %0, float noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #11 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %0, 8
  br i1 %min.iters.check, label %.lr.ph.preheader7, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %1, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store <4 x float> %broadcast.splat, ptr %i.b, align 4, !tbaa !29
  store <4 x float> %broadcast.splat, ptr %i.c, align 4, !tbaa !29
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.d = icmp eq i64 %index.next, %n.vec
  br i1 %i.d, label %middle.block, label %vector.body, !llvm.loop !188

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader7

.lr.ph.preheader7:                                ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader7, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader7 ] ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store float %1, ptr %i.e, align 4, !tbaa !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !189

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define hidden double @max_absf(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %0, 8
  br i1 %min.iters.check, label %.lr.ph.preheader12, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x float> [ splat (float -1.000000e+30), %vector.ph ], [ %i.f, %vector.body ] ; 2 uses
  %vec.phi10 = phi <4 x float> [ splat (float -1.000000e+30), %vector.ph ], [ %i.g, %vector.body ] ; 2 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %wide.load = load <4 x float>, ptr %i.b, align 4, !tbaa !29
  %wide.load11 = load <4 x float>, ptr %i.c, align 4, !tbaa !29
  %wide.load.fr = freeze <4 x float> %wide.load
  %i.d = tail call nsz <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load.fr) ; 2 uses
  %wide.load11.fr = freeze <4 x float> %wide.load11
  %i.e = tail call nsz <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load11.fr) ; 2 uses
  %i.f = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi, <4 x float> %i.d) ; 2 uses
  %i.g = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi10, <4 x float> %i.e) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.h = fcmp uno <4 x float> %i.d, %i.e
  %i.i = bitcast <4 x i1> %i.h to i4
  %i.j = icmp ne i4 %i.i, 0                       ; 5 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  %i.l = or i1 %i.j, %i.k
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !190

middle.block:                                     ; preds = %vector.body
  %i.m = select i1 %i.j, <4 x float> %vec.phi, <4 x float> %i.f
  %i.n = select i1 %i.j, <4 x float> %vec.phi10, <4 x float> %i.g
  %i.o = select i1 %i.j, i64 %index, i64 %n.vec
  %rdx.minmax = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.m, <4 x float> %i.n)
  %i.p = tail call nsz float @llvm.vector.reduce.fmax.v4f32(<4 x float> %rdx.minmax) ; 2 uses
  %cmp.n = icmp ne i64 %n.vec, %wide.trip.count
  %.not = or i1 %cmp.n, %i.j
  br i1 %.not, label %.lr.ph.preheader12, label %._crit_edge.loopexit

.lr.ph.preheader12:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.o, %middle.block ]
  %.08.ph = phi float [ -1.000000e+30, %.lr.ph.preheader ], [ %i.p, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader12, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader12 ] ; 2 uses
  %.08 = phi float [ %i.t, %.lr.ph ], [ %.08.ph, %.lr.ph.preheader12 ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.r = load float, ptr %i.q, align 4, !tbaa !29
  %i.s = tail call nsz float @llvm.fabs.f32(float %i.r)
  %i.t = tail call nsz float @llvm.maxnum.f32(float %.08, float %i.s) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !191

._crit_edge.loopexit:                             ; preds = %.lr.ph, %middle.block
  %.lcssa = phi float [ %i.p, %middle.block ], [ %i.t, %.lr.ph ]
  %i.u = fpext float %.lcssa to double
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi double [ f0xC6293E5940000000, %bb.a ], [ %i.u, %._crit_edge.loopexit ]
  ret double %.0.lcssa
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #7

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @square_vec(i32 noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %0, 8
  br i1 %min.iters.check, label %.lr.ph.preheader9, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.b, align 4, !tbaa !29 ; 2 uses
  %wide.load8 = load <4 x float>, ptr %i.c, align 4, !tbaa !29 ; 2 uses
  %i.d = fmul <4 x float> %wide.load, %wide.load
  %i.e = fmul <4 x float> %wide.load8, %wide.load8
  store <4 x float> %i.d, ptr %i.b, align 4, !tbaa !29
  store <4 x float> %i.e, ptr %i.c, align 4, !tbaa !29
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.f = icmp eq i64 %index.next, %n.vec
  br i1 %i.f, label %middle.block, label %vector.body, !llvm.loop !192

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader9

.lr.ph.preheader9:                                ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader9, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader9 ] ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.h = load float, ptr %i.g, align 4, !tbaa !29 ; 2 uses
  %i.i = fmul float %i.h, %i.h
  store float %i.i, ptr %i.g, align 4, !tbaa !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !193

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @invert_vec(i32 noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %0, 4
  br i1 %min.iters.check, label %.lr.ph.preheader17, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue16, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue16 ] ; 5 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %wide.load = load <4 x float>, ptr %i.b, align 4, !tbaa !29 ; 2 uses
  %i.c = fcmp une <4 x float> %wide.load, zeroinitializer ; 4 uses
  %i.d = fdiv <4 x float> splat (float 1.000000e+00), %wide.load ; 4 uses
  %i.e = extractelement <4 x i1> %i.c, i64 0
  br i1 %i.e, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.f = extractelement <4 x float> %i.d, i64 0
  store float %i.f, ptr %i.b, align 4, !tbaa !29
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.g = extractelement <4 x i1> %i.c, i64 1
  br i1 %i.g, label %pred.store.if11, label %pred.store.continue12

pred.store.if11:                                  ; preds = %pred.store.continue
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = extractelement <4 x float> %i.d, i64 1
  store float %i.j, ptr %i.i, align 4, !tbaa !29
  br label %pred.store.continue12

pred.store.continue12:                            ; preds = %pred.store.if11, %pred.store.continue
  %i.k = extractelement <4 x i1> %i.c, i64 2
  br i1 %i.k, label %pred.store.if13, label %pred.store.continue14

pred.store.if13:                                  ; preds = %pred.store.continue12
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = extractelement <4 x float> %i.d, i64 2
  store float %i.n, ptr %i.m, align 4, !tbaa !29
  br label %pred.store.continue14

pred.store.continue14:                            ; preds = %pred.store.if13, %pred.store.continue12
  %i.o = extractelement <4 x i1> %i.c, i64 3
  br i1 %i.o, label %pred.store.if15, label %pred.store.continue16

pred.store.if15:                                  ; preds = %pred.store.continue14
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.r = extractelement <4 x float> %i.d, i64 3
  store float %i.r, ptr %i.q, align 4, !tbaa !29
  br label %pred.store.continue16

pred.store.continue16:                            ; preds = %pred.store.if15, %pred.store.continue14
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !194

middle.block:                                     ; preds = %pred.store.continue16
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader17

.lr.ph.preheader17:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader17, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ %indvars.iv.ph, %.lr.ph.preheader17 ] ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.u = load float, ptr %i.t, align 4, !tbaa !29 ; 2 uses
  %i.v = fcmp une float %i.u, 0.000000e+00
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.w = fdiv float 1.000000e+00, %i.u
  store float %i.w, ptr %i.t, align 4, !tbaa !29
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !195

._crit_edge:                                      ; preds = %bb.c, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define hidden void @sqrt_vecf(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #12 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

end_hunk_1
