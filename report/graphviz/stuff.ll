Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/stuff?download=true
inline.NumInlined: 37
inline.NumDeleted: 15
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@initial_positions:bb.a
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.i.i.i
  store double %i.aa, ptr %i.ae, align 8, !tbaa !18
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.af = load i16, ptr @Ndim, align 2, !tbaa !65
  %i.ag = zext i16 %i.af to i64
  %i.ah = icmp samesign ult i64 %indvars.iv.next.i.i.i, %i.ag
  br i1 %i.ah, label %.lr.ph.i.i.i, label %randompos.exit, !llvm.loop !0

randompos.exit:                                   ; preds = %.lr.ph.i.i.i, %bb.g, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ai = load ptr, ptr %i.f, align 8, !tbaa !35
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 184
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !53
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.next
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !54 ; 2 uses
  %.not12 = icmp eq ptr %i.am, null
  br i1 %.not12, label %.loopexit, label %.lr.ph, !llvm.loop !104

.loopexit:                                        ; preds = %randompos.exit, %bb.f, %bb.c
  ret void
}

declare i32 @checkStart(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare void @agwarningf(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define void @diffeq_model(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [10 x double], align 16           ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.b = load i8, ptr @Verbose, align 1, !tbaa !23
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !14
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.7, i64 25, i64 1, ptr %i.c) #23 ; 0 uses
  tail call void @start_timer() #22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 208
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !64   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !63
  %i.j = icmp sgt i32 %1, 0
  br i1 %i.j, label %.preheader83.preheader, label %._crit_edge102

.preheader83.preheader:                           ; preds = %bb.c
  %wide.trip.count127 = zext nneg i32 %1 to i64   ; 3 uses
  br label %.preheader83

.preheader83:                                     ; preds = %.preheader83.preheader, %._crit_edge
  %indvars.iv124 = phi i64 [ 0, %.preheader83.preheader ], [ %indvars.iv.next125, %._crit_edge ] ; 7 uses
  %.not116 = icmp eq i64 %indvars.iv124, 0
  br i1 %.not116, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader83
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv124
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv124
  br label %bb.d

.preheader81.lr.ph:                               ; preds = %._crit_edge
  %i.m = load i16, ptr @Ndim, align 2, !tbaa !65  ; 2 uses
  %.not117 = icmp eq i16 %i.m, 0
  %.pre157 = load ptr, ptr %i.d, align 8, !tbaa !35 ; 6 uses
  br i1 %.not117, label %.preheader80, label %.preheader81.lr.ph.split

.preheader81.lr.ph.split:                         ; preds = %.preheader81.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %.pre157, i64 216
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !66   ; 9 uses
  %i.p = zext i16 %i.m to i64
  %i.q = shl nuw nsw i64 %i.p, 3                  ; 9 uses
  %xtraiter = and i64 %wide.trip.count127, 7      ; 3 uses
  %i.r = icmp ult i32 %1, 8
  br i1 %i.r, label %.preheader81.epil.preheader, label %.preheader81.lr.ph.split.new

.preheader81.lr.ph.split.new:                     ; preds = %.preheader81.lr.ph.split
  %unroll_iter = and i64 %wide.trip.count127, 2147483640
  br label %.preheader81

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 5 uses
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !16
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  %i.u = load double, ptr %i.t, align 8, !tbaa !18 ; 2 uses
  %i.v = fmul double %i.u, %i.u
  %i.w = fdiv double 1.000000e+00, %i.v           ; 2 uses
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !35
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 184
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !53   ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv124
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !54
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !54
  %i.ae = tail call ptr @agedge(ptr noundef %0, ptr noundef %i.ab, ptr noundef %i.ad, ptr noundef null, i32 noundef 0) #22 ; 2 uses
  %.not79 = icmp eq ptr %i.ae, null
  br i1 %.not79, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !35
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 176
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !118
  %i.aj = fmul double %i.w, %i.ai
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi double [ %i.aj, %bb.e ], [ %i.w, %bb.d ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !16
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv124
  store double %.0, ptr %i.am, align 8, !tbaa !18
  %i.an = load ptr, ptr %i.l, align 8, !tbaa !16
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv
  store double %.0, ptr %i.ao, align 8, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv124
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !105

._crit_edge:                                      ; preds = %bb.f, %.preheader83
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1 ; 2 uses
  %exitcond128.not = icmp eq i64 %indvars.iv.next125, %wide.trip.count127
  br i1 %exitcond128.not, label %.preheader81.lr.ph, label %.preheader83, !llvm.loop !106

.preheader81:                                     ; preds = %.preheader81, %.preheader81.lr.ph.split.new
  %indvars.iv132 = phi i64 [ 0, %.preheader81.lr.ph.split.new ], [ %indvars.iv.next133.7, %.preheader81 ] ; 9 uses
  %niter = phi i64 [ 0, %.preheader81.lr.ph.split.new ], [ %niter.next.7, %.preheader81 ]
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv132
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !16
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aq, i8 0, i64 %i.q, i1 false), !tbaa !18
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv132
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !16
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.at, i8 0, i64 %i.q, i1 false), !tbaa !18
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv132
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !16
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aw, i8 0, i64 %i.q, i1 false), !tbaa !18
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv132
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !16
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.az, i8 0, i64 %i.q, i1 false), !tbaa !18
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv132
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !16
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bc, i8 0, i64 %i.q, i1 false), !tbaa !18
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv132
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !16
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bf, i8 0, i64 %i.q, i1 false), !tbaa !18
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv132
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !16
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bi, i8 0, i64 %i.q, i1 false), !tbaa !18
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv132
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 56
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !16
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bl, i8 0, i64 %i.q, i1 false), !tbaa !18
  %indvars.iv.next133.7 = add nuw nsw i64 %indvars.iv132, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.preheader80.loopexit.unr-lcssa, label %.preheader81, !llvm.loop !107

