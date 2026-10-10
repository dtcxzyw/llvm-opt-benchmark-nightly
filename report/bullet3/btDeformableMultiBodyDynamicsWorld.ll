Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btDeformableMultiBodyDynamicsWorld?download=true
inline.NumInlined: 1094
inline.NumDeleted: 383
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 54
loop-unroll.NumUnrolled: 62
begin_hunk_0_@_ZN34btDeformableMultiBodyDynamicsWorld21updateActivationStateEf:bb.a
  br i1 %i.m, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN10btSoftBody15setZeroVelocityEv(ptr noundef nonnull align 8 dereferenceable(2064) %i.g)
  br label %bb.i

bb.g:                                             ; preds = %bb.b
  %.not = icmp eq i32 %i.j, 4
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNK17btCollisionObject18setActivationStateEi(ptr noundef nonnull align 8 dereferenceable(372) %i.g, i32 noundef 1)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.e, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.n = load i32, ptr %i.a, align 4, !tbaa !126
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
  %.epil.init = phi i64 [ %_ZL4seed.promoted, %.lr.ph267 ], [ %i.au, %.preheader262.unr-lcssa ]
  %lcmp.mod316 = trunc i32 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod316)
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv277.epil.init ; 2 uses
  %i.u = mul nuw nsw i64 %.epil.init, 1664525
  %i.v = add nuw nsw i64 %i.u, 1013904223         ; 2 uses
  %i.w = and i64 %i.v, 4294967295
  %.lhs.trunc.epil = trunc i64 %i.v to i32
  %i.x = urem i32 %.lhs.trunc.epil, %i.f
  %.zext.epil = zext nneg i32 %i.x to i64
  %i.y = shl nuw nsw i64 %.zext.epil, 2
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.y ; 2 uses
  %i.aa = load i32, ptr %i.t, align 4, !tbaa !52
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !52
  store i32 %i.ab, ptr %i.t, align 4, !tbaa !52
  store i32 %i.aa, ptr %i.z, align 4, !tbaa !52
  br label %.preheader262

.preheader262:                                    ; preds = %.preheader262.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.au, %.preheader262.unr-lcssa ], [ %i.w, %.epil.preheader ]
  store i64 %.lcssa, ptr @_ZL4seed, align 8, !tbaa !492
  %.pre297 = load i32, ptr %i.e, align 4, !tbaa !329 ; 2 uses
  %i.ac = icmp sgt i32 %.pre297, 0
  br i1 %i.ac, label %.lr.ph273, label %._crit_edge274

.lr.ph273:                                        ; preds = %.preheader262
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1328
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !328
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1824
  %wide.trip.count295 = zext nneg i32 %.pre297 to i64
  br label %bb.g

bb.d:                                             ; preds = %bb.d, %.lr.ph267.new
  %indvars.iv277 = phi i64 [ 0, %.lr.ph267.new ], [ %indvars.iv.next278.1, %bb.d ] ; 3 uses
  %i.ag = phi i64 [ %_ZL4seed.promoted, %.lr.ph267.new ], [ %i.au, %bb.d ]
  %niter = phi i64 [ 0, %.lr.ph267.new ], [ %niter.next.1, %bb.d ]
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv277 ; 2 uses
  %i.ai = mul nuw nsw i64 %i.ag, 1664525
  %i.aj = add nuw nsw i64 %i.ai, 1013904223       ; 2 uses
  %i.ak = and i64 %i.aj, 4294967295
  %.lhs.trunc = trunc i64 %i.aj to i32
  %i.al = urem i32 %.lhs.trunc, %i.f
  %.zext = zext nneg i32 %i.al to i64
  %i.am = shl nuw nsw i64 %.zext, 2
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.am ; 2 uses
  %i.ao = load i32, ptr %i.ah, align 4, !tbaa !52
  %i.ap = load i32, ptr %i.an, align 4, !tbaa !52
  store i32 %i.ap, ptr %i.ah, align 4, !tbaa !52
  store i32 %i.ao, ptr %i.an, align 4, !tbaa !52
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv277
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4 ; 2 uses
  %i.as = mul nuw nsw i64 %i.ak, 1664525
  %i.at = add nuw nsw i64 %i.as, 1013904223       ; 2 uses
  %i.au = and i64 %i.at, 4294967295               ; 3 uses
  %.lhs.trunc.1 = trunc i64 %i.at to i32
  %i.av = urem i32 %.lhs.trunc.1, %i.f
  %.zext.1 = zext nneg i32 %i.av to i64
  %i.aw = shl nuw nsw i64 %.zext.1, 2
  %i.ax = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.aw ; 2 uses
  %i.ay = load i32, ptr %i.ar, align 4, !tbaa !52
  %i.az = load i32, ptr %i.ax, align 4, !tbaa !52
  store i32 %i.az, ptr %i.ar, align 4, !tbaa !52
  store i32 %i.ay, ptr %i.ax, align 4, !tbaa !52
  %indvars.iv.next278.1 = add nuw nsw i64 %indvars.iv277, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader262.unr-lcssa, label %bb.d, !llvm.loop !490

