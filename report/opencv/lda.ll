Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/lda?download=true
inline.NumInlined: 969
inline.NumDeleted: 337
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN2cv23EigenvalueDecomposition7computeEv:bb.a
  br i1 %lcmp.mod80.not, label %scalar.ph53.prol.loopexit, label %scalar.ph53.prol

scalar.ph53.prol:                                 ; preds = %scalar.ph53.preheader, %scalar.ph53.prol
  %indvars.iv36.prol = phi i64 [ %indvars.iv.next37.prol, %scalar.ph53.prol ], [ %indvars.iv36.ph, %scalar.ph53.preheader ] ; 3 uses
  %prol.iter81 = phi i64 [ %prol.iter81.next, %scalar.ph53.prol ], [ 0, %scalar.ph53.preheader ]
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv36.prol
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !48
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv36.prol
  store double %i.cv, ptr %i.cw, align 8, !tbaa !48
  %indvars.iv.next37.prol = add nuw nsw i64 %indvars.iv36.prol, 1 ; 2 uses
  %prol.iter81.next = add i64 %prol.iter81, 1     ; 2 uses
  %prol.iter81.cmp.not = icmp eq i64 %prol.iter81.next, %xtraiter79
  br i1 %prol.iter81.cmp.not, label %scalar.ph53.prol.loopexit, label %scalar.ph53.prol, !llvm.loop !306

scalar.ph53.prol.loopexit:                        ; preds = %scalar.ph53.prol, %scalar.ph53.preheader
  %indvars.iv36.unr = phi i64 [ %indvars.iv36.ph, %scalar.ph53.preheader ], [ %indvars.iv.next37.prol, %scalar.ph53.prol ]
  %i.cx = sub nsw i64 %indvars.iv36.ph, %wide.trip.count44
  %i.cy = icmp ugt i64 %i.cx, -4
  br i1 %i.cy, label %._crit_edge18.split.us.us, label %scalar.ph53

scalar.ph53:                                      ; preds = %scalar.ph53.prol.loopexit, %scalar.ph53
  %indvars.iv36 = phi i64 [ %indvars.iv.next37.3, %scalar.ph53 ], [ %indvars.iv36.unr, %scalar.ph53.prol.loopexit ] ; 6 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv36
  %i.da = load double, ptr %i.cz, align 8, !tbaa !48
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv36
  store double %i.da, ptr %i.db, align 8, !tbaa !48
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1 ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv.next37
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !48
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.next37
  store double %i.dd, ptr %i.de, align 8, !tbaa !48
  %indvars.iv.next37.1 = add nuw nsw i64 %indvars.iv36, 2 ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv.next37.1
  %i.dg = load double, ptr %i.df, align 8, !tbaa !48
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.next37.1
  store double %i.dg, ptr %i.dh, align 8, !tbaa !48
  %indvars.iv.next37.2 = add nuw nsw i64 %indvars.iv36, 3 ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv.next37.2
  %i.dj = load double, ptr %i.di, align 8, !tbaa !48
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.next37.2
  store double %i.dj, ptr %i.dk, align 8, !tbaa !48
  %indvars.iv.next37.3 = add nuw nsw i64 %indvars.iv36, 4 ; 2 uses
  %exitcond40.not.3 = icmp eq i64 %indvars.iv.next37.3, %wide.trip.count44
  br i1 %exitcond40.not.3, label %._crit_edge18.split.us.us, label %scalar.ph53, !llvm.loop !307

._crit_edge18.split.us.us:                        ; preds = %scalar.ph53.prol.loopexit, %scalar.ph53, %middle.block62
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1 ; 2 uses
  %exitcond45.not = icmp eq i64 %indvars.iv.next42, %wide.trip.count44
  br i1 %exitcond45.not, label %._crit_edge20.split, label %.preheader.us, !llvm.loop !308

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !48
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv
  store double %i.dm, ptr %i.dn, align 8, !tbaa !48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv.next
  %i.dp = load double, ptr %i.do, align 8, !tbaa !48
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.next
  store double %i.dp, ptr %i.dq, align 8, !tbaa !48
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv.next.1
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !48
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.next.1
  store double %i.ds, ptr %i.dt, align 8, !tbaa !48
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv.next.2
  %i.dv = load double, ptr %i.du, align 8, !tbaa !48
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.next.2
  store double %i.dv, ptr %i.dw, align 8, !tbaa !48
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !309

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge18.split
  %indvars.iv31 = phi i64 [ %indvars.iv.next32, %._crit_edge18.split ], [ 0, %.preheader.preheader ] ; 7 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv31
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !65 ; 5 uses
  br i1 %i.ck, label %.epil.preheader, label %.preheader.new

._crit_edge20.split:                              ; preds = %._crit_edge18.split, %._crit_edge18.split.us.us, %._crit_edge
  tail call void @_ZN2cv23EigenvalueDecomposition7releaseEv(ptr noundef nonnull align 8 dereferenceable(464) %0)
  ret void