.preheader80.loopexit.unr-lcssa:                  ; preds = %.preheader81
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader80, label %.preheader81.epil.preheader

.preheader81.epil.preheader:                      ; preds = %.preheader80.loopexit.unr-lcssa, %.preheader81.lr.ph.split
  %indvars.iv132.epil.init = phi i64 [ 0, %.preheader81.lr.ph.split ], [ %indvars.iv.next133.7, %.preheader80.loopexit.unr-lcssa ]
  %lcmp.mod187 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod187)
  br label %.preheader81.epil

.preheader81.epil:                                ; preds = %.preheader81.epil, %.preheader81.epil.preheader
  %indvars.iv132.epil = phi i64 [ %indvars.iv132.epil.init, %.preheader81.epil.preheader ], [ %indvars.iv.next133.epil, %.preheader81.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader81.epil.preheader ], [ %epil.iter.next, %.preheader81.epil ]
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv132.epil
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !16
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bn, i8 0, i64 %i.q, i1 false), !tbaa !18
  %indvars.iv.next133.epil = add nuw nsw i64 %indvars.iv132.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader80, label %.preheader81.epil, !llvm.loop !108

.preheader80:                                     ; preds = %.preheader80.loopexit.unr-lcssa, %.preheader81.epil, %.preheader81.lr.ph
  %i.bo = getelementptr inbounds nuw i8, ptr %.pre157, i64 184
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !53 ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !54 ; 2 uses
  %.not7798 = icmp eq ptr %i.bq, null
  br i1 %.not7798, label %._crit_edge102, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader80
  %i.br = getelementptr inbounds nuw i8, ptr %.pre157, i64 208
  %i.bs = getelementptr inbounds nuw i8, ptr %.pre157, i64 200
  %i.bt = getelementptr inbounds nuw i8, ptr %.pre157, i64 224
  %i.bu = getelementptr inbounds nuw i8, ptr %.pre157, i64 216
  %.pre159 = load i16, ptr @Ndim, align 2
  %wide.trip.count147 = zext nneg i32 %1 to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.lr.ph, %._crit_edge94.us
  %2 = phi i16 [ %.pre159, %.preheader.lr.ph ], [ %5, %._crit_edge94.us ]
  %indvars.iv154 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next155, %._crit_edge94.us ] ; 6 uses
  %3 = phi ptr [ %i.bq, %.preheader.lr.ph ], [ %i.et, %._crit_edge94.us ]
  %.fr = freeze i16 %2                            ; 6 uses
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.not.i.us = icmp eq i16 %.fr, 0
  %wide.trip.count.i.us = zext i16 %.fr to i64    ; 5 uses
  br i1 %.not.i.us, label %._crit_edge94.us, label %.lr.ph93.split.us.us.preheader

