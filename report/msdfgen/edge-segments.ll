Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msdfgen/original/edge-segments?download=true
inline.NumInlined: 310
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK7msdfgen13LinearSegment13splitInThirdsERPNS_11EdgeSegmentES3_S3_:bb.a
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.g, %bb.f
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.sink = phi ptr [ %i.y, %bb.k ], [ %i.k, %bb.j ], [ %i.a, %bb.i ]
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.k ], [ %i.ai, %bb.j ], [ %i.ah, %bb.i ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink, i64 noundef 48) #16
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZNK7msdfgen16QuadraticSegment13splitInThirdsERPNS_11EdgeSegmentES3_S3_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #15 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load <2 x double>, ptr %i.b, align 8, !tbaa !14 ; 3 uses
  %i.e = load <2 x double>, ptr %i.c, align 8, !tbaa !14
  %i.f = load ptr, ptr %0, align 8, !tbaa !9
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = invoke { double, double } %i.h(ptr noundef nonnull align 8 dereferenceable(64) %0, double noundef f0x3FD5555555555555)
          to label %bb.b unwind label %bb.i       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.j = fmul <2 x double> %i.e, splat (double f0x3FD5555555555555)
  %i.k = fmul <2 x double> %i.d, splat (double f0x3FE5555555555556)
  %i.l = fadd <2 x double> %i.k, %i.j             ; 2 uses
  %i.m = extractvalue { double, double } %i.i, 0
  %i.n = extractvalue { double, double } %i.i, 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !13
  %i.q = extractelement <2 x double> %i.l, i64 0
  %i.r = extractelement <2 x double> %i.l, i64 1
  %i.s = extractelement <2 x double> %i.d, i64 0
  %i.t = extractelement <2 x double> %i.d, i64 1
  invoke void @_ZN7msdfgen16QuadraticSegmentC1ENS_7Vector2ES1_S1_NS_9EdgeColorE(ptr noundef nonnull align 8 dereferenceable(64) %i.a, double %i.s, double %i.t, double %i.q, double %i.r, double %i.m, double %i.n, i32 noundef %i.p)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  store ptr %i.a, ptr %1, align 8, !tbaa !23
  %i.u = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #15 ; 3 uses
  %i.v = load ptr, ptr %0, align 8, !tbaa !9
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = invoke { double, double } %i.x(ptr noundef nonnull align 8 dereferenceable(64) %0, double noundef f0x3FD5555555555555)
          to label %bb.d unwind label %bb.j       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.aa = load <2 x double>, ptr %i.b, align 8, !tbaa !14
  %i.ab = load <2 x double>, ptr %i.c, align 8, !tbaa !14
  %i.ac = load <2 x double>, ptr %i.z, align 8, !tbaa !14
  %i.ad = load ptr, ptr %0, align 8, !tbaa !9
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = invoke { double, double } %i.af(ptr noundef nonnull align 8 dereferenceable(64) %0, double noundef f0x3FE5555555555555)
          to label %bb.e unwind label %bb.j       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.ah = fmul <2 x double> %i.ac, splat (double f0x3FDC71C71C71C71C)
  %i.ai = fmul <2 x double> %i.ab, splat (double f0x3FE1C71C71C71C72) ; 2 uses
  %i.aj = fmul <2 x double> %i.aa, splat (double f0x3FDC71C71C71C71C)
  %i.ak = fadd <2 x double> %i.ai, %i.ah
  %i.al = fmul <2 x double> %i.ak, splat (double 5.000000e-01)
  %i.am = fadd <2 x double> %i.aj, %i.ai
  %i.an = fmul <2 x double> %i.am, splat (double 5.000000e-01)
  %i.ao = fadd <2 x double> %i.an, %i.al          ; 2 uses
  %i.ap = extractvalue { double, double } %i.y, 1
  %i.aq = extractvalue { double, double } %i.y, 0
  %i.ar = extractvalue { double, double } %i.ag, 0
  %i.as = extractvalue { double, double } %i.ag, 1
  %i.at = load i32, ptr %i.o, align 8, !tbaa !13
  %i.au = extractelement <2 x double> %i.ao, i64 0
  %i.av = extractelement <2 x double> %i.ao, i64 1
  invoke void @_ZN7msdfgen16QuadraticSegmentC1ENS_7Vector2ES1_S1_NS_9EdgeColorE(ptr noundef nonnull align 8 dereferenceable(64) %i.u, double %i.aq, double %i.ap, double %i.au, double %i.av, double %i.ar, double %i.as, i32 noundef %i.at)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  store ptr %i.u, ptr %2, align 8, !tbaa !23
  %i.aw = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #15 ; 3 uses
  %i.ax = load ptr, ptr %0, align 8, !tbaa !9
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = invoke { double, double } %i.az(ptr noundef nonnull align 8 dereferenceable(64) %0, double noundef f0x3FE5555555555555)
          to label %bb.g unwind label %bb.k       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.bb = load <2 x double>, ptr %i.c, align 8, !tbaa !14
  %i.bc = load <2 x double>, ptr %i.z, align 8, !tbaa !14 ; 3 uses
  %i.bd = fmul <2 x double> %i.bb, splat (double f0x3FD5555555555556)
  %i.be = fmul <2 x double> %i.bc, splat (double f0x3FE5555555555555)
  %i.bf = fadd <2 x double> %i.bd, %i.be          ; 2 uses
  %i.bg = extractvalue { double, double } %i.ba, 1
  %i.bh = extractvalue { double, double } %i.ba, 0
  %i.bi = load i32, ptr %i.o, align 8, !tbaa !13
  %i.bj = extractelement <2 x double> %i.bf, i64 0
  %i.bk = extractelement <2 x double> %i.bf, i64 1
  %i.bl = extractelement <2 x double> %i.bc, i64 0
  %i.bm = extractelement <2 x double> %i.bc, i64 1
  invoke void @_ZN7msdfgen16QuadraticSegmentC1ENS_7Vector2ES1_S1_NS_9EdgeColorE(ptr noundef nonnull align 8 dereferenceable(64) %i.aw, double %i.bh, double %i.bg, double %i.bj, double %i.bk, double %i.bl, double %i.bm, i32 noundef %i.bi)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  store ptr %i.aw, ptr %3, align 8, !tbaa !23
  ret void

