Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btConvexConcaveCollisionAlgorithm?download=true
inline.NumInlined: 393
inline.NumDeleted: 137
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN24btConvexTriangleCallback15processTriangleEP9btVector3ii:bb.a

bb.i:                                             ; preds = %bb.g
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.j:                                             ; preds = %.invoke
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.k:                                             ; preds = %bb.h
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !30
  br label %.invoke

.invoke:                                          ; preds = %bb.h, %bb.k
  %i.cv = phi ptr [ %i.cu, %bb.k ], [ null, %bb.h ]
  %i.cw = phi i32 [ 1, %bb.k ], [ 2, %bb.h ]
  %i.cx = load ptr, ptr %i.bo, align 8, !tbaa !10
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = invoke noundef ptr %i.cz(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef %i.cq, ptr noundef nonnull %6, ptr noundef %i.cv, i32 noundef %i.cw)
          to label %bb.l unwind label %bb.j       ; 5 uses

bb.l:                                             ; preds = %.invoke
  %i.db = load ptr, ptr %i.cl, align 8, !tbaa !54 ; 6 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !58 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !29
  %i.dg = load ptr, ptr %i.cc, align 8, !tbaa !24
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !29
  %i.dj = icmp eq ptr %i.df, %i.di
  br i1 %i.dj, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  store ptr %6, ptr %i.dc, align 8, !tbaa !58
  %i.dk = load ptr, ptr %i.db, align 8, !tbaa !10
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8
  invoke void %i.dm(ptr noundef nonnull align 8 dereferenceable(52) %i.db, i32 noundef %2, i32 noundef %3)
          to label %bb.p unwind label %bb.n

bb.n:                                             ; preds = %bb.x, %bb.o, %bb.m
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.o:                                             ; preds = %bb.l
  %i.do = getelementptr inbounds nuw i8, ptr %i.db, i64 24 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !59
  store ptr %6, ptr %i.do, align 8, !tbaa !59
  %i.dq = load ptr, ptr %i.db, align 8, !tbaa !10
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8
  invoke void %i.ds(ptr noundef nonnull align 8 dereferenceable(52) %i.db, i32 noundef %2, i32 noundef %3)
          to label %bb.p unwind label %bb.n

bb.p:                                             ; preds = %bb.o, %bb.m
  %.0 = phi ptr [ %i.dd, %bb.m ], [ %i.dp, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  invoke void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull @.str.1)
          to label %bb.q unwind label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.dt = load ptr, ptr %i.bp, align 8, !tbaa !23
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !22
  %i.dw = load ptr, ptr %i.cl, align 8, !tbaa !54
  %i.dx = load ptr, ptr %i.da, align 8, !tbaa !10
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8
  invoke void %i.dz(ptr noundef nonnull align 8 dereferenceable(16) %i.da, ptr noundef %i.dt, ptr noundef nonnull %6, ptr noundef nonnull align 8 dereferenceable(49) %i.dv, ptr noundef %i.dw)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %bb.q
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  %i.ea = load ptr, ptr %i.cl, align 8, !tbaa !54 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !58
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !29
  %i.ef = load ptr, ptr %i.cc, align 8, !tbaa !24
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !29
  %i.ei = icmp eq ptr %i.ee, %i.eh
  br i1 %i.ei, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  store ptr %.0, ptr %i.eb, align 8, !tbaa !58
  br label %bb.x

