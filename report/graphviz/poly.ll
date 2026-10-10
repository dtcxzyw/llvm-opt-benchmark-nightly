Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/poly?download=true
inline.NumInlined: 35
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@makeAddPoly:bb.a
  %exitcond.not.i = icmp eq i64 %i.fv, %i.fj
  br i1 %exitcond.not.i, label %bbox.exit, label %.lr.ph.i, !llvm.loop !0

bbox.exit:                                        ; preds = %.lr.ph.i, %.loopexit
  %i.fw = phi <2 x double> [ %i.fn, %.loopexit ], [ %i.ft, %.lr.ph.i ]
  %i.fx = phi <2 x double> [ %i.fn, %.loopexit ], [ %i.fu, %.lr.ph.i ]
  store <2 x double> %i.fw, ptr %0, align 8, !tbaa !52
  store <2 x double> %i.fx, ptr %i.fm, align 8, !tbaa !52
  br label %bb.y

bb.y:                                             ; preds = %bbox.exit, %bb.x
  %.0 = phi i32 [ 0, %bbox.exit ], [ 1, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare i32 @shapeOf(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @hypot(double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc noalias nonnull ptr @genRound(ptr noundef %0, ptr nofree noundef nonnull writeonly captures(none) %1, double noundef %2, double noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @agget(ptr noundef %0, ptr noundef nonnull @.str.6) #15 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.thread28.thread, label %.thread28

.thread28:                                        ; preds = %bb.a
  %i.b = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.a, ptr noundef null, i32 noundef 10) #15, !inline_history !60
  %.fr30 = freeze i64 %i.b                        ; 2 uses
  %i.c = trunc i64 %.fr30 to i32
  %i.d = icmp slt i32 %i.c, 3
  %i.e = and i64 %.fr30, 2147483647
  %spec.select = select i1 %i.d, i64 20, i64 %i.e ; 4 uses
  %i.f = tail call noalias ptr @calloc(i64 noundef %spec.select, i64 noundef 16) #16 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %gv_calloc.exit.preheader

.thread28.thread:                                 ; preds = %bb.a
  %i.h = tail call noalias dereferenceable_or_null(320) ptr @calloc(i64 noundef 20, i64 noundef 16) #16 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.b, label %.lr.ph

gv_calloc.exit.preheader:                         ; preds = %.thread28
  %.not32 = icmp eq i64 %spec.select, 0
  br i1 %.not32, label %gv_calloc.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.thread28.thread, %gv_calloc.exit.preheader
  %i.j = phi i64 [ %spec.select, %gv_calloc.exit.preheader ], [ 20, %.thread28.thread ] ; 7 uses
  %i.k = phi ptr [ %i.f, %gv_calloc.exit.preheader ], [ %i.h, %.thread28.thread ] ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !19
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = uitofp nneg i64 %i.j to double           ; 3 uses
  %i.p = load <2 x double>, ptr %i.n, align 8, !tbaa !52
  %i.q = fmul <2 x double> %i.p, splat (double 5.000000e-01)
  %i.r = insertelement <2 x double> poison, double %2, i64 0
  %i.s = insertelement <2 x double> %i.r, double %3, i64 1
  %i.t = fadd <2 x double> %i.s, %i.q             ; 3 uses
  %xtraiter = and i64 %i.j, 1
  %i.u = icmp eq i64 %i.j, 1
  br i1 %i.u, label %gv_calloc.exit.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.j, -2
  br label %gv_calloc.exit

bb.b:                                             ; preds = %.thread28.thread, %.thread28
  %i.v = phi i64 [ 20, %.thread28.thread ], [ %spec.select, %.thread28 ]
  %i.w = load ptr, ptr @stderr, align 8, !tbaa !38
  %i.x = shl nuw nsw i64 %i.v, 4
  %i.y = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.w, ptr noundef nonnull @.str.5, i64 noundef %i.x) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit._crit_edge.loopexit.unr-lcssa:     ; preds = %gv_calloc.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %gv_calloc.exit._crit_edge, label %gv_calloc.exit.epil.preheader

gv_calloc.exit.epil.preheader:                    ; preds = %gv_calloc.exit._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.031.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.bg, %gv_calloc.exit._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod36 = trunc i64 %i.j to i1
  tail call void @llvm.assume(i1 %lcmp.mod36)
  %i.z = uitofp nneg i64 %.031.epil.init to double
  %i.aa = fdiv nnan double %i.z, %i.o
  %i.ab = fmul nnan double %i.aa, f0x400921FB54442D18
  %i.ac = fmul nnan double %i.ab, 2.000000e+00    ; 2 uses
  %i.ad = tail call double @cos(double noundef %i.ac) #15
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %.031.epil.init
  %i.af = tail call double @sin(double noundef %i.ac) #15
  %i.ag = insertelement <2 x double> poison, double %i.ad, i64 0
  %i.ah = insertelement <2 x double> %i.ag, double %i.af, i64 1
  %i.ai = fmul <2 x double> %i.ah, %i.t
  store <2 x double> %i.ai, ptr %i.ae, align 8, !tbaa !52
  br label %gv_calloc.exit._crit_edge

gv_calloc.exit._crit_edge:                        ; preds = %gv_calloc.exit.epil.preheader, %gv_calloc.exit._crit_edge.loopexit.unr-lcssa, %gv_calloc.exit.preheader
  %i.aj = phi i64 [ 0, %gv_calloc.exit.preheader ], [ %i.j, %gv_calloc.exit._crit_edge.loopexit.unr-lcssa ], [ %i.j, %gv_calloc.exit.epil.preheader ]
  %i.ak = phi ptr [ %i.f, %gv_calloc.exit.preheader ], [ %i.k, %gv_calloc.exit._crit_edge.loopexit.unr-lcssa ], [ %i.k, %gv_calloc.exit.epil.preheader ]
  store i64 %i.aj, ptr %1, align 8, !tbaa !35
  ret ptr %i.ak

gv_calloc.exit:                                   ; preds = %gv_calloc.exit, %.lr.ph.new
  %.031 = phi i64 [ 0, %.lr.ph.new ], [ %i.bg, %gv_calloc.exit ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %gv_calloc.exit ]
  %i.al = uitofp nneg i64 %.031 to double
  %i.am = fdiv double %i.al, %i.o
  %i.an = fmul double %i.am, f0x400921FB54442D18
  %i.ao = fmul double %i.an, 2.000000e+00         ; 2 uses
  %i.ap = tail call double @cos(double noundef %i.ao) #15
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %.031
  %i.ar = tail call double @sin(double noundef %i.ao) #15
  %i.as = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.at = insertelement <2 x double> %i.as, double %i.ar, i64 1
  %i.au = fmul <2 x double> %i.at, %i.t
  store <2 x double> %i.au, ptr %i.aq, align 8, !tbaa !52
  %i.av = or disjoint i64 %.031, 1                ; 2 uses
  %i.aw = uitofp nneg i64 %i.av to double
  %i.ax = fdiv nnan double %i.aw, %i.o
  %i.ay = fmul nnan double %i.ax, f0x400921FB54442D18
  %i.az = fmul nnan double %i.ay, 2.000000e+00    ; 2 uses
  %i.ba = tail call double @cos(double noundef %i.az) #15
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.av
  %i.bc = tail call double @sin(double noundef %i.az) #15
  %i.bd = insertelement <2 x double> poison, double %i.ba, i64 0
  %i.be = insertelement <2 x double> %i.bd, double %i.bc, i64 1
  %i.bf = fmul <2 x double> %i.be, %i.t
  store <2 x double> %i.bf, ptr %i.bb, align 8, !tbaa !52
  %i.bg = add nuw nsw i64 %.031, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %gv_calloc.exit._crit_edge.loopexit.unr-lcssa, label %gv_calloc.exit, !llvm.loop !61
}

declare void @agerrorf(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @makePoly(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 336
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !34
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 4, ptr %i.a, align 8, !tbaa !35
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.g = load <2 x double>, ptr %i.f, align 8, !tbaa !52
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 1, ptr %i.h, align 8, !tbaa !36
  %i.i = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 4, i64 noundef 16) #16 ; 8 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %gv_calloc.exit

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !38
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str.5, i64 noundef 64) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit:                                   ; preds = %bb.b
  %i.m = fmul <2 x double> %i.g, splat (double 5.000000e-01) ; 4 uses
  %i.n = extractelement <2 x double> %i.m, i64 0
  %i.o = extractelement <2 x double> %i.m, i64 1
  store <2 x double> %i.m, ptr %i.i, align 8, !tbaa !52
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store double %i.o, ptr %i.q, align 8, !tbaa !40
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.s = fneg <2 x double> %i.m                   ; 3 uses
  %i.t = extractelement <2 x double> %i.s, i64 0
  store double %i.t, ptr %i.p, align 8, !tbaa !39
  store <2 x double> %i.s, ptr %i.r, align 8, !tbaa !52
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store double %i.n, ptr %i.u, align 8, !tbaa !39
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.w = extractelement <2 x double> %i.s, i64 1
  store double %i.w, ptr %i.v, align 8, !tbaa !40
  br label %bb.aa

bb.d:                                             ; preds = %bb.a
  %i.x = tail call i32 @shapeOf(ptr noundef nonnull %1) #15
  switch i32 %i.x, label %bb.z [
    i32 1, label %bb.e
    i32 2, label %bb.w
    i32 3, label %bb.y
  ]

bb.e:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !41  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !44 ; 7 uses
  store i64 %i.ac, ptr %i.a, align 8, !tbaa !35
  %i.ad = icmp ugt i64 %i.ac, 2
  br i1 %i.ad, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %mul.ov.i80 = icmp ugt i64 %i.ac, 1152921504606846975
  br i1 %mul.ov.i80, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = load ptr, ptr @stderr, align 8, !tbaa !38
  %i.af = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ae, ptr noundef nonnull @.str.4, i64 noundef %i.ac, i64 noundef 16) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ag = tail call noalias ptr @calloc(i64 noundef %i.ac, i64 noundef 16) #16 ; 3 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.i, label %gv_calloc.exit82.preheader

