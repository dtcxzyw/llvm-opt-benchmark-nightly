Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btHeightfieldTerrainShape?download=true
inline.NumInlined: 333
inline.NumDeleted: 70
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_Z11gridRaycastI20ProcessVBoundsActionEvRT_RK9btVector3S5_Pi:bb.a
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.an, float %i.an, float %i.am)
  %sqrt = tail call float @llvm.sqrt.f32(float %i.ao) ; 5 uses
  store float %sqrt, ptr %i.ag, align 4, !tbaa !84
  %i.ap = fpext float %sqrt to double
  %i.aq = fcmp olt double %i.ap, 1.000000e-04
  %i.ar = insertelement <2 x float> poison, float %sqrt, i64 0
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> zeroinitializer
  %i.at = fdiv <2 x float> %i.al, %i.as
  %i.au = insertelement <2 x i1> poison, i1 %i.aq, i64 0
  %i.av = shufflevector <2 x i1> %i.au, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.aw = select <2 x i1> %i.av, <2 x float> zeroinitializer, <2 x float> %i.at ; 4 uses
  %i.ax = extractelement <2 x float> %i.aw, i64 1
  %i.ay = fcmp ule float %i.ax, 0.000000e+00      ; 2 uses
  %i.az = fcmp olt <2 x float> %i.aw, zeroinitializer ; 2 uses
  %i.ba = extractelement <2 x i1> %i.az, i64 1    ; 2 uses
  %i.bb = sext i1 %i.ba to i32
  %i.bc = select i1 %i.ay, i32 %i.bb, i32 1       ; 2 uses
  %i.bd = extractelement <2 x float> %i.aw, i64 0
  %i.be = fcmp ule float %i.bd, 0.000000e+00      ; 2 uses
  %i.bf = extractelement <2 x i1> %i.az, i64 0    ; 2 uses
  %i.bg = sext i1 %i.bf to i32
  %i.bh = select i1 %i.be, i32 %i.bg, i32 1       ; 2 uses
  %.not = icmp eq i32 %i.bc, 0                    ; 2 uses
  %.not78 = icmp eq i32 %i.bh, 0                  ; 2 uses
  %i.bi = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.aw)
  %i.bj = fdiv <2 x float> splat (float 1.000000e+00), %i.bi ; 2 uses
  %i.bk = extractelement <2 x float> %i.bj, i64 1 ; 3 uses
  %i.bl = select i1 %.not, float f0x4B18967F, float %i.bk ; 2 uses
  %i.bm = extractelement <2 x float> %i.bj, i64 0 ; 3 uses
  %i.bn = select i1 %.not78, float f0x4B18967F, float %i.bm ; 2 uses
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.ay, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bo = tail call noundef float @llvm.ceil.f32(float %i.y)
  %i.bp = fsub float %i.bo, %i.y
  %i.bq = fmul float %i.bk, %i.bp
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.br = tail call noundef float @llvm.floor.f32(float %i.y)
  %i.bs = fsub float %i.y, %i.br
  %i.bt = fmul float %i.bk, %i.bs
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %.071 = phi float [ %i.bq, %bb.d ], [ %i.bt, %bb.e ], [ f0x4B18967F, %bb.b ] ; 3 uses
  br i1 %.not78, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.be, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bu = tail call noundef float @llvm.ceil.f32(float %i.af)
  %i.bv = fsub float %i.bu, %i.af
  %i.bw = fmul float %i.bm, %i.bv
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bx = tail call noundef float @llvm.floor.f32(float %i.af)
  %i.by = fsub float %i.af, %i.bx
  %i.bz = fmul float %i.bm, %i.by
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.h, %bb.i
  %.0 = phi float [ %i.bw, %bb.h ], [ %i.bz, %bb.i ], [ f0x4B18967F, %bb.f ] ; 3 uses
  %i.ca = tail call noundef float @llvm.floor.f32(float %i.y)
  %i.cb = fptosi float %i.ca to i32               ; 4 uses
  store i32 %i.cb, ptr %4, align 4, !tbaa !85
  %i.cc = tail call noundef float @llvm.floor.f32(float %i.af)
  %i.cd = fptosi float %i.cc to i32               ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  store i32 %i.cd, ptr %i.ce, align 4, !tbaa !86
  %i.cf = fcmp oeq float %.071, 0.000000e+00
  br i1 %i.cf, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.cg = fadd float %i.bl, %.071                 ; 2 uses
  br i1 %i.ba, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ch = add nsw i32 %i.cb, -1                   ; 2 uses
  store i32 %i.ch, ptr %4, align 4, !tbaa !85
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.j
  %i.ci = phi i32 [ %i.ch, %bb.l ], [ %i.cb, %bb.k ], [ %i.cb, %bb.j ]
  %.172 = phi float [ %i.cg, %bb.l ], [ %i.cg, %bb.k ], [ %.071, %bb.j ]
  %i.cj = fcmp oeq float %.0, 0.000000e+00
  br i1 %i.cj, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ck = fadd float %i.bn, %.0                   ; 2 uses
  br i1 %i.bf, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cl = add nsw i32 %i.cd, -1                   ; 2 uses
  store i32 %i.cl, ptr %i.ce, align 4, !tbaa !86
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.m
  %i.cm = phi i32 [ %i.cl, %bb.o ], [ %i.cd, %bb.n ], [ %i.cd, %bb.m ]
  %.1 = phi float [ %i.ck, %bb.o ], [ %i.ck, %bb.n ], [ %.0, %bb.m ]
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 20
  br label %bb.q

