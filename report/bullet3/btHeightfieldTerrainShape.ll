Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btHeightfieldTerrainShape?download=true
inline.NumInlined: 333
inline.NumDeleted: 70
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_Z11gridRaycastI20ProcessVBoundsActionEvRT_RK9btVector3S5_Pi:bb.a
  store float %sqrt, ptr %i.ag, align 4, !tbaa !63
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
  store i32 %i.cb, ptr %4, align 4, !tbaa !91
  %i.cc = tail call noundef float @llvm.floor.f32(float %i.af)
  %i.cd = fptosi float %i.cc to i32               ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  store i32 %i.cd, ptr %i.ce, align 4, !tbaa !92
  %i.cf = fcmp oeq float %.071, 0.000000e+00
  br i1 %i.cf, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.cg = fadd float %i.bl, %.071                 ; 2 uses
  br i1 %i.ba, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ch = add nsw i32 %i.cb, -1                   ; 2 uses
  store i32 %i.ch, ptr %4, align 4, !tbaa !91
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
  store i32 %i.cl, ptr %i.ce, align 4, !tbaa !92
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
  store i32 %i.cs, ptr %i.cn, align 4, !tbaa !64
  store i32 %i.cr, ptr %i.co, align 4, !tbaa !65
  store float %.280, ptr %i.cq, align 4, !tbaa !66
  %i.ct = fcmp olt float %.273, %.2
  br i1 %i.ct, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cu = add nsw i32 %i.cs, %i.bc                ; 2 uses
  store i32 %i.cu, ptr %4, align 4, !tbaa !91
  %i.cv = fadd float %i.bl, %.273
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.cw = add nsw i32 %i.cr, %i.bh                ; 2 uses
  store i32 %i.cw, ptr %i.ce, align 4, !tbaa !92
  %i.cx = fadd float %i.bn, %.2
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.2.sink = phi float [ %.273, %bb.r ], [ %.2, %bb.s ] ; 3 uses
  %i.cy = phi i32 [ %i.cr, %bb.r ], [ %i.cw, %bb.s ]
  %i.cz = phi i32 [ %i.cu, %bb.r ], [ %i.cs, %bb.s ]
  %.374 = phi float [ %i.cv, %bb.r ], [ %.273, %bb.s ]
  %.3 = phi float [ %.2, %bb.r ], [ %i.cx, %bb.s ]
  store float %.2.sink, ptr %i.cp, align 4, !tbaa !67
  %i.da = fcmp ogt float %.2.sink, %sqrt
  br i1 %i.da, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store float %sqrt, ptr %i.cp, align 4, !tbaa !67
  call fastcc void @_ZNK20ProcessVBoundsActionclERKN12_GLOBAL__N_116GridRaycastStateE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 4 dereferenceable(32) %4)
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  call fastcc void @_ZNK20ProcessVBoundsActionclERKN12_GLOBAL__N_116GridRaycastStateE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 4 dereferenceable(32) %4)
  br label %bb.q, !llvm.loop !90

bb.w:                                             ; preds = %bb.a, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
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
  %i.e = load i8, ptr %i.d, align 8, !range !43
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %i.f, i1 false
  br i1 %or.cond.i.i, label %bb.c, label %_ZN25btHeightfieldTerrainShape16clearAcceleratorEv.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.c)
  br label %_ZN25btHeightfieldTerrainShape16clearAcceleratorEv.exit

