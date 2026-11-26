Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btConvexHull?download=true
inline.NumInlined: 616
inline.NumDeleted: 139
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_ZN11HullLibrary16CreateConvexHullERK8HullDescR10HullResult:bb.a

bb.aw:                                            ; preds = %bb.ai, %bb.f
  %.pn.pn.pn = phi { ptr, i32 } [ %i.jy, %bb.ai ], [ %i.bh, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.e
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.aw ], [ %i.bg, %bb.e ]
  call void @_ZN20btAlignedObjectArrayI9btVector3ED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @_ZN11PHullResultD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11HullLibrary15CleanupVerticesEjPK9btVector3jRjPS0_fRS0_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef captures(none) %5, float noundef %6, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) %7) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = icmp ne i32 %1, 0                        ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.z

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 7 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !62   ; 2 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !63
  %i.g = icmp slt i32 %i.f, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !60   ; 3 uses
  br i1 %i.g, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i, label %.lr.ph.i

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i: ; preds = %bb.c
  %.not.i5.i.i = icmp ne ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8, !range !36
  %i.l = trunc nuw i8 %i.k to i1
  %or.cond369 = select i1 %.not.i5.i.i, i1 %i.l, i1 false
  br i1 %or.cond369, label %bb.d, label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i

bb.d:                                             ; preds = %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.i)
  br label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i: ; preds = %bb.d, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i
  store i8 1, ptr %i.j, align 8, !tbaa !61
  store ptr null, ptr %i.h, align 8, !tbaa !60
  store i32 0, ptr %i.e, align 8, !tbaa !63
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i
  %i.m = phi ptr [ null, %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i ], [ %i.i, %bb.c ]
  %i.n = sext i32 %i.c to i64                     ; 2 uses
  %i.o = shl nsw i64 %i.n, 2
  %scevgep = getelementptr i8, ptr %i.m, i64 %i.o
  %i.p = mul nsw i64 %i.n, -4
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.p, i1 false), !tbaa !41
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i, %bb.b
  store i32 0, ptr %i.b, align 4, !tbaa !62
  store i32 0, ptr %4, align 4, !tbaa !41
  store <2 x float> splat (float 1.000000e+00), ptr %7, align 4, !tbaa !13
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store float 1.000000e+00, ptr %i.q, align 4, !tbaa !13
  %i.r = zext i32 %3 to i64                       ; 3 uses
  %xtraiter = and i32 %1, 1
  %i.s = icmp eq i32 %1, 1
  br i1 %i.s, label %.epil.preheader, label %.loopexit.new

.loopexit.new:                                    ; preds = %.loopexit
  %unroll_iter = and i32 %1, -2
  br label %bb.f

.unr-lcssa:                                       ; preds = %bb.f
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.e, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.loopexit
  %.0282384.epil.init = phi ptr [ %2, %.loopexit ], [ %i.ax, %.unr-lcssa ]
  %.epil.init = phi <4 x float> [ splat (float f0xFF7FFFFF), %.loopexit ], [ %i.aw, %.unr-lcssa ] ; 2 uses
  %.epil.init538 = phi <4 x float> [ splat (float f0x7F7FFFFF), %.loopexit ], [ %i.av, %.unr-lcssa ] ; 2 uses
  %lcmp.mod541 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod541)
  %i.t = load <3 x float>, ptr %.0282384.epil.init, align 4, !tbaa !13
  %i.u = shufflevector <3 x float> %i.t, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 4 uses
  %i.v = fcmp olt <4 x float> %i.u, %.epil.init538
  %i.w = fcmp ogt <4 x float> %i.u, %.epil.init
  %i.x = select <4 x i1> %i.v, <4 x float> %i.u, <4 x float> %.epil.init538
  %i.y = select <4 x i1> %i.w, <4 x float> %i.u, <4 x float> %.epil.init
  br label %bb.e

bb.e:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa536 = phi <4 x float> [ %i.av, %.unr-lcssa ], [ %i.x, %.epil.preheader ] ; 2 uses
  %.lcssa535 = phi <4 x float> [ %i.aw, %.unr-lcssa ], [ %i.y, %.epil.preheader ]
  %i.z = fsub <4 x float> %.lcssa535, %.lcssa536  ; 5 uses
  %i.aa = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.z, <4 x float> splat (float 5.000000e-01), <4 x float> %.lcssa536) ; 5 uses
  %i.ab = shufflevector <4 x float> %i.z, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 4 uses
  %i.ac = fcmp olt <2 x float> %i.ab, splat (float f0x358637BD) ; 3 uses
  %i.ad = extractelement <2 x i1> %i.ac, i64 0
  %i.ae = extractelement <2 x i1> %i.ac, i64 1
  %or.cond = select i1 %i.ad, i1 true, i1 %i.ae
  %i.af = extractelement <4 x float> %i.z, i64 2  ; 7 uses
  %i.ag = fcmp olt float %i.af, f0x358637BD       ; 2 uses
  %or.cond3 = select i1 %or.cond, i1 true, i1 %i.ag
  %i.ah = icmp ult i32 %1, 3
  %or.cond5 = or i1 %i.ah, %or.cond3
  br i1 %or.cond5, label %bb.g, label %bb.k

bb.f:                                             ; preds = %bb.f, %.loopexit.new
  %.0282384 = phi ptr [ %2, %.loopexit.new ], [ %i.ax, %bb.f ] ; 2 uses
  %i.ai = phi <4 x float> [ splat (float f0xFF7FFFFF), %.loopexit.new ], [ %i.aw, %bb.f ] ; 2 uses
  %i.aj = phi <4 x float> [ splat (float f0x7F7FFFFF), %.loopexit.new ], [ %i.av, %bb.f ] ; 2 uses
  %niter = phi i32 [ 0, %.loopexit.new ], [ %niter.next.1, %bb.f ]
  %i.ak = load <3 x float>, ptr %.0282384, align 4, !tbaa !13
  %i.al = shufflevector <3 x float> %i.ak, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 4 uses
  %i.am = fcmp olt <4 x float> %i.al, %i.aj
  %i.an = fcmp ogt <4 x float> %i.al, %i.ai
  %i.ao = select <4 x i1> %i.am, <4 x float> %i.al, <4 x float> %i.aj ; 2 uses
  %i.ap = select <4 x i1> %i.an, <4 x float> %i.al, <4 x float> %i.ai ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0282384, i64 %i.r ; 2 uses
  %i.ar = load <3 x float>, ptr %i.aq, align 4, !tbaa !13
  %i.as = shufflevector <3 x float> %i.ar, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 4 uses
  %i.at = fcmp olt <4 x float> %i.as, %i.ao
  %i.au = fcmp ogt <4 x float> %i.as, %i.ap
  %i.av = select <4 x i1> %i.at, <4 x float> %i.as, <4 x float> %i.ao ; 3 uses
  %i.aw = select <4 x i1> %i.au, <4 x float> %i.as, <4 x float> %i.ap ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.r ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.f, !llvm.loop !156

