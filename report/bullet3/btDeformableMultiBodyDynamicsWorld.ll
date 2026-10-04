Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btDeformableMultiBodyDynamicsWorld?download=true
inline.NumInlined: 1094
inline.NumDeleted: 383
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 54
loop-unroll.NumUnrolled: 62
begin_hunk_0_@_ZN34btDeformableMultiBodyDynamicsWorld21updateActivationStateEf:bb.a

declare void @_ZN10btSoftBody18updateDeactivationEf(ptr noundef nonnull align 8 dereferenceable(2064), float noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN10btSoftBody13wantsSleepingEv(ptr noundef nonnull align 8 dereferenceable(2064)) local_unnamed_addr #5

declare void @_ZNK17btCollisionObject18setActivationStateEi(ptr noundef nonnull align 8 dereferenceable(372), i32 noundef) local_unnamed_addr #5

declare void @_ZN10btSoftBody15setZeroVelocityEv(ptr noundef nonnull align 8 dereferenceable(2064)) local_unnamed_addr #5

declare void @_ZN24btMultiBodyDynamicsWorld21updateActivationStateEf(ptr noundef nonnull align 8 dereferenceable(848), float noundef) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN10btSoftBody19applyRepulsionForceEfb(ptr noundef nonnull align 8 dereferenceable(2064) %0, float noundef %1, i1 noundef zeroext %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.btAlignedObjectArray.0, align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store i8 1, ptr %i.a, align 8, !tbaa !42
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr null, ptr %i.b, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.c, align 4, !tbaa !44
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.d, align 8, !tbaa !45
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1316 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !329  ; 8 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %_ZN20btAlignedObjectArrayIiED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.h = zext nneg i32 %i.f to i64
  %i.i = shl nuw nsw i64 %i.h, 2                  ; 2 uses
  %i.j = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.i, i32 noundef 16)
          to label %.loopexit263 unwind label %bb.c ; 11 uses

.loopexit263:                                     ; preds = %bb.b
  store i8 1, ptr %i.a, align 8, !tbaa !42
  store ptr %i.j, ptr %i.b, align 8, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.j, i8 0, i64 %i.i, i1 false), !tbaa !52
  %.pre = load i32, ptr %i.e, align 4, !tbaa !329
  %i.k = icmp sgt i32 %.pre, 0
  br i1 %i.k, label %.lr.ph, label %.lr.ph267

.lr.ph267:                                        ; preds = %.lr.ph, %.loopexit263
  %i.l = zext nneg i32 %i.f to i64                ; 2 uses
  %_ZL4seed.promoted = load i64, ptr @_ZL4seed, align 8, !tbaa !492 ; 2 uses
  %xtraiter = and i64 %i.l, 1
  %i.m = icmp eq i32 %i.f, 1
  br i1 %i.m, label %.epil.preheader, label %.lr.ph267.new

.lr.ph267.new:                                    ; preds = %.lr.ph267
  %unroll_iter = and i64 %i.l, 2147483646
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN20btAlignedObjectArrayIiED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  resume { ptr, i32 } %i.n

.lr.ph:                                           ; preds = %.loopexit263, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.loopexit263 ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.p = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.p, ptr %i.o, align 4, !tbaa !52
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.q = load i32, ptr %i.e, align 4, !tbaa !329
  %i.r = sext i32 %i.q to i64
  %i.s = icmp slt i64 %indvars.iv.next, %i.r
  br i1 %i.s, label %.lr.ph, label %.lr.ph267, !llvm.loop !489

.preheader262.unr-lcssa:                          ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader262, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader262.unr-lcssa, %.lr.ph267
  %indvars.iv277.epil.init = phi i64 [ 0, %.lr.ph267 ], [ %indvars.iv.next278.1, %.preheader262.unr-lcssa ]
  %.epil.init = phi i64 [ %_ZL4seed.promoted, %.lr.ph267 ], [ %i.as, %.preheader262.unr-lcssa ]
  %lcmp.mod316 = trunc i32 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod316)
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv277.epil.init ; 2 uses
  %i.u = mul nuw nsw i64 %.epil.init, 1664525
  %i.v = add nuw nsw i64 %i.u, 1013904223         ; 2 uses
  %i.w = and i64 %i.v, 4294967295
  %.lhs.trunc.epil = trunc i64 %i.v to i32
  %i.x = urem i32 %.lhs.trunc.epil, %i.f
  %.zext.epil = zext nneg i32 %i.x to i64
  %sext.epil = shl nuw nsw i64 %.zext.epil, 2
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 %sext.epil ; 2 uses
  %i.z = load i32, ptr %i.t, align 4, !tbaa !52
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !52
  store i32 %i.aa, ptr %i.t, align 4, !tbaa !52
  store i32 %i.z, ptr %i.y, align 4, !tbaa !52
  br label %.preheader262

