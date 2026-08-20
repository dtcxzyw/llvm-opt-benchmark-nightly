inline.NumInlined: 616
inline.NumDeleted: 139
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_Z20DistanceBetweenLinesRK9btVector3S1_S1_S1_PS_S2_:bb.a
  %i.av = fdiv float 1.000000e+00, %sqrt.i.i.i42  ; 3 uses
  %i.aw = fmul float %i.al, %i.av                 ; 2 uses
  %i.ax = fmul float %i.ao, %i.av                 ; 2 uses
  %i.ay = fmul float %i.ar, %i.av                 ; 2 uses
  %i.az = extractelement <2 x float> %i.ad, i64 0 ; 3 uses
  %i.ba = fadd float %i.m, %i.az
  %i.bb = extractelement <2 x float> %i.ag, i64 0 ; 3 uses
  %i.bc = fadd float %i.b, %i.bb
  %i.bd = fadd float %i.f, %i.ai
  %i.be = fsub float %i.ba, %i.az                 ; 2 uses
  %i.bf = fsub float %i.bc, %i.bb                 ; 2 uses
  %i.bg = fsub float %i.bd, %i.ai                 ; 2 uses
  %i.bh = fmul float %i.bf, %i.ax
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.aw, float %i.be, float %i.bh)
  %i.bj = tail call noundef float @llvm.fmuladd.f32(float %i.ay, float %i.bg, float %i.bi)
  %i.bk = shufflevector <2 x float> %i.ag, <2 x float> %i.ah, <2 x i32> <i32 0, i32 2>
  %i.bl = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.bm = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bn = fmul <2 x float> %i.bk, %i.bm
  %i.bo = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.bp = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bq = shufflevector <2 x float> %i.ad, <2 x float> %i.ae, <2 x i32> <i32 0, i32 2>
  %i.br = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bp, <2 x float> %i.bq, <2 x float> %i.bn)
  %i.bs = insertelement <2 x float> poison, float %i.ay, i64 0
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bu = shufflevector <2 x float> %i.ag, <2 x float> %i.ah, <2 x i32> <i32 1, i32 3>
  %i.bv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bt, <2 x float> %i.bu, <2 x float> %i.br) ; 2 uses
  %shift = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.bv, %shift
  %i.bw = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bx = fneg float %i.bw
  %i.by = fdiv float %i.bx, %i.bj                 ; 3 uses
  %i.bz = fmul float %i.be, %i.by
  %i.ca = fmul float %i.bf, %i.by
  %i.cb = fmul float %i.bg, %i.by
  %i.cc = fadd float %i.az, %i.bz
  %i.cd = fadd float %i.bb, %i.ca
  %i.ce = fadd float %i.ai, %i.cb
  %.sroa.0.0.vec.insert.i14.i = insertelement <2 x float> poison, float %i.cc, i64 0
  %.sroa.0.4.vec.insert.i15.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i14.i, float %i.cd, i64 1
  %.sroa.3.12.vec.insert.i16.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ce, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i15.i, ptr %4, align 4
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i16.i, ptr %.sroa.44.0..sroa_idx, align 4, !tbaa !14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not30 = icmp eq ptr %5, null
  br i1 %.not30, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cf = load float, ptr %i.a, align 4, !tbaa !9 ; 2 uses
  %i.cg = load float, ptr %i.e, align 4, !tbaa !9 ; 2 uses
  %i.ch = fneg float %i.y
  %i.ci = fmul float %i.cg, %i.ch
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.cf, float %i.z, float %i.ci) ; 3 uses
  %i.ck = load float, ptr %1, align 4, !tbaa !9   ; 2 uses
  %i.cl = fneg float %i.z
  %i.cm = fmul float %i.ck, %i.cl
  %i.cn = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.x, float %i.cm) ; 3 uses
  %i.co = fneg float %i.x
  %i.cp = fmul float %i.cf, %i.co
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.ck, float %i.y, float %i.cp) ; 3 uses
  %i.cr = fmul float %i.cn, %i.cn
  %i.cs = tail call float @llvm.fmuladd.f32(float %i.cj, float %i.cj, float %i.cr)
  %i.ct = tail call noundef float @llvm.fmuladd.f32(float %i.cq, float %i.cq, float %i.cs)
  %sqrt.i.i.i63 = tail call noundef float @llvm.sqrt.f32(float %i.ct)
  %i.cu = fdiv float 1.000000e+00, %sqrt.i.i.i63  ; 3 uses
  %i.cv = fmul float %i.cj, %i.cu                 ; 2 uses
  %i.cw = fmul float %i.cn, %i.cu                 ; 2 uses
  %i.cx = fmul float %i.cq, %i.cu                 ; 2 uses
  %i.cy = load float, ptr %i.ab, align 4, !tbaa !9
  %i.cz = load float, ptr %i.af, align 4, !tbaa !9 ; 4 uses
  %i.da = load float, ptr %i.c, align 4, !tbaa !9
  %i.db = fadd float %i.cz, %i.da
  %i.dc = fsub float %i.db, %i.cz                 ; 2 uses
  %i.dd = load <2 x float>, ptr %2, align 4, !tbaa !9 ; 5 uses
  %i.de = load <2 x float>, ptr %3, align 4, !tbaa !9
  %i.df = fadd <2 x float> %i.dd, %i.de
  %i.dg = fsub <2 x float> %i.df, %i.dd           ; 3 uses
  %i.dh = extractelement <2 x float> %i.dg, i64 1
  %i.di = fmul float %i.cw, %i.dh
  %i.dj = extractelement <2 x float> %i.dg, i64 0
  %i.dk = tail call float @llvm.fmuladd.f32(float %i.cv, float %i.dj, float %i.di)
  %i.dl = tail call noundef float @llvm.fmuladd.f32(float %i.cx, float %i.dc, float %i.dk)
  %i.dm = load <2 x float>, ptr %0, align 4, !tbaa !9 ; 2 uses
  %i.dn = shufflevector <2 x float> %i.dd, <2 x float> %i.dm, <2 x i32> <i32 1, i32 3>
  %i.do = insertelement <2 x float> poison, float %i.cw, i64 0
  %i.dp = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dq = fmul <2 x float> %i.dn, %i.dp
  %i.dr = insertelement <2 x float> poison, float %i.cv, i64 0
  %i.ds = shufflevector <2 x float> %i.dr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dt = shufflevector <2 x float> %i.dd, <2 x float> %i.dm, <2 x i32> <i32 0, i32 2>
  %i.du = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ds, <2 x float> %i.dt, <2 x float> %i.dq)
  %i.dv = insertelement <2 x float> poison, float %i.cx, i64 0
  %i.dw = shufflevector <2 x float> %i.dv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dx = insertelement <2 x float> poison, float %i.cz, i64 0
  %i.dy = insertelement <2 x float> %i.dx, float %i.cy, i64 1
  %i.dz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dw, <2 x float> %i.dy, <2 x float> %i.du) ; 2 uses
  %shift123 = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop124 = fsub <2 x float> %i.dz, %shift123
  %i.ea = extractelement <2 x float> %foldExtExtBinop124, i64 0
  %i.eb = fneg float %i.ea
  %i.ec = fdiv float %i.eb, %i.dl                 ; 2 uses
  %i.ed = insertelement <2 x float> poison, float %i.ec, i64 0
  %i.ee = shufflevector <2 x float> %i.ed, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ef = fmul <2 x float> %i.dg, %i.ee
  %i.eg = fmul float %i.dc, %i.ec
  %i.eh = fadd <2 x float> %i.dd, %i.ef
  %i.ei = fadd float %i.cz, %i.eg
  %.sroa.3.12.vec.insert.i16.i76 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ei, i64 0
  store <2 x float> %i.eh, ptr %5, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i16.i76, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ej = shufflevector <2 x float> %i.ae, <2 x float> %i.ad, <2 x i32> <i32 1, i32 3>
  %i.ek = insertelement <2 x float> poison, float %i.y, i64 0
  %i.el = shufflevector <2 x float> %i.ek, <2 x float> poison, <2 x i32> zeroinitializer
  %i.em = fmul <2 x float> %i.ej, %i.el
  %i.en = insertelement <2 x float> poison, float %i.x, i64 0
  %i.eo = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ep = shufflevector <2 x float> %i.ae, <2 x float> %i.ad, <2 x i32> <i32 0, i32 2>
  %i.eq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eo, <2 x float> %i.ep, <2 x float> %i.em)
  %i.er = insertelement <2 x float> poison, float %i.z, i64 0
  %i.es = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> zeroinitializer
  %i.et = shufflevector <2 x float> %i.ag, <2 x float> %i.ah, <2 x i32> <i32 3, i32 1>
  %i.eu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.es, <2 x float> %i.et, <2 x float> %i.eq) ; 2 uses
  %shift126 = shufflevector <2 x float> %i.eu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop127 = fsub <2 x float> %i.eu, %shift126
  %i.ev = extractelement <2 x float> %foldExtExtBinop127, i64 0
  %i.ew = tail call noundef float @llvm.fabs.f32(float %i.ev)
  ret float %i.ew
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7ConvexHC2Eiii(ptr noundef nonnull align 8 dereferenceable(96) initializes((4, 12), (16, 25), (36, 44), (48, 57), (68, 76), (80, 89)) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store i8 1, ptr %i.a, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr null, ptr %i.b, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  store i32 0, ptr %i.c, align 4, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 0, ptr %i.d, align 8, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store i8 1, ptr %i.e, align 8, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 8 uses
  store ptr null, ptr %i.f, align 8, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 4 uses
  store i32 0, ptr %i.g, align 4, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store i32 0, ptr %i.h, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  store i8 1, ptr %i.i, align 8, !tbaa !31
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 7 uses
  store ptr null, ptr %i.j, align 8, !tbaa !35
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 4 uses
  store i32 0, ptr %i.k, align 4, !tbaa !36
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  store i32 0, ptr %i.l, align 8, !tbaa !37
  %i.m = icmp sgt i32 %1, 0
  br i1 %i.m, label %bb.b, label %.loopexit47

bb.b:                                             ; preds = %bb.a
  %i.n = zext nneg i32 %1 to i64
  %i.o = shl nuw nsw i64 %i.n, 4
  %i.p = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.o, i32 noundef 16)
          to label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i unwind label %bb.s ; 4 uses

_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i: ; preds = %bb.b
  %.pre.i = load i32, ptr %i.c, align 4, !tbaa !22 ; 4 uses
  %i.q = icmp sgt i32 %.pre.i, 0
  br i1 %i.q, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %.pre.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.r = icmp eq i32 %.pre.i, 1
  br i1 %i.r, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.c ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.c ]
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %indvars.iv.i.i.i
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %indvars.iv.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.s, ptr noundef nonnull align 4 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !38
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %indvars.iv.next.i.i.i
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %indvars.iv.next.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.v, ptr noundef nonnull align 4 dereferenceable(16) %i.x, i64 16, i1 false), !tbaa.struct !38
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, label %bb.c, !llvm.loop !39

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod58 = trunc i32 %.pre.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod58)
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %indvars.iv.i.i.i.epil.init
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %indvars.iv.i.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.y, ptr noundef nonnull align 4 dereferenceable(16) %i.aa, i64 16, i1 false), !tbaa.struct !38
  br label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i: ; preds = %.epil.preheader, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !21  ; 2 uses
  %.not.i5.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i5.i.i, label %.lr.ph.i, label %bb.d

bb.d:                                             ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i
  %i.ac = load i8, ptr %i.a, align 8, !tbaa !15, !range !41, !noundef !42
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.e, label %.lr.ph.i

bb.e:                                             ; preds = %bb.d
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ab)
          to label %.lr.ph.i unwind label %bb.s

.lr.ph.i:                                         ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i, %bb.d, %bb.e
  store i8 1, ptr %i.a, align 8, !tbaa !15
  store ptr %i.p, ptr %i.b, align 8, !tbaa !21
  store i32 %1, ptr %i.d, align 8, !tbaa !23
  %.pre = load i32, ptr %i.g, align 4, !tbaa !29
  br label %.loopexit47

.loopexit47:                                      ; preds = %.lr.ph.i, %bb.a
  %i.ae = phi i32 [ %.pre, %.lr.ph.i ], [ 0, %bb.a ] ; 2 uses
  store i32 %1, ptr %i.c, align 4, !tbaa !22
  %i.af = icmp sgt i32 %2, %i.ae
  br i1 %i.af, label %bb.f, label %.loopexit46

bb.f:                                             ; preds = %.loopexit47
  %i.ag = load i32, ptr %i.h, align 8, !tbaa !30
  %i.ah = icmp slt i32 %i.ag, %2
  br i1 %i.ah, label %bb.g, label %.loopexit46

bb.g:                                             ; preds = %bb.f
  %.not.i.i.i17 = icmp eq i32 %2, 0
  br i1 %.not.i.i.i17, label %_ZN20btAlignedObjectArrayIN7ConvexH8HalfEdgeEE8allocateEi.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = sext i32 %2 to i64
  %i.aj = shl nsw i64 %i.ai, 2
  %i.ak = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.aj, i32 noundef 16)
          to label %.noexc26 unwind label %bb.t

.noexc26:                                         ; preds = %bb.h
  %.pre.i18 = load i32, ptr %i.g, align 4, !tbaa !29
  br label %_ZN20btAlignedObjectArrayIN7ConvexH8HalfEdgeEE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIN7ConvexH8HalfEdgeEE8allocateEi.exit.i.i: ; preds = %.noexc26, %bb.g
  %i.al = phi i32 [ %.pre.i18, %.noexc26 ], [ %i.ae, %bb.g ] ; 3 uses
  %.0.i.i.i19 = phi ptr [ %i.ak, %.noexc26 ], [ null, %bb.g ] ; 6 uses
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.lr.ph.i.i.i21, label %_ZNK20btAlignedObjectArrayIN7ConvexH8HalfEdgeEE4copyEiiPS1_.exit.i.i

.lr.ph.i.i.i21:                                   ; preds = %_ZN20btAlignedObjectArrayIN7ConvexH8HalfEdgeEE8allocateEi.exit.i.i
  %wide.trip.count.i.i.i22 = zext nneg i32 %i.al to i64 ; 2 uses
  %xtraiter60 = and i64 %wide.trip.count.i.i.i22, 3 ; 3 uses
  %i.an = icmp ult i32 %i.al, 4
  br i1 %i.an, label %.epil.preheader59, label %.lr.ph.i.i.i21.new

.lr.ph.i.i.i21.new:                               ; preds = %.lr.ph.i.i.i21
  %unroll_iter63 = and i64 %wide.trip.count.i.i.i22, 2147483644
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i.i.i21.new
  %indvars.iv.i.i.i23 = phi i64 [ 0, %.lr.ph.i.i.i21.new ], [ %indvars.iv.next.i.i.i24.3, %bb.i ] ; 6 uses
  %niter64 = phi i64 [ 0, %.lr.ph.i.i.i21.new ], [ %niter64.next.3, %bb.i ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i19, i64 %indvars.iv.i.i.i23
  %i.ap = load ptr, ptr %i.f, align 8, !tbaa !28
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.i.i.i23
  %i.ar = load i32, ptr %i.aq, align 2
  store i32 %i.ar, ptr %i.ao, align 2
  %indvars.iv.next.i.i.i24 = or disjoint i64 %indvars.iv.i.i.i23, 1 ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i19, i64 %indvars.iv.next.i.i.i24
  %i.at = load ptr, ptr %i.f, align 8, !tbaa !28
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.next.i.i.i24
  %i.av = load i32, ptr %i.au, align 2
  store i32 %i.av, ptr %i.as, align 2
  %indvars.iv.next.i.i.i24.1 = or disjoint i64 %indvars.iv.i.i.i23, 2 ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i19, i64 %indvars.iv.next.i.i.i24.1
  %i.ax = load ptr, ptr %i.f, align 8, !tbaa !28
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv.next.i.i.i24.1
  %i.az = load i32, ptr %i.ay, align 2
  store i32 %i.az, ptr %i.aw, align 2
  %indvars.iv.next.i.i.i24.2 = or disjoint i64 %indvars.iv.i.i.i23, 3 ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i19, i64 %indvars.iv.next.i.i.i24.2
  %i.bb = load ptr, ptr %i.f, align 8, !tbaa !28
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.next.i.i.i24.2
  %i.bd = load i32, ptr %i.bc, align 2
  store i32 %i.bd, ptr %i.ba, align 2
  %indvars.iv.next.i.i.i24.3 = add nuw nsw i64 %indvars.iv.i.i.i23, 4 ; 2 uses
  %niter64.next.3 = add i64 %niter64, 4           ; 2 uses
  %niter64.ncmp.3 = icmp eq i64 %niter64.next.3, %unroll_iter63
  br i1 %niter64.ncmp.3, label %_ZNK20btAlignedObjectArrayIN7ConvexH8HalfEdgeEE4copyEiiPS1_.exit.i.i.loopexit.unr-lcssa, label %bb.i, !llvm.loop !43

_ZNK20btAlignedObjectArrayIN7ConvexH8HalfEdgeEE4copyEiiPS1_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.i
  %lcmp.mod61.not = icmp eq i64 %xtraiter60, 0
  br i1 %lcmp.mod61.not, label %_ZNK20btAlignedObjectArrayIN7ConvexH8HalfEdgeEE4copyEiiPS1_.exit.i.i, label %.epil.preheader59

.epil.preheader59:                                ; preds = %_ZNK20btAlignedObjectArrayIN7ConvexH8HalfEdgeEE4copyEiiPS1_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i21
  %indvars.iv.i.i.i23.epil.init = phi i64 [ 0, %.lr.ph.i.i.i21 ], [ %indvars.iv.next.i.i.i24.3, %_ZNK20btAlignedObjectArrayIN7ConvexH8HalfEdgeEE4copyEiiPS1_.exit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod62 = icmp ne i64 %xtraiter60, 0
  tail call void @llvm.assume(i1 %lcmp.mod62)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader59
  %indvars.iv.i.i.i23.epil = phi i64 [ %indvars.iv.i.i.i23.epil.init, %.epil.preheader59 ], [ %indvars.iv.next.i.i.i24.epil, %bb.j ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader59 ], [ %epil.iter.next, %bb.j ]
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i19, i64 %indvars.iv.i.i.i23.epil
  %i.bf = load ptr, ptr %i.f, align 8, !tbaa !28
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i.i.i23.epil
  %i.bh = load i32, ptr %i.bg, align 2
  store i32 %i.bh, ptr %i.be, align 2
  %indvars.iv.next.i.i.i24.epil = add nuw nsw i64 %indvars.iv.i.i.i23.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter60
  br i1 %epil.iter.cmp.not, label %_ZNK20btAlignedObjectArrayIN7ConvexH8HalfEdgeEE4copyEiiPS1_.exit.i.i, label %bb.j, !llvm.loop !44

_ZNK20btAlignedObjectArrayIN7ConvexH8HalfEdgeEE4copyEiiPS1_.exit.i.i: ; preds = %_ZNK20btAlignedObjectArrayIN7ConvexH8HalfEdgeEE4copyEiiPS1_.exit.i.i.loopexit.unr-lcssa, %bb.j, %_ZN20btAlignedObjectArrayIN7ConvexH8HalfEdgeEE8allocateEi.exit.i.i
  %i.bi = load ptr, ptr %i.f, align 8, !tbaa !28  ; 2 uses
  %.not.i5.i.i20 = icmp eq ptr %i.bi, null
  br i1 %.not.i5.i.i20, label %_ZN20btAlignedObjectArrayIN7ConvexH8HalfEdgeEE10deallocateEv.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNK20btAlignedObjectArrayIN7ConvexH8HalfEdgeEE4copyEiiPS1_.exit.i.i
  %i.bj = load i8, ptr %i.e, align 8, !tbaa !24, !range !41, !noundef !42
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.l, label %_ZN20btAlignedObjectArrayIN7ConvexH8HalfEdgeEE10deallocateEv.exit.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bi)
          to label %_ZN20btAlignedObjectArrayIN7ConvexH8HalfEdgeEE10deallocateEv.exit.i.i unwind label %bb.t

_ZN20btAlignedObjectArrayIN7ConvexH8HalfEdgeEE10deallocateEv.exit.i.i: ; preds = %bb.l, %bb.k, %_ZNK20btAlignedObjectArrayIN7ConvexH8HalfEdgeEE4copyEiiPS1_.exit.i.i
  store i8 1, ptr %i.e, align 8, !tbaa !24
  store ptr %.0.i.i.i19, ptr %i.f, align 8, !tbaa !28
  store i32 %2, ptr %i.h, align 8, !tbaa !30
  br label %.loopexit46

.loopexit46:                                      ; preds = %bb.f, %_ZN20btAlignedObjectArrayIN7ConvexH8HalfEdgeEE10deallocateEv.exit.i.i, %.loopexit47
  store i32 %2, ptr %i.g, align 4, !tbaa !29
  %i.bl = load i32, ptr %i.k, align 4, !tbaa !36  ; 3 uses
  %i.bm = icmp sgt i32 %3, %i.bl
  br i1 %i.bm, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %.loopexit46
  %i.bn = load i32, ptr %i.l, align 8, !tbaa !37
  %i.bo = icmp slt i32 %i.bn, %3
  br i1 %i.bo, label %bb.n, label %..lr.ph.i28_crit_edge

..lr.ph.i28_crit_edge:                            ; preds = %bb.m
  %.pre48 = load ptr, ptr %i.j, align 8, !tbaa !35
  br label %.lr.ph.i28

bb.n:                                             ; preds = %bb.m
  %.not.i.i.i33 = icmp eq i32 %3, 0
  br i1 %.not.i.i.i33, label %_ZN20btAlignedObjectArrayI7btPlaneE8allocateEi.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bp = sext i32 %3 to i64
  %i.bq = mul nsw i64 %i.bp, 20
  %i.br = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.bq, i32 noundef 16)
          to label %.noexc42 unwind label %bb.u

