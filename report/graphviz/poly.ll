Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/poly?download=true
inline.NumInlined: 35
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@makeAddPoly:bb.a

bb.p:                                             ; preds = %bb.o
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
define internal fastcc nonnull ptr @genRound(ptr noundef %0, ptr nofree noundef nonnull writeonly captures(none) %1, double noundef %2, double noundef %3) unnamed_addr #2 {
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
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !19   ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !41  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !44 ; 11 uses
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
  %i.ag = tail call noalias ptr @calloc(i64 noundef %i.ac, i64 noundef 16) #16 ; 12 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.i, label %gv_calloc.exit82.preheader

gv_calloc.exit82.preheader:                       ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !50 ; 8 uses
  %i.ak = shl nuw i64 %i.ac, 4                    ; 3 uses
  %i.al = add i64 %i.ak, -8                       ; 2 uses
end_hunk_0
begin_hunk_1_@makePoly:bb.a
  %wide.load133 = load <2 x double>, ptr %next.gep131, align 8
  %i.em = fmul <2 x double> %i.ej, %wide.load132
  %i.en = fmul <2 x double> %i.ej, %wide.load133
  store <2 x double> %i.em, ptr %next.gep, align 8
  store <2 x double> %i.en, ptr %next.gep131, align 8
  %index.next134 = add nuw i64 %index130, 2       ; 2 uses
  %i.eo = icmp eq i64 %index.next134, %n.vec
  br i1 %i.eo, label %middle.block135, label %vector.body129, !llvm.loop !64

middle.block135:                                  ; preds = %vector.body129
  %cmp.n = icmp eq i64 %.pr.pre105, %n.vec
  br i1 %cmp.n, label %inflatePts.exit.loopexit, label %.lr.ph.i.preheader138

.lr.ph.i.preheader138:                            ; preds = %.lr.ph.i.preheader, %middle.block135
  %.010.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block135 ]
  %.089.i.ph = phi ptr [ %.1, %.lr.ph.i.preheader ], [ %i.eh, %middle.block135 ]
  %i.ep = insertelement <2 x double> poison, double %2, i64 0
  %i.eq = insertelement <2 x double> %i.ep, double %3, i64 1
  br label %.lr.ph.i

inflatePts.exit.thread:                           ; preds = %bb.ab
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.1, ptr %i.er, align 8, !tbaa !14
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.es, align 8, !tbaa !54
  %i.et = load <2 x double>, ptr %.1, align 8, !tbaa !52 ; 2 uses
  br label %bbox.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader138, %.lr.ph.i
  %.010.i = phi i64 [ %i.ex, %.lr.ph.i ], [ %.010.i.ph, %.lr.ph.i.preheader138 ]
  %.089.i = phi ptr [ %i.ew, %.lr.ph.i ], [ %.089.i.ph, %.lr.ph.i.preheader138 ] ; 3 uses
  %i.eu = load <2 x double>, ptr %.089.i, align 8, !tbaa !52
  %i.ev = fmul <2 x double> %i.eq, %i.eu
  store <2 x double> %i.ev, ptr %.089.i, align 8, !tbaa !52
  %i.ew = getelementptr inbounds nuw i8, ptr %.089.i, i64 16
  %i.ex = add nuw i64 %.010.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ex, %.pr.pre105
  br i1 %exitcond.not.i, label %inflatePts.exit.loopexit, label %.lr.ph.i, !llvm.loop !65

inflatePts.exit.loopexit:                         ; preds = %.lr.ph.i, %middle.block135
  %.pr.pre = load i64, ptr %i.a, align 8, !tbaa !35
  br label %inflatePts.exit

inflatePts.exit:                                  ; preds = %inflatePts.exit.loopexit, %bb.aa
  %.pr = phi i64 [ %.pr.pre, %inflatePts.exit.loopexit ], [ %.pr.pre105, %bb.aa ] ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.1, ptr %i.ey, align 8, !tbaa !14
  %i.ez = trunc i64 %.pr to i32
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.ez, ptr %i.fa, align 8, !tbaa !54
  %i.fb = load <2 x double>, ptr %.1, align 8, !tbaa !52 ; 4 uses
  %i.fc = icmp ugt i64 %.pr, 1
  br i1 %i.fc, label %.lr.ph.i92, label %bbox.exit