bb.i:                                             ; preds = %bb.b, %bb.a
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.j:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.g, %bb.f
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.sink = phi ptr [ %i.aw, %bb.k ], [ %i.u, %bb.j ], [ %i.a, %bb.i ]
  %.pn = phi { ptr, i32 } [ %i.bp, %bb.k ], [ %i.bo, %bb.j ], [ %i.bn, %bb.i ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink, i64 noundef 64) #16
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZNK7msdfgen12CubicSegment13splitInThirdsERPNS_11EdgeSegmentES3_S3_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #15 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.2117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %.sroa.2111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load <2 x double>, ptr %i.b, align 8, !tbaa !14 ; 6 uses
  %i.e = load <2 x double>, ptr %i.c, align 8, !tbaa !14 ; 7 uses
  %i.f = extractelement <2 x double> %i.d, i64 0  ; 2 uses
  %i.g = extractelement <2 x double> %i.e, i64 0
  %i.h = fcmp oeq double %i.f, %i.g
  %i.i = extractelement <2 x double> %i.d, i64 1  ; 2 uses
  %i.j = extractelement <2 x double> %i.e, i64 1
  %i.k = fcmp oeq double %i.i, %i.j
  %i.l = select i1 %i.h, i1 %i.k, i1 false
  %i.m = fmul <2 x double> %i.d, splat (double f0x3FE5555555555556)
  %i.n = fmul <2 x double> %i.e, splat (double f0x3FD5555555555555)
  %i.o = fadd <2 x double> %i.m, %i.n
  %i.p = select i1 %i.l, <2 x double> %i.d, <2 x double> %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %.sroa.092.0.copyload = load double, ptr %i.q, align 8, !tbaa !14
  %.sroa.293.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.sroa.293.0.copyload = load double, ptr %.sroa.293.0..sroa_idx, align 8, !tbaa !14
  %i.r = load ptr, ptr %0, align 8, !tbaa !9
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = invoke { double, double } %i.t(ptr noundef nonnull align 8 dereferenceable(80) %0, double noundef f0x3FD5555555555555)
          to label %bb.b unwind label %bb.i       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.v = shufflevector <2 x double> %i.e, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.w = insertelement <2 x double> %i.v, double %.sroa.293.0.copyload, i64 1
  %i.x = fmul <2 x double> %i.w, splat (double f0x3FD5555555555555)
  %i.y = shufflevector <2 x double> %i.d, <2 x double> %i.e, <2 x i32> <i32 1, i32 3>
  %i.z = fmul <2 x double> %i.y, splat (double f0x3FE5555555555556)
  %i.aa = fadd <2 x double> %i.z, %i.x
  %i.ab = fmul <2 x double> %i.aa, <double f0x3FE5555555555556, double f0x3FD5555555555555>
  %i.ac = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.ab)
  %i.ad = insertelement <2 x double> %i.e, double %.sroa.092.0.copyload, i64 1
  %i.ae = fmul <2 x double> %i.ad, splat (double f0x3FD5555555555555)
  %i.af = shufflevector <2 x double> %i.d, <2 x double> %i.e, <2 x i32> <i32 0, i32 2>
  %i.ag = fmul <2 x double> %i.af, splat (double f0x3FE5555555555556)
  %i.ah = fadd <2 x double> %i.ag, %i.ae
  %i.ai = fmul <2 x double> %i.ah, <double f0x3FE5555555555556, double f0x3FD5555555555555>
  %i.aj = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.ai)
  %i.ak = extractvalue { double, double } %i.u, 0
  %i.al = extractvalue { double, double } %i.u, 1
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !13
  %i.ao = extractelement <2 x double> %i.p, i64 0
  %i.ap = extractelement <2 x double> %i.p, i64 1
  invoke void @_ZN7msdfgen12CubicSegmentC1ENS_7Vector2ES1_S1_S1_NS_9EdgeColorE(ptr noundef nonnull align 8 dereferenceable(80) %i.a, double %i.f, double %i.i, double %i.ao, double %i.ap, double %i.aj, double %i.ac, double %i.ak, double %i.al, i32 noundef %i.an)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  store ptr %i.a, ptr %1, align 8, !tbaa !23
  %i.aq = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #15 ; 3 uses
  %i.ar = load ptr, ptr %0, align 8, !tbaa !9
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = invoke { double, double } %i.at(ptr noundef nonnull align 8 dereferenceable(80) %0, double noundef f0x3FD5555555555555)
          to label %bb.d unwind label %bb.j       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %.sroa.080.0.copyload = load double, ptr %i.b, align 8, !tbaa !14
  %.sroa.281.0.copyload = load double, ptr %.sroa.2117.0..sroa_idx, align 8, !tbaa !14
  %.sroa.078.0.copyload = load double, ptr %i.c, align 8, !tbaa !14 ; 2 uses
  %.sroa.279.0.copyload = load double, ptr %.sroa.2111.0..sroa_idx, align 8, !tbaa !14 ; 2 uses
  %.sroa.072.0.copyload = load double, ptr %i.q, align 8, !tbaa !14 ; 3 uses
  %.sroa.273.0.copyload = load double, ptr %.sroa.293.0..sroa_idx, align 8, !tbaa !14 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.058.0.copyload = load double, ptr %i.av, align 8, !tbaa !14 ; 2 uses
  %.sroa.259.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.259.0.copyload = load double, ptr %.sroa.259.0..sroa_idx, align 8, !tbaa !14 ; 2 uses
  %i.aw = load ptr, ptr %0, align 8, !tbaa !9
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = invoke { double, double } %i.ay(ptr noundef nonnull align 8 dereferenceable(80) %0, double noundef f0x3FE5555555555555)
          to label %bb.e unwind label %bb.j       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.ba = fmul double %.sroa.259.0.copyload, f0x3FE5555555555555
  %i.bb = fmul double %.sroa.273.0.copyload, f0x3FD5555555555556
  %i.bc = insertelement <2 x double> poison, double %.sroa.279.0.copyload, i64 0
  %i.bd = insertelement <2 x double> %i.bc, double %.sroa.273.0.copyload, i64 1 ; 2 uses
  %i.be = fmul <2 x double> %i.bd, splat (double f0x3FE5555555555555)
  %4 = insertelement <2 x double> poison, double %.sroa.281.0.copyload, i64 0
  %i.bf = insertelement <2 x double> %4, double %.sroa.279.0.copyload, i64 1 ; 2 uses
  %i.bg = fmul <2 x double> %i.bf, splat (double f0x3FD5555555555556)
  %i.bh = fadd double %i.bb, %i.ba
  %i.bi = fadd <2 x double> %i.bg, %i.be          ; 2 uses
  %i.bj = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bk = insertelement <2 x double> %i.bj, double %i.bh, i64 1
  %i.bl = fmul <2 x double> %i.bk, splat (double f0x3FE5555555555555)
  %i.bm = fmul <2 x double> %i.bi, splat (double f0x3FD5555555555556)
  %i.bn = fadd <2 x double> %i.bm, %i.bl
  %i.bo = fmul <2 x double> %i.bn, <double f0x3FE5555555555556, double f0x3FD5555555555555>
  %i.bp = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.bo)
  %i.bq = fmul double %.sroa.058.0.copyload, f0x3FE5555555555555
  %i.br = fmul double %.sroa.072.0.copyload, f0x3FD5555555555556
  %i.bs = insertelement <2 x double> poison, double %.sroa.078.0.copyload, i64 0
  %i.bt = insertelement <2 x double> %i.bs, double %.sroa.072.0.copyload, i64 1 ; 2 uses
  %i.bu = fmul <2 x double> %i.bt, splat (double f0x3FE5555555555555)
  %5 = insertelement <2 x double> poison, double %.sroa.080.0.copyload, i64 0
  %i.bv = insertelement <2 x double> %5, double %.sroa.078.0.copyload, i64 1 ; 2 uses
  %i.bw = fmul <2 x double> %i.bv, splat (double f0x3FD5555555555556)
  %i.bx = fadd double %i.br, %i.bq
  %i.by = fadd <2 x double> %i.bw, %i.bu          ; 2 uses
  %i.bz = shufflevector <2 x double> %i.by, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ca = insertelement <2 x double> %i.bz, double %i.bx, i64 1
  %i.cb = fmul <2 x double> %i.ca, splat (double f0x3FE5555555555555)
  %i.cc = fmul <2 x double> %i.by, splat (double f0x3FD5555555555556)
  %i.cd = fadd <2 x double> %i.cc, %i.cb
  %i.ce = fmul <2 x double> %i.cd, <double f0x3FE5555555555556, double f0x3FD5555555555555>
  %i.cf = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.ce)
  %i.cg = fmul double %.sroa.259.0.copyload, f0x3FD5555555555555
  %i.ch = fmul double %.sroa.273.0.copyload, f0x3FE5555555555556
  %i.ci = fmul <2 x double> %i.bd, splat (double f0x3FD5555555555555)
  %i.cj = fmul <2 x double> %i.bf, splat (double f0x3FE5555555555556)
  %i.ck = fadd double %i.ch, %i.cg
  %i.cl = fadd <2 x double> %i.cj, %i.ci          ; 2 uses
  %i.cm = shufflevector <2 x double> %i.cl, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cn = insertelement <2 x double> %i.cm, double %i.ck, i64 1
  %i.co = fmul <2 x double> %i.cn, splat (double f0x3FD5555555555555)
  %i.cp = fmul <2 x double> %i.cl, splat (double f0x3FE5555555555556)
  %i.cq = fadd <2 x double> %i.cp, %i.co
  %i.cr = fmul <2 x double> %i.cq, <double f0x3FD5555555555556, double f0x3FE5555555555555>
  %i.cs = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.cr)
  %i.ct = fmul double %.sroa.058.0.copyload, f0x3FD5555555555555
  %i.cu = fmul double %.sroa.072.0.copyload, f0x3FE5555555555556
  %i.cv = fmul <2 x double> %i.bt, splat (double f0x3FD5555555555555)
  %i.cw = fmul <2 x double> %i.bv, splat (double f0x3FE5555555555556)
  %i.cx = fadd double %i.cu, %i.ct
  %i.cy = fadd <2 x double> %i.cw, %i.cv          ; 2 uses
  %i.cz = shufflevector <2 x double> %i.cy, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.da = insertelement <2 x double> %i.cz, double %i.cx, i64 1
  %i.db = fmul <2 x double> %i.da, splat (double f0x3FD5555555555555)
  %i.dc = fmul <2 x double> %i.cy, splat (double f0x3FE5555555555556)
  %i.dd = fadd <2 x double> %i.dc, %i.db
  %i.de = fmul <2 x double> %i.dd, <double f0x3FD5555555555556, double f0x3FE5555555555555>
  %i.df = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.de)
  %i.dg = extractvalue { double, double } %i.au, 1
  %i.dh = extractvalue { double, double } %i.au, 0
  %i.di = extractvalue { double, double } %i.az, 0
  %i.dj = extractvalue { double, double } %i.az, 1
  %i.dk = load i32, ptr %i.am, align 8, !tbaa !13
  invoke void @_ZN7msdfgen12CubicSegmentC1ENS_7Vector2ES1_S1_S1_NS_9EdgeColorE(ptr noundef nonnull align 8 dereferenceable(80) %i.aq, double %i.dh, double %i.dg, double %i.df, double %i.cs, double %i.cf, double %i.bp, double %i.di, double %i.dj, i32 noundef %i.dk)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  store ptr %i.aq, ptr %2, align 8, !tbaa !23
  %i.dl = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #15 ; 3 uses
  %i.dm = load ptr, ptr %0, align 8, !tbaa !9
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = invoke { double, double } %i.do(ptr noundef nonnull align 8 dereferenceable(80) %0, double noundef f0x3FE5555555555555)
          to label %bb.g unwind label %bb.k       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.dq = extractvalue { double, double } %i.dp, 0
  %i.dr = extractvalue { double, double } %i.dp, 1
  %i.ds = load <2 x double>, ptr %i.c, align 8, !tbaa !14
  %i.dt = load <2 x double>, ptr %i.q, align 8, !tbaa !14 ; 4 uses
  %i.du = fmul <2 x double> %i.ds, splat (double f0x3FD5555555555556)
  %i.dv = fmul <2 x double> %i.dt, splat (double f0x3FE5555555555555)
  %i.dw = fadd <2 x double> %i.du, %i.dv
  %i.dx = load <2 x double>, ptr %i.av, align 8, !tbaa !14 ; 3 uses
  %i.dy = fmul <2 x double> %i.dt, splat (double f0x3FD5555555555556)
  %i.dz = fmul <2 x double> %i.dx, splat (double f0x3FE5555555555555)
  %i.ea = fadd <2 x double> %i.dy, %i.dz          ; 3 uses
  %i.eb = fmul <2 x double> %i.dw, splat (double f0x3FD5555555555556)
  %i.ec = fmul <2 x double> %i.ea, splat (double f0x3FE5555555555555)
  %i.ed = fadd <2 x double> %i.eb, %i.ec          ; 2 uses
  %i.ee = extractelement <2 x double> %i.dt, i64 0
  %i.ef = extractelement <2 x double> %i.dx, i64 0 ; 3 uses
  %i.eg = fcmp oeq double %i.ee, %i.ef
  %i.eh = extractelement <2 x double> %i.dt, i64 1
  %i.ei = extractelement <2 x double> %i.dx, i64 1 ; 3 uses
  %i.ej = fcmp oeq double %i.eh, %i.ei
  %i.ek = select i1 %i.eg, i1 %i.ej, i1 false     ; 2 uses
  %i.el = extractelement <2 x double> %i.ea, i64 0
  %.sroa.09.0 = select i1 %i.ek, double %i.ef, double %i.el
  %i.em = extractelement <2 x double> %i.ea, i64 1
  %.sroa.3.0 = select i1 %i.ek, double %i.ei, double %i.em
  %i.en = load i32, ptr %i.am, align 8, !tbaa !13
  %i.eo = extractelement <2 x double> %i.ed, i64 0
  %i.ep = extractelement <2 x double> %i.ed, i64 1
  invoke void @_ZN7msdfgen12CubicSegmentC1ENS_7Vector2ES1_S1_S1_NS_9EdgeColorE(ptr noundef nonnull align 8 dereferenceable(80) %i.dl, double %i.dq, double %i.dr, double %i.eo, double %i.ep, double %.sroa.09.0, double %.sroa.3.0, double %i.ef, double %i.ei, i32 noundef %i.en)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  store ptr %i.dl, ptr %3, align 8, !tbaa !23
  ret void