._crit_edge18.split.unr-lcssa:                    ; preds = %.preheader.new
  br i1 %lcmp.mod75.not, label %._crit_edge18.split, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge18.split.unr-lcssa, %.preheader
  %indvars.iv26.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next27.3, %._crit_edge18.split.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod76)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv26.epil = phi i64 [ %indvars.iv26.epil.init, %.epil.preheader ], [ %indvars.iv.next27.epil, %bb.b ] ; 3 uses
  %epil.iter74 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter74.next, %bb.b ]
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %indvars.iv26.epil
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !48
  %i.eb = load i64, ptr %i.ce, align 8
  %i.ec = mul i64 %i.eb, %indvars.iv31
  %.sink.i.epil = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ec
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.epil, i64 %indvars.iv26.epil
  store double %i.ea, ptr %i.ed, align 8, !tbaa !48
  %indvars.iv.next27.epil = add nuw nsw i64 %indvars.iv26.epil, 1
  %epil.iter74.next = add i64 %epil.iter74, 1     ; 2 uses
  %epil.iter74.cmp.not = icmp eq i64 %epil.iter74.next, %xtraiter73
  br i1 %epil.iter74.cmp.not, label %._crit_edge18.split, label %bb.b, !llvm.loop !310

._crit_edge18.split:                              ; preds = %bb.b, %._crit_edge18.split.unr-lcssa
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1 ; 2 uses
  %exitcond35.not = icmp eq i64 %indvars.iv.next32, %wide.trip.count44
  br i1 %exitcond35.not, label %._crit_edge20.split, label %.preheader, !llvm.loop !308

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv26 = phi i64 [ %indvars.iv.next27.3, %.preheader.new ], [ 0, %.preheader ] ; 6 uses
  %niter78 = phi i64 [ %niter78.next.3, %.preheader.new ], [ 0, %.preheader ]
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %indvars.iv26
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !48
  %i.eg = load i64, ptr %i.ce, align 8
  %i.eh = mul i64 %i.eg, %indvars.iv31
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.eh
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %.sink.i, i64 %indvars.iv26
  store double %i.ef, ptr %i.ei, align 8, !tbaa !48
  %indvars.iv.next27 = or disjoint i64 %indvars.iv26, 1 ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %indvars.iv.next27
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !48
  %i.el = load i64, ptr %i.ce, align 8
  %i.em = mul i64 %i.el, %indvars.iv31
  %.sink.i.1 = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.em
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.1, i64 %indvars.iv.next27
  store double %i.ek, ptr %i.en, align 8, !tbaa !48
  %indvars.iv.next27.1 = or disjoint i64 %indvars.iv26, 2 ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %indvars.iv.next27.1
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !48
  %i.eq = load i64, ptr %i.ce, align 8
  %i.er = mul i64 %i.eq, %indvars.iv31
  %.sink.i.2 = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.er
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.2, i64 %indvars.iv.next27.1
  store double %i.ep, ptr %i.es, align 8, !tbaa !48
  %indvars.iv.next27.2 = or disjoint i64 %indvars.iv26, 3 ; 2 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %indvars.iv.next27.2
  %i.eu = load double, ptr %i.et, align 8, !tbaa !48
  %i.ev = load i64, ptr %i.ce, align 8
  %i.ew = mul i64 %i.ev, %indvars.iv31
  %.sink.i.3 = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ew
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.3, i64 %indvars.iv.next27.2
  store double %i.eu, ptr %i.ex, align 8, !tbaa !48
  %indvars.iv.next27.3 = add nuw nsw i64 %indvars.iv26, 4 ; 2 uses
  %niter78.next.3 = add i64 %niter78, 4           ; 2 uses
  %niter78.ncmp.3 = icmp eq i64 %niter78.next.3, %unroll_iter77
  br i1 %niter78.ncmp.3, label %._crit_edge18.split.unr-lcssa, label %.preheader.new, !llvm.loop !311
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv23EigenvalueDecomposition6orthesEv(ptr noundef nonnull align 8 dereferenceable(464) %0) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !40     ; 14 uses
  %i.b = add i32 %i.a, -1                         ; 3 uses
  %i.c = icmp sgt i32 %i.a, 2                     ; 2 uses
  br i1 %i.c, label %.preheader167.lr.ph, label %.preheader160

.preheader167.lr.ph:                              ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8              ; 19 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8              ; 23 uses
  %i.h = zext nneg i32 %i.a to i64                ; 3 uses
  %i.i = add nsw i64 %i.h, -1                     ; 11 uses
  %wide.trip.count264 = zext nneg i32 %i.b to i64
  %wide.trip.count = zext nneg i32 %i.a to i64    ; 10 uses
  %wide.trip.count248 = zext nneg i32 %i.a to i64 ; 2 uses
  %wide.trip.count261 = zext nneg i32 %i.a to i64 ; 2 uses
  %i.j = shl nuw nsw i64 %wide.trip.count, 3      ; 2 uses
  %scevgep304 = getelementptr i8, ptr %i.g, i64 %i.j
  %i.k = add nsw i64 %wide.trip.count, -2         ; 2 uses
  %i.l = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.i
  %i.m = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.i
  %indvars.iv.next235.prol = add nsw i64 %i.h, -2
  %i.n = add nsw i64 %wide.trip.count, -1
  br label %.preheader167

