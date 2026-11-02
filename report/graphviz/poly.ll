Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/poly?download=true
inline.NumInlined: 35
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@makeAddPoly:bb.a
  %i.cc = load ptr, ptr @stderr, align 8, !tbaa !38
  %i.cd = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cc, ptr noundef nonnull @.str.4, i64 noundef %i.ag, i64 noundef 16) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.ce = tail call noalias ptr @calloc(i64 noundef %i.ag, i64 noundef 16) #16 ; 4 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.r, label %gv_calloc.exit131

.thread162:                                       ; preds = %isBox.exit, %.split
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 1, ptr %i.cg, align 8, !tbaa !36
  %i.ch = tail call noalias ptr @calloc(i64 noundef %i.ag, i64 noundef 16) #16 ; 2 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.r, label %gv_calloc.exit131.thread

bb.r:                                             ; preds = %.thread162, %bb.q
  %i.cj = load ptr, ptr @stderr, align 8, !tbaa !38
  %i.ck = shl nuw i64 %i.ag, 4
  %i.cl = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cj, ptr noundef nonnull @.str.5, i64 noundef %i.ck) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit131:                                ; preds = %bb.q
  br i1 %i.al, label %gv_calloc.exit131.thread, label %.lr.ph

.lr.ph:                                           ; preds = %gv_calloc.exit131
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !50
  %i.co = insertelement <2 x double> poison, double %2, i64 0
  %i.cp = insertelement <2 x double> %i.co, double %3, i64 1
  br label %bb.s

gv_calloc.exit131.thread:                         ; preds = %.thread162, %gv_calloc.exit131
  %i.cq = phi ptr [ %i.ce, %gv_calloc.exit131 ], [ %i.ch, %.thread162 ] ; 5 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !50 ; 4 uses
  %i.ct = load <2 x double>, ptr %i.cs, align 8, !tbaa !52
  %i.cu = fdiv <2 x double> %i.ct, splat (double 7.200000e+01)
  %i.cv = insertelement <2 x double> poison, double %2, i64 0
  %i.cw = insertelement <2 x double> %i.cv, double %3, i64 1 ; 6 uses
  %i.cx = fadd <2 x double> %i.cw, %i.cu
  store <2 x double> %i.cx, ptr %i.cq, align 8, !tbaa !52
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.da = load <2 x double>, ptr %i.cy, align 8, !tbaa !52
  %i.db = fdiv <2 x double> %i.da, splat (double 7.200000e+01) ; 2 uses
  %i.dc = fsub <2 x double> %i.db, %i.cw
  %i.dd = fadd <2 x double> %i.db, %i.cw
  %i.de = shufflevector <2 x double> %i.dc, <2 x double> %i.dd, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.de, ptr %i.cz, align 8, !tbaa !52
  %i.df = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.dh = load <2 x double>, ptr %i.df, align 8, !tbaa !52
  %i.di = fdiv <2 x double> %i.dh, splat (double 7.200000e+01)
  %i.dj = fsub <2 x double> %i.di, %i.cw
  store <2 x double> %i.dj, ptr %i.dg, align 8, !tbaa !52
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cs, i64 48
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cq, i64 48
  %i.dm = load <2 x double>, ptr %i.dk, align 8, !tbaa !52
  %i.dn = fdiv <2 x double> %i.dm, splat (double 7.200000e+01) ; 2 uses
  %i.do = fadd <2 x double> %i.dn, %i.cw
  %i.dp = fsub <2 x double> %i.dn, %i.cw
  %i.dq = shufflevector <2 x double> %i.do, <2 x double> %i.dp, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.dq, ptr %i.dl, align 8, !tbaa !52
  br label %.loopexit

bb.s:                                             ; preds = %.lr.ph, %bb.s
  %.0125150 = phi i64 [ 0, %.lr.ph ], [ %i.ed, %bb.s ] ; 3 uses
  %i.dr = getelementptr inbounds nuw [16 x i8], ptr %i.cn, i64 %.0125150
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %i.ce, i64 %.0125150
  %i.dt = load <2 x double>, ptr %i.dr, align 8, !tbaa !52 ; 3 uses
  %i.du = extractelement <2 x double> %i.dt, i64 0
  %i.dv = extractelement <2 x double> %i.dt, i64 1
  %i.dw = tail call double @hypot(double noundef %i.du, double noundef %i.dv) #15
  %i.dx = insertelement <2 x double> poison, double %i.dw, i64 0
  %i.dy = shufflevector <2 x double> %i.dx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dz = fdiv <2 x double> %i.cp, %i.dy
  %i.ea = fadd <2 x double> %i.dz, splat (double 1.000000e+00)
  %i.eb = fmul <2 x double> %i.dt, %i.ea
  %i.ec = fdiv <2 x double> %i.eb, splat (double 7.200000e+01)
  store <2 x double> %i.ec, ptr %i.ds, align 8, !tbaa !52
  %i.ed = add nuw i64 %.0125150, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ed, %i.ag
  br i1 %exitcond.not, label %.loopexit, label %bb.s, !llvm.loop !57