gv_calloc.exit82.preheader:                       ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !50
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %gv_calloc.exit82.preheader
  %index = phi i64 [ 0, %gv_calloc.exit82.preheader ], [ %index.next, %vector.body ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %index
  %wide.load = load <2 x double>, ptr %i.ak, align 8
  %i.al = fdiv <2 x double> %wide.load, splat (double 7.200000e+01)
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index
  store <2 x double> %i.al, ptr %i.am, align 8
  %index.next = add nuw i64 %index, 1             ; 2 uses
  %i.an = icmp eq i64 %index.next, %i.ac
  br i1 %i.an, label %.loopexit, label %vector.body, !llvm.loop !62

bb.i:                                             ; preds = %bb.h
  %i.ao = load ptr, ptr @stderr, align 8, !tbaa !38
  %i.ap = shl nuw i64 %i.ac, 4
  %i.aq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ao, ptr noundef nonnull @.str.5, i64 noundef %i.ap) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

bb.j:                                             ; preds = %bb.e
  %i.ar = call fastcc ptr @genRound(ptr noundef nonnull %1, ptr noundef %i.a, double noundef 0.000000e+00, double noundef 0.000000e+00)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !19
  br label %.loopexit

.loopexit:                                        ; preds = %vector.body, %bb.j
  %4 = phi ptr [ %.pre, %bb.j ], [ %i.y, %vector.body ]
  %.075 = phi ptr [ %i.ar, %bb.j ], [ %i.ag, %vector.body ] ; 17 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !45
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !49 ; 2 uses
  %i.av = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.au, ptr noundef nonnull dereferenceable(4) @.str) #19
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.loopexit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 1, ptr %i.ax, align 8, !tbaa !36
  br label %bb.aa

bb.l:                                             ; preds = %.loopexit
  %i.ay = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.au, ptr noundef nonnull dereferenceable(8) @.str.1) #19
  %i.az = icmp eq i32 %i.ay, 0
  %i.ba = load i64, ptr %i.a, align 8
  %.not.i = icmp eq i64 %i.ba, 4
  %or.cond97 = select i1 %i.az, i1 %.not.i, i1 false
  br i1 %or.cond97, label %bb.m, label %isBox.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %.075, i64 8
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !40 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.075, i64 16 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.075, i64 24
  %i.bf = load double, ptr %i.be, align 8, !tbaa !40 ; 2 uses
  %i.bg = fcmp oeq double %i.bc, %i.bf
  br i1 %i.bg, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %.075, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %.075, i64 40
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !40
  %i.bk = getelementptr inbounds nuw i8, ptr %.075, i64 56
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !40
  %i.bm = fcmp oeq double %i.bj, %i.bl
  br i1 %i.bm, label %bb.o, label %isBox.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.bn = getelementptr inbounds nuw i8, ptr %.075, i64 48
  %i.bo = load double, ptr %.075, align 8, !tbaa !39
  %i.bp = load double, ptr %i.bn, align 8, !tbaa !39
  %i.bq = fcmp oeq double %i.bo, %i.bp
  br i1 %i.bq, label %.split, label %isBox.exit.thread

.split:                                           ; preds = %bb.o
  %i.br = load double, ptr %i.bd, align 8, !tbaa !39
  %i.bs = load double, ptr %i.bh, align 8, !tbaa !39
  %i.bt = fcmp oeq double %i.br, %i.bs
  br i1 %i.bt, label %bb.s, label %isBox.exit.thread

bb.p:                                             ; preds = %bb.m
  %i.bu = load double, ptr %.075, align 8, !tbaa !39
  %i.bv = load double, ptr %i.bd, align 8, !tbaa !39
  %i.bw = fcmp oeq double %i.bu, %i.bv
  br i1 %i.bw, label %bb.q, label %isBox.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.bx = getelementptr inbounds nuw i8, ptr %.075, i64 32
  %i.by = load double, ptr %i.bx, align 8, !tbaa !39
  %i.bz = getelementptr inbounds nuw i8, ptr %.075, i64 48
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !39
  %i.cb = fcmp oeq double %i.by, %i.ca
  br i1 %i.cb, label %bb.r, label %isBox.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.cc = getelementptr inbounds nuw i8, ptr %.075, i64 56
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !40
  %i.ce = fcmp oeq double %i.bc, %i.cd
  br i1 %i.ce, label %isBox.exit, label %isBox.exit.thread

