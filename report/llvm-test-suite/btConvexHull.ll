Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btConvexHull?download=true
inline.NumInlined: 627
inline.NumDeleted: 141
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN11HullLibrary15CleanupVerticesEjPK9btVector3jRjPS0_fRS0_
define dso_local noundef zeroext i1 @_ZN11HullLibrary15CleanupVerticesEjPK9btVector3jRjPS0_fRS0_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef captures(none) %5, float noundef %6, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) %7) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = icmp ne i32 %1, 0                        ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.aa

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 7 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !50   ; 2 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %.loopexit371

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !51
  %i.g = icmp slt i32 %i.f, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !48   ; 3 uses
  br i1 %i.g, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i, label %.lr.ph.i

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i: ; preds = %bb.c
  %.not.i5.i.i = icmp ne ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8, !range !25
  %i.l = trunc nuw i8 %i.k to i1
  %or.cond368 = select i1 %.not.i5.i.i, i1 %i.l, i1 false
  br i1 %or.cond368, label %bb.d, label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i

bb.d:                                             ; preds = %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.i)
  br label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i: ; preds = %bb.d, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i
  store i8 1, ptr %i.j, align 8, !tbaa !49
  store ptr null, ptr %i.h, align 8, !tbaa !48
  store i32 0, ptr %i.e, align 8, !tbaa !51
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i
  %i.m = phi ptr [ null, %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i ], [ %i.i, %bb.c ]
  %i.n = sext i32 %i.c to i64                     ; 2 uses
  %i.o = shl nsw i64 %i.n, 2
  %scevgep = getelementptr i8, ptr %i.m, i64 %i.o
  %i.p = mul nsw i64 %i.n, -4
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.p, i1 false), !tbaa !7
  br label %.loopexit371

.loopexit371:                                     ; preds = %.lr.ph.i, %bb.b
  store i32 0, ptr %i.b, align 4, !tbaa !50
  store i32 0, ptr %4, align 4, !tbaa !7
  store <2 x float> splat (float 1.000000e+00), ptr %7, align 4, !tbaa !9
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store float 1.000000e+00, ptr %i.q, align 4, !tbaa !9
  %i.r = zext i32 %3 to i64                       ; 3 uses
  %xtraiter = and i32 %1, 1
  %i.s = icmp eq i32 %1, 1
  br i1 %i.s, label %.epil.preheader, label %.loopexit371.new

.loopexit371.new:                                 ; preds = %.loopexit371
  %unroll_iter = and i32 %1, -2
  br label %bb.f

.unr-lcssa:                                       ; preds = %bb.f
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.e, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.loopexit371
  %.0282384.epil.init = phi ptr [ %2, %.loopexit371 ], [ %i.ax, %.unr-lcssa ]
  %.epil.init = phi <4 x float> [ splat (float f0xFF7FFFFF), %.loopexit371 ], [ %i.aw, %.unr-lcssa ] ; 2 uses
  %.epil.init530 = phi <4 x float> [ splat (float f0x7F7FFFFF), %.loopexit371 ], [ %i.av, %.unr-lcssa ] ; 2 uses
  %lcmp.mod533 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod533)
  %i.t = load <3 x float>, ptr %.0282384.epil.init, align 4, !tbaa !9
  %i.u = shufflevector <3 x float> %i.t, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 4 uses
  %i.v = fcmp olt <4 x float> %i.u, %.epil.init530
  %i.w = fcmp ogt <4 x float> %i.u, %.epil.init
  %i.x = select <4 x i1> %i.v, <4 x float> %i.u, <4 x float> %.epil.init530
  %i.y = select <4 x i1> %i.w, <4 x float> %i.u, <4 x float> %.epil.init
  br label %bb.e