bb.g:                                             ; preds = %bb.e
  %i.ay = extractelement <4 x float> %i.z, i64 0  ; 3 uses
  %i.az = fcmp ogt float %i.ay, f0x358637BD
  %i.ba = fcmp olt float %i.ay, f0x7F7FFFFF
  %or.cond332 = and i1 %i.az, %i.ba
  %.0308 = select i1 %or.cond332, float %i.ay, float f0x7F7FFFFF ; 2 uses
  %i.bb = extractelement <4 x float> %i.z, i64 1  ; 3 uses
  %i.bc = fcmp ogt float %i.bb, f0x358637BD
  %i.bd = fcmp olt float %i.bb, %.0308
  %or.cond333 = and i1 %i.bc, %i.bd
  %.1309 = select i1 %or.cond333, float %i.bb, float %.0308 ; 2 uses
  %i.be = fcmp ogt float %i.af, f0x358637BD
  %i.bf = fcmp olt float %i.af, %.1309
  %or.cond334 = select i1 %i.be, i1 %i.bf, i1 false
  %.2310 = select i1 %or.cond334, float %i.af, float %.1309 ; 2 uses
  %i.bg = fcmp oeq float %.2310, f0x7F7FFFFF
  br i1 %i.bg, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bh = fmul float %.2310, 5.000000e-02         ; 2 uses
  %i.bi = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bk = select <2 x i1> %i.ac, <2 x float> %i.bj, <2 x float> %i.ab ; 2 uses
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.0307 = phi float [ %i.af, %bb.h ], [ %i.bh, %bb.i ], [ f0x3C23D70A, %bb.g ] ; 2 uses
  %i.bl = phi <2 x float> [ %i.bk, %bb.h ], [ %i.bk, %bb.i ], [ splat (float f0x3C23D70A), %bb.g ] ; 2 uses
  %i.bm = extractelement <4 x float> %i.aa, i64 1
  %i.bn = extractelement <2 x float> %i.bl, i64 1
  %i.bo = fsub float %i.bm, %i.bn
  %i.bp = extractelement <4 x float> %i.aa, i64 2
  %i.bq = fsub float %i.bp, %.0307
  %i.br = shufflevector <2 x float> %i.bl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bs = insertelement <4 x float> %i.br, float %.0307, i64 2
  %i.bt = shufflevector <4 x float> %i.bs, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.bu = fadd <4 x float> %i.aa, %i.bt
  %i.bv = fsub <4 x float> %i.aa, %i.bt
  %i.bw = shufflevector <4 x float> %i.bu, <4 x float> %i.bv, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  br label %.sink.split

bb.k:                                             ; preds = %bb.e
  store <2 x float> %i.ab, ptr %7, align 4, !tbaa !13
  store float %i.af, ptr %i.q, align 4, !tbaa !13
  %i.bx = fdiv <2 x float> splat (float 1.000000e+00), %i.ab ; 2 uses
  %i.by = fdiv float 1.000000e+00, %i.af          ; 2 uses
  %i.bz = shufflevector <4 x float> %i.aa, <4 x float> poison, <3 x i32> <i32 0, i32 1, i32 2>
  %i.ca = shufflevector <2 x float> %i.bx, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.cb = insertelement <3 x float> %i.ca, float %i.by, i64 2
  %i.cc = fmul <3 x float> %i.bz, %i.cb           ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.cg = shufflevector <3 x float> %i.cc, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ch = shufflevector <3 x float> %i.cc, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ci = shufflevector <3 x float> %i.cc, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cj = insertelement <2 x float> poison, float %6, i64 0
  %i.ck = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.m

bb.l:                                             ; preds = %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit
  %i.cl = load i32, ptr %4, align 4, !tbaa !41    ; 3 uses
  %.not395 = icmp eq i32 %i.cl, 0
  br i1 %.not395, label %._crit_edge, label %.lr.ph393.preheader.a

.lr.ph393.preheader.a:                            ; preds = %bb.l
  %wide.trip.count416 = zext i32 %i.cl to i64
  br label %.lr.ph393

bb.m:                                             ; preds = %bb.k, %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit
  %.1283390 = phi ptr [ %2, %bb.k ], [ %i.cm, %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit ] ; 3 uses
  %.0301389 = phi i32 [ 0, %bb.k ], [ %i.fu, %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.1283390, i64 %i.r
  %i.cn = load <2 x float>, ptr %.1283390, align 4, !tbaa !13
  %i.co = getelementptr inbounds nuw i8, ptr %.1283390, i64 8
  %i.cp = load float, ptr %i.co, align 4, !tbaa !13
  %i.cq = fmul <2 x float> %i.bx, %i.cn           ; 5 uses
  %i.cr = fmul float %i.by, %i.cp                 ; 4 uses
  %i.cs = load i32, ptr %4, align 4, !tbaa !41    ; 6 uses
  %.not = icmp eq i32 %i.cs, 0
  br i1 %.not, label %.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.m
  %wide.trip.count = zext i32 %i.cs to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.p
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.p ] ; 3 uses
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.cv = load <2 x float>, ptr %i.ct, align 4, !tbaa !13 ; 3 uses
  %i.cw = load float, ptr %i.cu, align 4, !tbaa !13
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !13 ; 2 uses
  %i.cz = fsub float %i.cy, %i.cr
  %i.da = tail call noundef float @llvm.fabs.f32(float %i.cz)
  %i.db = insertelement <2 x float> %i.cv, float %i.cw, i64 1
  %i.dc = fsub <2 x float> %i.db, %i.cq
  %i.dd = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.dc)
  %i.de = fcmp uge <2 x float> %i.dd, %i.ck
  %i.df = bitcast <2 x i1> %i.de to i2
  %i.dg = icmp eq i2 %i.df, 0
  %i.dh = fcmp olt float %i.da, %6
  %or.cond336 = and i1 %i.dg, %i.dh
  br i1 %or.cond336, label %bb.n, label %bb.p

bb.n:                                             ; preds = %.lr.ph
  %i.di = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.dj = insertelement <2 x float> poison, float %i.cr, i64 0
  %i.dk = insertelement <2 x float> %i.dj, float %i.cy, i64 1
  %i.dl = fsub <2 x float> %i.dk, %i.cg           ; 2 uses
  %i.dm = shufflevector <2 x float> %i.cq, <2 x float> %i.cv, <2 x i32> <i32 0, i32 2>
  %i.dn = fsub <2 x float> %i.dm, %i.ch           ; 2 uses
  %i.do = shufflevector <2 x float> %i.cq, <2 x float> %i.cv, <2 x i32> <i32 1, i32 3>
  %i.dp = fsub <2 x float> %i.do, %i.ci           ; 2 uses
  %i.dq = fmul <2 x float> %i.dp, %i.dp
  %i.dr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dn, <2 x float> %i.dn, <2 x float> %i.dq)
  %i.ds = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dl, <2 x float> %i.dl, <2 x float> %i.dr) ; 2 uses
  %i.dt = extractelement <2 x float> %i.ds, i64 0
  %i.du = extractelement <2 x float> %i.ds, i64 1
  %i.dv = fcmp ogt float %i.dt, %i.du
  br i1 %i.dv, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store <2 x float> %i.cq, ptr %i.ct, align 4, !tbaa !13
  store float %i.cr, ptr %i.dw, align 4, !tbaa !13
  br label %.thread