.preheader262:                                    ; preds = %.preheader262.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.as, %.preheader262.unr-lcssa ], [ %i.w, %.epil.preheader ]
  store i64 %.lcssa, ptr @_ZL4seed, align 8, !tbaa !492
  %.pre297 = load i32, ptr %i.e, align 4, !tbaa !329 ; 2 uses
  %i.ab = icmp sgt i32 %.pre297, 0
  br i1 %i.ab, label %.lr.ph273, label %._crit_edge274

.lr.ph273:                                        ; preds = %.preheader262
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1328
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !328
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1824
  %wide.trip.count295 = zext nneg i32 %.pre297 to i64
  br label %bb.g

bb.d:                                             ; preds = %bb.d, %.lr.ph267.new
  %indvars.iv277 = phi i64 [ 0, %.lr.ph267.new ], [ %indvars.iv.next278.1, %bb.d ] ; 3 uses
  %i.af = phi i64 [ %_ZL4seed.promoted, %.lr.ph267.new ], [ %i.as, %bb.d ]
  %niter = phi i64 [ 0, %.lr.ph267.new ], [ %niter.next.1, %bb.d ]
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv277 ; 2 uses
  %i.ah = mul nuw nsw i64 %i.af, 1664525
  %i.ai = add nuw nsw i64 %i.ah, 1013904223       ; 2 uses
  %i.aj = and i64 %i.ai, 4294967295
  %.lhs.trunc = trunc i64 %i.ai to i32
  %i.ak = urem i32 %.lhs.trunc, %i.f
  %.zext = zext nneg i32 %i.ak to i64
  %sext = shl nuw nsw i64 %.zext, 2
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 %sext ; 2 uses
  %i.am = load i32, ptr %i.ag, align 4, !tbaa !52
  %i.an = load i32, ptr %i.al, align 4, !tbaa !52
  store i32 %i.an, ptr %i.ag, align 4, !tbaa !52
  store i32 %i.am, ptr %i.al, align 4, !tbaa !52
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv277
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 2 uses
  %i.aq = mul nuw nsw i64 %i.aj, 1664525
  %i.ar = add nuw nsw i64 %i.aq, 1013904223       ; 2 uses
  %i.as = and i64 %i.ar, 4294967295               ; 3 uses
  %.lhs.trunc.1 = trunc i64 %i.ar to i32
  %i.at = urem i32 %.lhs.trunc.1, %i.f
  %.zext.1 = zext nneg i32 %i.at to i64
  %sext.1 = shl nuw nsw i64 %.zext.1, 2
  %i.au = getelementptr inbounds nuw i8, ptr %i.j, i64 %sext.1 ; 2 uses
  %i.av = load i32, ptr %i.ap, align 4, !tbaa !52
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !52
  store i32 %i.aw, ptr %i.ap, align 4, !tbaa !52
  store i32 %i.av, ptr %i.au, align 4, !tbaa !52
  %indvars.iv.next278.1 = add nuw nsw i64 %indvars.iv277, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader262.unr-lcssa, label %bb.d, !llvm.loop !490

._crit_edge274.loopexit:                          ; preds = %bb.q
  %.pre298 = load ptr, ptr %i.b, align 8, !tbaa !43
  %.pre299 = load i8, ptr %i.a, align 8, !range !50
  %i.ax = trunc nuw i8 %.pre299 to i1
  br label %._crit_edge274

._crit_edge274:                                   ; preds = %._crit_edge274.loopexit, %.preheader262
  %i.ay = phi i1 [ %i.ax, %._crit_edge274.loopexit ], [ true, %.preheader262 ]
  %i.az = phi ptr [ %.pre298, %._crit_edge274.loopexit ], [ %i.j, %.preheader262 ] ; 2 uses
  %.not.i.i.i128 = icmp ne ptr %i.az, null
  %or.cond.i.i = select i1 %.not.i.i.i128, i1 %i.ay, i1 false
  br i1 %or.cond.i.i, label %bb.e, label %_ZN20btAlignedObjectArrayIiED2Ev.exit