bb.q:                                             ; preds = %bb.v, %bb.p
  %.280 = phi float [ 0.000000e+00, %bb.p ], [ %.2.sink, %bb.v ]
  %i.cr = phi i32 [ %i.cm, %bb.p ], [ %i.cy, %bb.v ] ; 3 uses
  %i.cs = phi i32 [ %i.ci, %bb.p ], [ %i.cz, %bb.v ] ; 3 uses
  %.273 = phi float [ %.172, %bb.p ], [ %.374, %bb.v ] ; 4 uses
  %.2 = phi float [ %.1, %bb.p ], [ %.3, %bb.v ]  ; 4 uses
  store i32 %i.cs, ptr %i.cn, align 4, !tbaa !87
  store i32 %i.cr, ptr %i.co, align 4, !tbaa !88
  store float %.280, ptr %i.cq, align 4, !tbaa !89
  %i.ct = fcmp olt float %.273, %.2
  br i1 %i.ct, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cu = add nsw i32 %i.cs, %i.bc                ; 2 uses
  store i32 %i.cu, ptr %4, align 4, !tbaa !85
  %i.cv = fadd float %i.bl, %.273
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.cw = add nsw i32 %i.cr, %i.bh                ; 2 uses
  store i32 %i.cw, ptr %i.ce, align 4, !tbaa !86
  %i.cx = fadd float %i.bn, %.2
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.2.sink = phi float [ %.273, %bb.r ], [ %.2, %bb.s ] ; 3 uses
  %i.cy = phi i32 [ %i.cr, %bb.r ], [ %i.cw, %bb.s ]
  %i.cz = phi i32 [ %i.cu, %bb.r ], [ %i.cs, %bb.s ]
  %.374 = phi float [ %i.cv, %bb.r ], [ %.273, %bb.s ]
  %.3 = phi float [ %.2, %bb.r ], [ %i.cx, %bb.s ]
  store float %.2.sink, ptr %i.cp, align 4, !tbaa !90
  %i.da = fcmp ogt float %.2.sink, %sqrt
  br i1 %i.da, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store float %sqrt, ptr %i.cp, align 4, !tbaa !90
  call fastcc void @_ZNK20ProcessVBoundsActionclERKN12_GLOBAL__N_116GridRaycastStateE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 4 dereferenceable(32) %4)
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  call fastcc void @_ZNK20ProcessVBoundsActionclERKN12_GLOBAL__N_116GridRaycastStateE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 4 dereferenceable(32) %4)
  br label %bb.q, !llvm.loop !91

bb.w:                                             ; preds = %bb.a, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN25btHeightfieldTerrainShape16buildAcceleratorEi(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 1
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.c, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !range !48
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %i.f, i1 false
  br i1 %or.cond.i.i, label %bb.c, label %_ZN25btHeightfieldTerrainShape16clearAcceleratorEv.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.c)
  br label %_ZN25btHeightfieldTerrainShape16clearAcceleratorEv.exit