._crit_edge274.loopexit:                          ; preds = %bb.q
  %.pre298 = load ptr, ptr %i.b, align 8, !tbaa !43
  %.pre299 = load i8, ptr %i.a, align 8, !range !50
  %i.ba = trunc nuw i8 %.pre299 to i1
  br label %._crit_edge274

._crit_edge274:                                   ; preds = %._crit_edge274.loopexit, %.preheader262
  %i.bb = phi i1 [ %i.ba, %._crit_edge274.loopexit ], [ true, %.preheader262 ]
  %i.bc = phi ptr [ %.pre298, %._crit_edge274.loopexit ], [ %i.j, %.preheader262 ] ; 2 uses
  %.not.i.i.i128 = icmp ne ptr %i.bc, null
  %or.cond.i.i = select i1 %.not.i.i.i128, i1 %i.bb, i1 false
  br i1 %or.cond.i.i, label %bb.e, label %_ZN20btAlignedObjectArrayIiED2Ev.exit

bb.e:                                             ; preds = %._crit_edge274
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bc)
          to label %_ZN20btAlignedObjectArrayIiED2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  tail call void @__clang_call_terminate(ptr %i.be) #20
  unreachable

_ZN20btAlignedObjectArrayIiED2Ev.exit:            ; preds = %bb.a, %._crit_edge274, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void