bb.e:                                             ; preds = %._crit_edge274
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.az)
          to label %_ZN20btAlignedObjectArrayIiED2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  tail call void @__clang_call_terminate(ptr %i.bb) #20
  unreachable

_ZN20btAlignedObjectArrayIiED2Ev.exit:            ; preds = %bb.a, %._crit_edge274, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void

bb.g:                                             ; preds = %.lr.ph273, %bb.q
  %indvars.iv292 = phi i64 [ 0, %.lr.ph273 ], [ %indvars.iv.next293, %bb.q ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv292
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !52
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [88 x i8], ptr %i.ad, i64 %i.be ; 14 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !494 ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !495 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 48 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !327 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !327 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !327 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !60
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bf, i64 20
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.by = load float, ptr %i.bx, align 4, !tbaa !60
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bf, i64 24 ; 2 uses
  %4 = load float, ptr %i.bt, align 4, !tbaa !60
  %5 = getelementptr inbounds nuw i8, ptr %i.bs, i64 20
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !60
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bg, i64 20
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  %i.ce = load float, ptr %i.cd, align 8, !tbaa !496
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bf, i64 52 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bf, i64 56 ; 4 uses
  %i.ch = load float, ptr %i.cg, align 8, !tbaa !60 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bg, i64 48 ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bs, i64 48
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bm, i64 56
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !60
  %i.co = getelementptr inbounds nuw i8, ptr %i.bp, i64 56
  %i.cp = load float, ptr %i.co, align 4, !tbaa !60
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bs, i64 56
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !60
  %i.cs = load float, ptr %i.bz, align 8, !tbaa !60 ; 5 uses
  %6 = fmul float %4, %i.cs
  %i.ct = load <2 x float>, ptr %i.bk, align 8, !tbaa !60 ; 5 uses
  %i.cu = extractelement <2 x float> %i.ct, i64 0 ; 2 uses
  %i.cv = load <2 x float>, ptr %i.cj, align 4, !tbaa !60
  %i.cw = load <2 x float>, ptr %i.ck, align 4, !tbaa !60
  %i.cx = load <2 x float>, ptr %i.bn, align 4, !tbaa !60
  %i.cy = load <2 x float>, ptr %i.bq, align 4, !tbaa !60
  %i.cz = load <2 x float>, ptr %i.bj, align 8, !tbaa !60 ; 5 uses
  %i.da = shufflevector <2 x float> %i.cz, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 0> ; 3 uses
  %i.db = insertelement <4 x float> poison, float %i.by, i64 2
  %i.dc = insertelement <4 x float> %i.db, float %i.cn, i64 3
  %i.dd = shufflevector <2 x float> %i.cy, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.de = shufflevector <4 x float> %i.dd, <4 x float> %i.dc, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.df = fmul <4 x float> %i.da, %i.de
  %i.dg = shufflevector <2 x float> %i.cz, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dh = insertelement <4 x float> poison, float %i.bv, i64 2
  %i.di = insertelement <4 x float> %i.dh, float %i.cp, i64 3
  %i.dj = shufflevector <2 x float> %i.cx, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.dk = shufflevector <4 x float> %i.dj, <4 x float> %i.di, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dl = fmul <4 x float> %i.dg, %i.dk
  %i.dm = fadd <4 x float> %i.df, %i.dl           ; 3 uses
  %7 = extractelement <4 x float> %i.dm, i64 1
  %8 = fadd float %7, %6
  %9 = fsub float %i.cb, %8
  %10 = load <2 x float>, ptr %5, align 4, !tbaa !60
  %i.dn = load <2 x float>, ptr %i.cc, align 4, !tbaa !60
  %i.do = insertelement <2 x float> poison, float %i.cs, i64 0
  %i.dp = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dq = fmul <2 x float> %i.dp, %10
  %11 = shufflevector <4 x float> %i.dm, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %12 = fadd <2 x float> %11, %i.dq
  %13 = fsub <2 x float> %i.dn, %12               ; 2 uses
  %shift = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop313 = fmul <2 x float> %13, %shift
  %14 = extractelement <2 x float> %foldExtExtBinop313, i64 0
  %15 = tail call float @llvm.fmuladd.f32(float %i.cu, float %9, float %14)
  %16 = extractelement <2 x float> %13, i64 1
  %17 = tail call noundef float @llvm.fmuladd.f32(float %i.ch, float %16, float %15)
  %18 = fsub float %i.ce, %17                     ; 2 uses
  %19 = fcmp olt float %18, 0.000000e+00
  %.sroa.speculated248 = select i1 %19, float 0.000000e+00, float %18 ; 2 uses
  %20 = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> zeroinitializer
  %21 = fmul <2 x float> %20, %i.cv
  %22 = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dr = fmul <2 x float> %22, %i.cw
  %23 = fadd <2 x float> %21, %i.dr
  %24 = load <2 x float>, ptr %i.cl, align 4, !tbaa !60
  %25 = fmul <2 x float> %i.dp, %24
  %26 = fmul float %i.cs, %i.cr
  %27 = fadd <2 x float> %23, %25
  %28 = extractelement <4 x float> %i.dm, i64 3
  %29 = fadd float %28, %26
  %i.ds = load <2 x float>, ptr %i.ci, align 4, !tbaa !60
  %i.dt = fsub <2 x float> %i.ds, %27             ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.bg, i64 56 ; 5 uses
  %i.dv = load float, ptr %i.du, align 4, !tbaa !60
  %i.dw = fsub float %i.dv, %29                   ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %i.ct, %i.dt
  %i.dx = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.dy = extractelement <2 x float> %i.dt, i64 0
  %i.dz = tail call float @llvm.fmuladd.f32(float %i.dy, float %i.cu, float %i.dx)
  %i.ea = tail call noundef float @llvm.fmuladd.f32(float %i.dw, float %i.ch, float %i.dz) ; 6 uses
  %i.eb = fmul float %.sroa.speculated248, 1.000000e-01
  %i.ec = fdiv float %i.eb, %1                    ; 2 uses
  %i.ed = fcmp ogt float %i.ea, %i.ec
  br i1 %i.ed, label %bb.q, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ee = insertelement <2 x float> poison, float %i.ea, i64 0
  %i.ef = shufflevector <2 x float> %i.ee, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eg = fmul <2 x float> %i.ct, %i.ef
  %i.eh = fmul float %i.ch, %i.ea
  %i.ei = fsub <2 x float> %i.dt, %i.eg           ; 4 uses
  %i.ej = fsub float %i.dw, %i.eh                 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.bg, i64 112 ; 6 uses
  %i.el = load float, ptr %i.ek, align 8, !tbaa !501 ; 4 uses
  %i.em = fcmp oeq float %i.el, 0.000000e+00
  %i.en = fdiv float 1.000000e+00, %i.el
  %i.eo = select i1 %i.em, float 0.000000e+00, float %i.en ; 3 uses
  br i1 %2, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ep = load float, ptr %i.ae, align 8, !tbaa !502
  %i.eq = fmul float %1, %i.ep
  %i.er = fmul float %.sroa.speculated248, %i.eq  ; 2 uses
  %i.es = fsub float %i.ec, %i.ea
  %i.et = fmul float %i.es, %i.eo                 ; 2 uses
  %i.eu = fcmp olt float %i.er, %i.et
  %.sroa.speculated207 = select i1 %i.eu, float %i.er, float %i.et
  %i.ev = fneg float %.sroa.speculated207
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.099 = phi float [ %i.ev, %bb.i ], [ 0.000000e+00, %bb.h ] ; 2 uses
  %i.ew = fcmp olt float %i.ea, 0.000000e+00
  br i1 %i.ew, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ex = fpext float %i.eo to double
  %i.ey = fmul double %i.ex, 5.000000e-01
  %i.ez = fpext float %i.ea to double
  %i.fa = fpext float %.099 to double
  %i.fb = tail call double @llvm.fmuladd.f64(double %i.ey, double %i.ez, double %i.fa)
  %i.fc = fptrunc double %i.fb to float
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.1 = phi float [ %i.fc, %bb.k ], [ %.099, %bb.j ] ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.bg, i64 128
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !503 ; 2 uses
  %i.ff = load ptr, ptr %i.bl, align 8, !tbaa !327 ; 6 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 128
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !503
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !327 ; 7 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 128
  %i.fl = load i32, ptr %i.fk, align 8, !tbaa !503
  %i.fm = or i32 %i.fl, %i.fh
  %i.fn = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !327 ; 7 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 128
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !503
  %i.fr = or i32 %i.fq, %i.fm                     ; 2 uses
  %foldExtExtBinop309 = fmul <4 x float> %i.da, %i.da
  %i.fs = extractelement <4 x float> %foldExtExtBinop309, i64 0
  %i.ft = extractelement <2 x float> %i.cz, i64 0 ; 2 uses
  %i.fu = tail call float @llvm.fmuladd.f32(float %i.ft, float %i.ft, float %i.fs)
  %i.fv = tail call noundef float @llvm.fmuladd.f32(float %i.cs, float %i.cs, float %i.fu)
  %i.fw = fpext float %.1 to double
  %i.fx = fmul double %i.fw, 2.000000e+00
  %i.fy = fpext float %i.fv to double
  %i.fz = fadd double %i.fy, 1.000000e+00
  %i.ga = fdiv double %i.fx, %i.fz
  %i.gb = fptrunc double %i.ga to float           ; 2 uses
  %i.gc = icmp sgt i32 %i.fr, 0
  %i.gd = icmp sgt i32 %i.fe, 0
  %or.cond = select i1 %i.gc, i1 true, i1 %i.gd   ; 2 uses
  %i.ge = fmul float %i.gb, 2.000000e+00
  %storemerge = select i1 %or.cond, float %i.ge, float %i.gb ; 9 uses
  %i.gf = icmp slt i32 %i.fr, 1                   ; 2 uses
  br i1 %i.gf, label %.preheader260.preheader, label %.loopexit261

.preheader260.preheader:                          ; preds = %bb.l
  %i.gg = load float, ptr %i.bj, align 8, !tbaa !60 ; 2 uses
  %i.gh = fmul float %i.gg, %i.ch
  %i.gi = fmul float %storemerge, %i.gh
  %i.gj = fmul float %i.el, %i.gi
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ff, i64 48 ; 2 uses
  %i.gl = insertelement <2 x float> poison, float %i.gg, i64 0
  %i.gm = shufflevector <2 x float> %i.gl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gn = fmul <2 x float> %i.ct, %i.gm
  %i.go = insertelement <2 x float> poison, float %storemerge, i64 0
  %i.gp = shufflevector <2 x float> %i.go, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gq = fmul <2 x float> %i.gp, %i.gn
  %i.gr = insertelement <2 x float> poison, float %i.el, i64 0
  %i.gs = shufflevector <2 x float> %i.gr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gt = fmul <2 x float> %i.gq, %i.gs
  %i.gu = load <2 x float>, ptr %i.gk, align 8, !tbaa !60
  %i.gv = fadd <2 x float> %i.gt, %i.gu
  store <2 x float> %i.gv, ptr %i.gk, align 8, !tbaa !60
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ff, i64 56 ; 2 uses
  %i.gx = load float, ptr %i.gw, align 8, !tbaa !60
  %i.gy = fadd float %i.gj, %i.gx
  store float %i.gy, ptr %i.gw, align 8, !tbaa !60
  %i.gz = getelementptr inbounds nuw i8, ptr %i.bf, i64 20
  %i.ha = load float, ptr %i.bk, align 8, !tbaa !60
  %i.hb = load float, ptr %i.gz, align 4, !tbaa !60 ; 3 uses
  %i.hc = fmul float %i.ha, %i.hb
  %i.hd = load float, ptr %i.cf, align 4, !tbaa !60
  %i.he = fmul float %i.hb, %i.hd
  %i.hf = load float, ptr %i.cg, align 8, !tbaa !60
  %i.hg = fmul float %i.hb, %i.hf
  %i.hh = fmul float %storemerge, %i.hc
  %i.hi = fmul float %storemerge, %i.he
  %i.hj = fmul float %storemerge, %i.hg
  %i.hk = load float, ptr %i.ek, align 8, !tbaa !60 ; 3 uses
  %i.hl = fmul float %i.hh, %i.hk
  %i.hm = fmul float %i.hk, %i.hi
  %i.hn = fmul float %i.hk, %i.hj
  %i.ho = getelementptr inbounds nuw i8, ptr %i.fj, i64 48 ; 2 uses
  %i.hp = load float, ptr %i.ho, align 8, !tbaa !60
  %i.hq = fadd float %i.hl, %i.hp
  store float %i.hq, ptr %i.ho, align 8, !tbaa !60
  %i.hr = getelementptr inbounds nuw i8, ptr %i.fj, i64 52 ; 2 uses
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !60
  %i.ht = fadd float %i.hm, %i.hs
  store float %i.ht, ptr %i.hr, align 4, !tbaa !60
  %i.hu = getelementptr inbounds nuw i8, ptr %i.fj, i64 56 ; 2 uses
  %i.hv = load float, ptr %i.hu, align 8, !tbaa !60
  %i.hw = fadd float %i.hn, %i.hv
  store float %i.hw, ptr %i.hu, align 8, !tbaa !60
  %i.hx = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.hy = load float, ptr %i.bk, align 8, !tbaa !60
  %i.hz = load float, ptr %i.hx, align 8, !tbaa !60 ; 3 uses
  %i.ia = fmul float %i.hy, %i.hz
  %i.ib = load float, ptr %i.cf, align 4, !tbaa !60
  %i.ic = fmul float %i.hz, %i.ib
  %i.id = load float, ptr %i.cg, align 8, !tbaa !60
  %i.ie = fmul float %i.hz, %i.id
  %i.if = fmul float %storemerge, %i.ia
  %i.ig = fmul float %storemerge, %i.ic
  %i.ih = fmul float %storemerge, %i.ie
  %i.ii = load float, ptr %i.ek, align 8, !tbaa !60 ; 3 uses
  %i.ij = fmul float %i.if, %i.ii
  %i.ik = fmul float %i.ii, %i.ig
  %i.il = fmul float %i.ii, %i.ih
  %i.im = getelementptr inbounds nuw i8, ptr %i.fo, i64 48 ; 2 uses
  %i.in = load float, ptr %i.im, align 8, !tbaa !60
  %i.io = fadd float %i.ij, %i.in
  store float %i.io, ptr %i.im, align 8, !tbaa !60
  %i.ip = getelementptr inbounds nuw i8, ptr %i.fo, i64 52 ; 2 uses
  %i.iq = load float, ptr %i.ip, align 4, !tbaa !60
  %i.ir = fadd float %i.ik, %i.iq
  store float %i.ir, ptr %i.ip, align 4, !tbaa !60
  %i.is = getelementptr inbounds nuw i8, ptr %i.fo, i64 56 ; 2 uses
  %i.it = load float, ptr %i.is, align 8, !tbaa !60
  %i.iu = fadd float %i.il, %i.it
  store float %i.iu, ptr %i.is, align 8, !tbaa !60
  br label %.loopexit261

.loopexit261:                                     ; preds = %.preheader260.preheader, %bb.l
  %i.iv = icmp slt i32 %i.fe, 1                   ; 2 uses
  br i1 %i.iv, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.loopexit261
  %i.iw = load float, ptr %i.ek, align 8, !tbaa !501
  %i.ix = fmul float %storemerge, %i.iw           ; 2 uses
  %i.iy = load float, ptr %i.cg, align 8, !tbaa !60
  %i.iz = fmul float %i.ix, %i.iy
  %i.ja = load <2 x float>, ptr %i.bk, align 8, !tbaa !60
  %i.jb = insertelement <2 x float> poison, float %i.ix, i64 0
  %i.jc = shufflevector <2 x float> %i.jb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jd = fmul <2 x float> %i.ja, %i.jc
  %i.je = load <2 x float>, ptr %i.ci, align 8, !tbaa !60
  %i.jf = fsub <2 x float> %i.je, %i.jd
  store <2 x float> %i.jf, ptr %i.ci, align 8, !tbaa !60
  %i.jg = load float, ptr %i.du, align 8, !tbaa !60
  %i.jh = fsub float %i.jg, %i.iz
  store float %i.jh, ptr %i.du, align 8, !tbaa !60
  br label %bb.n

bb.n:                                             ; preds = %.loopexit261, %bb.m
  %foldExtExtBinop311 = fmul <2 x float> %i.ei, %i.ei
  %i.ji = extractelement <2 x float> %foldExtExtBinop311, i64 1
  %i.jj = extractelement <2 x float> %i.ei, i64 0 ; 2 uses
  %i.jk = tail call float @llvm.fmuladd.f32(float %i.jj, float %i.jj, float %i.ji)
  %i.jl = tail call noundef float @llvm.fmuladd.f32(float %i.ej, float %i.ej, float %i.jk) ; 3 uses
  %i.jm = fcmp ogt float %i.jl, f0x34000000
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.jl) ; 2 uses
  %.0.i = select i1 %i.jm, float %sqrt.i, float 0.000000e+00 ; 4 uses
  %i.jn = fcmp ogt float %.0.i, f0x34000000
  br i1 %i.jn, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.jo = fmul float %.1, 2.000000e+00
  %i.jp = load float, ptr %i.ek, align 8, !tbaa !501
  %i.jq = fmul float %i.jo, %i.jp
end_hunk_0
