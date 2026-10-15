Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/skeleton_builder?download=true
inline.NumInlined: 147
inline.NumDeleted: 102
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK3ozz9animation7offline15SkeletonBuilderclERKNS1_11RawSkeletonE:bb.a
  %i.ko = getelementptr inbounds nuw [16 x i8], ptr %.val83.pre.pre.pre, i64 %indvars.iv.next106.1
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  %i.kq = load i16, ptr %i.kp, align 8, !tbaa !54
  %i.kr = getelementptr inbounds nuw [2 x i8], ptr %i.fp, i64 %indvars.iv.next106.1
  store i16 %i.kq, ptr %i.kr, align 2, !tbaa !24
  %indvars.iv.next106.2 = add nuw nsw i64 %indvars.iv105, 3 ; 2 uses
  %i.ks = getelementptr inbounds nuw [16 x i8], ptr %.val83.pre.pre.pre, i64 %indvars.iv.next106.2
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  %i.ku = load i16, ptr %i.kt, align 8, !tbaa !54
  %i.kv = getelementptr inbounds nuw [2 x i8], ptr %i.fp, i64 %indvars.iv.next106.2
  store i16 %i.ku, ptr %i.kv, align 2, !tbaa !24
  %indvars.iv.next106.3 = add nuw nsw i64 %indvars.iv105, 4 ; 2 uses
  %exitcond110.not.3 = icmp eq i64 %indvars.iv.next106.3, %wide.trip.count109
  br i1 %exitcond110.not.3, label %.preheader, label %vec.epilog.scalar.ph154, !llvm.loop !38

._crit_edge:                                      ; preds = %bb.z, %.preheader
  %.not.i.i.i.i = icmp eq ptr %.val83.pre.pre.pre, null
  br i1 %.not.i.i.i.i, label %_ZN3ozz9animation7offline12_GLOBAL__N_111JointListerD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.kw = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.p unwind label %bb.q       ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !12
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 24
  %i.kz = load ptr, ptr %i.ky, align 8
  invoke void %i.kz(ptr noundef nonnull align 8 dereferenceable(8) %i.kw, ptr noundef nonnull %.val83.pre.pre.pre)
          to label %_ZN3ozz9animation7offline12_GLOBAL__N_111JointListerD2Ev.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.la = landingpad { ptr, i32 }
          catch ptr null
  %i.lb = extractvalue { ptr, i32 } %i.la, 0
  tail call void @__clang_call_terminate(ptr %i.lb) #18
  unreachable

_ZN3ozz9animation7offline12_GLOBAL__N_111JointListerD2Ev.exit: ; preds = %._crit_edge, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.ac