bb.g:                                             ; preds = %.lr.ph273, %bb.q
  %indvars.iv292 = phi i64 [ 0, %.lr.ph273 ], [ %indvars.iv.next293, %bb.q ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv292
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !52
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds [88 x i8], ptr %i.ae, i64 %i.bh ; 13 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !494 ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !495 ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 48 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !327 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !327 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !327 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.by = load float, ptr %i.bx, align 4, !tbaa !60
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bi, i64 20
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !60
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bi, i64 24 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !60
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !60
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bj, i64 20
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bi, i64 64
  %i.cj = load float, ptr %i.ci, align 8, !tbaa !496
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bi, i64 56 ; 4 uses
  %i.cl = load float, ptr %i.ck, align 8, !tbaa !60 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bj, i64 48 ; 5 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  %i.co = getelementptr inbounds nuw i8, ptr %i.bs, i64 48
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bv, i64 48
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bp, i64 56
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !60
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bs, i64 56
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !60
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bv, i64 56
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !60
  %i.cw = load float, ptr %i.cc, align 8, !tbaa !60 ; 4 uses
  %i.cx = load <2 x float>, ptr %i.bn, align 8, !tbaa !60 ; 5 uses
  %i.cy = extractelement <2 x float> %i.cx, i64 0 ; 2 uses
  %i.cz = load <2 x float>, ptr %i.cn, align 4, !tbaa !60
  %i.da = load <2 x float>, ptr %i.co, align 4, !tbaa !60
  %i.db = load <2 x float>, ptr %i.bq, align 4, !tbaa !60
  %i.dc = load <2 x float>, ptr %i.bt, align 4, !tbaa !60
  %i.dd = load <2 x float>, ptr %i.bm, align 8, !tbaa !60 ; 5 uses
  %i.de = shufflevector <2 x float> %i.dd, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 0> ; 3 uses
  %i.df = insertelement <4 x float> poison, float %i.cb, i64 2
  %i.dg = insertelement <4 x float> %i.df, float %i.cr, i64 3
  %i.dh = shufflevector <2 x float> %i.dc, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.di = shufflevector <4 x float> %i.dh, <4 x float> %i.dg, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dj = fmul <4 x float> %i.de, %i.di
  %i.dk = shufflevector <2 x float> %i.dd, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dl = insertelement <4 x float> poison, float %i.by, i64 2
  %i.dm = insertelement <4 x float> %i.dl, float %i.ct, i64 3
  %i.dn = shufflevector <2 x float> %i.db, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.do = shufflevector <4 x float> %i.dn, <4 x float> %i.dm, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dp = fmul <4 x float> %i.dk, %i.do
  %i.dq = fadd <4 x float> %i.dj, %i.dp
  %i.dr = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ds = fmul <2 x float> %i.dr, %i.cz
  %i.dt = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.du = fmul <2 x float> %i.dt, %i.da
  %i.dv = fadd <2 x float> %i.ds, %i.du
  %i.dw = load <2 x float>, ptr %i.cp, align 4, !tbaa !60
  %i.dx = insertelement <2 x float> poison, float %i.cw, i64 0
  %i.dy = shufflevector <2 x float> %i.dx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dz = fmul <2 x float> %i.dy, %i.dw
  %i.ea = fadd <2 x float> %i.dv, %i.dz
  %i.eb = load <2 x float>, ptr %i.bw, align 4, !tbaa !60
  %i.ec = insertelement <4 x float> poison, float %i.cw, i64 0
  %i.ed = shufflevector <4 x float> %i.ec, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ee = shufflevector <2 x float> %i.eb, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.ef = insertelement <4 x float> %i.ee, float %i.ce, i64 2
  %i.eg = insertelement <4 x float> %i.ef, float %i.cv, i64 3
  %i.eh = fmul <4 x float> %i.ed, %i.eg
  %i.ei = fadd <4 x float> %i.dq, %i.eh           ; 3 uses
  %i.ej = extractelement <4 x float> %i.ei, i64 1
  %i.ek = fsub float %i.cg, %i.ej
  %i.el = load <2 x float>, ptr %i.ch, align 4, !tbaa !60
  %i.em = shufflevector <4 x float> %i.ei, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.en = fsub <2 x float> %i.el, %i.em           ; 2 uses
  %shift = shufflevector <2 x float> %i.cx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop313 = fmul <2 x float> %i.en, %shift
  %i.eo = extractelement <2 x float> %foldExtExtBinop313, i64 0
  %i.ep = tail call float @llvm.fmuladd.f32(float %i.cy, float %i.ek, float %i.eo)
  %i.eq = extractelement <2 x float> %i.en, i64 1
  %i.er = tail call noundef float @llvm.fmuladd.f32(float %i.cl, float %i.eq, float %i.ep)
  %i.es = fsub float %i.cj, %i.er                 ; 2 uses
  %i.et = fcmp olt float %i.es, 0.000000e+00
  %.sroa.speculated248 = select i1 %i.et, float 0.000000e+00, float %i.es ; 2 uses
  %i.eu = load <2 x float>, ptr %i.cm, align 4, !tbaa !60
  %i.ev = fsub <2 x float> %i.eu, %i.ea           ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.bj, i64 56 ; 5 uses
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !60
  %i.ey = extractelement <4 x float> %i.ei, i64 3
  %i.ez = fsub float %i.ex, %i.ey                 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %i.cx, %i.ev
  %i.fa = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.fb = extractelement <2 x float> %i.ev, i64 0
  %i.fc = tail call float @llvm.fmuladd.f32(float %i.fb, float %i.cy, float %i.fa)
  %i.fd = tail call noundef float @llvm.fmuladd.f32(float %i.ez, float %i.cl, float %i.fc) ; 6 uses
  %i.fe = fmul float %.sroa.speculated248, 1.000000e-01
  %i.ff = fdiv float %i.fe, %1                    ; 2 uses
  %i.fg = fcmp ogt float %i.fd, %i.ff
  br i1 %i.fg, label %bb.q, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.fh = insertelement <2 x float> poison, float %i.fd, i64 0
  %i.fi = shufflevector <2 x float> %i.fh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fj = fmul <2 x float> %i.cx, %i.fi
  %i.fk = fmul float %i.cl, %i.fd
  %i.fl = fsub <2 x float> %i.ev, %i.fj           ; 4 uses
  %i.fm = fsub float %i.ez, %i.fk                 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.bj, i64 112 ; 6 uses
  %i.fo = load float, ptr %i.fn, align 8, !tbaa !501 ; 4 uses
  %i.fp = fcmp oeq float %i.fo, 0.000000e+00
  %i.fq = fdiv float 1.000000e+00, %i.fo
  %i.fr = select i1 %i.fp, float 0.000000e+00, float %i.fq ; 3 uses
  br i1 %2, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.fs = load float, ptr %i.af, align 8, !tbaa !502
  %i.ft = fmul float %1, %i.fs
  %i.fu = fmul float %.sroa.speculated248, %i.ft  ; 2 uses
  %i.fv = fsub float %i.ff, %i.fd
  %i.fw = fmul float %i.fv, %i.fr                 ; 2 uses
  %i.fx = fcmp olt float %i.fu, %i.fw
  %.sroa.speculated207 = select i1 %i.fx, float %i.fu, float %i.fw
  %i.fy = fneg float %.sroa.speculated207
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.099 = phi float [ %i.fy, %bb.i ], [ 0.000000e+00, %bb.h ] ; 2 uses
  %i.fz = fcmp olt float %i.fd, 0.000000e+00
  br i1 %i.fz, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ga = fpext float %i.fr to double
  %i.gb = fmul double %i.ga, 5.000000e-01
  %i.gc = fpext float %i.fd to double
  %i.gd = fpext float %.099 to double
  %i.ge = tail call double @llvm.fmuladd.f64(double %i.gb, double %i.gc, double %i.gd)
  %i.gf = fptrunc double %i.ge to float
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.1 = phi float [ %i.gf, %bb.k ], [ %.099, %bb.j ] ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.bj, i64 128
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !503 ; 2 uses
  %i.gi = load ptr, ptr %i.bo, align 8, !tbaa !327 ; 6 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 128
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !503
  %i.gl = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !327 ; 6 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 128
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !503
  %i.gp = or i32 %i.go, %i.gk
  %i.gq = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !327 ; 6 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 128
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !503
  %i.gu = or i32 %i.gt, %i.gp                     ; 2 uses
  %foldExtExtBinop309 = fmul <4 x float> %i.de, %i.de
  %i.gv = extractelement <4 x float> %foldExtExtBinop309, i64 0
  %i.gw = extractelement <2 x float> %i.dd, i64 0 ; 2 uses
  %i.gx = tail call float @llvm.fmuladd.f32(float %i.gw, float %i.gw, float %i.gv)
  %i.gy = tail call noundef float @llvm.fmuladd.f32(float %i.cw, float %i.cw, float %i.gx)
  %i.gz = fpext float %.1 to double
  %i.ha = fmul double %i.gz, 2.000000e+00
  %i.hb = fpext float %i.gy to double
  %i.hc = fadd double %i.hb, 1.000000e+00
  %i.hd = fdiv double %i.ha, %i.hc
  %i.he = fptrunc double %i.hd to float           ; 2 uses
  %i.hf = icmp sgt i32 %i.gu, 0
  %i.hg = icmp sgt i32 %i.gh, 0
  %or.cond = select i1 %i.hf, i1 true, i1 %i.hg   ; 2 uses
  %i.hh = fmul float %i.he, 2.000000e+00
  %storemerge = select i1 %or.cond, float %i.hh, float %i.he ; 5 uses
  %i.hi = icmp slt i32 %i.gu, 1                   ; 2 uses
  br i1 %i.hi, label %.preheader260.preheader, label %.loopexit261

.preheader260.preheader:                          ; preds = %bb.l
  %i.hj = load float, ptr %i.bm, align 8, !tbaa !60 ; 2 uses
  %i.hk = fmul float %i.hj, %i.cl
  %i.hl = fmul float %storemerge, %i.hk
  %i.hm = fmul float %i.fo, %i.hl
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gi, i64 48 ; 2 uses
  %i.ho = insertelement <2 x float> poison, float %i.hj, i64 0
  %i.hp = shufflevector <2 x float> %i.ho, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hq = fmul <2 x float> %i.cx, %i.hp
  %i.hr = insertelement <2 x float> poison, float %storemerge, i64 0
  %i.hs = shufflevector <2 x float> %i.hr, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ht = fmul <2 x float> %i.hs, %i.hq
  %i.hu = insertelement <2 x float> poison, float %i.fo, i64 0
  %i.hv = shufflevector <2 x float> %i.hu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hw = fmul <2 x float> %i.ht, %i.hv
  %i.hx = load <2 x float>, ptr %i.hn, align 8, !tbaa !60
  %i.hy = fadd <2 x float> %i.hw, %i.hx
  store <2 x float> %i.hy, ptr %i.hn, align 8, !tbaa !60
  %i.hz = getelementptr inbounds nuw i8, ptr %i.gi, i64 56 ; 2 uses
  %i.ia = load float, ptr %i.hz, align 8, !tbaa !60
  %i.ib = fadd float %i.hm, %i.ia
  store float %i.ib, ptr %i.hz, align 8, !tbaa !60
  %i.ic = getelementptr inbounds nuw i8, ptr %i.bi, i64 20
  %i.id = load float, ptr %i.ic, align 4, !tbaa !60 ; 3 uses
  %i.ie = load float, ptr %i.ck, align 8, !tbaa !60
  %i.if = fmul float %i.id, %i.ie
  %i.ig = fmul float %storemerge, %i.if
  %4 = load float, ptr %i.fn, align 8, !tbaa !60  ; 2 uses
  %i.ih = fmul float %4, %i.ig
  %5 = getelementptr inbounds nuw i8, ptr %i.gm, i64 48 ; 2 uses
  %6 = load <2 x float>, ptr %i.bn, align 8, !tbaa !60 ; 2 uses
  %7 = insertelement <2 x float> %6, float %i.id, i64 1
  %8 = insertelement <2 x float> %6, float %i.id, i64 0
  %9 = fmul <2 x float> %7, %8
  %10 = fmul <2 x float> %i.hs, %9
  %11 = insertelement <2 x float> poison, float %4, i64 0
  %12 = shufflevector <2 x float> %11, <2 x float> poison, <2 x i32> zeroinitializer
  %13 = fmul <2 x float> %10, %12
  %14 = load <2 x float>, ptr %5, align 8, !tbaa !60
  %15 = fadd <2 x float> %13, %14
  store <2 x float> %15, ptr %5, align 8, !tbaa !60
  %i.ii = getelementptr inbounds nuw i8, ptr %i.gm, i64 56 ; 2 uses
  %i.ij = load float, ptr %i.ii, align 8, !tbaa !60
  %i.ik = fadd float %i.ih, %i.ij
  store float %i.ik, ptr %i.ii, align 8, !tbaa !60
  %i.il = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.im = load float, ptr %i.il, align 8, !tbaa !60 ; 3 uses
  %i.in = load float, ptr %i.ck, align 8, !tbaa !60
  %i.io = fmul float %i.im, %i.in
  %i.ip = fmul float %storemerge, %i.io
  %16 = load float, ptr %i.fn, align 8, !tbaa !60 ; 2 uses
  %i.iq = fmul float %16, %i.ip
  %17 = getelementptr inbounds nuw i8, ptr %i.gr, i64 48 ; 2 uses
  %18 = load <2 x float>, ptr %i.bn, align 8, !tbaa !60 ; 2 uses
  %19 = insertelement <2 x float> %18, float %i.im, i64 1
  %20 = insertelement <2 x float> %18, float %i.im, i64 0
  %21 = fmul <2 x float> %19, %20
  %22 = fmul <2 x float> %i.hs, %21
  %23 = insertelement <2 x float> poison, float %16, i64 0
  %24 = shufflevector <2 x float> %23, <2 x float> poison, <2 x i32> zeroinitializer
  %25 = fmul <2 x float> %22, %24
  %26 = load <2 x float>, ptr %17, align 8, !tbaa !60
  %27 = fadd <2 x float> %25, %26
  store <2 x float> %27, ptr %17, align 8, !tbaa !60
  %i.ir = getelementptr inbounds nuw i8, ptr %i.gr, i64 56 ; 2 uses
  %i.is = load float, ptr %i.ir, align 8, !tbaa !60
  %i.it = fadd float %i.iq, %i.is
  store float %i.it, ptr %i.ir, align 8, !tbaa !60
  br label %.loopexit261

.loopexit261:                                     ; preds = %.preheader260.preheader, %bb.l
  %i.iu = icmp slt i32 %i.gh, 1                   ; 2 uses
  br i1 %i.iu, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.loopexit261
  %i.iv = load float, ptr %i.fn, align 8, !tbaa !501
  %i.iw = fmul float %storemerge, %i.iv           ; 2 uses
  %i.ix = load float, ptr %i.ck, align 8, !tbaa !60
  %i.iy = fmul float %i.iw, %i.ix
  %i.iz = load <2 x float>, ptr %i.bn, align 8, !tbaa !60
  %i.ja = insertelement <2 x float> poison, float %i.iw, i64 0
  %i.jb = shufflevector <2 x float> %i.ja, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jc = fmul <2 x float> %i.iz, %i.jb
  %i.jd = load <2 x float>, ptr %i.cm, align 8, !tbaa !60
  %i.je = fsub <2 x float> %i.jd, %i.jc
  store <2 x float> %i.je, ptr %i.cm, align 8, !tbaa !60
  %i.jf = load float, ptr %i.ew, align 8, !tbaa !60
  %i.jg = fsub float %i.jf, %i.iy
  store float %i.jg, ptr %i.ew, align 8, !tbaa !60
  br label %bb.n

bb.n:                                             ; preds = %.loopexit261, %bb.m
  %foldExtExtBinop311 = fmul <2 x float> %i.fl, %i.fl
  %i.jh = extractelement <2 x float> %foldExtExtBinop311, i64 1
  %i.ji = extractelement <2 x float> %i.fl, i64 0 ; 2 uses
  %i.jj = tail call float @llvm.fmuladd.f32(float %i.ji, float %i.ji, float %i.jh)
  %i.jk = tail call noundef float @llvm.fmuladd.f32(float %i.fm, float %i.fm, float %i.jj) ; 3 uses
  %i.jl = fcmp ogt float %i.jk, f0x34000000
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.jk) ; 2 uses
  %.0.i = select i1 %i.jl, float %sqrt.i, float 0.000000e+00 ; 4 uses
  %i.jm = fcmp ogt float %.0.i, f0x34000000
  br i1 %i.jm, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.jn = fmul float %.1, 2.000000e+00
  %i.jo = load float, ptr %i.fn, align 8, !tbaa !501
  %i.jp = fmul float %i.jn, %i.jo
  %i.jq = getelementptr inbounds nuw i8, ptr %i.bi, i64 68
  %i.jr = load float, ptr %i.jq, align 4, !tbaa !504
  %i.js = fmul float %i.jr, %i.jp
  %i.jt = fadd float %.0.i, f0x34000000
  %i.ju = fdiv float %i.js, %i.jt
  %i.jv = fadd float %i.ju, 1.000000e+00          ; 2 uses
  %i.jw = fcmp ogt float %i.jv, 0.000000e+00
  %.sroa.speculated = select i1 %i.jw, float %i.jv, float 0.000000e+00
  %i.jx = fcmp ult float %i.jk, f0x28800000       ; 2 uses
  %i.jy = fdiv float 1.000000e+00, %sqrt.i        ; 2 uses
  %i.jz = insertelement <2 x float> poison, float %i.jy, i64 0
  %i.ka = shufflevector <2 x float> %i.jz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kb = fmul <2 x float> %i.fl, %i.ka
  %i.kc = fmul float %i.fm, %i.jy
  %i.kd = insertelement <2 x i1> poison, i1 %i.jx, i64 0
  %i.ke = shufflevector <2 x i1> %i.kd, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.kf = select <2 x i1> %i.ke, <2 x float> <float 1.000000e+00, float 0.000000e+00>, <2 x float> %i.kb ; 4 uses
  %.sink.i = select i1 %i.jx, float 0.000000e+00, float %i.kc ; 4 uses
  %i.kg = load float, ptr %i.bm, align 8, !tbaa !60 ; 4 uses
  %i.kh = load float, ptr %i.bz, align 4, !tbaa !60 ; 2 uses
  %i.ki = fmul float %i.kh, %i.kh
  %i.kj = tail call float @llvm.fmuladd.f32(float %i.kg, float %i.kg, float %i.ki)
  %i.kk = load float, ptr %i.cc, align 8, !tbaa !60 ; 2 uses
  %i.kl = tail call noundef float @llvm.fmuladd.f32(float %i.kk, float %i.kk, float %i.kj)
  %i.km = fpext float %i.fr to double
  %i.kn = fmul double %i.km, 5.000000e-01
  %i.ko = fmul float %.0.i, %.sroa.speculated
  %i.kp = fsub float %.0.i, %i.ko
  %i.kq = fpext float %i.kp to double
  %i.kr = fmul double %i.kn, %i.kq
  %i.ks = fptrunc double %i.kr to float
  %i.kt = fpext float %i.ks to double
  %i.ku = fmul double %i.kt, 2.000000e+00
  %i.kv = fpext float %i.kl to double
  %i.kw = fadd double %i.kv, 1.000000e+00
  %i.kx = fdiv double %i.ku, %i.kw
  %i.ky = fptrunc double %i.kx to float           ; 2 uses
  %i.kz = fmul float %i.ky, 2.000000e+00
  %storemerge117 = select i1 %or.cond, float %i.kz, float %i.ky ; 5 uses
  br i1 %i.hi, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.o
  %i.la = fmul float %.sink.i, %i.kg
  %i.lb = fmul float %storemerge117, %i.la
  %i.lc = getelementptr inbounds nuw i8, ptr %i.gi, i64 112
  %i.ld = load float, ptr %i.lc, align 8, !tbaa !60 ; 2 uses
  %i.le = fmul float %i.ld, %i.lb
  %i.lf = getelementptr inbounds nuw i8, ptr %i.gi, i64 48 ; 2 uses
  %i.lg = insertelement <2 x float> poison, float %i.kg, i64 0
  %i.lh = shufflevector <2 x float> %i.lg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.li = fmul <2 x float> %i.kf, %i.lh
  %i.lj = insertelement <2 x float> poison, float %storemerge117, i64 0
  %i.lk = shufflevector <2 x float> %i.lj, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ll = fmul <2 x float> %i.lk, %i.li
  %i.lm = insertelement <2 x float> poison, float %i.ld, i64 0
  %i.ln = shufflevector <2 x float> %i.lm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lo = fmul <2 x float> %i.ll, %i.ln
  %i.lp = load <2 x float>, ptr %i.lf, align 8, !tbaa !60
  %i.lq = fadd <2 x float> %i.lo, %i.lp
  store <2 x float> %i.lq, ptr %i.lf, align 8, !tbaa !60
  %i.lr = getelementptr inbounds nuw i8, ptr %i.gi, i64 56 ; 2 uses
  %i.ls = load float, ptr %i.lr, align 8, !tbaa !60
  %i.lt = fadd float %i.le, %i.ls
  store float %i.lt, ptr %i.lr, align 8, !tbaa !60
  %i.lu = getelementptr inbounds nuw i8, ptr %i.bi, i64 20
  %i.lv = load float, ptr %i.lu, align 4, !tbaa !60 ; 2 uses
  %i.lw = fmul float %.sink.i, %i.lv
  %i.lx = fmul float %storemerge117, %i.lw
  %i.ly = getelementptr inbounds nuw i8, ptr %i.gm, i64 112
  %i.lz = load float, ptr %i.ly, align 8, !tbaa !60 ; 2 uses
  %i.ma = fmul float %i.lz, %i.lx
  %i.mb = getelementptr inbounds nuw i8, ptr %i.gm, i64 48 ; 2 uses
  %i.mc = insertelement <2 x float> poison, float %i.lv, i64 0
  %i.md = shufflevector <2 x float> %i.mc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.me = fmul <2 x float> %i.kf, %i.md
  %i.mf = fmul <2 x float> %i.lk, %i.me
  %i.mg = insertelement <2 x float> poison, float %i.lz, i64 0
  %i.mh = shufflevector <2 x float> %i.mg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mi = fmul <2 x float> %i.mf, %i.mh
  %i.mj = load <2 x float>, ptr %i.mb, align 8, !tbaa !60
  %i.mk = fadd <2 x float> %i.mi, %i.mj
  store <2 x float> %i.mk, ptr %i.mb, align 8, !tbaa !60
  %i.ml = getelementptr inbounds nuw i8, ptr %i.gm, i64 56 ; 2 uses
  %i.mm = load float, ptr %i.ml, align 8, !tbaa !60
  %i.mn = fadd float %i.ma, %i.mm
  store float %i.mn, ptr %i.ml, align 8, !tbaa !60
  %i.mo = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.mp = load float, ptr %i.mo, align 8, !tbaa !60 ; 2 uses
  %i.mq = fmul float %.sink.i, %i.mp
  %i.mr = fmul float %storemerge117, %i.mq
  %i.ms = getelementptr inbounds nuw i8, ptr %i.gr, i64 112
  %i.mt = load float, ptr %i.ms, align 8, !tbaa !60 ; 2 uses
  %i.mu = fmul float %i.mt, %i.mr
  %i.mv = getelementptr inbounds nuw i8, ptr %i.gr, i64 48 ; 2 uses
  %i.mw = insertelement <2 x float> poison, float %i.mp, i64 0
  %i.mx = shufflevector <2 x float> %i.mw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.my = fmul <2 x float> %i.kf, %i.mx
  %i.mz = fmul <2 x float> %i.lk, %i.my
  %i.na = insertelement <2 x float> poison, float %i.mt, i64 0
  %i.nb = shufflevector <2 x float> %i.na, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nc = fmul <2 x float> %i.mz, %i.nb
  %i.nd = load <2 x float>, ptr %i.mv, align 8, !tbaa !60
  %i.ne = fadd <2 x float> %i.nc, %i.nd
  store <2 x float> %i.ne, ptr %i.mv, align 8, !tbaa !60
  %i.nf = getelementptr inbounds nuw i8, ptr %i.gr, i64 56 ; 2 uses
  %i.ng = load float, ptr %i.nf, align 8, !tbaa !60
  %i.nh = fadd float %i.mu, %i.ng
  store float %i.nh, ptr %i.nf, align 8, !tbaa !60
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %bb.o
  br i1 %i.iu, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.loopexit
  %i.ni = load float, ptr %i.fn, align 8, !tbaa !501
  %i.nj = fmul float %storemerge117, %i.ni        ; 2 uses
  %i.nk = fmul float %.sink.i, %i.nj
  %i.nl = insertelement <2 x float> poison, float %i.nj, i64 0
  %i.nm = shufflevector <2 x float> %i.nl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nn = fmul <2 x float> %i.kf, %i.nm
  %i.no = load <2 x float>, ptr %i.cm, align 8, !tbaa !60
  %i.np = fsub <2 x float> %i.no, %i.nn
  store <2 x float> %i.np, ptr %i.cm, align 8, !tbaa !60
  %i.nq = load float, ptr %i.ew, align 8, !tbaa !60
  %i.nr = fsub float %i.nq, %i.nk
  store float %i.nr, ptr %i.ew, align 8, !tbaa !60
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.p, %.loopexit, %bb.g
  %indvars.iv.next293 = add nuw nsw i64 %indvars.iv292, 1 ; 2 uses
  %exitcond296.not = icmp eq i64 %indvars.iv.next293, %wide.trip.count295
  br i1 %exitcond296.not, label %._crit_edge274.loopexit, label %bb.g, !llvm.loop !491
}

declare void @_ZN10btSoftBody25geometricCollisionHandlerEPS_(ptr noundef nonnull align 8 dereferenceable(2064), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN34btDeformableMultiBodyDynamicsWorld21softBodySelfCollisionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1056) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.CProfileSample, align 1      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull @.str.8)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 860 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !126  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 872
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNK17btCollisionObject8isActiveEv.exit, %bb.a
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNK17btCollisionObject8isActiveEv.exit
  %i.e = phi i32 [ %i.b, %.lr.ph ], [ %i.l, %_ZNK17btCollisionObject8isActiveEv.exit ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK17btCollisionObject8isActiveEv.exit ] ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !125
end_hunk_0