isBox.exit:                                       ; preds = %bb.r
  %i.cf = getelementptr inbounds nuw i8, ptr %.075, i64 40
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !40
  %i.ch = fcmp oeq double %i.bf, %i.cg
  br i1 %i.ch, label %bb.s, label %isBox.exit.thread

bb.s:                                             ; preds = %.split, %isBox.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 1, ptr %i.ci, align 8, !tbaa !36
  br label %bb.aa

isBox.exit.thread:                                ; preds = %.split, %bb.p, %bb.q, %bb.r, %bb.n, %bb.o, %isBox.exit, %bb.l
  %i.cj = load i64, ptr %i.ab, align 8, !tbaa !44
  %i.ck = icmp ult i64 %i.cj, 3
  br i1 %i.ck, label %bb.t, label %bb.v

bb.t:                                             ; preds = %isBox.exit.thread
  %i.cl = load i32, ptr %i.aa, align 8, !tbaa !51
  %.not79 = icmp eq i32 %i.cl, 0
  br i1 %.not79, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 2, ptr %i.cm, align 8, !tbaa !36
  br label %bb.aa

bb.v:                                             ; preds = %bb.t, %isBox.exit.thread
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.cn, align 8, !tbaa !36
  br label %bb.aa

bb.w:                                             ; preds = %bb.d
  store i64 4, ptr %i.a, align 8, !tbaa !35
  %i.co = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 4, i64 noundef 16) #16 ; 7 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %bb.x, label %gv_calloc.exit84

bb.x:                                             ; preds = %bb.w
  %i.cq = load ptr, ptr @stderr, align 8, !tbaa !38
  %i.cr = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cq, ptr noundef nonnull @.str.5, i64 noundef 64) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit84:                                 ; preds = %bb.w
  %i.cs = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !41 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %i.cw = load <2 x double>, ptr %i.cv, align 8, !tbaa !52
  %i.cx = fdiv <2 x double> %i.cw, splat (double 7.200000e+01) ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cz = extractelement <2 x double> %i.cx, i64 1
  %i.da = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  %i.db = load <2 x double>, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !52
  store <2 x double> %i.cx, ptr %i.co, align 8, !tbaa !52
  %i.dc = fdiv <2 x double> %i.db, splat (double 7.200000e+01) ; 3 uses
  %i.dd = extractelement <2 x double> %i.dc, i64 0
  store double %i.dd, ptr %i.cy, align 8, !tbaa !52
  store double %i.cz, ptr %.sroa.45.0..sroa_idx, align 8, !tbaa !52
  store <2 x double> %i.dc, ptr %i.da, align 8, !tbaa !52
  %i.de = getelementptr inbounds nuw i8, ptr %i.co, i64 48
  %i.df = shufflevector <2 x double> %i.cx, <2 x double> %i.dc, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.df, ptr %i.de, align 8, !tbaa !52
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 1, ptr %i.dg, align 8, !tbaa !36
  br label %bb.aa

bb.y:                                             ; preds = %bb.d
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 2, ptr %i.dh, align 8, !tbaa !36
  %i.di = call fastcc ptr @genRound(ptr noundef nonnull %1, ptr noundef %i.a, double noundef 0.000000e+00, double noundef 0.000000e+00)
  br label %bb.aa

bb.z:                                             ; preds = %bb.d
  %i.dj = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !45
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !49
  tail call void (ptr, ...) @agerrorf(ptr noundef nonnull @.str.3, ptr noundef %i.dm) #15
  br label %bb.ac

bb.aa:                                            ; preds = %gv_calloc.exit84, %bb.y, %bb.s, %bb.v, %bb.u, %bb.k, %gv_calloc.exit
  %.1 = phi ptr [ %i.i, %gv_calloc.exit ], [ %.075, %bb.k ], [ %.075, %bb.s ], [ %.075, %bb.u ], [ %.075, %bb.v ], [ %i.co, %gv_calloc.exit84 ], [ %i.di, %bb.y ] ; 9 uses
  %i.dn = fcmp une double %2, 1.000000e+00
  %i.do = fcmp une double %3, 1.000000e+00
  %or.cond = or i1 %i.dn, %i.do
  %.pr.pre105 = load i64, ptr %i.a, align 8, !tbaa !35 ; 6 uses
  br i1 %or.cond, label %bb.ab, label %inflatePts.exit

bb.ab:                                            ; preds = %bb.aa
  %.not.i91 = icmp eq i64 %.pr.pre105, 0
  br i1 %.not.i91, label %inflatePts.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.ab
  %min.iters.check = icmp ult i64 %.pr.pre105, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader141, label %vector.ph131

vector.ph131:                                     ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %.pr.pre105, -2                ; 4 uses
  %i.dp = shl i64 %n.vec, 4
  %i.dq = getelementptr i8, ptr %.1, i64 %i.dp
  %i.dr = insertelement <2 x double> poison, double %2, i64 0
  %i.ds = insertelement <2 x double> %i.dr, double %3, i64 1 ; 2 uses
  br label %vector.body132

vector.body132:                                   ; preds = %vector.body132, %vector.ph131
  %index133 = phi i64 [ 0, %vector.ph131 ], [ %index.next137, %vector.body132 ] ; 2 uses
  %i.dt = shl i64 %index133, 4                    ; 2 uses
  %next.gep = getelementptr i8, ptr %.1, i64 %i.dt ; 2 uses
  %i.du = getelementptr i8, ptr %.1, i64 %i.dt
  %next.gep134 = getelementptr i8, ptr %i.du, i64 16 ; 2 uses
  %wide.load135 = load <2 x double>, ptr %next.gep, align 8
  %wide.load136 = load <2 x double>, ptr %next.gep134, align 8
  %i.dv = fmul <2 x double> %i.ds, %wide.load135
  %i.dw = fmul <2 x double> %i.ds, %wide.load136
  store <2 x double> %i.dv, ptr %next.gep, align 8
  store <2 x double> %i.dw, ptr %next.gep134, align 8
  %index.next137 = add nuw i64 %index133, 2       ; 2 uses
  %i.dx = icmp eq i64 %index.next137, %n.vec
  br i1 %i.dx, label %middle.block138, label %vector.body132, !llvm.loop !63

middle.block138:                                  ; preds = %vector.body132
  %cmp.n = icmp eq i64 %.pr.pre105, %n.vec
  br i1 %cmp.n, label %inflatePts.exit.loopexit, label %.lr.ph.i.preheader141

.lr.ph.i.preheader141:                            ; preds = %.lr.ph.i.preheader, %middle.block138
  %.010.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block138 ]
  %.089.i.ph = phi ptr [ %.1, %.lr.ph.i.preheader ], [ %i.dq, %middle.block138 ]
  %i.dy = insertelement <2 x double> poison, double %2, i64 0
  %i.dz = insertelement <2 x double> %i.dy, double %3, i64 1
  br label %.lr.ph.i