.noexc42:                                         ; preds = %bb.o
  %.pre.i34 = load i32, ptr %i.k, align 4, !tbaa !36
  br label %_ZN20btAlignedObjectArrayI7btPlaneE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayI7btPlaneE8allocateEi.exit.i.i: ; preds = %.noexc42, %bb.n
  %i.bs = phi i32 [ %.pre.i34, %.noexc42 ], [ %i.bl, %bb.n ] ; 4 uses
  %.0.i.i.i35 = phi ptr [ %i.br, %.noexc42 ], [ null, %bb.n ] ; 5 uses
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %.lr.ph.i.i.i37, label %_ZNK20btAlignedObjectArrayI7btPlaneE4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i37:                                   ; preds = %_ZN20btAlignedObjectArrayI7btPlaneE8allocateEi.exit.i.i
  %wide.trip.count.i.i.i38 = zext nneg i32 %i.bs to i64 ; 2 uses
  %xtraiter66 = and i64 %wide.trip.count.i.i.i38, 1
  %i.bu = icmp eq i32 %i.bs, 1
  br i1 %i.bu, label %.epil.preheader65, label %.lr.ph.i.i.i37.new

.lr.ph.i.i.i37.new:                               ; preds = %.lr.ph.i.i.i37
  %unroll_iter70 = and i64 %wide.trip.count.i.i.i38, 2147483646
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph.i.i.i37.new
  %indvars.iv.i.i.i39 = phi i64 [ 0, %.lr.ph.i.i.i37.new ], [ %indvars.iv.next.i.i.i40.1, %bb.p ] ; 4 uses
  %niter71 = phi i64 [ 0, %.lr.ph.i.i.i37.new ], [ %niter71.next.1, %bb.p ]
  %i.bv = getelementptr inbounds nuw [20 x i8], ptr %.0.i.i.i35, i64 %indvars.iv.i.i.i39
  %i.bw = load ptr, ptr %i.j, align 8, !tbaa !35
  %i.bx = getelementptr inbounds nuw [20 x i8], ptr %i.bw, i64 %indvars.iv.i.i.i39
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bv, ptr noundef nonnull align 4 dereferenceable(20) %i.bx, i64 20, i1 false), !tbaa.struct !46
  %indvars.iv.next.i.i.i40 = or disjoint i64 %indvars.iv.i.i.i39, 1 ; 2 uses
  %i.by = getelementptr inbounds nuw [20 x i8], ptr %.0.i.i.i35, i64 %indvars.iv.next.i.i.i40
  %i.bz = load ptr, ptr %i.j, align 8, !tbaa !35
  %i.ca = getelementptr inbounds nuw [20 x i8], ptr %i.bz, i64 %indvars.iv.next.i.i.i40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.by, ptr noundef nonnull align 4 dereferenceable(20) %i.ca, i64 20, i1 false), !tbaa.struct !46
  %indvars.iv.next.i.i.i40.1 = add nuw nsw i64 %indvars.iv.i.i.i39, 2 ; 2 uses
  %niter71.next.1 = add i64 %niter71, 2           ; 2 uses
  %niter71.ncmp.1 = icmp eq i64 %niter71.next.1, %unroll_iter70
  br i1 %niter71.ncmp.1, label %_ZNK20btAlignedObjectArrayI7btPlaneE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, label %bb.p, !llvm.loop !47

_ZNK20btAlignedObjectArrayI7btPlaneE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.p
  %lcmp.mod68.not = icmp eq i64 %xtraiter66, 0
  br i1 %lcmp.mod68.not, label %_ZNK20btAlignedObjectArrayI7btPlaneE4copyEiiPS0_.exit.i.i, label %.epil.preheader65

.epil.preheader65:                                ; preds = %_ZNK20btAlignedObjectArrayI7btPlaneE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i37
  %indvars.iv.i.i.i39.epil.init = phi i64 [ 0, %.lr.ph.i.i.i37 ], [ %indvars.iv.next.i.i.i40.1, %_ZNK20btAlignedObjectArrayI7btPlaneE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod69 = trunc i32 %i.bs to i1
  tail call void @llvm.assume(i1 %lcmp.mod69)
  %i.cb = getelementptr inbounds nuw [20 x i8], ptr %.0.i.i.i35, i64 %indvars.iv.i.i.i39.epil.init
  %i.cc = load ptr, ptr %i.j, align 8, !tbaa !35
  %i.cd = getelementptr inbounds nuw [20 x i8], ptr %i.cc, i64 %indvars.iv.i.i.i39.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.cb, ptr noundef nonnull align 4 dereferenceable(20) %i.cd, i64 20, i1 false), !tbaa.struct !46
  br label %_ZNK20btAlignedObjectArrayI7btPlaneE4copyEiiPS0_.exit.i.i

_ZNK20btAlignedObjectArrayI7btPlaneE4copyEiiPS0_.exit.i.i: ; preds = %.epil.preheader65, %_ZNK20btAlignedObjectArrayI7btPlaneE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI7btPlaneE8allocateEi.exit.i.i
  %i.ce = load ptr, ptr %i.j, align 8, !tbaa !35  ; 2 uses
  %.not.i5.i.i36 = icmp eq ptr %i.ce, null
  br i1 %.not.i5.i.i36, label %_ZN20btAlignedObjectArrayI7btPlaneE10deallocateEv.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNK20btAlignedObjectArrayI7btPlaneE4copyEiiPS0_.exit.i.i
  %i.cf = load i8, ptr %i.i, align 8, !tbaa !31, !range !41, !noundef !42
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.r, label %_ZN20btAlignedObjectArrayI7btPlaneE10deallocateEv.exit.i.i

bb.r:                                             ; preds = %bb.q
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ce)
          to label %_ZN20btAlignedObjectArrayI7btPlaneE10deallocateEv.exit.i.i unwind label %bb.u

_ZN20btAlignedObjectArrayI7btPlaneE10deallocateEv.exit.i.i: ; preds = %bb.r, %bb.q, %_ZNK20btAlignedObjectArrayI7btPlaneE4copyEiiPS0_.exit.i.i
  store i8 1, ptr %i.i, align 8, !tbaa !31
  store ptr %.0.i.i.i35, ptr %i.j, align 8, !tbaa !35
  store i32 %3, ptr %i.l, align 8, !tbaa !37
  br label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %..lr.ph.i28_crit_edge, %_ZN20btAlignedObjectArrayI7btPlaneE10deallocateEv.exit.i.i
  %i.ch = phi ptr [ %.pre48, %..lr.ph.i28_crit_edge ], [ %.0.i.i.i35, %_ZN20btAlignedObjectArrayI7btPlaneE10deallocateEv.exit.i.i ] ; 9 uses
  %i.ci = sext i32 %i.bl to i64                   ; 4 uses
  %wide.trip.count.i29 = sext i32 %3 to i64       ; 3 uses
  %i.cj = sub nsw i64 %wide.trip.count.i29, %i.ci
  %xtraiter72 = and i64 %i.cj, 7                  ; 2 uses
  %lcmp.mod73.not = icmp eq i64 %xtraiter72, 0
  br i1 %lcmp.mod73.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i28, %.prol.preheader
  %indvars.iv.i30.prol = phi i64 [ %indvars.iv.next.i31.prol, %.prol.preheader ], [ %i.ci, %.lr.ph.i28 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i28 ]
  %i.ck = getelementptr inbounds [20 x i8], ptr %i.ch, i64 %indvars.iv.i30.prol
  %.sroa.4.0..sroa_idx.prol = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store float 0.000000e+00, ptr %.sroa.4.0..sroa_idx.prol, align 4, !tbaa !9
  %indvars.iv.next.i31.prol = add nsw i64 %indvars.iv.i30.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter72
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !48

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i28
  %indvars.iv.i30.unr = phi i64 [ %i.ci, %.lr.ph.i28 ], [ %indvars.iv.next.i31.prol, %.prol.preheader ]
  %i.cl = sub nsw i64 %i.ci, %wide.trip.count.i29
  %i.cm = icmp ugt i64 %i.cl, -8
  br i1 %i.cm, label %.loopexit, label %.lr.ph.i28.new

.lr.ph.i28.new:                                   ; preds = %.prol.loopexit, %.lr.ph.i28.new
  %indvars.iv.i30 = phi i64 [ %indvars.iv.next.i31.7, %.lr.ph.i28.new ], [ %indvars.iv.i30.unr, %.prol.loopexit ] ; 9 uses
  %i.cn = getelementptr inbounds [20 x i8], ptr %i.ch, i64 %indvars.iv.i30
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store float 0.000000e+00, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !9
  %i.co = getelementptr [20 x i8], ptr %i.ch, i64 %indvars.iv.i30
  %.sroa.4.0..sroa_idx.1 = getelementptr i8, ptr %i.co, i64 36
  store float 0.000000e+00, ptr %.sroa.4.0..sroa_idx.1, align 4, !tbaa !9
  %i.cp = getelementptr [20 x i8], ptr %i.ch, i64 %indvars.iv.i30
  %.sroa.4.0..sroa_idx.2 = getelementptr i8, ptr %i.cp, i64 56
  store float 0.000000e+00, ptr %.sroa.4.0..sroa_idx.2, align 4, !tbaa !9
  %i.cq = getelementptr [20 x i8], ptr %i.ch, i64 %indvars.iv.i30
  %.sroa.4.0..sroa_idx.3 = getelementptr i8, ptr %i.cq, i64 76
  store float 0.000000e+00, ptr %.sroa.4.0..sroa_idx.3, align 4, !tbaa !9
  %i.cr = getelementptr [20 x i8], ptr %i.ch, i64 %indvars.iv.i30
  %.sroa.4.0..sroa_idx.4 = getelementptr i8, ptr %i.cr, i64 96
  store float 0.000000e+00, ptr %.sroa.4.0..sroa_idx.4, align 4, !tbaa !9
  %i.cs = getelementptr [20 x i8], ptr %i.ch, i64 %indvars.iv.i30
  %.sroa.4.0..sroa_idx.5 = getelementptr i8, ptr %i.cs, i64 116
  store float 0.000000e+00, ptr %.sroa.4.0..sroa_idx.5, align 4, !tbaa !9
  %i.ct = getelementptr [20 x i8], ptr %i.ch, i64 %indvars.iv.i30
  %.sroa.4.0..sroa_idx.6 = getelementptr i8, ptr %i.ct, i64 136
  store float 0.000000e+00, ptr %.sroa.4.0..sroa_idx.6, align 4, !tbaa !9
  %i.cu = getelementptr [20 x i8], ptr %i.ch, i64 %indvars.iv.i30
  %.sroa.4.0..sroa_idx.7 = getelementptr i8, ptr %i.cu, i64 156
  store float 0.000000e+00, ptr %.sroa.4.0..sroa_idx.7, align 4, !tbaa !9
  %indvars.iv.next.i31.7 = add nsw i64 %indvars.iv.i30, 8 ; 2 uses
  %exitcond.not.i32.7 = icmp eq i64 %indvars.iv.next.i31.7, %wide.trip.count.i29
  br i1 %exitcond.not.i32.7, label %.loopexit, label %.lr.ph.i28.new, !llvm.loop !49

.loopexit:                                        ; preds = %.prol.loopexit, %.lr.ph.i28.new, %.loopexit46
  store i32 %3, ptr %i.k, align 4, !tbaa !36
  ret void

bb.s:                                             ; preds = %bb.e, %bb.b
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.t:                                             ; preds = %bb.l, %bb.h
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %bb.r, %bb.o
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.pn = phi { ptr, i32 } [ %i.cx, %bb.u ], [ %i.cw, %bb.t ], [ %i.cv, %bb.s ]
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN20btAlignedObjectArrayI7btPlaneED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %i.cy) #19
  tail call void @_ZN20btAlignedObjectArrayIN7ConvexH8HalfEdgeEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %i.cz) #19
  tail call void @_ZN20btAlignedObjectArrayI9btVector3ED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %0) #19
  resume { ptr, i32 } %.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN20btAlignedObjectArrayI7btPlaneED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %.not.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !41
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

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN20btAlignedObjectArrayIN7ConvexH8HalfEdgeEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %.not.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !41
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

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN20btAlignedObjectArrayI9btVector3ED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %.not.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !41
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
end_hunk_0
begin_hunk_1_@_Z9PlaneTestRK7btPlaneRK9btVector3:bb.a
  %i.r = fcmp ogt float %i.p, %i.q
  %i.s = fneg float %i.q
  %i.t = fcmp olt float %i.p, %i.s
  %i.u = zext i1 %i.t to i32
  %i.v = select i1 %i.r, i32 2, i32 %i.u
  ret i32 %i.v
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef range(i32 0, 4) i32 @_Z9SplitTestR7ConvexHRK7btPlane(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !22   ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21   ; 9 uses
  %i.f = load float, ptr %1, align 4, !tbaa !9    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load float, ptr %i.g, align 4, !tbaa !9  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load float, ptr %i.i, align 4, !tbaa !9  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load float, ptr %i.k, align 4, !tbaa !11 ; 2 uses
  %i.m = load float, ptr @planetestepsilon, align 4, !tbaa !9 ; 3 uses
  %i.n = fneg float %i.m                          ; 2 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.b, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %i.o = and i64 %wide.trip.count, 7              ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  %i.q = select i1 %i.p, i64 8, i64 %i.o
  %n.vec = sub nsw i64 %wide.trip.count, %i.q     ; 2 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.f, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert11 = insertelement <4 x float> poison, float %i.h, i64 0
  %broadcast.splat12 = shufflevector <4 x float> %broadcast.splatinsert11, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert13 = insertelement <4 x float> poison, float %i.j, i64 0
  %broadcast.splat14 = shufflevector <4 x float> %broadcast.splatinsert13, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert15 = insertelement <4 x float> poison, float %i.l, i64 0
  %broadcast.splat16 = shufflevector <4 x float> %broadcast.splatinsert15, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert17 = insertelement <4 x float> poison, float %i.m, i64 0
  %broadcast.splat18 = shufflevector <4 x float> %broadcast.splatinsert17, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert19 = insertelement <4 x float> poison, float %i.n, i64 0
  %broadcast.splat20 = shufflevector <4 x float> %broadcast.splatinsert19, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 9 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.di, %vector.body ]
  %vec.phi21 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dj, %vector.body ]
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %index ; 3 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %index ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %index ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %index ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %index ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %index ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %index ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 96
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %index ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 112
  %i.ag = load float, ptr %i.r, align 4, !tbaa !9
  %i.ah = load float, ptr %i.t, align 4, !tbaa !9
  %i.ai = load float, ptr %i.v, align 4, !tbaa !9
  %i.aj = load float, ptr %i.x, align 4, !tbaa !9
  %i.ak = insertelement <4 x float> poison, float %i.ag, i64 0
  %i.al = insertelement <4 x float> %i.ak, float %i.ah, i64 1
  %i.am = insertelement <4 x float> %i.al, float %i.ai, i64 2
  %i.an = insertelement <4 x float> %i.am, float %i.aj, i64 3
  %i.ao = load float, ptr %i.z, align 4, !tbaa !9
  %i.ap = load float, ptr %i.ab, align 4, !tbaa !9
  %i.aq = load float, ptr %i.ad, align 4, !tbaa !9
  %i.ar = load float, ptr %i.af, align 4, !tbaa !9
  %i.as = insertelement <4 x float> poison, float %i.ao, i64 0
  %i.at = insertelement <4 x float> %i.as, float %i.ap, i64 1
  %i.au = insertelement <4 x float> %i.at, float %i.aq, i64 2
  %i.av = insertelement <4 x float> %i.au, float %i.ar, i64 3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  %i.ay = getelementptr inbounds nuw i8, ptr %i.u, i64 36
  %i.az = getelementptr inbounds nuw i8, ptr %i.w, i64 52
  %i.ba = getelementptr inbounds nuw i8, ptr %i.y, i64 68
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aa, i64 84
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ac, i64 100
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ae, i64 116
  %i.be = load float, ptr %i.aw, align 4, !tbaa !9
  %i.bf = load float, ptr %i.ax, align 4, !tbaa !9
  %i.bg = load float, ptr %i.ay, align 4, !tbaa !9
  %i.bh = load float, ptr %i.az, align 4, !tbaa !9
  %i.bi = insertelement <4 x float> poison, float %i.be, i64 0
  %i.bj = insertelement <4 x float> %i.bi, float %i.bf, i64 1
  %i.bk = insertelement <4 x float> %i.bj, float %i.bg, i64 2
  %i.bl = insertelement <4 x float> %i.bk, float %i.bh, i64 3
  %i.bm = load float, ptr %i.ba, align 4, !tbaa !9
  %i.bn = load float, ptr %i.bb, align 4, !tbaa !9
  %i.bo = load float, ptr %i.bc, align 4, !tbaa !9
  %i.bp = load float, ptr %i.bd, align 4, !tbaa !9
  %i.bq = insertelement <4 x float> poison, float %i.bm, i64 0
  %i.br = insertelement <4 x float> %i.bq, float %i.bn, i64 1
  %i.bs = insertelement <4 x float> %i.br, float %i.bo, i64 2
  %i.bt = insertelement <4 x float> %i.bs, float %i.bp, i64 3
  %i.bu = fmul <4 x float> %i.bl, %broadcast.splat12
  %i.bv = fmul <4 x float> %i.bt, %broadcast.splat12
  %i.bw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.an, <4 x float> %broadcast.splat, <4 x float> %i.bu)
  %i.bx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.av, <4 x float> %broadcast.splat, <4 x float> %i.bv)
  %i.by = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.ca = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.cb = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.cc = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %i.cd = getelementptr inbounds nuw i8, ptr %i.aa, i64 88
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ac, i64 104
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ae, i64 120
  %i.cg = load float, ptr %i.by, align 4, !tbaa !9
  %i.ch = load float, ptr %i.bz, align 4, !tbaa !9
  %i.ci = load float, ptr %i.ca, align 4, !tbaa !9
  %i.cj = load float, ptr %i.cb, align 4, !tbaa !9
  %i.ck = insertelement <4 x float> poison, float %i.cg, i64 0
  %i.cl = insertelement <4 x float> %i.ck, float %i.ch, i64 1
  %i.cm = insertelement <4 x float> %i.cl, float %i.ci, i64 2
  %i.cn = insertelement <4 x float> %i.cm, float %i.cj, i64 3
  %i.co = load float, ptr %i.cc, align 4, !tbaa !9
  %i.cp = load float, ptr %i.cd, align 4, !tbaa !9
  %i.cq = load float, ptr %i.ce, align 4, !tbaa !9
  %i.cr = load float, ptr %i.cf, align 4, !tbaa !9
  %i.cs = insertelement <4 x float> poison, float %i.co, i64 0
  %i.ct = insertelement <4 x float> %i.cs, float %i.cp, i64 1
  %i.cu = insertelement <4 x float> %i.ct, float %i.cq, i64 2
  %i.cv = insertelement <4 x float> %i.cu, float %i.cr, i64 3
  %i.cw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cn, <4 x float> %broadcast.splat14, <4 x float> %i.bw)
  %i.cx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cv, <4 x float> %broadcast.splat14, <4 x float> %i.bx)
  %i.cy = fadd <4 x float> %i.cw, %broadcast.splat16 ; 2 uses
  %i.cz = fadd <4 x float> %i.cx, %broadcast.splat16 ; 2 uses
  %i.da = fcmp ogt <4 x float> %i.cy, %broadcast.splat18
  %i.db = fcmp ogt <4 x float> %i.cz, %broadcast.splat18
  %i.dc = fcmp olt <4 x float> %i.cy, %broadcast.splat20
  %i.dd = fcmp olt <4 x float> %i.cz, %broadcast.splat20
  %i.de = zext <4 x i1> %i.dc to <4 x i32>
  %i.df = zext <4 x i1> %i.dd to <4 x i32>
  %i.dg = select <4 x i1> %i.da, <4 x i32> splat (i32 2), <4 x i32> %i.de
  %i.dh = select <4 x i1> %i.db, <4 x i32> splat (i32 2), <4 x i32> %i.df
  %i.di = or <4 x i32> %i.dg, %vec.phi            ; 2 uses
  %i.dj = or <4 x i32> %i.dh, %vec.phi21          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dk = icmp eq i64 %index.next, %n.vec
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !50

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %i.dj, %i.di
  %i.dl = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx)
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.078.ph = phi i32 [ 0, %.lr.ph ], [ %i.dl, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %bb.a
  %.07.lcssa = phi i32 [ 0, %bb.a ], [ %i.ea, %scalar.ph ]
  ret i32 %.07.lcssa

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.078 = phi i32 [ %i.ea, %scalar.ph ], [ %.078.ph, %scalar.ph.preheader ]
  %i.dm = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv ; 3 uses
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !9
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  %i.dp = load float, ptr %i.do, align 4, !tbaa !9
  %i.dq = fmul float %i.dp, %i.h
  %i.dr = tail call float @llvm.fmuladd.f32(float %i.dn, float %i.f, float %i.dq)
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !9
  %i.du = tail call noundef float @llvm.fmuladd.f32(float %i.dt, float %i.j, float %i.dr)
  %i.dv = fadd float %i.du, %i.l                  ; 2 uses
  %i.dw = fcmp ogt float %i.dv, %i.m
  %i.dx = fcmp olt float %i.dv, %i.n
  %i.dy = zext i1 %i.dx to i32
  %i.dz = select i1 %i.dw, i32 2, i32 %i.dy
  %i.ea = or i32 %i.dz, %.078                     ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !53
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { <2 x float>, <2 x float> } @_Z4orthRK9btVector3(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load float, ptr %0, align 4, !tbaa !9    ; 4 uses
  %i.c = fneg float %i.b
  %i.d = fmul float %i.b, -0.000000e+00
  %i.e = load <2 x float>, ptr %i.a, align 4, !tbaa !9 ; 4 uses
  %i.f = extractelement <2 x float> %i.e, i64 1   ; 2 uses
  %i.g = fmul float %i.f, 0.000000e+00
  %i.h = extractelement <2 x float> %i.e, i64 0   ; 2 uses
  %i.i = fsub float %i.h, %i.g                    ; 2 uses
  %i.j = fmul float %i.h, -0.000000e+00           ; 2 uses
  %i.k = fneg float %i.f
  %i.l = insertelement <2 x float> poison, float %i.k, i64 0
  %i.m = insertelement <2 x float> %i.l, float %i.d, i64 1
  %i.n = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.e, <2 x float> zeroinitializer, <2 x float> %i.m) ; 3 uses
  %i.o = fadd float %i.j, %i.b                    ; 2 uses
  %1 = insertelement <2 x float> %i.e, float %i.b, i64 0
  %2 = insertelement <2 x float> poison, float %i.j, i64 0
  %i.p = insertelement <2 x float> %2, float %i.c, i64 1
  %3 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %1, <2 x float> zeroinitializer, <2 x float> %i.p) ; 4 uses
  %4 = shufflevector <2 x float> %i.n, <2 x float> %3, <2 x i32> <i32 3, i32 1> ; 2 uses
  %i.q = fmul <2 x float> %4, %4
  %i.r = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.s = insertelement <2 x float> %i.r, float %i.i, i64 0 ; 2 uses
  %i.t = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.s, <2 x float> %i.s, <2 x float> %i.q)
  %i.u = insertelement <2 x float> %3, float %i.o, i64 1 ; 2 uses
  %i.v = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.u, <2 x float> %i.u, <2 x float> %i.t)
  %i.w = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.v) ; 2 uses
  %i.x = extractelement <2 x float> %i.w, i64 0   ; 2 uses
  %i.y = extractelement <2 x float> %i.w, i64 1   ; 2 uses
  %i.z = fcmp ogt float %i.x, %i.y                ; 3 uses
  %sqrt.i.sqrt.i8 = select i1 %i.z, float %i.x, float %i.y
  %i.aa = insertelement <2 x i1> poison, i1 %i.z, i64 0
  %i.ab = shufflevector <2 x i1> %i.aa, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ac = insertelement <2 x float> %3, float %i.i, i64 0
  %5 = select <2 x i1> %i.ab, <2 x float> %i.ac, <2 x float> %i.n
  %6 = extractelement <2 x float> %3, i64 0
  %.46 = select i1 %i.z, float %6, float %i.o
  %i.ad = fdiv float 1.000000e+00, %sqrt.i.sqrt.i8 ; 2 uses
  %i.ae = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ag = fmul <2 x float> %5, %i.af
  %i.ah = fmul float %.46, %i.ad
  %.sroa.8.8.vec.insert.i18 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ah, i64 0
  %.fca.0.insert.i.pn = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.ag, 0
  %.pn = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i.pn, <2 x float> %.sroa.8.8.vec.insert.i18, 1
  ret { <2 x float>, <2 x float> } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZeqRK4int3S1_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !54
  %i.b = load i32, ptr %1, align 4, !tbaa !54
  %.not = icmp eq i32 %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !54
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !54
  %.not.1 = icmp eq i32 %i.d, %i.f
  br i1 %.not.1, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 4, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i32, ptr %i.i, align 4, !tbaa !54
  %.not.2 = icmp eq i32 %i.h, %i.j
  %spec.select = zext i1 %.not.2 to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.k = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.c ], [ 0, %bb.b ]
  ret i32 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 0, 2) i32 @_Z5aboveP9btVector3RK4int3RKS_f(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, float noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !54
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr inbounds [16 x i8], ptr %0, i64 %i.b ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !54
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [16 x i8], ptr %0, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !54
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [16 x i8], ptr %0, i64 %i.j ; 2 uses
  %i.l = load float, ptr %i.g, align 4, !tbaa !9
  %i.m = load float, ptr %i.c, align 4, !tbaa !9  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.p = load float, ptr %i.k, align 4, !tbaa !9
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.r = load <2 x float>, ptr %i.n, align 4, !tbaa !9 ; 3 uses
  %i.s = load <2 x float>, ptr %i.o, align 4, !tbaa !9 ; 3 uses
  %i.t = fsub <2 x float> %i.r, %i.s              ; 2 uses
  %i.u = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.v = insertelement <2 x float> %i.u, float %i.l, i64 1 ; 2 uses
  %i.w = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.x = insertelement <2 x float> %i.w, float %i.m, i64 1
  %i.y = fsub <2 x float> %i.v, %i.x              ; 2 uses
  %i.z = load <2 x float>, ptr %i.q, align 4, !tbaa !9 ; 2 uses
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ab = insertelement <2 x float> %i.aa, float %i.p, i64 1
  %i.ac = fsub <2 x float> %i.ab, %i.v            ; 2 uses
  %i.ad = fsub <2 x float> %i.z, %i.r             ; 2 uses
  %i.ae = fneg <2 x float> %i.ad
  %i.af = fmul <2 x float> %i.y, %i.ae
  %i.ag = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> %i.ac, <2 x float> %i.af) ; 4 uses
  %i.ah = extractelement <2 x float> %i.ac, i64 1
  %i.ai = fneg float %i.ah
  %i.aj = extractelement <2 x float> %i.t, i64 0
  %i.ak = fmul float %i.aj, %i.ai
  %i.al = extractelement <2 x float> %i.y, i64 1
  %i.am = extractelement <2 x float> %i.ad, i64 0
  %i.an = tail call float @llvm.fmuladd.f32(float %i.al, float %i.am, float %i.ak) ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.ag, %i.ag
  %i.ao = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ap = extractelement <2 x float> %i.ag, i64 0 ; 2 uses
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.ap, float %i.ao)
  %i.ar = tail call noundef float @llvm.fmuladd.f32(float %i.an, float %i.an, float %i.aq) ; 2 uses
  %i.as = fcmp oeq float %i.ar, 0.000000e+00
  br i1 %i.as, label %_Z9TriNormalRK9btVector3S1_S1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.ar)
  %i.at = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.au = insertelement <2 x float> poison, float %i.at, i64 0
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aw = fmul <2 x float> %i.ag, %i.av
  %i.ax = fmul float %i.an, %i.at
  %.sroa.3.12.vec.insert.i13.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ax, i64 0
  br label %_Z9TriNormalRK9btVector3S1_S1_.exit