bb.e:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa528 = phi <4 x float> [ %i.av, %.unr-lcssa ], [ %i.x, %.epil.preheader ] ; 2 uses
  %.lcssa527 = phi <4 x float> [ %i.aw, %.unr-lcssa ], [ %i.y, %.epil.preheader ]
  %i.z = fsub <4 x float> %.lcssa527, %.lcssa528  ; 5 uses
  %i.aa = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.z, <4 x float> splat (float 5.000000e-01), <4 x float> %.lcssa528) ; 5 uses
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

bb.f:                                             ; preds = %bb.f, %.loopexit371.new
  %.0282384 = phi ptr [ %2, %.loopexit371.new ], [ %i.ax, %bb.f ] ; 2 uses
  %i.ai = phi <4 x float> [ splat (float f0xFF7FFFFF), %.loopexit371.new ], [ %i.aw, %bb.f ] ; 2 uses
  %i.aj = phi <4 x float> [ splat (float f0x7F7FFFFF), %.loopexit371.new ], [ %i.av, %bb.f ] ; 2 uses
  %niter = phi i32 [ 0, %.loopexit371.new ], [ %niter.next.1, %bb.f ]
  %i.ak = load <3 x float>, ptr %.0282384, align 4, !tbaa !9
  %i.al = shufflevector <3 x float> %i.ak, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 4 uses
  %i.am = fcmp olt <4 x float> %i.al, %i.aj
  %i.an = fcmp ogt <4 x float> %i.al, %i.ai
  %i.ao = select <4 x i1> %i.am, <4 x float> %i.al, <4 x float> %i.aj ; 2 uses
  %i.ap = select <4 x i1> %i.an, <4 x float> %i.al, <4 x float> %i.ai ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0282384, i64 %i.r ; 2 uses
  %i.ar = load <3 x float>, ptr %i.aq, align 4, !tbaa !9
  %i.as = shufflevector <3 x float> %i.ar, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 4 uses
  %i.at = fcmp olt <4 x float> %i.as, %i.ao
  %i.au = fcmp ogt <4 x float> %i.as, %i.ap
  %i.av = select <4 x i1> %i.at, <4 x float> %i.as, <4 x float> %i.ao ; 3 uses
  %i.aw = select <4 x i1> %i.au, <4 x float> %i.as, <4 x float> %i.ap ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.r ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.f

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
  store <2 x float> %i.ab, ptr %7, align 4, !tbaa !9
  store float %i.af, ptr %i.q, align 4, !tbaa !9
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
  br label %bb.m

bb.l:                                             ; preds = %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit
  %i.cj = load i32, ptr %4, align 4, !tbaa !7     ; 3 uses
  %.not395 = icmp eq i32 %i.cj, 0
  br i1 %.not395, label %._crit_edge, label %.lr.ph393.preheader

.lr.ph393.preheader:                              ; preds = %bb.l
  %wide.trip.count414 = zext i32 %i.cj to i64
  br label %.lr.ph393

bb.m:                                             ; preds = %bb.k, %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit
  %.1283390 = phi ptr [ %2, %bb.k ], [ %i.ck, %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit ] ; 3 uses
  %.0301389 = phi i32 [ 0, %bb.k ], [ %i.fs, %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.1283390, i64 %i.r
  %i.cl = load <2 x float>, ptr %.1283390, align 4, !tbaa !9
  %i.cm = getelementptr inbounds nuw i8, ptr %.1283390, i64 8
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !9
  %i.co = fmul <2 x float> %i.bx, %i.cl           ; 6 uses
  %i.cp = fmul float %i.by, %i.cn                 ; 4 uses
  %i.cq = load i32, ptr %4, align 4, !tbaa !7     ; 6 uses
  %.not = icmp eq i32 %i.cq, 0
  br i1 %.not, label %.loopexit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.m
  %wide.trip.count = zext i32 %i.cq to i64
  %i.cr = extractelement <2 x float> %i.co, i64 0
  %shift = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.q
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.q ] ; 3 uses
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv ; 5 uses
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !9 ; 2 uses
  %i.cu = fsub float %i.ct, %i.cr
  %i.cv = tail call float @llvm.fabs.f32(float %i.cu)
  %i.cw = fcmp olt float %i.cv, %6
  br i1 %i.cw, label %bb.n, label %bb.q