bb.r:                                             ; preds = %.lr.ph95, %bb.z
  %indvars.iv115 = phi i64 [ 0, %.lr.ph95 ], [ %indvars.iv.next116, %bb.z ] ; 5 uses
  %i.lc = shl nuw nsw i64 %indvars.iv115, 2       ; 5 uses
  %i.ld = icmp slt i64 %i.lc, %i.h
  br i1 %i.ld, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.le = getelementptr inbounds nuw [16 x i8], ptr %.val83.pre.pre.pre, i64 %i.lc
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !22 ; 5 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 56
  %i.lh = load <2 x float>, ptr %i.lg, align 1, !tbaa !65
  %i.li = shufflevector <2 x float> %i.lh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lf, i64 64
  %i.lk = load float, ptr %i.lj, align 1, !tbaa !65
  %i.ll = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.lk, i64 0
  %i.lm = shufflevector <4 x float> %i.li, <4 x float> %i.ll, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lf, i64 68
  %i.lo = load <4 x float>, ptr %i.ln, align 1, !tbaa !65 ; 3 uses
  %i.lp = tail call <4 x float> @llvm.x86.sse41.dpps(<4 x float> %i.lo, <4 x float> %i.lo, i8 -1) ; 2 uses
  %i.lq = extractelement <4 x float> %i.lp, i64 0
  %i.lr = tail call float @llvm.sqrt.f32(float %i.lq)
  %i.ls = fdiv float 1.000000e+00, %i.lr
  %i.lt = insertelement <4 x float> poison, float %i.ls, i64 0
  %i.lu = shufflevector <4 x float> %i.lt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lv = fcmp ole <4 x float> %i.lp, zeroinitializer
  %i.lw = shufflevector <4 x i1> %i.lv, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.lx = fmul <4 x float> %i.lo, %i.lu
  %i.ly = select <4 x i1> %i.lw, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.lx
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lf, i64 84
  %i.ma = load <2 x float>, ptr %i.lz, align 1, !tbaa !65
  %i.mb = shufflevector <2 x float> %i.ma, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lf, i64 92
  %i.md = load float, ptr %i.mc, align 1, !tbaa !65
  %i.me = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.md, i64 0
  %i.mf = shufflevector <4 x float> %i.mb, <4 x float> %i.me, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %.sroa.0122.0 = phi <4 x float> [ %i.lm, %bb.s ], [ zeroinitializer, %bb.r ] ; 2 uses
  %.sroa.0118.0 = phi <4 x float> [ %i.mf, %bb.s ], [ splat (float 1.000000e+00), %bb.r ] ; 2 uses
  %.sroa.0.0 = phi <4 x float> [ %i.ly, %bb.s ], [ <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, %bb.r ] ; 2 uses
  %i.mg = or disjoint i64 %i.lc, 1                ; 2 uses
  %i.mh = icmp slt i64 %i.mg, %i.h
  br i1 %i.mh, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.mi = getelementptr inbounds nuw [16 x i8], ptr %.val83.pre.pre.pre, i64 %i.mg
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !22 ; 5 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 56
  %i.ml = load <2 x float>, ptr %i.mk, align 1, !tbaa !65
  %i.mm = shufflevector <2 x float> %i.ml, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mj, i64 64
  %i.mo = load float, ptr %i.mn, align 1, !tbaa !65
  %i.mp = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.mo, i64 0
  %i.mq = shufflevector <4 x float> %i.mm, <4 x float> %i.mp, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mj, i64 68
  %i.ms = load <4 x float>, ptr %i.mr, align 1, !tbaa !65 ; 3 uses
  %i.mt = tail call <4 x float> @llvm.x86.sse41.dpps(<4 x float> %i.ms, <4 x float> %i.ms, i8 -1) ; 2 uses
  %i.mu = extractelement <4 x float> %i.mt, i64 0
  %i.mv = tail call float @llvm.sqrt.f32(float %i.mu)
  %i.mw = fdiv float 1.000000e+00, %i.mv
  %i.mx = insertelement <4 x float> poison, float %i.mw, i64 0
  %i.my = shufflevector <4 x float> %i.mx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mz = fcmp ole <4 x float> %i.mt, zeroinitializer
  %i.na = shufflevector <4 x i1> %i.mz, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.nb = fmul <4 x float> %i.ms, %i.my
  %i.nc = select <4 x i1> %i.na, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.nb
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mj, i64 84
  %i.ne = load <2 x float>, ptr %i.nd, align 1, !tbaa !65
  %i.nf = shufflevector <2 x float> %i.ne, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mj, i64 92
  %i.nh = load float, ptr %i.ng, align 1, !tbaa !65
  %i.ni = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.nh, i64 0
  %i.nj = shufflevector <4 x float> %i.nf, <4 x float> %i.ni, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %.sroa.5123.0 = phi <4 x float> [ %i.mq, %bb.u ], [ zeroinitializer, %bb.t ] ; 2 uses
  %.sroa.5119.0 = phi <4 x float> [ %i.nj, %bb.u ], [ splat (float 1.000000e+00), %bb.t ] ; 2 uses
  %.sroa.5.0 = phi <4 x float> [ %i.nc, %bb.u ], [ <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, %bb.t ] ; 2 uses
  %i.nk = or disjoint i64 %i.lc, 2                ; 2 uses
  %i.nl = icmp slt i64 %i.nk, %i.h
  br i1 %i.nl, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.nm = getelementptr inbounds nuw [16 x i8], ptr %.val83.pre.pre.pre, i64 %i.nk
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !22 ; 5 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 56
  %i.np = load <2 x float>, ptr %i.no, align 1, !tbaa !65
  %i.nq = shufflevector <2 x float> %i.np, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nn, i64 64
  %i.ns = load float, ptr %i.nr, align 1, !tbaa !65
  %i.nt = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.ns, i64 0
  %i.nu = shufflevector <4 x float> %i.nq, <4 x float> %i.nt, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nn, i64 68
  %i.nw = load <4 x float>, ptr %i.nv, align 1, !tbaa !65 ; 3 uses
  %i.nx = tail call <4 x float> @llvm.x86.sse41.dpps(<4 x float> %i.nw, <4 x float> %i.nw, i8 -1) ; 2 uses
  %i.ny = extractelement <4 x float> %i.nx, i64 0
  %i.nz = tail call float @llvm.sqrt.f32(float %i.ny)
  %i.oa = fdiv float 1.000000e+00, %i.nz
  %i.ob = insertelement <4 x float> poison, float %i.oa, i64 0
  %i.oc = shufflevector <4 x float> %i.ob, <4 x float> poison, <4 x i32> zeroinitializer
  %i.od = fcmp ole <4 x float> %i.nx, zeroinitializer
  %i.oe = shufflevector <4 x i1> %i.od, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.of = fmul <4 x float> %i.nw, %i.oc
  %i.og = select <4 x i1> %i.oe, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.of
  %i.oh = getelementptr inbounds nuw i8, ptr %i.nn, i64 84
  %i.oi = load <2 x float>, ptr %i.oh, align 1, !tbaa !65
  %i.oj = shufflevector <2 x float> %i.oi, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ok = getelementptr inbounds nuw i8, ptr %i.nn, i64 92
  %i.ol = load float, ptr %i.ok, align 1, !tbaa !65
  %i.om = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.ol, i64 0
  %i.on = shufflevector <4 x float> %i.oj, <4 x float> %i.om, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %.sroa.8124.0 = phi <4 x float> [ %i.nu, %bb.w ], [ zeroinitializer, %bb.v ] ; 2 uses
  %.sroa.8120.0 = phi <4 x float> [ %i.on, %bb.w ], [ splat (float 1.000000e+00), %bb.v ] ; 2 uses
  %.sroa.8.0 = phi <4 x float> [ %i.og, %bb.w ], [ <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, %bb.v ] ; 2 uses
  %i.oo = or disjoint i64 %i.lc, 3                ; 2 uses
  %i.op = icmp slt i64 %i.oo, %i.h
  br i1 %i.op, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.oq = getelementptr inbounds nuw [16 x i8], ptr %.val83.pre.pre.pre, i64 %i.oo
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !22 ; 5 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 56
  %i.ot = load <2 x float>, ptr %i.os, align 1, !tbaa !65
  %i.ou = shufflevector <2 x float> %i.ot, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ov = getelementptr inbounds nuw i8, ptr %i.or, i64 64
  %i.ow = load float, ptr %i.ov, align 1, !tbaa !65
  %i.ox = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.ow, i64 0
  %i.oy = shufflevector <4 x float> %i.ou, <4 x float> %i.ox, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.oz = getelementptr inbounds nuw i8, ptr %i.or, i64 68
  %i.pa = load <4 x float>, ptr %i.oz, align 1, !tbaa !65 ; 3 uses
  %i.pb = tail call <4 x float> @llvm.x86.sse41.dpps(<4 x float> %i.pa, <4 x float> %i.pa, i8 -1) ; 2 uses
  %i.pc = extractelement <4 x float> %i.pb, i64 0
  %i.pd = tail call float @llvm.sqrt.f32(float %i.pc)
  %i.pe = fdiv float 1.000000e+00, %i.pd
  %i.pf = insertelement <4 x float> poison, float %i.pe, i64 0
  %i.pg = shufflevector <4 x float> %i.pf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ph = fcmp ole <4 x float> %i.pb, zeroinitializer
  %i.pi = shufflevector <4 x i1> %i.ph, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.pj = fmul <4 x float> %i.pa, %i.pg
  %i.pk = select <4 x i1> %i.pi, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.pj
  %i.pl = getelementptr inbounds nuw i8, ptr %i.or, i64 84
  %i.pm = load <2 x float>, ptr %i.pl, align 1, !tbaa !65
  %i.pn = shufflevector <2 x float> %i.pm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.po = getelementptr inbounds nuw i8, ptr %i.or, i64 92
  %i.pp = load float, ptr %i.po, align 1, !tbaa !65
  %i.pq = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.pp, i64 0
  %i.pr = shufflevector <4 x float> %i.pn, <4 x float> %i.pq, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %.sroa.11125.0 = phi <4 x float> [ %i.oy, %bb.y ], [ zeroinitializer, %bb.x ] ; 2 uses
  %.sroa.11121.0 = phi <4 x float> [ %i.pr, %bb.y ], [ splat (float 1.000000e+00), %bb.x ] ; 2 uses
  %.sroa.11.0 = phi <4 x float> [ %i.pk, %bb.y ], [ <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, %bb.x ] ; 2 uses
  %i.ps = load ptr, ptr %i.kf, align 8, !tbaa !68
  %i.pt = getelementptr inbounds nuw [160 x i8], ptr %i.ps, i64 %indvars.iv115 ; 2 uses
  %i.pu = shufflevector <4 x float> %.sroa.0122.0, <4 x float> %.sroa.8124.0, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.pv = shufflevector <4 x float> %.sroa.5123.0, <4 x float> %.sroa.11125.0, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.pw = shufflevector <4 x float> %.sroa.0122.0, <4 x float> %.sroa.8124.0, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.px = shufflevector <4 x float> %.sroa.5123.0, <4 x float> %.sroa.11125.0, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %4 = shufflevector <4 x float> %i.pu, <4 x float> %i.pv, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %4, ptr %i.pt, align 16, !tbaa !65
  %i.py = shufflevector <4 x float> %i.pw, <4 x float> %i.px, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pt, i64 32
  store <4 x float> %i.py, ptr %i.pz, align 16, !tbaa !65
  %i.qa = load ptr, ptr %i.kf, align 8, !tbaa !68
  %i.qb = getelementptr inbounds nuw [160 x i8], ptr %i.qa, i64 %indvars.iv115 ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 48
  %i.qd = shufflevector <4 x float> %.sroa.0.0, <4 x float> %.sroa.8.0, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.qe = shufflevector <4 x float> %.sroa.5.0, <4 x float> %.sroa.11.0, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.qf = shufflevector <4 x float> %.sroa.0.0, <4 x float> %.sroa.8.0, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.qg = shufflevector <4 x float> %.sroa.5.0, <4 x float> %.sroa.11.0, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %5 = shufflevector <4 x float> %i.qd, <4 x float> %i.qe, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %5, ptr %i.qc, align 16, !tbaa !65
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qb, i64 80
  %6 = shufflevector <4 x float> %i.qf, <4 x float> %i.qg, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %6, ptr %i.qh, align 16, !tbaa !65
  %i.qi = load ptr, ptr %i.kf, align 8, !tbaa !68
  %i.qj = getelementptr inbounds nuw [160 x i8], ptr %i.qi, i64 %indvars.iv115 ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 112
  %i.ql = shufflevector <4 x float> %.sroa.0118.0, <4 x float> %.sroa.8120.0, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.qm = shufflevector <4 x float> %.sroa.5119.0, <4 x float> %.sroa.11121.0, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.qn = shufflevector <4 x float> %.sroa.0118.0, <4 x float> %.sroa.8120.0, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.qo = shufflevector <4 x float> %.sroa.5119.0, <4 x float> %.sroa.11121.0, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %7 = shufflevector <4 x float> %i.ql, <4 x float> %i.qm, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %7, ptr %i.qk, align 16, !tbaa !65
  %i.qp = shufflevector <4 x float> %i.qn, <4 x float> %i.qo, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qj, i64 144
  store <4 x float> %i.qp, ptr %i.qq, align 16, !tbaa !65
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1 ; 2 uses
  %i.qr = load i64, ptr %i.kb, align 8, !tbaa !64
  %i.qs = trunc i64 %i.qr to i32
  %i.qt = add nsw i32 %i.qs, 3
  %i.qu = sdiv i32 %i.qt, 4
  %i.qv = sext i32 %i.qu to i64
  %i.qw = icmp slt i64 %indvars.iv.next116, %i.qv
  br i1 %i.qw, label %bb.r, label %._crit_edge, !llvm.loop !39