_Z9TriNormalRK9btVector3S1_S1_.exit:              ; preds = %bb.a, %bb.b
  %.sroa.028.0.i = phi <2 x float> [ %i.aw, %bb.b ], [ <float 1.000000e+00, float 0.000000e+00>, %bb.a ] ; 2 uses
  %.sroa.4.0.i = phi <2 x float> [ %.sroa.3.12.vec.insert.i13.i, %bb.b ], [ zeroinitializer, %bb.a ]
  %i.ay = load float, ptr %2, align 4, !tbaa !9
  %i.az = fsub float %i.ay, %i.m
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bb = load <2 x float>, ptr %i.ba, align 4, !tbaa !9
  %i.bc = fsub <2 x float> %i.bb, %i.s            ; 2 uses
  %.sroa.012.0.vec.extract = extractelement <2 x float> %.sroa.028.0.i, i64 0
  %shift = shufflevector <2 x float> %.sroa.028.0.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop15 = fmul <2 x float> %shift, %i.bc
  %i.bd = extractelement <2 x float> %foldExtExtBinop15, i64 0
  %i.be = tail call float @llvm.fmuladd.f32(float %.sroa.012.0.vec.extract, float %i.az, float %i.bd)
  %.sroa.513.8.vec.extract = extractelement <2 x float> %.sroa.4.0.i, i64 0
  %i.bf = extractelement <2 x float> %i.bc, i64 1
  %i.bg = tail call noundef float @llvm.fmuladd.f32(float %.sroa.513.8.vec.extract, float %i.bf, float %i.be)
  %i.bh = fcmp ogt float %i.bg, %3
  %i.bi = zext i1 %i.bh to i32
  ret i32 %i.bi
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 0, 2) i32 @_Z7hasedgeRK4int3ii(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !54     ; 2 uses
  %i.b = icmp eq i32 %i.a, %1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !54   ; 2 uses
  %i.e = icmp eq i32 %i.d, %2
  %or.cond = select i1 %i.b, i1 %i.e, i1 false
  br i1 %or.cond, label %.critedge.2, label %.critedge

.critedge:                                        ; preds = %bb.a
  %i.f = icmp eq i32 %i.d, %1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 4, !tbaa !54   ; 2 uses
  %i.i = icmp eq i32 %i.h, %2
  %or.cond20 = select i1 %i.f, i1 %i.i, i1 false
  br i1 %or.cond20, label %.critedge.2, label %.critedge.1

.critedge.1:                                      ; preds = %.critedge
  %i.j = icmp eq i32 %i.h, %1
  %i.k = icmp eq i32 %i.a, %2
  %or.cond21 = and i1 %i.j, %i.k
  %spec.select = zext i1 %or.cond21 to i32
  br label %.critedge.2

.critedge.2:                                      ; preds = %.critedge.1, %.critedge, %bb.a
  %i.l = phi i32 [ 1, %bb.a ], [ %spec.select, %.critedge.1 ], [ 1, %.critedge ]
  ret i32 %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 0, 2) i32 @_Z7hasvertRK4int3i(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !54
  %i.b = icmp eq i32 %i.a, %1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %i.d, %1
  %or.cond = select i1 %i.b, i1 true, i1 %i.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.g, %1
  %narrow = select i1 %or.cond, i1 true, i1 %i.h
  %i.i = zext i1 %narrow to i32
  ret i32 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 0, 2) i32 @_Z9shareedgeRK4int3S1_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %0, align 4                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 4              ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !54   ; 5 uses
  %i.h = load i32, ptr %1, align 4, !tbaa !54     ; 5 uses
  %i.i = icmp eq i32 %i.a, %i.g
  %i.j = icmp eq i32 %i.c, %i.h                   ; 2 uses
  %or.cond.i = select i1 %i.i, i1 %i.j, i1 false
  br i1 %or.cond.i, label %_Z7hasedgeRK4int3ii.exit.thread, label %.critedge.i

.critedge.i:                                      ; preds = %bb.a
  %i.k = icmp eq i32 %i.c, %i.g                   ; 2 uses
  %i.l = icmp eq i32 %i.e, %i.h
  %or.cond20.i = select i1 %i.k, i1 %i.l, i1 false
  br i1 %or.cond20.i, label %_Z7hasedgeRK4int3ii.exit.thread, label %_Z7hasedgeRK4int3ii.exit

_Z7hasedgeRK4int3ii.exit:                         ; preds = %.critedge.i
  %i.m = icmp ne i32 %i.e, %i.g
  %i.n = icmp ne i32 %i.a, %i.h
  %or.cond21.i.not = or i1 %i.n, %i.m
  br i1 %or.cond21.i.not, label %bb.b, label %_Z7hasedgeRK4int3ii.exit.thread

bb.b:                                             ; preds = %_Z7hasedgeRK4int3ii.exit
end_hunk_1
begin_hunk_2_@_ZN11HullLibrary7extrudeEP14btHullTrianglei:bb.a

._crit_edge32.i57:                                ; preds = %bb.o
  %brmerge.not.i58 = and i1 %i.br, %i.by
  br i1 %brmerge.not.i58, label %bb.l, label %bb.p

bb.p:                                             ; preds = %._crit_edge32.i57
  %brmerge46.not.i59 = and i1 %i.bl, %i.bx
  br i1 %brmerge46.not.i59, label %bb.n, label %_ZN14btHullTriangle4neibEii.exit63

_ZN14btHullTriangle4neibEii.exit63:               ; preds = %bb.l, %bb.n, %bb.p
  %.2.i60 = phi ptr [ %i.bq, %bb.l ], [ %i.bu, %bb.n ], [ @_ZZN14btHullTriangle4neibEiiE2er, %bb.p ]
  store i32 %i.g, ptr %.2.i60, align 4, !tbaa !54
  %i.bz = load i32, ptr %i.h, align 4, !tbaa !54
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.ca
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !60 ; 6 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !54
  %i.ce = icmp ne i32 %i.cd, %2
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.cg = load i32, ptr %i.cf, align 4
  %i.ch = icmp ne i32 %i.cg, %2
  %or.cond.i64.not87 = select i1 %i.ce, i1 %i.ch, i1 false
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.cj = load i32, ptr %i.ci, align 4
  %i.ck = icmp ne i32 %i.cj, %2
  %narrow.i.not = select i1 %or.cond.i64.not87, i1 %i.ck, i1 false
  br i1 %narrow.i.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN14btHullTriangle4neibEii.exit63
  tail call void @_ZN11HullLibrary6b2bfixEP14btHullTriangleS1_(ptr noundef nonnull readonly align 8 dereferenceable(64) %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.cc)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !63
  %i.cn = load ptr, ptr %i.j, align 8, !tbaa !55
  %i.co = sext i32 %i.cm to i64
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.co
  store ptr null, ptr %i.cp, align 8, !tbaa !60
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.c)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !63
  %i.cs = load ptr, ptr %i.j, align 8, !tbaa !55
  %i.ct = sext i32 %i.cr to i64
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %i.ct
  store ptr null, ptr %i.cu, align 8, !tbaa !60
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.cc)
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !55
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN14btHullTriangle4neibEii.exit63
  %i.cv = phi ptr [ %.pre, %bb.q ], [ %i.bg, %_ZN14btHullTriangle4neibEii.exit63 ] ; 2 uses
  %i.cw = load i32, ptr %i.ag, align 4, !tbaa !54
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %i.cx
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !60 ; 6 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !54
  %i.db = icmp ne i32 %i.da, %2
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %i.dd = load i32, ptr %i.dc, align 4
  %i.de = icmp ne i32 %i.dd, %2
  %or.cond.i65.not90 = select i1 %i.db, i1 %i.de, i1 false
  %i.df = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.dg = load i32, ptr %i.df, align 4
  %i.dh = icmp ne i32 %i.dg, %2
  %narrow.i66.not = select i1 %or.cond.i65.not90, i1 %i.dh, i1 false
  br i1 %narrow.i66.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN11HullLibrary6b2bfixEP14btHullTriangleS1_(ptr noundef nonnull readonly align 8 dereferenceable(64) %0, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.cz)
  %i.di = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !63
  %i.dk = load ptr, ptr %i.j, align 8, !tbaa !55
  %i.dl = sext i32 %i.dj to i64
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.dk, i64 %i.dl
  store ptr null, ptr %i.dm, align 8, !tbaa !60
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ad)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !63
  %i.dp = load ptr, ptr %i.j, align 8, !tbaa !55
  %i.dq = sext i32 %i.do to i64
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.dp, i64 %i.dq
  store ptr null, ptr %i.dr, align 8, !tbaa !60
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.cz)
  %.pre94 = load ptr, ptr %i.j, align 8, !tbaa !55
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ds = phi ptr [ %.pre94, %bb.s ], [ %i.cv, %bb.r ] ; 2 uses
  %i.dt = load i32, ptr %i.be, align 4, !tbaa !54
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %i.du
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !60 ; 6 uses
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !54
  %i.dy = icmp ne i32 %i.dx, %2
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  %i.ea = load i32, ptr %i.dz, align 4
  %i.eb = icmp ne i32 %i.ea, %2
  %or.cond.i67.not93 = select i1 %i.dy, i1 %i.eb, i1 false
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.ed = load i32, ptr %i.ec, align 4
  %i.ee = icmp ne i32 %i.ed, %2
  %narrow.i68.not = select i1 %or.cond.i67.not93, i1 %i.ee, i1 false
  br i1 %narrow.i68.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @_ZN11HullLibrary6b2bfixEP14btHullTriangleS1_(ptr noundef nonnull readonly align 8 dereferenceable(64) %0, ptr noundef nonnull %i.bb, ptr noundef nonnull %i.dw)
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !63
  %i.eh = load ptr, ptr %i.j, align 8, !tbaa !55
  %i.ei = sext i32 %i.eg to i64
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.ei
  store ptr null, ptr %i.ej, align 8, !tbaa !60
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bb)
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !63
  %i.em = load ptr, ptr %i.j, align 8, !tbaa !55
  %i.en = sext i32 %i.el to i64
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.em, i64 %i.en
  store ptr null, ptr %i.eo, align 8, !tbaa !60
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.dw)
  %.pre95 = load ptr, ptr %i.j, align 8, !tbaa !55
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ep = phi ptr [ %.pre95, %bb.u ], [ %i.ds, %bb.t ]
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !63
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %i.es
  store ptr null, ptr %i.et, align 8, !tbaa !60
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define dso_local noundef ptr @_ZN11HullLibrary10extrudableEf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, float noundef %1) local_unnamed_addr #10 align 2 {
.lr.ph:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !71   ; 4 uses
  %i.c = icmp sgt i32 %i.b, 0
  tail call void @llvm.assume(i1 %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.f = icmp eq i32 %i.b, 1
  br i1 %i.f, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.a

bb.a:                                             ; preds = %._crit_edge15.1, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %._crit_edge15.1 ] ; 3 uses
  %.013 = phi ptr [ null, %.lr.ph.new ], [ %.1.1, %._crit_edge15.1 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %._crit_edge15.1 ]
  %.not = icmp eq ptr %.013, null
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !60 ; 4 uses
  br i1 %.not, label %._crit_edge15, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not11 = icmp eq ptr %.pre, null
  br i1 %.not11, label %._crit_edge15, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.013, i64 32
  %i.h = load float, ptr %i.g, align 4, !tbaa !70
  %i.i = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %i.j = load float, ptr %i.i, align 4, !tbaa !70
  %i.k = fcmp olt float %i.h, %i.j
  br i1 %i.k, label %bb.d, label %._crit_edge15

bb.d:                                             ; preds = %bb.c
  br label %._crit_edge15

._crit_edge15:                                    ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.1 = phi ptr [ %.013, %bb.b ], [ %.013, %bb.c ], [ %.pre, %bb.d ], [ %.pre, %bb.a ] ; 4 uses
  %.not.1 = icmp eq ptr %.1, null
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %.phi.trans.insert.1 = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.pre.1 = load ptr, ptr %.phi.trans.insert.1, align 8, !tbaa !60 ; 4 uses
  br i1 %.not.1, label %._crit_edge15.1, label %bb.e

bb.e:                                             ; preds = %._crit_edge15
  %.not11.1 = icmp eq ptr %.pre.1, null
  br i1 %.not11.1, label %._crit_edge15.1, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %.1, i64 32
  %i.n = load float, ptr %i.m, align 4, !tbaa !70
  %i.o = getelementptr inbounds nuw i8, ptr %.pre.1, i64 32
  %i.p = load float, ptr %i.o, align 4, !tbaa !70
  %i.q = fcmp olt float %i.n, %i.p
  br i1 %i.q, label %bb.g, label %._crit_edge15.1

bb.g:                                             ; preds = %bb.f
  br label %._crit_edge15.1

._crit_edge15.1:                                  ; preds = %bb.g, %bb.f, %bb.e, %._crit_edge15
  %.1.1 = phi ptr [ %.1, %bb.e ], [ %.1, %bb.f ], [ %.pre.1, %bb.g ], [ %.pre.1, %._crit_edge15 ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.a, !llvm.loop !77

._crit_edge.unr-lcssa:                            ; preds = %._crit_edge15.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ]
  %.013.epil.init = phi ptr [ null, %.lr.ph ], [ %.1.1, %._crit_edge.unr-lcssa ] ; 4 uses
  %lcmp.mod17 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod17)
  %.not.epil = icmp eq ptr %.013.epil.init, null
  %.phi.trans.insert.epil = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.epil.init
  %.pre.epil = load ptr, ptr %.phi.trans.insert.epil, align 8, !tbaa !60 ; 4 uses
  br i1 %.not.epil, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %.epil.preheader
  %.not11.epil = icmp eq ptr %.pre.epil, null
  br i1 %.not11.epil, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %.013.epil.init, i64 32
  %i.s = load float, ptr %i.r, align 4, !tbaa !70
  %i.t = getelementptr inbounds nuw i8, ptr %.pre.epil, i64 32
  %i.u = load float, ptr %i.t, align 4, !tbaa !70
  %i.v = fcmp olt float %i.s, %i.u
  br i1 %i.v, label %bb.j, label %._crit_edge

bb.j:                                             ; preds = %bb.i
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %bb.h, %bb.i, %bb.j, %._crit_edge.unr-lcssa
  %.1.lcssa = phi ptr [ %.1.1, %._crit_edge.unr-lcssa ], [ %.013.epil.init, %bb.h ], [ %.013.epil.init, %bb.i ], [ %.pre.epil, %bb.j ], [ %.pre.epil, %.epil.preheader ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 32
  %i.x = load float, ptr %i.w, align 4, !tbaa !70
  %i.y = fcmp ogt float %i.x, %1
  %i.z = select i1 %i.y, ptr %.1.lcssa, ptr null
  ret ptr %i.z
}

; Function Attrs: mustprogress uwtable
define dso_local { i64, i64 } @_ZN11HullLibrary11FindSimplexEP9btVector3iR20btAlignedObjectArrayIiE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(25) %3) local_unnamed_addr #11 align 2 {
bb.a:
  %4 = alloca [3 x %class.btVector3], align 16    ; 13 uses
  %5 = alloca %class.btVector3, align 8           ; 5 uses
  %6 = alloca %class.btVector3, align 8           ; 5 uses
  %7 = alloca %class.btVector3, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %.sroa.4159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.sroa.5160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store <4 x float> <float f0x3C23D70A, float 2.000000e-02, float 1.000000e+00, float 0.000000e+00>, ptr %4, align 16
  %i.a = call noundef i32 @_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE(ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(25) %3) ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.b = load <2 x float>, ptr %4, align 16, !tbaa !9
  %i.c = fneg <2 x float> %i.b
  %i.d = load float, ptr %.sroa.5160.0..sroa_idx, align 8, !tbaa !9
  %i.e = fneg float %i.d
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.e, i64 0
  store <2 x float> %i.c, ptr %5, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %i.f, align 8
  %i.g = call noundef i32 @_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE(ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(25) %3) ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.h = sext i32 %i.a to i64
  %i.i = getelementptr inbounds [16 x i8], ptr %1, i64 %i.h ; 5 uses
  %i.j = sext i32 %i.g to i64
  %i.k = getelementptr inbounds [16 x i8], ptr %1, i64 %i.j ; 4 uses
  %i.l = load float, ptr %i.i, align 4, !tbaa !9
  %i.m = load float, ptr %i.k, align 4, !tbaa !9
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  %i.o = load float, ptr %i.n, align 4, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  %i.q = load float, ptr %i.p, align 4, !tbaa !9
  %i.r = fsub float %i.o, %i.q                    ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.t = load float, ptr %i.s, align 4, !tbaa !9
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !9
  %i.w = insertelement <2 x float> poison, float %i.t, i64 0
  %i.x = insertelement <2 x float> %i.w, float %i.l, i64 1
  %i.y = insertelement <2 x float> poison, float %i.v, i64 0
  %i.z = insertelement <2 x float> %i.y, float %i.m, i64 1
  %i.aa = fsub <2 x float> %i.x, %i.z             ; 6 uses
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %.sroa.0.4.vec.insert.i68 = insertelement <2 x float> %i.ab, float %i.r, i64 1
  %i.ac = insertelement <2 x float> %i.aa, float 0.000000e+00, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i68, ptr %4, align 16
  store <2 x float> %i.ac, ptr %.sroa.5160.0..sroa_idx, align 8, !tbaa !14
  %i.ad = icmp eq i32 %i.a, %i.g
  br i1 %i.ad, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ae = extractelement <2 x float> %i.aa, i64 0 ; 3 uses
  %i.af = fcmp oeq float %i.ae, 0.000000e+00
  %i.ag = fcmp oeq float %i.r, 0.000000e+00
  %or.cond170 = select i1 %i.af, i1 %i.ag, i1 false
  %i.ah = extractelement <2 x float> %i.aa, i64 1 ; 4 uses
  %i.ai = fcmp oeq float %i.ah, 0.000000e+00
  %or.cond172 = select i1 %or.cond170, i1 %i.ai, i1 false
  br i1 %or.cond172, label %.critedge, label %_ZNK9btVector3eqERKS_.exit.thread