_ZN25btHeightfieldTerrainShape16clearAcceleratorEv.exit: ; preds = %bb.b, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i8 1, ptr %i.d, align 8, !tbaa !11
  store ptr null, ptr %i.b, align 8, !tbaa !17
  store i32 0, ptr %i.g, align 4, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 0, ptr %i.h, align 8, !tbaa !19
  br label %.loopexit70

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 %1, ptr %i.i, align 8, !tbaa !45
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !30   ; 2 uses
  %i.l = sdiv i32 %i.k, %1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !31   ; 2 uses
  %i.o = sdiv i32 %i.n, %1
  %i.p = srem i32 %i.k, %1
  %i.q = icmp sgt i32 %i.p, 0
  %i.r = zext i1 %i.q to i32
  %spec.select = add nsw i32 %i.l, %i.r           ; 6 uses
  %i.s = srem i32 %i.n, %1
  %i.t = icmp sgt i32 %i.s, 0
  %i.u = zext i1 %i.t to i32
  %.053 = add i32 %i.o, %i.u                      ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !46
  %.not = icmp eq i32 %i.w, %spec.select
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4
  %.not57 = icmp eq i32 %i.y, %.053
  %or.cond63 = select i1 %.not, i1 %.not57, i1 false
  br i1 %or.cond63, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !17  ; 2 uses
  %.not.i.i.i64 = icmp ne ptr %i.aa, null
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 8, !range !48
  %i.ad = trunc nuw i8 %i.ac to i1
  %or.cond.i.i65 = select i1 %.not.i.i.i64, i1 %i.ad, i1 false
  br i1 %or.cond.i.i65, label %bb.f, label %_ZN25btHeightfieldTerrainShape16clearAcceleratorEv.exit66

bb.f:                                             ; preds = %bb.e
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.aa)
  br label %_ZN25btHeightfieldTerrainShape16clearAcceleratorEv.exit66

_ZN25btHeightfieldTerrainShape16clearAcceleratorEv.exit66: ; preds = %bb.e, %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i8 1, ptr %i.ab, align 8, !tbaa !11
  store ptr null, ptr %i.z, align 8, !tbaa !17
  store i32 0, ptr %i.ae, align 4, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 0, ptr %i.af, align 8, !tbaa !19
  store i32 %spec.select, ptr %i.v, align 8, !tbaa !46
  store i32 %.053, ptr %i.x, align 4, !tbaa !47
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %_ZN25btHeightfieldTerrainShape16clearAcceleratorEv.exit66
  %i.ag = icmp eq i32 %spec.select, 0
  %i.ah = icmp eq i32 %.053, 0
  %or.cond = select i1 %i.ag, i1 true, i1 %i.ah
  br i1 %or.cond, label %.loopexit70, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = mul nsw i32 %.053, %spec.select         ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !18 ; 2 uses
  %i.al = icmp sgt i32 %i.ai, %i.ak
  br i1 %i.al, label %bb.i, label %_ZN20btAlignedObjectArrayIN25btHeightfieldTerrainShape5RangeEE6resizeEiRKS1_.exit

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !19
  %i.ao = icmp slt i32 %i.an, %i.ai
  br i1 %i.ao, label %bb.j, label %_ZN20btAlignedObjectArrayIN25btHeightfieldTerrainShape5RangeEE6resizeEiRKS1_.exit

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i67 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i67, label %_ZN20btAlignedObjectArrayIN25btHeightfieldTerrainShape5RangeEE8allocateEi.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = sext i32 %i.ai to i64
  %i.aq = shl nsw i64 %i.ap, 3
  %i.ar = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.aq, i32 noundef 16)
  %.pre.i = load i32, ptr %i.aj, align 4, !tbaa !18
  br label %_ZN20btAlignedObjectArrayIN25btHeightfieldTerrainShape5RangeEE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIN25btHeightfieldTerrainShape5RangeEE8allocateEi.exit.i.i: ; preds = %bb.k, %bb.j
  %i.as = phi i32 [ %.pre.i, %bb.k ], [ %i.ak, %bb.j ] ; 3 uses
  %.0.i.i.i = phi ptr [ %i.ar, %bb.k ], [ null, %bb.j ] ; 6 uses
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIN25btHeightfieldTerrainShape5RangeEE4copyEiiPS1_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIN25btHeightfieldTerrainShape5RangeEE8allocateEi.exit.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 5 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.as to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 3 uses
  %i.av = icmp ult i32 %i.as, 4
  br i1 %i.av, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483644
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.3, %bb.l ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.3, %bb.l ]
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.ax = load ptr, ptr %i.au, align 8, !tbaa !17
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.i.i.i
  %i.az = load i64, ptr %i.ay, align 4
  store i64 %i.az, ptr %i.aw, align 4
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.bb = load ptr, ptr %i.au, align 8, !tbaa !17
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.next.i.i.i
  %i.bd = load i64, ptr %i.bc, align 4
  store i64 %i.bd, ptr %i.ba, align 4
  %indvars.iv.next.i.i.i.1 = or disjoint i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.bf = load ptr, ptr %i.au, align 8, !tbaa !17
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.next.i.i.i.1
  %i.bh = load i64, ptr %i.bg, align 4
  store i64 %i.bh, ptr %i.be, align 4
  %indvars.iv.next.i.i.i.2 = or disjoint i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.bj = load ptr, ptr %i.au, align 8, !tbaa !17
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv.next.i.i.i.2
  %i.bl = load i64, ptr %i.bk, align 4
  store i64 %i.bl, ptr %i.bi, align 4
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZNK20btAlignedObjectArrayIN25btHeightfieldTerrainShape5RangeEE4copyEiiPS1_.exit.i.i.loopexit.unr-lcssa, label %bb.l, !llvm.loop !92