bb.t:                                             ; preds = %bb.p
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %bb.q
  %i.ek = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #14
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.ek, %bb.u ], [ %i.ej, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %bb.z

bb.w:                                             ; preds = %bb.r
  %i.el = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  store ptr %.0, ptr %i.el, align 8, !tbaa !59
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.s
  %i.em = load ptr, ptr %i.da, align 8, !tbaa !10
  %i.en = load ptr, ptr %i.em, align 8
  call void %i.en(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.da) #14
  %i.eo = load ptr, ptr %i.bo, align 8, !tbaa !10
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 120
  %i.eq = load ptr, ptr %i.ep, align 8
  invoke void %i.eq(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef nonnull %i.da)
          to label %bb.y unwind label %bb.n

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @_ZN23btPolyhedralConvexShapeD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %_Z24TestTriangleAgainstAabb2PK9btVector3RS0_S2_.exit.thread

bb.z:                                             ; preds = %bb.n, %bb.v, %bb.j
  %.pn26.pn = phi { ptr, i32 } [ %i.cs, %bb.j ], [ %i.dn, %bb.n ], [ %.pn, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @_ZN23btPolyhedralConvexShapeD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %5) #14
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.i
  %.pn26.pn.pn = phi { ptr, i32 } [ %.pn26.pn, %bb.z ], [ %i.cr, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  resume { ptr, i32 } %.pn26.pn.pn

_Z24TestTriangleAgainstAabb2PK9btVector3RS0_S2_.exit.thread: ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %bb.e, %bb.f, %bb.y, %_Z24TestTriangleAgainstAabb2PK9btVector3RS0_S2_.exit
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

declare void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN21btConvexInternalShape9setMarginEf(ptr noundef nonnull align 8 dereferenceable(72) %0, float noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store float %1, ptr %i.a, align 8, !tbaa !53
  ret void
}

; Function Attrs: nounwind
declare void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: nounwind
declare void @_ZN23btPolyhedralConvexShapeD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN24btConvexTriangleCallback22setTimeStepAndCountersEfRK16btDispatcherInfoPK24btCollisionObjectWrapperS5_P16btManifoldResult(ptr noundef nonnull align 8 dereferenceable(96) initializes((40, 64), (72, 84)) %0, float noundef %1, ptr noundef nonnull align 8 dereferenceable(49) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #7 align 2 {
bb.a:
  %6 = alloca %class.btTransform, align 16        ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %3, ptr %i.a, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %4, ptr %i.b, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %2, ptr %i.c, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  store float %1, ptr %i.d, align 8, !tbaa !50
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %5, ptr %i.e, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !60, !nonnull !43, !align !61 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.m = load float, ptr %i.j, align 4, !tbaa !44, !noalias !103 ; 2 uses
  %i.n = load float, ptr %i.k, align 4, !tbaa !44, !noalias !103 ; 2 uses
  %i.o = load float, ptr %i.l, align 4, !tbaa !44, !noalias !103 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !60, !nonnull !43, !align !61 ; 10 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 36
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 48 ; 2 uses
  %i.ab = load <2 x float>, ptr %i.g, align 4, !tbaa !44, !noalias !103 ; 3 uses
  %i.ac = load <2 x float>, ptr %i.h, align 4, !tbaa !44, !noalias !103 ; 3 uses
  %i.ad = load <2 x float>, ptr %i.i, align 4, !tbaa !44, !noalias !103 ; 3 uses
  %i.ae = load <3 x float>, ptr %i.p, align 4, !tbaa !44, !noalias !104
  %i.af = fneg <3 x float> %i.ae                  ; 5 uses
  %i.ag = shufflevector <3 x float> %i.af, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ah = fmul <2 x float> %i.ac, %i.ag
  %i.ai = shufflevector <3 x float> %i.af, <3 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> %i.ai, <2 x float> %i.ah)
  %i.ak = shufflevector <3 x float> %i.af, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.al = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ad, <2 x float> %i.ak, <2 x float> %i.aj)
  %7 = load <3 x float>, ptr %i.aa, align 4, !tbaa !44, !noalias !105 ; 5 uses
  %8 = load float, ptr %i.aa, align 4, !tbaa !44, !noalias !105
  %i.am = shufflevector <3 x float> %7, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.an = fmul <2 x float> %i.ac, %i.am
  %i.ao = shufflevector <3 x float> %7, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ap = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> %i.ab, <2 x float> %i.an)
  %9 = shufflevector <3 x float> %7, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.aq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %9, <2 x float> %i.ad, <2 x float> %i.ap)
  %i.ar = insertelement <2 x float> poison, float %i.n, i64 0
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> zeroinitializer
  %10 = shufflevector <3 x float> %i.af, <3 x float> %7, <2 x i32> <i32 1, i32 4>
  %i.at = fmul <2 x float> %i.as, %10
  %i.au = insertelement <2 x float> poison, float %i.m, i64 0
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer
  %11 = insertelement <2 x float> %i.ai, float %8, i64 1
  %i.aw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.av, <2 x float> %11, <2 x float> %i.at)
  %i.ax = insertelement <2 x float> poison, float %i.o, i64 0
  %i.ay = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> zeroinitializer
  %12 = shufflevector <3 x float> %i.af, <3 x float> %7, <2 x i32> <i32 2, i32 5>
  %i.az = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ay, <2 x float> %12, <2 x float> %i.aw) ; 2 uses
  %i.ba = fadd <2 x float> %i.al, %i.aq
  %shift = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.az, %shift
  %.sroa.3.12.vec.insert.i4.i.i27 = insertelement <2 x float> %foldExtExtBinop, float 0.000000e+00, i64 1
  %i.bb = load <2 x float>, ptr %i.r, align 4, !tbaa !44, !noalias !106 ; 2 uses
  %i.bc = load <2 x float>, ptr %i.s, align 4, !tbaa !44, !noalias !106 ; 2 uses
  %i.bd = load <2 x float>, ptr %i.t, align 4, !tbaa !44, !noalias !106 ; 2 uses
  %i.be = shufflevector <2 x float> %i.ac, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bf = shufflevector <4 x float> %i.be, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.bg = shufflevector <2 x float> %i.bc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bh = insertelement <4 x float> %i.bg, float 1.000000e+00, i64 3
  %i.bi = shufflevector <2 x float> %i.bb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bj = insertelement <4 x float> %i.bi, float 0.000000e+00, i64 3
  %i.bk = shufflevector <2 x float> %i.ab, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bl = shufflevector <4 x float> %i.bk, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.bm = shufflevector <2 x float> %i.bd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bn = insertelement <4 x float> %i.bm, float 0.000000e+00, i64 3
  %i.bo = shufflevector <2 x float> %i.ad, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bp = shufflevector <4 x float> %i.bo, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.br = load <2 x float>, ptr %i.v, align 4, !tbaa !44, !noalias !106 ; 2 uses
  %i.bs = load float, ptr %i.y, align 4, !tbaa !44, !noalias !106
  %i.bt = load <2 x float>, ptr %i.u, align 4, !tbaa !44, !noalias !106 ; 2 uses
  %i.bu = load float, ptr %i.x, align 4, !tbaa !44, !noalias !106
  %i.bv = load <2 x float>, ptr %i.w, align 4, !tbaa !44, !noalias !106 ; 2 uses
  %i.bw = load float, ptr %i.z, align 4, !tbaa !44, !noalias !106
  %i.bx = shufflevector <2 x float> %i.br, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.by = shufflevector <4 x float> %i.bh, <4 x float> %i.bx, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.bz = fmul <4 x float> %i.bf, %i.by
  %i.ca = shufflevector <2 x float> %i.bt, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cb = shufflevector <4 x float> %i.bj, <4 x float> %i.ca, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.cc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cb, <4 x float> %i.bl, <4 x float> %i.bz)
  %i.cd = shufflevector <2 x float> %i.bv, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ce = shufflevector <4 x float> %i.bn, <4 x float> %i.cd, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.cf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ce, <4 x float> %i.bp, <4 x float> %i.cc)
  %i.cg = shufflevector <4 x float> %i.be, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.ch = shufflevector <2 x float> %i.bc, <2 x float> %i.br, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.ci = insertelement <4 x float> %i.ch, float 1.000000e+00, i64 3 ; 2 uses
  %i.cj = fmul <4 x float> %i.cg, %i.ci
  %i.ck = shufflevector <2 x float> %i.bb, <2 x float> %i.bt, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.cl = insertelement <4 x float> %i.ck, float 0.000000e+00, i64 3 ; 2 uses
  %i.cm = shufflevector <4 x float> %i.bk, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.cn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cl, <4 x float> %i.cm, <4 x float> %i.cj)
  %i.co = shufflevector <2 x float> %i.bd, <2 x float> %i.bv, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.cp = insertelement <4 x float> %i.co, float 0.000000e+00, i64 3 ; 2 uses
  %i.cq = shufflevector <4 x float> %i.bo, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.cr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cp, <4 x float> %i.cq, <4 x float> %i.cn)
  store <4 x float> %i.cf, ptr %6, align 16
  store <4 x float> %i.cr, ptr %i.bq, align 16
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ct = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.n, i64 0
  %i.cu = shufflevector <4 x float> %i.ct, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cv = insertelement <4 x float> %i.ci, float %i.bs, i64 2
  %i.cw = fmul <4 x float> %i.cu, %i.cv
  %i.cx = insertelement <4 x float> %i.cl, float %i.bu, i64 2
  %i.cy = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.m, i64 0
  %i.cz = shufflevector <4 x float> %i.cy, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.da = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cx, <4 x float> %i.cz, <4 x float> %i.cw)
  %i.db = insertelement <4 x float> %i.cp, float %i.bw, i64 2
  %i.dc = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.o, i64 0
  %i.dd = shufflevector <4 x float> %i.dc, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.de = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.db, <4 x float> %i.dd, <4 x float> %i.da)
  store <4 x float> %i.de, ptr %i.cs, align 16
  %i.df = getelementptr inbounds nuw i8, ptr %6, i64 48
  store <2 x float> %i.ba, ptr %i.df, align 16
  %.sroa.19.48..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i27, ptr %.sroa.19.48..sroa_idx, align 8, !tbaa !48
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !45 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.dk = load ptr, ptr %i.dh, align 8, !tbaa !10
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8
  call void %i.dm(ptr noundef nonnull align 8 dereferenceable(32) %i.dh, ptr noundef nonnull align 4 dereferenceable(64) %6, ptr noundef nonnull align 4 dereferenceable(16) %i.di, ptr noundef nonnull align 4 dereferenceable(16) %i.dj)
  %i.dn = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.do = load float, ptr %i.dn, align 8, !tbaa !57
  %i.dp = fadd float %1, %i.do                    ; 3 uses
  %i.dq = load <2 x float>, ptr %i.dj, align 8, !tbaa !44
  %i.dr = insertelement <2 x float> poison, float %i.dp, i64 0
  %i.ds = shufflevector <2 x float> %i.dr, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dt = fadd <2 x float> %i.ds, %i.dq
  store <2 x float> %i.dt, ptr %i.dj, align 8, !tbaa !44
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.dv = load float, ptr %i.du, align 8, !tbaa !44
  %i.dw = fadd float %i.dp, %i.dv
  store float %i.dw, ptr %i.du, align 8, !tbaa !44
  %i.dx = load <2 x float>, ptr %i.di, align 8, !tbaa !44
  %i.dy = fsub <2 x float> %i.dx, %i.ds
  store <2 x float> %i.dy, ptr %i.di, align 8, !tbaa !44
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ea = load float, ptr %i.dz, align 8, !tbaa !44
  %i.eb = fsub float %i.ea, %i.dp
  store float %i.eb, ptr %i.dz, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN33btConvexConcaveCollisionAlgorithm10clearCacheEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(113) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.d), !inline_history !31
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN33btConvexConcaveCollisionAlgorithm16processCollisionEPK24btCollisionObjectWrapperS2_RK16btDispatcherInfoP16btManifoldResult(ptr noundef nonnull align 8 dereferenceable(113) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(49) %3, ptr noundef %4) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.CProfileSample, align 1      ; 6 uses
  %6 = alloca %class.btAlignedObjectArray.0, align 8 ; 8 uses
  %7 = alloca %class.btVector3, align 4           ; 5 uses
  %8 = alloca %class.btVector3, align 8           ; 6 uses
  %9 = alloca %class.btVector3, align 16          ; 9 uses
  %i.a = alloca float, align 4                    ; 6 uses
  %10 = alloca %class.btVector3, align 8          ; 6 uses
  %11 = alloca %class.btVector3, align 8          ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull @.str.2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load i8, ptr %i.b, align 8, !tbaa !36, !range !42, !noundef !43
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = select i1 %i.d, ptr %2, ptr %1           ; 4 uses
  %i.f = select i1 %i.d, ptr %1, ptr %2           ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !45   ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !47   ; 2 uses
  %i.k = add i32 %i.j, -21
  %i.l = icmp ult i32 %i.k, 9
  br i1 %i.l, label %bb.b, label %bb.au