bb.p:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond407.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond407.not, label %.thread.thread, label %.lr.ph, !llvm.loop !157

.thread:                                          ; preds = %bb.m, %bb.o, %bb.n
  %.0297375 = phi i32 [ %i.di, %bb.n ], [ %i.di, %bb.o ], [ 0, %bb.m ] ; 3 uses
  %i.dx = icmp eq i32 %.0297375, %i.cs
  br i1 %i.dx, label %.thread.thread, label %bb.q

.thread.thread:                                   ; preds = %bb.p, %.thread
  %.0297375454 = phi i32 [ %.0297375, %.thread ], [ %i.cs, %bb.p ]
  %i.dy = zext i32 %i.cs to i64
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.dy ; 2 uses
  store <2 x float> %i.cq, ptr %i.dz, align 4, !tbaa !13
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  store float %i.cr, ptr %i.ea, align 4, !tbaa !13
  %i.eb = add i32 %i.cs, 1
  store i32 %i.eb, ptr %4, align 4, !tbaa !41
  br label %bb.q

bb.q:                                             ; preds = %.thread.thread, %.thread
  %.0297375453 = phi i32 [ %.0297375454, %.thread.thread ], [ %.0297375, %.thread ]
  %i.ec = load i32, ptr %i.b, align 4, !tbaa !62  ; 7 uses
  %i.ed = load i32, ptr %i.cd, align 8, !tbaa !63
  %i.ee = icmp eq i32 %i.ec, %i.ed
  br i1 %i.ee, label %bb.r, label %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit

bb.r:                                             ; preds = %bb.q
  %.not.i.i = icmp eq i32 %i.ec, 0
  %i.ef = shl nsw i32 %i.ec, 1
  %i.eg = select i1 %.not.i.i, i32 1, i32 %i.ef   ; 4 uses
  %i.eh = icmp slt i32 %i.ec, %i.eg
  br i1 %i.eh, label %bb.s, label %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit

bb.s:                                             ; preds = %bb.r
  %.not.i.i.i = icmp eq i32 %i.eg, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ei = sext i32 %i.eg to i64
  %i.ej = shl nsw i64 %i.ei, 2
  %i.ek = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.ej, i32 noundef 16)
  %.pre.i = load i32, ptr %i.b, align 4, !tbaa !62
  br label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i: ; preds = %bb.t, %bb.s
  %i.el = phi i32 [ %.pre.i, %bb.t ], [ %i.ec, %bb.s ] ; 4 uses
  %.0.i.i.i = phi ptr [ %i.ek, %bb.t ], [ null, %bb.s ] ; 8 uses
  %i.em = icmp sgt i32 %i.el, 0
  %i.en = load ptr, ptr %i.ce, align 8, !tbaa !60 ; 9 uses
  br i1 %i.em, label %.lr.ph.i.i.i346, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i342