bb.n:                                             ; preds = %.lr.ph
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %i.cz = load <2 x float>, ptr %i.cy, align 4, !tbaa !9 ; 3 uses
  %i.da = load float, ptr %i.cx, align 4, !tbaa !9
  %i.db = fsub float %i.da, %i.cp
  %i.dc = tail call float @llvm.fabs.f32(float %i.db)
  %foldExtExtBinop = fsub <2 x float> %i.cz, %shift
  %i.dd = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.de = tail call float @llvm.fabs.f32(float %i.dd)
  %i.df = fcmp olt float %i.de, %6
  %i.dg = fcmp olt float %i.dc, %6
  %or.cond335 = select i1 %i.df, i1 %i.dg, i1 false
  br i1 %or.cond335, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.dh = trunc nuw i64 %indvars.iv to i32        ; 3 uses
  %i.di = insertelement <2 x float> %i.cz, float %i.cp, i64 0
  %i.dj = fsub <2 x float> %i.di, %i.cg           ; 2 uses
  %i.dk = insertelement <2 x float> %i.co, float %i.ct, i64 1
  %i.dl = fsub <2 x float> %i.dk, %i.ch           ; 2 uses
  %i.dm = shufflevector <2 x float> %i.co, <2 x float> %i.cz, <2 x i32> <i32 1, i32 2>
  %i.dn = fsub <2 x float> %i.dm, %i.ci           ; 2 uses
  %i.do = fmul <2 x float> %i.dn, %i.dn
  %i.dp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dl, <2 x float> %i.dl, <2 x float> %i.do)
  %i.dq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dj, <2 x float> %i.dj, <2 x float> %i.dp) ; 2 uses
  %i.dr = extractelement <2 x float> %i.dq, i64 0
  %i.ds = extractelement <2 x float> %i.dq, i64 1
  %i.dt = fcmp ogt float %i.dr, %i.ds
  br i1 %i.dt, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o
  %i.du = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store <2 x float> %i.co, ptr %i.cs, align 4, !tbaa !9
  store float %i.cp, ptr %i.du, align 4, !tbaa !9
  br label %.loopexit

bb.q:                                             ; preds = %bb.n, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond405.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond405.not, label %.loopexit.thread, label %.lr.ph

.loopexit:                                        ; preds = %bb.p, %bb.o
  %i.dv = icmp eq i32 %i.cq, %i.dh
  br i1 %i.dv, label %.loopexit.thread, label %bb.r

.loopexit.thread:                                 ; preds = %bb.q, %bb.m, %.loopexit
  %.0297375453 = phi i32 [ %i.dh, %.loopexit ], [ 0, %bb.m ], [ %i.cq, %bb.q ]
  %i.dw = zext i32 %i.cq to i64
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.dw ; 2 uses
  store <2 x float> %i.co, ptr %i.dx, align 4, !tbaa !9
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store float %i.cp, ptr %i.dy, align 4, !tbaa !9
  %i.dz = add i32 %i.cq, 1
  store i32 %i.dz, ptr %4, align 4, !tbaa !7
  br label %bb.r

bb.r:                                             ; preds = %.loopexit.thread, %.loopexit
  %.0297375452 = phi i32 [ %.0297375453, %.loopexit.thread ], [ %i.dh, %.loopexit ]
  %i.ea = load i32, ptr %i.b, align 4, !tbaa !50  ; 7 uses
  %i.eb = load i32, ptr %i.cd, align 8, !tbaa !51
  %i.ec = icmp eq i32 %i.ea, %i.eb
  br i1 %i.ec, label %bb.s, label %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit

