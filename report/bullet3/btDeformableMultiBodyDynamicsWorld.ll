Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btDeformableMultiBodyDynamicsWorld?download=true
inline.NumInlined: 1094
inline.NumDeleted: 383
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 54
loop-unroll.NumUnrolled: 62
begin_hunk_0_@_ZN34btDeformableMultiBodyDynamicsWorld21updateActivationStateEf:bb.a
  %i.o = sext i32 %i.n to i64
  %i.p = icmp slt i64 %indvars.iv.next, %i.o
  br i1 %i.p, label %bb.b, label %._crit_edge, !llvm.loop !488
}

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
  %lcmp.mod314 = trunc i32 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod314)
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
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bf, i64 20 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.by = load float, ptr %i.bx, align 4, !tbaa !60
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.ca = load float, ptr %i.bt, align 4, !tbaa !60
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bs, i64 20
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !60
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bg, i64 20
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  %i.cg = load float, ptr %i.cf, align 8, !tbaa !496
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bf, i64 52 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bf, i64 56 ; 4 uses
  %i.cj = load float, ptr %i.ci, align 8, !tbaa !60 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bg, i64 48 ; 5 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bs, i64 48
  %i.co = getelementptr inbounds nuw i8, ptr %i.bm, i64 56
  %i.cp = load float, ptr %i.co, align 4, !tbaa !60
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bp, i64 56
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !60
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bs, i64 56
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !60
  %4 = load <3 x float>, ptr %i.bj, align 8, !tbaa !60 ; 6 uses
  %i.cu = load float, ptr %i.bw, align 4, !tbaa !60 ; 3 uses
  %5 = extractelement <3 x float> %4, i64 2       ; 4 uses
  %i.cv = fmul float %i.ca, %5
  %i.cw = load <2 x float>, ptr %i.bk, align 8, !tbaa !60 ; 5 uses
  %i.cx = extractelement <2 x float> %i.cw, i64 0 ; 2 uses
  %i.cy = load <2 x float>, ptr %i.cl, align 4, !tbaa !60
  %6 = shufflevector <3 x float> %4, <3 x float> poison, <2 x i32> zeroinitializer
  %7 = fmul <2 x float> %6, %i.cy
  %i.cz = load <2 x float>, ptr %i.cm, align 4, !tbaa !60
  %8 = shufflevector <3 x float> %4, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %9 = fmul <2 x float> %8, %i.cz
  %10 = fadd <2 x float> %7, %9
  %i.da = load <2 x float>, ptr %i.bn, align 4, !tbaa !60
  %11 = load <2 x float>, ptr %i.bq, align 4, !tbaa !60
  %i.db = insertelement <4 x float> poison, float %i.bv, i64 2
  %i.dc = insertelement <4 x float> %i.db, float %i.cp, i64 3
  %12 = shufflevector <2 x float> %i.da, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dd = shufflevector <4 x float> %12, <4 x float> %i.dc, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %13 = shufflevector <3 x float> %4, <3 x float> poison, <4 x i32> zeroinitializer
  %i.de = fmul <4 x float> %i.dd, %13
  %14 = insertelement <4 x float> poison, float %i.cu, i64 0
  %15 = shufflevector <4 x float> %14, <4 x float> poison, <4 x i32> zeroinitializer
  %i.df = insertelement <4 x float> poison, float %i.by, i64 2
  %i.dg = insertelement <4 x float> %i.df, float %i.cr, i64 3
  %16 = shufflevector <2 x float> %11, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dh = shufflevector <4 x float> %16, <4 x float> %i.dg, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.di = fmul <4 x float> %15, %i.dh
  %i.dj = fadd <4 x float> %i.de, %i.di           ; 3 uses
  %i.dk = extractelement <4 x float> %i.dj, i64 0
  %i.dl = fadd float %i.dk, %i.cv
  %i.dm = fsub float %i.cd, %i.dl
  %i.dn = load <2 x float>, ptr %i.cb, align 4, !tbaa !60
  %i.do = load <2 x float>, ptr %i.ce, align 4, !tbaa !60
  %17 = shufflevector <3 x float> %4, <3 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.dp = fmul <2 x float> %17, %i.dn
  %18 = shufflevector <4 x float> %i.dj, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.dq = fadd <2 x float> %18, %i.dp
  %i.dr = fsub <2 x float> %i.do, %i.dq           ; 2 uses
  %shift = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop311.a = fmul <2 x float> %i.dr, %shift
  %i.ds = extractelement <2 x float> %foldExtExtBinop311.a, i64 0
  %i.dt = tail call float @llvm.fmuladd.f32(float %i.cx, float %i.dm, float %i.ds)
  %i.du = extractelement <2 x float> %i.dr, i64 1
  %i.dv = tail call noundef float @llvm.fmuladd.f32(float %i.cj, float %i.du, float %i.dt)
  %i.dw = fsub float %i.cg, %i.dv                 ; 2 uses
  %i.dx = fcmp olt float %i.dw, 0.000000e+00
  %.sroa.speculated248 = select i1 %i.dx, float 0.000000e+00, float %i.dw ; 2 uses
  %i.dy = load <2 x float>, ptr %i.cn, align 4, !tbaa !60
  %i.dz = fmul <2 x float> %17, %i.dy
  %i.ea = fmul float %5, %i.ct
  %i.eb = fadd <2 x float> %10, %i.dz
  %i.ec = extractelement <4 x float> %i.dj, i64 3
  %i.ed = fadd float %i.ec, %i.ea
  %i.ee = load <2 x float>, ptr %i.ck, align 4, !tbaa !60
  %i.ef = fsub <2 x float> %i.ee, %i.eb           ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bg, i64 56 ; 5 uses
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !60
  %i.ei = fsub float %i.eh, %i.ed                 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %i.cw, %i.ef
  %i.ej = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ek = extractelement <2 x float> %i.ef, i64 0
  %i.el = tail call float @llvm.fmuladd.f32(float %i.ek, float %i.cx, float %i.ej)
  %i.em = tail call noundef float @llvm.fmuladd.f32(float %i.ei, float %i.cj, float %i.el) ; 6 uses
  %i.en = fmul float %.sroa.speculated248, 1.000000e-01
  %i.eo = fdiv float %i.en, %1                    ; 2 uses
  %i.ep = fcmp ogt float %i.em, %i.eo
  br i1 %i.ep, label %bb.q, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.eq = insertelement <2 x float> poison, float %i.em, i64 0
  %i.er = shufflevector <2 x float> %i.eq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.es = fmul <2 x float> %i.cw, %i.er
  %i.et = fmul float %i.cj, %i.em
  %i.eu = fsub <2 x float> %i.ef, %i.es           ; 4 uses
  %i.ev = fsub float %i.ei, %i.et                 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.bg, i64 112 ; 6 uses
  %i.ex = load float, ptr %i.ew, align 8, !tbaa !501 ; 4 uses
  %i.ey = fcmp oeq float %i.ex, 0.000000e+00
  %i.ez = fdiv float 1.000000e+00, %i.ex
  %i.fa = select i1 %i.ey, float 0.000000e+00, float %i.ez ; 3 uses
  br i1 %2, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.fb = load float, ptr %i.ae, align 8, !tbaa !502
  %i.fc = fmul float %1, %i.fb
  %i.fd = fmul float %.sroa.speculated248, %i.fc  ; 2 uses
  %i.fe = fsub float %i.eo, %i.em
  %i.ff = fmul float %i.fe, %i.fa                 ; 2 uses
  %i.fg = fcmp olt float %i.fd, %i.ff
  %.sroa.speculated207 = select i1 %i.fg, float %i.fd, float %i.ff
  %i.fh = fneg float %.sroa.speculated207
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.099 = phi float [ %i.fh, %bb.i ], [ 0.000000e+00, %bb.h ] ; 2 uses
  %i.fi = fcmp olt float %i.em, 0.000000e+00
  br i1 %i.fi, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.fj = fpext float %i.fa to double
  %i.fk = fmul double %i.fj, 5.000000e-01
  %i.fl = fpext float %i.em to double
  %i.fm = fpext float %.099 to double
  %i.fn = tail call double @llvm.fmuladd.f64(double %i.fk, double %i.fl, double %i.fm)
  %i.fo = fptrunc double %i.fn to float
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.1 = phi float [ %i.fo, %bb.k ], [ %.099, %bb.j ] ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.bg, i64 128
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !503 ; 2 uses
  %i.fr = load ptr, ptr %i.bl, align 8, !tbaa !327 ; 6 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 128
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !503
  %i.fu = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !327 ; 7 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 128
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !503
  %i.fy = or i32 %i.fx, %i.ft
  %i.fz = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !327 ; 7 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 128
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !503
  %i.gd = or i32 %i.gc, %i.fy                     ; 2 uses
  %19 = fmul float %i.cu, %i.cu
  %i.ge = extractelement <3 x float> %4, i64 0    ; 2 uses
  %i.gf = tail call float @llvm.fmuladd.f32(float %i.ge, float %i.ge, float %19)
  %i.gg = tail call noundef float @llvm.fmuladd.f32(float %5, float %5, float %i.gf)
  %i.gh = fpext float %.1 to double
  %i.gi = fmul double %i.gh, 2.000000e+00
  %i.gj = fpext float %i.gg to double
  %i.gk = fadd double %i.gj, 1.000000e+00
  %i.gl = fdiv double %i.gi, %i.gk
  %i.gm = fptrunc double %i.gl to float           ; 2 uses
  %i.gn = icmp sgt i32 %i.gd, 0
  %i.go = icmp sgt i32 %i.fq, 0
  %or.cond = select i1 %i.gn, i1 true, i1 %i.go   ; 2 uses
  %i.gp = fmul float %i.gm, 2.000000e+00
  %storemerge = select i1 %or.cond, float %i.gp, float %i.gm ; 9 uses
  %i.gq = icmp slt i32 %i.gd, 1                   ; 2 uses
  br i1 %i.gq, label %.preheader260.preheader, label %.loopexit261