.lr.ph.i.i.i346:                                  ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i
  %i.eo = ptrtoaddr ptr %i.en to i64
  %.0.i.i.i524 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i347 = zext nneg i32 %i.el to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.el, 8
  %i.ep = sub i64 %i.eo, %.0.i.i.i524
  %diff.check = icmp ugt i64 %i.ep, -32
  %or.cond526 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond526, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i346
  %n.vec = and i64 %wide.trip.count.i.i.i347, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %index ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %wide.load = load <4 x i32>, ptr %i.er, align 4, !tbaa !41
  %wide.load525 = load <4 x i32>, ptr %i.es, align 4, !tbaa !41
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store <4 x i32> %wide.load, ptr %i.eq, align 4, !tbaa !41
  store <4 x i32> %wide.load525, ptr %i.et, align 4, !tbaa !41
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.eu = icmp eq i64 %index.next, %n.vec
  br i1 %i.eu, label %middle.block, label %vector.body, !llvm.loop !158

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i347
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i344, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i346, %middle.block
  %indvars.iv.i.i.i348.ph = phi i64 [ 0, %.lr.ph.i.i.i346 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter542 = and i64 %wide.trip.count.i.i.i347, 3 ; 2 uses
  %lcmp.mod543.not = icmp eq i64 %xtraiter542, 0
  br i1 %lcmp.mod543.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i348.prol = phi i64 [ %indvars.iv.next.i.i.i349.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i348.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i348.prol
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %indvars.iv.i.i.i348.prol
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !41
  store i32 %i.ex, ptr %i.ev, align 4, !tbaa !41
  %indvars.iv.next.i.i.i349.prol = add nuw nsw i64 %indvars.iv.i.i.i348.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter542
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !159

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i348.unr = phi i64 [ %indvars.iv.i.i.i348.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i349.prol, %scalar.ph.prol ]
  %i.ey = sub nsw i64 %indvars.iv.i.i.i348.ph, %wide.trip.count.i.i.i347
  %i.ez = icmp ugt i64 %i.ey, -4
  br i1 %i.ez, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i344, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i348 = phi i64 [ %indvars.iv.next.i.i.i349.3, %scalar.ph ], [ %indvars.iv.i.i.i348.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i348
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %indvars.iv.i.i.i348
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !41
  store i32 %i.fc, ptr %i.fa, align 4, !tbaa !41
  %indvars.iv.next.i.i.i349 = add nuw nsw i64 %indvars.iv.i.i.i348, 1 ; 2 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i349
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %indvars.iv.next.i.i.i349
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !41
  store i32 %i.ff, ptr %i.fd, align 4, !tbaa !41
  %indvars.iv.next.i.i.i349.1 = add nuw nsw i64 %indvars.iv.i.i.i348, 2 ; 2 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i349.1
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %indvars.iv.next.i.i.i349.1
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !41
  store i32 %i.fi, ptr %i.fg, align 4, !tbaa !41
  %indvars.iv.next.i.i.i349.2 = add nuw nsw i64 %indvars.iv.i.i.i348, 3 ; 2 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i349.2
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %indvars.iv.next.i.i.i349.2
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !41
  store i32 %i.fl, ptr %i.fj, align 4, !tbaa !41
  %indvars.iv.next.i.i.i349.3 = add nuw nsw i64 %indvars.iv.i.i.i348, 4 ; 2 uses
  %exitcond.not.i.i.i350.3 = icmp eq i64 %indvars.iv.next.i.i.i349.3, %wide.trip.count.i.i.i347
  br i1 %exitcond.not.i.i.i350.3, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i344, label %scalar.ph, !llvm.loop !160

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i342: ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i
  %.not.i5.i.i343 = icmp eq ptr %i.en, null
  br i1 %.not.i5.i.i343, label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i345, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i344

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i344: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i342
  %i.fm = load i8, ptr %i.cf, align 8, !tbaa !61, !range !36, !noundef !37
  %i.fn = trunc nuw i8 %i.fm to i1
  br i1 %i.fn, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i344
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.en)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i344
  %.pre2.pre.i = load i32, ptr %i.b, align 4, !tbaa !62
  br label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i345

_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i345: ; preds = %bb.v, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i342
  %.pre2.i = phi i32 [ %.pre2.pre.i, %bb.v ], [ %i.el, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i342 ]
  store i8 1, ptr %i.cf, align 8, !tbaa !61
  store ptr %.0.i.i.i, ptr %i.ce, align 8, !tbaa !60
  store i32 %i.eg, ptr %i.cd, align 8, !tbaa !63
  br label %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit

_ZN20btAlignedObjectArrayIiE9push_backERKi.exit:  ; preds = %bb.q, %bb.r, %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i345
  %i.fo = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i345 ], [ %i.ec, %bb.r ], [ %i.ec, %bb.q ]
  %i.fp = load ptr, ptr %i.ce, align 8, !tbaa !60
  %i.fq = sext i32 %i.fo to i64
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.fp, i64 %i.fq
  store i32 %.0297375453, ptr %i.fr, align 4, !tbaa !41
  %i.fs = load i32, ptr %i.b, align 4, !tbaa !62
  %i.ft = add nsw i32 %i.fs, 1
  store i32 %i.ft, ptr %i.b, align 4, !tbaa !62
  %i.fu = add nuw i32 %.0301389, 1                ; 2 uses
  %exitcond408.not = icmp eq i32 %i.fu, %1
  br i1 %exitcond408.not, label %bb.l, label %bb.m, !llvm.loop !161

._crit_edge:                                      ; preds = %.lr.ph393, %bb.l
  %.sroa.10425.0 = phi float [ f0x7F7FFFFF, %bb.l ], [ %spec.store.select370.2, %.lr.ph393 ] ; 2 uses
  %.sroa.10.0 = phi float [ f0xFF7FFFFF, %bb.l ], [ %spec.store.select371.2, %.lr.ph393 ]
  %i.fv = phi <2 x float> [ splat (float f0xFF7FFFFF), %bb.l ], [ %i.gl, %.lr.ph393 ]
  %i.fw = phi <2 x float> [ splat (float f0x7F7FFFFF), %bb.l ], [ %i.gk, %.lr.ph393 ] ; 2 uses
  %i.fx = fsub <2 x float> %i.fv, %i.fw           ; 5 uses
  %i.fy = fsub float %.sroa.10.0, %.sroa.10425.0  ; 6 uses
  %i.fz = fcmp olt <2 x float> %i.fx, splat (float f0x358637BD) ; 3 uses
  %i.ga = extractelement <2 x i1> %i.fz, i64 0
  %i.gb = extractelement <2 x i1> %i.fz, i64 1
  %or.cond7 = select i1 %i.ga, i1 true, i1 %i.gb
  %i.gc = fcmp olt float %i.fy, f0x358637BD       ; 2 uses
  %or.cond9 = select i1 %or.cond7, i1 true, i1 %i.gc
  %i.gd = icmp ult i32 %i.cl, 3
  %or.cond337 = or i1 %i.gd, %or.cond9
  br i1 %or.cond337, label %bb.w, label %bb.z

.lr.ph393:                                        ; preds = %.lr.ph393.preheader.a, %.lr.ph393
  %.sroa.10425.1 = phi float [ f0x7F7FFFFF, %.lr.ph393.preheader.a ], [ %spec.store.select370.2, %.lr.ph393 ] ; 2 uses
  %.sroa.10.1 = phi float [ f0xFF7FFFFF, %.lr.ph393.preheader.a ], [ %spec.store.select371.2, %.lr.ph393 ] ; 2 uses
  %indvars.iv413 = phi i64 [ 0, %.lr.ph393.preheader.a ], [ %indvars.iv.next414, %.lr.ph393 ] ; 2 uses
  %i.ge = phi <2 x float> [ splat (float f0xFF7FFFFF), %.lr.ph393.preheader.a ], [ %i.gl, %.lr.ph393 ] ; 2 uses
  %i.gf = phi <2 x float> [ splat (float f0x7F7FFFFF), %.lr.ph393.preheader.a ], [ %i.gk, %.lr.ph393 ] ; 2 uses
  %i.gg = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv413 ; 2 uses
  %i.gh = load <2 x float>, ptr %i.gg, align 4, !tbaa !13 ; 4 uses
  %i.gi = fcmp olt <2 x float> %i.gh, %i.gf
  %i.gj = fcmp ogt <2 x float> %i.gh, %i.ge
  %i.gk = select <2 x i1> %i.gi, <2 x float> %i.gh, <2 x float> %i.gf ; 2 uses
  %i.gl = select <2 x i1> %i.gj, <2 x float> %i.gh, <2 x float> %i.ge ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !13 ; 4 uses
  %i.go = fcmp olt float %i.gn, %.sroa.10425.1
  %spec.store.select370.2 = select i1 %i.go, float %i.gn, float %.sroa.10425.1 ; 2 uses
  %i.gp = fcmp ogt float %i.gn, %.sroa.10.1
  %spec.store.select371.2 = select i1 %i.gp, float %i.gn, float %.sroa.10.1 ; 2 uses
  %indvars.iv.next414 = add nuw nsw i64 %indvars.iv413, 1 ; 2 uses
  %exitcond417.not = icmp eq i64 %indvars.iv.next414, %wide.trip.count416
  br i1 %exitcond417.not, label %._crit_edge, label %.lr.ph393, !llvm.loop !162

bb.w:                                             ; preds = %._crit_edge
  %i.gq = extractelement <2 x float> %i.fx, i64 0 ; 3 uses
  %i.gr = extractelement <2 x float> %i.fx, i64 1 ; 3 uses
  %i.gs = shufflevector <2 x float> %i.fx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 0>
  %i.gt = insertelement <4 x float> %i.gs, float %i.fy, i64 2
  %i.gu = shufflevector <2 x float> %i.fw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 0>
  %i.gv = insertelement <4 x float> %i.gu, float %.sroa.10425.0, i64 2
  %i.gw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gt, <4 x float> splat (float 5.000000e-01), <4 x float> %i.gv) ; 4 uses
  %i.gx = fcmp oge float %i.gq, f0x358637BD
  %i.gy = fcmp olt float %i.gq, f0x7F7FFFFF
  %or.cond338 = and i1 %i.gx, %i.gy
  %.0285 = select i1 %or.cond338, float %i.gq, float f0x7F7FFFFF ; 2 uses
  %i.gz = fcmp oge float %i.gr, f0x358637BD
  %i.ha = fcmp olt float %i.gr, %.0285
  %or.cond339 = and i1 %i.gz, %i.ha
  %.1286 = select i1 %or.cond339, float %i.gr, float %.0285 ; 2 uses
  %i.hb = fcmp oge float %i.fy, f0x358637BD
  %i.hc = fcmp olt float %i.fy, %.1286
  %or.cond340 = select i1 %i.hb, i1 %i.hc, i1 false
  %.2287 = select i1 %or.cond340, float %i.fy, float %.1286 ; 2 uses
  %i.hd = fcmp oeq float %.2287, f0x7F7FFFFF
  br i1 %i.hd, label %.critedge, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.he = fmul float %.2287, 5.000000e-02         ; 2 uses
  %i.hf = insertelement <2 x float> poison, float %i.he, i64 0
  %i.hg = shufflevector <2 x float> %i.hf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hh = select <2 x i1> %i.fz, <2 x float> %i.hg, <2 x float> %i.fx ; 2 uses
  br i1 %i.gc, label %bb.y, label %.critedge