.preheader167:                                    ; preds = %.preheader167.lr.ph, %._crit_edge.thread
  %indvar = phi i64 [ 0, %.preheader167.lr.ph ], [ %indvar.next, %._crit_edge.thread ] ; 7 uses
  %indvars.iv = phi i64 [ 1, %.preheader167.lr.ph ], [ %indvars.iv.next, %._crit_edge.thread ] ; 29 uses
  %smin337 = tail call i64 @llvm.smin.i64(i64 %indvars.iv, i64 %i.i) ; 2 uses
  %i.o = sub i64 %wide.trip.count, %smin337
  %i.p = sub i64 %i.i, %indvar
  %smin = tail call i64 @llvm.smin.i64(i64 %indvars.iv, i64 %i.i) ; 2 uses
  %i.q = sub i64 %wide.trip.count, %smin          ; 2 uses
  %i.r = xor i64 %smin, -1
  %i.s = add i64 %i.r, %wide.trip.count           ; 2 uses
  %i.t = sub i64 %i.k, %indvar
  %i.u = shl nuw nsw i64 %indvar, 3
  %i.v = add nuw i64 %i.u, 8                      ; 2 uses
  %scevgep303 = getelementptr i8, ptr %i.g, i64 %i.v
  %.not.not151168 = icmp samesign ult i64 %indvars.iv, %i.h
  br i1 %.not.not151168, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %.preheader167
  %i.w = xor i64 %indvar, -1
  %i.x = add i64 %i.w, %wide.trip.count
  %xtraiter = and i64 %i.x, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv231.prol = phi i64 [ %indvars.iv.next232.prol, %.lr.ph.prol ], [ %indvars.iv, %.lr.ph.preheader ] ; 2 uses
  %.0145169.prol = phi double [ %i.ae, %.lr.ph.prol ], [ 0.000000e+00, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv231.prol
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !65
  %i.aa = getelementptr [8 x i8], ptr %i.z, i64 %indvars.iv
  %i.ab = getelementptr i8, ptr %i.aa, i64 -8
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !48
  %i.ad = tail call noundef double @llvm.fabs.f64(double %i.ac)
  %i.ae = fadd double %.0145169.prol, %i.ad       ; 3 uses
  %indvars.iv.next232.prol = add nuw nsw i64 %indvars.iv231.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !312

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa320.unr = phi double [ poison, %.lr.ph.preheader ], [ %i.ae, %.lr.ph.prol ]
  %indvars.iv231.unr = phi i64 [ %indvars.iv, %.lr.ph.preheader ], [ %indvars.iv.next232.prol, %.lr.ph.prol ]
  %.0145169.unr = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.ae, %.lr.ph.prol ]
  %i.af = icmp ult i64 %i.t, 3
  br i1 %i.af, label %._crit_edge, label %.lr.ph

.preheader160:                                    ; preds = %._crit_edge.thread, %bb.a
  %i.ag = icmp sgt i32 %i.a, 0
  br i1 %i.ag, label %.preheader159.lr.ph, label %._crit_edge225

.preheader159.lr.ph:                              ; preds = %.preheader160
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !87
  %wide.trip.count274 = zext nneg i32 %i.a to i64 ; 4 uses
  %min.iters.check309 = icmp ult i32 %i.a, 4
  %n.vec311 = and i64 %wide.trip.count274, 2147483644 ; 3 uses
  %cmp.n318 = icmp eq i64 %n.vec311, %wide.trip.count274
  br label %.preheader159

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph.prol.loopexit
  %.lcssa320 = phi double [ %.lcssa320.unr, %.lr.ph.prol.loopexit ], [ %i.bv, %.lr.ph ] ; 6 uses
  %i.aj = fcmp une double %.lcssa320, 0.000000e+00
  br i1 %i.aj, label %.lr.ph174.preheader, label %._crit_edge.thread

.lr.ph174.preheader:                              ; preds = %._crit_edge
  %xtraiter324 = and i64 %i.q, 1
  %lcmp.mod325.not = icmp eq i64 %xtraiter324, 0
  br i1 %lcmp.mod325.not, label %.lr.ph174.prol.loopexit, label %.lr.ph174.prol

.lr.ph174.prol:                                   ; preds = %.lr.ph174.preheader
  %i.ak = load ptr, ptr %i.l, align 8, !tbaa !65
  %i.al = getelementptr [8 x i8], ptr %i.ak, i64 %indvars.iv
  %i.am = getelementptr i8, ptr %i.al, i64 -8
  %i.an = load double, ptr %i.am, align 8, !tbaa !48
  %i.ao = fdiv double %i.an, %.lcssa320           ; 3 uses
  store double %i.ao, ptr %i.m, align 8, !tbaa !48
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.ao, double %i.ao, double 0.000000e+00) ; 2 uses
  br label %.lr.ph174.prol.loopexit