_ZNK9btVector3eqERKS_.exit.thread:                ; preds = %bb.b
  %i.aj = fmul float %i.r, -0.000000e+00          ; 2 uses
  %i.ak = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.al = fneg <2 x float> %i.aa
  %i.am = shufflevector <2 x float> %i.ak, <2 x float> %i.al, <2 x i32> <i32 0, i32 2>
  %i.an = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aa, <2 x float> <float 2.000000e-02, float 0.000000e+00>, <2 x float> %i.am) ; 4 uses
  %i.ao = fneg float %i.ah
  %i.ap = fmul float %i.ah, 2.000000e-02
  %i.aq = fsub float %i.r, %i.ap                  ; 4 uses
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aq, i64 0
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.46.0..sroa_idx, align 8, !tbaa !14
  %i.as = fadd float %i.ae, %i.aj                 ; 3 uses
  %i.at = fmul float %i.ae, 2.000000e-02
  %i.au = call float @llvm.fmuladd.f32(float %i.ah, float 0.000000e+00, float %i.at) ; 3 uses
  %i.av = call float @llvm.fmuladd.f32(float %i.r, float -2.000000e-02, float %i.ao) ; 3 uses
  %.sroa.0.0.vec.insert.i.i72 = insertelement <2 x float> poison, float %i.as, i64 0
  %.sroa.0.4.vec.insert.i.i73 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i72, float %i.au, i64 1
  %.sroa.3.12.vec.insert.i.i74 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.av, i64 0
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 5 uses
  store <2 x float> %.sroa.0.4.vec.insert.i.i73, ptr %i.aw, align 16
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  store <2 x float> %.sroa.3.12.vec.insert.i.i74, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !14
  %foldExtExtBinop = fmul <2 x float> %i.an, %i.an
  %i.ax = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ay = extractelement <2 x float> %i.an, i64 0 ; 2 uses
  %i.az = call float @llvm.fmuladd.f32(float %i.ay, float %i.ay, float %i.ax)
  %i.ba = call noundef float @llvm.fmuladd.f32(float %i.aq, float %i.aq, float %i.az)
  %sqrt.i = call noundef float @llvm.sqrt.f32(float %i.ba) ; 2 uses
  %i.bb = fmul float %i.au, %i.au
  %i.bc = call float @llvm.fmuladd.f32(float %i.as, float %i.as, float %i.bb)
  %i.bd = call noundef float @llvm.fmuladd.f32(float %i.av, float %i.av, float %i.bc)
  %sqrt.i77 = call noundef float @llvm.sqrt.f32(float %i.bd)
  %i.be = fcmp ogt float %sqrt.i, %sqrt.i77
  br i1 %i.be, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK9btVector3eqERKS_.exit.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ar, ptr noundef nonnull align 16 dereferenceable(16) %i.aw, i64 16, i1 false), !tbaa.struct !38
  %i.bf = load <2 x float>, ptr %i.ar, align 16, !tbaa !9 ; 4 uses
  %foldExtExtBinop186 = fmul <2 x float> %i.bf, %i.bf
  %i.bg = extractelement <2 x float> %foldExtExtBinop186, i64 1
  %i.bh = extractelement <2 x float> %i.bf, i64 0 ; 2 uses
  %i.bi = call float @llvm.fmuladd.f32(float %i.bh, float %i.bh, float %i.bg)
  %i.bj = load float, ptr %.sroa.46.0..sroa_idx, align 8, !tbaa !9 ; 3 uses
  %i.bk = call noundef float @llvm.fmuladd.f32(float %i.bj, float %i.bj, float %i.bi)
  %sqrt.i.i78 = call noundef float @llvm.sqrt.f32(float %i.bk)
  br label %bb.d

bb.d:                                             ; preds = %_ZNK9btVector3eqERKS_.exit.thread, %bb.c
  %sqrt.i.i78.sink = phi float [ %sqrt.i.i78, %bb.c ], [ %sqrt.i, %_ZNK9btVector3eqERKS_.exit.thread ]
  %.sink180 = phi float [ %i.bj, %bb.c ], [ %i.aq, %_ZNK9btVector3eqERKS_.exit.thread ]
  %i.bl = phi <2 x float> [ %i.bf, %bb.c ], [ %i.an, %_ZNK9btVector3eqERKS_.exit.thread ]
  %i.bm = fdiv float 1.000000e+00, %sqrt.i.i78.sink ; 2 uses
  %i.bn = fmul float %.sink180, %i.bm
  %i.bo = insertelement <2 x float> poison, float %i.bm, i64 0
  %i.bp = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bq = fmul <2 x float> %i.bl, %i.bp
  store <2 x float> %i.bq, ptr %i.ar, align 16, !tbaa !9
  store float %i.bn, ptr %.sroa.46.0..sroa_idx, align 8, !tbaa !9
  %i.br = call noundef i32 @_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE(ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(25) %3) ; 3 uses
  %i.bs = icmp eq i32 %i.br, %i.a
  %i.bt = icmp eq i32 %i.br, %i.g
  %or.cond = or i1 %i.bs, %i.bt
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.bu = load <2 x float>, ptr %i.ar, align 16, !tbaa !9
  %i.bv = fneg <2 x float> %i.bu
  %i.bw = load float, ptr %.sroa.46.0..sroa_idx, align 8, !tbaa !9
  %i.bx = fneg float %i.bw
  %.sroa.3.12.vec.insert.i81 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bx, i64 0
  store <2 x float> %i.bv, ptr %6, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i81, ptr %i.by, align 8
  %i.bz = call noundef i32 @_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE(ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(25) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0165 = phi i32 [ %i.bz, %bb.e ], [ %i.br, %bb.d ] ; 7 uses
  %i.ca = icmp eq i32 %.0165, %i.a
  %i.cb = icmp eq i32 %.0165, %i.g
  %or.cond60 = or i1 %i.ca, %i.cb
  br i1 %or.cond60, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cc = sext i32 %.0165 to i64
  %i.cd = getelementptr inbounds [16 x i8], ptr %1, i64 %i.cc ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %i.cf = load <2 x float>, ptr %i.cd, align 4, !tbaa !9
  %i.cg = load <2 x float>, ptr %i.i, align 4, !tbaa !9
  %i.ch = fsub <2 x float> %i.cf, %i.cg           ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 2 uses
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !9
  %i.ck = load float, ptr %i.s, align 4, !tbaa !9
  %i.cl = fsub float %i.cj, %i.ck                 ; 3 uses
  %.sroa.3.12.vec.insert.i86 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cl, i64 0
  store <2 x float> %i.ch, ptr %i.ar, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i86, ptr %.sroa.46.0..sroa_idx, align 8, !tbaa !14
  %i.cm = extractelement <2 x float> %i.ch, i64 1
  %i.cn = load float, ptr %4, align 16, !tbaa !9  ; 2 uses
  %i.co = extractelement <2 x float> %i.ch, i64 0
  %i.cp = fneg float %i.cn
  %i.cq = fmul float %i.cm, %i.cp
  %i.cr = load <2 x float>, ptr %.sroa.4159.0..sroa_idx, align 4, !tbaa !9 ; 3 uses
  %i.cs = fneg <2 x float> %i.cr
  %i.ct = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cu = insertelement <2 x float> %i.ct, float %i.cl, i64 0
  %i.cv = fmul <2 x float> %i.cu, %i.cs
  %i.cw = insertelement <2 x float> %i.ct, float %i.cl, i64 1
  %i.cx = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cy = insertelement <2 x float> %i.cx, float %i.cn, i64 1
  %i.cz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cw, <2 x float> %i.cy, <2 x float> %i.cv) ; 4 uses
  %i.da = extractelement <2 x float> %i.cr, i64 0
  %i.db = call float @llvm.fmuladd.f32(float %i.co, float %i.da, float %i.cq) ; 3 uses
  %foldExtExtBinop188 = fmul <2 x float> %i.cz, %i.cz
  %i.dc = extractelement <2 x float> %foldExtExtBinop188, i64 1
  %i.dd = extractelement <2 x float> %i.cz, i64 0 ; 2 uses
  %i.de = call float @llvm.fmuladd.f32(float %i.dd, float %i.dd, float %i.dc)
  %i.df = call noundef float @llvm.fmuladd.f32(float %i.db, float %i.db, float %i.de)
  %sqrt.i.i.i = call noundef float @llvm.sqrt.f32(float %i.df)
  %i.dg = fdiv float 1.000000e+00, %sqrt.i.i.i    ; 2 uses
  %i.dh = insertelement <2 x float> poison, float %i.dg, i64 0
  %i.di = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dj = fmul <2 x float> %i.cz, %i.di
  %i.dk = fmul float %i.db, %i.dg
  %.sroa.8.8.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dk, i64 0
  store <2 x float> %i.dj, ptr %i.aw, align 16
  store <2 x float> %.sroa.8.8.vec.insert.i, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !14
  %i.dl = call noundef i32 @_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE(ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(25) %3) ; 4 uses
  %i.dm = icmp eq i32 %i.dl, %i.a
  %i.dn = icmp eq i32 %i.dl, %i.g
  %or.cond61 = or i1 %i.dm, %i.dn
  %i.do = icmp eq i32 %i.dl, %.0165
  %or.cond63 = or i1 %i.do, %or.cond61
  br i1 %or.cond63, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.dp = load <2 x float>, ptr %i.aw, align 16, !tbaa !9
  %i.dq = fneg <2 x float> %i.dp
  %i.dr = load float, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !9
  %i.ds = fneg float %i.dr
  %.sroa.3.12.vec.insert.i100 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ds, i64 0
  store <2 x float> %i.dq, ptr %7, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %7, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i100, ptr %i.dt, align 8
  %i.du = call noundef i32 @_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE(ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(25) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.0 = phi i32 [ %i.du, %bb.h ], [ %i.dl, %bb.g ] ; 6 uses
  %i.dv = icmp eq i32 %.0, %i.a
  %i.dw = icmp eq i32 %.0, %i.g
  %or.cond64 = or i1 %i.dv, %i.dw
  %i.dx = icmp eq i32 %.0, %.0165
  %or.cond66 = or i1 %i.dx, %or.cond64
  br i1 %or.cond66, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dy = sext i32 %.0 to i64
  %i.dz = getelementptr inbounds [16 x i8], ptr %1, i64 %i.dy ; 3 uses
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !9
  %i.eb = load float, ptr %i.i, align 4, !tbaa !9 ; 3 uses
  %i.ec = fsub float %i.ea, %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !9
  %i.ef = load float, ptr %i.n, align 4, !tbaa !9 ; 3 uses
  %i.eg = fsub float %i.ee, %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !9
  %i.ej = load float, ptr %i.s, align 4, !tbaa !9 ; 3 uses
  %i.ek = fsub float %i.ei, %i.ej
  %i.el = load float, ptr %i.k, align 4, !tbaa !9
  %i.em = fsub float %i.el, %i.eb                 ; 2 uses
  %i.en = load float, ptr %i.p, align 4, !tbaa !9
  %i.eo = fsub float %i.en, %i.ef                 ; 2 uses
  %i.ep = load float, ptr %i.u, align 4, !tbaa !9
  %i.eq = fsub float %i.ep, %i.ej                 ; 2 uses
  %i.er = load float, ptr %i.cd, align 4, !tbaa !9
  %i.es = fsub float %i.er, %i.eb                 ; 2 uses
  %i.et = load float, ptr %i.ce, align 4, !tbaa !9
  %i.eu = fsub float %i.et, %i.ef                 ; 2 uses
  %i.ev = load float, ptr %i.ci, align 4, !tbaa !9
  %i.ew = fsub float %i.ev, %i.ej                 ; 2 uses
  %i.ex = fneg float %i.eu
  %i.ey = fmul float %i.eq, %i.ex
  %i.ez = call float @llvm.fmuladd.f32(float %i.eo, float %i.ew, float %i.ey)
  %i.fa = fneg float %i.ew
  %i.fb = fmul float %i.em, %i.fa
  %i.fc = call float @llvm.fmuladd.f32(float %i.eq, float %i.es, float %i.fb)
  %i.fd = fneg float %i.es
  %i.fe = fmul float %i.eo, %i.fd
  %i.ff = call float @llvm.fmuladd.f32(float %i.em, float %i.eu, float %i.fe)
  %i.fg = fmul float %i.eg, %i.fc
  %i.fh = call float @llvm.fmuladd.f32(float %i.ec, float %i.ez, float %i.fg)
  %i.fi = call noundef float @llvm.fmuladd.f32(float %i.ek, float %i.ff, float %i.fh)
  %i.fj = fcmp olt float %i.fi, 0.000000e+00
  br i1 %i.fj, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.f, %bb.j, %bb.k, %bb.i, %bb.a
  %.sroa.0162.2 = phi i32 [ -1, %bb.b ], [ -1, %bb.a ], [ -1, %bb.f ], [ -1, %bb.i ], [ %i.a, %bb.k ], [ %i.a, %bb.j ]
  %.sroa.5163.2 = phi i32 [ -1, %bb.b ], [ -1, %bb.a ], [ -1, %bb.f ], [ -1, %bb.i ], [ %i.g, %bb.k ], [ %i.g, %bb.j ]
  %.sroa.9164.2 = phi i32 [ -1, %bb.b ], [ -1, %bb.a ], [ -1, %bb.f ], [ -1, %bb.i ], [ %.0, %bb.k ], [ %.0165, %bb.j ]
  %.sroa.14.2 = phi i32 [ -1, %bb.b ], [ -1, %bb.a ], [ -1, %bb.f ], [ -1, %bb.i ], [ %.0165, %bb.k ], [ %.0, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %.sroa.5163.0.insert.ext = zext i32 %.sroa.5163.2 to i64
  %.sroa.5163.0.insert.shift = shl nuw i64 %.sroa.5163.0.insert.ext, 32
  %.sroa.0162.0.insert.ext = zext i32 %.sroa.0162.2 to i64
  %.sroa.0162.0.insert.insert = or disjoint i64 %.sroa.5163.0.insert.shift, %.sroa.0162.0.insert.ext
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0162.0.insert.insert, 0
  %.sroa.14.8.insert.ext = zext i32 %.sroa.14.2 to i64
  %.sroa.14.8.insert.shift = shl nuw i64 %.sroa.14.8.insert.ext, 32
  %.sroa.9164.8.insert.ext = zext i32 %.sroa.9164.2 to i64
  %.sroa.9164.8.insert.insert = or disjoint i64 %.sroa.14.8.insert.shift, %.sroa.9164.8.insert.ext
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.9164.8.insert.insert, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE(ptr noundef %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(25) %3) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = icmp sgt i32 %1, 0                       ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !78   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %wide.trip.count.i = zext nneg i32 %1 to i64    ; 3 uses
  %i.f = load <2 x float>, ptr %i.d, align 4      ; 7 uses
  %i.g = extractelement <2 x float> %i.f, i64 1   ; 2 uses
  %i.h = fmul float %i.g, 0.000000e+00
  %i.i = load float, ptr %2, align 4              ; 7 uses
  %i.j = extractelement <2 x float> %i.f, i64 0   ; 4 uses
  %i.k = fmul float %i.j, -0.000000e+00           ; 2 uses
  %i.l = fmul float %i.i, -0.000000e+00
  %i.m = fadd float %i.k, %i.i                    ; 2 uses
  %i.n = fsub float %i.j, %i.h                    ; 2 uses
  %i.o = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.p = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.q = insertelement <2 x float> poison, float %i.n, i64 0
  %i.r = tail call float @llvm.fmuladd.f32(float %i.i, float 0.000000e+00, float %i.k) ; 2 uses
  %i.s = insertelement <2 x float> poison, float %i.r, i64 0
  %i.t = insertelement <2 x float> %i.s, float %i.m, i64 1 ; 2 uses
  %i.u = fneg float %i.j
  %i.v = insertelement <2 x float> %i.o, float %i.i, i64 1
  %i.w = fneg <2 x float> %i.v                    ; 3 uses
  %4 = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %5 = insertelement <2 x float> %4, float %i.l, i64 1
  %6 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.p, <2 x float> zeroinitializer, <2 x float> %5) ; 4 uses
  %7 = fmul <2 x float> %6, %6
  %8 = extractelement <2 x float> %i.w, i64 0
  %9 = tail call float @llvm.fmuladd.f32(float %i.j, float 0.000000e+00, float %8) ; 2 uses
  %i.x = insertelement <2 x float> %i.q, float %9, i64 1 ; 2 uses
  %i.y = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.x, <2 x float> %i.x, <2 x float> %7)
  %i.z = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> %i.t, <2 x float> %i.y)
  %i.aa = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.z) ; 2 uses
  %i.ab = extractelement <2 x float> %i.aa, i64 0 ; 2 uses
  %i.ac = extractelement <2 x float> %i.aa, i64 1 ; 2 uses
  %i.ad = fcmp ogt float %i.ab, %i.ac             ; 3 uses
  %sqrt.i.sqrt.i8.i = select i1 %i.ad, float %i.ab, float %i.ac
  %i.ae = insertelement <2 x i1> poison, i1 %i.ad, i64 0
  %i.af = shufflevector <2 x i1> %i.ae, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ag = insertelement <2 x float> %6, float %i.r, i64 1
  %i.ah = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ai = insertelement <2 x float> %i.ah, float %i.m, i64 1
  %i.aj = select <2 x i1> %i.af, <2 x float> %i.ag, <2 x float> %i.ai
  %..i = select i1 %i.ad, float %i.n, float %9
  %i.ak = fdiv float 1.000000e+00, %sqrt.i.sqrt.i8.i ; 2 uses
  %i.al = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = fmul <2 x float> %i.aj, %i.am           ; 6 uses
  %i.ao = fmul float %..i, %i.ak                  ; 4 uses
  %i.ap = extractelement <2 x float> %i.an, i64 1
  %i.aq = fmul float %i.ap, %i.u
  %i.ar = extractelement <2 x float> %i.an, i64 0
  %i.as = tail call float @llvm.fmuladd.f32(float %i.ar, float %i.g, float %i.aq) ; 2 uses
  %i.at = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.au = insertelement <2 x float> %i.at, float %i.ao, i64 0
  %i.av = fmul <2 x float> %i.au, %i.w
  %i.aw = shufflevector <2 x float> %i.an, <2 x float> %i.f, <2 x i32> <i32 1, i32 2>
  %i.ax = insertelement <2 x float> poison, float %i.i, i64 0
  %i.ay = insertelement <2 x float> %i.ax, float %i.ao, i64 1
  %i.az = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aw, <2 x float> %i.ay, <2 x float> %i.av) ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.thread208
  br i1 %i.a, label %.lr.ph.i, label %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.ba = load float, ptr %2, align 4
  %i.bb = load float, ptr %i.d, align 4
  %i.bc = load float, ptr %i.e, align 4
  %i.bd = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.be = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bf = insertelement <2 x float> poison, float %i.ba, i64 0
  %i.bg = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bh = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.g ] ; 4 uses
  %.01314.i = phi i32 [ -1, %.lr.ph.i ], [ %.1.i, %bb.g ] ; 4 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !54
  %.not.i = icmp eq i32 %i.bk, 0
  br i1 %.not.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bl = icmp eq i32 %.01314.i, -1
  br i1 %i.bl, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv.i ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !9
  %i.bp = sext i32 %.01314.i to i64
  %i.bq = getelementptr inbounds [16 x i8], ptr %0, i64 %i.bp ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load float, ptr %i.br, align 4, !tbaa !9
  %i.bt = load <2 x float>, ptr %i.bm, align 4, !tbaa !9 ; 2 uses
  %i.bu = load <2 x float>, ptr %i.bq, align 4, !tbaa !9 ; 2 uses
  %i.bv = shufflevector <2 x float> %i.bt, <2 x float> %i.bu, <2 x i32> <i32 1, i32 3>
  %i.bw = fmul <2 x float> %i.bi, %i.bv
  %i.bx = shufflevector <2 x float> %i.bt, <2 x float> %i.bu, <2 x i32> <i32 0, i32 2>
  %i.by = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bx, <2 x float> %i.bg, <2 x float> %i.bw)
  %i.bz = insertelement <2 x float> poison, float %i.bo, i64 0
  %i.ca = insertelement <2 x float> %i.bz, float %i.bs, i64 1
  %i.cb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ca, <2 x float> %i.be, <2 x float> %i.by) ; 2 uses
  %i.cc = extractelement <2 x float> %i.cb, i64 0
  %i.cd = extractelement <2 x float> %i.cb, i64 1
  %i.ce = fcmp ogt float %i.cc, %i.cd
  br i1 %i.ce, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.cf = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %.1.i = phi i32 [ %i.cf, %bb.f ], [ %.01314.i, %bb.e ], [ %.01314.i, %bb.c ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit, label %bb.c, !llvm.loop !82

_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit: ; preds = %bb.g, %bb.b
  %.013.lcssa.i = phi i32 [ -1, %bb.b ], [ %.1.i, %bb.g ] ; 7 uses
  %i.cg = sext i32 %.013.lcssa.i to i64
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.cg ; 3 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !54
  %i.cj = icmp eq i32 %i.ci, 3
  br i1 %i.cj, label %.critedge, label %.preheader

.preheader:                                       ; preds = %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit
  %or.cond79198 = icmp eq i32 %.013.lcssa.i, -1
  br label %bb.h

bb.h:                                             ; preds = %.preheader, %.thread193
  %.063221.int = phi i32 [ 0, %.preheader ], [ %.int, %.thread193 ] ; 5 uses
  %.064220 = phi i32 [ -1, %.preheader ], [ %.013.lcssa.i100, %.thread193 ] ; 4 uses
  %indvar.conv = uitofp nneg i32 %.063221.int to float ; 5 uses
  %i.ck = fmul nnan float %indvar.conv, f0x3C8EFA35 ; 2 uses
  %i.cl = tail call noundef float @sinf(float noundef %i.ck) #19 ; 2 uses
  %i.cm = tail call noundef float @cosf(float noundef %i.ck) #19 ; 2 uses
  %i.cn = fmul float %i.ao, %i.cl
  %i.co = fmul float %i.as, %i.cm
  %i.cp = fadd float %i.cn, %i.co
  %i.cq = fmul float %i.cp, 2.500000e-02
  %i.cr = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.cs = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ct = fmul <2 x float> %i.an, %i.cs
  %i.cu = insertelement <2 x float> poison, float %i.cm, i64 0
  %i.cv = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cw = fmul <2 x float> %i.az, %i.cv
  %i.cx = fadd <2 x float> %i.ct, %i.cw
  %i.cy = fmul <2 x float> %i.cx, splat (float 2.500000e-02)
  %i.cz = fadd float %i.i, %i.cq
  %i.da = fadd <2 x float> %i.f, %i.cy            ; 2 uses
  br i1 %i.a, label %.lr.ph.i101.preheader, label %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit109

.lr.ph.i101.preheader:                            ; preds = %bb.h
  %i.db = shufflevector <2 x float> %i.da, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dc = insertelement <2 x float> poison, float %i.cz, i64 0
  %i.dd = shufflevector <2 x float> %i.dc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.de = shufflevector <2 x float> %i.da, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  br label %.lr.ph.i101

.lr.ph.i101:                                      ; preds = %.lr.ph.i101.preheader, %bb.l
  %indvars.iv.i103 = phi i64 [ %indvars.iv.next.i107, %bb.l ], [ 0, %.lr.ph.i101.preheader ] ; 4 uses
  %.01314.i104 = phi i32 [ %.1.i106, %bb.l ], [ -1, %.lr.ph.i101.preheader ] ; 4 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i103
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !54
  %.not.i105 = icmp eq i32 %i.dg, 0
  br i1 %.not.i105, label %bb.l, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i101
  %i.dh = icmp eq i32 %.01314.i104, -1
  br i1 %i.dh, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv.i103 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !9
  %i.dl = sext i32 %.01314.i104 to i64
  %i.dm = getelementptr inbounds [16 x i8], ptr %0, i64 %i.dl ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load float, ptr %i.dn, align 4, !tbaa !9
  %i.dp = load <2 x float>, ptr %i.di, align 4, !tbaa !9 ; 2 uses
  %i.dq = load <2 x float>, ptr %i.dm, align 4, !tbaa !9 ; 2 uses
  %i.dr = shufflevector <2 x float> %i.dp, <2 x float> %i.dq, <2 x i32> <i32 1, i32 3>
  %i.ds = fmul <2 x float> %i.db, %i.dr
  %i.dt = shufflevector <2 x float> %i.dp, <2 x float> %i.dq, <2 x i32> <i32 0, i32 2>
  %i.du = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dt, <2 x float> %i.dd, <2 x float> %i.ds)
  %i.dv = insertelement <2 x float> poison, float %i.dk, i64 0
  %i.dw = insertelement <2 x float> %i.dv, float %i.do, i64 1
  %i.dx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dw, <2 x float> %i.de, <2 x float> %i.du) ; 2 uses
  %i.dy = extractelement <2 x float> %i.dx, i64 0
  %i.dz = extractelement <2 x float> %i.dx, i64 1
  %i.ea = fcmp ogt float %i.dy, %i.dz
  br i1 %i.ea, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.eb = trunc nuw nsw i64 %indvars.iv.i103 to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %.lr.ph.i101
  %.1.i106 = phi i32 [ %i.eb, %bb.k ], [ %.01314.i104, %bb.j ], [ %.01314.i104, %.lr.ph.i101 ] ; 2 uses
  %indvars.iv.next.i107 = add nuw nsw i64 %indvars.iv.i103, 1 ; 2 uses
  %exitcond.not.i108 = icmp eq i64 %indvars.iv.next.i107, %wide.trip.count.i
  br i1 %exitcond.not.i108, label %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit109, label %.lr.ph.i101, !llvm.loop !82