bb.aa:                                            ; preds = %bb.m, %bb.l
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fh, %bb.l ], [ %i.jp, %bb.m ]
  %.val82 = load ptr, ptr %3, align 8, !tbaa !16
  tail call fastcc void @_ZN3ozz9animation7offline12_GLOBAL__N_111JointListerD2Ev(ptr %.val82) #16
  br label %.body

.body:                                            ; preds = %bb.j, %bb.aa
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %bb.aa ], [ %i.u, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.ab

bb.ab:                                            ; preds = %.body, %bb.k
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn, %.body ], [ %i.fg, %bb.k ]
  tail call void @_ZNSt10unique_ptrIN3ozz9animation8SkeletonENS0_7DeleterIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #16
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn

bb.ac:                                            ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_111JointListerD2Ev.exit, %bb.b
  ret void
}

declare noundef zeroext i1 @_ZNK3ozz9animation7offline11RawSkeleton8ValidateEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare noundef i32 @_ZNK3ozz9animation7offline11RawSkeleton10num_jointsEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare noundef ptr @_ZN3ozz9animation8Skeleton8AllocateEmm(ptr noundef nonnull align 8 dereferenceable(56), i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN3ozz9animation7offline12_GLOBAL__N_111JointListerD2Ev(ptr %.0.val) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i.i.i = icmp eq ptr %.0.val, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_111JointLister5JointENS0_12StdAllocatorIS5_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  invoke void %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %.0.val)
          to label %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_111JointLister5JointENS0_12StdAllocatorIS5_EEED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #18
  unreachable