bb.s:                                             ; preds = %bb.r
  %.not.i.i = icmp eq i32 %i.ea, 0
  %i.ed = shl nsw i32 %i.ea, 1
  %i.ee = select i1 %.not.i.i, i32 1, i32 %i.ed   ; 4 uses
  %i.ef = icmp slt i32 %i.ea, %i.ee
  br i1 %i.ef, label %bb.t, label %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit

bb.t:                                             ; preds = %bb.s
  %.not.i.i.i = icmp eq i32 %i.ee, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eg = sext i32 %i.ee to i64
  %i.eh = shl nsw i64 %i.eg, 2
  %i.ei = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.eh, i32 noundef 16)
  %.pre.i = load i32, ptr %i.b, align 4, !tbaa !50
  br label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i: ; preds = %bb.u, %bb.t
  %i.ej = phi i32 [ %.pre.i, %bb.u ], [ %i.ea, %bb.t ] ; 4 uses
  %.0.i.i.i = phi ptr [ %i.ei, %bb.u ], [ null, %bb.t ] ; 8 uses
  %i.ek = icmp sgt i32 %i.ej, 0
  %i.el = load ptr, ptr %i.ce, align 8, !tbaa !48 ; 9 uses
  br i1 %i.ek, label %.lr.ph.i.i.i345, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i341