_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit109: ; preds = %bb.l, %bb.h
  %.013.lcssa.i100 = phi i32 [ -1, %bb.h ], [ %.1.i106, %bb.l ] ; 3 uses
  %i.ec = icmp eq i32 %.064220, %.013.lcssa.i
  %i.ed = icmp eq i32 %.013.lcssa.i100, %.013.lcssa.i
  %or.cond = and i1 %i.ec, %i.ed
  br i1 %or.cond, label %.critedge.sink.split, label %bb.m

bb.m:                                             ; preds = %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit109
  %.not = icmp eq i32 %.064220, -1
  %.not77 = icmp eq i32 %.064220, %.013.lcssa.i100
  %or.cond78 = or i1 %.not, %.not77
  br i1 %or.cond78, label %.thread193, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ee = add nsw i32 %.063221.int, -40
  %i.ef = sitofp i32 %i.ee to float               ; 3 uses
  %i.eg = fcmp ugt float %i.ef, %indvar.conv
  br i1 %i.eg, label %.thread193, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n
  br i1 %i.a, label %.lr.ph.i136.us, label %bb.o

bb.o:                                             ; preds = %.lr.ph
  %i.eh = fmul nnan float %i.ef, f0x3C8EFA35      ; 2 uses
  %i.ei = tail call noundef float @sinf(float noundef %i.eh) #19 ; 0 uses
  %i.ej = tail call noundef float @cosf(float noundef %i.eh) #19 ; 0 uses
  %i.ek = add nsw i32 %.063221.int, -35
  %i.el = sitofp i32 %i.ek to float               ; 2 uses
  %i.em = fcmp ugt float %i.el, %indvar.conv
  br i1 %i.em, label %.thread193, label %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit144.thread

.lr.ph.i136.us:                                   ; preds = %.lr.ph, %bb.u
  %.0218.us = phi float [ %i.gh, %bb.u ], [ %i.ef, %.lr.ph ] ; 2 uses
  %.062217.us = phi i32 [ %.1.i141.us, %bb.u ], [ %.064220, %.lr.ph ]
  %i.en = fmul float %.0218.us, f0x3C8EFA35       ; 2 uses
  %i.eo = tail call noundef float @sinf(float noundef %i.en) #19 ; 2 uses
  %i.ep = tail call noundef float @cosf(float noundef %i.en) #19 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN11HullLibrary11calchullgenEP9btVector3ii:bb.a
  %i.hb = sext i32 %i.ha to i64
  %i.hc = getelementptr inbounds [16 x i8], ptr %1, i64 %i.hb ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !54
  %i.hf = sext i32 %i.he to i64
  %i.hg = getelementptr inbounds [16 x i8], ptr %1, i64 %i.hf ; 2 uses
  %i.hh = load float, ptr %i.hc, align 4, !tbaa !9
  %i.hi = load float, ptr %i.gy, align 4, !tbaa !9
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hc, i64 4
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gy, i64 4
  %i.hl = load float, ptr %i.hg, align 4, !tbaa !9
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hg, i64 4
  %i.hn = load <2 x float>, ptr %i.hj, align 4, !tbaa !9 ; 3 uses
  %i.ho = load <2 x float>, ptr %i.hk, align 4, !tbaa !9 ; 2 uses
  %i.hp = fsub <2 x float> %i.hn, %i.ho           ; 2 uses
  %i.hq = shufflevector <2 x float> %i.hn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.hr = insertelement <2 x float> %i.hq, float %i.hh, i64 1 ; 2 uses
  %i.hs = shufflevector <2 x float> %i.ho, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ht = insertelement <2 x float> %i.hs, float %i.hi, i64 1
  %i.hu = fsub <2 x float> %i.hr, %i.ht           ; 2 uses
  %i.hv = load <2 x float>, ptr %i.hm, align 4, !tbaa !9 ; 2 uses
  %i.hw = shufflevector <2 x float> %i.hv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.hx = insertelement <2 x float> %i.hw, float %i.hl, i64 1
  %i.hy = fsub <2 x float> %i.hx, %i.hr           ; 2 uses
  %i.hz = fsub <2 x float> %i.hv, %i.hn           ; 2 uses
  %i.ia = fneg <2 x float> %i.hz
  %i.ib = fmul <2 x float> %i.hu, %i.ia
  %i.ic = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hp, <2 x float> %i.hy, <2 x float> %i.ib) ; 4 uses
  %i.id = extractelement <2 x float> %i.hy, i64 1
  %i.ie = fneg float %i.id
  %i.if = extractelement <2 x float> %i.hp, i64 0
  %i.ig = fmul float %i.if, %i.ie
  %i.ih = extractelement <2 x float> %i.hu, i64 1
  %i.ii = extractelement <2 x float> %i.hz, i64 0
  %i.ij = call float @llvm.fmuladd.f32(float %i.ih, float %i.ii, float %i.ig) ; 3 uses
  %foldExtExtBinop499 = fmul <2 x float> %i.ic, %i.ic
  %i.ik = extractelement <2 x float> %foldExtExtBinop499, i64 1
  %i.il = extractelement <2 x float> %i.ic, i64 0 ; 2 uses
  %i.im = call float @llvm.fmuladd.f32(float %i.il, float %i.il, float %i.ik)
  %i.in = call noundef float @llvm.fmuladd.f32(float %i.ij, float %i.ij, float %i.im) ; 2 uses
  %i.io = fcmp oeq float %i.in, 0.000000e+00
  br i1 %i.io, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.in)
  %i.ip = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.iq = insertelement <2 x float> poison, float %i.ip, i64 0
  %i.ir = shufflevector <2 x float> %i.iq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.is = fmul <2 x float> %i.ic, %i.ir
  %i.it = fmul float %i.ij, %i.ip
  %.sroa.3.12.vec.insert.i13.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.it, i64 0
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sroa.028.0.i = phi <2 x float> [ %i.is, %bb.w ], [ <float 1.000000e+00, float 0.000000e+00>, %bb.v ]
  %.sroa.4.0.i = phi <2 x float> [ %.sroa.3.12.vec.insert.i13.i, %bb.w ], [ zeroinitializer, %bb.v ]
  store <2 x float> %.sroa.028.0.i, ptr %6, align 8
  store <2 x float> %.sroa.4.0.i, ptr %i.gr, align 8
  %i.iu = invoke noundef i32 @_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE(ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(25) %5)
          to label %bb.y unwind label %bb.ad      ; 2 uses

bb.y:                                             ; preds = %bb.x
  %i.iv = getelementptr inbounds nuw i8, ptr %i.gv, i64 28
  store i32 %i.iu, ptr %i.iv, align 4, !tbaa !69
  %i.iw = sext i32 %i.iu to i64
  %i.ix = getelementptr inbounds [16 x i8], ptr %1, i64 %i.iw ; 2 uses
  %i.iy = load i32, ptr %i.gv, align 4, !tbaa !54
  %i.iz = sext i32 %i.iy to i64
  %i.ja = getelementptr inbounds [16 x i8], ptr %1, i64 %i.iz ; 2 uses
  %i.jb = load float, ptr %i.ix, align 4, !tbaa !9
  %i.jc = load float, ptr %i.ja, align 4, !tbaa !9
  %i.jd = fsub float %i.jb, %i.jc
  %i.je = getelementptr inbounds nuw i8, ptr %i.ix, i64 4
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ja, i64 4
  %i.jg = load <2 x float>, ptr %i.je, align 4, !tbaa !9
  %i.jh = load <2 x float>, ptr %i.jf, align 4, !tbaa !9
  %i.ji = fsub <2 x float> %i.jg, %i.jh           ; 2 uses
  %i.jj = load float, ptr %6, align 8, !tbaa !9
  %i.jk = load float, ptr %i.gs, align 4, !tbaa !9
  %i.jl = extractelement <2 x float> %i.ji, i64 0
  %i.jm = fmul float %i.jl, %i.jk
  %i.jn = call float @llvm.fmuladd.f32(float %i.jj, float %i.jd, float %i.jm)
  %i.jo = load float, ptr %i.gr, align 8, !tbaa !9
  %i.jp = extractelement <2 x float> %i.ji, i64 1
  %i.jq = call noundef float @llvm.fmuladd.f32(float %i.jo, float %i.jp, float %i.jn)
  %i.jr = getelementptr inbounds nuw i8, ptr %i.gv, i64 32
  store float %i.jq, ptr %i.jr, align 4, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %indvars.iv.next422 = add nuw nsw i64 %indvars.iv421, 1 ; 2 uses
  %i.js = load i32, ptr %i.gn, align 4, !tbaa !71
  %i.jt = sext i32 %i.js to i64
  %i.ju = icmp slt i64 %indvars.iv.next422, %i.jt
  br i1 %i.ju, label %bb.v, label %._crit_edge401, !llvm.loop !101

bb.z:                                             ; preds = %bb.q
  %i.jv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.aa:                                            ; preds = %bb.r
  %i.jw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.ab:                                            ; preds = %bb.s
  %i.jx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.ac:                                            ; preds = %bb.t
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.ad:                                            ; preds = %bb.x
  %i.jz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.bp

._crit_edge401:                                   ; preds = %bb.y, %bb.u
  %i.ka = add nsw i32 %3, -4
  %spec.select = select i1 %i.b, i32 999999996, i32 %i.ka ; 2 uses
  %i.kb = icmp sgt i32 %spec.select, 0
  br i1 %i.kb, label %.lr.ph417, label %.critedge

.lr.ph417:                                        ; preds = %._crit_edge401
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.kd = fmul float %i.et, f0x3C23D70A           ; 2 uses
  %i.ke = fmul float %i.et, %i.et
  %i.kf = fmul float %i.ke, 1.000000e-01
  %i.kg = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %7, i64 4
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph417, %.thread
  %.0125415 = phi i32 [ %spec.select, %.lr.ph417 ], [ %i.tw, %.thread ] ; 2 uses
  %i.ki = load i32, ptr %i.gn, align 4, !tbaa !71 ; 4 uses
  %i.kj = icmp sgt i32 %i.ki, 0
  call void @llvm.assume(i1 %i.kj)
  %i.kk = load ptr, ptr %i.kc, align 8            ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.ki to i64 ; 2 uses
  %xtraiter520 = and i64 %wide.trip.count.i, 1
  %i.kl = icmp eq i32 %i.ki, 1
  br i1 %i.kl, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.ae
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge15.i.1, %.new
  %indvars.iv.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.1, %._crit_edge15.i.1 ] ; 3 uses
  %.013.i = phi ptr [ null, %.new ], [ %.1.i.1, %._crit_edge15.i.1 ] ; 4 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %._crit_edge15.i.1 ]
  %.not.i = icmp eq ptr %.013.i, null
  %.phi.trans.insert.i = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %indvars.iv.i
  %.pre.i224 = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !60 ; 4 uses
  br i1 %.not.i, label %._crit_edge15.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.not11.i = icmp eq ptr %.pre.i224, null
  br i1 %.not11.i, label %._crit_edge15.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.km = getelementptr inbounds nuw i8, ptr %.013.i, i64 32
  %i.kn = load float, ptr %i.km, align 4, !tbaa !70
  %i.ko = getelementptr inbounds nuw i8, ptr %.pre.i224, i64 32
  %i.kp = load float, ptr %i.ko, align 4, !tbaa !70
  %i.kq = fcmp olt float %i.kn, %i.kp
  br i1 %i.kq, label %bb.ai, label %._crit_edge15.i

bb.ai:                                            ; preds = %bb.ah
  br label %._crit_edge15.i

._crit_edge15.i:                                  ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af
  %.1.i = phi ptr [ %.013.i, %bb.ag ], [ %.013.i, %bb.ah ], [ %.pre.i224, %bb.ai ], [ %.pre.i224, %bb.af ] ; 4 uses
  %.not.i.1 = icmp eq ptr %.1.i, null
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %indvars.iv.i
  %.phi.trans.insert.i.1 = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  %.pre.i224.1 = load ptr, ptr %.phi.trans.insert.i.1, align 8, !tbaa !60 ; 4 uses
  br i1 %.not.i.1, label %._crit_edge15.i.1, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge15.i
  %.not11.i.1 = icmp eq ptr %.pre.i224.1, null
  br i1 %.not11.i.1, label %._crit_edge15.i.1, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ks = getelementptr inbounds nuw i8, ptr %.1.i, i64 32
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !70
  %i.ku = getelementptr inbounds nuw i8, ptr %.pre.i224.1, i64 32
  %i.kv = load float, ptr %i.ku, align 4, !tbaa !70
  %i.kw = fcmp olt float %i.kt, %i.kv
  br i1 %i.kw, label %bb.al, label %._crit_edge15.i.1

bb.al:                                            ; preds = %bb.ak
  br label %._crit_edge15.i.1

._crit_edge15.i.1:                                ; preds = %bb.al, %bb.ak, %bb.aj, %._crit_edge15.i
  %.1.i.1 = phi ptr [ %.1.i, %bb.aj ], [ %.1.i, %bb.ak ], [ %.pre.i224.1, %bb.al ], [ %.pre.i224.1, %._crit_edge15.i ] ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.af, !llvm.loop !77

.unr-lcssa:                                       ; preds = %._crit_edge15.i.1
  %lcmp.mod521.not = icmp eq i64 %xtraiter520, 0
  br i1 %lcmp.mod521.not, label %._crit_edge15.i.epil, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.ae
  %indvars.iv.i.epil.init = phi i64 [ 0, %bb.ae ], [ %indvars.iv.next.i.1, %.unr-lcssa ]
  %.013.i.epil.init = phi ptr [ null, %bb.ae ], [ %.1.i.1, %.unr-lcssa ] ; 4 uses
  %lcmp.mod523 = trunc i32 %i.ki to i1
  call void @llvm.assume(i1 %lcmp.mod523)
  %.not.i.epil = icmp eq ptr %.013.i.epil.init, null
  %.phi.trans.insert.i.epil = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %indvars.iv.i.epil.init
  %.pre.i224.epil = load ptr, ptr %.phi.trans.insert.i.epil, align 8, !tbaa !60 ; 4 uses
  br i1 %.not.i.epil, label %._crit_edge15.i.epil, label %bb.am

bb.am:                                            ; preds = %.epil.preheader
  %.not11.i.epil = icmp eq ptr %.pre.i224.epil, null
  br i1 %.not11.i.epil, label %._crit_edge15.i.epil, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.kx = getelementptr inbounds nuw i8, ptr %.013.i.epil.init, i64 32
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !70
  %i.kz = getelementptr inbounds nuw i8, ptr %.pre.i224.epil, i64 32
  %i.la = load float, ptr %i.kz, align 4, !tbaa !70
  %i.lb = fcmp olt float %i.ky, %i.la
  br i1 %i.lb, label %bb.ao, label %._crit_edge15.i.epil

bb.ao:                                            ; preds = %bb.an
  br label %._crit_edge15.i.epil

._crit_edge15.i.epil:                             ; preds = %.epil.preheader, %bb.am, %bb.an, %bb.ao, %.unr-lcssa
  %.1.i.lcssa = phi ptr [ %.1.i.1, %.unr-lcssa ], [ %.013.i.epil.init, %bb.am ], [ %.013.i.epil.init, %bb.an ], [ %.pre.i224.epil, %bb.ao ], [ %.pre.i224.epil, %.epil.preheader ] ; 3 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %.1.i.lcssa, i64 32
  %i.ld = load float, ptr %i.lc, align 4, !tbaa !70
  %i.le = fcmp ule float %i.ld, %i.et
  %.not365 = icmp eq ptr %.1.i.lcssa, null
  %.not = or i1 %i.le, %.not365
  br i1 %.not, label %.critedge, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge15.i.epil
  %i.lf = getelementptr inbounds nuw i8, ptr %.1.i.lcssa, i64 28
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !69 ; 6 uses
  %i.lh = sext i32 %i.lg to i64                   ; 2 uses
  %i.li = getelementptr inbounds [4 x i8], ptr %i.du, i64 %i.lh
  store i32 1, ptr %i.li, align 4, !tbaa !54
  %i.lj = load i32, ptr %i.gn, align 4, !tbaa !71 ; 2 uses
  %.not132402 = icmp eq i32 %i.lj, 0
  br i1 %.not132402, label %.thread, label %.lr.ph404

.lr.ph404:                                        ; preds = %bb.ap
  %i.lk = getelementptr inbounds [16 x i8], ptr %1, i64 %i.lh ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 4
  %i.lm = sext i32 %i.lj to i64
  br label %bb.aq