_ZNK20btAlignedObjectArrayIN25btHeightfieldTerrainShape5RangeEE4copyEiiPS1_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20btAlignedObjectArrayIN25btHeightfieldTerrainShape5RangeEE4copyEiiPS1_.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20btAlignedObjectArrayIN25btHeightfieldTerrainShape5RangeEE4copyEiiPS1_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.3, %_ZNK20btAlignedObjectArrayIN25btHeightfieldTerrainShape5RangeEE4copyEiiPS1_.exit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod105 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod105)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader
  %indvars.iv.i.i.i.epil = phi i64 [ %indvars.iv.i.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.i.epil, %bb.m ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.m ]
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.epil
  %i.bn = load ptr, ptr %i.au, align 8, !tbaa !17
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.i.i.i.epil
  %i.bp = load i64, ptr %i.bo, align 4
  store i64 %i.bp, ptr %i.bm, align 4
  %indvars.iv.next.i.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK20btAlignedObjectArrayIN25btHeightfieldTerrainShape5RangeEE4copyEiiPS1_.exit.i.i, label %bb.m, !llvm.loop !93

_ZNK20btAlignedObjectArrayIN25btHeightfieldTerrainShape5RangeEE4copyEiiPS1_.exit.i.i: ; preds = %_ZNK20btAlignedObjectArrayIN25btHeightfieldTerrainShape5RangeEE4copyEiiPS1_.exit.i.i.loopexit.unr-lcssa, %bb.m, %_ZN20btAlignedObjectArrayIN25btHeightfieldTerrainShape5RangeEE8allocateEi.exit.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !17 ; 2 uses
  %.not.i5.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIN25btHeightfieldTerrainShape5RangeEE10deallocateEv.exit.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNK20btAlignedObjectArrayIN25btHeightfieldTerrainShape5RangeEE4copyEiiPS1_.exit.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !11, !range !48, !noundef !60
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.o, label %_ZN20btAlignedObjectArrayIN25btHeightfieldTerrainShape5RangeEE10deallocateEv.exit.i.i

bb.o:                                             ; preds = %bb.n
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.br)
  br label %_ZN20btAlignedObjectArrayIN25btHeightfieldTerrainShape5RangeEE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIN25btHeightfieldTerrainShape5RangeEE10deallocateEv.exit.i.i: ; preds = %bb.o, %bb.n, %_ZNK20btAlignedObjectArrayIN25btHeightfieldTerrainShape5RangeEE4copyEiiPS1_.exit.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i8 1, ptr %i.bv, align 8, !tbaa !11
  store ptr %.0.i.i.i, ptr %i.bq, align 8, !tbaa !17
  store i32 %i.ai, ptr %i.am, align 8, !tbaa !19
  br label %_ZN20btAlignedObjectArrayIN25btHeightfieldTerrainShape5RangeEE6resizeEiRKS1_.exit