.preheader260.preheader:                          ; preds = %bb.l
  %i.gr = load float, ptr %i.bj, align 8, !tbaa !60 ; 2 uses
  %i.gs = fmul float %i.gr, %i.cj
  %i.gt = fmul float %storemerge, %i.gs
  %i.gu = fmul float %i.ex, %i.gt
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fr, i64 48 ; 2 uses
  %i.gw = insertelement <2 x float> poison, float %i.gr, i64 0
  %i.gx = shufflevector <2 x float> %i.gw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gy = fmul <2 x float> %i.cw, %i.gx
  %i.gz = insertelement <2 x float> poison, float %storemerge, i64 0
  %i.ha = shufflevector <2 x float> %i.gz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hb = fmul <2 x float> %i.ha, %i.gy
  %i.hc = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.hd = shufflevector <2 x float> %i.hc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.he = fmul <2 x float> %i.hb, %i.hd
  %i.hf = load <2 x float>, ptr %i.gv, align 8, !tbaa !60
  %i.hg = fadd <2 x float> %i.he, %i.hf
  store <2 x float> %i.hg, ptr %i.gv, align 8, !tbaa !60
  %i.hh = getelementptr inbounds nuw i8, ptr %i.fr, i64 56 ; 2 uses
  %i.hi = load float, ptr %i.hh, align 8, !tbaa !60
  %i.hj = fadd float %i.gu, %i.hi
  store float %i.hj, ptr %i.hh, align 8, !tbaa !60
  %i.hk = getelementptr inbounds nuw i8, ptr %i.bf, i64 20
  %i.hl = load float, ptr %i.bk, align 8, !tbaa !60
  %i.hm = load float, ptr %i.hk, align 4, !tbaa !60 ; 3 uses
  %i.hn = fmul float %i.hl, %i.hm
  %i.ho = load float, ptr %i.ch, align 4, !tbaa !60
  %i.hp = fmul float %i.hm, %i.ho
  %i.hq = load float, ptr %i.ci, align 8, !tbaa !60
  %i.hr = fmul float %i.hm, %i.hq
  %i.hs = fmul float %storemerge, %i.hn
  %i.ht = fmul float %storemerge, %i.hp
  %i.hu = fmul float %storemerge, %i.hr
  %i.hv = load float, ptr %i.ew, align 8, !tbaa !60 ; 3 uses
  %i.hw = fmul float %i.hs, %i.hv
  %i.hx = fmul float %i.hv, %i.ht
  %i.hy = fmul float %i.hv, %i.hu
  %i.hz = getelementptr inbounds nuw i8, ptr %i.fv, i64 48 ; 2 uses
  %i.ia = load float, ptr %i.hz, align 8, !tbaa !60
  %i.ib = fadd float %i.hw, %i.ia
  store float %i.ib, ptr %i.hz, align 8, !tbaa !60
  %i.ic = getelementptr inbounds nuw i8, ptr %i.fv, i64 52 ; 2 uses
  %i.id = load float, ptr %i.ic, align 4, !tbaa !60
  %i.ie = fadd float %i.hx, %i.id
  store float %i.ie, ptr %i.ic, align 4, !tbaa !60
  %i.if = getelementptr inbounds nuw i8, ptr %i.fv, i64 56 ; 2 uses
  %i.ig = load float, ptr %i.if, align 8, !tbaa !60
  %i.ih = fadd float %i.hy, %i.ig
  store float %i.ih, ptr %i.if, align 8, !tbaa !60
  %i.ii = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.ij = load float, ptr %i.bk, align 8, !tbaa !60
  %i.ik = load float, ptr %i.ii, align 8, !tbaa !60 ; 3 uses
  %i.il = fmul float %i.ij, %i.ik
  %i.im = load float, ptr %i.ch, align 4, !tbaa !60
  %i.in = fmul float %i.ik, %i.im
  %i.io = load float, ptr %i.ci, align 8, !tbaa !60
  %i.ip = fmul float %i.ik, %i.io
  %i.iq = fmul float %storemerge, %i.il
  %i.ir = fmul float %storemerge, %i.in
  %i.is = fmul float %storemerge, %i.ip
  %i.it = load float, ptr %i.ew, align 8, !tbaa !60 ; 3 uses
  %i.iu = fmul float %i.iq, %i.it
  %i.iv = fmul float %i.it, %i.ir
  %i.iw = fmul float %i.it, %i.is
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ga, i64 48 ; 2 uses
  %i.iy = load float, ptr %i.ix, align 8, !tbaa !60
  %i.iz = fadd float %i.iu, %i.iy
  store float %i.iz, ptr %i.ix, align 8, !tbaa !60
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ga, i64 52 ; 2 uses
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !60
  %i.jc = fadd float %i.iv, %i.jb
  store float %i.jc, ptr %i.ja, align 4, !tbaa !60
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ga, i64 56 ; 2 uses
  %i.je = load float, ptr %i.jd, align 8, !tbaa !60
  %i.jf = fadd float %i.iw, %i.je
  store float %i.jf, ptr %i.jd, align 8, !tbaa !60
  br label %.loopexit261