bb.y:                                             ; preds = %bb.x
  br label %.critedge

.critedge:                                        ; preds = %bb.w, %bb.x, %bb.y
  %.0288 = phi float [ %i.fy, %bb.x ], [ %i.he, %bb.y ], [ f0x3C23D70A, %bb.w ] ; 2 uses
  %i.hi = phi <2 x float> [ %i.hh, %bb.x ], [ %i.hh, %bb.y ], [ splat (float f0x3C23D70A), %bb.w ] ; 2 uses
  %i.hj = extractelement <2 x float> %i.hi, i64 1
  %i.hk = extractelement <4 x float> %i.gw, i64 1
  %i.hl = fsub float %i.hk, %i.hj
  %i.hm = extractelement <4 x float> %i.gw, i64 2
  %i.hn = fsub float %i.hm, %.0288
  %i.ho = shufflevector <2 x float> %i.hi, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 0>
  %i.hp = insertelement <4 x float> %i.ho, float %.0288, i64 2 ; 2 uses
  %i.hq = fadd <4 x float> %i.gw, %i.hp
  %i.hr = fsub <4 x float> %i.gw, %i.hp
  %i.hs = shufflevector <4 x float> %i.hq, <4 x float> %i.hr, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %bb.j
  %.sink512 = phi float [ %i.bo, %bb.j ], [ %i.hl, %.critedge ] ; 4 uses
  %.sink510 = phi float [ %i.bq, %bb.j ], [ %i.hn, %.critedge ] ; 4 uses
  %i.ht = phi <4 x float> [ %i.bw, %bb.j ], [ %i.hs, %.critedge ] ; 4 uses
  %i.hu = extractelement <4 x float> %i.ht, i64 3 ; 4 uses
  store float %i.hu, ptr %5, align 4, !tbaa !13
  %i.hv = getelementptr inbounds nuw i8, ptr %5, i64 4
  store float %.sink512, ptr %i.hv, align 4, !tbaa !13
  %i.hw = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %.sink510, ptr %i.hw, align 4, !tbaa !13
  %i.hx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.hy = extractelement <4 x float> %i.ht, i64 0 ; 4 uses
  store float %i.hy, ptr %i.hx, align 4, !tbaa !13
  %i.hz = getelementptr inbounds nuw i8, ptr %5, i64 20
  store float %.sink512, ptr %i.hz, align 4, !tbaa !13
  %i.ia = getelementptr inbounds nuw i8, ptr %5, i64 24
  store float %.sink510, ptr %i.ia, align 4, !tbaa !13
  %i.ib = getelementptr inbounds nuw i8, ptr %5, i64 32
  store float %i.hy, ptr %i.ib, align 4, !tbaa !13
  %i.ic = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.id = extractelement <4 x float> %i.ht, i64 1 ; 4 uses
  store float %i.id, ptr %i.ic, align 4, !tbaa !13
  %i.ie = getelementptr inbounds nuw i8, ptr %5, i64 40
  store float %.sink510, ptr %i.ie, align 4, !tbaa !13
  %i.if = getelementptr inbounds nuw i8, ptr %5, i64 48
  store float %i.hu, ptr %i.if, align 4, !tbaa !13
  %i.ig = getelementptr inbounds nuw i8, ptr %5, i64 52
  store float %i.id, ptr %i.ig, align 4, !tbaa !13
  %i.ih = getelementptr inbounds nuw i8, ptr %5, i64 56
  store float %.sink510, ptr %i.ih, align 4, !tbaa !13
  %i.ii = getelementptr inbounds nuw i8, ptr %5, i64 64
  store float %i.hu, ptr %i.ii, align 4, !tbaa !13
  %i.ij = getelementptr inbounds nuw i8, ptr %5, i64 68
  store float %.sink512, ptr %i.ij, align 4, !tbaa !13
  %i.ik = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.il = extractelement <4 x float> %i.ht, i64 2 ; 4 uses
  store float %i.il, ptr %i.ik, align 4, !tbaa !13
  %i.im = getelementptr inbounds nuw i8, ptr %5, i64 80
  store float %i.hy, ptr %i.im, align 4, !tbaa !13
  %i.in = getelementptr inbounds nuw i8, ptr %5, i64 84
  store float %.sink512, ptr %i.in, align 4, !tbaa !13
  %i.io = getelementptr inbounds nuw i8, ptr %5, i64 88
  store float %i.il, ptr %i.io, align 4, !tbaa !13
  %i.ip = getelementptr inbounds nuw i8, ptr %5, i64 96
  store float %i.hy, ptr %i.ip, align 4, !tbaa !13
  %i.iq = getelementptr inbounds nuw i8, ptr %5, i64 100
  store float %i.id, ptr %i.iq, align 4, !tbaa !13
  %i.ir = getelementptr inbounds nuw i8, ptr %5, i64 104
  store float %i.il, ptr %i.ir, align 4, !tbaa !13
  %i.is = getelementptr inbounds nuw i8, ptr %5, i64 112
  store float %i.hu, ptr %i.is, align 4, !tbaa !13
  %i.it = getelementptr inbounds nuw i8, ptr %5, i64 116
  store float %i.id, ptr %i.it, align 4, !tbaa !13
  %i.iu = getelementptr inbounds nuw i8, ptr %5, i64 120
  store float %i.il, ptr %i.iu, align 4, !tbaa !13
  store i32 8, ptr %4, align 4, !tbaa !41
  br label %bb.z

bb.z:                                             ; preds = %.sink.split, %._crit_edge, %bb.a
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11HullLibrary16BringOutYourDeadEPK9btVector3jPS0_RjPjj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef captures(none) %5, i32 noundef %6) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %class.btAlignedObjectArray.6, align 8 ; 8 uses
  %8 = alloca %class.btAlignedObjectArray.8, align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  store i8 1, ptr %i.a, align 8, !tbaa !61
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !60
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 3 uses
  store i32 0, ptr %i.c, align 4, !tbaa !62
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i32 0, ptr %i.d, align 8, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 5 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !62   ; 5 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %.loopexit75.thread