_ZN20btAlignedObjectArrayIN25btHeightfieldTerrainShape5RangeEE6resizeEiRKS1_.exit: ; preds = %bb.i, %_ZN20btAlignedObjectArrayIN25btHeightfieldTerrainShape5RangeEE10deallocateEv.exit.i.i, %bb.h
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !18
  %i.bw = icmp sgt i32 %.053, 0
  br i1 %i.bw, label %.lr.ph89, label %.loopexit70

.lr.ph89:                                         ; preds = %_ZN20btAlignedObjectArrayIN25btHeightfieldTerrainShape5RangeEE6resizeEiRKS1_.exit
  %i.bx = icmp sgt i32 %spec.select, 0
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 168
  br i1 %i.bx, label %.lr.ph.preheader, label %.loopexit70

.lr.ph.preheader:                                 ; preds = %.lr.ph89
  %i.bz = zext nneg i32 %1 to i64                 ; 2 uses
  %i.ca = zext nneg i32 %spec.select to i64       ; 2 uses
  %wide.trip.count96 = zext nneg i32 %.053 to i64
  br label %.lr.ph81.preheader

.lr.ph81.preheader:                               ; preds = %._crit_edge87, %.lr.ph.preheader
  %indvars.iv93 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next94, %._crit_edge87 ] ; 3 uses
  %i.cb = mul nuw nsw i64 %indvars.iv93, %i.bz    ; 2 uses
  %i.cc = mul nuw nsw i64 %indvars.iv93, %i.ca
  %i.cd = trunc nuw i64 %i.cb to i32              ; 2 uses
  %i.ce = trunc i64 %i.cb to i32
  %i.cf = add i32 %1, %i.ce
  br label %.lr.ph81.split.preheader

._crit_edge87:                                    ; preds = %._crit_edge
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 2 uses
  %exitcond97.not = icmp eq i64 %indvars.iv.next94, %wide.trip.count96
  br i1 %exitcond97.not, label %.loopexit70, label %.lr.ph81.preheader, !llvm.loop !95

