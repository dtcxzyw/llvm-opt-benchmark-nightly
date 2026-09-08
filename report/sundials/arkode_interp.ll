Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/arkode_interp?download=true
inline.NumInlined: 17
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@arkInterpInit_Lagrange:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr null, ptr %i.i, align 8, !tbaa !61
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = phi ptr [ %i.h, %bb.c ], [ %i.a, %bb.b ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !58   ; 2 uses
  %.not61 = icmp eq ptr %i.l, null
  br i1 %.not61, label %bb.g, label %.preheader67

.preheader67:                                     ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !59
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader67, %bb.f
  %i.p = phi ptr [ %i.y, %bb.f ], [ %i.j, %.preheader67 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ 0, %.preheader67 ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !58
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !50
  %.not64 = icmp eq ptr %i.t, null
  br i1 %.not64, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  tail call void @arkFreeVec(ptr noundef %0, ptr noundef nonnull %i.s) #14
  %i.u = load ptr, ptr %1, align 8, !tbaa !20     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !58
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv
  store ptr null, ptr %i.x, align 8, !tbaa !50
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %i.y = phi ptr [ %i.p, %.lr.ph ], [ %i.u, %bb.e ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !59
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp slt i64 %indvars.iv.next, %i.ab
  br i1 %i.ac, label %.lr.ph, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %bb.f
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !58
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader67
  %i.ad = phi ptr [ %i.l, %.preheader67 ], [ %.pre, %._crit_edge.loopexit ]
  tail call void @free(ptr noundef %i.ad) #14
  %i.ae = load ptr, ptr %1, align 8, !tbaa !20    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr null, ptr %i.af, align 8, !tbaa !58
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %._crit_edge, %bb.a
  %i.ag = phi ptr [ %i.j, %bb.d ], [ %i.ae, %._crit_edge ], [ %i.a, %bb.a ] ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !61
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ak = load i32, ptr %i.ag, align 8, !tbaa !55
  %i.al = sext i32 %i.ak to i64
  %i.am = shl nsw i64 %i.al, 3
  %i.an = tail call noalias ptr @malloc(i64 noundef %i.am) #15 ; 2 uses
  store ptr %i.an, ptr %i.ah, align 8, !tbaa !61
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %arkInterpFree.exit, label %bb.i

arkInterpFree.exit:                               ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !11
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !14
  tail call void %i.as(ptr noundef %0, ptr noundef nonnull %1) #14, !inline_history !43
  br label %bb.p

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !58
  %i.av = icmp eq ptr %i.au, null
  %i.aw = load i32, ptr %i.ag, align 8, !tbaa !55 ; 4 uses
  br i1 %i.av, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.ax = sext i32 %i.aw to i64
  %i.ay = shl nsw i64 %i.ax, 3
  %i.az = tail call noalias ptr @malloc(i64 noundef %i.ay) #15 ; 2 uses
  store ptr %i.az, ptr %i.at, align 8, !tbaa !58
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %arkInterpFree.exit65, label %.preheader

.preheader:                                       ; preds = %bb.j
  %i.bb = icmp sgt i32 %i.aw, 0
  br i1 %i.bb, label %.lr.ph71, label %.loopexit

.lr.ph71:                                         ; preds = %.preheader
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 632
  br label %bb.l

arkInterpFree.exit65:                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !11
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !14
  tail call void %i.bg(ptr noundef %0, ptr noundef nonnull %1) #14, !inline_history !43
  br label %bb.p

bb.k:                                             ; preds = %bb.l
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %i.bh = load ptr, ptr %1, align 8, !tbaa !20    ; 3 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !55 ; 2 uses
  %i.bj = sext i32 %i.bi to i64
  %i.bk = icmp slt i64 %indvars.iv.next79, %i.bj
  br i1 %i.bk, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %.lr.ph71, %bb.k
  %indvars.iv78 = phi i64 [ 0, %.lr.ph71 ], [ %indvars.iv.next79, %bb.k ] ; 2 uses
  %i.bl = phi ptr [ %i.ag, %.lr.ph71 ], [ %i.bh, %bb.k ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !58
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv78 ; 2 uses
  store ptr null, ptr %i.bo, align 8, !tbaa !50
  %i.bp = load ptr, ptr %i.bc, align 8, !tbaa !42
  %i.bq = tail call i32 @arkAllocVec(ptr noundef %0, ptr noundef %i.bp, ptr noundef nonnull %i.bo) #14
  %.not63 = icmp eq i32 %i.bq, 0
  br i1 %.not63, label %arkInterpFree.exit66, label %bb.k

arkInterpFree.exit66:                             ; preds = %bb.l
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !11
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !14
  tail call void %i.bu(ptr noundef nonnull %0, ptr noundef nonnull %1) #14, !inline_history !43
  br label %bb.p

.loopexit:                                        ; preds = %bb.k, %bb.i, %.preheader
  %i.bv = phi i32 [ %i.aw, %bb.i ], [ %i.aw, %.preheader ], [ %i.bi, %bb.k ] ; 3 uses
  %i.bw = phi ptr [ %i.ag, %bb.i ], [ %i.ag, %.preheader ], [ %i.bh, %bb.k ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !59 ; 2 uses
  %i.bz = icmp sgt i32 %i.bv, %i.by
  br i1 %i.bz, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.loopexit
  store i32 %i.bv, ptr %i.bx, align 4, !tbaa !59
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.loopexit
  %i.ca = phi i32 [ %i.bv, %bb.m ], [ %i.by, %.loopexit ] ; 3 uses
  %i.cb = icmp sgt i32 %i.ca, 0
  br i1 %i.cb, label %.lr.ph74, label %._crit_edge75

.lr.ph74:                                         ; preds = %bb.n
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !61
  %i.ce = zext nneg i32 %i.ca to i64
  %i.cf = shl nuw nsw i64 %i.ce, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.cd, i8 0, i64 %i.cf, i1 false), !tbaa !49
  br label %._crit_edge75

._crit_edge75:                                    ; preds = %.lr.ph74, %bb.n
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !58
  %i.ci = tail call i32 @N_VConstVectorArray(i32 noundef %i.ca, double noundef 0.000000e+00, ptr noundef %i.ch) #14
  %.not62 = icmp eq i32 %i.ci, 0
  br i1 %.not62, label %bb.o, label %bb.p

bb.o:                                             ; preds = %._crit_edge75
  %i.cj = load ptr, ptr %1, align 8, !tbaa !20    ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !61
  store double %2, ptr %i.cl, align 8, !tbaa !49
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !42
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !58
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !50
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.cn, ptr noundef %i.cq) #14
  %i.cr = load ptr, ptr %1, align 8, !tbaa !20
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  store i32 1, ptr %i.cs, align 8, !tbaa !60
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge75, %bb.o, %arkInterpFree.exit66, %arkInterpFree.exit65, %arkInterpFree.exit
  %.057 = phi i32 [ -20, %arkInterpFree.exit ], [ -20, %arkInterpFree.exit65 ], [ -20, %arkInterpFree.exit66 ], [ 0, %bb.o ], [ -28, %._crit_edge75 ]
  ret i32 %.057
}

; Function Attrs: nounwind uwtable
define noundef i32 @arkInterpUpdate_Lagrange(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, double noundef %2) #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !20     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !60   ; 4 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !55   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !61   ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !58   ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load double, ptr %i.i, align 8, !tbaa !56
  %i.k = fmul double %i.j, 1.000000e+02
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.m = load double, ptr %i.l, align 8, !tbaa !34
  %i.n = tail call double @llvm.fabs.f64(double %i.m)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.p = load double, ptr %i.o, align 8, !tbaa !48
  %i.q = tail call double @llvm.fabs.f64(double %i.p)
  %i.r = fadd double %i.n, %i.q
  %i.s = fmul double %i.k, %i.r                   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store double %i.s, ptr %i.t, align 8, !tbaa !57
  %i.u = load double, ptr %i.f, align 8, !tbaa !49
  %i.v = fsub double %2, %i.u
  %i.w = tail call double @llvm.fabs.f64(double %i.v) ; 3 uses
  %i.x = icmp sgt i32 %i.c, 1
  br i1 %i.x, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.c to i64
  %i.y = add nsw i64 %wide.trip.count, -1         ; 3 uses
  %xtraiter = and i64 %i.y, 1
  %i.z = icmp eq i32 %i.c, 2
  br i1 %i.z, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.y, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %.052 = phi double [ %i.w, %.lr.ph.preheader.new ], [ %.0..1, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !49
  %i.ac = fsub double %2, %i.ab
  %i.ad = tail call double @llvm.fabs.f64(double %i.ac) ; 2 uses
  %i.ae = fcmp olt double %.052, %i.ad
  %.0. = select i1 %i.ae, double %.052, double %i.ad ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !49
  %i.ai = fsub double %2, %i.ah
  %i.aj = tail call double @llvm.fabs.f64(double %i.ai) ; 2 uses
  %i.ak = fcmp olt double %.0., %i.aj
  %.0..1 = select i1 %i.ak, double %.0., double %i.aj ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.052.epil.init = phi double [ %i.w, %.lr.ph.preheader ], [ %.0..1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod66 = trunc i64 %i.y to i1
  tail call void @llvm.assume(i1 %lcmp.mod66)
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.epil.init
  %i.am = load double, ptr %i.al, align 8, !tbaa !49
  %i.an = fsub double %2, %i.am
  %i.ao = tail call double @llvm.fabs.f64(double %i.an) ; 2 uses
  %i.ap = fcmp olt double %.052.epil.init, %i.ao
  %.0..epil = select i1 %i.ap, double %.052.epil.init, double %i.ao
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.0.lcssa = phi double [ %i.w, %bb.a ], [ %.0..1, %._crit_edge.loopexit.unr-lcssa ], [ %.0..epil, %.lr.ph.epil.preheader ]
  %i.aq = fcmp ugt double %.0.lcssa, %i.s
  br i1 %i.aq, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.ar = add nsw i32 %i.d, -1                    ; 3 uses
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !50 ; 2 uses
  %i.av = icmp sgt i32 %i.d, 1
  br i1 %i.av, label %.lr.ph55.preheader, label %._crit_edge56

.lr.ph55.preheader:                               ; preds = %bb.b
  %i.aw = zext i32 %i.ar to i64                   ; 3 uses
  %3 = icmp ne i32 %i.ar, 0
  %.neg = sext i1 %3 to i64
  %i.ax = zext nneg i32 %i.d to i64
  %i.ay = add nsw i64 %.neg, %i.ax                ; 3 uses
  %min.iters.check = icmp ult i64 %i.ay, 4
  br i1 %min.iters.check, label %.lr.ph55.preheader64, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph55.preheader
  %n.vec = and i64 %i.ay, -4                      ; 3 uses
  %i.az = sub nsw i64 %i.aw, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ba = sub i64 %i.aw, %index                   ; 3 uses
  %i.bb = add nsw i64 %i.ba, -1                   ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.bb ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -8
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 -24
  %wide.load = load <2 x double>, ptr %i.bd, align 8, !tbaa !49
  %wide.load61 = load <2 x double>, ptr %i.be, align 8, !tbaa !49
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ba ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -8
  %i.bh = getelementptr inbounds i8, ptr %i.bf, i64 -24
  store <2 x double> %wide.load, ptr %i.bg, align 8, !tbaa !49
  store <2 x double> %wide.load61, ptr %i.bh, align 8, !tbaa !49
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bb ; 2 uses
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -8
  %i.bk = getelementptr inbounds i8, ptr %i.bi, i64 -24
  %wide.load62 = load <2 x ptr>, ptr %i.bj, align 8, !tbaa !50
  %wide.load63 = load <2 x ptr>, ptr %i.bk, align 8, !tbaa !50
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ba ; 2 uses
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -8
  %i.bn = getelementptr inbounds i8, ptr %i.bl, i64 -24
  store <2 x ptr> %wide.load62, ptr %i.bm, align 8, !tbaa !50
  store <2 x ptr> %wide.load63, ptr %i.bn, align 8, !tbaa !50
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !66

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ay, %n.vec
  br i1 %cmp.n, label %._crit_edge56, label %.lr.ph55.preheader64

.lr.ph55.preheader64:                             ; preds = %.lr.ph55.preheader, %middle.block
  %indvars.iv58.ph = phi i64 [ %i.aw, %.lr.ph55.preheader ], [ %i.az, %middle.block ]
  br label %.lr.ph55

.lr.ph55:                                         ; preds = %.lr.ph55.preheader64, %.lr.ph55
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %.lr.ph55 ], [ %indvars.iv58.ph, %.lr.ph55.preheader64 ] ; 4 uses
  %indvars.iv.next59 = add nsw i64 %indvars.iv58, -1 ; 3 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next59
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !49
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv58
  store double %i.bq, ptr %i.br, align 8, !tbaa !49
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next59
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !50
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv58
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !50
  %i.bv = icmp samesign ugt i64 %indvars.iv58, 1
  br i1 %i.bv, label %.lr.ph55, label %._crit_edge56, !llvm.loop !67

._crit_edge56:                                    ; preds = %.lr.ph55, %middle.block, %bb.b
  store ptr %i.au, ptr %i.h, align 8, !tbaa !50
  store double %2, ptr %i.f, align 8, !tbaa !49
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !68
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.bx, ptr noundef %i.au) #14
  %i.by = add nsw i32 %i.c, 1
  %i.bz = tail call i32 @llvm.smin.i32(i32 %i.by, i32 %i.d)
  %i.ca = load ptr, ptr %1, align 8, !tbaa !20
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  store i32 %i.bz, ptr %i.cb, align 8, !tbaa !60
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %._crit_edge56
  ret i32 0
}

; Function Attrs: nounwind uwtable
define range(i32 -28, 1) i32 @arkInterpEvaluate_Lagrange(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, double noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) #0 {
bb.a:
  %i.a = alloca [6 x double], align 16            ; 13 uses
  %i.b = alloca [6 x ptr], align 16               ; 10 uses
  %i.c = ptrtoaddr ptr %i.b to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.d = load ptr, ptr %1, align 8, !tbaa !20     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !60   ; 19 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !61   ; 33 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !58   ; 10 uses
  %i.k = ptrtoaddr ptr %i.j to i64
  %i.l = tail call i32 @llvm.smax.i32(i32 %4, i32 0)
  %i.m = add i32 %i.f, -1
  %i.n = tail call i32 @llvm.smin.i32(i32 %i.l, i32 %i.m) ; 5 uses
  %or.cond = icmp ugt i32 %3, 3
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %0, i32 noundef -22, i32 noundef 1211, ptr noundef nonnull @__func__.arkInterpEvaluate_Lagrange, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.6) #14
  br label %bb.al