.loopexit75.thread:                               ; preds = %bb.a
  store i32 %i.f, ptr %i.c, align 4, !tbaa !62
  br label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.h = zext nneg i32 %i.f to i64
  %i.i = shl nuw nsw i64 %i.h, 2                  ; 2 uses
  %i.j = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.i, i32 noundef 16)
          to label %.loopexit75 unwind label %bb.d ; 5 uses

.loopexit75:                                      ; preds = %bb.b
  store i8 1, ptr %i.a, align 8, !tbaa !61
  store ptr %i.j, ptr %i.b, align 8, !tbaa !60
  store i32 %i.f, ptr %i.d, align 8, !tbaa !63
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.j, i8 0, i64 %i.i, i1 false), !tbaa !41
  %.pre = load i32, ptr %i.e, align 4, !tbaa !62
  %i.k = icmp sgt i32 %.pre, 0
  store i32 %i.f, ptr %i.c, align 4, !tbaa !62
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.loopexit75
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !60
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv
  %i.o = load i32, ptr %i.n, align 4, !tbaa !41
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  store i32 %i.o, ptr %i.p, align 4, !tbaa !41
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.q = load i32, ptr %i.e, align 4, !tbaa !62
  %i.r = sext i32 %i.q to i64
  %i.s = icmp slt i64 %indvars.iv.next, %i.r
  br i1 %i.s, label %bb.c, label %._crit_edge, !llvm.loop !163

bb.d:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

._crit_edge:                                      ; preds = %bb.c, %.loopexit75.thread, %.loopexit75
  %i.u = phi ptr [ null, %.loopexit75.thread ], [ %i.j, %.loopexit75 ], [ %i.j, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  store i8 1, ptr %i.v, align 8, !tbaa !69
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr null, ptr %i.w, align 8, !tbaa !68
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 3 uses
  store i32 0, ptr %i.x, align 4, !tbaa !66
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i32 0, ptr %i.y, align 8, !tbaa !67
  %i.z = icmp sgt i32 %2, 0
  %i.aa = zext i32 %2 to i64
  %i.ab = shl nuw nsw i64 %i.aa, 2                ; 2 uses
  br i1 %i.z, label %bb.e, label %.loopexit.thread

bb.e:                                             ; preds = %._crit_edge
  %i.ac = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.ab, i32 noundef 16)
          to label %.loopexit unwind label %bb.h  ; 5 uses

.loopexit:                                        ; preds = %bb.e
  store i8 1, ptr %i.v, align 8, !tbaa !69
  store ptr %i.ac, ptr %i.w, align 8, !tbaa !68
  store i32 %2, ptr %i.y, align 8, !tbaa !67
  store i32 %2, ptr %i.x, align 4, !tbaa !66
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false)
  store i32 0, ptr %4, align 4, !tbaa !41
  %i.ad = icmp sgt i32 %6, 0
  br i1 %i.ad, label %.lr.ph83, label %._crit_edge84

.loopexit.thread:                                 ; preds = %._crit_edge
  store i32 %2, ptr %i.x, align 4, !tbaa !66
  %i.ae = icmp eq i32 %2, 0
  tail call void @llvm.assume(i1 %i.ae)
  store i32 0, ptr %4, align 4, !tbaa !41
  %i.af = icmp sgt i32 %6, 0
  br i1 %i.af, label %.lr.ph83, label %_ZN20btAlignedObjectArrayIjED2Ev.exit

.lr.ph83:                                         ; preds = %.loopexit.thread, %.loopexit
  %i.ag = phi ptr [ null, %.loopexit.thread ], [ %i.ac, %.loopexit ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48
  %wide.trip.count = zext nneg i32 %6 to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph83, %bb.l
  %indvars.iv89 = phi i64 [ 0, %.lr.ph83 ], [ %indvars.iv.next90, %bb.l ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv89 ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !41 ; 3 uses
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.ak ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !41 ; 2 uses
  %.not = icmp eq i32 %i.am, 0
  br i1 %.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = add i32 %i.am, -1
  store i32 %i.an, ptr %i.ai, align 4, !tbaa !41
  br label %bb.l

bb.h:                                             ; preds = %bb.e
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZN20btAlignedObjectArrayIjED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.p

bb.i:                                             ; preds = %bb.f
  %i.ap = load i32, ptr %4, align 4, !tbaa !41    ; 4 uses
  store i32 %i.ap, ptr %i.ai, align 4, !tbaa !41
  %i.aq = zext i32 %i.aj to i64
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.aq ; 3 uses
  %i.as = load float, ptr %i.ar, align 4, !tbaa !13
  %i.at = zext i32 %i.ap to i64
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.at ; 3 uses
  store float %i.as, ptr %i.au, align 4, !tbaa !13
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.aw = load float, ptr %i.av, align 4, !tbaa !13
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  store float %i.aw, ptr %i.ax, align 4, !tbaa !13
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.az = load float, ptr %i.ay, align 4, !tbaa !13
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store float %i.az, ptr %i.ba, align 4, !tbaa !13
  %i.bb = load i32, ptr %i.e, align 4, !tbaa !62  ; 2 uses
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %.lr.ph79, label %._crit_edge80

._crit_edge80:                                    ; preds = %bb.k, %bb.i
  %i.bd = add i32 %i.ap, 1                        ; 2 uses
  store i32 %i.bd, ptr %4, align 4, !tbaa !41
  store i32 %i.bd, ptr %i.al, align 4, !tbaa !41
  br label %bb.l

.lr.ph79:                                         ; preds = %bb.i, %bb.k
  %i.be = phi i32 [ %i.bk, %bb.k ], [ %i.bb, %bb.i ]
  %indvars.iv86 = phi i64 [ %indvars.iv.next87, %bb.k ], [ 0, %bb.i ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv86
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !41
  %i.bh = icmp eq i32 %i.bg, %i.aj
  br i1 %i.bh, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph79
  %i.bi = load ptr, ptr %i.ah, align 8, !tbaa !60
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv86
  store i32 %i.ap, ptr %i.bj, align 4, !tbaa !41
  %.pre92 = load i32, ptr %i.e, align 4, !tbaa !62
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph79, %bb.j
  %i.bk = phi i32 [ %i.be, %.lr.ph79 ], [ %.pre92, %bb.j ] ; 2 uses
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %i.bl = sext i32 %i.bk to i64
  %i.bm = icmp slt i64 %indvars.iv.next87, %i.bl
  br i1 %i.bm, label %.lr.ph79, label %._crit_edge80, !llvm.loop !164

bb.l:                                             ; preds = %._crit_edge80, %bb.g
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next90, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge84.thread, label %bb.f, !llvm.loop !165

._crit_edge84:                                    ; preds = %.loopexit
  %.not.i.i.i67.not = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i67.not, label %_ZN20btAlignedObjectArrayIjED2Ev.exit, label %._crit_edge84.thread

._crit_edge84.thread:                             ; preds = %bb.l, %._crit_edge84
  %i.bn = phi ptr [ %i.ac, %._crit_edge84 ], [ %i.ag, %bb.l ]
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bn)
          to label %_ZN20btAlignedObjectArrayIjED2Ev.exit unwind label %bb.m

bb.m:                                             ; preds = %._crit_edge84.thread
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  tail call void @__clang_call_terminate(ptr %i.bp) #20
  unreachable

_ZN20btAlignedObjectArrayIjED2Ev.exit:            ; preds = %.loopexit.thread, %._crit_edge84, %._crit_edge84.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %.not.i.i.i68.not = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i68.not, label %_ZN20btAlignedObjectArrayIiED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN20btAlignedObjectArrayIjED2Ev.exit
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.u)
          to label %_ZN20btAlignedObjectArrayIiED2Ev.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  tail call void @__clang_call_terminate(ptr %i.br) #20
  unreachable

_ZN20btAlignedObjectArrayIiED2Ev.exit:            ; preds = %_ZN20btAlignedObjectArrayIjED2Ev.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  ret void

bb.p:                                             ; preds = %bb.h, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.ao, %bb.h ], [ %i.t, %bb.d ]
  call void @_ZN20btAlignedObjectArrayIiED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11PHullResultD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68   ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i8, ptr %i.c, align 8, !range !36
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i.i, label %bb.b, label %_ZN20btAlignedObjectArrayIjED2Ev.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %_ZN20btAlignedObjectArrayIjED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #20
  unreachable