.lr.ph81.split.preheader:                         ; preds = %._crit_edge, %.lr.ph81.preheader
  %indvars.iv = phi i64 [ 0, %.lr.ph81.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.cg = mul nuw nsw i64 %indvars.iv, %i.bz      ; 2 uses
  %i.ch = load ptr, ptr %0, align 8, !tbaa !9
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 136
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = trunc nuw i64 %i.cg to i32              ; 2 uses
  %i.cl = tail call noundef float %i.cj(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %i.ck, i32 noundef %i.cd) ; 2 uses
  %i.cm = trunc i64 %i.cg to i32
  %i.cn = add i32 %1, %i.cm
  br label %.lr.ph81.split

._crit_edge:                                      ; preds = %..loopexit_crit_edge
  %i.co = load ptr, ptr %i.by, align 8, !tbaa !17
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.cc ; 2 uses
  store float %.sroa.0.3, ptr %i.cq, align 4
  %.sroa_idx68 = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  store float %.sroa.6.3, ptr %.sroa_idx68, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ca
  br i1 %exitcond.not, label %._crit_edge87, label %.lr.ph81.split.preheader, !llvm.loop !96

.lr.ph81.split:                                   ; preds = %.lr.ph81.split.preheader, %..loopexit_crit_edge
  %.05079 = phi i32 [ %i.da, %..loopexit_crit_edge ], [ %i.cd, %.lr.ph81.split.preheader ] ; 4 uses
  %.sroa.0.078 = phi float [ %.sroa.0.3, %..loopexit_crit_edge ], [ %i.cl, %.lr.ph81.split.preheader ] ; 2 uses
  %.sroa.6.077 = phi float [ %.sroa.6.3, %..loopexit_crit_edge ], [ %i.cl, %.lr.ph81.split.preheader ] ; 2 uses
  %i.cr = load i32, ptr %i.m, align 8, !tbaa !31
  %.not59 = icmp slt i32 %.05079, %i.cr
  br i1 %.not59, label %.preheader, label %..loopexit_crit_edge

.preheader:                                       ; preds = %.lr.ph81.split, %bb.s
  %.074 = phi i32 [ %i.cz, %bb.s ], [ %i.ck, %.lr.ph81.split ] ; 4 uses
  %.sroa.0.173 = phi float [ %.sroa.0.2, %bb.s ], [ %.sroa.0.078, %.lr.ph81.split ] ; 4 uses
  %.sroa.6.172 = phi float [ %.sroa.6.2, %bb.s ], [ %.sroa.6.077, %.lr.ph81.split ] ; 4 uses
  %i.cs = load i32, ptr %i.j, align 4, !tbaa !30
  %.not61 = icmp slt i32 %.074, %i.cs
  br i1 %.not61, label %bb.p, label %bb.s

bb.p:                                             ; preds = %.preheader
  %i.ct = load ptr, ptr %0, align 8, !tbaa !9
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 136
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = tail call noundef float %i.cv(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %.074, i32 noundef %.05079) ; 4 uses
  %i.cx = fcmp olt float %i.cw, %.sroa.0.173
  br i1 %i.cx, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cy = fcmp ogt float %i.cw, %.sroa.6.172
  br i1 %i.cy, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.r, %bb.q, %.preheader
  %.sroa.6.2 = phi float [ %.sroa.6.172, %.preheader ], [ %i.cw, %bb.r ], [ %.sroa.6.172, %bb.q ], [ %.sroa.6.172, %bb.p ] ; 2 uses
  %.sroa.0.2 = phi float [ %.sroa.0.173, %.preheader ], [ %.sroa.0.173, %bb.r ], [ %.sroa.0.173, %bb.q ], [ %i.cw, %bb.p ] ; 2 uses
  %i.cz = add nuw nsw i32 %.074, 1
  %.not60.not = icmp slt i32 %.074, %i.cn
  br i1 %.not60.not, label %.preheader, label %..loopexit_crit_edge, !llvm.loop !97

..loopexit_crit_edge:                             ; preds = %bb.s, %.lr.ph81.split
  %.sroa.6.3 = phi float [ %.sroa.6.077, %.lr.ph81.split ], [ %.sroa.6.2, %bb.s ] ; 2 uses
  %.sroa.0.3 = phi float [ %.sroa.0.078, %.lr.ph81.split ], [ %.sroa.0.2, %bb.s ] ; 2 uses
  %i.da = add nuw nsw i32 %.05079, 1
  %.not58.not = icmp slt i32 %.05079, %i.cf
  br i1 %.not58.not, label %.lr.ph81.split, label %._crit_edge, !llvm.loop !98

.loopexit70:                                      ; preds = %._crit_edge87, %_ZN20btAlignedObjectArrayIN25btHeightfieldTerrainShape5RangeEE6resizeEiRKS1_.exit, %.lr.ph89, %bb.g, %_ZN25btHeightfieldTerrainShape16clearAcceleratorEv.exit
  ret void
}

declare void @_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #1

declare noundef float @_ZNK16btCollisionShape20getAngularMotionDiscEv(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

declare noundef float @_ZNK16btCollisionShape27getContactBreakingThresholdEf(ptr noundef nonnull align 8 dereferenceable(32), float noundef) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK25btHeightfieldTerrainShape7getNameEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret ptr @.str
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, <2 x float> } @_ZNK16btCollisionShape38getAnisotropicRollingFrictionDirectionEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret { <2 x float>, <2 x float> } { <2 x float> splat (float 1.000000e+00), <2 x float> <float 1.000000e+00, float 0.000000e+00> }
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14btConcaveShape9setMarginEf(ptr noundef nonnull align 8 dereferenceable(36) %0, float noundef %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %1, ptr %i.a, align 8, !tbaa !99
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef float @_ZNK14btConcaveShape9getMarginEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load float, ptr %i.a, align 8, !tbaa !99
  ret float %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK16btCollisionShape28calculateSerializeBufferSizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  ret i32 16
}