.lr.ph93.split.us.us.preheader:                   ; preds = %.preheader.us
  %wide.trip.count142 = zext i16 %.fr to i64
  %i.bv = shl nuw nsw i64 %wide.trip.count.i.us, 3 ; 2 uses
  %xtraiter188 = and i64 %wide.trip.count.i.us, 1
  %i.bw = icmp eq i16 %.fr, 1
  %unroll_iter193 = and i64 %wide.trip.count.i.us, 65534
  %lcmp.mod190.not = icmp eq i64 %xtraiter188, 0
  %lcmp.mod192 = trunc i16 %.fr to i1
  %min.iters.check = icmp eq i16 %.fr, 1
  %n.vec = and i64 %wide.trip.count.i.us, 65534   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.us
  br label %.lr.ph93.split.us.us

.lr.ph93.split.us.us:                             ; preds = %.lr.ph93.split.us.us.preheader, %..loopexit_crit_edge.us.us
  %indvars.iv144 = phi i64 [ 0, %.lr.ph93.split.us.us.preheader ], [ %indvars.iv.next145, %..loopexit_crit_edge.us.us ] ; 7 uses
  %i.bx = shl i64 %indvars.iv144, 3
  %i.by = add i64 %i.bx, 8                        ; 2 uses
  %i.bz = icmp eq i64 %indvars.iv154, %indvars.iv144
  br i1 %i.bz, label %..loopexit_crit_edge.us.us, label %.lr.ph.i.us.us.preheader

.lr.ph.i.us.us.preheader:                         ; preds = %.lr.ph93.split.us.us
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv144
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !54
  %i.cc = load ptr, ptr %4, align 8, !tbaa !35
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 176
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !75 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !35
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 176
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !75 ; 3 uses
  br i1 %i.bw, label %.lr.ph.i.us.us.epil.preheader, label %.lr.ph.i.us.us

.lr.ph.i.us.us:                                   ; preds = %.lr.ph.i.us.us.preheader, %.lr.ph.i.us.us
  %indvars.iv.i.us.us = phi i64 [ %indvars.iv.next.i.us.us.1, %.lr.ph.i.us.us ], [ 0, %.lr.ph.i.us.us.preheader ] ; 5 uses
  %.016.i.us.us = phi double [ %i.cw, %.lr.ph.i.us.us ], [ 0.000000e+00, %.lr.ph.i.us.us.preheader ]
  %niter194 = phi i64 [ %niter194.next.1, %.lr.ph.i.us.us ], [ 0, %.lr.ph.i.us.us.preheader ]
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.i.us.us
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !18
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.i.us.us
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !18
  %i.cn = fsub double %i.ck, %i.cm                ; 3 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i.us.us
  store double %i.cn, ptr %i.co, align 16, !tbaa !18
  %i.cp = tail call double @llvm.fmuladd.f64(double %i.cn, double %i.cn, double %.016.i.us.us)
  %indvars.iv.next.i.us.us = or disjoint i64 %indvars.iv.i.us.us, 1 ; 3 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.next.i.us.us
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !18
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.next.i.us.us
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !18
  %i.cu = fsub double %i.cr, %i.ct                ; 3 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i.us.us
  store double %i.cu, ptr %i.cv, align 8, !tbaa !18
  %i.cw = tail call double @llvm.fmuladd.f64(double %i.cu, double %i.cu, double %i.cp) ; 3 uses
  %indvars.iv.next.i.us.us.1 = add nuw nsw i64 %indvars.iv.i.us.us, 2 ; 2 uses
  %niter194.next.1 = add i64 %niter194, 2         ; 2 uses
  %niter194.ncmp.1 = icmp eq i64 %niter194.next.1, %unroll_iter193
  br i1 %niter194.ncmp.1, label %distvec.exit.us.us.unr-lcssa, label %.lr.ph.i.us.us, !llvm.loop !1

distvec.exit.us.us.unr-lcssa:                     ; preds = %.lr.ph.i.us.us
  br i1 %lcmp.mod190.not, label %distvec.exit.us.us, label %.lr.ph.i.us.us.epil.preheader

