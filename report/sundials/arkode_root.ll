Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/arkode_root?download=true
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@arkRootCheck3:bb.a
  br i1 %.not59, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bm = load ptr, ptr %i.bi, align 8, !tbaa !35
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !47
  %i.bp = fcmp une double %i.bo, 0.000000e+00
  br i1 %i.bp, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 1, ptr %i.bk, align 4, !tbaa !38
  %.pre = load i32, ptr %i.ba, align 8, !tbaa !26
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l
  %i.bq = phi i32 [ %i.bj, %bb.j ], [ %i.bj, %bb.k ], [ %.pre, %bb.l ] ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.br = sext i32 %i.bq to i64
  %i.bs = icmp slt i64 %indvars.iv.next, %i.br
  br i1 %i.bs, label %bb.j, label %._crit_edge

._crit_edge:                                      ; preds = %bb.m
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 5 uses
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !46
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store double %i.bu, ptr %i.bv, align 8, !tbaa !44
  %i.bw = icmp sgt i32 %i.bq, 0
  br i1 %i.bw, label %.lr.ph63, label %._crit_edge64

.lr.ph63:                                         ; preds = %._crit_edge
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !35 ; 7 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !33 ; 7 uses
  %wide.trip.count = zext nneg i32 %i.bq to i64   ; 5 uses
  %min.iters.check = icmp ult i32 %i.bq, 8
  %i.cb = ptrtoaddr ptr %i.ca to i64
  %i.cc = ptrtoaddr ptr %i.by to i64
  %i.cd = sub i64 %i.cc, %i.cb
  %diff.check = icmp ugt i64 %i.cd, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph63
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %index ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %wide.load = load <2 x double>, ptr %i.ce, align 8, !tbaa !47
  %wide.load73 = load <2 x double>, ptr %i.cf, align 8, !tbaa !47
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %index ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store <2 x double> %wide.load, ptr %i.cg, align 8, !tbaa !47
  store <2 x double> %wide.load73, ptr %i.ch, align 8, !tbaa !47
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ci = icmp eq i64 %index.next, %n.vec
  br i1 %i.ci, label %middle.block, label %vector.body, !llvm.loop !57

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge64, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph63, %middle.block
  %indvars.iv67.ph = phi i64 [ 0, %.lr.ph63 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv67.prol = phi i64 [ %indvars.iv.next68.prol, %scalar.ph.prol ], [ %indvars.iv67.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv67.prol
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !47
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv67.prol
  store double %i.ck, ptr %i.cl, align 8, !tbaa !47
  %indvars.iv.next68.prol = add nuw nsw i64 %indvars.iv67.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !58

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv67.unr = phi i64 [ %indvars.iv67.ph, %scalar.ph.preheader ], [ %indvars.iv.next68.prol, %scalar.ph.prol ]
  %i.cm = sub nsw i64 %indvars.iv67.ph, %wide.trip.count
  %i.cn = icmp ugt i64 %i.cm, -4
  br i1 %i.cn, label %._crit_edge64, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv67 = phi i64 [ %indvars.iv.next68.3, %scalar.ph ], [ %indvars.iv67.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv67
  %i.cp = load double, ptr %i.co, align 8, !tbaa !47
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv67
  store double %i.cp, ptr %i.cq, align 8, !tbaa !47
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1 ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv.next68
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !47
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv.next68
  store double %i.cs, ptr %i.ct, align 8, !tbaa !47
  %indvars.iv.next68.1 = add nuw nsw i64 %indvars.iv67, 2 ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv.next68.1
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !47
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv.next68.1
  store double %i.cv, ptr %i.cw, align 8, !tbaa !47
  %indvars.iv.next68.2 = add nuw nsw i64 %indvars.iv67, 3 ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv.next68.2
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !47
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv.next68.2
  store double %i.cy, ptr %i.cz, align 8, !tbaa !47
  %indvars.iv.next68.3 = add nuw nsw i64 %indvars.iv67, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next68.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge64, label %scalar.ph, !llvm.loop !60

._crit_edge64:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %._crit_edge.thread, %._crit_edge
  %i.da = phi ptr [ %i.bd, %._crit_edge.thread ], [ %i.bt, %._crit_edge ], [ %i.bt, %middle.block ], [ %i.bt, %scalar.ph ], [ %i.bt, %scalar.ph.prol.loopexit ]
  %i.db = icmp eq i32 %i.ay, 0
  br i1 %i.db, label %bb.o, label %bb.n

bb.n:                                             ; preds = %._crit_edge64
  %i.dc = load double, ptr %i.da, align 8, !tbaa !46
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !56
  %i.df = tail call i32 @ARKodeGetDky(ptr noundef nonnull %0, double noundef %i.dc, i32 noundef 0, ptr noundef %i.de) #7 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge64, %bb.i, %bb.h, %bb.n, %bb.b
  %.056 = phi i32 [ -21, %bb.b ], [ 1, %bb.n ], [ -12, %bb.h ], [ -12, %bb.i ], [ 0, %._crit_edge64 ]
  ret i32 %.056
}

declare void @N_VScale(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 -21, 2) i32 @arkRootfind(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef null, i32 noundef -21, i32 noundef 765, ptr noundef nonnull @__func__.arkRootfind, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #7
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21   ; 34 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !26   ; 4 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge311.thread

._crit_edge311.thread:                            ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.h = load double, ptr %i.g, align 8, !tbaa !45
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store double %i.h, ptr %i.i, align 8, !tbaa !46
  br label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.e to i64    ; 6 uses
  br label %.outer431

.outer431:                                        ; preds = %.thread, %.lr.ph
  %indvars.iv.ph = phi i64 [ %indvars.iv.next384, %.thread ], [ 0, %.lr.ph ]
  %i.o = phi i1 [ false, %.thread ], [ true, %.lr.ph ]
  %.0208267.ph = phi i32 [ %.0208267, %.thread ], [ 0, %.lr.ph ]
  %.0214266.ph = phi i32 [ %i.au, %.thread ], [ 0, %.lr.ph ]
  %.0223264.ph = phi double [ %i.as, %.thread ], [ 0.000000e+00, %.lr.ph ]
  br label %bb.d

bb.d:                                             ; preds = %.outer431, %bb.j
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ %indvars.iv.ph, %.outer431 ] ; 9 uses
  %.0208267 = phi i32 [ %.1209, %bb.j ], [ %.0208267.ph, %.outer431 ] ; 6 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv
  %i.q = load i32, ptr %i.p, align 4, !tbaa !38
  %.not245 = icmp eq i32 %i.q, 0
  br i1 %.not245, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !34
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  %i.t = load double, ptr %i.s, align 8, !tbaa !47 ; 4 uses
  %i.u = fcmp oeq double %i.t, 0.000000e+00
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !37
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv
  %i.x = load i32, ptr %i.w, align 4, !tbaa !38
  %i.y = sitofp i32 %i.x to double
  %i.z = load ptr, ptr %i.m, align 8, !tbaa !33
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !47
  %i.ac = fmul double %i.ab, %i.y
  %i.ad = fcmp ugt double %i.ac, 0.000000e+00
  br i1 %i.ad, label %bb.j, label %1

1:                                                ; preds = %bb.f
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !33
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv
  %i.ag = load double, ptr %i.af, align 8, !tbaa !47 ; 3 uses
  %i.ah = bitcast double %i.ag to i64
  %i.ai = bitcast double %i.t to i64
  %.unshifted247 = xor i64 %i.ah, %i.ai
  %i.aj = icmp sgt i64 %.unshifted247, -1
  br i1 %i.aj, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = load ptr, ptr %i.n, align 8, !tbaa !37
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv
  %i.am = load i32, ptr %i.al, align 4, !tbaa !38
  %i.an = sitofp i32 %i.am to double
  %i.ao = fmul double %i.ag, %i.an
  %i.ap = fcmp ugt double %i.ao, 0.000000e+00
  br i1 %i.ap, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = fsub double %i.t, %i.ag
  %i.ar = fdiv double %i.t, %i.aq
  %i.as = tail call double @llvm.fabs.f64(double %i.ar) ; 2 uses
  %i.at = fcmp ogt double %i.as, %.0223264.ph
  br i1 %i.at, label %.thread, label %bb.j

bb.j:                                             ; preds = %1, %bb.f, %bb.i, %bb.h, %bb.g, %bb.d
  %.1209 = phi i32 [ 1, %1 ], [ %.0208267, %bb.f ], [ %.0208267, %bb.g ], [ %.0208267, %bb.d ], [ %.0208267, %bb.i ], [ %.0208267, %bb.h ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d

.thread:                                          ; preds = %bb.i
  %i.au = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %indvars.iv.next384 = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not385 = icmp eq i64 %indvars.iv.next384, %wide.trip.count
  br i1 %exitcond.not385, label %.preheader251.a, label %.outer431

._crit_edge:                                      ; preds = %bb.j
  %i.av = icmp ne i32 %.1209, 0                   ; 2 uses
  br i1 %i.o, label %.lr.ph310, label %.preheader251.a

.preheader251.a:                                  ; preds = %.thread, %._crit_edge
  %.1215386393 = phi i32 [ %.0214266.ph, %._crit_edge ], [ %i.au, %.thread ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 3 uses
  %i.az = load double, ptr %i.aw, align 8, !tbaa !45 ; 3 uses
  %i.ba = load double, ptr %i.ax, align 8, !tbaa !44 ; 2 uses
  %i.bb = fsub double %i.az, %i.ba                ; 2 uses
  %i.bc = tail call double @llvm.fabs.f64(double %i.bb) ; 2 uses
  %i.bd = load double, ptr %i.ay, align 8, !tbaa !48 ; 2 uses
  %i.be = fcmp ugt double %i.bc, %i.bd
  br i1 %i.be, label %.lr.ph296, label %.lr.ph307.sink.split

.lr.ph296:                                        ; preds = %.preheader251.a
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  br label %bb.o

.lr.ph310:                                        ; preds = %._crit_edge
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !45
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store double %i.bo, ptr %i.bp, align 8, !tbaa !46
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !34 ; 7 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !35 ; 7 uses
  %wide.trip.count348 = zext nneg i32 %i.e to i64
  %min.iters.check500 = icmp ult i32 %i.e, 8
  %i.bu = ptrtoaddr ptr %i.bt to i64
  %i.bv = ptrtoaddr ptr %i.br to i64
  %i.bw = sub i64 %i.bv, %i.bu
  %diff.check498 = icmp ugt i64 %i.bw, -32
  %or.cond = select i1 %min.iters.check500, i1 true, i1 %diff.check498
  br i1 %or.cond, label %scalar.ph499.preheader, label %vector.ph501

vector.ph501:                                     ; preds = %.lr.ph310
  %n.vec502 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vector.body503

vector.body503:                                   ; preds = %vector.body503, %vector.ph501
  %index504 = phi i64 [ 0, %vector.ph501 ], [ %index.next507, %vector.body503 ] ; 3 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %index504 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %wide.load505 = load <2 x double>, ptr %i.bx, align 8, !tbaa !47
  %wide.load506 = load <2 x double>, ptr %i.by, align 8, !tbaa !47
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %index504 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store <2 x double> %wide.load505, ptr %i.bz, align 8, !tbaa !47
  store <2 x double> %wide.load506, ptr %i.ca, align 8, !tbaa !47
  %index.next507 = add nuw i64 %index504, 4       ; 2 uses
  %i.cb = icmp eq i64 %index.next507, %n.vec502
  br i1 %i.cb, label %middle.block508, label %vector.body503, !llvm.loop !61

middle.block508:                                  ; preds = %vector.body503
  %cmp.n509 = icmp eq i64 %n.vec502, %wide.trip.count
  br i1 %cmp.n509, label %._crit_edge311, label %scalar.ph499.preheader

scalar.ph499.preheader:                           ; preds = %.lr.ph310, %middle.block508
  %indvars.iv345.ph = phi i64 [ 0, %.lr.ph310 ], [ %n.vec502, %middle.block508 ] ; 3 uses
  %xtraiter548 = and i64 %wide.trip.count, 3      ; 2 uses
  %lcmp.mod549.not = icmp eq i64 %xtraiter548, 0
  br i1 %lcmp.mod549.not, label %scalar.ph499.prol.loopexit, label %scalar.ph499.prol

scalar.ph499.prol:                                ; preds = %scalar.ph499.preheader, %scalar.ph499.prol
  %indvars.iv345.prol = phi i64 [ %indvars.iv.next346.prol, %scalar.ph499.prol ], [ %indvars.iv345.ph, %scalar.ph499.preheader ] ; 3 uses
  %prol.iter550 = phi i64 [ %prol.iter550.next, %scalar.ph499.prol ], [ 0, %scalar.ph499.preheader ]
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv345.prol
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !47
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv345.prol
  store double %i.cd, ptr %i.ce, align 8, !tbaa !47
  %indvars.iv.next346.prol = add nuw nsw i64 %indvars.iv345.prol, 1 ; 2 uses
  %prol.iter550.next = add i64 %prol.iter550, 1   ; 2 uses
  %prol.iter550.cmp.not = icmp eq i64 %prol.iter550.next, %xtraiter548
  br i1 %prol.iter550.cmp.not, label %scalar.ph499.prol.loopexit, label %scalar.ph499.prol, !llvm.loop !62

scalar.ph499.prol.loopexit:                       ; preds = %scalar.ph499.prol, %scalar.ph499.preheader
  %indvars.iv345.unr = phi i64 [ %indvars.iv345.ph, %scalar.ph499.preheader ], [ %indvars.iv.next346.prol, %scalar.ph499.prol ]
  %i.cf = sub nsw i64 %indvars.iv345.ph, %wide.trip.count
  %i.cg = icmp ugt i64 %i.cf, -4
  br i1 %i.cg, label %._crit_edge311, label %scalar.ph499

scalar.ph499:                                     ; preds = %scalar.ph499.prol.loopexit, %scalar.ph499
  %indvars.iv345 = phi i64 [ %indvars.iv.next346.3, %scalar.ph499 ], [ %indvars.iv345.unr, %scalar.ph499.prol.loopexit ] ; 6 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv345
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !47
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv345
  store double %i.ci, ptr %i.cj, align 8, !tbaa !47
  %indvars.iv.next346 = add nuw nsw i64 %indvars.iv345, 1 ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.next346
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !47
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.next346
  store double %i.cl, ptr %i.cm, align 8, !tbaa !47
  %indvars.iv.next346.1 = add nuw nsw i64 %indvars.iv345, 2 ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.next346.1
  %i.co = load double, ptr %i.cn, align 8, !tbaa !47
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.next346.1
  store double %i.co, ptr %i.cp, align 8, !tbaa !47
  %indvars.iv.next346.2 = add nuw nsw i64 %indvars.iv345, 3 ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.next346.2
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !47
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.next346.2
  store double %i.cr, ptr %i.cs, align 8, !tbaa !47
  %indvars.iv.next346.3 = add nuw nsw i64 %indvars.iv345, 4 ; 2 uses
  %exitcond349.not.3 = icmp eq i64 %indvars.iv.next346.3, %wide.trip.count348
  br i1 %exitcond349.not.3, label %._crit_edge311, label %scalar.ph499, !llvm.loop !63

._crit_edge311:                                   ; preds = %scalar.ph499.prol.loopexit, %scalar.ph499, %middle.block508
  %.mux = zext i1 %i.av to i32
  br i1 %i.av, label %.lr.ph313, label %.loopexit

.lr.ph313:                                        ; preds = %._crit_edge311
  %i.ct = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !36
  %i.cv = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !28
  %i.cx = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph313, %bb.n
  %indvars.iv350 = phi i64 [ 0, %.lr.ph313 ], [ %indvars.iv.next351, %bb.n ] ; 5 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv350 ; 2 uses
  store i32 0, ptr %i.cz, align 4, !tbaa !38
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv350
  %i.db = load i32, ptr %i.da, align 4, !tbaa !38
  %.not236 = icmp eq i32 %i.db, 0
  br i1 %.not236, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dc = load ptr, ptr %i.cx, align 8, !tbaa !34
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv350
  %i.de = load double, ptr %i.dd, align 8, !tbaa !47
  %i.df = fcmp oeq double %i.de, 0.000000e+00
  br i1 %i.df, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dg = load ptr, ptr %i.cy, align 8, !tbaa !33
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %indvars.iv350
  %i.di = load double, ptr %i.dh, align 8, !tbaa !47
  %i.dj = fcmp ogt double %i.di, 0.000000e+00
  %i.dk = select i1 %i.dj, i32 -1, i32 1
  store i32 %i.dk, ptr %i.cz, align 4, !tbaa !38
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.k
  %indvars.iv.next351 = add nuw nsw i64 %indvars.iv350, 1 ; 2 uses
  %i.dl = load i32, ptr %i.d, align 8, !tbaa !26
  %i.dm = sext i32 %i.dl to i64
  %i.dn = icmp slt i64 %indvars.iv.next351, %i.dm
  br i1 %i.dn, label %bb.k, label %.loopexit

bb.o:                                             ; preds = %.lr.ph296, %.backedge
  %i.do = phi double [ %i.bd, %.lr.ph296 ], [ %i.hw, %.backedge ] ; 3 uses
  %i.dp = phi double [ %i.bc, %.lr.ph296 ], [ %.pre-phi358, %.backedge ] ; 2 uses
  %i.dq = phi double [ %i.bb, %.lr.ph296 ], [ %.pre-phi, %.backedge ] ; 3 uses
  %i.dr = phi double [ %i.ba, %.lr.ph296 ], [ %i.hx, %.backedge ] ; 2 uses
  %i.ds = phi double [ %i.az, %.lr.ph296 ], [ %i.hy, %.backedge ] ; 3 uses
  %.0212295 = phi i32 [ -1, %.lr.ph296 ], [ %.0213294, %.backedge ]
  %.0213294 = phi i32 [ 0, %.lr.ph296 ], [ %.0213.be, %.backedge ] ; 2 uses
  %.v293 = phi double [ 5.000000e-01, %.lr.ph296 ], [ %.v.be, %.backedge ]
  %.2216292 = phi i32 [ %.1215386393, %.lr.ph296 ], [ %.3217.lcssa403, %.backedge ] ; 3 uses
  %.0229291 = phi double [ 1.000000e+00, %.lr.ph296 ], [ %.1230, %.backedge ]
  %i.dt = icmp eq i32 %.0212295, %.0213294
  %i.du = fmul double %.0229291, %.v293
  %.1230 = select i1 %i.dt, double %i.du, double 1.000000e+00 ; 2 uses
  %i.dv = load ptr, ptr %i.bf, align 8, !tbaa !34
  %i.dw = sext i32 %.2216292 to i64               ; 2 uses
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.dv, i64 %i.dw
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !47 ; 2 uses
  %i.dz = fmul double %i.dq, %i.dy
  %i.ea = load ptr, ptr %i.bg, align 8, !tbaa !33
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %i.dw
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !47
  %i.ed = fneg double %.1230
  %i.ee = tail call double @llvm.fmuladd.f64(double %i.ed, double %i.ec, double %i.dy)
  %i.ef = fdiv double %i.dz, %i.ee
  %i.eg = fsub double %i.ds, %i.ef                ; 2 uses
  %i.eh = fsub double %i.eg, %i.dr
  %i.ei = tail call double @llvm.fabs.f64(double %i.eh)
  %i.ej = fmul double %i.do, 5.000000e-01         ; 2 uses
  %i.ek = fcmp olt double %i.ei, %i.ej
  br i1 %i.ek, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.el = fdiv double %i.dp, %i.do                ; 2 uses
  %i.em = fcmp ogt double %i.el, 5.000000e+00
  %i.en = fdiv double 5.000000e-01, %i.el
  %i.eo = select i1 %i.em, double 1.000000e-01, double %i.en
  %i.ep = tail call double @llvm.fmuladd.f64(double %i.eo, double %i.dq, double %i.dr)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0227 = phi double [ %i.ep, %bb.p ], [ %i.eg, %bb.o ] ; 2 uses
  %i.eq = fsub double %i.ds, %.0227
  %i.er = tail call double @llvm.fabs.f64(double %i.eq)
  %i.es = fcmp olt double %i.er, %i.ej
  br i1 %i.es, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.et = fdiv double %i.dp, %i.do                ; 2 uses
  %i.eu = fcmp ogt double %i.et, 5.000000e+00
  %.neg = fdiv double -5.000000e-01, %i.et
  %i.ev = select i1 %i.eu, double -1.000000e-01, double %.neg
  %i.ew = tail call double @llvm.fmuladd.f64(double %i.ev, double %i.dq, double %i.ds)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.1228 = phi double [ %i.ew, %bb.r ], [ %.0227, %bb.q ] ; 7 uses
  %i.ex = load ptr, ptr %i.bh, align 8, !tbaa !55
  %i.ey = tail call i32 @ARKodeGetDky(ptr noundef nonnull %0, double noundef %.1228, i32 noundef 0, ptr noundef %i.ex) #7 ; 0 uses
  %i.ez = load ptr, ptr %i.c, align 8, !tbaa !22
  %i.fa = load ptr, ptr %i.bh, align 8, !tbaa !55
  %i.fb = load ptr, ptr %i.bi, align 8, !tbaa !35
  %i.fc = load ptr, ptr %i.bj, align 8, !tbaa !31
  %i.fd = tail call i32 %i.ez(double noundef %.1228, ptr noundef %i.fa, ptr noundef %i.fb, ptr noundef %i.fc) #7
  %i.fe = load i64, ptr %i.bk, align 8, !tbaa !43
  %i.ff = add nsw i64 %i.fe, 1
  store i64 %i.ff, ptr %i.bk, align 8, !tbaa !43
  %.not237 = icmp eq i32 %i.fd, 0
  br i1 %.not237, label %.preheader250, label %.loopexit

.preheader250:                                    ; preds = %bb.s
  %i.fg = load i32, ptr %i.d, align 8, !tbaa !26  ; 8 uses
  %i.fh = icmp sgt i32 %i.fg, 0
  br i1 %i.fh, label %.lr.ph277, label %.thread425

.thread425:                                       ; preds = %.preheader250
  store double %.1228, ptr %i.ax, align 8, !tbaa !44
  br label %._crit_edge290

.lr.ph277:                                        ; preds = %.preheader250
  %i.fi = load ptr, ptr %i.bl, align 8, !tbaa !28
  %wide.trip.count324 = zext nneg i32 %i.fg to i64 ; 14 uses
  br label %.outer

.outer:                                           ; preds = %.thread406, %.lr.ph277
  %indvars.iv321.ph = phi i64 [ %indvars.iv.next322411, %.thread406 ], [ 0, %.lr.ph277 ]
  %i.fj = phi i1 [ false, %.thread406 ], [ true, %.lr.ph277 ]
  %.2210275.ph = phi i32 [ %.2210275, %.thread406 ], [ 0, %.lr.ph277 ]
  %.3217274.ph = phi i32 [ %i.gp, %.thread406 ], [ %.2216292, %.lr.ph277 ] ; 2 uses
  %.2225272.ph = phi double [ %i.gn, %.thread406 ], [ 0.000000e+00, %.lr.ph277 ]
  br label %bb.t

bb.t:                                             ; preds = %.outer, %bb.z
  %indvars.iv321 = phi i64 [ %indvars.iv.next322, %bb.z ], [ %indvars.iv321.ph, %.outer ] ; 9 uses
  %.2210275 = phi i32 [ %.3211, %bb.z ], [ %.2210275.ph, %.outer ] ; 6 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %indvars.iv321
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !38
  %.not240 = icmp eq i32 %i.fl, 0
  br i1 %.not240, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fm = load ptr, ptr %i.bi, align 8, !tbaa !35
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %indvars.iv321
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !47 ; 4 uses
  %i.fp = fcmp oeq double %i.fo, 0.000000e+00
  br i1 %i.fp, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fq = load ptr, ptr %i.bm, align 8, !tbaa !37
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %indvars.iv321
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !38
  %i.ft = sitofp i32 %i.fs to double
  %i.fu = load ptr, ptr %i.bg, align 8, !tbaa !33
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %indvars.iv321
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !47
  %i.fx = fmul double %i.fw, %i.ft
  %i.fy = fcmp ugt double %i.fx, 0.000000e+00
  br i1 %i.fy, label %bb.z, label %2

2:                                                ; preds = %bb.v
  br label %bb.z

bb.w:                                             ; preds = %bb.u
  %i.fz = load ptr, ptr %i.bg, align 8, !tbaa !33
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %indvars.iv321
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !47 ; 3 uses
  %i.gc = bitcast double %i.gb to i64
  %i.gd = bitcast double %i.fo to i64
  %.unshifted = xor i64 %i.gc, %i.gd
  %i.ge = icmp sgt i64 %.unshifted, -1
  br i1 %i.ge, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gf = load ptr, ptr %i.bm, align 8, !tbaa !37
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %indvars.iv321
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !38
  %i.gi = sitofp i32 %i.gh to double
  %i.gj = fmul double %i.gb, %i.gi
  %i.gk = fcmp ugt double %i.gj, 0.000000e+00
  br i1 %i.gk, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gl = fsub double %i.fo, %i.gb
  %i.gm = fdiv double %i.fo, %i.gl
  %i.gn = tail call double @llvm.fabs.f64(double %i.gm) ; 2 uses
  %i.go = fcmp ogt double %i.gn, %.2225272.ph
  br i1 %i.go, label %.thread406, label %bb.z

bb.z:                                             ; preds = %2, %bb.v, %bb.y, %bb.x, %bb.w, %bb.t
  %.3211 = phi i32 [ 1, %2 ], [ %.2210275, %bb.v ], [ %.2210275, %bb.w ], [ %.2210275, %bb.t ], [ %.2210275, %bb.y ], [ %.2210275, %bb.x ] ; 2 uses
  %indvars.iv.next322 = add nuw nsw i64 %indvars.iv321, 1 ; 2 uses
  %exitcond325.not = icmp eq i64 %indvars.iv.next322, %wide.trip.count324
  br i1 %exitcond325.not, label %._crit_edge278, label %bb.t

.thread406:                                       ; preds = %bb.y
  %i.gp = trunc nuw nsw i64 %indvars.iv321 to i32 ; 2 uses
  %indvars.iv.next322411 = add nuw nsw i64 %indvars.iv321, 1 ; 2 uses
  %exitcond325.not412 = icmp eq i64 %indvars.iv.next322411, %wide.trip.count324
  br i1 %exitcond325.not412, label %._crit_edge278.thread416, label %.outer

._crit_edge278:                                   ; preds = %bb.z
  br i1 %i.fj, label %bb.aa, label %._crit_edge278.thread416

._crit_edge278.thread416:                         ; preds = %.thread406, %._crit_edge278
  %.4413420 = phi i32 [ %.3217274.ph, %._crit_edge278 ], [ %i.gp, %.thread406 ]
  store double %.1228, ptr %i.aw, align 8, !tbaa !45
  %i.gq = load ptr, ptr %i.bi, align 8, !tbaa !35 ; 7 uses
  %i.gr = load ptr, ptr %i.bf, align 8, !tbaa !34 ; 7 uses
  %wide.trip.count329 = zext nneg i32 %i.fg to i64
  %min.iters.check472 = icmp ult i32 %i.fg, 4
  %i.gs = ptrtoaddr ptr %i.gr to i64
  %i.gt = ptrtoaddr ptr %i.gq to i64
  %i.gu = sub i64 %i.gt, %i.gs
  %diff.check470 = icmp ugt i64 %i.gu, -32
  %or.cond515 = select i1 %min.iters.check472, i1 true, i1 %diff.check470
  br i1 %or.cond515, label %scalar.ph471.preheader, label %vector.ph473

vector.ph473:                                     ; preds = %._crit_edge278.thread416
  %n.vec474 = and i64 %wide.trip.count324, 2147483644 ; 3 uses
  br label %vector.body475

vector.body475:                                   ; preds = %vector.body475, %vector.ph473
  %index476 = phi i64 [ 0, %vector.ph473 ], [ %index.next479, %vector.body475 ] ; 3 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %index476 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %wide.load477 = load <2 x double>, ptr %i.gv, align 8, !tbaa !47
  %wide.load478 = load <2 x double>, ptr %i.gw, align 8, !tbaa !47
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %index476 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  store <2 x double> %wide.load477, ptr %i.gx, align 8, !tbaa !47
  store <2 x double> %wide.load478, ptr %i.gy, align 8, !tbaa !47
  %index.next479 = add nuw i64 %index476, 4       ; 2 uses
  %i.gz = icmp eq i64 %index.next479, %n.vec474
  br i1 %i.gz, label %middle.block480, label %vector.body475, !llvm.loop !64

middle.block480:                                  ; preds = %vector.body475
  %cmp.n481 = icmp eq i64 %n.vec474, %wide.trip.count324
  br i1 %cmp.n481, label %._crit_edge286, label %scalar.ph471.preheader

scalar.ph471.preheader:                           ; preds = %._crit_edge278.thread416, %middle.block480
  %indvars.iv326.ph = phi i64 [ 0, %._crit_edge278.thread416 ], [ %n.vec474, %middle.block480 ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count324, 3      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph471.prol.loopexit, label %scalar.ph471.prol

scalar.ph471.prol:                                ; preds = %scalar.ph471.preheader, %scalar.ph471.prol
  %indvars.iv326.prol = phi i64 [ %indvars.iv.next327.prol, %scalar.ph471.prol ], [ %indvars.iv326.ph, %scalar.ph471.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph471.prol ], [ 0, %scalar.ph471.preheader ]
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %indvars.iv326.prol
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !47
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv326.prol
  store double %i.hb, ptr %i.hc, align 8, !tbaa !47
  %indvars.iv.next327.prol = add nuw nsw i64 %indvars.iv326.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph471.prol.loopexit, label %scalar.ph471.prol, !llvm.loop !65

scalar.ph471.prol.loopexit:                       ; preds = %scalar.ph471.prol, %scalar.ph471.preheader
  %indvars.iv326.unr = phi i64 [ %indvars.iv326.ph, %scalar.ph471.preheader ], [ %indvars.iv.next327.prol, %scalar.ph471.prol ]
  %i.hd = sub nsw i64 %indvars.iv326.ph, %wide.trip.count324
  %i.he = icmp ugt i64 %i.hd, -4
  br i1 %i.he, label %._crit_edge286, label %scalar.ph471

scalar.ph471:                                     ; preds = %scalar.ph471.prol.loopexit, %scalar.ph471
  %indvars.iv326 = phi i64 [ %indvars.iv.next327.3, %scalar.ph471 ], [ %indvars.iv326.unr, %scalar.ph471.prol.loopexit ] ; 6 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %indvars.iv326
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !47
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv326
  store double %i.hg, ptr %i.hh, align 8, !tbaa !47
  %indvars.iv.next327 = add nuw nsw i64 %indvars.iv326, 1 ; 2 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %indvars.iv.next327
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !47
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv.next327
  store double %i.hj, ptr %i.hk, align 8, !tbaa !47
  %indvars.iv.next327.1 = add nuw nsw i64 %indvars.iv326, 2 ; 2 uses
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %indvars.iv.next327.1
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !47
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv.next327.1
  store double %i.hm, ptr %i.hn, align 8, !tbaa !47
  %indvars.iv.next327.2 = add nuw nsw i64 %indvars.iv326, 3 ; 2 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %indvars.iv.next327.2
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !47
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv.next327.2
  store double %i.hp, ptr %i.hq, align 8, !tbaa !47
  %indvars.iv.next327.3 = add nuw nsw i64 %indvars.iv326, 4 ; 2 uses
  %exitcond330.not.3 = icmp eq i64 %indvars.iv.next327.3, %wide.trip.count329
  br i1 %exitcond330.not.3, label %._crit_edge286, label %scalar.ph471, !llvm.loop !66

._crit_edge286:                                   ; preds = %scalar.ph471.prol.loopexit, %scalar.ph471, %middle.block480
  %.pre = load double, ptr %i.aw, align 8, !tbaa !45 ; 3 uses
  %i.hr = load double, ptr %i.ax, align 8, !tbaa !44 ; 2 uses
  %i.hs = fsub double %.pre, %i.hr                ; 2 uses
  %i.ht = tail call double @llvm.fabs.f64(double %i.hs) ; 2 uses
  %i.hu = load double, ptr %i.ay, align 8, !tbaa !48 ; 2 uses
  %i.hv = fcmp ugt double %i.ht, %i.hu
  br i1 %i.hv, label %.backedge, label %.loopexit249.loopexit

.backedge:                                        ; preds = %._crit_edge286, %._crit_edge290
  %.3217.lcssa403 = phi i32 [ %.4413420, %._crit_edge286 ], [ %.3217.lcssa404424427, %._crit_edge290 ]
  %.pre-phi358 = phi double [ %i.ht, %._crit_edge286 ], [ %i.kg, %._crit_edge290 ] ; 2 uses
  %.pre-phi = phi double [ %i.hs, %._crit_edge286 ], [ %i.kf, %._crit_edge290 ]
  %i.hw = phi double [ %i.hu, %._crit_edge286 ], [ %i.kh, %._crit_edge290 ] ; 2 uses
  %i.hx = phi double [ %i.hr, %._crit_edge286 ], [ %i.kd, %._crit_edge290 ]
  %i.hy = phi double [ %.pre, %._crit_edge286 ], [ %i.ke, %._crit_edge290 ] ; 2 uses
  %.v.be = phi double [ 5.000000e-01, %._crit_edge286 ], [ 2.000000e+00, %._crit_edge290 ]
  %.0213.be = phi i32 [ 1, %._crit_edge286 ], [ 2, %._crit_edge290 ]
  %i.hz = fcmp ugt double %.pre-phi358, %i.hw
  br i1 %i.hz, label %bb.o, label %.loopexit249.loopexit

bb.aa:                                            ; preds = %._crit_edge278
  %i.ia = icmp eq i32 %.3211, 0
  %wide.trip.count334 = zext nneg i32 %i.fg to i64 ; 2 uses
  br i1 %i.ia, label %.lr.ph289, label %.lr.ph304

.lr.ph304:                                        ; preds = %bb.aa
  store double %.1228, ptr %i.aw, align 8, !tbaa !45
  %i.ib = load ptr, ptr %i.bi, align 8, !tbaa !35 ; 7 uses
  %i.ic = load ptr, ptr %i.bf, align 8, !tbaa !34 ; 7 uses
  %min.iters.check486 = icmp ult i32 %i.fg, 8
  %i.id = ptrtoaddr ptr %i.ic to i64
  %i.ie = ptrtoaddr ptr %i.ib to i64
  %i.if = sub i64 %i.ie, %i.id
  %diff.check484 = icmp ugt i64 %i.if, -32
  %or.cond518 = select i1 %min.iters.check486, i1 true, i1 %diff.check484
  br i1 %or.cond518, label %scalar.ph485.preheader, label %vector.ph487

vector.ph487:                                     ; preds = %.lr.ph304
  %n.vec488 = and i64 %wide.trip.count324, 2147483644 ; 3 uses
  br label %vector.body489

vector.body489:                                   ; preds = %vector.body489, %vector.ph487
  %index490 = phi i64 [ 0, %vector.ph487 ], [ %index.next493, %vector.body489 ] ; 3 uses
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %index490 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  %wide.load491 = load <2 x double>, ptr %i.ig, align 8, !tbaa !47
  %wide.load492 = load <2 x double>, ptr %i.ih, align 8, !tbaa !47
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %index490 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  store <2 x double> %wide.load491, ptr %i.ii, align 8, !tbaa !47
  store <2 x double> %wide.load492, ptr %i.ij, align 8, !tbaa !47
  %index.next493 = add nuw i64 %index490, 4       ; 2 uses
  %i.ik = icmp eq i64 %index.next493, %n.vec488
  br i1 %i.ik, label %middle.block494, label %vector.body489, !llvm.loop !67

middle.block494:                                  ; preds = %vector.body489
  %cmp.n495 = icmp eq i64 %n.vec488, %wide.trip.count324
  br i1 %cmp.n495, label %.loopexit249.thread, label %scalar.ph485.preheader

scalar.ph485.preheader:                           ; preds = %.lr.ph304, %middle.block494
  %indvars.iv336.ph = phi i64 [ 0, %.lr.ph304 ], [ %n.vec488, %middle.block494 ] ; 3 uses
  %xtraiter545 = and i64 %wide.trip.count324, 3   ; 2 uses
  %lcmp.mod546.not = icmp eq i64 %xtraiter545, 0
  br i1 %lcmp.mod546.not, label %scalar.ph485.prol.loopexit, label %scalar.ph485.prol

scalar.ph485.prol:                                ; preds = %scalar.ph485.preheader, %scalar.ph485.prol
  %indvars.iv336.prol = phi i64 [ %indvars.iv.next337.prol, %scalar.ph485.prol ], [ %indvars.iv336.ph, %scalar.ph485.preheader ] ; 3 uses
  %prol.iter547 = phi i64 [ %prol.iter547.next, %scalar.ph485.prol ], [ 0, %scalar.ph485.preheader ]
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %indvars.iv336.prol
  %i.im = load double, ptr %i.il, align 8, !tbaa !47
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %indvars.iv336.prol
  store double %i.im, ptr %i.in, align 8, !tbaa !47
  %indvars.iv.next337.prol = add nuw nsw i64 %indvars.iv336.prol, 1 ; 2 uses
  %prol.iter547.next = add i64 %prol.iter547, 1   ; 2 uses
  %prol.iter547.cmp.not = icmp eq i64 %prol.iter547.next, %xtraiter545
  br i1 %prol.iter547.cmp.not, label %scalar.ph485.prol.loopexit, label %scalar.ph485.prol, !llvm.loop !68

scalar.ph485.prol.loopexit:                       ; preds = %scalar.ph485.prol, %scalar.ph485.preheader
  %indvars.iv336.unr = phi i64 [ %indvars.iv336.ph, %scalar.ph485.preheader ], [ %indvars.iv.next337.prol, %scalar.ph485.prol ]
  %i.io = sub nsw i64 %indvars.iv336.ph, %wide.trip.count324
  %i.ip = icmp ugt i64 %i.io, -4
  br i1 %i.ip, label %.loopexit249.thread, label %scalar.ph485

scalar.ph485:                                     ; preds = %scalar.ph485.prol.loopexit, %scalar.ph485
  %indvars.iv336 = phi i64 [ %indvars.iv.next337.3, %scalar.ph485 ], [ %indvars.iv336.unr, %scalar.ph485.prol.loopexit ] ; 6 uses
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %indvars.iv336
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !47
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %indvars.iv336
  store double %i.ir, ptr %i.is, align 8, !tbaa !47
  %indvars.iv.next337 = add nuw nsw i64 %indvars.iv336, 1 ; 2 uses
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %indvars.iv.next337
  %i.iu = load double, ptr %i.it, align 8, !tbaa !47
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %indvars.iv.next337
  store double %i.iu, ptr %i.iv, align 8, !tbaa !47
  %indvars.iv.next337.1 = add nuw nsw i64 %indvars.iv336, 2 ; 2 uses
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %indvars.iv.next337.1
  %i.ix = load double, ptr %i.iw, align 8, !tbaa !47
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %indvars.iv.next337.1
  store double %i.ix, ptr %i.iy, align 8, !tbaa !47
  %indvars.iv.next337.2 = add nuw nsw i64 %indvars.iv336, 3 ; 2 uses
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %indvars.iv.next337.2
end_hunk_0