bb.aq:                                            ; preds = %.lr.ph404, %.backedge370
  %indvars.iv424 = phi i64 [ %i.lm, %.lr.ph404 ], [ %indvars.iv.next425, %.backedge370 ]
  %indvars.iv.next425 = add nsw i64 %indvars.iv424, -1 ; 3 uses
  %i.ln = load ptr, ptr %i.kc, align 8, !tbaa !55
  %i.lo = getelementptr inbounds [8 x i8], ptr %i.ln, i64 %indvars.iv.next425
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !60 ; 5 uses
  %.not146 = icmp eq ptr %i.lp, null
  br i1 %.not146, label %.backedge370, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.sroa.0280.0.copyload = load i32, ptr %i.lp, align 4, !tbaa !54
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lp, i64 4
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !54
  %.sroa.6281.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  %.sroa.6281.0.copyload = load i32, ptr %.sroa.6281.0..sroa_idx, align 4, !tbaa !54
  %i.lq = sext i32 %.sroa.0280.0.copyload to i64
  %i.lr = getelementptr inbounds [16 x i8], ptr %1, i64 %i.lq ; 2 uses
  %i.ls = sext i32 %.sroa.5.0.copyload to i64
  %i.lt = getelementptr inbounds [16 x i8], ptr %1, i64 %i.ls ; 2 uses
  %i.lu = sext i32 %.sroa.6281.0.copyload to i64
  %i.lv = getelementptr inbounds [16 x i8], ptr %1, i64 %i.lu ; 2 uses
  %i.lw = load float, ptr %i.lt, align 4, !tbaa !9
  %i.lx = load float, ptr %i.lr, align 4, !tbaa !9 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lt, i64 4
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lr, i64 4
  %i.ma = load float, ptr %i.lv, align 4, !tbaa !9
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lv, i64 4
  %i.mc = load <2 x float>, ptr %i.ly, align 4, !tbaa !9 ; 3 uses
  %i.md = load <2 x float>, ptr %i.lz, align 4, !tbaa !9 ; 3 uses
  %i.me = fsub <2 x float> %i.mc, %i.md           ; 2 uses
  %i.mf = shufflevector <2 x float> %i.mc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.mg = insertelement <2 x float> %i.mf, float %i.lw, i64 1 ; 2 uses
  %i.mh = shufflevector <2 x float> %i.md, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.mi = insertelement <2 x float> %i.mh, float %i.lx, i64 1
  %i.mj = fsub <2 x float> %i.mg, %i.mi           ; 2 uses
  %i.mk = load <2 x float>, ptr %i.mb, align 4, !tbaa !9 ; 2 uses
  %i.ml = shufflevector <2 x float> %i.mk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.mm = insertelement <2 x float> %i.ml, float %i.ma, i64 1
  %i.mn = fsub <2 x float> %i.mm, %i.mg           ; 2 uses
  %i.mo = fsub <2 x float> %i.mk, %i.mc           ; 2 uses
  %i.mp = fneg <2 x float> %i.mo
  %i.mq = fmul <2 x float> %i.mj, %i.mp
  %i.mr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.me, <2 x float> %i.mn, <2 x float> %i.mq) ; 4 uses
  %i.ms = extractelement <2 x float> %i.mn, i64 1
  %i.mt = fneg float %i.ms
  %i.mu = extractelement <2 x float> %i.me, i64 0
  %i.mv = fmul float %i.mu, %i.mt
  %i.mw = extractelement <2 x float> %i.mj, i64 1
  %i.mx = extractelement <2 x float> %i.mo, i64 0
  %i.my = call float @llvm.fmuladd.f32(float %i.mw, float %i.mx, float %i.mv) ; 3 uses
  %foldExtExtBinop501 = fmul <2 x float> %i.mr, %i.mr
  %i.mz = extractelement <2 x float> %foldExtExtBinop501, i64 1
  %i.na = extractelement <2 x float> %i.mr, i64 0 ; 2 uses
  %i.nb = call float @llvm.fmuladd.f32(float %i.na, float %i.na, float %i.mz)
  %i.nc = call noundef float @llvm.fmuladd.f32(float %i.my, float %i.my, float %i.nb) ; 2 uses
  %i.nd = fcmp oeq float %i.nc, 0.000000e+00
  br i1 %i.nd, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %sqrt.i.i.i = call noundef float @llvm.sqrt.f32(float %i.nc)
  %i.ne = fdiv float 1.000000e+00, %sqrt.i.i.i    ; 2 uses
  %i.nf = insertelement <2 x float> poison, float %i.ne, i64 0
  %i.ng = shufflevector <2 x float> %i.nf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nh = fmul <2 x float> %i.mr, %i.ng
  %i.ni = fmul float %i.my, %i.ne
  %.sroa.3.12.vec.insert.i13.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ni, i64 0
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.sroa.028.0.i.i = phi <2 x float> [ %i.nh, %bb.as ], [ <float 1.000000e+00, float 0.000000e+00>, %bb.ar ] ; 2 uses
  %.sroa.4.0.i.i = phi <2 x float> [ %.sroa.3.12.vec.insert.i13.i.i, %bb.as ], [ zeroinitializer, %bb.ar ]
  %i.nj = load float, ptr %i.lk, align 4, !tbaa !9
  %i.nk = fsub float %i.nj, %i.lx
  %i.nl = load <2 x float>, ptr %i.ll, align 4, !tbaa !9
  %i.nm = fsub <2 x float> %i.nl, %i.md           ; 2 uses
  %.sroa.012.0.vec.extract.i = extractelement <2 x float> %.sroa.028.0.i.i, i64 0
  %shift = shufflevector <2 x float> %.sroa.028.0.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop503 = fmul <2 x float> %shift, %i.nm
  %i.nn = extractelement <2 x float> %foldExtExtBinop503, i64 0
  %i.no = call float @llvm.fmuladd.f32(float %.sroa.012.0.vec.extract.i, float %i.nk, float %i.nn)
  %.sroa.513.8.vec.extract.i = extractelement <2 x float> %.sroa.4.0.i.i, i64 0
  %i.np = extractelement <2 x float> %i.nm, i64 1
  %i.nq = call noundef float @llvm.fmuladd.f32(float %.sroa.513.8.vec.extract.i, float %i.np, float %i.no)
  %i.nr = fcmp ule float %i.nq, %i.kd
  br i1 %i.nr, label %.backedge370, label %bb.au

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN11HullLibrary7extrudeEP14btHullTrianglei(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %i.lp, i32 noundef %i.lg)
          to label %.backedge370 unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ns = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

.backedge370:                                     ; preds = %bb.at, %bb.au, %bb.aq
  %.not132 = icmp eq i64 %indvars.iv.next425, 0
  br i1 %.not132, label %._crit_edge405, label %bb.aq, !llvm.loop !102

._crit_edge405:                                   ; preds = %.backedge370
  %.pre = load i32, ptr %i.gn, align 4, !tbaa !71 ; 3 uses
  %.not133406 = icmp eq i32 %.pre, 0
  br i1 %.not133406, label %.thread, label %.lr.ph408

.lr.ph408:                                        ; preds = %._crit_edge405, %.backedge
  %i.nt = phi i32 [ %i.qp, %.backedge ], [ %.pre, %._crit_edge405 ] ; 3 uses
  %.in418 = phi i32 [ %.3122.be, %.backedge ], [ %.pre, %._crit_edge405 ]
  %i.nu = add nsw i32 %.in418, -1                 ; 3 uses
  %i.nv = load ptr, ptr %i.kc, align 8, !tbaa !55 ; 2 uses
  %i.nw = sext i32 %i.nu to i64
  %i.nx = getelementptr inbounds [8 x i8], ptr %i.nv, i64 %i.nw
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !60 ; 5 uses
  %.not134 = icmp eq ptr %i.ny, null
  br i1 %.not134, label %.backedge, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph408
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !54 ; 2 uses
  %i.oa = icmp ne i32 %i.nz, %i.lg
  %i.ob = getelementptr inbounds nuw i8, ptr %i.ny, i64 4
  %i.oc = load i32, ptr %i.ob, align 4            ; 2 uses
  %i.od = icmp ne i32 %i.oc, %i.lg
  %or.cond.i.not369 = select i1 %i.oa, i1 %i.od, i1 false
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ny, i64 8
  %i.of = load i32, ptr %i.oe, align 4            ; 2 uses
  %i.og = icmp ne i32 %i.of, %i.lg
  %narrow.i.not = select i1 %or.cond.i.not369, i1 %i.og, i1 false
  br i1 %narrow.i.not, label %._crit_edge409, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.oh = sext i32 %i.nz to i64
  %i.oi = getelementptr inbounds [16 x i8], ptr %1, i64 %i.oh ; 2 uses
  %i.oj = sext i32 %i.oc to i64
  %i.ok = getelementptr inbounds [16 x i8], ptr %1, i64 %i.oj ; 2 uses
  %i.ol = sext i32 %i.of to i64
  %i.om = getelementptr inbounds [16 x i8], ptr %1, i64 %i.ol ; 2 uses
  %i.on = load float, ptr %i.ok, align 4, !tbaa !9
  %i.oo = load float, ptr %i.oi, align 4, !tbaa !9 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.ok, i64 4
  %i.oq = getelementptr inbounds nuw i8, ptr %i.oi, i64 4
  %i.or = load float, ptr %i.om, align 4, !tbaa !9
  %i.os = getelementptr inbounds nuw i8, ptr %i.om, i64 4
  %i.ot = load <2 x float>, ptr %i.op, align 4, !tbaa !9 ; 3 uses
  %i.ou = load <2 x float>, ptr %i.oq, align 4, !tbaa !9 ; 3 uses
end_hunk_3
begin_hunk_4_@_ZN11HullLibrary16CreateConvexHullERK8HullDescR10HullResult:bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !136
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.am = load i32, ptr %i.al, align 8, !tbaa !137
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ao = load float, ptr %i.an, align 4, !tbaa !138
  %i.ap = invoke noundef zeroext i1 @_ZN11HullLibrary15CleanupVerticesEjPK9btVector3jRjPS0_fRS0_(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %.pre, ptr noundef %i.ak, i32 noundef %i.am, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull %i.s, float noundef %i.ao, ptr noundef nonnull align 4 dereferenceable(16) %5)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %.loopexit207.loopexit
  br i1 %i.ap, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.d
  %i.aq = load i32, ptr %i.b, align 4, !tbaa !54  ; 12 uses
  %.not = icmp eq i32 %i.aq, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.ar = load <2 x float>, ptr %5, align 8, !tbaa !9 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.at = load float, ptr %i.as, align 8, !tbaa !9 ; 3 uses
  %xtraiter272 = and i32 %i.aq, 1
  %i.au = icmp eq i32 %i.aq, 1
  br i1 %i.au, label %.epil.preheader271, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter276 = and i32 %i.aq, -2
  br label %bb.g

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.g
  %lcmp.mod274.not = icmp eq i32 %xtraiter272, 0
  br i1 %lcmp.mod274.not, label %._crit_edge, label %.epil.preheader271

.epil.preheader271:                               ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.073208.epil.init = phi i32 [ 0, %.lr.ph ], [ %i.bx, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod275 = trunc i32 %i.aq to i1
  tail call void @llvm.assume(i1 %lcmp.mod275)
  %i.av = sext i32 %.073208.epil.init to i64
  %i.aw = getelementptr inbounds [16 x i8], ptr %i.s, i64 %i.av ; 3 uses
  %i.ax = load <2 x float>, ptr %i.aw, align 4, !tbaa !9
  %i.ay = fmul <2 x float> %i.ar, %i.ax
  store <2 x float> %i.ay, ptr %i.aw, align 4, !tbaa !9
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.ba = load float, ptr %i.az, align 4, !tbaa !9
  %i.bb = fmul float %i.at, %i.ba
  store float %i.bb, ptr %i.az, align 4, !tbaa !9
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader271, %._crit_edge.loopexit.unr-lcssa, %.preheader
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !139
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bf = invoke noundef i32 @_ZN11HullLibrary8calchullEP9btVector3iR20btAlignedObjectArrayIjERii(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %i.s, i32 noundef %i.aq, ptr noundef nonnull align 8 dereferenceable(25) %i.be, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef %i.bd)
          to label %.noexc87 unwind label %bb.f

.noexc87:                                         ; preds = %._crit_edge
  %.not.i.not = icmp eq i32 %i.bf, 0
  br i1 %.not.i.not, label %bb.h, label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.f:                                             ; preds = %._crit_edge, %.loopexit207.loopexit
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.g:                                             ; preds = %bb.g, %.lr.ph.new
  %.073208 = phi i32 [ 0, %.lr.ph.new ], [ %i.bx, %bb.g ] ; 3 uses
  %niter277 = phi i32 [ 0, %.lr.ph.new ], [ %niter277.next.1, %bb.g ]
  %i.bi = sext i32 %.073208 to i64
  %i.bj = getelementptr inbounds [16 x i8], ptr %i.s, i64 %i.bi ; 3 uses
  %i.bk = load <2 x float>, ptr %i.bj, align 4, !tbaa !9
  %i.bl = fmul <2 x float> %i.ar, %i.bk
  store <2 x float> %i.bl, ptr %i.bj, align 4, !tbaa !9
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !9
  %i.bo = fmul float %i.at, %i.bn
  store float %i.bo, ptr %i.bm, align 4, !tbaa !9
  %i.bp = sext i32 %.073208 to i64
  %i.bq = getelementptr [16 x i8], ptr %i.s, i64 %i.bp ; 2 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 16     ; 2 uses
  %i.bs = load <2 x float>, ptr %i.br, align 4, !tbaa !9
  %i.bt = fmul <2 x float> %i.ar, %i.bs
  store <2 x float> %i.bt, ptr %i.br, align 4, !tbaa !9
  %i.bu = getelementptr i8, ptr %i.bq, i64 24     ; 2 uses
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !9
  %i.bw = fmul float %i.at, %i.bv
  store float %i.bw, ptr %i.bu, align 4, !tbaa !9
  %i.bx = add nuw i32 %.073208, 2                 ; 2 uses
  %niter277.next.1 = add nuw i32 %niter277, 2     ; 2 uses
  %niter277.ncmp.1 = icmp eq i32 %niter277.next.1, %unroll_iter276
  br i1 %niter277.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.g, !llvm.loop !140

bb.h:                                             ; preds = %.noexc87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %.thread

bb.i:                                             ; preds = %.noexc87
  %i.by = load i32, ptr %i.a, align 4, !tbaa !54  ; 7 uses
  %i.bz = mul nsw i32 %i.by, 3                    ; 9 uses
  store i32 %i.bz, ptr %i.g, align 4, !tbaa !127
  store i32 %i.by, ptr %i.h, align 8, !tbaa !129
  store ptr %i.s, ptr %i.i, align 8, !tbaa !130
  store i32 %i.aq, ptr %3, align 8, !tbaa !131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store i8 1, ptr %i.ca, align 8, !tbaa !15
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr null, ptr %i.cb, align 8, !tbaa !21
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  store i32 0, ptr %i.cc, align 4, !tbaa !22
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i32 0, ptr %i.cd, align 8, !tbaa !23
  %i.ce = icmp sgt i32 %i.aq, 0
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = zext nneg i32 %i.aq to i64
  %i.cg = shl nuw nsw i64 %i.cf, 4
  %i.ch = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.cg, i32 noundef 16)
          to label %.lr.ph.i88 unwind label %bb.w ; 5 uses

.lr.ph.i88:                                       ; preds = %bb.i
  store i8 1, ptr %i.ca, align 8, !tbaa !15
  store ptr %i.ch, ptr %i.cb, align 8, !tbaa !21
  store i32 %i.aq, ptr %i.cd, align 8, !tbaa !23
  store i32 %i.aq, ptr %i.cc, align 4, !tbaa !22
  %i.ci = load ptr, ptr %i.d, align 8, !tbaa !120 ; 6 uses
  invoke void @_ZN11HullLibrary16BringOutYourDeadEPK9btVector3jPS0_RjPjj(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %i.s, i32 noundef %i.aq, ptr noundef nonnull %i.ch, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull %i.ci, i32 noundef %i.bz)
          to label %bb.j unwind label %bb.x

bb.j:                                             ; preds = %.lr.ph.i88
  %i.cj = load i32, ptr %1, align 8, !tbaa !141
  %i.ck = and i32 %i.cj, 1
  %.not.i105.not = icmp eq i32 %i.ck, 0
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 6 uses
  br i1 %.not.i105.not, label %bb.ab, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 0, ptr %2, align 8, !tbaa !142
  %i.cn = load i32, ptr %i.b, align 4, !tbaa !54  ; 8 uses
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !144
  %i.co = load i32, ptr %i.cm, align 4, !tbaa !22 ; 2 uses
  %i.cp = icmp sgt i32 %i.cn, %i.co
  br i1 %i.cp, label %bb.l, label %.loopexit205

bb.l:                                             ; preds = %bb.k
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !23
  %i.cs = icmp slt i32 %i.cr, %i.cn
  br i1 %i.cs, label %bb.m, label %.loopexit205

bb.m:                                             ; preds = %bb.l
  %.not.i.i.i111 = icmp eq i32 %i.cn, 0
  br i1 %.not.i.i.i111, label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i113, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ct = sext i32 %i.cn to i64
  %i.cu = shl nsw i64 %i.ct, 4
  %i.cv = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.cu, i32 noundef 16)
          to label %.noexc123 unwind label %bb.y

.noexc123:                                        ; preds = %bb.n
  %.pre.i112 = load i32, ptr %i.cm, align 4, !tbaa !22
  br label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i113

_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i113: ; preds = %.noexc123, %bb.m
  %i.cw = phi i32 [ %.pre.i112, %.noexc123 ], [ %i.co, %bb.m ] ; 4 uses
  %.0.i.i.i114 = phi ptr [ %i.cv, %.noexc123 ], [ null, %bb.m ] ; 4 uses
  %i.cx = icmp sgt i32 %i.cw, 0
  br i1 %i.cx, label %.lr.ph.i.i.i118, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i115

.lr.ph.i.i.i118:                                  ; preds = %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i113
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %wide.trip.count.i.i.i119 = zext nneg i32 %i.cw to i64 ; 2 uses
  %xtraiter279 = and i64 %wide.trip.count.i.i.i119, 1
  %i.cz = icmp eq i32 %i.cw, 1
  br i1 %i.cz, label %.epil.preheader278, label %.lr.ph.i.i.i118.new

.lr.ph.i.i.i118.new:                              ; preds = %.lr.ph.i.i.i118
  %unroll_iter283 = and i64 %wide.trip.count.i.i.i119, 2147483646
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph.i.i.i118.new
  %indvars.iv.i.i.i120 = phi i64 [ 0, %.lr.ph.i.i.i118.new ], [ %indvars.iv.next.i.i.i121.1, %bb.o ] ; 4 uses
  %niter284 = phi i64 [ 0, %.lr.ph.i.i.i118.new ], [ %niter284.next.1, %bb.o ]
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i114, i64 %indvars.iv.i.i.i120
  %i.db = load ptr, ptr %i.cy, align 8, !tbaa !21
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.db, i64 %indvars.iv.i.i.i120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.da, ptr noundef nonnull align 4 dereferenceable(16) %i.dc, i64 16, i1 false), !tbaa.struct !38
  %indvars.iv.next.i.i.i121 = or disjoint i64 %indvars.iv.i.i.i120, 1 ; 2 uses
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i114, i64 %indvars.iv.next.i.i.i121
  %i.de = load ptr, ptr %i.cy, align 8, !tbaa !21
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %indvars.iv.next.i.i.i121
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dd, ptr noundef nonnull align 4 dereferenceable(16) %i.df, i64 16, i1 false), !tbaa.struct !38
  %indvars.iv.next.i.i.i121.1 = add nuw nsw i64 %indvars.iv.i.i.i120, 2 ; 2 uses
  %niter284.next.1 = add i64 %niter284, 2         ; 2 uses
  %niter284.ncmp.1 = icmp eq i64 %niter284.next.1, %unroll_iter283
  br i1 %niter284.ncmp.1, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i115.loopexit.unr-lcssa, label %bb.o, !llvm.loop !39

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i115.loopexit.unr-lcssa: ; preds = %bb.o
  %lcmp.mod281.not = icmp eq i64 %xtraiter279, 0
  br i1 %lcmp.mod281.not, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i115, label %.epil.preheader278

.epil.preheader278:                               ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i115.loopexit.unr-lcssa, %.lr.ph.i.i.i118
  %indvars.iv.i.i.i120.epil.init = phi i64 [ 0, %.lr.ph.i.i.i118 ], [ %indvars.iv.next.i.i.i121.1, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i115.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod282 = trunc i32 %i.cw to i1
  tail call void @llvm.assume(i1 %lcmp.mod282)
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i114, i64 %indvars.iv.i.i.i120.epil.init
  %i.dh = load ptr, ptr %i.cy, align 8, !tbaa !21
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.dh, i64 %indvars.iv.i.i.i120.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dg, ptr noundef nonnull align 4 dereferenceable(16) %i.di, i64 16, i1 false), !tbaa.struct !38
  br label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i115

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i115: ; preds = %.epil.preheader278, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i115.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i113
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !21 ; 2 uses
  %.not.i5.i.i116 = icmp eq ptr %i.dk, null
  br i1 %.not.i5.i.i116, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i117, label %bb.p

bb.p:                                             ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i115
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dm = load i8, ptr %i.dl, align 8, !tbaa !15, !range !41, !noundef !42
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %bb.q, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i117

bb.q:                                             ; preds = %bb.p
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.dk)
          to label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i117 unwind label %bb.y

_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i117: ; preds = %bb.q, %bb.p, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i115
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i8 1, ptr %i.do, align 8, !tbaa !15
  store ptr %.0.i.i.i114, ptr %i.dj, align 8, !tbaa !21
  store i32 %i.cn, ptr %i.cq, align 8, !tbaa !23
  br label %.loopexit205

.loopexit205:                                     ; preds = %bb.l, %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i117, %bb.k
  store i32 %i.cn, ptr %i.cm, align 4, !tbaa !22
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 %i.by, ptr %i.dp, align 8, !tbaa !145
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 %i.bz, ptr %i.dq, align 4, !tbaa !146
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 3 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !116 ; 3 uses
  %i.dt = icmp sgt i32 %i.bz, %i.ds
  br i1 %i.dt, label %bb.r, label %.loopexit204

bb.r:                                             ; preds = %.loopexit205
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !119
  %i.dw = icmp slt i32 %i.dv, %i.bz
  br i1 %i.dw, label %bb.s, label %..lr.ph.i126_crit_edge

..lr.ph.i126_crit_edge:                           ; preds = %bb.r
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.pre223 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !120
  br label %.lr.ph.i126

bb.s:                                             ; preds = %bb.r
  %.not.i.i.i131 = icmp eq i32 %i.by, 0
  br i1 %.not.i.i.i131, label %_ZN20btAlignedObjectArrayIjE8allocateEi.exit.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dx = sext i32 %i.bz to i64
  %i.dy = shl nsw i64 %i.dx, 2
  %i.dz = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.dy, i32 noundef 16)
          to label %.noexc140 unwind label %bb.z

.noexc140:                                        ; preds = %bb.t
  %.pre.i132 = load i32, ptr %i.dr, align 4, !tbaa !116
  br label %_ZN20btAlignedObjectArrayIjE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIjE8allocateEi.exit.i.i: ; preds = %.noexc140, %bb.s
  %i.ea = phi i32 [ %.pre.i132, %.noexc140 ], [ %i.ds, %bb.s ] ; 3 uses
  %.0.i.i.i133 = phi ptr [ %i.dz, %.noexc140 ], [ null, %bb.s ] ; 9 uses
  %i.eb = icmp sgt i32 %i.ea, 0
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !120 ; 9 uses
  br i1 %i.eb, label %.lr.ph.i.i.i135, label %_ZNK20btAlignedObjectArrayIjE4copyEiiPj.exit.i.i