inflatePts.exit.thread:                           ; preds = %bb.ab
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.1, ptr %i.ea, align 8, !tbaa !14
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.eb, align 8, !tbaa !54
  %i.ec = load <2 x double>, ptr %.1, align 8, !tbaa !52 ; 2 uses
  br label %bbox.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader141, %.lr.ph.i
  %.010.i = phi i64 [ %i.eg, %.lr.ph.i ], [ %.010.i.ph, %.lr.ph.i.preheader141 ]
  %.089.i = phi ptr [ %i.ef, %.lr.ph.i ], [ %.089.i.ph, %.lr.ph.i.preheader141 ] ; 3 uses
  %i.ed = load <2 x double>, ptr %.089.i, align 8, !tbaa !52
  %i.ee = fmul <2 x double> %i.dz, %i.ed
  store <2 x double> %i.ee, ptr %.089.i, align 8, !tbaa !52
  %i.ef = getelementptr inbounds nuw i8, ptr %.089.i, i64 16
  %i.eg = add nuw i64 %.010.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.eg, %.pr.pre105
  br i1 %exitcond.not.i, label %inflatePts.exit.loopexit, label %.lr.ph.i, !llvm.loop !64

inflatePts.exit.loopexit:                         ; preds = %.lr.ph.i, %middle.block138
  %.pr.pre = load i64, ptr %i.a, align 8, !tbaa !35
  br label %inflatePts.exit

inflatePts.exit:                                  ; preds = %inflatePts.exit.loopexit, %bb.aa
  %.pr = phi i64 [ %.pr.pre, %inflatePts.exit.loopexit ], [ %.pr.pre105, %bb.aa ] ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.1, ptr %i.eh, align 8, !tbaa !14
  %i.ei = trunc i64 %.pr to i32
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.ei, ptr %i.ej, align 8, !tbaa !54
  %i.ek = load <2 x double>, ptr %.1, align 8, !tbaa !52 ; 4 uses
  %i.el = icmp ugt i64 %.pr, 1
  br i1 %i.el, label %.lr.ph.i92, label %bbox.exit

.lr.ph.i92:                                       ; preds = %inflatePts.exit, %.lr.ph.i92
  %.031.i = phi i64 [ %i.es, %.lr.ph.i92 ], [ 1, %inflatePts.exit ]
  %.02526.i = phi ptr [ %i.eo, %.lr.ph.i92 ], [ %.1, %inflatePts.exit ]
  %i.em = phi <2 x double> [ %i.eq, %.lr.ph.i92 ], [ %i.ek, %inflatePts.exit ]
  %i.en = phi <2 x double> [ %i.er, %.lr.ph.i92 ], [ %i.ek, %inflatePts.exit ]
  %i.eo = getelementptr inbounds nuw i8, ptr %.02526.i, i64 16 ; 2 uses
  %i.ep = load <2 x double>, ptr %i.eo, align 8, !tbaa !52 ; 2 uses
  %i.eq = tail call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %i.em, <2 x double> %i.ep) ; 2 uses
  %i.er = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.en, <2 x double> %i.ep) ; 2 uses
  %i.es = add nuw i64 %.031.i, 1                  ; 2 uses
  %exitcond.not.i93 = icmp eq i64 %i.es, %.pr
  br i1 %exitcond.not.i93, label %bbox.exit, label %.lr.ph.i92, !llvm.loop !0

bbox.exit:                                        ; preds = %.lr.ph.i92, %inflatePts.exit.thread, %inflatePts.exit
  %i.et = phi <2 x double> [ %i.ek, %inflatePts.exit ], [ %i.ec, %inflatePts.exit.thread ], [ %i.eq, %.lr.ph.i92 ]
  %i.eu = phi <2 x double> [ %i.ek, %inflatePts.exit ], [ %i.ec, %inflatePts.exit.thread ], [ %i.er, %.lr.ph.i92 ]
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x double> %i.et, ptr %0, align 8, !tbaa !52
  store <2 x double> %i.eu, ptr %i.ev, align 8, !tbaa !52
  br label %bb.ac