_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_111JointLister5JointENS0_12StdAllocatorIS5_EEED2Ev.exit: ; preds = %bb.a, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10unique_ptrIN3ozz9animation8SkeletonENS0_7DeleterIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13     ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZNK3ozz7DeleterINS_9animation8SkeletonEEclEPS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3ozz9animation8SkeletonD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.a) #16
  %i.b = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %.noexc unwind label %bb.c     ; 2 uses

.noexc:                                           ; preds = %bb.b
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  invoke void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %i.a)
          to label %_ZNK3ozz7DeleterINS_9animation8SkeletonEEclEPS2_.exit unwind label %bb.c, !inline_history !69

_ZNK3ozz7DeleterINS_9animation8SkeletonEEclEPS2_.exit: ; preds = %.noexc, %bb.a
  ret void

bb.c:                                             ; preds = %.noexc, %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #18
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #16 ; 0 uses
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_111JointLister5JointENS0_12StdAllocatorIS5_EEED2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !16    ; 2 uses
  %.not.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN3ozz9animation7offline12_GLOBAL__N_111JointLister5JointENS0_12StdAllocatorIS5_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  invoke void %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %.val)
          to label %_ZNSt12_Vector_baseIN3ozz9animation7offline12_GLOBAL__N_111JointLister5JointENS0_12StdAllocatorIS5_EEED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #18
  unreachable