bb.t:                                             ; preds = %.thread144, %.thread
  %i.ee = call fastcc ptr @genRound(ptr noundef nonnull %1, ptr noundef %i.a, double noundef %2, double noundef %3)
  br label %.loopexit

bb.u:                                             ; preds = %bb.d
  store i64 4, ptr %i.a, align 8, !tbaa !35
  %i.ef = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 4, i64 noundef 16) #16 ; 7 uses
  %i.eg = icmp eq ptr %i.ef, null
  br i1 %i.eg, label %bb.v, label %gv_calloc.exit133

bb.v:                                             ; preds = %bb.u
  %i.eh = load ptr, ptr @stderr, align 8, !tbaa !38
  %i.ei = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.eh, ptr noundef nonnull @.str.5, i64 noundef 64) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit133:                                ; preds = %bb.u
  %i.ej = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !41 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.el, i64 32
  %i.en = load <2 x double>, ptr %i.em, align 8, !tbaa !52
  %i.eo = fdiv <2 x double> %i.en, splat (double 7.200000e+01)
  %i.ep = insertelement <2 x double> poison, double %2, i64 0
  %i.eq = insertelement <2 x double> %i.ep, double %3, i64 1 ; 2 uses
  %i.er = fsub <2 x double> %i.eo, %i.eq          ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  %i.et = extractelement <2 x double> %i.er, i64 1
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ef, i64 32
  %i.ev = load <2 x double>, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !52
  store <2 x double> %i.er, ptr %i.ef, align 8, !tbaa !52
  %i.ew = fdiv <2 x double> %i.ev, splat (double 7.200000e+01)
  %i.ex = fadd <2 x double> %i.eq, %i.ew          ; 3 uses
  %i.ey = extractelement <2 x double> %i.ex, i64 0
  store double %i.ey, ptr %i.es, align 8, !tbaa !52
  store double %i.et, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !52
  store <2 x double> %i.ex, ptr %i.eu, align 8, !tbaa !52
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ef, i64 48
  %i.fa = shufflevector <2 x double> %i.er, <2 x double> %i.ex, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.fa, ptr %i.ez, align 8, !tbaa !52
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 1, ptr %i.fb, align 8, !tbaa !36
  br label %.loopexit

bb.w:                                             ; preds = %bb.d
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 2, ptr %i.fc, align 8, !tbaa !36
  %i.fd = call fastcc ptr @genRound(ptr noundef nonnull %1, ptr noundef %i.a, double noundef %2, double noundef %3)
  br label %.loopexit

bb.x:                                             ; preds = %bb.d
  %i.fe = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !45
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !49
  tail call void (ptr, ...) @agerrorf(ptr noundef nonnull @.str.2, ptr noundef %i.fh) #15
  br label %bb.y

.loopexit:                                        ; preds = %bb.s, %gv_calloc.exit133, %bb.w, %gv_calloc.exit131.thread, %bb.t, %gv_calloc.exit
  %.0124 = phi ptr [ %i.k, %gv_calloc.exit ], [ %i.cq, %gv_calloc.exit131.thread ], [ %i.fd, %bb.w ], [ %i.ee, %bb.t ], [ %i.ef, %gv_calloc.exit133 ], [ %i.ce, %bb.s ] ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.0124, ptr %i.fi, align 8, !tbaa !14
  %i.fj = load i64, ptr %i.a, align 8, !tbaa !35  ; 3 uses
  %i.fk = trunc i64 %i.fj to i32
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.fk, ptr %i.fl, align 8, !tbaa !54
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fn = load <2 x double>, ptr %.0124, align 8, !tbaa !52 ; 4 uses
  %i.fo = icmp ugt i64 %i.fj, 1
  br i1 %i.fo, label %.lr.ph.i, label %bbox.exit

