Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btConvexHull?download=true
inline.NumInlined: 616
inline.NumDeleted: 139
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN11HullLibrary15CleanupVerticesEjPK9btVector3jRjPS0_fRS0_:bb.a
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
  store <2 x float> splat (float 1.000000e+00), ptr %7, align 4, !tbaa !12
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store float 1.000000e+00, ptr %i.q, align 4, !tbaa !12
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
  %.epil.init537 = phi <4 x float> [ splat (float f0x7F7FFFFF), %.loopexit ], [ %i.av, %.unr-lcssa ] ; 2 uses
  %lcmp.mod540 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod540)
  %i.t = load <3 x float>, ptr %.0282384.epil.init, align 4, !tbaa !12
  %i.u = shufflevector <3 x float> %i.t, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 4 uses
  %i.v = fcmp olt <4 x float> %i.u, %.epil.init537
  %i.w = fcmp ogt <4 x float> %i.u, %.epil.init
  %i.x = select <4 x i1> %i.v, <4 x float> %i.u, <4 x float> %.epil.init537
  %i.y = select <4 x i1> %i.w, <4 x float> %i.u, <4 x float> %.epil.init
  br label %bb.e

bb.e:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa535 = phi <4 x float> [ %i.av, %.unr-lcssa ], [ %i.x, %.epil.preheader ] ; 2 uses
  %.lcssa534 = phi <4 x float> [ %i.aw, %.unr-lcssa ], [ %i.y, %.epil.preheader ]
  %i.z = fsub <4 x float> %.lcssa534, %.lcssa535  ; 5 uses
  %i.aa = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.z, <4 x float> splat (float 5.000000e-01), <4 x float> %.lcssa535) ; 5 uses
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
  %i.ak = load <3 x float>, ptr %.0282384, align 4, !tbaa !12
  %i.al = shufflevector <3 x float> %i.ak, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 4 uses
  %i.am = fcmp olt <4 x float> %i.al, %i.aj
  %i.an = fcmp ogt <4 x float> %i.al, %i.ai
  %i.ao = select <4 x i1> %i.am, <4 x float> %i.al, <4 x float> %i.aj ; 2 uses
  %i.ap = select <4 x i1> %i.an, <4 x float> %i.al, <4 x float> %i.ai ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0282384, i64 %i.r ; 2 uses
  %i.ar = load <3 x float>, ptr %i.aq, align 4, !tbaa !12
  %i.as = shufflevector <3 x float> %i.ar, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 4 uses
  %i.at = fcmp olt <4 x float> %i.as, %i.ao
  %i.au = fcmp ogt <4 x float> %i.as, %i.ap
  %i.av = select <4 x i1> %i.at, <4 x float> %i.as, <4 x float> %i.ao ; 3 uses
  %i.aw = select <4 x i1> %i.au, <4 x float> %i.as, <4 x float> %i.ap ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.r ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.f, !llvm.loop !155

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
  store <2 x float> %i.ab, ptr %7, align 4, !tbaa !12
  store float %i.af, ptr %i.q, align 4, !tbaa !12
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
  br i1 %.not395, label %._crit_edge, label %.lr.ph393.preheader

.lr.ph393.preheader:                              ; preds = %bb.l
  %wide.trip.count416 = zext i32 %i.cl to i64
  br label %.lr.ph393

bb.m:                                             ; preds = %bb.k, %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit
  %.1283390 = phi ptr [ %2, %bb.k ], [ %i.cm, %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit ] ; 3 uses
  %.0301389 = phi i32 [ 0, %bb.k ], [ %i.fu, %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.1283390, i64 %i.r
  %i.cn = load <2 x float>, ptr %.1283390, align 4, !tbaa !12
  %i.co = getelementptr inbounds nuw i8, ptr %.1283390, i64 8
  %i.cp = load float, ptr %i.co, align 4, !tbaa !12
  %i.cq = fmul <2 x float> %i.bx, %i.cn           ; 5 uses
  %i.cr = fmul float %i.by, %i.cp                 ; 4 uses
  %i.cs = load i32, ptr %4, align 4, !tbaa !41    ; 6 uses
  %.not = icmp eq i32 %i.cs, 0
  br i1 %.not, label %.thread.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.m
  %wide.trip.count = zext i32 %i.cs to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.p
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.p ] ; 3 uses
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.cv = load <2 x float>, ptr %i.ct, align 4, !tbaa !12 ; 3 uses
  %i.cw = load float, ptr %i.cu, align 4, !tbaa !12
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !12 ; 2 uses
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
  %i.di = trunc nuw i64 %indvars.iv to i32        ; 3 uses
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
  store <2 x float> %i.cq, ptr %i.ct, align 4, !tbaa !12
  store float %i.cr, ptr %i.dw, align 4, !tbaa !12
  br label %.thread

bb.p:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond407.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond407.not, label %.thread.thread, label %.lr.ph, !llvm.loop !156

.thread:                                          ; preds = %bb.o, %bb.n
  %i.dx = icmp eq i32 %i.cs, %i.di
  br i1 %i.dx, label %.thread.thread, label %bb.q