.lr.ph.i.i.i345:                                  ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i
  %i.em = ptrtoaddr ptr %i.el to i64
  %.0.i.i.i516 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i346 = zext nneg i32 %i.ej to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.ej, 8
  %i.en = sub i64 %i.em, %.0.i.i.i516
  %diff.check = icmp ugt i64 %i.en, -32
  %or.cond518 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond518, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i345
  %n.vec = and i64 %wide.trip.count.i.i.i346, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %index ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %wide.load = load <4 x i32>, ptr %i.ep, align 4, !tbaa !7
  %wide.load517 = load <4 x i32>, ptr %i.eq, align 4, !tbaa !7
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  store <4 x i32> %wide.load, ptr %i.eo, align 4, !tbaa !7
  store <4 x i32> %wide.load517, ptr %i.er, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.es = icmp eq i64 %index.next, %n.vec
  br i1 %i.es, label %middle.block, label %vector.body, !llvm.loop !132

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i346
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i343, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i345, %middle.block
  %indvars.iv.i.i.i347.ph = phi i64 [ 0, %.lr.ph.i.i.i345 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter534 = and i64 %wide.trip.count.i.i.i346, 3 ; 2 uses
  %lcmp.mod535.not = icmp eq i64 %xtraiter534, 0
  br i1 %lcmp.mod535.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i347.prol = phi i64 [ %indvars.iv.next.i.i.i348.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i347.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i347.prol
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %indvars.iv.i.i.i347.prol
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !7
  store i32 %i.ev, ptr %i.et, align 4, !tbaa !7
  %indvars.iv.next.i.i.i348.prol = add nuw nsw i64 %indvars.iv.i.i.i347.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter534
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !133

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i347.unr = phi i64 [ %indvars.iv.i.i.i347.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i348.prol, %scalar.ph.prol ]
  %i.ew = sub nsw i64 %indvars.iv.i.i.i347.ph, %wide.trip.count.i.i.i346
  %i.ex = icmp ugt i64 %i.ew, -4
  br i1 %i.ex, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i343, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i347 = phi i64 [ %indvars.iv.next.i.i.i348.3, %scalar.ph ], [ %indvars.iv.i.i.i347.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i347
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %indvars.iv.i.i.i347
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !7
  store i32 %i.fa, ptr %i.ey, align 4, !tbaa !7
  %indvars.iv.next.i.i.i348 = add nuw nsw i64 %indvars.iv.i.i.i347, 1 ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i348
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %indvars.iv.next.i.i.i348
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !7
  store i32 %i.fd, ptr %i.fb, align 4, !tbaa !7
  %indvars.iv.next.i.i.i348.1 = add nuw nsw i64 %indvars.iv.i.i.i347, 2 ; 2 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i348.1
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %indvars.iv.next.i.i.i348.1
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !7
  store i32 %i.fg, ptr %i.fe, align 4, !tbaa !7
  %indvars.iv.next.i.i.i348.2 = add nuw nsw i64 %indvars.iv.i.i.i347, 3 ; 2 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i348.2
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %indvars.iv.next.i.i.i348.2
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !7
  store i32 %i.fj, ptr %i.fh, align 4, !tbaa !7
  %indvars.iv.next.i.i.i348.3 = add nuw nsw i64 %indvars.iv.i.i.i347, 4 ; 2 uses
  %exitcond.not.i.i.i349.3 = icmp eq i64 %indvars.iv.next.i.i.i348.3, %wide.trip.count.i.i.i346
  br i1 %exitcond.not.i.i.i349.3, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i343, label %scalar.ph, !llvm.loop !134

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i341: ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i
  %.not.i5.i.i342 = icmp eq ptr %i.el, null
  br i1 %.not.i5.i.i342, label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i344, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i343

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i343: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i341
  %i.fk = load i8, ptr %i.cf, align 8, !tbaa !49, !range !25, !noundef !26
  %i.fl = trunc nuw i8 %i.fk to i1
  br i1 %i.fl, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i343
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.el)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i343
  %.pre2.pre.i = load i32, ptr %i.b, align 4, !tbaa !50
  br label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i344

_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i344: ; preds = %bb.w, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i341
  %.pre2.i = phi i32 [ %.pre2.pre.i, %bb.w ], [ %i.ej, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i341 ]
  store i8 1, ptr %i.cf, align 8, !tbaa !49
  store ptr %.0.i.i.i, ptr %i.ce, align 8, !tbaa !48
  store i32 %i.ee, ptr %i.cd, align 8, !tbaa !51
  br label %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit

_ZN20btAlignedObjectArrayIiE9push_backERKi.exit:  ; preds = %bb.r, %bb.s, %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i344
  %i.fm = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i344 ], [ %i.ea, %bb.s ], [ %i.ea, %bb.r ]
  %i.fn = load ptr, ptr %i.ce, align 8, !tbaa !48
  %i.fo = sext i32 %i.fm to i64
  %i.fp = getelementptr inbounds [4 x i8], ptr %i.fn, i64 %i.fo
  store i32 %.0297375452, ptr %i.fp, align 4, !tbaa !7
  %i.fq = load i32, ptr %i.b, align 4, !tbaa !50
  %i.fr = add nsw i32 %i.fq, 1
  store i32 %i.fr, ptr %i.b, align 4, !tbaa !50
  %i.fs = add nuw i32 %.0301389, 1                ; 2 uses
  %exitcond406.not = icmp eq i32 %i.fs, %1
  br i1 %exitcond406.not, label %bb.l, label %bb.m

._crit_edge:                                      ; preds = %.lr.ph393, %bb.l
  %.sroa.10423.0 = phi float [ f0x7F7FFFFF, %bb.l ], [ %spec.store.select369.2, %.lr.ph393 ] ; 2 uses
  %.sroa.10.0 = phi float [ f0xFF7FFFFF, %bb.l ], [ %spec.store.select370.2, %.lr.ph393 ]
  %i.ft = phi <2 x float> [ splat (float f0xFF7FFFFF), %bb.l ], [ %i.gj, %.lr.ph393 ]
  %i.fu = phi <2 x float> [ splat (float f0x7F7FFFFF), %bb.l ], [ %i.gi, %.lr.ph393 ] ; 2 uses
  %i.fv = fsub <2 x float> %i.ft, %i.fu           ; 5 uses
  %i.fw = fsub float %.sroa.10.0, %.sroa.10423.0  ; 6 uses
  %i.fx = fcmp olt <2 x float> %i.fv, splat (float f0x358637BD) ; 3 uses
  %i.fy = extractelement <2 x i1> %i.fx, i64 0
  %i.fz = extractelement <2 x i1> %i.fx, i64 1
  %or.cond7 = select i1 %i.fy, i1 true, i1 %i.fz
  %i.ga = fcmp olt float %i.fw, f0x358637BD       ; 2 uses
  %or.cond9 = select i1 %or.cond7, i1 true, i1 %i.ga
  %i.gb = icmp ult i32 %i.cj, 3
  %or.cond336 = or i1 %i.gb, %or.cond9
  br i1 %or.cond336, label %bb.x, label %bb.aa

.lr.ph393:                                        ; preds = %.lr.ph393.preheader, %.lr.ph393
  %.sroa.10423.1 = phi float [ f0x7F7FFFFF, %.lr.ph393.preheader ], [ %spec.store.select369.2, %.lr.ph393 ] ; 2 uses
  %.sroa.10.1 = phi float [ f0xFF7FFFFF, %.lr.ph393.preheader ], [ %spec.store.select370.2, %.lr.ph393 ] ; 2 uses
  %indvars.iv411 = phi i64 [ 0, %.lr.ph393.preheader ], [ %indvars.iv.next412, %.lr.ph393 ] ; 2 uses
  %i.gc = phi <2 x float> [ splat (float f0xFF7FFFFF), %.lr.ph393.preheader ], [ %i.gj, %.lr.ph393 ] ; 2 uses
  %i.gd = phi <2 x float> [ splat (float f0x7F7FFFFF), %.lr.ph393.preheader ], [ %i.gi, %.lr.ph393 ] ; 2 uses
  %i.ge = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv411 ; 2 uses
  %i.gf = load <2 x float>, ptr %i.ge, align 4, !tbaa !9 ; 4 uses
  %i.gg = fcmp olt <2 x float> %i.gf, %i.gd
  %i.gh = fcmp ogt <2 x float> %i.gf, %i.gc
  %i.gi = select <2 x i1> %i.gg, <2 x float> %i.gf, <2 x float> %i.gd ; 2 uses
  %i.gj = select <2 x i1> %i.gh, <2 x float> %i.gf, <2 x float> %i.gc ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !9 ; 4 uses
  %i.gm = fcmp olt float %i.gl, %.sroa.10423.1
  %spec.store.select369.2 = select i1 %i.gm, float %i.gl, float %.sroa.10423.1 ; 2 uses
  %i.gn = fcmp ogt float %i.gl, %.sroa.10.1
  %spec.store.select370.2 = select i1 %i.gn, float %i.gl, float %.sroa.10.1 ; 2 uses
  %indvars.iv.next412 = add nuw nsw i64 %indvars.iv411, 1 ; 2 uses
  %exitcond415.not = icmp eq i64 %indvars.iv.next412, %wide.trip.count414
  br i1 %exitcond415.not, label %._crit_edge, label %.lr.ph393

bb.x:                                             ; preds = %._crit_edge
  %i.go = extractelement <2 x float> %i.fv, i64 0 ; 3 uses
  %i.gp = extractelement <2 x float> %i.fv, i64 1 ; 3 uses
  %i.gq = shufflevector <2 x float> %i.fv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 0>
  %i.gr = insertelement <4 x float> %i.gq, float %i.fw, i64 2
  %i.gs = shufflevector <2 x float> %i.fu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 0>
  %i.gt = insertelement <4 x float> %i.gs, float %.sroa.10423.0, i64 2
  %i.gu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gr, <4 x float> splat (float 5.000000e-01), <4 x float> %i.gt) ; 4 uses
  %i.gv = fcmp oge float %i.go, f0x358637BD
  %i.gw = fcmp olt float %i.go, f0x7F7FFFFF
  %or.cond337 = and i1 %i.gv, %i.gw
  %.0285 = select i1 %or.cond337, float %i.go, float f0x7F7FFFFF ; 2 uses
  %i.gx = fcmp oge float %i.gp, f0x358637BD
end_hunk_0