.lr.ph.i.i.i135:                                  ; preds = %_ZN20btAlignedObjectArrayIjE8allocateEi.exit.i.i
  %i.ee = ptrtoaddr ptr %i.ed to i64
  %.0.i.i.i133251 = ptrtoaddr ptr %.0.i.i.i133 to i64
  %wide.trip.count.i.i.i136 = zext nneg i32 %i.ea to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.ea, 8
  %i.ef = sub i64 %i.ee, %.0.i.i.i133251
  %diff.check = icmp ugt i64 %i.ef, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i135
  %n.vec = and i64 %wide.trip.count.i.i.i136, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i133, i64 %index ; 2 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %index ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %wide.load = load <4 x i32>, ptr %i.eh, align 4, !tbaa !54
  %wide.load252 = load <4 x i32>, ptr %i.ei, align 4, !tbaa !54
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  store <4 x i32> %wide.load, ptr %i.eg, align 4, !tbaa !54
  store <4 x i32> %wide.load252, ptr %i.ej, align 4, !tbaa !54
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ek = icmp eq i64 %index.next, %n.vec
  br i1 %i.ek, label %middle.block, label %vector.body, !llvm.loop !147

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i136
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIjE4copyEiiPj.exit.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i135, %middle.block
  %indvars.iv.i.i.i137.ph = phi i64 [ 0, %.lr.ph.i.i.i135 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter285 = and i64 %wide.trip.count.i.i.i136, 3 ; 2 uses
  %lcmp.mod286.not = icmp eq i64 %xtraiter285, 0
  br i1 %lcmp.mod286.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i137.prol = phi i64 [ %indvars.iv.next.i.i.i138.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i137.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i133, i64 %indvars.iv.i.i.i137.prol
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv.i.i.i137.prol
  %i.en = load i32, ptr %i.em, align 4, !tbaa !54
  store i32 %i.en, ptr %i.el, align 4, !tbaa !54
  %indvars.iv.next.i.i.i138.prol = add nuw nsw i64 %indvars.iv.i.i.i137.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter285
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !148

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i137.unr = phi i64 [ %indvars.iv.i.i.i137.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i138.prol, %scalar.ph.prol ]
  %i.eo = sub nsw i64 %indvars.iv.i.i.i137.ph, %wide.trip.count.i.i.i136
  %i.ep = icmp ugt i64 %i.eo, -4
  br i1 %i.ep, label %_ZNK20btAlignedObjectArrayIjE4copyEiiPj.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i137 = phi i64 [ %indvars.iv.next.i.i.i138.3, %scalar.ph ], [ %indvars.iv.i.i.i137.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i133, i64 %indvars.iv.i.i.i137
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv.i.i.i137
  %i.es = load i32, ptr %i.er, align 4, !tbaa !54
  store i32 %i.es, ptr %i.eq, align 4, !tbaa !54
  %indvars.iv.next.i.i.i138 = add nuw nsw i64 %indvars.iv.i.i.i137, 1 ; 2 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i133, i64 %indvars.iv.next.i.i.i138
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv.next.i.i.i138
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !54
  store i32 %i.ev, ptr %i.et, align 4, !tbaa !54
  %indvars.iv.next.i.i.i138.1 = add nuw nsw i64 %indvars.iv.i.i.i137, 2 ; 2 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i133, i64 %indvars.iv.next.i.i.i138.1
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv.next.i.i.i138.1
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !54
  store i32 %i.ey, ptr %i.ew, align 4, !tbaa !54
  %indvars.iv.next.i.i.i138.2 = add nuw nsw i64 %indvars.iv.i.i.i137, 3 ; 2 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i133, i64 %indvars.iv.next.i.i.i138.2
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv.next.i.i.i138.2
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !54
  store i32 %i.fb, ptr %i.ez, align 4, !tbaa !54
  %indvars.iv.next.i.i.i138.3 = add nuw nsw i64 %indvars.iv.i.i.i137, 4 ; 2 uses
  %exitcond.not.i.i.i139.3 = icmp eq i64 %indvars.iv.next.i.i.i138.3, %wide.trip.count.i.i.i136
  br i1 %exitcond.not.i.i.i139.3, label %_ZNK20btAlignedObjectArrayIjE4copyEiiPj.exit.thread.i.i, label %scalar.ph, !llvm.loop !149

_ZNK20btAlignedObjectArrayIjE4copyEiiPj.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIjE8allocateEi.exit.i.i
  %.not.i5.i.i134 = icmp eq ptr %i.ed, null
  br i1 %.not.i5.i.i134, label %_ZN20btAlignedObjectArrayIjE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIjE4copyEiiPj.exit.thread.i.i

_ZNK20btAlignedObjectArrayIjE4copyEiiPj.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIjE4copyEiiPj.exit.i.i
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.fd = load i8, ptr %i.fc, align 8, !tbaa !124, !range !41, !noundef !42
  %i.fe = trunc nuw i8 %i.fd to i1
  br i1 %i.fe, label %bb.u, label %_ZN20btAlignedObjectArrayIjE10deallocateEv.exit.i.i

bb.u:                                             ; preds = %_ZNK20btAlignedObjectArrayIjE4copyEiiPj.exit.thread.i.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ed)
          to label %_ZN20btAlignedObjectArrayIjE10deallocateEv.exit.i.i unwind label %bb.z

_ZN20btAlignedObjectArrayIjE10deallocateEv.exit.i.i: ; preds = %bb.u, %_ZNK20btAlignedObjectArrayIjE4copyEiiPj.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIjE4copyEiiPj.exit.i.i
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i8 1, ptr %i.ff, align 8, !tbaa !124
  store ptr %.0.i.i.i133, ptr %i.ec, align 8, !tbaa !120
  store i32 %i.bz, ptr %i.du, align 8, !tbaa !119
  br label %.lr.ph.i126

.lr.ph.i126:                                      ; preds = %..lr.ph.i126_crit_edge, %_ZN20btAlignedObjectArrayIjE10deallocateEv.exit.i.i
  %i.fg = phi ptr [ %.pre223, %..lr.ph.i126_crit_edge ], [ %.0.i.i.i133, %_ZN20btAlignedObjectArrayIjE10deallocateEv.exit.i.i ]
  %i.fh = sext i32 %i.ds to i64                   ; 2 uses
  %wide.trip.count.i127 = sext i32 %i.bz to i64
  %i.fi = shl nsw i64 %i.fh, 2
  %scevgep = getelementptr i8, ptr %i.fg, i64 %i.fi
  %i.fj = sub nsw i64 %wide.trip.count.i127, %i.fh
  %i.fk = shl nsw i64 %i.fj, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.fk, i1 false), !tbaa !54
  br label %.loopexit204

.loopexit204:                                     ; preds = %.lr.ph.i126, %.loopexit205
  store i32 %i.bz, ptr %i.dr, align 4, !tbaa !116
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !21
  %i.fn = zext i32 %i.cn to i64
  %i.fo = shl nuw nsw i64 %i.fn, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fm, ptr nonnull align 4 %i.ch, i64 %i.fo, i1 false)
  %i.fp = load i32, ptr %1, align 8, !tbaa !141
  %i.fq = and i32 %i.fp, 2
  %.not.i142.not = icmp eq i32 %i.fq, 0
  br i1 %.not.i142.not, label %bb.aa, label %bb.v

bb.v:                                             ; preds = %.loopexit204
  %i.fr = load i32, ptr %i.h, align 8, !tbaa !129 ; 5 uses
  %.not219 = icmp eq i32 %i.fr, 0
  br i1 %.not219, label %.loopexit, label %.lr.ph213.preheader

.lr.ph213.preheader:                              ; preds = %bb.v
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !120 ; 2 uses
  %xtraiter287 = and i32 %i.fr, 1
  %i.fu = icmp eq i32 %i.fr, 1
  br i1 %i.fu, label %.lr.ph213.epil.preheader, label %.lr.ph213.preheader.new

.lr.ph213.preheader.new:                          ; preds = %.lr.ph213.preheader
  %unroll_iter291 = and i32 %i.fr, -2
  br label %.lr.ph213

bb.w:                                             ; preds = %bb.i
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.x:                                             ; preds = %bb.as, %.lr.ph.i88
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.y:                                             ; preds = %bb.q, %bb.n
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.z:                                             ; preds = %bb.u, %bb.t
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

.lr.ph213:                                        ; preds = %.lr.ph213, %.lr.ph213.preheader.new
  %.070210 = phi ptr [ %i.ft, %.lr.ph213.preheader.new ], [ %i.gp, %.lr.ph213 ] ; 7 uses
  %.071209 = phi ptr [ %i.ci, %.lr.ph213.preheader.new ], [ %i.gq, %.lr.ph213 ] ; 7 uses
  %niter292 = phi i32 [ 0, %.lr.ph213.preheader.new ], [ %niter292.next.1, %.lr.ph213 ]
  %i.fz = getelementptr inbounds nuw i8, ptr %.071209, i64 8
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !54
  store i32 %i.ga, ptr %.070210, align 4, !tbaa !54
  %i.gb = getelementptr inbounds nuw i8, ptr %.071209, i64 4
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !54
  %i.gd = getelementptr inbounds nuw i8, ptr %.070210, i64 4
  store i32 %i.gc, ptr %i.gd, align 4, !tbaa !54
  %i.ge = load i32, ptr %.071209, align 4, !tbaa !54
  %i.gf = getelementptr inbounds nuw i8, ptr %.070210, i64 8
  store i32 %i.ge, ptr %i.gf, align 4, !tbaa !54
  %i.gg = getelementptr inbounds nuw i8, ptr %.070210, i64 12
  %i.gh = getelementptr inbounds nuw i8, ptr %.071209, i64 12
  %i.gi = getelementptr inbounds nuw i8, ptr %.071209, i64 20
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !54
  store i32 %i.gj, ptr %i.gg, align 4, !tbaa !54
  %i.gk = getelementptr inbounds nuw i8, ptr %.071209, i64 16
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !54
  %i.gm = getelementptr inbounds nuw i8, ptr %.070210, i64 16
  store i32 %i.gl, ptr %i.gm, align 4, !tbaa !54
  %i.gn = load i32, ptr %i.gh, align 4, !tbaa !54
  %i.go = getelementptr inbounds nuw i8, ptr %.070210, i64 20
  store i32 %i.gn, ptr %i.go, align 4, !tbaa !54
  %i.gp = getelementptr inbounds nuw i8, ptr %.070210, i64 24 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.071209, i64 24 ; 2 uses
  %niter292.next.1 = add nuw i32 %niter292, 2     ; 2 uses
  %niter292.ncmp.1.not = icmp eq i32 %niter292.next.1, %unroll_iter291
  br i1 %niter292.ncmp.1.not, label %.loopexit.loopexit269.unr-lcssa, label %.lr.ph213, !llvm.loop !150

bb.aa:                                            ; preds = %.loopexit204
  %i.gr = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !120
  %i.gt = load i32, ptr %i.g, align 4, !tbaa !127
  %i.gu = zext i32 %i.gt to i64
  %i.gv = shl nuw nsw i64 %i.gu, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.gs, ptr nonnull align 4 %i.ci, i64 %i.gv, i1 false)
  br label %.loopexit

bb.ab:                                            ; preds = %bb.j
  store i8 1, ptr %2, align 8, !tbaa !142
  %i.gw = load i32, ptr %i.b, align 4, !tbaa !54  ; 8 uses
  store i32 %i.gw, ptr %i.cl, align 4, !tbaa !144
  %i.gx = load i32, ptr %i.cm, align 4, !tbaa !22 ; 2 uses
  %i.gy = icmp sgt i32 %i.gw, %i.gx
  br i1 %i.gy, label %bb.ac, label %.loopexit202

bb.ac:                                            ; preds = %bb.ab
  %i.gz = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !23
  %i.hb = icmp slt i32 %i.ha, %i.gw
  br i1 %i.hb, label %bb.ad, label %.loopexit202

bb.ad:                                            ; preds = %bb.ac
  %.not.i.i.i148 = icmp eq i32 %i.gw, 0
  br i1 %.not.i.i.i148, label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i150, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hc = sext i32 %i.gw to i64
  %i.hd = shl nsw i64 %i.hc, 4
  %i.he = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.hd, i32 noundef 16)
          to label %.noexc160 unwind label %bb.am

.noexc160:                                        ; preds = %bb.ae
  %.pre.i149 = load i32, ptr %i.cm, align 4, !tbaa !22
  br label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i150

_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i150: ; preds = %.noexc160, %bb.ad
  %i.hf = phi i32 [ %.pre.i149, %.noexc160 ], [ %i.gx, %bb.ad ] ; 4 uses
  %.0.i.i.i151 = phi ptr [ %i.he, %.noexc160 ], [ null, %bb.ad ] ; 4 uses
  %i.hg = icmp sgt i32 %i.hf, 0
  br i1 %i.hg, label %.lr.ph.i.i.i155, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i152

.lr.ph.i.i.i155:                                  ; preds = %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i150
  %i.hh = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %wide.trip.count.i.i.i156 = zext nneg i32 %i.hf to i64 ; 2 uses
  %xtraiter294 = and i64 %wide.trip.count.i.i.i156, 1
  %i.hi = icmp eq i32 %i.hf, 1
  br i1 %i.hi, label %.epil.preheader293, label %.lr.ph.i.i.i155.new

.lr.ph.i.i.i155.new:                              ; preds = %.lr.ph.i.i.i155
  %unroll_iter298 = and i64 %wide.trip.count.i.i.i156, 2147483646
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %.lr.ph.i.i.i155.new
  %indvars.iv.i.i.i157 = phi i64 [ 0, %.lr.ph.i.i.i155.new ], [ %indvars.iv.next.i.i.i158.1, %bb.af ] ; 4 uses
  %niter299 = phi i64 [ 0, %.lr.ph.i.i.i155.new ], [ %niter299.next.1, %bb.af ]
  %i.hj = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i151, i64 %indvars.iv.i.i.i157
  %i.hk = load ptr, ptr %i.hh, align 8, !tbaa !21
  %i.hl = getelementptr inbounds nuw [16 x i8], ptr %i.hk, i64 %indvars.iv.i.i.i157
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.hj, ptr noundef nonnull align 4 dereferenceable(16) %i.hl, i64 16, i1 false), !tbaa.struct !38
  %indvars.iv.next.i.i.i158 = or disjoint i64 %indvars.iv.i.i.i157, 1 ; 2 uses
  %i.hm = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i151, i64 %indvars.iv.next.i.i.i158
  %i.hn = load ptr, ptr %i.hh, align 8, !tbaa !21
  %i.ho = getelementptr inbounds nuw [16 x i8], ptr %i.hn, i64 %indvars.iv.next.i.i.i158
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.hm, ptr noundef nonnull align 4 dereferenceable(16) %i.ho, i64 16, i1 false), !tbaa.struct !38
  %indvars.iv.next.i.i.i158.1 = add nuw nsw i64 %indvars.iv.i.i.i157, 2 ; 2 uses
  %niter299.next.1 = add i64 %niter299, 2         ; 2 uses
  %niter299.ncmp.1 = icmp eq i64 %niter299.next.1, %unroll_iter298
  br i1 %niter299.ncmp.1, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i152.loopexit.unr-lcssa, label %bb.af, !llvm.loop !39

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i152.loopexit.unr-lcssa: ; preds = %bb.af
  %lcmp.mod296.not = icmp eq i64 %xtraiter294, 0
  br i1 %lcmp.mod296.not, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i152, label %.epil.preheader293

.epil.preheader293:                               ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i152.loopexit.unr-lcssa, %.lr.ph.i.i.i155
  %indvars.iv.i.i.i157.epil.init = phi i64 [ 0, %.lr.ph.i.i.i155 ], [ %indvars.iv.next.i.i.i158.1, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i152.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod297 = trunc i32 %i.hf to i1
  tail call void @llvm.assume(i1 %lcmp.mod297)
  %i.hp = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i151, i64 %indvars.iv.i.i.i157.epil.init
  %i.hq = load ptr, ptr %i.hh, align 8, !tbaa !21
  %i.hr = getelementptr inbounds nuw [16 x i8], ptr %i.hq, i64 %indvars.iv.i.i.i157.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.hp, ptr noundef nonnull align 4 dereferenceable(16) %i.hr, i64 16, i1 false), !tbaa.struct !38
  br label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i152

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i152: ; preds = %.epil.preheader293, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i152.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i150
  %i.hs = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !21 ; 2 uses
  %.not.i5.i.i153 = icmp eq ptr %i.ht, null
  br i1 %.not.i5.i.i153, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i154, label %bb.ag

bb.ag:                                            ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i152
  %i.hu = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.hv = load i8, ptr %i.hu, align 8, !tbaa !15, !range !41, !noundef !42
  %i.hw = trunc nuw i8 %i.hv to i1
  br i1 %i.hw, label %bb.ah, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i154

bb.ah:                                            ; preds = %bb.ag
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ht)
          to label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i154 unwind label %bb.am

_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i154: ; preds = %bb.ah, %bb.ag, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i152
  %i.hx = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i8 1, ptr %i.hx, align 8, !tbaa !15
  store ptr %.0.i.i.i151, ptr %i.hs, align 8, !tbaa !21
  store i32 %i.gw, ptr %i.gz, align 8, !tbaa !23
  br label %.loopexit202

.loopexit202:                                     ; preds = %bb.ac, %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i154, %bb.ab
  store i32 %i.gw, ptr %i.cm, align 4, !tbaa !22
  %i.hy = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 %i.by, ptr %i.hy, align 8, !tbaa !145
  %i.hz = shl i32 %i.by, 2                        ; 8 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 %i.hz, ptr %i.ia, align 4, !tbaa !146
  %i.ib = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 3 uses
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !116 ; 3 uses
  %i.id = icmp sgt i32 %i.hz, %i.ic
  br i1 %i.id, label %bb.ai, label %.loopexit201

bb.ai:                                            ; preds = %.loopexit202
  %i.ie = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.if = load i32, ptr %i.ie, align 8, !tbaa !119
  %i.ig = icmp slt i32 %i.if, %i.hz
  br i1 %i.ig, label %bb.aj, label %..lr.ph.i163_crit_edge

..lr.ph.i163_crit_edge:                           ; preds = %bb.ai
  %.phi.trans.insert224 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.pre225 = load ptr, ptr %.phi.trans.insert224, align 8, !tbaa !120
  br label %.lr.ph.i163

bb.aj:                                            ; preds = %bb.ai
  %.not.i.i.i169 = icmp eq i32 %i.hz, 0
  br i1 %.not.i.i.i169, label %_ZN20btAlignedObjectArrayIjE8allocateEi.exit.i.i171, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ih = sext i32 %i.hz to i64
  %i.ii = shl nsw i64 %i.ih, 2
  %i.ij = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.ii, i32 noundef 16)
          to label %.noexc182 unwind label %bb.an

.noexc182:                                        ; preds = %bb.ak
  %.pre.i170 = load i32, ptr %i.ib, align 4, !tbaa !116
  br label %_ZN20btAlignedObjectArrayIjE8allocateEi.exit.i.i171

_ZN20btAlignedObjectArrayIjE8allocateEi.exit.i.i171: ; preds = %.noexc182, %bb.aj
  %i.ik = phi i32 [ %.pre.i170, %.noexc182 ], [ %i.ic, %bb.aj ] ; 3 uses
  %.0.i.i.i172 = phi ptr [ %i.ij, %.noexc182 ], [ null, %bb.aj ] ; 9 uses
  %i.il = icmp sgt i32 %i.ik, 0
  %i.im = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !120 ; 9 uses
  br i1 %i.il, label %.lr.ph.i.i.i177, label %_ZNK20btAlignedObjectArrayIjE4copyEiiPj.exit.i.i173

.lr.ph.i.i.i177:                                  ; preds = %_ZN20btAlignedObjectArrayIjE8allocateEi.exit.i.i171
  %i.io = ptrtoaddr ptr %i.in to i64
  %.0.i.i.i172254 = ptrtoaddr ptr %.0.i.i.i172 to i64
  %wide.trip.count.i.i.i178 = zext nneg i32 %i.ik to i64 ; 5 uses
  %min.iters.check257 = icmp ult i32 %i.ik, 8
  %i.ip = sub i64 %i.io, %.0.i.i.i172254
  %diff.check255 = icmp ugt i64 %i.ip, -32
  %or.cond268 = select i1 %min.iters.check257, i1 true, i1 %diff.check255
  br i1 %or.cond268, label %scalar.ph256.preheader, label %vector.ph258

vector.ph258:                                     ; preds = %.lr.ph.i.i.i177
  %n.vec259 = and i64 %wide.trip.count.i.i.i178, 2147483640 ; 3 uses
  br label %vector.body260

vector.body260:                                   ; preds = %vector.body260, %vector.ph258
  %index261 = phi i64 [ 0, %vector.ph258 ], [ %index.next264, %vector.body260 ] ; 3 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i172, i64 %index261 ; 2 uses
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %index261 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  %wide.load262 = load <4 x i32>, ptr %i.ir, align 4, !tbaa !54
  %wide.load263 = load <4 x i32>, ptr %i.is, align 4, !tbaa !54
  %i.it = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  store <4 x i32> %wide.load262, ptr %i.iq, align 4, !tbaa !54
  store <4 x i32> %wide.load263, ptr %i.it, align 4, !tbaa !54
  %index.next264 = add nuw i64 %index261, 8       ; 2 uses
  %i.iu = icmp eq i64 %index.next264, %n.vec259
  br i1 %i.iu, label %middle.block265, label %vector.body260, !llvm.loop !151

middle.block265:                                  ; preds = %vector.body260
  %cmp.n266 = icmp eq i64 %n.vec259, %wide.trip.count.i.i.i178
  br i1 %cmp.n266, label %_ZNK20btAlignedObjectArrayIjE4copyEiiPj.exit.thread.i.i175, label %scalar.ph256.preheader