bb.c:                                             ; preds = %bb.a
  %i.o = icmp sgt i32 %3, %i.n
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef %5) #14
  br label %bb.al

bb.e:                                             ; preds = %bb.c
  %i.p = icmp eq i32 %i.n, 0
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !50
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.q, ptr noundef %5) #14
  br label %bb.al

bb.g:                                             ; preds = %bb.e
  %i.r = load double, ptr %i.h, align 8, !tbaa !49 ; 17 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.t = load double, ptr %i.s, align 8, !tbaa !49 ; 13 uses
  %i.u = fsub double %i.r, %i.t
  %i.v = tail call double @llvm.fmuladd.f64(double %2, double %i.u, double %i.r) ; 27 uses
  %i.w = icmp eq i32 %i.n, 1
  br i1 %i.w, label %bb.h, label %.preheader153

.preheader153:                                    ; preds = %bb.g
  %.not154 = icmp slt i32 %i.f, 1                 ; 5 uses
  %.pre = add i32 %i.n, 1                         ; 6 uses
  br i1 %.not154, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader153
  %wide.trip.count = zext i32 %.pre to i64        ; 5 uses
  %min.iters.check = icmp ult i32 %i.n, 5
  %i.x = sub i64 %i.k, %i.c
  %diff.check = icmp ugt i64 %i.x, -32
  %or.cond233 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond233, label %.lr.ph.preheader242, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <2 x double> zeroinitializer, ptr %i.y, align 16, !tbaa !49
  store <2 x double> zeroinitializer, ptr %i.z, align 16, !tbaa !49
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !50
  %wide.load232 = load <2 x ptr>, ptr %i.ab, align 8, !tbaa !50
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store <2 x ptr> %wide.load, ptr %i.ac, align 16, !tbaa !50
  store <2 x ptr> %wide.load232, ptr %i.ad, align 16, !tbaa !50
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !69

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader242

.lr.ph.preheader242:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader242, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader242 ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader242 ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.prol
  store double 0.000000e+00, ptr %i.af, align 8, !tbaa !49
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.prol
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !50
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.prol
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !50
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !70

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader242
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader242 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.aj = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ak = icmp ugt i64 %i.aj, -4
  br i1 %i.ak, label %._crit_edge, label %.lr.ph

bb.h:                                             ; preds = %bb.g
  %i.al = icmp eq i32 %3, 0
  %i.am = icmp sgt i32 %i.f, 0                    ; 2 uses
  br i1 %i.al, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  br i1 %i.am, label %bb.j, label %LBasis.exit93

bb.j:                                             ; preds = %bb.i
end_hunk_0