.lr.ph.i:                                         ; preds = %.loopexit, %.lr.ph.i
  %.031.i = phi i64 [ %i.fv, %.lr.ph.i ], [ 1, %.loopexit ]
  %.02526.i = phi ptr [ %i.fr, %.lr.ph.i ], [ %.0124, %.loopexit ]
  %i.fp = phi <2 x double> [ %i.ft, %.lr.ph.i ], [ %i.fn, %.loopexit ]
  %i.fq = phi <2 x double> [ %i.fu, %.lr.ph.i ], [ %i.fn, %.loopexit ]
  %i.fr = getelementptr inbounds nuw i8, ptr %.02526.i, i64 16 ; 2 uses
  %i.fs = load <2 x double>, ptr %i.fr, align 8, !tbaa !52 ; 2 uses
  %i.ft = tail call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %i.fp, <2 x double> %i.fs) ; 2 uses
  %i.fu = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.fq, <2 x double> %i.fs) ; 2 uses
  %i.fv = add nuw i64 %.031.i, 1                  ; 2 uses
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
  %4 = icmp eq i64 %i.j, 1
  br i1 %4, label %gv_calloc.exit.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.j, -2
  br label %gv_calloc.exit

bb.b:                                             ; preds = %.thread28.thread, %.thread28
  %i.u = phi i64 [ 20, %.thread28.thread ], [ %spec.select, %.thread28 ]
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !38
  %i.w = shl nuw nsw i64 %i.u, 4
  %i.x = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.v, ptr noundef nonnull @.str.5, i64 noundef %i.w) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit._crit_edge.loopexit.unr-lcssa:     ; preds = %gv_calloc.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %gv_calloc.exit._crit_edge, label %gv_calloc.exit.epil.preheader

gv_calloc.exit.epil.preheader:                    ; preds = %gv_calloc.exit._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.031.epil.init = phi i64 [ 0, %.lr.ph ], [ %30, %gv_calloc.exit._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod36 = trunc i64 %i.j to i1
  tail call void @llvm.assume(i1 %lcmp.mod36)
  %5 = uitofp nneg i64 %.031.epil.init to double
  %6 = fdiv nnan double %5, %i.o
  %7 = fmul nnan double %6, f0x400921FB54442D18
  %8 = fmul nnan double %7, 2.000000e+00          ; 2 uses
  %9 = tail call double @cos(double noundef %8) #15
  %10 = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %.031.epil.init
  %11 = tail call double @sin(double noundef %8) #15
  %12 = insertelement <2 x double> poison, double %9, i64 0
  %13 = insertelement <2 x double> %12, double %11, i64 1
  %14 = fmul <2 x double> %13, %i.t
  store <2 x double> %14, ptr %10, align 8, !tbaa !52
  br label %gv_calloc.exit._crit_edge

gv_calloc.exit._crit_edge:                        ; preds = %gv_calloc.exit.epil.preheader, %gv_calloc.exit._crit_edge.loopexit.unr-lcssa, %gv_calloc.exit.preheader
  %15 = phi i64 [ 0, %gv_calloc.exit.preheader ], [ %i.j, %gv_calloc.exit._crit_edge.loopexit.unr-lcssa ], [ %i.j, %gv_calloc.exit.epil.preheader ]
  %16 = phi ptr [ %i.f, %gv_calloc.exit.preheader ], [ %i.k, %gv_calloc.exit._crit_edge.loopexit.unr-lcssa ], [ %i.k, %gv_calloc.exit.epil.preheader ]
  store i64 %15, ptr %1, align 8, !tbaa !35
  ret ptr %16

gv_calloc.exit:                                   ; preds = %gv_calloc.exit, %.lr.ph.new
  %.031 = phi i64 [ 0, %.lr.ph.new ], [ %30, %gv_calloc.exit ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %gv_calloc.exit ]
  %i.y = uitofp nneg i64 %.031 to double
  %i.z = fdiv double %i.y, %i.o
  %i.aa = fmul double %i.z, f0x400921FB54442D18
  %i.ab = fmul double %i.aa, 2.000000e+00         ; 2 uses
  %17 = tail call double @cos(double noundef %i.ab) #15
  %18 = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %.031
  %19 = tail call double @sin(double noundef %i.ab) #15
  %20 = insertelement <2 x double> poison, double %17, i64 0
  %21 = insertelement <2 x double> %20, double %19, i64 1
  %22 = fmul <2 x double> %21, %i.t
  store <2 x double> %22, ptr %18, align 8, !tbaa !52
  %23 = or disjoint i64 %.031, 1                  ; 2 uses
  %24 = uitofp nneg i64 %23 to double
  %25 = fdiv nnan double %24, %i.o
  %26 = fmul nnan double %25, f0x400921FB54442D18
  %27 = fmul nnan double %26, 2.000000e+00        ; 2 uses
  %28 = tail call double @cos(double noundef %27) #15
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %23
  %29 = tail call double @sin(double noundef %27) #15
  %i.ad = insertelement <2 x double> poison, double %28, i64 0
  %i.ae = insertelement <2 x double> %i.ad, double %29, i64 1
  %i.af = fmul <2 x double> %i.ae, %i.t
  store <2 x double> %i.af, ptr %i.ac, align 8, !tbaa !52
  %30 = add nuw nsw i64 %.031, 2                  ; 2 uses
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
  %i.as = phi ptr [ %.pre, %bb.j ], [ %i.y, %vector.body ]
  %.075 = phi ptr [ %i.ar, %bb.j ], [ %i.ag, %vector.body ] ; 17 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !45
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !49 ; 2 uses
  %i.aw = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.av, ptr noundef nonnull dereferenceable(4) @.str) #19
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.loopexit
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 1, ptr %i.ay, align 8, !tbaa !36
  br label %bb.aa