.lr.ph174.prol.loopexit:                          ; preds = %.lr.ph174.prol, %.lr.ph174.preheader
  %indvars.iv234.unr = phi i64 [ %i.i, %.lr.ph174.preheader ], [ %indvars.iv.next235.prol, %.lr.ph174.prol ]
  %.0143172.unr = phi double [ 0.000000e+00, %.lr.ph174.preheader ], [ %i.ap, %.lr.ph174.prol ]
  %.lcssa321.unr = phi double [ poison, %.lr.ph174.preheader ], [ %i.ap, %.lr.ph174.prol ]
  %i.aq = icmp eq i64 %i.s, 0
  br i1 %i.aq, label %.preheader164.lr.ph, label %.lr.ph174

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv231 = phi i64 [ %indvars.iv.next232.3, %.lr.ph ], [ %indvars.iv231.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.0145169 = phi double [ %i.bv, %.lr.ph ], [ %.0145169.unr, %.lr.ph.prol.loopexit ]
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv231
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !65
  %i.at = getelementptr [8 x i8], ptr %i.as, i64 %indvars.iv
  %i.au = getelementptr i8, ptr %i.at, i64 -8
  %i.av = load double, ptr %i.au, align 8, !tbaa !48
  %i.aw = tail call noundef double @llvm.fabs.f64(double %i.av)
  %i.ax = fadd double %.0145169, %i.aw
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv231
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !65
  %i.bb = getelementptr [8 x i8], ptr %i.ba, i64 %indvars.iv
  %i.bc = getelementptr i8, ptr %i.bb, i64 -8
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !48
  %i.be = tail call noundef double @llvm.fabs.f64(double %i.bd)
  %i.bf = fadd double %i.ax, %i.be
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv231
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !65
  %i.bj = getelementptr [8 x i8], ptr %i.bi, i64 %indvars.iv
  %i.bk = getelementptr i8, ptr %i.bj, i64 -8
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !48
  %i.bm = tail call noundef double @llvm.fabs.f64(double %i.bl)
  %i.bn = fadd double %i.bf, %i.bm
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv231
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !65
  %i.br = getelementptr [8 x i8], ptr %i.bq, i64 %indvars.iv
  %i.bs = getelementptr i8, ptr %i.br, i64 -8
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !48
  %i.bu = tail call noundef double @llvm.fabs.f64(double %i.bt)
  %i.bv = fadd double %i.bn, %i.bu                ; 2 uses
  %indvars.iv.next232.3 = add nuw nsw i64 %indvars.iv231, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next232.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !313

.preheader164.lr.ph:                              ; preds = %.lr.ph174, %.lr.ph174.prol.loopexit
  %.lcssa321 = phi double [ %.lcssa321.unr, %.lr.ph174.prol.loopexit ], [ %i.cx, %.lr.ph174 ] ; 2 uses
  %i.bw = tail call double @sqrt(double noundef %.lcssa321) #19 ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv ; 4 uses
  %i.by = load double, ptr %i.bx, align 8, !tbaa !48 ; 3 uses
  %i.bz = fcmp ogt double %i.by, 0.000000e+00
  %i.ca = fneg double %i.bw
  %.0141 = select i1 %i.bz, double %i.ca, double %i.bw ; 3 uses
  %i.cb = fneg double %i.by
  %i.cc = tail call double @llvm.fmuladd.f64(double %i.cb, double %.0141, double %.lcssa321) ; 2 uses
  %i.cd = fsub double %i.by, %.0141
  store double %i.cd, ptr %i.bx, align 8, !tbaa !48
  %xtraiter327 = and i64 %i.q, 3                  ; 2 uses
  %lcmp.mod328.not = icmp eq i64 %xtraiter327, 0
  %i.ce = icmp ult i64 %i.s, 3
  %xtraiter332 = and i64 %i.p, 1
  %lcmp.mod333.not = icmp eq i64 %xtraiter332, 0
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %indvars.iv.next241.prol = add nuw nsw i64 %indvars.iv, 1
  %i.ch = icmp eq i64 %i.k, %indvar
  br label %.lr.ph180

.lr.ph174:                                        ; preds = %.lr.ph174.prol.loopexit, %.lr.ph174
  %indvars.iv234 = phi i64 [ %indvars.iv.next235.1, %.lr.ph174 ], [ %indvars.iv234.unr, %.lr.ph174.prol.loopexit ] ; 4 uses
  %.0143172 = phi double [ %i.cx, %.lr.ph174 ], [ %.0143172.unr, %.lr.ph174.prol.loopexit ]
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.e, i64 %indvars.iv234
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !65
  %i.ck = getelementptr [8 x i8], ptr %i.cj, i64 %indvars.iv
  %i.cl = getelementptr i8, ptr %i.ck, i64 -8
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !48
  %i.cn = fdiv double %i.cm, %.lcssa320           ; 3 uses
  %i.co = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv234
  store double %i.cn, ptr %i.co, align 8, !tbaa !48
  %i.cp = tail call double @llvm.fmuladd.f64(double %i.cn, double %i.cn, double %.0143172)
  %indvars.iv.next235 = add nsw i64 %indvars.iv234, -1 ; 3 uses
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.e, i64 %indvars.iv.next235
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !65
  %i.cs = getelementptr [8 x i8], ptr %i.cr, i64 %indvars.iv
  %i.ct = getelementptr i8, ptr %i.cs, i64 -8
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !48
  %i.cv = fdiv double %i.cu, %.lcssa320           ; 3 uses
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv.next235
  store double %i.cv, ptr %i.cw, align 8, !tbaa !48
  %i.cx = tail call double @llvm.fmuladd.f64(double %i.cv, double %i.cv, double %i.cp) ; 2 uses
  %indvars.iv.next235.1 = add nsw i64 %indvars.iv234, -2
  %.not.not226.1 = icmp sgt i64 %indvars.iv.next235, %indvars.iv
  br i1 %.not.not226.1, label %.lr.ph174, label %.preheader164.lr.ph, !llvm.loop !314

.lr.ph180:                                        ; preds = %._crit_edge185, %.preheader164.lr.ph
  %indvars.iv245 = phi i64 [ %indvars.iv, %.preheader164.lr.ph ], [ %indvars.iv.next246, %._crit_edge185 ] ; 9 uses
  br i1 %lcmp.mod328.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph180, %.prol.preheader
  %indvars.iv237.prol = phi i64 [ %indvars.iv.next238.prol, %.prol.preheader ], [ %i.i, %.lr.ph180 ] ; 3 uses
  %.0139178.prol = phi double [ %i.de, %.prol.preheader ], [ 0.000000e+00, %.lr.ph180 ]
  %prol.iter329 = phi i64 [ %prol.iter329.next, %.prol.preheader ], [ 0, %.lr.ph180 ]
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv237.prol
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !48
  %i.da = getelementptr inbounds [8 x i8], ptr %i.e, i64 %indvars.iv237.prol
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !65
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv245
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !48
  %i.de = tail call double @llvm.fmuladd.f64(double %i.cz, double %i.dd, double %.0139178.prol) ; 3 uses
  %indvars.iv.next238.prol = add nsw i64 %indvars.iv237.prol, -1 ; 2 uses
  %prol.iter329.next = add i64 %prol.iter329, 1   ; 2 uses
  %prol.iter329.cmp.not = icmp eq i64 %prol.iter329.next, %xtraiter327
  br i1 %prol.iter329.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !315

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph180
  %indvars.iv237.unr = phi i64 [ %i.i, %.lr.ph180 ], [ %indvars.iv.next238.prol, %.prol.preheader ]
  %.0139178.unr = phi double [ 0.000000e+00, %.lr.ph180 ], [ %i.de, %.prol.preheader ]
  %.lcssa322.unr = phi double [ poison, %.lr.ph180 ], [ %i.de, %.prol.preheader ]
  br i1 %i.ce, label %.lr.ph184, label %.lr.ph180.new

.lr.ph184:                                        ; preds = %.lr.ph180.new, %.prol.loopexit
  %.lcssa322 = phi double [ %.lcssa322.unr, %.prol.loopexit ], [ %i.en, %.lr.ph180.new ]
  %i.df = fneg double %.lcssa322
  %i.dg = fdiv double %i.df, %i.cc                ; 3 uses
  br i1 %lcmp.mod333.not, label %.prol.loopexit331, label %.prol.loopexit331.unr-lcssa

.prol.loopexit331.unr-lcssa:                      ; preds = %.lr.ph184
  %i.dh = load double, ptr %i.cf, align 8, !tbaa !48
  %i.di = load ptr, ptr %i.cg, align 8, !tbaa !65
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %indvars.iv245 ; 2 uses
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !48
  %i.dl = tail call double @llvm.fmuladd.f64(double %i.dg, double %i.dh, double %i.dk)
  store double %i.dl, ptr %i.dj, align 8, !tbaa !48
  br label %.prol.loopexit331

.prol.loopexit331:                                ; preds = %.prol.loopexit331.unr-lcssa, %.lr.ph184
  %indvars.iv240.unr = phi i64 [ %indvars.iv, %.lr.ph184 ], [ %indvars.iv.next241.prol, %.prol.loopexit331.unr-lcssa ]
  br i1 %i.ch, label %._crit_edge185, label %.lr.ph184.new

.lr.ph180.new:                                    ; preds = %.prol.loopexit, %.lr.ph180.new
  %indvars.iv237 = phi i64 [ %indvars.iv.next238.3, %.lr.ph180.new ], [ %indvars.iv237.unr, %.prol.loopexit ] ; 6 uses
  %.0139178 = phi double [ %i.en, %.lr.ph180.new ], [ %.0139178.unr, %.prol.loopexit ]
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv237
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !48
  %i.do = getelementptr inbounds [8 x i8], ptr %i.e, i64 %indvars.iv237
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !65
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv245
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !48
  %i.ds = tail call double @llvm.fmuladd.f64(double %i.dn, double %i.dr, double %.0139178)
  %indvars.iv.next238 = add nsw i64 %indvars.iv237, -1 ; 2 uses
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv.next238
  %i.du = load double, ptr %i.dt, align 8, !tbaa !48
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.e, i64 %indvars.iv.next238
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !65
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %indvars.iv245
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !48
  %i.dz = tail call double @llvm.fmuladd.f64(double %i.du, double %i.dy, double %i.ds)
  %indvars.iv.next238.1 = add nsw i64 %indvars.iv237, -2 ; 2 uses
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv.next238.1
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !48
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.e, i64 %indvars.iv.next238.1
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !65
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %indvars.iv245
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !48
  %i.eg = tail call double @llvm.fmuladd.f64(double %i.eb, double %i.ef, double %i.dz)
  %indvars.iv.next238.2 = add nsw i64 %indvars.iv237, -3 ; 3 uses
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv.next238.2
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !48
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.e, i64 %indvars.iv.next238.2
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !65
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %indvars.iv245
  %i.em = load double, ptr %i.el, align 8, !tbaa !48
  %i.en = tail call double @llvm.fmuladd.f64(double %i.ei, double %i.em, double %i.eg) ; 2 uses
  %indvars.iv.next238.3 = add nsw i64 %indvars.iv237, -4
  %.not155.not.3 = icmp sgt i64 %indvars.iv.next238.2, %indvars.iv
  br i1 %.not155.not.3, label %.lr.ph180.new, label %.lr.ph184, !llvm.loop !316

._crit_edge185:                                   ; preds = %.lr.ph184.new, %.prol.loopexit331
  %indvars.iv.next246 = add nuw nsw i64 %indvars.iv245, 1 ; 2 uses
  %exitcond249.not = icmp eq i64 %indvars.iv.next246, %wide.trip.count248
  br i1 %exitcond249.not, label %.lr.ph190.preheader, label %.lr.ph180, !llvm.loop !317

.lr.ph190.preheader:                              ; preds = %._crit_edge185
  %xtraiter338 = and i64 %i.o, 3                  ; 2 uses
  %lcmp.mod339.not = icmp eq i64 %xtraiter338, 0
  %i.eo = sub i64 %smin337, %wide.trip.count
  %i.ep = icmp ugt i64 %i.eo, -4
  %1 = sub i64 %i.i, %indvar                      ; 3 uses
  %min.iters.check = icmp ult i64 %1, 4
  %n.vec = and i64 %1, -4                         ; 3 uses
  %i.eq = add i64 %indvars.iv, %n.vec
  %cmp.n = icmp eq i64 %1, %n.vec
  br label %.lr.ph190

.lr.ph184.new:                                    ; preds = %.prol.loopexit331, %.lr.ph184.new
  %indvars.iv240 = phi i64 [ %indvars.iv.next241.1, %.lr.ph184.new ], [ %indvars.iv240.unr, %.prol.loopexit331 ] ; 4 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv240
  %i.es = load double, ptr %i.er, align 8, !tbaa !48
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv240
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !65
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %indvars.iv245 ; 2 uses
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !48
  %i.ex = tail call double @llvm.fmuladd.f64(double %i.dg, double %i.es, double %i.ew)
  store double %i.ex, ptr %i.ev, align 8, !tbaa !48
  %indvars.iv.next241 = add nuw nsw i64 %indvars.iv240, 1 ; 2 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next241
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !48
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next241
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !65
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv245 ; 2 uses
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !48
  %i.fe = tail call double @llvm.fmuladd.f64(double %i.dg, double %i.ez, double %i.fd)
  store double %i.fe, ptr %i.fc, align 8, !tbaa !48
  %indvars.iv.next241.1 = add nuw nsw i64 %indvars.iv240, 2 ; 2 uses
  %exitcond244.not.1 = icmp eq i64 %indvars.iv.next241.1, %wide.trip.count248
  br i1 %exitcond244.not.1, label %._crit_edge185, label %.lr.ph184.new, !llvm.loop !318

.lr.ph190:                                        ; preds = %.lr.ph190.preheader, %._crit_edge195
  %indvars.iv258 = phi i64 [ %indvars.iv.next259, %._crit_edge195 ], [ 0, %.lr.ph190.preheader ] ; 3 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv258
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !65 ; 5 uses
  br i1 %lcmp.mod339.not, label %.prol.loopexit336, label %.prol.preheader335

.prol.preheader335:                               ; preds = %.lr.ph190, %.prol.preheader335
  %indvars.iv250.prol = phi i64 [ %indvars.iv.next251.prol, %.prol.preheader335 ], [ %i.i, %.lr.ph190 ] ; 3 uses
  %.0135188.prol = phi double [ %i.fl, %.prol.preheader335 ], [ 0.000000e+00, %.lr.ph190 ]
  %prol.iter340 = phi i64 [ %prol.iter340.next, %.prol.preheader335 ], [ 0, %.lr.ph190 ]
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv250.prol
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !48
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.fg, i64 %indvars.iv250.prol
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !48
  %i.fl = tail call double @llvm.fmuladd.f64(double %i.fi, double %i.fk, double %.0135188.prol) ; 3 uses
  %indvars.iv.next251.prol = add nsw i64 %indvars.iv250.prol, -1 ; 2 uses
  %prol.iter340.next = add i64 %prol.iter340, 1   ; 2 uses
  %prol.iter340.cmp.not = icmp eq i64 %prol.iter340.next, %xtraiter338
  br i1 %prol.iter340.cmp.not, label %.prol.loopexit336, label %.prol.preheader335, !llvm.loop !319

.prol.loopexit336:                                ; preds = %.prol.preheader335, %.lr.ph190
  %indvars.iv250.unr = phi i64 [ %i.i, %.lr.ph190 ], [ %indvars.iv.next251.prol, %.prol.preheader335 ]
  %.0135188.unr = phi double [ 0.000000e+00, %.lr.ph190 ], [ %i.fl, %.prol.preheader335 ]
  %.lcssa323.unr = phi double [ poison, %.lr.ph190 ], [ %i.fl, %.prol.preheader335 ]
  br i1 %i.ep, label %.lr.ph194, label %.lr.ph190.new

._crit_edge198:                                   ; preds = %._crit_edge195
  %i.fm = load double, ptr %i.bx, align 8, !tbaa !48
  %i.fn = fmul double %.lcssa320, %i.fm
  store double %i.fn, ptr %i.bx, align 8, !tbaa !48
  %i.fo = fmul double %.lcssa320, %.0141
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !65
  %i.fr = getelementptr [8 x i8], ptr %i.fq, i64 %indvars.iv
  %i.fs = getelementptr i8, ptr %i.fr, i64 -8
  store double %i.fo, ptr %i.fs, align 8, !tbaa !48
  br label %._crit_edge.thread

.lr.ph194:                                        ; preds = %.lr.ph190.new, %.prol.loopexit336
  %.lcssa323 = phi double [ %.lcssa323.unr, %.prol.loopexit336 ], [ %i.hf, %.lr.ph190.new ]
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv258
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !65 ; 6 uses
  %i.fv = fneg double %.lcssa323
  %i.fw = fdiv double %i.fv, %i.cc                ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph194
  %scevgep = getelementptr nuw i8, ptr %i.fu, i64 %i.v
  %scevgep302 = getelementptr i8, ptr %i.fu, i64 %i.j
  %bound0 = icmp ult ptr %scevgep, %scevgep304
  %bound1 = icmp ult ptr %scevgep303, %scevgep302
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.fw, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fx = add nuw i64 %indvars.iv, %index         ; 2 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.fx ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %wide.load = load <2 x double>, ptr %i.fy, align 8, !tbaa !48, !alias.scope !336
  %wide.load305 = load <2 x double>, ptr %i.fz, align 8, !tbaa !48, !alias.scope !336
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.fx ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 16 ; 2 uses
  %wide.load306 = load <2 x double>, ptr %i.ga, align 8, !tbaa !48, !alias.scope !337, !noalias !336
  %wide.load307 = load <2 x double>, ptr %i.gb, align 8, !tbaa !48, !alias.scope !337, !noalias !336
  %i.gc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load306)
  %i.gd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load305, <2 x double> %wide.load307)
  store <2 x double> %i.gc, ptr %i.ga, align 8, !tbaa !48, !alias.scope !337, !noalias !336
  store <2 x double> %i.gd, ptr %i.gb, align 8, !tbaa !48, !alias.scope !337, !noalias !336
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ge = icmp eq i64 %index.next, %n.vec
  br i1 %i.ge, label %middle.block, label %vector.body, !llvm.loop !323

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge195, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph194, %middle.block
  %indvars.iv253.ph = phi i64 [ %indvars.iv, %vector.memcheck ], [ %indvars.iv, %.lr.ph194 ], [ %i.eq, %middle.block ] ; 6 uses
  %i.gf = sub i64 %wide.trip.count, %indvars.iv253.ph
  %xtraiter341 = and i64 %i.gf, 1
  %lcmp.mod342.not = icmp eq i64 %xtraiter341, 0
  br i1 %lcmp.mod342.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv253.ph
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !48
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %indvars.iv253.ph ; 2 uses
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !48
  %i.gk = tail call double @llvm.fmuladd.f64(double %i.fw, double %i.gh, double %i.gj)
  store double %i.gk, ptr %i.gi, align 8, !tbaa !48
  %indvars.iv.next254.prol = add nuw nsw i64 %indvars.iv253.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv253.unr = phi i64 [ %indvars.iv253.ph, %scalar.ph.preheader ], [ %indvars.iv.next254.prol, %scalar.ph.prol ]
  %i.gl = icmp eq i64 %indvars.iv253.ph, %i.n
  br i1 %i.gl, label %._crit_edge195, label %scalar.ph