bb.b:                                             ; preds = %bb.a
  %i.m = icmp eq i32 %i.j, 29
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !45   ; 9 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !47   ; 3 uses
  %i.r = icmp slt i32 %i.q, 20                    ; 2 uses
  br i1 %i.m, label %bb.c, label %bb.ao

bb.c:                                             ; preds = %bb.b
  br i1 %i.r, label %bb.d, label %bb.au

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 4 uses
  store i8 1, ptr %i.s, align 8, !tbaa !112
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr null, ptr %i.t, align 8, !tbaa !65
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 6 uses
  store i32 0, ptr %i.u, align 4, !tbaa !113
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i32 0, ptr %i.v, align 8, !tbaa !114
  %i.w = icmp slt i32 %i.q, 7
  br i1 %i.w, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.d, %bb.m
  %i.x = phi ptr [ %i.ax, %bb.m ], [ null, %bb.d ] ; 11 uses
  %i.y = phi i32 [ %i.ay, %bb.m ], [ 0, %bb.d ]   ; 17 uses
  %.pre2.i = phi i32 [ %i.bc, %bb.m ], [ 0, %bb.d ] ; 5 uses
  %.052 = phi i32 [ %i.bd, %bb.m ], [ 0, %bb.d ]  ; 3 uses
  %i.z = load ptr, ptr %i.o, align 8, !tbaa !10
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 200
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = invoke noundef i32 %i.ab(ptr noundef nonnull align 8 dereferenceable(80) %i.o)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.preheader
  %i.ad = icmp slt i32 %.052, %i.ac
  br i1 %i.ad, label %bb.g, label %bb.o