_ZN25btHeightfieldTerrainShape16clearAcceleratorEv.exit: ; preds = %bb.b, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i8 1, ptr %i.d, align 8, !tbaa !16
  store ptr null, ptr %i.b, align 8, !tbaa !17
  store i32 0, ptr %i.g, align 4, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 0, ptr %i.h, align 8, !tbaa !19
  br label %.loopexit70

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 %1, ptr %i.i, align 8, !tbaa !42
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = load <2 x i32>, ptr %i.j, align 4, !tbaa !44
  %i.m = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.n = shufflevector <2 x i32> %i.m, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %.frozen = freeze <2 x i32> %i.l                ; 2 uses
  %i.o = sdiv <2 x i32> %.frozen, %i.n            ; 2 uses
  %i.p = mul <2 x i32> %i.o, %i.n
  %.decomposed = sub <2 x i32> %.frozen, %i.p
  %i.q = icmp sgt <2 x i32> %.decomposed, zeroinitializer
  %i.r = zext <2 x i1> %i.q to <2 x i32>
  %i.s = add <2 x i32> %i.o, %i.r                 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.u = load <2 x i32>, ptr %i.t, align 8
  %2 = icmp eq <2 x i32> %i.u, %i.s               ; 2 uses
  %3 = extractelement <2 x i1> %2, i64 0
  %4 = extractelement <2 x i1> %2, i64 1
  %or.cond63 = select i1 %3, i1 %4, i1 false
  br i1 %or.cond63, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !17   ; 2 uses
  %.not.i.i.i64 = icmp ne ptr %i.w, null
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.y = load i8, ptr %i.x, align 8, !range !43
  %i.z = trunc nuw i8 %i.y to i1
  %or.cond.i.i65 = select i1 %.not.i.i.i64, i1 %i.z, i1 false
  br i1 %or.cond.i.i65, label %bb.f, label %_ZN25btHeightfieldTerrainShape16clearAcceleratorEv.exit66

bb.f:                                             ; preds = %bb.e
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.w)
  br label %_ZN25btHeightfieldTerrainShape16clearAcceleratorEv.exit66

_ZN25btHeightfieldTerrainShape16clearAcceleratorEv.exit66: ; preds = %bb.e, %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i8 1, ptr %i.x, align 8, !tbaa !16
  store ptr null, ptr %i.v, align 8, !tbaa !17
  store i32 0, ptr %i.aa, align 4, !tbaa !18
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 0, ptr %i.ab, align 8, !tbaa !19
  store <2 x i32> %i.s, ptr %i.t, align 8, !tbaa !44
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %_ZN25btHeightfieldTerrainShape16clearAcceleratorEv.exit66
  %i.ac = icmp eq <2 x i32> %i.s, zeroinitializer ; 2 uses
  %5 = extractelement <2 x i1> %i.ac, i64 0
  %6 = extractelement <2 x i1> %i.ac, i64 1
  %or.cond = select i1 %5, i1 true, i1 %6
  br i1 %or.cond, label %.loopexit70, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = extractelement <2 x i32> %i.s, i64 0    ; 3 uses
  %i.ae = extractelement <2 x i32> %i.s, i64 1    ; 3 uses
  %i.af = mul nsw i32 %i.ae, %i.ad                ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !18 ; 2 uses
  %i.ai = icmp sgt i32 %i.af, %i.ah
  br i1 %i.ai, label %bb.i, label %_ZN20btAlignedObjectArrayIN25btHeightfieldTerrainShape5RangeEE6resizeEiRKS1_.exit

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !19
  %i.al = icmp slt i32 %i.ak, %i.af
  br i1 %i.al, label %bb.j, label %_ZN20btAlignedObjectArrayIN25btHeightfieldTerrainShape5RangeEE6resizeEiRKS1_.exit

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i67 = icmp eq i32 %i.af, 0
  br i1 %.not.i.i.i67, label %_ZN20btAlignedObjectArrayIN25btHeightfieldTerrainShape5RangeEE8allocateEi.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = sext i32 %i.af to i64
  %i.an = shl nsw i64 %i.am, 3
  %i.ao = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.an, i32 noundef 16)
  %.pre.i = load i32, ptr %i.ag, align 4, !tbaa !18
  br label %_ZN20btAlignedObjectArrayIN25btHeightfieldTerrainShape5RangeEE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIN25btHeightfieldTerrainShape5RangeEE8allocateEi.exit.i.i: ; preds = %bb.k, %bb.j
  %i.ap = phi i32 [ %.pre.i, %bb.k ], [ %i.ah, %bb.j ] ; 3 uses
  %.0.i.i.i = phi ptr [ %i.ao, %bb.k ], [ null, %bb.j ] ; 8 uses
  %i.aq = icmp sgt i32 %i.ap, 0
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !17 ; 9 uses
  br i1 %i.aq, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIN25btHeightfieldTerrainShape5RangeEE4copyEiiPS1_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIN25btHeightfieldTerrainShape5RangeEE8allocateEi.exit.i.i
  %i.at = ptrtoaddr ptr %i.as to i64
  %.0.i.i.i105 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.ap to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.ap, 8
  %i.au = sub i64 %i.at, %.0.i.i.i105
  %diff.check = icmp ugt i64 %i.au, -32
  %or.cond107 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond107, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %wide.load = load <2 x i64>, ptr %i.aw, align 4, !tbaa !41
  %wide.load106 = load <2 x i64>, ptr %i.ax, align 4, !tbaa !41
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store <2 x i64> %wide.load, ptr %i.av, align 4, !tbaa !41
  store <2 x i64> %wide.load106, ptr %i.ay, align 4, !tbaa !41
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !93

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIN25btHeightfieldTerrainShape5RangeEE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.i.i.i.prol
  %i.bc = load i64, ptr %i.bb, align 4, !tbaa !41
  store i64 %i.bc, ptr %i.ba, align 4, !tbaa !41
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !94

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.bd = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.be = icmp ugt i64 %i.bd, -4
  br i1 %i.be, label %_ZNK20btAlignedObjectArrayIN25btHeightfieldTerrainShape5RangeEE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.i.i.i
  %i.bh = load i64, ptr %i.bg, align 4, !tbaa !41
  store i64 %i.bh, ptr %i.bf, align 4, !tbaa !41
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.next.i.i.i
  %i.bk = load i64, ptr %i.bj, align 4, !tbaa !41
  store i64 %i.bk, ptr %i.bi, align 4, !tbaa !41
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.next.i.i.i.1
  %i.bn = load i64, ptr %i.bm, align 4, !tbaa !41
  store i64 %i.bn, ptr %i.bl, align 4, !tbaa !41
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.next.i.i.i.2
  %i.bq = load i64, ptr %i.bp, align 4, !tbaa !41
  store i64 %i.bq, ptr %i.bo, align 4, !tbaa !41
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIN25btHeightfieldTerrainShape5RangeEE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph, !llvm.loop !95