declare noundef ptr @_ZNK16btCollisionShape9serializeEPvP12btSerializer(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) unnamed_addr #1

declare void @_ZNK16btCollisionShape20serializeSingleShapeEP12btSerializer(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #1

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #13

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZNK20ProcessVBoundsActionclERKN12_GLOBAL__N_116GridRaycastStateE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) unnamed_addr #8 align 2 {
bb.a:
  %2 = alloca %class.btVector3, align 8           ; 6 uses
  %3 = alloca %class.btVector3, align 8           ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !87   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !88   ; 3 uses
  %i.e = icmp slt i32 %i.b, 0
  %i.f = icmp slt i32 %i.d, 0
  %or.cond = select i1 %i.e, i1 true, i1 %i.f
  br i1 %or.cond, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !100  ; 2 uses
  %.not = icmp slt i32 %i.b, %i.h
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4
  %.not25 = icmp slt i32 %i.d, %i.j
  %or.cond27 = select i1 %.not, i1 %.not25, i1 false
  br i1 %or.cond27, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %0, align 8, !tbaa !101, !nonnull !60, !align !102
  %i.l = mul nsw i32 %i.h, %i.d
  %i.m = add nuw nsw i32 %i.l, %i.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !17
  %i.p = zext nneg i32 %i.m to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.p ; 2 uses
  %.sroa.05.0.copyload = load float, ptr %i.q, align 4, !tbaa !44 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !44 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load float, ptr %i.r, align 4, !tbaa !84 ; 2 uses
  %i.t = fpext float %i.s to double
  %i.u = fcmp ogt double %i.t, 1.000000e-04
  br i1 %i.u, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load i32, ptr %i.v, align 8, !tbaa !80
  %i.x = sitofp i32 %i.w to float
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.z = load float, ptr %i.y, align 4, !tbaa !82
  %i.aa = fmul float %i.z, %i.x
  %i.ab = fdiv float %i.aa, %i.s                  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !89
  %i.ae = fmul float %i.ad, %i.ab                 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ag = load float, ptr %i.af, align 4, !tbaa !90
  %i.ah = fmul float %i.ag, %i.ab                 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.al = load float, ptr %i.ak, align 4, !tbaa !44 ; 2 uses
  %i.am = fmul float %i.ae, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ao = load float, ptr %i.an, align 4, !tbaa !44 ; 2 uses
  %i.ap = fadd float %i.am, %i.ao
  %.sroa.3.12.vec.insert.i30 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ap, i64 0
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i30, ptr %.sroa.43.0..sroa_idx, align 8, !tbaa !37
  %i.aq = fmul float %i.ah, %i.al
  %i.ar = load <2 x float>, ptr %i.aj, align 4, !tbaa !44 ; 3 uses
  %i.as = extractelement <2 x float> %i.ar, i64 0
  %i.at = fmul float %i.as, %i.ae
  %i.au = extractelement <2 x float> %i.ar, i64 1
  %i.av = fmul float %i.ae, %i.au
  %i.aw = load <2 x float>, ptr %i.ai, align 4, !tbaa !44 ; 3 uses
  %i.ax = extractelement <2 x float> %i.aw, i64 0
  %i.ay = fadd float %i.at, %i.ax
  %i.az = extractelement <2 x float> %i.aw, i64 1
  %i.ba = fadd float %i.av, %i.az                 ; 3 uses
  %.sroa.0.0.vec.insert.i28 = insertelement <2 x float> poison, float %i.ay, i64 0
  %.sroa.0.4.vec.insert.i29 = insertelement <2 x float> %.sroa.0.0.vec.insert.i28, float %i.ba, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i29, ptr %2, align 8
  %i.bb = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.bc = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bd = fmul <2 x float> %i.ar, %i.bc
  %i.be = fadd <2 x float> %i.bd, %i.aw
  %i.bf = fadd float %i.aq, %i.ao
  %.sroa.3.12.vec.insert.i40 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bf, i64 0
  store <2 x float> %i.be, ptr %3, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i40, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !37
  %i.bg = fcmp ogt float %i.ba, %.sroa.5.0.copyload
  br i1 %i.bg, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
end_hunk_0