.thread.thread:                                   ; preds = %bb.p, %bb.m, %.thread
  %.0297375454 = phi i32 [ %i.di, %.thread ], [ 0, %bb.m ], [ %i.cs, %bb.p ]
  %i.dy = zext i32 %i.cs to i64
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.dy ; 2 uses
  store <2 x float> %i.cq, ptr %i.dz, align 4, !tbaa !12
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  store float %i.cr, ptr %i.ea, align 4, !tbaa !12
  %i.eb = add i32 %i.cs, 1
  store i32 %i.eb, ptr %4, align 4, !tbaa !41
  br label %bb.q

bb.q:                                             ; preds = %.thread.thread, %.thread
  %.0297375453 = phi i32 [ %.0297375454, %.thread.thread ], [ %i.di, %.thread ]
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
  %.0.i.i.i523 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i347 = zext nneg i32 %i.el to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.el, 8
  %i.ep = sub i64 %i.eo, %.0.i.i.i523
  %diff.check = icmp ugt i64 %i.ep, -32
  %or.cond525 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond525, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i346
  %n.vec = and i64 %wide.trip.count.i.i.i347, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %index ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %wide.load = load <4 x i32>, ptr %i.er, align 4, !tbaa !41
  %wide.load524 = load <4 x i32>, ptr %i.es, align 4, !tbaa !41
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store <4 x i32> %wide.load, ptr %i.eq, align 4, !tbaa !41
  store <4 x i32> %wide.load524, ptr %i.et, align 4, !tbaa !41
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.eu = icmp eq i64 %index.next, %n.vec
  br i1 %i.eu, label %middle.block, label %vector.body, !llvm.loop !157

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i347
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i344, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i346, %middle.block
  %indvars.iv.i.i.i348.ph = phi i64 [ 0, %.lr.ph.i.i.i346 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter541 = and i64 %wide.trip.count.i.i.i347, 3 ; 2 uses
  %lcmp.mod542.not = icmp eq i64 %xtraiter541, 0
  br i1 %lcmp.mod542.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i348.prol = phi i64 [ %indvars.iv.next.i.i.i349.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i348.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i348.prol
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %indvars.iv.i.i.i348.prol
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !41
  store i32 %i.ex, ptr %i.ev, align 4, !tbaa !41
  %indvars.iv.next.i.i.i349.prol = add nuw nsw i64 %indvars.iv.i.i.i348.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter541
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !158

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
  br i1 %exitcond.not.i.i.i350.3, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i344, label %scalar.ph, !llvm.loop !159

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
  br i1 %exitcond408.not, label %bb.l, label %bb.m, !llvm.loop !160

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

.lr.ph393:                                        ; preds = %.lr.ph393.preheader, %.lr.ph393
  %.sroa.10425.1 = phi float [ f0x7F7FFFFF, %.lr.ph393.preheader ], [ %spec.store.select370.2, %.lr.ph393 ] ; 2 uses
  %.sroa.10.1 = phi float [ f0xFF7FFFFF, %.lr.ph393.preheader ], [ %spec.store.select371.2, %.lr.ph393 ] ; 2 uses
  %indvars.iv413 = phi i64 [ 0, %.lr.ph393.preheader ], [ %indvars.iv.next414, %.lr.ph393 ] ; 2 uses
  %i.ge = phi <2 x float> [ splat (float f0xFF7FFFFF), %.lr.ph393.preheader ], [ %i.gl, %.lr.ph393 ] ; 2 uses
  %i.gf = phi <2 x float> [ splat (float f0x7F7FFFFF), %.lr.ph393.preheader ], [ %i.gk, %.lr.ph393 ] ; 2 uses
  %i.gg = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv413 ; 2 uses
  %i.gh = load <2 x float>, ptr %i.gg, align 4, !tbaa !12 ; 4 uses
  %i.gi = fcmp olt <2 x float> %i.gh, %i.gf
  %i.gj = fcmp ogt <2 x float> %i.gh, %i.ge
  %i.gk = select <2 x i1> %i.gi, <2 x float> %i.gh, <2 x float> %i.gf ; 2 uses
  %i.gl = select <2 x i1> %i.gj, <2 x float> %i.gh, <2 x float> %i.ge ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !12 ; 4 uses
  %i.go = fcmp olt float %i.gn, %.sroa.10425.1
  %spec.store.select370.2 = select i1 %i.go, float %i.gn, float %.sroa.10425.1 ; 2 uses
  %i.gp = fcmp ogt float %i.gn, %.sroa.10.1
  %spec.store.select371.2 = select i1 %i.gp, float %i.gn, float %.sroa.10.1 ; 2 uses
  %indvars.iv.next414 = add nuw nsw i64 %indvars.iv413, 1 ; 2 uses
  %exitcond417.not = icmp eq i64 %indvars.iv.next414, %wide.trip.count416
  br i1 %exitcond417.not, label %._crit_edge, label %.lr.ph393, !llvm.loop !161

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
end_hunk_0