_ZNK20btAlignedObjectArrayIN25btHeightfieldTerrainShape5RangeEE4copyEiiPS1_.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIN25btHeightfieldTerrainShape5RangeEE8allocateEi.exit.i.i
  %.not.i5.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIN25btHeightfieldTerrainShape5RangeEE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIN25btHeightfieldTerrainShape5RangeEE4copyEiiPS1_.exit.thread.i.i

_ZNK20btAlignedObjectArrayIN25btHeightfieldTerrainShape5RangeEE4copyEiiPS1_.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIN25btHeightfieldTerrainShape5RangeEE4copyEiiPS1_.exit.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !16, !range !43, !noundef !46
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.l, label %_ZN20btAlignedObjectArrayIN25btHeightfieldTerrainShape5RangeEE10deallocateEv.exit.i.i

bb.l:                                             ; preds = %_ZNK20btAlignedObjectArrayIN25btHeightfieldTerrainShape5RangeEE4copyEiiPS1_.exit.thread.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.as)
  br label %_ZN20btAlignedObjectArrayIN25btHeightfieldTerrainShape5RangeEE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIN25btHeightfieldTerrainShape5RangeEE10deallocateEv.exit.i.i: ; preds = %bb.l, %_ZNK20btAlignedObjectArrayIN25btHeightfieldTerrainShape5RangeEE4copyEiiPS1_.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIN25btHeightfieldTerrainShape5RangeEE4copyEiiPS1_.exit.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i8 1, ptr %i.bu, align 8, !tbaa !16
  store ptr %.0.i.i.i, ptr %i.ar, align 8, !tbaa !17
  store i32 %i.af, ptr %i.aj, align 8, !tbaa !19
  br label %_ZN20btAlignedObjectArrayIN25btHeightfieldTerrainShape5RangeEE6resizeEiRKS1_.exit

_ZN20btAlignedObjectArrayIN25btHeightfieldTerrainShape5RangeEE6resizeEiRKS1_.exit: ; preds = %bb.i, %_ZN20btAlignedObjectArrayIN25btHeightfieldTerrainShape5RangeEE10deallocateEv.exit.i.i, %bb.h
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !18
  %i.bv = icmp sgt i32 %i.ae, 0
  br i1 %i.bv, label %.lr.ph89, label %.loopexit70