bb.f:                                             ; preds = %.preheader
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.af = load ptr, ptr %i.o, align 8, !tbaa !10
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 224
  %i.ah = load ptr, ptr %i.ag, align 8
  invoke void %i.ah(ptr noundef nonnull align 8 dereferenceable(80) %i.o, i32 noundef %.052, ptr noundef nonnull align 4 dereferenceable(16) %7)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.ai = icmp eq i32 %.pre2.i, %i.y
  br i1 %i.ai, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %.not.i.i = icmp eq i32 %i.y, 0
  %i.aj = shl i32 %i.y, 1
  %i.ak = select i1 %.not.i.i, i32 1, i32 %i.aj   ; 5 uses
  %i.al = icmp slt i32 %i.y, %i.ak
  br i1 %i.al, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = sext i32 %i.ak to i64
  %i.an = shl nsw i64 %i.am, 4
  %i.ao = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.an, i32 noundef 16)
          to label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i unwind label %bb.n

_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i = phi ptr [ null, %bb.j ], [ %i.ao, %bb.k ] ; 5 uses
  %i.ap = icmp sgt i32 %i.y, 0
  br i1 %i.ap, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.y to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.aq = icmp eq i32 %i.y, 1
  br i1 %i.aq, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %bb.l
end_hunk_0
begin_hunk_1_@_ZN33btConvexConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult:bb.a
  %.sroa.11.16..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 96
  store float %i.fa, ptr %.sroa.11.16..sroa_idx, align 8
  %.sroa.12.16..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 100
  store float 0.000000e+00, ptr %.sroa.12.16..sroa_idx, align 4, !tbaa !48
  %i.gv = getelementptr inbounds nuw i8, ptr %7, i64 104
  store <2 x float> %i.dx, ptr %i.gv, align 8
  %.sroa.16.32..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 112
  store float %i.eo, ptr %.sroa.16.32..sroa_idx, align 8
  %.sroa.17.32..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 116
  store float 0.000000e+00, ptr %.sroa.17.32..sroa_idx, align 4, !tbaa !48
  %i.gw = getelementptr inbounds nuw i8, ptr %7, i64 120
  store <2 x float> %i.fj, ptr %i.gw, align 8
  %.sroa.24.48..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 128
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i31119, ptr %.sroa.24.48..sroa_idx, align 8, !tbaa !48
  %i.gx = getelementptr inbounds nuw i8, ptr %7, i64 200
  store float %i.gg, ptr %i.gx, align 8, !tbaa !69
  %i.gy = getelementptr inbounds nuw i8, ptr %7, i64 204 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.d, i64 300 ; 3 uses
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !147
  store float %i.ha, ptr %i.gy, align 4, !tbaa !70
  %i.hb = load ptr, ptr %i.fm, align 8, !tbaa !10
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 128
  %i.hd = load ptr, ptr %i.hc, align 8
  invoke void %i.hd(ptr noundef nonnull align 8 dereferenceable(36) %i.fm, ptr noundef nonnull %7, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit5.i
  %i.he = landingpad { ptr, i32 }
          cleanup
  call void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  resume { ptr, i32 } %i.he

bb.g:                                             ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit5.i
  %i.hf = load float, ptr %i.gy, align 4, !tbaa !70 ; 3 uses
  %i.hg = load float, ptr %i.gz, align 4, !tbaa !147
  %i.hh = fcmp uge float %i.hf, %i.hg
  br i1 %i.hh, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  store float %i.hf, ptr %i.gz, align 4, !tbaa !147
  br label %.sink.split

.sink.split:                                      ; preds = %bb.g, %bb.h
  %.2.ph = phi float [ %i.hf, %bb.h ], [ 1.000000e+00, %bb.g ]
  call void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.b, %bb.a
  %.2 = phi float [ 1.000000e+00, %bb.a ], [ 1.000000e+00, %bb.b ], [ %.2.ph, %.sink.split ]
  ret float %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nounwind
declare void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #2

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #1

declare void @_ZN23btPolyhedralConvexShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN15btTriangleShapeD0Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN23btPolyhedralConvexShapeD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #14
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
          to label %_ZN15btTriangleShapedlEPv.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #15
  unreachable

_ZN15btTriangleShapedlEPv.exit:                   ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK15btTriangleShape7getAabbERK11btTransformR9btVector3S4_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3)
  ret void
}