bb.l:                                             ; preds = %.loopexit
  %i.az = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.av, ptr noundef nonnull dereferenceable(8) @.str.1) #19
  %i.ba = icmp eq i32 %i.az, 0
  %i.bb = load i64, ptr %i.a, align 8
  %.not.i = icmp eq i64 %i.bb, 4
  %or.cond97 = select i1 %i.ba, i1 %.not.i, i1 false
  br i1 %or.cond97, label %bb.m, label %isBox.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %.075, i64 8
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !40 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.075, i64 16 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.075, i64 24
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !40 ; 2 uses
  %i.bh = fcmp oeq double %i.bd, %i.bg
  br i1 %i.bh, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bi = getelementptr inbounds nuw i8, ptr %.075, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %.075, i64 40
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !40
  %i.bl = getelementptr inbounds nuw i8, ptr %.075, i64 56
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !40
  %i.bn = fcmp oeq double %i.bk, %i.bm
  br i1 %i.bn, label %bb.o, label %isBox.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.bo = getelementptr inbounds nuw i8, ptr %.075, i64 48
  %i.bp = load double, ptr %.075, align 8, !tbaa !39
  %i.bq = load double, ptr %i.bo, align 8, !tbaa !39
  %i.br = fcmp oeq double %i.bp, %i.bq
  br i1 %i.br, label %.split, label %isBox.exit.thread

.split:                                           ; preds = %bb.o
  %i.bs = load double, ptr %i.be, align 8, !tbaa !39
  %i.bt = load double, ptr %i.bi, align 8, !tbaa !39
  %i.bu = fcmp oeq double %i.bs, %i.bt
  br i1 %i.bu, label %bb.s, label %isBox.exit.thread

bb.p:                                             ; preds = %bb.m
  %i.bv = load double, ptr %.075, align 8, !tbaa !39
  %i.bw = load double, ptr %i.be, align 8, !tbaa !39
  %i.bx = fcmp oeq double %i.bv, %i.bw
  br i1 %i.bx, label %bb.q, label %isBox.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.by = getelementptr inbounds nuw i8, ptr %.075, i64 32
  %i.bz = load double, ptr %i.by, align 8, !tbaa !39
  %i.ca = getelementptr inbounds nuw i8, ptr %.075, i64 48
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !39
  %i.cc = fcmp oeq double %i.bz, %i.cb
  br i1 %i.cc, label %bb.r, label %isBox.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.cd = getelementptr inbounds nuw i8, ptr %.075, i64 56
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !40
  %i.cf = fcmp oeq double %i.bd, %i.ce
  br i1 %i.cf, label %isBox.exit, label %isBox.exit.thread

isBox.exit:                                       ; preds = %bb.r
  %i.cg = getelementptr inbounds nuw i8, ptr %.075, i64 40
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !40
  %i.ci = fcmp oeq double %i.bg, %i.ch
  br i1 %i.ci, label %bb.s, label %isBox.exit.thread

bb.s:                                             ; preds = %.split, %isBox.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 1, ptr %i.cj, align 8, !tbaa !36
  br label %bb.aa

isBox.exit.thread:                                ; preds = %.split, %bb.p, %bb.q, %bb.r, %bb.n, %bb.o, %isBox.exit, %bb.l
  %i.ck = load i64, ptr %i.ab, align 8, !tbaa !44
end_hunk_0
begin_hunk_1_@transCopy:bb.a

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
end_hunk_1