_ZNSt12_Vector_baseIN3ozz9animation7offline12_GLOBAL__N_111JointLister5JointENS0_12StdAllocatorIS5_EEED2Ev.exit: ; preds = %bb.a, %bb.c
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare noundef ptr @_ZN3ozz6memory17default_allocatorEv() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse41.dpps(<4 x float>, <4 x float>, i8 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #11

; Function Attrs: nounwind
declare void @_ZN3ozz9animation8SkeletonD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56)) unnamed_addr #12

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZN3ozz9animation7offline12_GLOBAL__N_123_IterHierarchyRecurseDFINS2_11JointListerEEEvRKSt6vectorINS1_11RawSkeleton5JointENS_12StdAllocatorIS7_EEEPKS7_RT_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %2) unnamed_addr #13 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74
  %i.c = load ptr, ptr %0, align 8, !tbaa !75     ; 2 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not.i = icmp eq ptr %1, null
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_111JointListerclERKNS1_11RawSkeleton5JointEPS6_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN3ozz9animation7offline12_GLOBAL__N_111JointListerclERKNS1_11RawSkeleton5JointEPS6_.exit
  %i.f = phi ptr [ %i.c, %.lr.ph ], [ %i.az, %_ZN3ozz9animation7offline12_GLOBAL__N_111JointListerclERKNS1_11RawSkeleton5JointEPS6_.exit ]
  %.010 = phi i64 [ 0, %.lr.ph ], [ %i.ax, %_ZN3ozz9animation7offline12_GLOBAL__N_111JointListerclERKNS1_11RawSkeleton5JointEPS6_.exit ] ; 2 uses
  %i.g = getelementptr inbounds nuw [96 x i8], ptr %i.f, i64 %.010 ; 4 uses
  br i1 %.not.i, label %..loopexit_crit_edge.i, label %bb.c

..loopexit_crit_edge.i:                           ; preds = %bb.b
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !17
  br label %.loopexit.i

bb.c:                                             ; preds = %bb.b
  %.val.i = load ptr, ptr %2, align 8, !tbaa !16  ; 2 uses
  %.val10.i = load ptr, ptr %i.d, align 8, !tbaa !17 ; 4 uses
end_hunk_0