bb.i:                                             ; preds = %bb.b, %bb.a
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.j:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.g, %bb.f
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.sink = phi ptr [ %i.dl, %bb.k ], [ %i.aq, %bb.j ], [ %i.a, %bb.i ]
  %.pn = phi { ptr, i32 } [ %i.es, %bb.k ], [ %i.er, %bb.j ], [ %i.eq, %bb.i ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink, i64 noundef 80) #16
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZNK7msdfgen16QuadraticSegment14convertToCubicEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #15 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.013.0.copyload = load double, ptr %i.b, align 8, !tbaa !14 ; 2 uses
  %.sroa.214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.214.0.copyload = load double, ptr %.sroa.214.0..sroa_idx, align 8, !tbaa !14 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.07.0.copyload = load double, ptr %i.c, align 8, !tbaa !14 ; 2 uses
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.28.0.copyload = load double, ptr %.sroa.28.0..sroa_idx, align 8, !tbaa !14 ; 2 uses
  %i.d = fmul double %.sroa.013.0.copyload, f0x3FD5555555555556
  %i.e = fmul double %.sroa.214.0.copyload, f0x3FD5555555555556
  %i.f = fmul double %.sroa.07.0.copyload, f0x3FE5555555555555
  %i.g = fmul double %.sroa.28.0.copyload, f0x3FE5555555555555
  %i.h = fadd double %i.d, %i.f
  %i.i = fadd double %i.e, %i.g
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.01.0.copyload = load double, ptr %i.j, align 8, !tbaa !14 ; 2 uses
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.22.0.copyload = load double, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !14 ; 2 uses
  %i.k = fmul double %.sroa.07.0.copyload, f0x3FE5555555555556
  %i.l = fmul double %.sroa.28.0.copyload, f0x3FE5555555555556
  %i.m = fmul double %.sroa.01.0.copyload, f0x3FD5555555555555
  %i.n = fmul double %.sroa.22.0.copyload, f0x3FD5555555555555
  %i.o = fadd double %i.k, %i.m
  %i.p = fadd double %i.l, %i.n
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !13
  invoke void @_ZN7msdfgen12CubicSegmentC1ENS_7Vector2ES1_S1_S1_NS_9EdgeColorE(ptr noundef nonnull align 8 dereferenceable(80) %i.a, double %.sroa.013.0.copyload, double %.sroa.214.0.copyload, double %i.h, double %i.i, double %i.o, double %i.p, double %.sroa.01.0.copyload, double %.sroa.22.0.copyload, i32 noundef %i.r)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #16
  resume { ptr, i32 } %i.s
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7msdfgen11EdgeSegmentD0Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #18
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7msdfgen13LinearSegmentD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #16
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7msdfgen16QuadraticSegmentD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7msdfgen11EdgeSegmentD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7msdfgen12CubicSegmentD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #16
  ret void
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_0