declare void @_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #1

declare noundef float @_ZNK16btCollisionShape20getAngularMotionDiscEv(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

declare noundef float @_ZNK16btCollisionShape27getContactBreakingThresholdEf(ptr noundef nonnull align 8 dereferenceable(32), float noundef) unnamed_addr #1

declare void @_ZN21btConvexInternalShape15setLocalScalingERK9btVector3(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(16) ptr @_ZNK21btConvexInternalShape15getLocalScalingEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK15btTriangleShape21calculateLocalInertiaEfR9btVector3(ptr noundef nonnull align 8 dereferenceable(128) %0, float noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK15btTriangleShape7getNameEv(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret ptr @.str.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, <2 x float> } @_ZNK16btCollisionShape38getAnisotropicRollingFrictionDirectionEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret { <2 x float>, <2 x float> } { <2 x float> splat (float 1.000000e+00), <2 x float> <float 1.000000e+00, float 0.000000e+00> }
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef float @_ZNK21btConvexInternalShape9getMarginEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load float, ptr %i.a, align 8, !tbaa !53
  ret float %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK21btConvexInternalShape28calculateSerializeBufferSizeEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret i32 56
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK21btConvexInternalShape9serializeEPvP12btSerializer(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK16btCollisionShape9serializeEPvP12btSerializer(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load float, ptr %i.b, align 8, !tbaa !44
  store float %i.d, ptr %i.c, align 4, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.f = load float, ptr %i.e, align 4, !tbaa !44
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 36
  store float %i.f, ptr %i.g, align 4, !tbaa !44
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load float, ptr %i.h, align 8, !tbaa !44
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  store float %i.i, ptr %i.j, align 4, !tbaa !44
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.l = load float, ptr %i.k, align 4, !tbaa !44
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 44
  store float %i.l, ptr %i.m, align 4, !tbaa !44
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load float, ptr %i.n, align 8, !tbaa !44
  store float %i.p, ptr %i.o, align 4, !tbaa !44
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.r = load float, ptr %i.q, align 4, !tbaa !44
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 20
  store float %i.r, ptr %i.s, align 4, !tbaa !44
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load float, ptr %i.t, align 8, !tbaa !44
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  store float %i.u, ptr %i.v, align 4, !tbaa !44
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.x = load float, ptr %i.w, align 4, !tbaa !44
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 28
  store float %i.x, ptr %i.y, align 4, !tbaa !44
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aa = load float, ptr %i.z, align 8, !tbaa !53
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48
  store float %i.aa, ptr %i.ab, align 8, !tbaa !152
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 52
  store i32 0, ptr %i.ac, align 4, !tbaa !153
  ret ptr @.str.4
}

declare void @_ZNK16btCollisionShape20serializeSingleShapeEP12btSerializer(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #1

declare { <2 x float>, <2 x float> } @_ZNK21btConvexInternalShape24localGetSupportingVertexERK9btVector3(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, <2 x float> } @_ZNK15btTriangleShape37localGetSupportingVertexWithoutMarginERK9btVector3(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load <4 x float>, ptr %i.f, align 8
  %i.h = shufflevector <4 x float> %i.g, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.j = load float, ptr %i.i, align 8, !tbaa !44
  %i.k = load <2 x float>, ptr %i.a, align 8, !tbaa !44
  %i.l = load float, ptr %2, align 4, !tbaa !44
  %i.m = load float, ptr %i.d, align 4, !tbaa !44 ; 3 uses
  %i.n = load float, ptr %1, align 4, !tbaa !44   ; 2 uses
  %4 = load float, ptr %i.e, align 4, !tbaa !44   ; 2 uses
  %5 = load <2 x float>, ptr %i.b, align 8, !tbaa !44
  %6 = load float, ptr %3, align 4, !tbaa !44
  %7 = fmul float %i.m, %6
  %8 = fmul float %i.m, %i.l
  %i.o = insertelement <2 x float> poison, float %i.n, i64 0
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer
  %i.q = shufflevector <2 x float> %i.k, <2 x float> %5, <2 x i32> <i32 0, i32 2>
  %9 = insertelement <2 x float> poison, float %8, i64 0
  %10 = insertelement <2 x float> %9, float %7, i64 1
  %i.r = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.p, <2 x float> %i.q, <2 x float> %10)
  %i.s = insertelement <2 x float> poison, float %4, i64 0
  %i.t = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> zeroinitializer
  %i.u = insertelement <2 x float> %i.h, float %i.j, i64 1
  %i.v = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> %i.u, <2 x float> %i.r) ; 2 uses
  %i.w = load float, ptr %i.c, align 8, !tbaa !44
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.y = load float, ptr %i.x, align 4, !tbaa !44
  %i.z = fmul float %i.m, %i.y
  %i.aa = tail call float @llvm.fmuladd.f32(float %i.n, float %i.w, float %i.z)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ac = load float, ptr %i.ab, align 8, !tbaa !44
  %i.ad = tail call noundef float @llvm.fmuladd.f32(float %4, float %i.ac, float %i.aa)
  %i.ae = extractelement <2 x float> %i.v, i64 0  ; 2 uses
  %i.af = extractelement <2 x float> %i.v, i64 1  ; 2 uses
  %i.ag = fcmp olt float %i.ae, %i.af             ; 2 uses
  %..i = select i1 %i.ag, float %i.af, float %i.ae
  %i.ah = fcmp olt float %..i, %i.ad
  %i.ai = zext i1 %i.ag to i64
  %i.aj = select i1 %i.ah, i64 2, i64 %i.ai
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.aj ; 2 uses
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.ak, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.2.0.copyload = load <2 x float>, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !48
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.2.0.copyload, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

declare void @_ZNK13btConvexShape7projectERK11btTransformRK9btVector3RfS6_RS3_S7_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK15btTriangleShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load float, ptr %i.f, align 8, !tbaa !44
  %i.o = load float, ptr %i.h, align 8, !tbaa !44
  %i.p = load <2 x float>, ptr %i.b, align 8, !tbaa !44
  %i.q = load float, ptr %i.e, align 4, !tbaa !44
  %i.r = load float, ptr %i.l, align 4, !tbaa !44 ; 3 uses
  %i.s = load float, ptr %i.k, align 4, !tbaa !44 ; 2 uses
  %i.t = load float, ptr %i.m, align 4, !tbaa !44 ; 2 uses
  %i.u = load <2 x float>, ptr %i.c, align 8, !tbaa !44
  %i.v = load float, ptr %i.g, align 4, !tbaa !44
  %i.w = fmul float %i.r, %i.v
  %i.x = fmul float %i.r, %i.q
  %i.y = insertelement <2 x float> poison, float %i.s, i64 0
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aa = shufflevector <2 x float> %i.p, <2 x float> %i.u, <2 x i32> <i32 0, i32 2>
  %i.ab = insertelement <2 x float> poison, float %i.x, i64 0
  %i.ac = insertelement <2 x float> %i.ab, float %i.w, i64 1
  %i.ad = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.z, <2 x float> %i.aa, <2 x float> %i.ac)
  %i.ae = insertelement <2 x float> poison, float %i.t, i64 0
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ag = insertelement <2 x float> poison, float %i.n, i64 0
  %i.ah = insertelement <2 x float> %i.ag, float %i.o, i64 1
  %i.ai = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.af, <2 x float> %i.ah, <2 x float> %i.ad) ; 2 uses
  %i.aj = load float, ptr %i.d, align 8, !tbaa !44
  %i.ak = load float, ptr %i.i, align 4, !tbaa !44
  %i.al = fmul float %i.r, %i.ak
  %i.am = tail call float @llvm.fmuladd.f32(float %i.s, float %i.aj, float %i.al)
  %i.an = load float, ptr %i.j, align 8, !tbaa !44
  %i.ao = tail call noundef float @llvm.fmuladd.f32(float %i.t, float %i.an, float %i.am)
  %i.ap = extractelement <2 x float> %i.ai, i64 0 ; 2 uses
  %i.aq = extractelement <2 x float> %i.ai, i64 1 ; 2 uses
  %i.ar = fcmp olt float %i.ap, %i.aq             ; 2 uses
  %..i = select i1 %i.ar, float %i.aq, float %i.ap
  %i.as = fcmp olt float %..i, %i.ao
  %i.at = zext i1 %i.ar to i64
  %i.au = select i1 %i.as, i64 2, i64 %i.at
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.au
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %i.av, i64 16, i1 false), !tbaa.struct !49
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !154
}