.lr.ph190.new:                                    ; preds = %.prol.loopexit336, %.lr.ph190.new
  %indvars.iv250 = phi i64 [ %indvars.iv.next251.3, %.lr.ph190.new ], [ %indvars.iv250.unr, %.prol.loopexit336 ] ; 6 uses
  %.0135188 = phi double [ %i.hf, %.lr.ph190.new ], [ %.0135188.unr, %.prol.loopexit336 ]
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv250
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !48
  %i.go = getelementptr inbounds [8 x i8], ptr %i.fg, i64 %indvars.iv250
  %i.gp = load double, ptr %i.go, align 8, !tbaa !48
  %i.gq = tail call double @llvm.fmuladd.f64(double %i.gn, double %i.gp, double %.0135188)
  %indvars.iv.next251 = add nsw i64 %indvars.iv250, -1 ; 2 uses
  %i.gr = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv.next251
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !48
  %i.gt = getelementptr inbounds [8 x i8], ptr %i.fg, i64 %indvars.iv.next251
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !48
  %i.gv = tail call double @llvm.fmuladd.f64(double %i.gs, double %i.gu, double %i.gq)
  %indvars.iv.next251.1 = add nsw i64 %indvars.iv250, -2 ; 2 uses
  %i.gw = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv.next251.1
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !48
  %i.gy = getelementptr inbounds [8 x i8], ptr %i.fg, i64 %indvars.iv.next251.1
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !48
  %i.ha = tail call double @llvm.fmuladd.f64(double %i.gx, double %i.gz, double %i.gv)
  %indvars.iv.next251.2 = add nsw i64 %indvars.iv250, -3 ; 3 uses
  %i.hb = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv.next251.2
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !48
  %i.hd = getelementptr inbounds [8 x i8], ptr %i.fg, i64 %indvars.iv.next251.2
  %i.he = load double, ptr %i.hd, align 8, !tbaa !48
  %i.hf = tail call double @llvm.fmuladd.f64(double %i.hc, double %i.he, double %i.ha) ; 2 uses
  %indvars.iv.next251.3 = add nsw i64 %indvars.iv250, -4
  %.not153.not.3 = icmp sgt i64 %indvars.iv.next251.2, %indvars.iv
  br i1 %.not153.not.3, label %.lr.ph190.new, label %.lr.ph194, !llvm.loop !324

