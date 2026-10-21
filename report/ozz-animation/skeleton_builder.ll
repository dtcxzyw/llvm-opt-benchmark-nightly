Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/skeleton_builder?download=true
inline.NumInlined: 147
inline.NumDeleted: 102
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK3ozz9animation7offline15SkeletonBuilderclERKNS1_11RawSkeletonE:bb.a
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %i.ks = load i16, ptr %i.kr, align 8, !tbaa !54
  %i.kt = getelementptr inbounds nuw [2 x i8], ptr %i.fo, i64 %indvars.iv.next106.2
  store i16 %i.ks, ptr %i.kt, align 2, !tbaa !24
  %indvars.iv.next106.3 = add nuw nsw i64 %indvars.iv105, 4 ; 2 uses
  %exitcond110.not.3 = icmp eq i64 %indvars.iv.next106.3, %wide.trip.count109
  br i1 %exitcond110.not.3, label %.preheader, label %vec.epilog.scalar.ph154, !llvm.loop !38

._crit_edge:                                      ; preds = %bb.y, %.preheader
  %.not.i.i.i.i = icmp eq ptr %.val83.pre.pre.pre, null
  br i1 %.not.i.i.i.i, label %_ZN3ozz9animation7offline12_GLOBAL__N_111JointListerD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %i.ku = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.n unwind label %bb.o       ; 2 uses

bb.n:                                             ; preds = %bb.m
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !12
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 24
  %i.kx = load ptr, ptr %i.kw, align 8
  invoke void %i.kx(ptr noundef nonnull align 8 dereferenceable(8) %i.ku, ptr noundef nonnull %.val83.pre.pre.pre)
          to label %_ZN3ozz9animation7offline12_GLOBAL__N_111JointListerD2Ev.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ky = landingpad { ptr, i32 }
          catch ptr null
  %i.kz = extractvalue { ptr, i32 } %i.ky, 0
  tail call void @__clang_call_terminate(ptr %i.kz) #18
  unreachable

_ZN3ozz9animation7offline12_GLOBAL__N_111JointListerD2Ev.exit: ; preds = %._crit_edge, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.aa

bb.p:                                             ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_111JointListerC2Ei.exit, %_ZN3ozz9animation7offline15IterateJointsDFIRNS1_12_GLOBAL__N_111JointListerEEET_RKNS1_11RawSkeletonES6_.exit._crit_edge
  %i.la = landingpad { ptr, i32 }
          cleanup
  %.val82 = load ptr, ptr %3, align 8, !tbaa !16
  tail call fastcc void @_ZN3ozz9animation7offline12_GLOBAL__N_111JointListerD2Ev(ptr %.val82) #16
  br label %.body