declare void @_ZNK21btConvexInternalShape11getAabbSlowERK11btTransformR9btVector3S4_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK15btTriangleShape36getNumPreferredPenetrationDirectionsEv(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i32 2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK15btTriangleShape32getPreferredPenetrationDirectionEiR9btVector3(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load float, ptr %i.b, align 8, !tbaa !44
  %i.d = load float, ptr %i.a, align 8, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.h = load float, ptr %i.g, align 8, !tbaa !44
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 116
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.j = load <2 x float>, ptr %i.e, align 4, !tbaa !44 ; 2 uses
  %i.k = load <2 x float>, ptr %i.f, align 4, !tbaa !44 ; 3 uses
  %i.l = fsub <2 x float> %i.j, %i.k              ; 2 uses
  %i.m = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.n = insertelement <2 x float> %i.m, float %i.c, i64 1
  %i.o = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.p = insertelement <2 x float> %i.o, float %i.d, i64 1 ; 2 uses
  %i.q = fsub <2 x float> %i.n, %i.p              ; 2 uses
  %i.r = load <2 x float>, ptr %i.i, align 4, !tbaa !44 ; 2 uses
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.t = insertelement <2 x float> %i.s, float %i.h, i64 1
  %i.u = fsub <2 x float> %i.t, %i.p              ; 2 uses
  %i.v = fsub <2 x float> %i.r, %i.k              ; 2 uses
  %i.w = fneg <2 x float> %i.v
  %i.x = fmul <2 x float> %i.q, %i.w
  %i.y = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.l, <2 x float> %i.u, <2 x float> %i.x) ; 4 uses
  %i.z = extractelement <2 x float> %i.u, i64 1
  %i.aa = fneg float %i.z
  %i.ab = extractelement <2 x float> %i.l, i64 0
  %i.ac = fmul float %i.ab, %i.aa
  %i.ad = extractelement <2 x float> %i.q, i64 1
  %i.ae = extractelement <2 x float> %i.v, i64 0
  %i.af = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.ae, float %i.ac) ; 4 uses
  %.sroa.3.12.vec.insert.i10.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.af, i64 0
  store <2 x float> %.sroa.3.12.vec.insert.i10.i, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !48
  %foldExtExtBinop = fmul <2 x float> %i.y, %i.y
  %i.ag = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ah = extractelement <2 x float> %i.y, i64 0  ; 2 uses
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.ah, float %i.ag)
  %i.aj = tail call noundef float @llvm.fmuladd.f32(float %i.af, float %i.af, float %i.ai)
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.aj)
  %i.ak = fdiv float 1.000000e+00, %sqrt.i.i.i    ; 2 uses
  %i.al = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = fmul <2 x float> %i.y, %i.am            ; 2 uses
  store <2 x float> %i.an, ptr %2, align 4, !tbaa !44
  %i.ao = fmul float %i.af, %i.ak                 ; 2 uses
  store float %i.ao, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !44
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ap = fneg <2 x float> %i.an
  store <2 x float> %i.ap, ptr %2, align 4, !tbaa !44
  %i.aq = fneg float %i.ao
  store float %i.aq, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !44
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare noundef zeroext i1 @_ZN23btPolyhedralConvexShape28initializePolyhedralFeaturesEi(ptr noundef nonnull align 8 dereferenceable(80), i32 noundef) unnamed_addr #1

declare void @_ZN23btPolyhedralConvexShape21setPolyhedralFeaturesER18btConvexPolyhedron(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 1) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK15btTriangleShape14getNumVerticesEv(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i32 3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK15btTriangleShape11getNumEdgesEv(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i32 3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK15btTriangleShape7getEdgeEiR9btVector3S1_(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2)
  %i.d = add nsw i32 %1, 1
  %i.e = srem i32 %i.d, 3
  %i.f = load ptr, ptr %0, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 224
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %i.e, ptr noundef nonnull align 4 dereferenceable(16) %3)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNK15btTriangleShape9getVertexEiR9btVector3(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [16 x i8], ptr %i.a, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !49
end_hunk_1