.lr.ph.i.us.us.epil.preheader:                    ; preds = %distvec.exit.us.us.unr-lcssa, %.lr.ph.i.us.us.preheader
  %indvars.iv.i.us.us.epil.init = phi i64 [ 0, %.lr.ph.i.us.us.preheader ], [ %indvars.iv.next.i.us.us.1, %distvec.exit.us.us.unr-lcssa ] ; 3 uses
  %.016.i.us.us.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.us.us.preheader ], [ %i.cw, %distvec.exit.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod192)
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.i.us.us.epil.init
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !18
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.i.us.us.epil.init
  %i.da = load double, ptr %i.cz, align 8, !tbaa !18
  %i.db = fsub double %i.cy, %i.da                ; 3 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i.us.us.epil.init
  store double %i.db, ptr %i.dc, align 8, !tbaa !18
  %i.dd = tail call double @llvm.fmuladd.f64(double %i.db, double %i.db, double %.016.i.us.us.epil.init)
  br label %distvec.exit.us.us

distvec.exit.us.us:                               ; preds = %distvec.exit.us.us.unr-lcssa, %.lr.ph.i.us.us.epil.preheader
  %.lcssa = phi double [ %i.cw, %distvec.exit.us.us.unr-lcssa ], [ %i.dd, %.lr.ph.i.us.us.epil.preheader ]
  %i.de = tail call double @sqrt(double noundef %.lcssa) #22 ; 2 uses
  %i.df = load ptr, ptr %i.br, align 8, !tbaa !64
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv154
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !16 ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %indvars.iv144 ; 4 uses
  %i.dj = load ptr, ptr %i.bs, align 8, !tbaa !63
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv154
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !16 ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %indvars.iv144 ; 4 uses
  %i.dn = load ptr, ptr %i.bt, align 8, !tbaa !68
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv154
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !67
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv144
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !16 ; 6 uses
  %i.ds = load ptr, ptr %i.bu, align 8, !tbaa !66
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv154
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !16 ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %distvec.exit.us.us
  %scevgep = getelementptr i8, ptr %i.dr, i64 %i.bv ; 3 uses
  %scevgep164 = getelementptr i8, ptr %i.du, i64 %i.bv ; 3 uses
  %scevgep165 = getelementptr i8, ptr %i.dh, i64 %i.by ; 2 uses
  %scevgep166 = getelementptr i8, ptr %i.dl, i64 %i.by ; 2 uses
  %bound0 = icmp ult ptr %i.dr, %scevgep164
  %bound1 = icmp ult ptr %i.du, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0167 = icmp ult ptr %i.dr, %scevgep165
  %bound1168 = icmp ult ptr %i.di, %scevgep
  %found.conflict169 = and i1 %bound0167, %bound1168
  %conflict.rdx = or i1 %found.conflict, %found.conflict169
  %bound0170 = icmp ult ptr %i.dr, %scevgep166
  %bound1171 = icmp ult ptr %i.dm, %scevgep
  %found.conflict172 = and i1 %bound0170, %bound1171
  %conflict.rdx173 = or i1 %conflict.rdx, %found.conflict172
  %bound0174 = icmp ult ptr %i.du, %scevgep165
  %bound1175 = icmp ult ptr %i.di, %scevgep164
  %found.conflict176 = and i1 %bound0174, %bound1175
  %conflict.rdx177 = or i1 %conflict.rdx173, %found.conflict176
  %bound0178 = icmp ult ptr %i.du, %scevgep166
  %bound1179 = icmp ult ptr %i.dm, %scevgep164
  %found.conflict180 = and i1 %bound0178, %bound1179
  %conflict.rdx181 = or i1 %conflict.rdx177, %found.conflict180
  br i1 %conflict.rdx181, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.dv = load double, ptr %i.di, align 8, !tbaa !18, !alias.scope !119
  %broadcast.splatinsert184.a = insertelement <2 x double> poison, double %i.dv, i64 0
  %broadcast.splat185.a = shufflevector <2 x double> %broadcast.splatinsert184.a, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dw = load double, ptr %i.dm, align 8, !tbaa !18, !alias.scope !120
  %broadcast.splatinsert182 = insertelement <2 x double> poison, double %i.dw, i64 0
  %broadcast.splat183 = shufflevector <2 x double> %broadcast.splatinsert182, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.de, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index
  %wide.load = load <2 x double>, ptr %i.dx, align 16, !tbaa !18 ; 2 uses
  %i.dy = fmul <2 x double> %wide.load, %broadcast.splat183
  %i.dz = fdiv <2 x double> %i.dy, %broadcast.splat
  %i.ea = fsub <2 x double> %wide.load, %i.dz
  %i.eb = fmul <2 x double> %broadcast.splat185.a, %i.ea ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %index
  store <2 x double> %i.eb, ptr %i.ec, align 8, !tbaa !18, !alias.scope !121, !noalias !122
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %index ; 2 uses
  %wide.load186 = load <2 x double>, ptr %i.ed, align 8, !tbaa !18, !alias.scope !123, !noalias !124
  %i.ee = fadd <2 x double> %i.eb, %wide.load186
  store <2 x double> %i.ee, ptr %i.ed, align 8, !tbaa !18, !alias.scope !123, !noalias !124
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ef = icmp eq i64 %index.next, %n.vec
  br i1 %i.ef, label %middle.block, label %vector.body, !llvm.loop !114

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %distvec.exit.us.us, %middle.block
  %indvars.iv139.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %distvec.exit.us.us ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv139 = phi i64 [ %indvars.iv.next140, %scalar.ph ], [ %indvars.iv139.ph, %scalar.ph.preheader ] ; 4 uses
  %i.eg = load double, ptr %i.di, align 8, !tbaa !18
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv139
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !18 ; 2 uses
  %i.ej = load double, ptr %i.dm, align 8, !tbaa !18
  %i.ek = fmul double %i.ei, %i.ej
  %i.el = fdiv double %i.ek, %i.de
  %i.em = fsub double %i.ei, %i.el
  %i.en = fmul double %i.eg, %i.em                ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %indvars.iv139
  store double %i.en, ptr %i.eo, align 8, !tbaa !18
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv139 ; 2 uses
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !18
  %i.er = fadd double %i.en, %i.eq
  store double %i.er, ptr %i.ep, align 8, !tbaa !18
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 1 ; 2 uses
  %exitcond143.not = icmp eq i64 %indvars.iv.next140, %wide.trip.count142
  br i1 %exitcond143.not, label %..loopexit_crit_edge.us.us, label %scalar.ph, !llvm.loop !115