bb.ac:                                            ; preds = %bbox.exit, %bb.z
  %.0 = phi i32 [ 0, %bbox.exit ], [ 1, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @polyOverlap(double %0, double %1, ptr nofree noundef readonly captures(none) %2, double %3, double %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #2 {
bb.a:
  %6 = alloca %struct.pointf_s, align 8           ; 6 uses
  %7 = alloca %struct.pointf_s, align 8           ; 6 uses
  %8 = alloca %struct.pointf_s, align 8           ; 4 uses
  %9 = alloca %struct.pointf_s, align 16          ; 5 uses
  %10 = alloca %struct.pointf_s, align 16         ; 5 uses
  %11 = alloca %struct.pointf_s, align 16         ; 5 uses
  %12 = alloca %struct.pointf_s, align 16         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  %i.a = load double, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load double, ptr %i.b, align 8
  call void @addpt(ptr noundef nonnull %9, double %0, double %1, double %i.a, double %i.c) #15
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = load double, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = load double, ptr %i.f, align 8
  call void @addpt(ptr noundef nonnull %10, double %0, double %1, double %i.e, double %i.g) #15
  %i.h = load double, ptr %5, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.j = load double, ptr %i.i, align 8
  call void @addpt(ptr noundef nonnull %11, double %3, double %4, double %i.h, double %i.j) #15
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.l = load double, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.n = load double, ptr %i.m, align 8
  call void @addpt(ptr noundef nonnull %12, double %3, double %4, double %i.l, double %i.n) #15
  %i.o = load <2 x double>, ptr %9, align 16
  %i.p = load <2 x double>, ptr %10, align 16
  %i.q = load <2 x double>, ptr %11, align 16
  %i.r = load <2 x double>, ptr %12, align 16
  %i.s = shufflevector <2 x double> %i.o, <2 x double> %i.q, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.t = shufflevector <2 x double> %i.r, <2 x double> %i.p, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.u = fcmp ugt <4 x double> %i.s, %i.t
  %i.v = freeze <4 x i1> %i.u
  %i.w = bitcast <4 x i1> %i.v to i4
  %.not68 = icmp eq i4 %i.w, 0
  br i1 %.not68, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.x = getelementptr i8, ptr %2, i64 48
  %.val51 = load i32, ptr %i.x, align 8, !tbaa !36 ; 2 uses
  %i.y = trunc i32 %.val51 to i1
  br i1 %i.y, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr i8, ptr %5, i64 48
  %.val = load i32, ptr %i.z, align 8, !tbaa !36
  %i.aa = trunc i32 %.val to i1
  br i1 %i.aa, label %bb.x, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ab = and i32 %.val51, 2
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr i8, ptr %5, i64 48
  %.val52 = load i32, ptr %i.ac, align 8, !tbaa !36
  %i.ad = and i32 %.val52, 2
  %.not63 = icmp eq i32 %i.ad, 0
  br i1 %.not63, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = load double, ptr %i.d, align 8, !tbaa !66
  %i.af = load double, ptr %2, align 8, !tbaa !67
  %i.ag = fsub double %i.ae, %i.af
  %i.ah = load double, ptr %i.k, align 8, !tbaa !66
  %i.ai = fadd double %i.ag, %i.ah
  %i.aj = load double, ptr %5, align 8, !tbaa !67
  %i.ak = fsub double %i.ai, %i.aj                ; 2 uses
  %i.al = fsub double %0, %3                      ; 2 uses
  %i.am = fsub double %1, %4                      ; 2 uses
  %i.an = fmul double %i.am, %i.am
  %i.ao = call double @llvm.fmuladd.f64(double %i.al, double %i.al, double %i.an)
  %i.ap = fmul double %i.ak, %i.ak
  %i.aq = fmul double %i.ap, 2.500000e-01
  %i.ar = fcmp ole double %i.ao, %i.aq
  br label %bb.x

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !14
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !54
  %i.aw = call fastcc ptr @transCopy(ptr noundef %i.at, i32 noundef %i.av, double %0, double %1) ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !14
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !54
  %i.bb = call fastcc ptr @transCopy(ptr noundef %i.ay, i32 noundef %i.ba, double %3, double %4) ; 6 uses
  %i.bc = load i32, ptr %i.au, align 8, !tbaa !54 ; 7 uses
  %i.bd = load i32, ptr %i.az, align 8, !tbaa !54 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  %i.be = add i32 %i.bc, -1
  %i.bf = add i32 %i.bd, -1
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bi = shl nsw i32 %i.bc, 1
  %i.bj = shl nsw i32 %i.bd, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.r, %bb.g
  %.071.i = phi i32 [ 0, %bb.g ], [ %.172.i, %bb.r ] ; 7 uses
  %.069.i = phi i32 [ 0, %bb.g ], [ %.170.i, %bb.r ] ; 5 uses
  %.067.i = phi i32 [ 0, %bb.g ], [ %.168.i, %bb.r ] ; 5 uses
  %.066.i = phi i32 [ 0, %bb.g ], [ %.1.i, %bb.r ] ; 7 uses
  %i.bk = add i32 %i.be, %.066.i
  %i.bl = srem i32 %i.bk, %i.bc
  %i.bm = add i32 %i.bf, %.071.i
  %i.bn = srem i32 %i.bm, %i.bd
  %i.bo = sext i32 %.066.i to i64
  %i.bp = getelementptr inbounds [16 x i8], ptr %i.aw, i64 %i.bo ; 2 uses
  %i.bq = sext i32 %i.bl to i64
  %i.br = getelementptr inbounds [16 x i8], ptr %i.aw, i64 %i.bq ; 2 uses
  %i.bs = load double, ptr %i.bp, align 8         ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bu = load double, ptr %i.bt, align 8         ; 4 uses
  %i.bv = load double, ptr %i.br, align 8         ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bx = load double, ptr %i.bw, align 8         ; 3 uses
  call void @subpt(ptr noundef nonnull %6, double %i.bs, double %i.bu, double %i.bv, double %i.bx) #15
  %i.by = sext i32 %.071.i to i64
  %i.bz = getelementptr inbounds [16 x i8], ptr %i.bb, i64 %i.by ; 2 uses
  %i.ca = sext i32 %i.bn to i64
  %i.cb = getelementptr inbounds [16 x i8], ptr %i.bb, i64 %i.ca ; 2 uses
  %i.cc = load double, ptr %i.bz, align 8         ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.ce = load double, ptr %i.cd, align 8         ; 4 uses
  %i.cf = load double, ptr %i.cb, align 8         ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ch = load double, ptr %i.cg, align 8         ; 3 uses
  call void @subpt(ptr noundef nonnull %7, double %i.cc, double %i.ce, double %i.cf, double %i.ch) #15
  %i.ci = load double, ptr %6, align 8
  %i.cj = load double, ptr %i.bg, align 8
  %i.ck = load double, ptr %7, align 8
  %i.cl = load double, ptr %i.bh, align 8
  %i.cm = call double @area_2(double 0.000000e+00, double 0.000000e+00, double %i.ci, double %i.cj, double %i.ck, double %i.cl) #15 ; 2 uses
  %i.cn = call i32 @leftOf(double %i.bv, double %i.bx, double %i.bs, double %i.bu, double %i.cc, double %i.ce) #15
  %i.co = call i32 @leftOf(double %i.cf, double %i.ch, double %i.cc, double %i.ce, double %i.bs, double %i.bu) #15
  %i.cp = call i32 @intersection(double %i.bv, double %i.bx, double %i.bs, double %i.bu, double %i.cf, double %i.ch, double %i.cc, double %i.ce, ptr noundef nonnull %8) #15
  %.not.not.not.not.i.not = icmp eq i32 %i.cp, 0
  br i1 %.not.not.not.not.i.not, label %bb.i, label %edgesIntersect.exit.thread

edgesIntersect.exit.thread:                       ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.w

bb.i:                                             ; preds = %bb.h
  %i.cq = fcmp une double %i.cm, 0.000000e+00
  %i.cr = icmp ne i32 %i.cn, 0                    ; 2 uses
  %or.cond.i = select i1 %i.cq, i1 true, i1 %i.cr
  %i.cs = icmp ne i32 %i.co, 0                    ; 2 uses
  %or.cond3.i = select i1 %or.cond.i, i1 true, i1 %i.cs
  br i1 %or.cond3.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ct = add nsw i32 %.069.i, 1
  %i.cu = add nsw i32 %.066.i, 1
  %i.cv = srem i32 %i.cu, %i.bc
  br label %bb.r

bb.k:                                             ; preds = %bb.i
  %i.cw = fcmp ult double %i.cm, 0.000000e+00
  br i1 %i.cw, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %i.cr, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cx = add nsw i32 %.069.i, 1
  %i.cy = add nsw i32 %.066.i, 1
  %i.cz = srem i32 %i.cy, %i.bc
  br label %bb.r

bb.n:                                             ; preds = %bb.l
  %i.da = add nsw i32 %.067.i, 1
  %i.db = add nsw i32 %.071.i, 1
  %i.dc = srem i32 %i.db, %i.bd
  br label %bb.r

bb.o:                                             ; preds = %bb.k
  br i1 %i.cs, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dd = add nsw i32 %.067.i, 1
  %i.de = add nsw i32 %.071.i, 1
  %i.df = srem i32 %i.de, %i.bd
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.dg = add nsw i32 %.069.i, 1
  %i.dh = add nsw i32 %.066.i, 1
  %i.di = srem i32 %i.dh, %i.bc
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.n, %bb.m, %bb.j
  %.172.i = phi i32 [ %.071.i, %bb.m ], [ %i.dc, %bb.n ], [ %i.df, %bb.p ], [ %.071.i, %bb.q ], [ %.071.i, %bb.j ]
  %.170.i = phi i32 [ %i.cx, %bb.m ], [ %.069.i, %bb.n ], [ %.069.i, %bb.p ], [ %i.dg, %bb.q ], [ %i.ct, %bb.j ] ; 3 uses
  %.168.i = phi i32 [ %.067.i, %bb.m ], [ %i.da, %bb.n ], [ %i.dd, %bb.p ], [ %.067.i, %bb.q ], [ %.067.i, %bb.j ] ; 3 uses
  %.1.i = phi i32 [ %i.cz, %bb.m ], [ %.066.i, %bb.n ], [ %.066.i, %bb.p ], [ %i.di, %bb.q ], [ %i.cv, %bb.j ]
  %i.dj = icmp slt i32 %.170.i, %i.bc
  %i.dk = icmp slt i32 %.168.i, %i.bd
  %or.cond73.i = select i1 %i.dj, i1 true, i1 %i.dk
  %i.dl = icmp slt i32 %.170.i, %i.bi
  %or.cond75.i = select i1 %or.cond73.i, i1 %i.dl, i1 false
  %i.dm = icmp slt i32 %.168.i, %i.bj
  %or.cond77.i = select i1 %or.cond75.i, i1 %i.dm, i1 false
  br i1 %or.cond77.i, label %bb.h, label %bb.s, !llvm.loop !65

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.dn = load <2 x double>, ptr %i.aw, align 8   ; 3 uses
  %i.do = load <2 x double>, ptr %11, align 16
  %i.dp = load <2 x double>, ptr %12, align 16
  %i.dq = shufflevector <2 x double> %i.dn, <2 x double> %i.dp, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dr = shufflevector <2 x double> %i.do, <2 x double> %i.dn, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ds = fcmp oge <4 x double> %i.dq, %i.dr
  %i.dt = freeze <4 x i1> %i.ds
  %i.du = bitcast <4 x i1> %i.dt to i4
  %i.dv = icmp eq i4 %i.du, -1
  br i1 %i.dv, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dw = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.dx = load double, ptr %i.dw, align 8
  %i.dy = load i32, ptr %i.az, align 8, !tbaa !54
  %i.dz = extractelement <2 x double> %i.dn, i64 0
  %i.ea = call fastcc zeroext i1 @inPoly(ptr noundef nonnull %i.bb, i32 noundef %i.dy, double %i.dz, double %i.dx)
  br i1 %i.ea, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.eb = load <2 x double>, ptr %i.bb, align 8   ; 3 uses
  %i.ec = load <2 x double>, ptr %9, align 16
  %i.ed = load <2 x double>, ptr %10, align 16
  %i.ee = shufflevector <2 x double> %i.eb, <2 x double> %i.ed, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ef = shufflevector <2 x double> %i.ec, <2 x double> %i.eb, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.eg = fcmp oge <4 x double> %i.ee, %i.ef
  %i.eh = freeze <4 x i1> %i.eg
  %i.ei = bitcast <4 x i1> %i.eh to i4
  %i.ej = icmp eq i4 %i.ei, -1
  br i1 %i.ej, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ek = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.el = load double, ptr %i.ek, align 8
  %i.em = load i32, ptr %i.au, align 8, !tbaa !54
  %i.en = extractelement <2 x double> %i.eb, i64 0
  %i.eo = call fastcc zeroext i1 @inPoly(ptr noundef nonnull %i.aw, i32 noundef %i.em, double %i.en, double %i.el)
  br label %bb.w

bb.w:                                             ; preds = %edgesIntersect.exit.thread, %bb.u, %bb.v, %bb.t
  %i.ep = phi i1 [ true, %bb.t ], [ true, %edgesIntersect.exit.thread ], [ false, %bb.u ], [ %i.eo, %bb.v ]
  call void @free(ptr noundef nonnull %i.aw) #15
  call void @free(ptr noundef nonnull %i.bb) #15
  br label %bb.x

bb.x:                                             ; preds = %bb.c, %bb.a, %bb.w, %bb.f
  %.0 = phi i1 [ false, %bb.a ], [ %i.ar, %bb.f ], [ %i.ep, %bb.w ], [ true, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  ret i1 %.0
}

declare hidden void @addpt(ptr noundef, double, double, double, double) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: nofree nounwind uwtable
define internal fastcc noalias noundef ptr @transCopy(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, double %2, double %3) unnamed_addr #7 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 3 uses
  %mul.ov.i = icmp slt i32 %1, 0
  br i1 %mul.ov.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !38
  %i.c = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.4, i64 noundef %i.a, i64 noundef 16) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = icmp ne i32 %1, 0                        ; 2 uses
  %i.e = tail call noalias ptr @calloc(i64 noundef %i.a, i64 noundef 16) #16 ; 5 uses
  %i.f = icmp eq ptr %i.e, null
  %or.cond3.i = and i1 %i.d, %i.f
  br i1 %or.cond3.i, label %bb.d, label %gv_calloc.exit.preheader

gv_calloc.exit.preheader:                         ; preds = %bb.c
  br i1 %i.d, label %gv_calloc.exit.preheader14, label %gv_calloc.exit._crit_edge

gv_calloc.exit.preheader14:                       ; preds = %gv_calloc.exit.preheader
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 4
  br i1 %min.iters.check, label %gv_calloc.exit.preheader20, label %vector.ph

vector.ph:                                        ; preds = %gv_calloc.exit.preheader14
  %n.vec = and i64 %wide.trip.count, 2147483646   ; 4 uses
  %i.g = shl nuw nsw i64 %n.vec, 4
  %i.h = getelementptr i8, ptr %0, i64 %i.g
  %i.i = insertelement <2 x double> poison, double %2, i64 0
  %i.j = insertelement <2 x double> %i.i, double %3, i64 1 ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.k = shl i64 %index, 4                        ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.k
  %i.l = getelementptr i8, ptr %0, i64 %i.k
  %next.gep17 = getelementptr i8, ptr %i.l, i64 16
  %wide.load = load <2 x double>, ptr %next.gep, align 8
  %wide.load18 = load <2 x double>, ptr %next.gep17, align 8
  %i.m = fadd <2 x double> %i.j, %wide.load
  %i.n = fadd <2 x double> %i.j, %wide.load18
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %index
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %index
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store <2 x double> %i.m, ptr %i.o, align 8
  store <2 x double> %i.n, ptr %i.q, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !68

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %gv_calloc.exit._crit_edge, label %gv_calloc.exit.preheader20

gv_calloc.exit.preheader20:                       ; preds = %gv_calloc.exit.preheader14, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %gv_calloc.exit.preheader14 ], [ %n.vec, %middle.block ]
  %.01112.ph = phi ptr [ %0, %gv_calloc.exit.preheader14 ], [ %i.h, %middle.block ]
  %i.s = insertelement <2 x double> poison, double %2, i64 0
  %i.t = insertelement <2 x double> %i.s, double %3, i64 1
  br label %gv_calloc.exit

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr @stderr, align 8, !tbaa !38
  %i.v = shl nuw nsw i64 %i.a, 4
  %i.w = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.u, ptr noundef nonnull @.str.5, i64 noundef %i.v) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit:                                   ; preds = %gv_calloc.exit.preheader20, %gv_calloc.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %gv_calloc.exit ], [ %indvars.iv.ph, %gv_calloc.exit.preheader20 ] ; 2 uses
  %.01112 = phi ptr [ %i.aa, %gv_calloc.exit ], [ %.01112.ph, %gv_calloc.exit.preheader20 ] ; 2 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv
  %i.y = load <2 x double>, ptr %.01112, align 8, !tbaa !52
  %i.z = fadd <2 x double> %i.t, %i.y
  store <2 x double> %i.z, ptr %i.x, align 8, !tbaa !52
  %i.aa = getelementptr inbounds nuw i8, ptr %.01112, i64 16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %gv_calloc.exit._crit_edge, label %gv_calloc.exit, !llvm.loop !69