_ZN20btAlignedObjectArrayIjED2Ev.exit:            ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11HullLibrary13ReleaseResultER10HullResult(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !24
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.c, align 4, !tbaa !76
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23   ; 2 uses
  %.not.i.i = icmp ne ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !range !36
  %i.h = trunc nuw i8 %i.g to i1
  %or.cond.i = select i1 %.not.i.i, i1 %i.h, i1 false
  br i1 %or.cond.i, label %bb.c, label %_ZN20btAlignedObjectArrayI9btVector3E5clearEv.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.e)
  br label %_ZN20btAlignedObjectArrayI9btVector3E5clearEv.exit

_ZN20btAlignedObjectArrayI9btVector3E5clearEv.exit: ; preds = %bb.b, %bb.c
  store i8 1, ptr %i.f, align 8, !tbaa !22
  store ptr null, ptr %i.d, align 8, !tbaa !23
  store i32 0, ptr %i.a, align 4, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 0, ptr %i.i, align 8, !tbaa !25
  br label %bb.d

bb.d:                                             ; preds = %_ZN20btAlignedObjectArrayI9btVector3E5clearEv.exit, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !66
  %.not6 = icmp eq i32 %i.k, 0
  br i1 %.not6, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 44
  store i32 0, ptr %i.l, align 4, !tbaa !77
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !68   ; 2 uses
  %.not.i.i7 = icmp ne ptr %i.n, null
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.p = load i8, ptr %i.o, align 8, !range !36
  %i.q = trunc nuw i8 %i.p to i1
  %or.cond.i8 = select i1 %.not.i.i7, i1 %i.q, i1 false
  br i1 %or.cond.i8, label %bb.f, label %_ZN20btAlignedObjectArrayIjE5clearEv.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.n)
  br label %_ZN20btAlignedObjectArrayIjE5clearEv.exit

_ZN20btAlignedObjectArrayIjE5clearEv.exit:        ; preds = %bb.e, %bb.f
  store i8 1, ptr %i.o, align 8, !tbaa !69
  store ptr null, ptr %i.m, align 8, !tbaa !68
  store i32 0, ptr %i.j, align 4, !tbaa !66
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 0, ptr %i.r, align 8, !tbaa !67
  br label %bb.g