.lr.ph.i92:                                       ; preds = %inflatePts.exit, %.lr.ph.i92
  %.031.i = phi i64 [ %i.fj, %.lr.ph.i92 ], [ 1, %inflatePts.exit ]
  %.02526.i = phi ptr [ %i.ff, %.lr.ph.i92 ], [ %.1, %inflatePts.exit ]
  %i.fd = phi <2 x double> [ %i.fh, %.lr.ph.i92 ], [ %i.fb, %inflatePts.exit ]
  %i.fe = phi <2 x double> [ %i.fi, %.lr.ph.i92 ], [ %i.fb, %inflatePts.exit ]
  %i.ff = getelementptr inbounds nuw i8, ptr %.02526.i, i64 16 ; 2 uses
  %i.fg = load <2 x double>, ptr %i.ff, align 8, !tbaa !52 ; 2 uses
  %i.fh = tail call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %i.fd, <2 x double> %i.fg) ; 2 uses
  %i.fi = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.fe, <2 x double> %i.fg) ; 2 uses
  %i.fj = add nuw i64 %.031.i, 1                  ; 2 uses
  %exitcond.not.i93 = icmp eq i64 %i.fj, %.pr
  br i1 %exitcond.not.i93, label %bbox.exit, label %.lr.ph.i92, !llvm.loop !0

bbox.exit:                                        ; preds = %.lr.ph.i92, %inflatePts.exit.thread, %inflatePts.exit
  %i.fk = phi <2 x double> [ %i.fb, %inflatePts.exit ], [ %i.et, %inflatePts.exit.thread ], [ %i.fh, %.lr.ph.i92 ]
  %i.fl = phi <2 x double> [ %i.fb, %inflatePts.exit ], [ %i.et, %inflatePts.exit.thread ], [ %i.fi, %.lr.ph.i92 ]
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x double> %i.fk, ptr %0, align 8, !tbaa !52
  store <2 x double> %i.fl, ptr %i.fm, align 8, !tbaa !52
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
  %i.ae = load double, ptr %i.d, align 8, !tbaa !67
  %i.af = load double, ptr %2, align 8, !tbaa !68
  %i.ag = fsub double %i.ae, %i.af
  %i.ah = load double, ptr %i.k, align 8, !tbaa !67
  %i.ai = fadd double %i.ag, %i.ah
  %i.aj = load double, ptr %5, align 8, !tbaa !68
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
  %i.bp = getelementptr inbounds [16 x i8], ptr %i.aw, i64 %i.bo ; 5 uses
  %i.bq = sext i32 %i.bl to i64
  %i.br = getelementptr inbounds [16 x i8], ptr %i.aw, i64 %i.bq ; 4 uses
  %i.bs = load double, ptr %i.bp, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 4 uses
  %i.bu = load double, ptr %i.bt, align 8
  %i.bv = load double, ptr %i.br, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 3 uses
  %i.bx = load double, ptr %i.bw, align 8
  call void @subpt(ptr noundef nonnull %6, double %i.bs, double %i.bu, double %i.bv, double %i.bx) #15
  %i.by = sext i32 %.071.i to i64
  %i.bz = getelementptr inbounds [16 x i8], ptr %i.bb, i64 %i.by ; 5 uses
  %i.ca = sext i32 %i.bn to i64
  %i.cb = getelementptr inbounds [16 x i8], ptr %i.bb, i64 %i.ca ; 4 uses
  %i.cc = load double, ptr %i.bz, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 4 uses
  %i.ce = load double, ptr %i.cd, align 8
  %i.cf = load double, ptr %i.cb, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 3 uses
  %i.ch = load double, ptr %i.cg, align 8
  call void @subpt(ptr noundef nonnull %7, double %i.cc, double %i.ce, double %i.cf, double %i.ch) #15
  %i.ci = load double, ptr %6, align 8
  %i.cj = load double, ptr %i.bg, align 8
  %i.ck = load double, ptr %7, align 8
  %i.cl = load double, ptr %i.bh, align 8
  %i.cm = call double @area_2(double 0.000000e+00, double 0.000000e+00, double %i.ci, double %i.cj, double %i.ck, double %i.cl) #15 ; 2 uses
  %13 = load double, ptr %i.br, align 8
  %14 = load double, ptr %i.bw, align 8
  %15 = load double, ptr %i.bp, align 8
  %16 = load double, ptr %i.bt, align 8
  %17 = load double, ptr %i.bz, align 8
  %18 = load double, ptr %i.cd, align 8
  %i.cn = call i32 @leftOf(double %13, double %14, double %15, double %16, double %17, double %18) #15
  %19 = load double, ptr %i.cb, align 8
  %20 = load double, ptr %i.cg, align 8
  %21 = load double, ptr %i.bz, align 8
  %22 = load double, ptr %i.cd, align 8
  %23 = load double, ptr %i.bp, align 8
  %24 = load double, ptr %i.bt, align 8
  %i.co = call i32 @leftOf(double %19, double %20, double %21, double %22, double %23, double %24) #15
  %25 = load double, ptr %i.br, align 8
  %26 = load double, ptr %i.bw, align 8
  %27 = load double, ptr %i.bp, align 8
  %28 = load double, ptr %i.bt, align 8
  %29 = load double, ptr %i.cb, align 8
  %30 = load double, ptr %i.cg, align 8
  %31 = load double, ptr %i.bz, align 8
  %32 = load double, ptr %i.cd, align 8
  %i.cp = call i32 @intersection(double %25, double %26, double %27, double %28, double %29, double %30, double %31, double %32, ptr noundef nonnull %8) #15
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
  br i1 %or.cond77.i, label %bb.h, label %bb.s, !llvm.loop !66

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
define internal fastcc noundef ptr @transCopy(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, double %2, double %3) unnamed_addr #7 {
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
  %i.d = icmp ne i32 %1, 0
  %i.e = tail call noalias ptr @calloc(i64 noundef %i.a, i64 noundef 16) #16 ; 5 uses
  %i.f = icmp eq ptr %i.e, null
  %or.cond3.i = and i1 %i.d, %i.f
  br i1 %or.cond3.i, label %bb.d, label %gv_calloc.exit.preheader