gv_calloc.exit._crit_edge:                        ; preds = %gv_calloc.exit, %middle.block, %gv_calloc.exit.preheader
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @inPoly(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, double %2, double %3) unnamed_addr #2 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 3 uses
  %mul.ov.i = icmp slt i32 %1, 0
  br i1 %mul.ov.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !38
  %i.c = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.4, i64 noundef %i.a, i64 noundef 16) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = icmp ne i32 %1, 0                        ; 2 uses
  %i.e = tail call noalias ptr @calloc(i64 noundef %i.a, i64 noundef 16) #16 ; 9 uses
  %i.f = icmp eq ptr %i.e, null
  %or.cond3.i = and i1 %i.d, %i.f
  br i1 %or.cond3.i, label %bb.d, label %gv_calloc.exit.preheader

gv_calloc.exit.preheader:                         ; preds = %bb.c
  br i1 %i.d, label %gv_calloc.exit.preheader71, label %._crit_edge

gv_calloc.exit.preheader71:                       ; preds = %gv_calloc.exit.preheader
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 4
  br i1 %min.iters.check, label %gv_calloc.exit.preheader91, label %vector.ph

vector.ph:                                        ; preds = %gv_calloc.exit.preheader71
  %n.vec = and i64 %wide.trip.count, 2147483646   ; 3 uses
  %i.g = insertelement <2 x double> poison, double %2, i64 0
  %i.h = insertelement <2 x double> %i.g, double %3, i64 1 ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.i = or disjoint i64 %index, 1                ; 2 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.i
  %wide.load = load <2 x double>, ptr %i.j, align 8
  %wide.load89 = load <2 x double>, ptr %i.k, align 8
  %i.l = fsub <2 x double> %wide.load, %i.h
  %i.m = fsub <2 x double> %wide.load89, %i.h
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %index
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.i
  store <2 x double> %i.l, ptr %i.n, align 8
  store <2 x double> %i.m, ptr %i.o, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !70

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.lr.ph69, label %gv_calloc.exit.preheader91