scalar.ph256.preheader:                           ; preds = %.lr.ph.i.i.i177, %middle.block265
  %indvars.iv.i.i.i179.ph = phi i64 [ 0, %.lr.ph.i.i.i177 ], [ %n.vec259, %middle.block265 ] ; 3 uses
  %xtraiter300 = and i64 %wide.trip.count.i.i.i178, 3 ; 2 uses
  %lcmp.mod301.not = icmp eq i64 %xtraiter300, 0
  br i1 %lcmp.mod301.not, label %scalar.ph256.prol.loopexit, label %scalar.ph256.prol

scalar.ph256.prol:                                ; preds = %scalar.ph256.preheader, %scalar.ph256.prol
  %indvars.iv.i.i.i179.prol = phi i64 [ %indvars.iv.next.i.i.i180.prol, %scalar.ph256.prol ], [ %indvars.iv.i.i.i179.ph, %scalar.ph256.preheader ] ; 3 uses
  %prol.iter302 = phi i64 [ %prol.iter302.next, %scalar.ph256.prol ], [ 0, %scalar.ph256.preheader ]
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i172, i64 %indvars.iv.i.i.i179.prol
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %indvars.iv.i.i.i179.prol
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !54
  store i32 %i.ix, ptr %i.iv, align 4, !tbaa !54
  %indvars.iv.next.i.i.i180.prol = add nuw nsw i64 %indvars.iv.i.i.i179.prol, 1 ; 2 uses
  %prol.iter302.next = add i64 %prol.iter302, 1   ; 2 uses
  %prol.iter302.cmp.not = icmp eq i64 %prol.iter302.next, %xtraiter300
  br i1 %prol.iter302.cmp.not, label %scalar.ph256.prol.loopexit, label %scalar.ph256.prol, !llvm.loop !152

scalar.ph256.prol.loopexit:                       ; preds = %scalar.ph256.prol, %scalar.ph256.preheader
  %indvars.iv.i.i.i179.unr = phi i64 [ %indvars.iv.i.i.i179.ph, %scalar.ph256.preheader ], [ %indvars.iv.next.i.i.i180.prol, %scalar.ph256.prol ]
  %i.iy = sub nsw i64 %indvars.iv.i.i.i179.ph, %wide.trip.count.i.i.i178
  %i.iz = icmp ugt i64 %i.iy, -4
  br i1 %i.iz, label %_ZNK20btAlignedObjectArrayIjE4copyEiiPj.exit.thread.i.i175, label %scalar.ph256

scalar.ph256:                                     ; preds = %scalar.ph256.prol.loopexit, %scalar.ph256
  %indvars.iv.i.i.i179 = phi i64 [ %indvars.iv.next.i.i.i180.3, %scalar.ph256 ], [ %indvars.iv.i.i.i179.unr, %scalar.ph256.prol.loopexit ] ; 6 uses
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i172, i64 %indvars.iv.i.i.i179
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %indvars.iv.i.i.i179
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !54
  store i32 %i.jc, ptr %i.ja, align 4, !tbaa !54
  %indvars.iv.next.i.i.i180 = add nuw nsw i64 %indvars.iv.i.i.i179, 1 ; 2 uses
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i172, i64 %indvars.iv.next.i.i.i180
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %indvars.iv.next.i.i.i180
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !54
  store i32 %i.jf, ptr %i.jd, align 4, !tbaa !54
  %indvars.iv.next.i.i.i180.1 = add nuw nsw i64 %indvars.iv.i.i.i179, 2 ; 2 uses
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i172, i64 %indvars.iv.next.i.i.i180.1
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %indvars.iv.next.i.i.i180.1
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !54
  store i32 %i.ji, ptr %i.jg, align 4, !tbaa !54
  %indvars.iv.next.i.i.i180.2 = add nuw nsw i64 %indvars.iv.i.i.i179, 3 ; 2 uses
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i172, i64 %indvars.iv.next.i.i.i180.2
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %indvars.iv.next.i.i.i180.2
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !54
  store i32 %i.jl, ptr %i.jj, align 4, !tbaa !54
  %indvars.iv.next.i.i.i180.3 = add nuw nsw i64 %indvars.iv.i.i.i179, 4 ; 2 uses
  %exitcond.not.i.i.i181.3 = icmp eq i64 %indvars.iv.next.i.i.i180.3, %wide.trip.count.i.i.i178
  br i1 %exitcond.not.i.i.i181.3, label %_ZNK20btAlignedObjectArrayIjE4copyEiiPj.exit.thread.i.i175, label %scalar.ph256, !llvm.loop !153

_ZNK20btAlignedObjectArrayIjE4copyEiiPj.exit.i.i173: ; preds = %_ZN20btAlignedObjectArrayIjE8allocateEi.exit.i.i171
  %.not.i5.i.i174 = icmp eq ptr %i.in, null
  br i1 %.not.i5.i.i174, label %_ZN20btAlignedObjectArrayIjE10deallocateEv.exit.i.i176, label %_ZNK20btAlignedObjectArrayIjE4copyEiiPj.exit.thread.i.i175

_ZNK20btAlignedObjectArrayIjE4copyEiiPj.exit.thread.i.i175: ; preds = %scalar.ph256.prol.loopexit, %scalar.ph256, %middle.block265, %_ZNK20btAlignedObjectArrayIjE4copyEiiPj.exit.i.i173
  %i.jm = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.jn = load i8, ptr %i.jm, align 8, !tbaa !124, !range !41, !noundef !42
  %i.jo = trunc nuw i8 %i.jn to i1
  br i1 %i.jo, label %bb.al, label %_ZN20btAlignedObjectArrayIjE10deallocateEv.exit.i.i176

bb.al:                                            ; preds = %_ZNK20btAlignedObjectArrayIjE4copyEiiPj.exit.thread.i.i175
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.in)
          to label %_ZN20btAlignedObjectArrayIjE10deallocateEv.exit.i.i176 unwind label %bb.an

_ZN20btAlignedObjectArrayIjE10deallocateEv.exit.i.i176: ; preds = %bb.al, %_ZNK20btAlignedObjectArrayIjE4copyEiiPj.exit.thread.i.i175, %_ZNK20btAlignedObjectArrayIjE4copyEiiPj.exit.i.i173
  %i.jp = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i8 1, ptr %i.jp, align 8, !tbaa !124
  store ptr %.0.i.i.i172, ptr %i.im, align 8, !tbaa !120
  store i32 %i.hz, ptr %i.ie, align 8, !tbaa !119
  br label %.lr.ph.i163

.lr.ph.i163:                                      ; preds = %..lr.ph.i163_crit_edge, %_ZN20btAlignedObjectArrayIjE10deallocateEv.exit.i.i176
  %i.jq = phi ptr [ %.pre225, %..lr.ph.i163_crit_edge ], [ %.0.i.i.i172, %_ZN20btAlignedObjectArrayIjE10deallocateEv.exit.i.i176 ]
  %i.jr = sext i32 %i.ic to i64                   ; 2 uses
  %wide.trip.count.i164 = sext i32 %i.hz to i64
  %i.js = shl nsw i64 %i.jr, 2
  %scevgep222 = getelementptr i8, ptr %i.jq, i64 %i.js
  %i.jt = sub nsw i64 %wide.trip.count.i164, %i.jr
  %i.ju = shl nsw i64 %i.jt, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep222, i8 0, i64 %i.ju, i1 false), !tbaa !54
  %.pre226 = load i32, ptr %i.h, align 8, !tbaa !129
  br label %.loopexit201

.loopexit201:                                     ; preds = %.lr.ph.i163, %.loopexit202
end_hunk_4
begin_hunk_5_@_ZN11HullLibrary16CreateConvexHullERK8HullDescR10HullResult:bb.a
  br i1 %i.li, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %bb.at
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ch)
          to label %bb.ax unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.lj = landingpad { ptr, i32 }
          catch ptr null
  %i.lk = extractvalue { ptr, i32 } %i.lj, 0
  tail call void @__clang_call_terminate(ptr %i.lk) #20
  unreachable

bb.aw:                                            ; preds = %bb.an, %bb.am, %bb.z, %bb.y, %bb.x, %bb.w
  %.pn = phi { ptr, i32 } [ %i.fw, %bb.x ], [ %i.fy, %bb.z ], [ %i.fx, %bb.y ], [ %i.kd, %bb.an ], [ %i.kc, %bb.am ], [ %i.fv, %bb.w ]
  call void @_ZN20btAlignedObjectArrayI9btVector3ED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.bc

.thread:                                          ; preds = %bb.h, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.ay

bb.ax:                                            ; preds = %bb.au, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %.pre227 = load i8, ptr %i.l, align 8, !range !41
  %i.ll = trunc nuw i8 %.pre227 to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br i1 %i.ll, label %bb.ay, label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit193

bb.ay:                                            ; preds = %.thread, %bb.ax
  %.072248 = phi i32 [ 1, %.thread ], [ 0, %bb.ax ]
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.s)
          to label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit193 unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.lm = landingpad { ptr, i32 }
          catch ptr null
  %i.ln = extractvalue { ptr, i32 } %i.lm, 0
  tail call void @__clang_call_terminate(ptr %i.ln) #20
  unreachable

_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit193: ; preds = %bb.ax, %bb.ay
  %.072247 = phi i32 [ 0, %bb.ax ], [ %.072248, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.lo = load ptr, ptr %i.d, align 8, !tbaa !120 ; 2 uses
  %.not.i.i.i.i = icmp ne ptr %i.lo, null
  %i.lp = load i8, ptr %i.c, align 8, !range !41
  %i.lq = trunc nuw i8 %i.lp to i1
  %or.cond.i.i.i = select i1 %.not.i.i.i.i, i1 %i.lq, i1 false
  br i1 %or.cond.i.i.i, label %bb.ba, label %_ZN11PHullResultD2Ev.exit

bb.ba:                                            ; preds = %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit193
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.lo)
          to label %_ZN11PHullResultD2Ev.exit unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.lr = landingpad { ptr, i32 }
          catch ptr null
  %i.ls = extractvalue { ptr, i32 } %i.lr, 0
  tail call void @__clang_call_terminate(ptr %i.ls) #20
  unreachable

_ZN11PHullResultD2Ev.exit:                        ; preds = %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit193, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret i32 %.072247

bb.bc:                                            ; preds = %bb.aw, %bb.f
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn, %bb.aw ], [ %i.bh, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.e
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.bc ], [ %i.bg, %bb.e ]
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
  %i.c = load i32, ptr %i.b, align 4, !tbaa !89   ; 2 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !90
  %i.g = icmp slt i32 %i.f, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !78   ; 3 uses
  br i1 %i.g, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i, label %.lr.ph.i

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i: ; preds = %bb.c
  %.not.i5.i.i = icmp ne ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8, !range !41
  %i.l = trunc nuw i8 %i.k to i1
  %or.cond368 = select i1 %.not.i5.i.i, i1 %i.l, i1 false
  br i1 %or.cond368, label %bb.d, label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i

bb.d:                                             ; preds = %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.i)
  br label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i: ; preds = %bb.d, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i
  store i8 1, ptr %i.j, align 8, !tbaa !88
  store ptr null, ptr %i.h, align 8, !tbaa !78
  store i32 0, ptr %i.e, align 8, !tbaa !90
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i
  %i.m = phi ptr [ null, %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i ], [ %i.i, %bb.c ]
  %i.n = sext i32 %i.c to i64                     ; 2 uses
  %i.o = shl nsw i64 %i.n, 2
  %scevgep = getelementptr i8, ptr %i.m, i64 %i.o
  %i.p = mul nsw i64 %i.n, -4
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.p, i1 false), !tbaa !54
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i, %bb.b
  store i32 0, ptr %i.b, align 4, !tbaa !89
  store i32 0, ptr %4, align 4, !tbaa !54
  store <2 x float> splat (float 1.000000e+00), ptr %7, align 4, !tbaa !9
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store float 1.000000e+00, ptr %i.q, align 4, !tbaa !9
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
  %.0282381.epil.init = phi ptr [ %2, %.loopexit ], [ %i.ax, %.unr-lcssa ]
  %.epil.init = phi <4 x float> [ splat (float f0xFF7FFFFF), %.loopexit ], [ %i.aw, %.unr-lcssa ] ; 2 uses
  %.epil.init548 = phi <4 x float> [ splat (float f0x7F7FFFFF), %.loopexit ], [ %i.av, %.unr-lcssa ] ; 2 uses
  %lcmp.mod551 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod551)
  %i.t = load <3 x float>, ptr %.0282381.epil.init, align 4, !tbaa !9
  %i.u = shufflevector <3 x float> %i.t, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 4 uses
  %i.v = fcmp olt <4 x float> %i.u, %.epil.init548
  %i.w = fcmp ogt <4 x float> %i.u, %.epil.init
  %i.x = select <4 x i1> %i.v, <4 x float> %i.u, <4 x float> %.epil.init548
  %i.y = select <4 x i1> %i.w, <4 x float> %i.u, <4 x float> %.epil.init
  br label %bb.e

bb.e:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa546 = phi <4 x float> [ %i.av, %.unr-lcssa ], [ %i.x, %.epil.preheader ] ; 2 uses
  %.lcssa545 = phi <4 x float> [ %i.aw, %.unr-lcssa ], [ %i.y, %.epil.preheader ]
  %i.z = fsub <4 x float> %.lcssa545, %.lcssa546  ; 5 uses
  %i.aa = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.z, <4 x float> splat (float 5.000000e-01), <4 x float> %.lcssa546) ; 6 uses
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
  %.0282381 = phi ptr [ %2, %.loopexit.new ], [ %i.ax, %bb.f ] ; 2 uses
  %i.ai = phi <4 x float> [ splat (float f0xFF7FFFFF), %.loopexit.new ], [ %i.aw, %bb.f ] ; 2 uses
  %i.aj = phi <4 x float> [ splat (float f0x7F7FFFFF), %.loopexit.new ], [ %i.av, %bb.f ] ; 2 uses
  %niter = phi i32 [ 0, %.loopexit.new ], [ %niter.next.1, %bb.f ]
  %i.ak = load <3 x float>, ptr %.0282381, align 4, !tbaa !9
  %i.al = shufflevector <3 x float> %i.ak, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 4 uses
  %i.am = fcmp olt <4 x float> %i.al, %i.aj
  %i.an = fcmp ogt <4 x float> %i.al, %i.ai
  %i.ao = select <4 x i1> %i.am, <4 x float> %i.al, <4 x float> %i.aj ; 2 uses
  %i.ap = select <4 x i1> %i.an, <4 x float> %i.al, <4 x float> %i.ai ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0282381, i64 %i.r ; 2 uses
  %i.ar = load <3 x float>, ptr %i.aq, align 4, !tbaa !9
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
  store <2 x float> %i.ab, ptr %7, align 4, !tbaa !9
  store float %i.af, ptr %i.q, align 4, !tbaa !9
  %i.bx = fdiv <2 x float> splat (float 1.000000e+00), %i.ab ; 3 uses
  %i.by = fdiv float 1.000000e+00, %i.af          ; 2 uses
  %i.bz = extractelement <4 x float> %i.aa, i64 0
  %i.ca = extractelement <2 x float> %i.bx, i64 0
  %i.cb = fmul float %i.bz, %i.ca
  %i.cc = shufflevector <4 x float> %i.aa, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.cd = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ce = insertelement <2 x float> %i.cd, float %i.by, i64 1
  %i.cf = fmul <2 x float> %i.cc, %i.ce           ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.cj = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.ck = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cl = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cm = insertelement <2 x float> poison, float %6, i64 0
  %i.cn = shufflevector <2 x float> %i.cm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.co = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  br label %bb.m

bb.l:                                             ; preds = %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit
  %i.cp = load i32, ptr %4, align 4, !tbaa !54    ; 3 uses
  %.not392 = icmp eq i32 %i.cp, 0
  br i1 %.not392, label %._crit_edge, label %.lr.ph390.preheader

.lr.ph390.preheader:                              ; preds = %bb.l
  %wide.trip.count413 = zext i32 %i.cp to i64
  br label %.lr.ph390

bb.m:                                             ; preds = %bb.k, %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit
  %.1283387 = phi ptr [ %2, %bb.k ], [ %i.cq, %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit ] ; 3 uses
  %.0301386 = phi i32 [ 0, %bb.k ], [ %i.fx, %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.1283387, i64 %i.r
  %i.cr = load <2 x float>, ptr %.1283387, align 4, !tbaa !9
  %i.cs = getelementptr inbounds nuw i8, ptr %.1283387, i64 8
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !9
  %i.cu = fmul <2 x float> %i.bx, %i.cr           ; 5 uses
  %i.cv = fmul float %i.by, %i.ct                 ; 4 uses
  %i.cw = load i32, ptr %4, align 4, !tbaa !54    ; 6 uses
  %.not = icmp eq i32 %i.cw, 0
  br i1 %.not, label %.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.m
  %wide.trip.count = zext i32 %i.cw to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.p
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.p ] ; 3 uses
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv ; 5 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  %i.cz = load <2 x float>, ptr %i.cx, align 4, !tbaa !9 ; 3 uses
  %i.da = load float, ptr %i.cy, align 4, !tbaa !9
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.dc = load float, ptr %i.db, align 4, !tbaa !9 ; 2 uses
  %i.dd = fsub float %i.dc, %i.cv
  %i.de = tail call noundef float @llvm.fabs.f32(float %i.dd)
  %i.df = insertelement <2 x float> %i.cz, float %i.da, i64 1
  %i.dg = fsub <2 x float> %i.df, %i.cu
  %i.dh = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.dg)
  %i.di = fcmp uge <2 x float> %i.dh, %i.cn
  %i.dj = bitcast <2 x i1> %i.di to i2
  %or.cond335 = icmp eq i2 %i.dj, 0
  %i.dk = fcmp olt float %i.de, %6
  %or.cond336 = and i1 %or.cond335, %i.dk
  br i1 %or.cond336, label %bb.n, label %bb.p

bb.n:                                             ; preds = %.lr.ph
  %i.dl = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.dm = insertelement <2 x float> poison, float %i.cv, i64 0
  %i.dn = insertelement <2 x float> %i.dm, float %i.dc, i64 1
  %i.do = fsub <2 x float> %i.dn, %i.co           ; 2 uses
  %i.dp = shufflevector <2 x float> %i.cu, <2 x float> %i.cz, <2 x i32> <i32 0, i32 2>
  %i.dq = fsub <2 x float> %i.dp, %i.ck           ; 2 uses
  %i.dr = shufflevector <2 x float> %i.cu, <2 x float> %i.cz, <2 x i32> <i32 1, i32 3>
  %i.ds = fsub <2 x float> %i.dr, %i.cl           ; 2 uses
  %i.dt = fmul <2 x float> %i.ds, %i.ds
  %i.du = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dq, <2 x float> %i.dq, <2 x float> %i.dt)
  %i.dv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.do, <2 x float> %i.do, <2 x float> %i.du) ; 2 uses
  %i.dw = extractelement <2 x float> %i.dv, i64 0
  %i.dx = extractelement <2 x float> %i.dv, i64 1
  %i.dy = fcmp ogt float %i.dw, %i.dx
  br i1 %i.dy, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store <2 x float> %i.cu, ptr %i.cx, align 4, !tbaa !9
  store float %i.cv, ptr %i.dz, align 4, !tbaa !9
  br label %.thread

bb.p:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond404.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond404.not, label %.thread.thread, label %.lr.ph, !llvm.loop !156

.thread:                                          ; preds = %bb.m, %bb.o, %bb.n
  %.0297372 = phi i32 [ %i.dl, %bb.n ], [ %i.dl, %bb.o ], [ 0, %bb.m ] ; 3 uses
  %i.ea = icmp eq i32 %.0297372, %i.cw
  br i1 %i.ea, label %.thread.thread, label %bb.q

.thread.thread:                                   ; preds = %bb.p, %.thread
  %.0297372464 = phi i32 [ %.0297372, %.thread ], [ %i.cw, %bb.p ]
  %i.eb = zext i32 %i.cw to i64
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.eb ; 2 uses
  store <2 x float> %i.cu, ptr %i.ec, align 4, !tbaa !9
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store float %i.cv, ptr %i.ed, align 4, !tbaa !9
  %i.ee = add i32 %i.cw, 1
  store i32 %i.ee, ptr %4, align 4, !tbaa !54
  br label %bb.q

bb.q:                                             ; preds = %.thread.thread, %.thread
  %.0297372463 = phi i32 [ %.0297372464, %.thread.thread ], [ %.0297372, %.thread ]
  %i.ef = load i32, ptr %i.b, align 4, !tbaa !89  ; 7 uses
  %i.eg = load i32, ptr %i.cg, align 8, !tbaa !90
  %i.eh = icmp eq i32 %i.ef, %i.eg
  br i1 %i.eh, label %bb.r, label %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit

bb.r:                                             ; preds = %bb.q
  %.not.i.i = icmp eq i32 %i.ef, 0
  %i.ei = shl nsw i32 %i.ef, 1
  %i.ej = select i1 %.not.i.i, i32 1, i32 %i.ei   ; 4 uses
  %i.ek = icmp slt i32 %i.ef, %i.ej
  br i1 %i.ek, label %bb.s, label %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit

bb.s:                                             ; preds = %bb.r
  %.not.i.i.i = icmp eq i32 %i.ej, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.el = sext i32 %i.ej to i64
  %i.em = shl nsw i64 %i.el, 2
  %i.en = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.em, i32 noundef 16)
  %.pre.i = load i32, ptr %i.b, align 4, !tbaa !89
  br label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i: ; preds = %bb.t, %bb.s
  %i.eo = phi i32 [ %.pre.i, %bb.t ], [ %i.ef, %bb.s ] ; 4 uses
  %.0.i.i.i = phi ptr [ %i.en, %bb.t ], [ null, %bb.s ] ; 8 uses
  %i.ep = icmp sgt i32 %i.eo, 0
  %i.eq = load ptr, ptr %i.ch, align 8, !tbaa !78 ; 9 uses
  br i1 %i.ep, label %.lr.ph.i.i.i345, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i341

.lr.ph.i.i.i345:                                  ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i
  %i.er = ptrtoaddr ptr %i.eq to i64
  %.0.i.i.i533 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i346 = zext nneg i32 %i.eo to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.eo, 8
  %i.es = sub i64 %i.er, %.0.i.i.i533
  %diff.check = icmp ugt i64 %i.es, -32
  %or.cond535 = select i1 %min.iters.check, i1 true, i1 %diff.check
end_hunk_5