..loopexit_crit_edge.us.us:                       ; preds = %scalar.ph, %middle.block, %.lr.ph93.split.us.us
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1 ; 2 uses
  %exitcond148.not = icmp eq i64 %indvars.iv.next145, %wide.trip.count147
  br i1 %exitcond148.not, label %._crit_edge94.us.loopexit120, label %.lr.ph93.split.us.us, !llvm.loop !116

._crit_edge94.us.loopexit120:                     ; preds = %..loopexit_crit_edge.us.us
  %.pre158 = load i16, ptr @Ndim, align 2
  br label %._crit_edge94.us

._crit_edge94.us:                                 ; preds = %.preheader.us, %._crit_edge94.us.loopexit120
  %5 = phi i16 [ %.pre158, %._crit_edge94.us.loopexit120 ], [ 0, %.preheader.us ]
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 1 ; 2 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.next155
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !54 ; 2 uses
  %.not77.us = icmp eq ptr %i.et, null
  br i1 %.not77.us, label %._crit_edge102, label %.preheader.us, !llvm.loop !117

._crit_edge102:                                   ; preds = %._crit_edge94.us, %bb.c, %.preheader80
  %i.eu = load i8, ptr @Verbose, align 1, !tbaa !23
  %.not78 = icmp eq i8 %i.eu, 0
  br i1 %.not78, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge102
  %i.ev = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.ew = tail call double @elapsed_sec() #22
  %i.ex = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ev, ptr noundef nonnull @.str.8, double noundef %i.ew) #19 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void
}

declare void @start_timer() local_unnamed_addr #6