gv_calloc.exit.preheader91:                       ; preds = %gv_calloc.exit.preheader71, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %gv_calloc.exit.preheader71 ], [ %n.vec, %middle.block ]
  %i.q = insertelement <2 x double> poison, double %2, i64 0
  %i.r = insertelement <2 x double> %i.q, double %3, i64 1
  br label %gv_calloc.exit

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr @stderr, align 8, !tbaa !38
  %i.t = shl nuw nsw i64 %i.a, 4
  %i.u = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.s, ptr noundef nonnull @.str.5, i64 noundef %i.t) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

.lr.ph69:                                         ; preds = %gv_calloc.exit, %middle.block
  %i.v = add nsw i32 %1, -1
  %wide.trip.count76 = zext nneg i32 %1 to i64
  br label %bb.e

gv_calloc.exit:                                   ; preds = %gv_calloc.exit.preheader91, %gv_calloc.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %gv_calloc.exit ], [ %indvars.iv.ph, %gv_calloc.exit.preheader91 ] ; 3 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv
  %i.y = load <2 x double>, ptr %i.w, align 8, !tbaa !52
  %i.z = fsub <2 x double> %i.y, %i.r
  store <2 x double> %i.z, ptr %i.x, align 8, !tbaa !52
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph69, label %gv_calloc.exit, !llvm.loop !71

bb.e:                                             ; preds = %.lr.ph69, %bb.n
  %indvars.iv73 = phi i64 [ 0, %.lr.ph69 ], [ %indvars.iv.next74, %bb.n ] ; 3 uses
  %.068 = phi double [ 0.000000e+00, %.lr.ph69 ], [ %.1, %bb.n ] ; 5 uses
  %i.aa = trunc nuw nsw i64 %indvars.iv73 to i32
  %i.ab = add i32 %i.v, %i.aa
  %i.ac = srem i32 %i.ab, %1                      ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv73 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load double, ptr %i.ae, align 8, !tbaa !40 ; 5 uses
  %i.ag = fcmp oeq double %i.af, 0.000000e+00     ; 2 uses
  br i1 %i.ag, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ah = sext i32 %i.ac to i64
  %i.ai = getelementptr inbounds [16 x i8], ptr %i.e, i64 %i.ah ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !40
  %i.al = fcmp oeq double %i.ak, 0.000000e+00
  br i1 %i.al, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.am = load double, ptr %i.ad, align 8, !tbaa !39
  %i.an = load double, ptr %i.ai, align 8, !tbaa !39
  %i.ao = fmul double %i.am, %i.an
  %i.ap = fcmp olt double %i.ao, 0.000000e+00
  br i1 %i.ap, label %._crit_edge, label %bb.n

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.aq = fcmp ult double %i.af, 0.000000e+00
  %.phi.trans.insert = sext i32 %i.ac to i64      ; 2 uses
  %.phi.trans.insert80 = getelementptr inbounds [16 x i8], ptr %i.e, i64 %.phi.trans.insert
  %.phi.trans.insert81 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert80, i64 8
  %.pre = load double, ptr %.phi.trans.insert81, align 8, !tbaa !40 ; 5 uses
  %i.ar = fcmp ugt double %.pre, 0.000000e+00
  %or.cond87 = select i1 %i.aq, i1 true, i1 %i.ar
  br i1 %or.cond87, label %._crit_edge79, label %bb.i

._crit_edge79:                                    ; preds = %bb.h
  %i.as = fcmp ult double %.pre, 0.000000e+00
  %i.at = fcmp ugt double %i.af, 0.000000e+00
  %or.cond63 = or i1 %i.at, %i.as
  br i1 %or.cond63, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge79
  %i.au = load double, ptr %i.ad, align 8, !tbaa !39
  %i.av = getelementptr inbounds [16 x i8], ptr %i.e, i64 %.phi.trans.insert
  %i.aw = load double, ptr %i.av, align 8, !tbaa !39
  %i.ax = fneg double %i.af
  %i.ay = fmul double %i.aw, %i.ax
  %i.az = tail call double @llvm.fmuladd.f64(double %i.au, double %.pre, double %i.ay)
  %i.ba = fsub double %.pre, %i.af
  %i.bb = fdiv double %i.az, %i.ba                ; 2 uses
  %i.bc = fcmp oeq double %i.bb, 0.000000e+00
  br i1 %i.bc, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = fcmp ogt double %i.bb, 0.000000e+00
  br i1 %i.bd, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.be = fcmp oeq double %.pre, 0.000000e+00
  %or.cond = or i1 %i.ag, %i.be
  br i1 %or.cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bf = fadd double %.068, 5.000000e-01
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bg = fadd double %.068, 1.000000e+00
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge79, %bb.l, %bb.m, %bb.j, %bb.g
  %.1 = phi double [ %.068, %bb.g ], [ %i.bf, %bb.l ], [ %i.bg, %bb.m ], [ %.068, %bb.j ], [ %.068, %._crit_edge79 ] ; 2 uses
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %exitcond77.not = icmp eq i64 %indvars.iv.next74, %wide.trip.count76
  br i1 %exitcond77.not, label %._crit_edge.loopexit, label %bb.e, !llvm.loop !72