bb.g:                                             ; preds = %_ZN20btAlignedObjectArrayIjE5clearEv.exit, %bb.d
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef float @_Z7GetDistfffPKf(float noundef %0, float noundef %1, float noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = load float, ptr %3, align 4, !tbaa !13
  %i.b = fsub float %0, %i.a                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.d = load float, ptr %i.c, align 4, !tbaa !13
  %i.e = fsub float %1, %i.d                      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !13
  %i.h = fsub float %2, %i.g                      ; 2 uses
  %i.i = fmul float %i.e, %i.e
  %i.j = tail call float @llvm.fmuladd.f32(float %i.b, float %i.b, float %i.i)
  %i.k = tail call float @llvm.fmuladd.f32(float %i.h, float %i.h, float %i.j)
  ret float %i.k
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN20btAlignedObjectArrayIjED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68   ; 2 uses
  %.not.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !36
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i = select i1 %.not.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #20
  unreachable
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #13

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #15 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #19 ; 0 uses
  tail call void @_ZSt9terminatev() #20
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.fmuladd.v3f32(<3 x float>, <3 x float>, <3 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #13

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nofree noreturn }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nounwind }
attributes #20 = { noreturn nounwind }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !35}
!1 = distinct !{!1, !35}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!7, !7, i64 0}
!12 = !{!"float", !7, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"_ZTS9btVector3", !7, i64 0}
!15 = !{!"_ZTS7btPlane", !14, i64 0, !12, i64 16}
!16 = !{!15, !12, i64 16}
!17 = !{!"_ZTS18btAlignedAllocatorI9btVector3Lj16EE"}
!18 = !{!"any pointer", !7, i64 0}
!19 = !{!"p1 _ZTS9btVector3", !18, i64 0}
!20 = !{!"bool", !7, i64 0}
!21 = !{!"_ZTS20btAlignedObjectArrayI9btVector3E", !17, i64 0, !8, i64 4, !8, i64 8, !19, i64 16, !20, i64 24}
!22 = !{!21, !20, i64 24}
!23 = !{!21, !19, i64 16}
!24 = !{!21, !8, i64 4}
!25 = !{!21, !8, i64 8}
!26 = !{!"_ZTS18btAlignedAllocatorIN7ConvexH8HalfEdgeELj16EE"}
!27 = !{!"p1 _ZTSN7ConvexH8HalfEdgeE", !18, i64 0}
!28 = !{!"_ZTS20btAlignedObjectArrayIN7ConvexH8HalfEdgeEE", !26, i64 0, !8, i64 4, !8, i64 8, !27, i64 16, !20, i64 24}
!29 = !{!28, !27, i64 16}
!30 = !{!"_ZTS18btAlignedAllocatorI7btPlaneLj16EE"}
!31 = !{!"p1 _ZTS7btPlane", !18, i64 0}
!32 = !{!"_ZTS20btAlignedObjectArrayI7btPlaneE", !30, i64 0, !8, i64 4, !8, i64 8, !31, i64 16, !20, i64 24}
!33 = !{!32, !31, i64 16}
!34 = !{i64 0, i64 16, !11}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{i8 0, i8 2}
!37 = !{}
!38 = !{!"llvm.loop.unroll.disable"}
!39 = !{!"llvm.loop.isvectorized", i32 1}
!40 = !{!"llvm.loop.unroll.runtime.disable"}
!41 = !{!8, !8, i64 0}
!42 = !{!"_ZTS18btAlignedAllocatorIP14btHullTriangleLj16EE"}
!43 = !{!"any p2 pointer", !18, i64 0}
!44 = !{!"p2 _ZTS14btHullTriangle", !43, i64 0}
!45 = !{!"_ZTS20btAlignedObjectArrayIP14btHullTriangleE", !42, i64 0, !8, i64 4, !8, i64 8, !44, i64 16, !20, i64 24}
!46 = !{!45, !44, i64 16}
!47 = !{!"p1 _ZTS14btHullTriangle", !18, i64 0}
!48 = !{!47, !47, i64 0}
!49 = !{!"_ZTS4int3", !8, i64 0, !8, i64 4, !8, i64 8}
!50 = !{!"_ZTS14btHullTriangle", !49, i64 0, !49, i64 12, !8, i64 24, !8, i64 28, !12, i64 32}
!51 = !{!50, !8, i64 24}
!52 = !{!50, !8, i64 28}
!53 = !{!50, !12, i64 32}
!54 = !{!45, !8, i64 4}
!55 = !{!45, !8, i64 8}
!56 = !{!45, !20, i64 24}
!57 = !{!"_ZTS18btAlignedAllocatorIiLj16EE"}
!58 = !{!"p1 int", !18, i64 0}
!59 = !{!"_ZTS20btAlignedObjectArrayIiE", !57, i64 0, !8, i64 4, !8, i64 8, !58, i64 16, !20, i64 24}
!60 = !{!59, !58, i64 16}
!61 = !{!59, !20, i64 24}
!62 = !{!59, !8, i64 4}
!63 = !{!59, !8, i64 8}
!64 = !{!"_ZTS18btAlignedAllocatorIjLj16EE"}
!65 = !{!"_ZTS20btAlignedObjectArrayIjE", !64, i64 0, !8, i64 4, !8, i64 8, !58, i64 16, !20, i64 24}
!66 = !{!65, !8, i64 4}
!67 = !{!65, !8, i64 8}
!68 = !{!65, !58, i64 16}
!69 = !{!65, !20, i64 24}
!70 = !{!"_ZTS11PHullResult", !8, i64 0, !8, i64 4, !8, i64 8, !19, i64 16, !65, i64 24}
!71 = !{!70, !8, i64 4}
!72 = !{!70, !8, i64 8}
!73 = !{!70, !19, i64 16}
!74 = !{!70, !8, i64 0}
!75 = !{!"_ZTS10HullResult", !20, i64 0, !8, i64 4, !21, i64 8, !8, i64 40, !8, i64 44, !65, i64 48}
!76 = !{!75, !8, i64 4}
!77 = !{!75, !8, i64 44}
!78 = distinct !{!78, !35}
!79 = distinct !{!79, !38}
!80 = distinct !{!80, !35}
!81 = distinct !{!81, !38}
!82 = distinct !{!82, !35}
!83 = !{!28, !20, i64 24}
!84 = !{!28, !8, i64 4}
!85 = !{!28, !8, i64 8}
!86 = !{!32, !20, i64 24}
!87 = !{!32, !8, i64 4}
!88 = !{!32, !8, i64 8}
!89 = !{i64 0, i64 16, !11, i64 16, i64 4, !13}
!90 = distinct !{!90, !35, !39, !40}
!91 = distinct !{!91, !35, !40, !39}
!92 = distinct !{!92, !35}
!93 = distinct !{!93, !35, !39, !40}
!94 = distinct !{!94, !38}
!95 = distinct !{!95, !35, !39}
!96 = !{!49, !8, i64 0}
!97 = !{!49, !8, i64 4}
!98 = !{!49, !8, i64 8}
!99 = distinct !{!99, !35}
!100 = distinct !{!100, !35}
!101 = distinct !{!101, !35, !104}
!102 = distinct !{!102, !35}
!103 = distinct !{!103, !35}
!104 = !{!"llvm.loop.peeled.count", i32 1}
!105 = distinct !{!105, !35, !39, !40}
!106 = distinct !{!106, !38}
!107 = distinct !{!107, !35, !39}
!108 = distinct !{!108, !35, !39, !40}
!109 = distinct !{!109, !38}
!110 = distinct !{!110, !35, !39}
!111 = distinct !{!111, !35, !39, !40}
!112 = distinct !{!112, !38}
!113 = distinct !{!113, !35, !39}
!114 = distinct !{!114, !35}
!115 = distinct !{!115, !35}
!116 = distinct !{!116, !35}
!117 = distinct !{!117, !35}
!118 = distinct !{!118, !35}
!119 = distinct !{!119, !35}
!120 = distinct !{!120, !35, !39, !40}
!121 = distinct !{!121, !38}
!122 = distinct !{!122, !35, !39}
!123 = distinct !{!123, !35, !39, !40}
!124 = distinct !{!124, !38}
!125 = distinct !{!125, !35, !39}
!126 = distinct !{!126, !35, !39, !40}
!127 = distinct !{!127, !38}
!128 = distinct !{!128, !35, !39}
!129 = distinct !{!129, !35}
!130 = distinct !{!130, !35, !39, !40}
!131 = distinct !{!131, !38}
!132 = distinct !{!132, !35, !39}
!133 = distinct !{!133, !35, !39, !40}
!134 = distinct !{!134, !38}
!135 = distinct !{!135, !35, !39}
!136 = distinct !{!136, !35}
!137 = distinct !{!137, !38}
!138 = distinct !{!138, !35}
!139 = distinct !{!139, !35, !39, !40}
!140 = distinct !{!140, !38}
!141 = distinct !{!141, !35, !39}
!142 = distinct !{!142, !35}
!143 = distinct !{!143, !35, !39, !40}
!144 = distinct !{!144, !38}
!145 = distinct !{!145, !35, !39}
!146 = distinct !{!146, !35}
!147 = !{!"_ZTS8HullDesc", !8, i64 0, !8, i64 4, !19, i64 8, !8, i64 16, !12, i64 20, !8, i64 24, !8, i64 28}
!148 = !{!147, !8, i64 4}
!149 = !{!147, !19, i64 8}
!150 = !{!147, !8, i64 16}
!151 = !{!147, !12, i64 20}
!152 = !{!147, !8, i64 24}
!153 = !{!147, !8, i64 0}
!154 = !{!75, !20, i64 0}
!155 = !{!75, !8, i64 40}
!156 = distinct !{!156, !35}
!157 = distinct !{!157, !35}
!158 = distinct !{!158, !35, !39, !40}
!159 = distinct !{!159, !38}
!160 = distinct !{!160, !35, !39}
!161 = distinct !{!161, !35}
!162 = distinct !{!162, !35}
!163 = distinct !{!163, !35}
!164 = distinct !{!164, !35}
!165 = distinct !{!165, !35}
end_hunk_0