._crit_edge195:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next259 = add nuw nsw i64 %indvars.iv258, 1 ; 2 uses
  %exitcond262.not = icmp eq i64 %indvars.iv.next259, %wide.trip.count261
  br i1 %exitcond262.not, label %._crit_edge198, label %.lr.ph190, !llvm.loop !325

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv253 = phi i64 [ %indvars.iv.next254.1, %scalar.ph ], [ %indvars.iv253.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv253
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !48
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %indvars.iv253 ; 2 uses
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !48
  %i.hk = tail call double @llvm.fmuladd.f64(double %i.fw, double %i.hh, double %i.hj)
  store double %i.hk, ptr %i.hi, align 8, !tbaa !48
  %indvars.iv.next254 = add nuw nsw i64 %indvars.iv253, 1 ; 2 uses
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next254
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !48
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %indvars.iv.next254 ; 2 uses
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !48
  %i.hp = tail call double @llvm.fmuladd.f64(double %i.fw, double %i.hm, double %i.ho)
  store double %i.hp, ptr %i.hn, align 8, !tbaa !48
  %indvars.iv.next254.1 = add nuw nsw i64 %indvars.iv253, 2 ; 2 uses
  %exitcond257.not.1 = icmp eq i64 %indvars.iv.next254.1, %wide.trip.count261
  br i1 %exitcond257.not.1, label %._crit_edge195, label %scalar.ph, !llvm.loop !326

._crit_edge.thread:                               ; preds = %.preheader167, %._crit_edge198, %._crit_edge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond265.not = icmp eq i64 %indvars.iv.next, %wide.trip.count264
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond265.not, label %.preheader160, label %.preheader167, !llvm.loop !327

.preheader159:                                    ; preds = %.preheader159.lr.ph, %._crit_edge203
  %indvars.iv271 = phi i64 [ 0, %.preheader159.lr.ph ], [ %indvars.iv.next272, %._crit_edge203 ] ; 4 uses
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv271
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !65 ; 2 uses
  br i1 %min.iters.check309, label %scalar.ph308.preheader, label %vector.ph310

vector.ph310:                                     ; preds = %.preheader159
  %broadcast.splatinsert312 = insertelement <2 x i64> poison, i64 %indvars.iv271, i64 0
  %broadcast.splat313 = shufflevector <2 x i64> %broadcast.splatinsert312, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body314

vector.body314:                                   ; preds = %vector.body314, %vector.ph310
end_hunk_0