._crit_edge.loopexit:                             ; preds = %bb.n
  %i.bh = fptosi double %.1 to i32
  %i.bi = and i32 %i.bh, -2147483647
  %i.bj = icmp eq i32 %i.bi, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.i, %bb.g, %._crit_edge.loopexit, %gv_calloc.exit.preheader
  %.060 = phi i1 [ %i.bj, %._crit_edge.loopexit ], [ false, %gv_calloc.exit.preheader ], [ true, %bb.g ], [ true, %bb.i ]
  tail call void @free(ptr noundef %i.e) #15
  ret i1 %.060
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: cold inlinehint nofree noreturn nounwind uwtable
define internal fastcc void @graphviz_exit() unnamed_addr #9 {
bb.a:
  tail call void @exit(i32 noundef 1) #20
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #12

declare ptr @agget(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #13

declare hidden void @subpt(ptr noundef, double, double, double, double) local_unnamed_addr #4

declare hidden double @area_2(double, double, double, double, double, double) local_unnamed_addr #4

declare hidden i32 @leftOf(double, double, double, double, double, double) local_unnamed_addr #4

declare hidden i32 @intersection(double, double, double, double, double, double, double, double, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.minnum.v2f64(<2 x double>, <2 x double>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.maxnum.v2f64(<2 x double>, <2 x double>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

attributes #0 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold inlinehint nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }
attributes #16 = { nounwind allocsize(0,1) }
attributes #17 = { cold nounwind }
attributes #18 = { noreturn }
attributes #19 = { nounwind willreturn memory(read) }
attributes #20 = { cold noreturn nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !53}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"double", !5, i64 0}
!10 = !{!"pointf_s", !9, i64 0, !9, i64 8}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"p1 _ZTS8pointf_s", !11, i64 0}
!13 = !{!"", !10, i64 0, !10, i64 16, !6, i64 32, !12, i64 40, !6, i64 48}
!14 = !{!13, !12, i64 40}
!15 = !{!"long", !5, i64 0}
!16 = !{!"Agtag_s", !6, i64 0, !6, i64 0, !6, i64 0, !6, i64 0, !15, i64 8}
!17 = !{!"p1 _ZTS7Agrec_s", !11, i64 0}
!18 = !{!"Agobj_s", !16, i64 0, !17, i64 16}
!19 = !{!18, !17, i64 16}
!20 = !{!"p1 omnipotent char", !11, i64 0}
!21 = !{!"Agrec_s", !20, i64 0, !17, i64 8}
!22 = !{!"p1 _ZTS10shape_desc", !11, i64 0}
!23 = !{!"", !10, i64 0, !10, i64 16}
!24 = !{!"p1 _ZTS11textlabel_t", !11, i64 0}
!25 = !{!"_Bool", !5, i64 0}
!26 = !{!"p1 double", !11, i64 0}
!27 = !{!"p1 _ZTS8Agnode_s", !11, i64 0}
!28 = !{!"any p2 pointer", !11, i64 0}
!29 = !{!"p2 _ZTS8Agedge_s", !28, i64 0}
!30 = !{!"elist", !29, i64 0, !15, i64 8}
!31 = !{!"p1 _ZTS8Agraph_s", !11, i64 0}
!32 = !{!"p1 _ZTS8Agedge_s", !11, i64 0}
!33 = !{!"Agnodeinfo_t", !21, i64 0, !22, i64 16, !11, i64 24, !10, i64 32, !9, i64 48, !9, i64 56, !23, i64 64, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !24, i64 136, !24, i64 144, !11, i64 152, !5, i64 160, !5, i64 161, !25, i64 162, !5, i64 163, !6, i64 164, !6, i64 168, !6, i64 172, !26, i64 176, !9, i64 184, !5, i64 192, !25, i64 193, !27, i64 200, !27, i64 208, !5, i64 216, !15, i64 224, !5, i64 232, !5, i64 233, !5, i64 234, !27, i64 240, !27, i64 248, !30, i64 256, !30, i64 272, !30, i64 288, !30, i64 304, !30, i64 320, !31, i64 336, !6, i64 344, !27, i64 352, !6, i64 360, !6, i64 364, !9, i64 368, !30, i64 376, !30, i64 392, !30, i64 408, !30, i64 424, !32, i64 440, !6, i64 448, !6, i64 452, !6, i64 456, !5, i64 464}
!34 = !{!33, !31, i64 336}
!35 = !{!15, !15, i64 0}
!36 = !{!13, !6, i64 48}
!37 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{!10, !9, i64 0}
!40 = !{!10, !9, i64 8}
!41 = !{!33, !11, i64 24}
!42 = !{!"", !25, i64 0, !25, i64 0, !25, i64 0, !25, i64 0, !25, i64 0, !25, i64 0, !25, i64 0, !25, i64 0, !25, i64 1, !25, i64 1, !25, i64 1, !25, i64 1, !6, i64 1}
!43 = !{!"polygon_t", !6, i64 0, !15, i64 8, !15, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !42, i64 48, !12, i64 56}
!44 = !{!43, !15, i64 16}
!45 = !{!33, !22, i64 16}
!46 = !{!"p1 _ZTS15shape_functions", !11, i64 0}
!47 = !{!"p1 _ZTS9polygon_t", !11, i64 0}
!48 = !{!"shape_desc", !20, i64 0, !46, i64 8, !47, i64 16, !25, i64 24}
!49 = !{!48, !20, i64 0}
!50 = !{!43, !12, i64 56}
!51 = !{!43, !6, i64 0}
!52 = !{!9, !9, i64 0}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!13, !6, i64 32}
!55 = !{!"llvm.loop.isvectorized", i32 1}
!56 = !{!"llvm.loop.unroll.runtime.disable"}
!57 = distinct !{!57, !53}
!58 = !{!33, !9, i64 48}
!59 = !{!33, !9, i64 56}
!60 = distinct !{null}
!61 = distinct !{!61, !53}
!62 = distinct !{!62, !53, !55, !56}
!63 = distinct !{!63, !53, !55, !56}
!64 = distinct !{!64, !53, !56, !55}
!65 = distinct !{!65, !53}
!66 = !{!13, !9, i64 16}
!67 = !{!13, !9, i64 0}
!68 = distinct !{!68, !53, !55, !56}
!69 = distinct !{!69, !53, !56, !55}
!70 = distinct !{!70, !53, !55, !56}
!71 = distinct !{!71, !53, !56, !55}
!72 = distinct !{!72, !53}
end_hunk_0