.lr.ph89:                                         ; preds = %_ZN20btAlignedObjectArrayIN25btHeightfieldTerrainShape5RangeEE6resizeEiRKS1_.exit
  %i.bw = icmp sgt i32 %i.ad, 0
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 168
  br i1 %i.bw, label %.lr.ph.preheader, label %.loopexit70

.lr.ph.preheader:                                 ; preds = %.lr.ph89
  %i.by = zext nneg i32 %1 to i64                 ; 2 uses
  %i.bz = zext nneg i32 %i.ad to i64              ; 2 uses
  %wide.trip.count96 = zext nneg i32 %i.ae to i64
  br label %.lr.ph81.preheader

.lr.ph81.preheader:                               ; preds = %._crit_edge87, %.lr.ph.preheader
  %indvars.iv93 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next94, %._crit_edge87 ] ; 3 uses
  %i.ca = mul nuw nsw i64 %indvars.iv93, %i.by    ; 2 uses
  %i.cb = mul nuw nsw i64 %indvars.iv93, %i.bz
  %i.cc = trunc nuw i64 %i.ca to i32              ; 2 uses
  %i.cd = trunc i64 %i.ca to i32
  %i.ce = add i32 %1, %i.cd
  br label %.lr.ph81.split.preheader

._crit_edge87:                                    ; preds = %._crit_edge
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 2 uses
  %exitcond97.not = icmp eq i64 %indvars.iv.next94, %wide.trip.count96
  br i1 %exitcond97.not, label %.loopexit70, label %.lr.ph81.preheader, !llvm.loop !96

.lr.ph81.split.preheader:                         ; preds = %._crit_edge, %.lr.ph81.preheader
  %indvars.iv = phi i64 [ 0, %.lr.ph81.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.cf = mul nuw nsw i64 %indvars.iv, %i.by      ; 2 uses
  %i.cg = load ptr, ptr %0, align 8, !tbaa !10
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 136
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = trunc nuw i64 %i.cf to i32              ; 2 uses
  %i.ck = tail call noundef float %i.ci(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %i.cj, i32 noundef %i.cc) ; 2 uses
  %i.cl = trunc i64 %i.cf to i32
  %i.cm = add i32 %1, %i.cl
  br label %.lr.ph81.split

._crit_edge:                                      ; preds = %..loopexit_crit_edge
  %i.cn = load ptr, ptr %i.bx, align 8, !tbaa !17
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cb ; 2 uses
  store float %.sroa.0.3, ptr %i.cp, align 4, !tbaa !41
  %.sroa_idx68 = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  store float %.sroa.6.3, ptr %.sroa_idx68, align 4, !tbaa !41
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.bz
  br i1 %exitcond.not, label %._crit_edge87, label %.lr.ph81.split.preheader, !llvm.loop !97

.lr.ph81.split:                                   ; preds = %.lr.ph81.split.preheader, %..loopexit_crit_edge
  %.05079 = phi i32 [ %i.cz, %..loopexit_crit_edge ], [ %i.cc, %.lr.ph81.split.preheader ] ; 4 uses
  %.sroa.0.078 = phi float [ %.sroa.0.3, %..loopexit_crit_edge ], [ %i.ck, %.lr.ph81.split.preheader ] ; 2 uses
  %.sroa.6.077 = phi float [ %.sroa.6.3, %..loopexit_crit_edge ], [ %i.ck, %.lr.ph81.split.preheader ] ; 2 uses
  %i.cq = load i32, ptr %i.k, align 8, !tbaa !30
  %.not59 = icmp slt i32 %.05079, %i.cq
  br i1 %.not59, label %.preheader, label %..loopexit_crit_edge

.preheader:                                       ; preds = %.lr.ph81.split, %bb.p
  %.074 = phi i32 [ %i.cy, %bb.p ], [ %i.cj, %.lr.ph81.split ] ; 4 uses
  %.sroa.0.173 = phi float [ %.sroa.0.2, %bb.p ], [ %.sroa.0.078, %.lr.ph81.split ] ; 4 uses
  %.sroa.6.172 = phi float [ %.sroa.6.2, %bb.p ], [ %.sroa.6.077, %.lr.ph81.split ] ; 4 uses
  %i.cr = load i32, ptr %i.j, align 4, !tbaa !29
  %.not61 = icmp slt i32 %.074, %i.cr
end_hunk_0