.loopexit261:                                     ; preds = %.preheader260.preheader, %bb.l
  %i.jg = icmp slt i32 %i.fq, 1                   ; 2 uses
  br i1 %i.jg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.loopexit261
  %i.jh = load float, ptr %i.ew, align 8, !tbaa !501
  %i.ji = fmul float %storemerge, %i.jh           ; 2 uses
  %i.jj = load float, ptr %i.ci, align 8, !tbaa !60
  %i.jk = fmul float %i.ji, %i.jj
  %i.jl = load <2 x float>, ptr %i.bk, align 8, !tbaa !60
  %i.jm = insertelement <2 x float> poison, float %i.ji, i64 0
  %i.jn = shufflevector <2 x float> %i.jm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jo = fmul <2 x float> %i.jl, %i.jn
  %i.jp = load <2 x float>, ptr %i.ck, align 8, !tbaa !60
  %i.jq = fsub <2 x float> %i.jp, %i.jo
  store <2 x float> %i.jq, ptr %i.ck, align 8, !tbaa !60
  %i.jr = load float, ptr %i.eg, align 8, !tbaa !60
  %i.js = fsub float %i.jr, %i.jk
  store float %i.js, ptr %i.eg, align 8, !tbaa !60
  br label %bb.n

bb.n:                                             ; preds = %.loopexit261, %bb.m
  %foldExtExtBinop309.a = fmul <2 x float> %i.eu, %i.eu
  %i.jt = extractelement <2 x float> %foldExtExtBinop309.a, i64 1
  %i.ju = extractelement <2 x float> %i.eu, i64 0 ; 2 uses
  %i.jv = tail call float @llvm.fmuladd.f32(float %i.ju, float %i.ju, float %i.jt)
  %i.jw = tail call noundef float @llvm.fmuladd.f32(float %i.ev, float %i.ev, float %i.jv) ; 3 uses
  %i.jx = fcmp ogt float %i.jw, f0x34000000
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.jw) ; 2 uses
  %.0.i = select i1 %i.jx, float %sqrt.i, float 0.000000e+00 ; 4 uses
  %i.jy = fcmp ogt float %.0.i, f0x34000000
  br i1 %i.jy, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.jz = fmul float %.1, 2.000000e+00
  %i.ka = load float, ptr %i.ew, align 8, !tbaa !501
  %i.kb = fmul float %i.jz, %i.ka
  %i.kc = getelementptr inbounds nuw i8, ptr %i.bf, i64 68
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !504
  %i.ke = fmul float %i.kd, %i.kb
  %i.kf = fadd float %.0.i, f0x34000000
  %i.kg = fdiv float %i.ke, %i.kf
  %i.kh = fadd float %i.kg, 1.000000e+00          ; 2 uses
  %i.ki = fcmp ogt float %i.kh, 0.000000e+00
  %.sroa.speculated = select i1 %i.ki, float %i.kh, float 0.000000e+00
  %i.kj = fcmp ult float %i.jw, f0x28800000       ; 2 uses
  %i.kk = fdiv float 1.000000e+00, %sqrt.i        ; 2 uses
  %i.kl = insertelement <2 x float> poison, float %i.kk, i64 0
  %i.km = shufflevector <2 x float> %i.kl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kn = fmul <2 x float> %i.eu, %i.km
  %i.ko = fmul float %i.ev, %i.kk
  %i.kp = insertelement <2 x i1> poison, i1 %i.kj, i64 0
  %i.kq = shufflevector <2 x i1> %i.kp, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.kr = select <2 x i1> %i.kq, <2 x float> <float 1.000000e+00, float 0.000000e+00>, <2 x float> %i.kn ; 4 uses
  %.sink.i = select i1 %i.kj, float 0.000000e+00, float %i.ko ; 4 uses
  %i.ks = load float, ptr %i.bj, align 8, !tbaa !60 ; 4 uses
  %i.kt = load float, ptr %i.bw, align 4, !tbaa !60 ; 2 uses
  %i.ku = fmul float %i.kt, %i.kt
  %i.kv = tail call float @llvm.fmuladd.f32(float %i.ks, float %i.ks, float %i.ku)
  %i.kw = load float, ptr %i.bz, align 8, !tbaa !60 ; 2 uses
  %i.kx = tail call noundef float @llvm.fmuladd.f32(float %i.kw, float %i.kw, float %i.kv)
  %i.ky = fpext float %i.fa to double
  %i.kz = fmul double %i.ky, 5.000000e-01
  %i.la = fmul float %.0.i, %.sroa.speculated
  %i.lb = fsub float %.0.i, %i.la
  %i.lc = fpext float %i.lb to double
  %i.ld = fmul double %i.kz, %i.lc
  %i.le = fptrunc double %i.ld to float
  %i.lf = fpext float %i.le to double
  %i.lg = fmul double %i.lf, 2.000000e+00
  %i.lh = fpext float %i.kx to double
  %i.li = fadd double %i.lh, 1.000000e+00
  %i.lj = fdiv double %i.lg, %i.li
  %i.lk = fptrunc double %i.lj to float           ; 2 uses
  %i.ll = fmul float %i.lk, 2.000000e+00
  %storemerge117 = select i1 %or.cond, float %i.ll, float %i.lk ; 5 uses
  br i1 %i.gq, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.o
  %i.lm = fmul float %.sink.i, %i.ks
  %i.ln = fmul float %storemerge117, %i.lm
  %i.lo = getelementptr inbounds nuw i8, ptr %i.fr, i64 112
  %i.lp = load float, ptr %i.lo, align 8, !tbaa !60 ; 2 uses
  %i.lq = fmul float %i.lp, %i.ln
  %i.lr = getelementptr inbounds nuw i8, ptr %i.fr, i64 48 ; 2 uses
  %i.ls = insertelement <2 x float> poison, float %i.ks, i64 0
  %i.lt = shufflevector <2 x float> %i.ls, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lu = fmul <2 x float> %i.kr, %i.lt
  %i.lv = insertelement <2 x float> poison, float %storemerge117, i64 0
  %i.lw = shufflevector <2 x float> %i.lv, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.lx = fmul <2 x float> %i.lw, %i.lu
  %i.ly = insertelement <2 x float> poison, float %i.lp, i64 0
  %i.lz = shufflevector <2 x float> %i.ly, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ma = fmul <2 x float> %i.lx, %i.lz
  %i.mb = load <2 x float>, ptr %i.lr, align 8, !tbaa !60
  %i.mc = fadd <2 x float> %i.ma, %i.mb
  store <2 x float> %i.mc, ptr %i.lr, align 8, !tbaa !60
  %i.md = getelementptr inbounds nuw i8, ptr %i.fr, i64 56 ; 2 uses
  %i.me = load float, ptr %i.md, align 8, !tbaa !60
  %i.mf = fadd float %i.lq, %i.me
  store float %i.mf, ptr %i.md, align 8, !tbaa !60
  %i.mg = getelementptr inbounds nuw i8, ptr %i.bf, i64 20
  %i.mh = load float, ptr %i.mg, align 4, !tbaa !60 ; 2 uses
  %i.mi = fmul float %.sink.i, %i.mh
  %i.mj = fmul float %storemerge117, %i.mi
  %i.mk = getelementptr inbounds nuw i8, ptr %i.fv, i64 112
  %i.ml = load float, ptr %i.mk, align 8, !tbaa !60 ; 2 uses
  %i.mm = fmul float %i.ml, %i.mj
end_hunk_0