gv_calloc.exit.preheader:                         ; preds = %bb.c
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %gv_calloc.exit._crit_edge, label %gv_calloc.exit.preheader14

gv_calloc.exit.preheader14:                       ; preds = %gv_calloc.exit.preheader
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 4
  br i1 %min.iters.check, label %gv_calloc.exit.preheader19, label %vector.ph

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
  %next.gep16 = getelementptr i8, ptr %i.l, i64 16
  %wide.load = load <2 x double>, ptr %next.gep, align 8
  %wide.load17 = load <2 x double>, ptr %next.gep16, align 8
  %i.m = fadd <2 x double> %i.j, %wide.load
  %i.n = fadd <2 x double> %i.j, %wide.load17
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %index
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %index
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store <2 x double> %i.m, ptr %i.o, align 8
  store <2 x double> %i.n, ptr %i.q, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !69

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %gv_calloc.exit._crit_edge, label %gv_calloc.exit.preheader19

gv_calloc.exit.preheader19:                       ; preds = %gv_calloc.exit.preheader14, %middle.block
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

gv_calloc.exit:                                   ; preds = %gv_calloc.exit.preheader19, %gv_calloc.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %gv_calloc.exit ], [ %indvars.iv.ph, %gv_calloc.exit.preheader19 ] ; 2 uses
  %.01112 = phi ptr [ %i.aa, %gv_calloc.exit ], [ %.01112.ph, %gv_calloc.exit.preheader19 ] ; 2 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv
  %i.y = load <2 x double>, ptr %.01112, align 8, !tbaa !52
  %i.z = fadd <2 x double> %i.t, %i.y
  store <2 x double> %i.z, ptr %i.x, align 8, !tbaa !52
  %i.aa = getelementptr inbounds nuw i8, ptr %.01112, i64 16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %gv_calloc.exit._crit_edge, label %gv_calloc.exit, !llvm.loop !70

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
  %i.d = icmp ne i32 %1, 0
  %i.e = tail call noalias ptr @calloc(i64 noundef %i.a, i64 noundef 16) #16 ; 9 uses
  %i.f = icmp eq ptr %i.e, null
  %or.cond3.i = and i1 %i.d, %i.f
  br i1 %or.cond3.i, label %bb.d, label %gv_calloc.exit.preheader

gv_calloc.exit.preheader:                         ; preds = %bb.c
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %._crit_edge, label %gv_calloc.exit.preheader71

gv_calloc.exit.preheader71:                       ; preds = %gv_calloc.exit.preheader
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 4
  br i1 %min.iters.check, label %gv_calloc.exit.preheader90, label %vector.ph

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
  %wide.load88 = load <2 x double>, ptr %i.k, align 8
  %i.l = fsub <2 x double> %wide.load, %i.h
  %i.m = fsub <2 x double> %wide.load88, %i.h
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %index
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.i
  store <2 x double> %i.l, ptr %i.n, align 8
  store <2 x double> %i.m, ptr %i.o, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !71

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.lr.ph69, label %gv_calloc.exit.preheader90

gv_calloc.exit.preheader90:                       ; preds = %gv_calloc.exit.preheader71, %middle.block
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

gv_calloc.exit:                                   ; preds = %gv_calloc.exit.preheader90, %gv_calloc.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %gv_calloc.exit ], [ %indvars.iv.ph, %gv_calloc.exit.preheader90 ] ; 3 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv
  %i.y = load <2 x double>, ptr %i.w, align 8, !tbaa !52
  %i.z = fsub <2 x double> %i.y, %i.r
  store <2 x double> %i.z, ptr %i.x, align 8, !tbaa !52
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph69, label %gv_calloc.exit, !llvm.loop !72

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

end_hunk_1