bb.q:                                             ; preds = %.lr.ph95, %bb.y
  %indvars.iv115 = phi i64 [ 0, %.lr.ph95 ], [ %indvars.iv.next116, %bb.y ] ; 5 uses
  %i.lb = shl nuw nsw i64 %indvars.iv115, 2       ; 5 uses
  %i.lc = icmp slt i64 %i.lb, %i.h
  br i1 %i.lc, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ld = getelementptr inbounds nuw [16 x i8], ptr %.val83.pre.pre.pre, i64 %i.lb
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !22 ; 5 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 56
  %i.lg = load <2 x float>, ptr %i.lf, align 1, !tbaa !65
  %i.lh = shufflevector <2 x float> %i.lg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.li = getelementptr inbounds nuw i8, ptr %i.le, i64 64
  %i.lj = load float, ptr %i.li, align 1, !tbaa !65
  %i.lk = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.lj, i64 0
  %i.ll = shufflevector <4 x float> %i.lh, <4 x float> %i.lk, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.lm = getelementptr inbounds nuw i8, ptr %i.le, i64 68
  %i.ln = load <4 x float>, ptr %i.lm, align 1, !tbaa !65 ; 3 uses
  %i.lo = tail call <4 x float> @llvm.x86.sse41.dpps(<4 x float> %i.ln, <4 x float> %i.ln, i8 -1) ; 2 uses
  %i.lp = extractelement <4 x float> %i.lo, i64 0
  %i.lq = tail call float @llvm.sqrt.f32(float %i.lp)
  %i.lr = fdiv float 1.000000e+00, %i.lq
  %i.ls = insertelement <4 x float> poison, float %i.lr, i64 0
  %i.lt = shufflevector <4 x float> %i.ls, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lu = fcmp ole <4 x float> %i.lo, zeroinitializer
  %i.lv = shufflevector <4 x i1> %i.lu, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.lw = fmul <4 x float> %i.ln, %i.lt
  %i.lx = select <4 x i1> %i.lv, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.lw
  %i.ly = getelementptr inbounds nuw i8, ptr %i.le, i64 84
  %i.lz = load <2 x float>, ptr %i.ly, align 1, !tbaa !65
  %i.ma = shufflevector <2 x float> %i.lz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.mb = getelementptr inbounds nuw i8, ptr %i.le, i64 92
  %i.mc = load float, ptr %i.mb, align 1, !tbaa !65
  %i.md = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.mc, i64 0
  %i.me = shufflevector <4 x float> %i.ma, <4 x float> %i.md, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %.sroa.0122.0 = phi <4 x float> [ %i.ll, %bb.r ], [ zeroinitializer, %bb.q ] ; 2 uses
  %.sroa.0118.0 = phi <4 x float> [ %i.me, %bb.r ], [ splat (float 1.000000e+00), %bb.q ] ; 2 uses
  %.sroa.0.0 = phi <4 x float> [ %i.lx, %bb.r ], [ <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, %bb.q ] ; 2 uses
  %i.mf = or disjoint i64 %i.lb, 1                ; 2 uses
  %i.mg = icmp slt i64 %i.mf, %i.h
  br i1 %i.mg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.mh = getelementptr inbounds nuw [16 x i8], ptr %.val83.pre.pre.pre, i64 %i.mf
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !22 ; 5 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 56
  %i.mk = load <2 x float>, ptr %i.mj, align 1, !tbaa !65
  %i.ml = shufflevector <2 x float> %i.mk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mi, i64 64
  %i.mn = load float, ptr %i.mm, align 1, !tbaa !65
  %i.mo = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.mn, i64 0
  %i.mp = shufflevector <4 x float> %i.ml, <4 x float> %i.mo, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mi, i64 68
  %i.mr = load <4 x float>, ptr %i.mq, align 1, !tbaa !65 ; 3 uses
  %i.ms = tail call <4 x float> @llvm.x86.sse41.dpps(<4 x float> %i.mr, <4 x float> %i.mr, i8 -1) ; 2 uses
  %i.mt = extractelement <4 x float> %i.ms, i64 0
  %i.mu = tail call float @llvm.sqrt.f32(float %i.mt)
  %i.mv = fdiv float 1.000000e+00, %i.mu
  %i.mw = insertelement <4 x float> poison, float %i.mv, i64 0
  %i.mx = shufflevector <4 x float> %i.mw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.my = fcmp ole <4 x float> %i.ms, zeroinitializer
  %i.mz = shufflevector <4 x i1> %i.my, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.na = fmul <4 x float> %i.mr, %i.mx
  %i.nb = select <4 x i1> %i.mz, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.na
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mi, i64 84
  %i.nd = load <2 x float>, ptr %i.nc, align 1, !tbaa !65
  %i.ne = shufflevector <2 x float> %i.nd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mi, i64 92
  %i.ng = load float, ptr %i.nf, align 1, !tbaa !65
  %i.nh = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.ng, i64 0
  %i.ni = shufflevector <4 x float> %i.ne, <4 x float> %i.nh, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %.sroa.5123.0 = phi <4 x float> [ %i.mp, %bb.t ], [ zeroinitializer, %bb.s ] ; 2 uses
  %.sroa.5119.0 = phi <4 x float> [ %i.ni, %bb.t ], [ splat (float 1.000000e+00), %bb.s ] ; 2 uses
  %.sroa.5.0 = phi <4 x float> [ %i.nb, %bb.t ], [ <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, %bb.s ] ; 2 uses
  %i.nj = or disjoint i64 %i.lb, 2                ; 2 uses
  %i.nk = icmp slt i64 %i.nj, %i.h
  br i1 %i.nk, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.nl = getelementptr inbounds nuw [16 x i8], ptr %.val83.pre.pre.pre, i64 %i.nj
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !22 ; 5 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 56
  %i.no = load <2 x float>, ptr %i.nn, align 1, !tbaa !65
  %i.np = shufflevector <2 x float> %i.no, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nm, i64 64
  %i.nr = load float, ptr %i.nq, align 1, !tbaa !65
  %i.ns = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.nr, i64 0
  %i.nt = shufflevector <4 x float> %i.np, <4 x float> %i.ns, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nm, i64 68
  %i.nv = load <4 x float>, ptr %i.nu, align 1, !tbaa !65 ; 3 uses
  %i.nw = tail call <4 x float> @llvm.x86.sse41.dpps(<4 x float> %i.nv, <4 x float> %i.nv, i8 -1) ; 2 uses
  %i.nx = extractelement <4 x float> %i.nw, i64 0
  %i.ny = tail call float @llvm.sqrt.f32(float %i.nx)
  %i.nz = fdiv float 1.000000e+00, %i.ny
  %i.oa = insertelement <4 x float> poison, float %i.nz, i64 0
  %i.ob = shufflevector <4 x float> %i.oa, <4 x float> poison, <4 x i32> zeroinitializer
  %i.oc = fcmp ole <4 x float> %i.nw, zeroinitializer
  %i.od = shufflevector <4 x i1> %i.oc, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.oe = fmul <4 x float> %i.nv, %i.ob
  %i.of = select <4 x i1> %i.od, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.oe
  %i.og = getelementptr inbounds nuw i8, ptr %i.nm, i64 84
  %i.oh = load <2 x float>, ptr %i.og, align 1, !tbaa !65
  %i.oi = shufflevector <2 x float> %i.oh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.oj = getelementptr inbounds nuw i8, ptr %i.nm, i64 92
  %i.ok = load float, ptr %i.oj, align 1, !tbaa !65
  %i.ol = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.ok, i64 0
  %i.om = shufflevector <4 x float> %i.oi, <4 x float> %i.ol, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %.sroa.8124.0 = phi <4 x float> [ %i.nt, %bb.v ], [ zeroinitializer, %bb.u ] ; 2 uses
  %.sroa.8120.0 = phi <4 x float> [ %i.om, %bb.v ], [ splat (float 1.000000e+00), %bb.u ] ; 2 uses
  %.sroa.8.0 = phi <4 x float> [ %i.of, %bb.v ], [ <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, %bb.u ] ; 2 uses
  %i.on = or disjoint i64 %i.lb, 3                ; 2 uses
  %i.oo = icmp slt i64 %i.on, %i.h
  br i1 %i.oo, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.op = getelementptr inbounds nuw [16 x i8], ptr %.val83.pre.pre.pre, i64 %i.on
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !22 ; 5 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 56
  %i.os = load <2 x float>, ptr %i.or, align 1, !tbaa !65
  %i.ot = shufflevector <2 x float> %i.os, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ou = getelementptr inbounds nuw i8, ptr %i.oq, i64 64
  %i.ov = load float, ptr %i.ou, align 1, !tbaa !65
  %i.ow = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.ov, i64 0
  %i.ox = shufflevector <4 x float> %i.ot, <4 x float> %i.ow, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.oy = getelementptr inbounds nuw i8, ptr %i.oq, i64 68
  %i.oz = load <4 x float>, ptr %i.oy, align 1, !tbaa !65 ; 3 uses
  %i.pa = tail call <4 x float> @llvm.x86.sse41.dpps(<4 x float> %i.oz, <4 x float> %i.oz, i8 -1) ; 2 uses
  %i.pb = extractelement <4 x float> %i.pa, i64 0
  %i.pc = tail call float @llvm.sqrt.f32(float %i.pb)
  %i.pd = fdiv float 1.000000e+00, %i.pc
  %i.pe = insertelement <4 x float> poison, float %i.pd, i64 0
  %i.pf = shufflevector <4 x float> %i.pe, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pg = fcmp ole <4 x float> %i.pa, zeroinitializer
  %i.ph = shufflevector <4 x i1> %i.pg, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.pi = fmul <4 x float> %i.oz, %i.pf
  %i.pj = select <4 x i1> %i.ph, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.pi
  %i.pk = getelementptr inbounds nuw i8, ptr %i.oq, i64 84
  %i.pl = load <2 x float>, ptr %i.pk, align 1, !tbaa !65
  %i.pm = shufflevector <2 x float> %i.pl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.pn = getelementptr inbounds nuw i8, ptr %i.oq, i64 92
  %i.po = load float, ptr %i.pn, align 1, !tbaa !65
  %i.pp = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.po, i64 0
  %i.pq = shufflevector <4 x float> %i.pm, <4 x float> %i.pp, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %.sroa.11125.0 = phi <4 x float> [ %i.ox, %bb.x ], [ zeroinitializer, %bb.w ] ; 2 uses
  %.sroa.11121.0 = phi <4 x float> [ %i.pq, %bb.x ], [ splat (float 1.000000e+00), %bb.w ] ; 2 uses
  %.sroa.11.0 = phi <4 x float> [ %i.pj, %bb.x ], [ <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, %bb.w ] ; 2 uses
  %i.pr = load ptr, ptr %i.kd, align 8, !tbaa !68
  %i.ps = getelementptr inbounds nuw [160 x i8], ptr %i.pr, i64 %indvars.iv115 ; 3 uses
  %i.pt = shufflevector <4 x float> %.sroa.0122.0, <4 x float> %.sroa.8124.0, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.pu = shufflevector <4 x float> %.sroa.5123.0, <4 x float> %.sroa.11125.0, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.pv = shufflevector <4 x float> %.sroa.0122.0, <4 x float> %.sroa.8124.0, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.pw = shufflevector <4 x float> %.sroa.5123.0, <4 x float> %.sroa.11125.0, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %4 = shufflevector <4 x float> %i.pt, <4 x float> %i.pu, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  store <4 x float> %4, ptr %i.ps, align 16, !tbaa !65
  %5 = shufflevector <4 x float> %i.pt, <4 x float> %i.pu, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %6 = getelementptr inbounds nuw i8, ptr %i.ps, i64 16
  store <4 x float> %5, ptr %6, align 16, !tbaa !65
  %i.px = shufflevector <4 x float> %i.pv, <4 x float> %i.pw, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.py = getelementptr inbounds nuw i8, ptr %i.ps, i64 32
  store <4 x float> %i.px, ptr %i.py, align 16, !tbaa !65
  %i.pz = load ptr, ptr %i.kd, align 8, !tbaa !68
  %i.qa = getelementptr inbounds nuw [160 x i8], ptr %i.pz, i64 %indvars.iv115 ; 4 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 48
  %i.qc = shufflevector <4 x float> %.sroa.0.0, <4 x float> %.sroa.8.0, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.qd = shufflevector <4 x float> %.sroa.5.0, <4 x float> %.sroa.11.0, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.qe = shufflevector <4 x float> %.sroa.0.0, <4 x float> %.sroa.8.0, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %7 = shufflevector <4 x float> %.sroa.5.0, <4 x float> %.sroa.11.0, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %8 = shufflevector <4 x float> %i.qc, <4 x float> %i.qd, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  store <4 x float> %8, ptr %i.qb, align 16, !tbaa !65
  %i.qf = shufflevector <4 x float> %i.qc, <4 x float> %i.qd, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %9 = getelementptr inbounds nuw i8, ptr %i.qa, i64 64
  store <4 x float> %i.qf, ptr %9, align 16, !tbaa !65
  %10 = shufflevector <4 x float> %i.qe, <4 x float> %7, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qa, i64 80
  store <4 x float> %10, ptr %i.qg, align 16, !tbaa !65
  %11 = shufflevector <4 x float> %i.qe, <4 x float> %7, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %12 = getelementptr inbounds nuw i8, ptr %i.qa, i64 96
  store <4 x float> %11, ptr %12, align 16, !tbaa !65
  %i.qh = load ptr, ptr %i.kd, align 8, !tbaa !68
  %i.qi = getelementptr inbounds nuw [160 x i8], ptr %i.qh, i64 %indvars.iv115 ; 3 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 112
  %i.qk = shufflevector <4 x float> %.sroa.0118.0, <4 x float> %.sroa.8120.0, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ql = shufflevector <4 x float> %.sroa.5119.0, <4 x float> %.sroa.11121.0, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.qm = shufflevector <4 x float> %.sroa.0118.0, <4 x float> %.sroa.8120.0, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.qn = shufflevector <4 x float> %.sroa.5119.0, <4 x float> %.sroa.11121.0, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %13 = shufflevector <4 x float> %i.qk, <4 x float> %i.ql, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  store <4 x float> %13, ptr %i.qj, align 16, !tbaa !65
  %14 = shufflevector <4 x float> %i.qk, <4 x float> %i.ql, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %15 = getelementptr inbounds nuw i8, ptr %i.qi, i64 128
  store <4 x float> %14, ptr %15, align 16, !tbaa !65
  %i.qo = shufflevector <4 x float> %i.qm, <4 x float> %i.qn, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qi, i64 144
  store <4 x float> %i.qo, ptr %i.qp, align 16, !tbaa !65
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1 ; 2 uses
  %i.qq = load i64, ptr %i.jz, align 8, !tbaa !64
  %i.qr = trunc i64 %i.qq to i32
  %i.qs = add nsw i32 %i.qr, 3
  %i.qt = sdiv i32 %i.qs, 4
  %i.qu = sext i32 %i.qt to i64
  %i.qv = icmp slt i64 %indvars.iv.next116, %i.qu
  br i1 %i.qv, label %bb.q, label %._crit_edge, !llvm.loop !39

.body:                                            ; preds = %bb.j, %bb.p
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.la, %bb.p ], [ %i.u, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.z

bb.z:                                             ; preds = %.body, %bb.k
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn, %.body ], [ %i.fg, %bb.k ]
  tail call void @_ZNSt10unique_ptrIN3ozz9animation8SkeletonENS0_7DeleterIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #16
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn

bb.aa:                                            ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_111JointListerD2Ev.exit, %bb.b
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
  %i.h = ptrtoint ptr %.val10.i to i64
  %i.i = ptrtoint ptr %.val.i to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = lshr i64 %i.j, 4
  %indvars.iv.next.i15 = add nsw i64 %i.k, -1     ; 2 uses
  %indvars.i16 = trunc i64 %indvars.iv.next.i15 to i16 ; 2 uses
end_hunk_0