declare ptr @agedge(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare double @elapsed_sec() local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define void @solve_model(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [10 x double], align 16           ; 7 uses
  %i.b = alloca [10 x double], align 16           ; 12 uses
  %i.c = alloca [10 x double], align 16           ; 10 uses
  %i.d = alloca [10 x double], align 16           ; 11 uses
  %i.e = ptrtoaddr ptr %i.d to i64
  %i.f = load double, ptr @Epsilon, align 8, !tbaa !18 ; 2 uses
  %i.g = fmul double %i.f, %i.f
  store double %i.g, ptr @Epsilon2, align 8, !tbaa !18
  %i.h = getelementptr i8, ptr %0, i64 16         ; 7 uses
  %.val39 = load ptr, ptr %i.h, align 8, !tbaa !35 ; 2 uses
  %i.i = load i32, ptr @choose_node.cnt, align 4, !tbaa !62
  %i.j = add nsw i32 %i.i, 1                      ; 2 uses
  store i32 %i.j, ptr @choose_node.cnt, align 4, !tbaa !62
  %i.k = getelementptr inbounds nuw i8, ptr %.val39, i64 192
  %i.l = load i32, ptr %i.k, align 8, !tbaa !157
  %i.m = load i32, ptr @MaxIter, align 4, !tbaa !62
  %.not.i40 = icmp slt i32 %i.l, %i.m
  br i1 %.not.i40, label %.preheader2.i.lr.ph, label %choose_node.exit.thread

.preheader2.i.lr.ph:                              ; preds = %bb.a
  %i.n = icmp sgt i32 %1, 0                       ; 3 uses
  %wide.trip.count20.i = zext nneg i32 %1 to i64  ; 3 uses
  br label %.preheader2.i

.preheader2.i:                                    ; preds = %.preheader2.i.lr.ph, %move_node.exit
  %i.o = phi i32 [ %i.j, %.preheader2.i.lr.ph ], [ %i.oi, %move_node.exit ]
  %.val41 = phi ptr [ %.val39, %.preheader2.i.lr.ph ], [ %.val, %move_node.exit ] ; 2 uses
  br i1 %i.n, label %.lr.ph8.i, label %._crit_edge9.i

.lr.ph8.i:                                        ; preds = %.preheader2.i
  %i.p = getelementptr inbounds nuw i8, ptr %.val41, i64 184
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !53
  %i.r = load i16, ptr @Ndim, align 2
  %.fr13.i = freeze i16 %i.r                      ; 3 uses
  %.not14.i = icmp eq i16 %.fr13.i, 0
  %i.s = getelementptr inbounds nuw i8, ptr %.val41, i64 216
  br i1 %.not14.i, label %._crit_edge9.i, label %.lr.ph8.split.us.preheader.i

.lr.ph8.split.us.preheader.i:                     ; preds = %.lr.ph8.i
  %wide.trip.count.i = zext i16 %.fr13.i to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.t = icmp ult i16 %.fr13.i, 4
  %unroll_iter = and i64 %wide.trip.count.i, 65532
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod198 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph8.split.us.i

.lr.ph8.split.us.i:                               ; preds = %bb.c, %.lr.ph8.split.us.preheader.i
  %indvars.iv17.i = phi i64 [ 0, %.lr.ph8.split.us.preheader.i ], [ %indvars.iv.next18.i, %bb.c ] ; 3 uses
  %.07.us.i = phi ptr [ null, %.lr.ph8.split.us.preheader.i ], [ %.1.us.i, %bb.c ] ; 2 uses
  %.0236.us.i = phi double [ 0.000000e+00, %.lr.ph8.split.us.preheader.i ], [ %.124.us.i, %bb.c ] ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv17.i
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !54   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !35
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 163
  %i.z = load i8, ptr %i.y, align 1, !tbaa !76
  %i.aa = icmp ugt i8 %i.z, 1
  br i1 %i.aa, label %bb.c, label %.preheader.us.i

.preheader.us.i.new:                              ; preds = %.preheader.us.i, %.preheader.us.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.preheader.us.i.new ], [ 0, %.preheader.us.i ] ; 5 uses
  %.0254.us.i = phi double [ %i.ap, %.preheader.us.i.new ], [ 0.000000e+00, %.preheader.us.i ]
  %niter = phi i64 [ %niter.next.3, %.preheader.us.i.new ], [ 0, %.preheader.us.i ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.i
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !18 ; 2 uses
  %i.ad = call double @llvm.fmuladd.f64(double %i.ac, double %i.ac, double %.0254.us.i)
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load double, ptr %i.af, align 8, !tbaa !18 ; 2 uses
  %i.ah = call double @llvm.fmuladd.f64(double %i.ag, double %i.ag, double %i.ad)
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !18 ; 2 uses
  %i.al = call double @llvm.fmuladd.f64(double %i.ak, double %i.ak, double %i.ah)
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load double, ptr %i.an, align 8, !tbaa !18 ; 2 uses
  %i.ap = call double @llvm.fmuladd.f64(double %i.ao, double %i.ao, double %i.al) ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.i.unr-lcssa, label %.preheader.us.i.new, !llvm.loop !125

bb.b:                                             ; preds = %._crit_edge.us.i
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.us.i, %bb.b, %.lr.ph8.split.us.i
  %.124.us.i = phi double [ %.0236.us.i, %.lr.ph8.split.us.i ], [ %.lcssa192, %bb.b ], [ %.0236.us.i, %._crit_edge.us.i ] ; 2 uses
  %.1.us.i = phi ptr [ %.07.us.i, %.lr.ph8.split.us.i ], [ %i.v, %bb.b ], [ %.07.us.i, %._crit_edge.us.i ] ; 2 uses
  %indvars.iv.next18.i = add nuw nsw i64 %indvars.iv17.i, 1 ; 2 uses
  %exitcond21.not.i = icmp eq i64 %indvars.iv.next18.i, %wide.trip.count20.i
  br i1 %exitcond21.not.i, label %._crit_edge9.i, label %.lr.ph8.split.us.i, !llvm.loop !126

.preheader.us.i:                                  ; preds = %.lr.ph8.split.us.i
  %i.aq = load ptr, ptr %i.s, align 8, !tbaa !66
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv17.i
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !16 ; 5 uses
  br i1 %i.t, label %.epil.preheader, label %.preheader.us.i.new

._crit_edge.us.i.unr-lcssa:                       ; preds = %.preheader.us.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.preheader.us.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next.i.3, %._crit_edge.us.i.unr-lcssa ]
  %.0254.us.i.epil.init = phi double [ 0.000000e+00, %.preheader.us.i ], [ %i.ap, %._crit_edge.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod198)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.d ] ; 2 uses
  %.0254.us.i.epil = phi double [ %.0254.us.i.epil.init, %.epil.preheader ], [ %i.av, %bb.d ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.i.epil
  %i.au = load double, ptr %i.at, align 8, !tbaa !18 ; 2 uses
  %i.av = call double @llvm.fmuladd.f64(double %i.au, double %i.au, double %.0254.us.i.epil) ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.i, label %bb.d, !llvm.loop !127

._crit_edge.us.i:                                 ; preds = %bb.d, %._crit_edge.us.i.unr-lcssa
  %.lcssa192 = phi double [ %i.ap, %._crit_edge.us.i.unr-lcssa ], [ %i.av, %bb.d ] ; 2 uses
  %i.aw = fcmp ogt double %.lcssa192, %.0236.us.i
  br i1 %i.aw, label %bb.b, label %bb.c

._crit_edge9.i:                                   ; preds = %bb.c, %.lr.ph8.i, %.preheader2.i
  %.023.lcssa.i = phi double [ 0.000000e+00, %.preheader2.i ], [ 0.000000e+00, %.lr.ph8.i ], [ %.124.us.i, %bb.c ] ; 2 uses
  %.0.lcssa.i = phi ptr [ null, %.preheader2.i ], [ null, %.lr.ph8.i ], [ %.1.us.i, %bb.c ] ; 3 uses
  %i.ax = load double, ptr @Epsilon2, align 8, !tbaa !18
  %i.ay = fcmp olt double %.023.lcssa.i, %i.ax
  br i1 %i.ay, label %choose_node.exit.thread, label %bb.e

bb.e:                                             ; preds = %._crit_edge9.i
  %i.az = load i8, ptr @Verbose, align 1, !tbaa !23
  %.not29.i = icmp ne i8 %i.az, 0
  %i.ba = srem i32 %i.o, 100
  %i.bb = icmp eq i32 %i.ba, 0
  %or.cond.i = select i1 %.not29.i, i1 %i.bb, i1 false
  br i1 %or.cond.i, label %bb.f, label %choose_node.exit

bb.f:                                             ; preds = %bb.e
  %i.bc = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.bd = call double @sqrt(double noundef %.023.lcssa.i) #22
  %i.be = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bc, ptr noundef nonnull @.str.20, double noundef %i.bd) #19 ; 0 uses
  %i.bf = load i32, ptr @choose_node.cnt, align 4, !tbaa !62
  %i.bg = srem i32 %i.bf, 1000
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.g, label %choose_node.exit

bb.g:                                             ; preds = %bb.f
  %i.bi = load ptr, ptr @stderr, align 8, !tbaa !14
  %fputc.i = call i32 @fputc(i32 10, ptr %i.bi)   ; 0 uses
  br label %choose_node.exit

choose_node.exit:                                 ; preds = %bb.e, %bb.f, %bb.g
  %.not = icmp eq ptr %.0.lcssa.i, null
  br i1 %.not, label %choose_node.exit.thread, label %bb.h

bb.h:                                             ; preds = %choose_node.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.c, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.d, i8 0, i64 80, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 16 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !35
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 164
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !60 ; 3 uses
  %i.bn = load i16, ptr @Ndim, align 2, !tbaa !65
end_hunk_0
